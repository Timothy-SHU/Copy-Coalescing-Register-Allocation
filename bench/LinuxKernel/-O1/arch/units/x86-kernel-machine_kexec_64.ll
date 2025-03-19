; ModuleID = 'arch/x86/kernel/machine_kexec_64.c'
source_filename = "arch/x86/kernel/machine_kexec_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }
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
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.14, %union.anon.21, i8, i8 }>
%union.anon.14 = type { %struct.anon.17 }
%struct.anon.17 = type { i64 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i8, i8, i16, i32, i64 }
%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.cpuinfo_x86 = type { %union.anon.32, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.34, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.32 = type { i32 }
%union.anon.34 = type { i64, [88 x i8] }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.kimage = type { i64, ptr, ptr, i64, ptr, ptr, ptr, i64, [16 x %struct.kexec_segment], %struct.list_head, %struct.list_head, %struct.list_head, i64, i8, %struct.kimage_arch, i32, i32, i8, ptr, i64, i64 }
%struct.kexec_segment = type { %union.anon.13, i64, i64, i64 }
%union.anon.13 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kimage_arch = type { ptr, ptr, ptr, ptr, ptr }
%struct.x86_mapping_info = type { ptr, ptr, i64, i64, i8, i64 }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.efi_system_table_64_t = type { %struct.efi_table_hdr_t, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.init_pgtable_data = type { ptr, ptr }
%struct.pgprot = type { i64 }
%struct.pgd_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.35, %union.anon.44, %struct.atomic_t, [8 x i8] }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { %union.anon.37, ptr, %union.anon.39, i64 }
%union.anon.37 = type { %struct.list_head }
%union.anon.39 = type { i64 }
%union.anon.44 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@vmemmap_base = external dso_local global i64, align 8
@direct_gbpages = external dso_local global i32, align 4
@nr_pfn_mapped = external dso_local global i32, align 4
@pfn_mapped = external dso_local global [0 x %struct.range], align 8
@boot_params = external dso_local global %struct.boot_params, align 1
@.str = private unnamed_addr constant [42 x i8] c"\013kexec: Could not map UEFI system table\0A\00", align 1, !dbg !0
@efi_config_table = external dso_local global i64, align 8
@efi = external dso_local global %struct.efi, align 8
@__default_kernel_pte_mask = external dso_local global i64, align 8
@pgdir_shift = external dso_local global i32, align 4
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@page_offset_base = external dso_local global i64, align 8
@ptrs_per_p4d = external dso_local global i32, align 4
@__supported_pte_mask = external dso_local global i64, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"arch/x86/include/asm/debugreg.h\00", align 1, !dbg !7
@phys_base = external dso_local global i64, align 8
@crashk_low_res = external dso_local global %struct.resource, align 8
@kexec_crash_image = external dso_local global ptr, align 8
@crashk_res = external dso_local global %struct.resource, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @machine_kexec_prepare(ptr noundef %image) #0 align 16 !dbg !5539 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca ptr, align 8
  %control_page = alloca i64, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !5543, metadata !DIExpression()), !dbg !5546
  call void @llvm.lifetime.start.p0(i64 8, ptr %control_page) #14, !dbg !5547
  call void @llvm.dbg.declare(metadata ptr %control_page, metadata !5544, metadata !DIExpression()), !dbg !5548
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5545, metadata !DIExpression()), !dbg !5550
  %0 = load ptr, ptr %image.addr, align 8, !dbg !5551
  %control_code_page = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 4, !dbg !5551
  %1 = load ptr, ptr %control_code_page, align 8, !dbg !5551
  %2 = load i64, ptr @vmemmap_base, align 8, !dbg !5551
  %3 = inttoptr i64 %2 to ptr, !dbg !5551
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !5551
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64, !dbg !5551
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5551
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5551
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5552
  store i64 %shl, ptr %control_page, align 8, !dbg !5553
  %4 = load ptr, ptr %image.addr, align 8, !dbg !5554
  %5 = load i64, ptr %control_page, align 8, !dbg !5555
  %call = call i32 @init_pgtable(ptr noundef %4, i64 noundef %5) #15, !dbg !5556
  store i32 %call, ptr %result, align 4, !dbg !5557
  %6 = load i32, ptr %result, align 4, !dbg !5558
  %tobool = icmp ne i32 %6, 0, !dbg !5558
  br i1 %tobool, label %if.then, label %if.end, !dbg !5560

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %result, align 4, !dbg !5561
  store i32 %7, ptr %retval, align 4, !dbg !5562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5562

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5563

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !5564
  call void @llvm.lifetime.end.p0(i64 8, ptr %control_page) #14, !dbg !5564
  %8 = load i32, ptr %retval, align 4, !dbg !5564
  ret i32 %8, !dbg !5564
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @init_pgtable(ptr noundef %image, i64 noundef %control_page) #0 align 16 !dbg !5565 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca ptr, align 8
  %control_page.addr = alloca i64, align 8
  %info = alloca %struct.x86_mapping_info, align 8
  %mstart = alloca i64, align 8
  %mend = alloca i64, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !5569, metadata !DIExpression()), !dbg !5588
  store i64 %control_page, ptr %control_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %control_page.addr, metadata !5570, metadata !DIExpression()), !dbg !5589
  call void @llvm.lifetime.start.p0(i64 48, ptr %info) #14, !dbg !5590
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5571, metadata !DIExpression()), !dbg !5591
  %alloc_pgt_page = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 0, !dbg !5592
  store ptr @alloc_pgt_page, ptr %alloc_pgt_page, align 8, !dbg !5592
  %context = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 1, !dbg !5592
  %0 = load ptr, ptr %image.addr, align 8, !dbg !5593
  store ptr %0, ptr %context, align 8, !dbg !5592
  %page_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 2, !dbg !5592
  store i64 483, ptr %page_flag, align 8, !dbg !5592
  %offset = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 3, !dbg !5592
  store i64 0, ptr %offset, align 8, !dbg !5592
  %direct_gbpages = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 4, !dbg !5592
  store i8 0, ptr %direct_gbpages, align 8, !dbg !5592
  %kernpg_flag = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 5, !dbg !5592
  store i64 99, ptr %kernpg_flag, align 8, !dbg !5592
  call void @llvm.lifetime.start.p0(i64 8, ptr %mstart) #14, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %mstart, metadata !5584, metadata !DIExpression()), !dbg !5595
  call void @llvm.lifetime.start.p0(i64 8, ptr %mend) #14, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %mend, metadata !5585, metadata !DIExpression()), !dbg !5596
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !5597
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5586, metadata !DIExpression()), !dbg !5598
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5599
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5587, metadata !DIExpression()), !dbg !5600
  %1 = load ptr, ptr %image.addr, align 8, !dbg !5601
  %call = call ptr @alloc_pgt_page(ptr noundef %1) #15, !dbg !5602
  %2 = load ptr, ptr %image.addr, align 8, !dbg !5603
  %arch = getelementptr inbounds %struct.kimage, ptr %2, i32 0, i32 14, !dbg !5604
  %pgd = getelementptr inbounds %struct.kimage_arch, ptr %arch, i32 0, i32 0, !dbg !5605
  store ptr %call, ptr %pgd, align 8, !dbg !5606
  %3 = load ptr, ptr %image.addr, align 8, !dbg !5607
  %arch1 = getelementptr inbounds %struct.kimage, ptr %3, i32 0, i32 14, !dbg !5609
  %pgd2 = getelementptr inbounds %struct.kimage_arch, ptr %arch1, i32 0, i32 0, !dbg !5610
  %4 = load ptr, ptr %pgd2, align 8, !dbg !5610
  %tobool = icmp ne ptr %4, null, !dbg !5607
  br i1 %tobool, label %if.end, label %if.then, !dbg !5611

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5612

if.end:                                           ; preds = %entry
  %call3 = call zeroext i1 @cc_platform_has(i32 noundef 2) #15, !dbg !5613
  br i1 %call3, label %if.then4, label %if.end8, !dbg !5615

if.then4:                                         ; preds = %if.end
  %page_flag5 = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 2, !dbg !5616
  %5 = load i64, ptr %page_flag5, align 8, !dbg !5618
  %or = or i64 %5, 0, !dbg !5618
  store i64 %or, ptr %page_flag5, align 8, !dbg !5618
  %kernpg_flag6 = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 5, !dbg !5619
  %6 = load i64, ptr %kernpg_flag6, align 8, !dbg !5620
  %or7 = or i64 %6, 0, !dbg !5620
  store i64 %or7, ptr %kernpg_flag6, align 8, !dbg !5620
  br label %if.end8, !dbg !5621

if.end8:                                          ; preds = %if.then4, %if.end
  %7 = load i32, ptr @direct_gbpages, align 4, !dbg !5622
  %tobool9 = icmp ne i32 %7, 0, !dbg !5622
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !5624

if.then10:                                        ; preds = %if.end8
  %direct_gbpages11 = getelementptr inbounds %struct.x86_mapping_info, ptr %info, i32 0, i32 4, !dbg !5625
  store i8 1, ptr %direct_gbpages11, align 8, !dbg !5626
  br label %if.end12, !dbg !5627

if.end12:                                         ; preds = %if.then10, %if.end8
  store i32 0, ptr %i, align 4, !dbg !5628
  br label %for.cond, !dbg !5630

for.cond:                                         ; preds = %for.inc, %if.end12
  %8 = load i32, ptr %i, align 4, !dbg !5631
  %9 = load i32, ptr @nr_pfn_mapped, align 4, !dbg !5633
  %cmp = icmp slt i32 %8, %9, !dbg !5634
  br i1 %cmp, label %for.body, label %for.end, !dbg !5635

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %i, align 4, !dbg !5636
  %idxprom = sext i32 %10 to i64, !dbg !5638
  %arrayidx = getelementptr [0 x %struct.range], ptr @pfn_mapped, i64 0, i64 %idxprom, !dbg !5638
  %start = getelementptr inbounds %struct.range, ptr %arrayidx, i32 0, i32 0, !dbg !5639
  %11 = load i64, ptr %start, align 8, !dbg !5639
  %shl = shl i64 %11, 12, !dbg !5640
  store i64 %shl, ptr %mstart, align 8, !dbg !5641
  %12 = load i32, ptr %i, align 4, !dbg !5642
  %idxprom13 = sext i32 %12 to i64, !dbg !5643
  %arrayidx14 = getelementptr [0 x %struct.range], ptr @pfn_mapped, i64 0, i64 %idxprom13, !dbg !5643
  %end = getelementptr inbounds %struct.range, ptr %arrayidx14, i32 0, i32 1, !dbg !5644
  %13 = load i64, ptr %end, align 8, !dbg !5644
  %shl15 = shl i64 %13, 12, !dbg !5645
  store i64 %shl15, ptr %mend, align 8, !dbg !5646
  %14 = load ptr, ptr %image.addr, align 8, !dbg !5647
  %arch16 = getelementptr inbounds %struct.kimage, ptr %14, i32 0, i32 14, !dbg !5648
  %pgd17 = getelementptr inbounds %struct.kimage_arch, ptr %arch16, i32 0, i32 0, !dbg !5649
  %15 = load ptr, ptr %pgd17, align 8, !dbg !5649
  %16 = load i64, ptr %mstart, align 8, !dbg !5650
  %17 = load i64, ptr %mend, align 8, !dbg !5651
  %call18 = call i32 @kernel_ident_mapping_init(ptr noundef %info, ptr noundef %15, i64 noundef %16, i64 noundef %17) #15, !dbg !5652
  store i32 %call18, ptr %result, align 4, !dbg !5653
  %18 = load i32, ptr %result, align 4, !dbg !5654
  %tobool19 = icmp ne i32 %18, 0, !dbg !5654
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5656

if.then20:                                        ; preds = %for.body
  %19 = load i32, ptr %result, align 4, !dbg !5657
  store i32 %19, ptr %retval, align 4, !dbg !5658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5658

if.end21:                                         ; preds = %for.body
  br label %for.inc, !dbg !5659

for.inc:                                          ; preds = %if.end21
  %20 = load i32, ptr %i, align 4, !dbg !5660
  %inc = add i32 %20, 1, !dbg !5660
  store i32 %inc, ptr %i, align 4, !dbg !5660
  br label %for.cond, !dbg !5661, !llvm.loop !5662

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !5666
  br label %for.cond22, !dbg !5668

for.cond22:                                       ; preds = %for.inc37, %for.end
  %21 = load i32, ptr %i, align 4, !dbg !5669
  %conv = sext i32 %21 to i64, !dbg !5669
  %22 = load ptr, ptr %image.addr, align 8, !dbg !5671
  %nr_segments = getelementptr inbounds %struct.kimage, ptr %22, i32 0, i32 7, !dbg !5672
  %23 = load i64, ptr %nr_segments, align 8, !dbg !5672
  %cmp23 = icmp ult i64 %conv, %23, !dbg !5673
  br i1 %cmp23, label %for.body25, label %for.end39, !dbg !5674

for.body25:                                       ; preds = %for.cond22
  %24 = load ptr, ptr %image.addr, align 8, !dbg !5675
  %segment = getelementptr inbounds %struct.kimage, ptr %24, i32 0, i32 8, !dbg !5677
  %25 = load i32, ptr %i, align 4, !dbg !5678
  %idxprom26 = sext i32 %25 to i64, !dbg !5675
  %arrayidx27 = getelementptr [16 x %struct.kexec_segment], ptr %segment, i64 0, i64 %idxprom26, !dbg !5675
  %mem = getelementptr inbounds %struct.kexec_segment, ptr %arrayidx27, i32 0, i32 2, !dbg !5679
  %26 = load i64, ptr %mem, align 8, !dbg !5679
  store i64 %26, ptr %mstart, align 8, !dbg !5680
  %27 = load i64, ptr %mstart, align 8, !dbg !5681
  %28 = load ptr, ptr %image.addr, align 8, !dbg !5682
  %segment28 = getelementptr inbounds %struct.kimage, ptr %28, i32 0, i32 8, !dbg !5683
  %29 = load i32, ptr %i, align 4, !dbg !5684
  %idxprom29 = sext i32 %29 to i64, !dbg !5682
  %arrayidx30 = getelementptr [16 x %struct.kexec_segment], ptr %segment28, i64 0, i64 %idxprom29, !dbg !5682
  %memsz = getelementptr inbounds %struct.kexec_segment, ptr %arrayidx30, i32 0, i32 3, !dbg !5685
  %30 = load i64, ptr %memsz, align 8, !dbg !5685
  %add = add i64 %27, %30, !dbg !5686
  store i64 %add, ptr %mend, align 8, !dbg !5687
  %31 = load ptr, ptr %image.addr, align 8, !dbg !5688
  %arch31 = getelementptr inbounds %struct.kimage, ptr %31, i32 0, i32 14, !dbg !5689
  %pgd32 = getelementptr inbounds %struct.kimage_arch, ptr %arch31, i32 0, i32 0, !dbg !5690
  %32 = load ptr, ptr %pgd32, align 8, !dbg !5690
  %33 = load i64, ptr %mstart, align 8, !dbg !5691
  %34 = load i64, ptr %mend, align 8, !dbg !5692
  %call33 = call i32 @kernel_ident_mapping_init(ptr noundef %info, ptr noundef %32, i64 noundef %33, i64 noundef %34) #15, !dbg !5693
  store i32 %call33, ptr %result, align 4, !dbg !5694
  %35 = load i32, ptr %result, align 4, !dbg !5695
  %tobool34 = icmp ne i32 %35, 0, !dbg !5695
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5697

if.then35:                                        ; preds = %for.body25
  %36 = load i32, ptr %result, align 4, !dbg !5698
  store i32 %36, ptr %retval, align 4, !dbg !5699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5699

if.end36:                                         ; preds = %for.body25
  br label %for.inc37, !dbg !5700

for.inc37:                                        ; preds = %if.end36
  %37 = load i32, ptr %i, align 4, !dbg !5701
  %inc38 = add i32 %37, 1, !dbg !5701
  store i32 %inc38, ptr %i, align 4, !dbg !5701
  br label %for.cond22, !dbg !5702, !llvm.loop !5703

for.end39:                                        ; preds = %for.cond22
  %38 = load ptr, ptr %image.addr, align 8, !dbg !5705
  %arch40 = getelementptr inbounds %struct.kimage, ptr %38, i32 0, i32 14, !dbg !5706
  %pgd41 = getelementptr inbounds %struct.kimage_arch, ptr %arch40, i32 0, i32 0, !dbg !5707
  %39 = load ptr, ptr %pgd41, align 8, !dbg !5707
  %call42 = call i32 @map_efi_systab(ptr noundef %info, ptr noundef %39) #15, !dbg !5708
  store i32 %call42, ptr %result, align 4, !dbg !5709
  %40 = load i32, ptr %result, align 4, !dbg !5710
  %tobool43 = icmp ne i32 %40, 0, !dbg !5710
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !5712

if.then44:                                        ; preds = %for.end39
  %41 = load i32, ptr %result, align 4, !dbg !5713
  store i32 %41, ptr %retval, align 4, !dbg !5714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5714

if.end45:                                         ; preds = %for.end39
  %42 = load ptr, ptr %image.addr, align 8, !dbg !5715
  %arch46 = getelementptr inbounds %struct.kimage, ptr %42, i32 0, i32 14, !dbg !5716
  %pgd47 = getelementptr inbounds %struct.kimage_arch, ptr %arch46, i32 0, i32 0, !dbg !5717
  %43 = load ptr, ptr %pgd47, align 8, !dbg !5717
  %call48 = call i32 @map_acpi_tables(ptr noundef %info, ptr noundef %43) #15, !dbg !5718
  store i32 %call48, ptr %result, align 4, !dbg !5719
  %44 = load i32, ptr %result, align 4, !dbg !5720
  %tobool49 = icmp ne i32 %44, 0, !dbg !5720
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !5722

if.then50:                                        ; preds = %if.end45
  %45 = load i32, ptr %result, align 4, !dbg !5723
  store i32 %45, ptr %retval, align 4, !dbg !5724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5724

if.end51:                                         ; preds = %if.end45
  %46 = load ptr, ptr %image.addr, align 8, !dbg !5725
  %47 = load ptr, ptr %image.addr, align 8, !dbg !5726
  %arch52 = getelementptr inbounds %struct.kimage, ptr %47, i32 0, i32 14, !dbg !5727
  %pgd53 = getelementptr inbounds %struct.kimage_arch, ptr %arch52, i32 0, i32 0, !dbg !5728
  %48 = load ptr, ptr %pgd53, align 8, !dbg !5728
  %49 = load i64, ptr %control_page.addr, align 8, !dbg !5729
  %call54 = call i32 @init_transition_pgtable(ptr noundef %46, ptr noundef %48, i64 noundef %49) #15, !dbg !5730
  store i32 %call54, ptr %retval, align 4, !dbg !5731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5731

cleanup:                                          ; preds = %if.end51, %if.then50, %if.then44, %if.then35, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 8, ptr %mend) #14, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 8, ptr %mstart) #14, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 48, ptr %info) #14, !dbg !5732
  %50 = load i32, ptr %retval, align 4, !dbg !5732
  ret i32 %50, !dbg !5732
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @machine_kexec_cleanup(ptr noundef %image) #0 align 16 !dbg !5733 {
entry:
  %image.addr = alloca ptr, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !5737, metadata !DIExpression()), !dbg !5738
  %0 = load ptr, ptr %image.addr, align 8, !dbg !5739
  call void @free_transition_pgtable(ptr noundef %0) #15, !dbg !5740
  ret void, !dbg !5741
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_transition_pgtable(ptr noundef %image) #0 align 16 !dbg !5742 {
entry:
  %image.addr = alloca ptr, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !5744, metadata !DIExpression()), !dbg !5745
  %0 = load ptr, ptr %image.addr, align 8, !dbg !5746
  %arch = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 14, !dbg !5746
  %p4d = getelementptr inbounds %struct.kimage_arch, ptr %arch, i32 0, i32 1, !dbg !5746
  %1 = load ptr, ptr %p4d, align 8, !dbg !5746
  %2 = ptrtoint ptr %1 to i64, !dbg !5746
  call void @free_pages(i64 noundef %2, i32 noundef 0) #15, !dbg !5746
  %3 = load ptr, ptr %image.addr, align 8, !dbg !5747
  %arch1 = getelementptr inbounds %struct.kimage, ptr %3, i32 0, i32 14, !dbg !5748
  %p4d2 = getelementptr inbounds %struct.kimage_arch, ptr %arch1, i32 0, i32 1, !dbg !5749
  store ptr null, ptr %p4d2, align 8, !dbg !5750
  %4 = load ptr, ptr %image.addr, align 8, !dbg !5751
  %arch3 = getelementptr inbounds %struct.kimage, ptr %4, i32 0, i32 14, !dbg !5751
  %pud = getelementptr inbounds %struct.kimage_arch, ptr %arch3, i32 0, i32 2, !dbg !5751
  %5 = load ptr, ptr %pud, align 8, !dbg !5751
  %6 = ptrtoint ptr %5 to i64, !dbg !5751
  call void @free_pages(i64 noundef %6, i32 noundef 0) #15, !dbg !5751
  %7 = load ptr, ptr %image.addr, align 8, !dbg !5752
  %arch4 = getelementptr inbounds %struct.kimage, ptr %7, i32 0, i32 14, !dbg !5753
  %pud5 = getelementptr inbounds %struct.kimage_arch, ptr %arch4, i32 0, i32 2, !dbg !5754
  store ptr null, ptr %pud5, align 8, !dbg !5755
  %8 = load ptr, ptr %image.addr, align 8, !dbg !5756
  %arch6 = getelementptr inbounds %struct.kimage, ptr %8, i32 0, i32 14, !dbg !5756
  %pmd = getelementptr inbounds %struct.kimage_arch, ptr %arch6, i32 0, i32 3, !dbg !5756
  %9 = load ptr, ptr %pmd, align 8, !dbg !5756
  %10 = ptrtoint ptr %9 to i64, !dbg !5756
  call void @free_pages(i64 noundef %10, i32 noundef 0) #15, !dbg !5756
  %11 = load ptr, ptr %image.addr, align 8, !dbg !5757
  %arch7 = getelementptr inbounds %struct.kimage, ptr %11, i32 0, i32 14, !dbg !5758
  %pmd8 = getelementptr inbounds %struct.kimage_arch, ptr %arch7, i32 0, i32 3, !dbg !5759
  store ptr null, ptr %pmd8, align 8, !dbg !5760
  %12 = load ptr, ptr %image.addr, align 8, !dbg !5761
  %arch9 = getelementptr inbounds %struct.kimage, ptr %12, i32 0, i32 14, !dbg !5761
  %pte = getelementptr inbounds %struct.kimage_arch, ptr %arch9, i32 0, i32 4, !dbg !5761
  %13 = load ptr, ptr %pte, align 8, !dbg !5761
  %14 = ptrtoint ptr %13 to i64, !dbg !5761
  call void @free_pages(i64 noundef %14, i32 noundef 0) #15, !dbg !5761
  %15 = load ptr, ptr %image.addr, align 8, !dbg !5762
  %arch10 = getelementptr inbounds %struct.kimage, ptr %15, i32 0, i32 14, !dbg !5763
  %pte11 = getelementptr inbounds %struct.kimage_arch, ptr %arch10, i32 0, i32 4, !dbg !5764
  store ptr null, ptr %pte11, align 8, !dbg !5765
  ret void, !dbg !5766
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @machine_kexec(ptr noundef %image) #0 align 16 !dbg !5767 {
entry:
  %image.addr = alloca ptr, align 8
  %page_list = alloca [4 x i64], align 16
  %host_mem_enc_active = alloca i32, align 4
  %save_ftrace_enabled = alloca i32, align 4
  %control_page = alloca ptr, align 8
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !5769, metadata !DIExpression()), !dbg !5774
  call void @llvm.lifetime.start.p0(i64 32, ptr %page_list) #14, !dbg !5775
  call void @llvm.dbg.declare(metadata ptr %page_list, metadata !5770, metadata !DIExpression()), !dbg !5776
  call void @llvm.lifetime.start.p0(i64 4, ptr %host_mem_enc_active) #14, !dbg !5777
  call void @llvm.dbg.declare(metadata ptr %host_mem_enc_active, metadata !5771, metadata !DIExpression()), !dbg !5778
  call void @llvm.lifetime.start.p0(i64 4, ptr %save_ftrace_enabled) #14, !dbg !5779
  call void @llvm.dbg.declare(metadata ptr %save_ftrace_enabled, metadata !5772, metadata !DIExpression()), !dbg !5780
  call void @llvm.lifetime.start.p0(i64 8, ptr %control_page) #14, !dbg !5781
  call void @llvm.dbg.declare(metadata ptr %control_page, metadata !5773, metadata !DIExpression()), !dbg !5782
  %call = call zeroext i1 @cc_platform_has(i32 noundef 1) #15, !dbg !5783
  %conv = zext i1 %call to i32, !dbg !5783
  store i32 %conv, ptr %host_mem_enc_active, align 4, !dbg !5784
  %call1 = call i32 @__ftrace_enabled_save() #15, !dbg !5785
  store i32 %call1, ptr %save_ftrace_enabled, align 4, !dbg !5786
  br label %do.body, !dbg !5787

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #15, !dbg !5788
  br label %do.cond, !dbg !5788

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5788

do.end:                                           ; preds = %do.cond
  call void @hw_breakpoint_disable() #15, !dbg !5790
  call void @cet_disable() #16, !dbg !5791
  %0 = load ptr, ptr %image.addr, align 8, !dbg !5792
  %preserve_context = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 13, !dbg !5794
  %bf.load = load i8, ptr %preserve_context, align 8, !dbg !5794
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5794
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5794
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5794
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5792
  br i1 %tobool, label %if.then, label %if.end, !dbg !5795

if.then:                                          ; preds = %do.end
  call void @clear_IO_APIC() #15, !dbg !5796
  call void @restore_boot_irq_mode() #15, !dbg !5798
  br label %if.end, !dbg !5799

if.end:                                           ; preds = %if.then, %do.end
  %1 = load ptr, ptr %image.addr, align 8, !dbg !5800
  %control_code_page = getelementptr inbounds %struct.kimage, ptr %1, i32 0, i32 4, !dbg !5800
  %2 = load ptr, ptr %control_code_page, align 8, !dbg !5800
  %call2 = call ptr @lowmem_page_address(ptr noundef %2) #15, !dbg !5800
  store ptr %call2, ptr %control_page, align 8, !dbg !5801
  %3 = load ptr, ptr %control_page, align 8, !dbg !5802
  %call3 = call ptr @__memcpy(ptr noundef %3, ptr noundef @relocate_kernel, i64 noundef 2048) #15, !dbg !5803
  %4 = load ptr, ptr %control_page, align 8, !dbg !5804
  %call4 = call i64 @virt_to_phys(ptr noundef %4) #15, !dbg !5805
  %arrayidx = getelementptr [4 x i64], ptr %page_list, i64 0, i64 0, !dbg !5806
  store i64 %call4, ptr %arrayidx, align 16, !dbg !5807
  %5 = load ptr, ptr %control_page, align 8, !dbg !5808
  %6 = ptrtoint ptr %5 to i64, !dbg !5809
  %arrayidx5 = getelementptr [4 x i64], ptr %page_list, i64 0, i64 1, !dbg !5810
  store i64 %6, ptr %arrayidx5, align 8, !dbg !5811
  %7 = load ptr, ptr %image.addr, align 8, !dbg !5812
  %arch = getelementptr inbounds %struct.kimage, ptr %7, i32 0, i32 14, !dbg !5812
  %pgd = getelementptr inbounds %struct.kimage_arch, ptr %arch, i32 0, i32 0, !dbg !5812
  %8 = load ptr, ptr %pgd, align 8, !dbg !5812
  %9 = ptrtoint ptr %8 to i64, !dbg !5812
  %call6 = call i64 @__phys_addr_nodebug(i64 noundef %9) #15, !dbg !5812
  %arrayidx7 = getelementptr [4 x i64], ptr %page_list, i64 0, i64 2, !dbg !5813
  store i64 %call6, ptr %arrayidx7, align 16, !dbg !5814
  %10 = load ptr, ptr %image.addr, align 8, !dbg !5815
  %type = getelementptr inbounds %struct.kimage, ptr %10, i32 0, i32 13, !dbg !5817
  %bf.load8 = load i8, ptr %type, align 8, !dbg !5817
  %bf.clear9 = and i8 %bf.load8, 1, !dbg !5817
  %bf.cast10 = zext i8 %bf.clear9 to i32, !dbg !5817
  %cmp = icmp eq i32 %bf.cast10, 0, !dbg !5818
  br i1 %cmp, label %if.then12, label %if.end14, !dbg !5819

if.then12:                                        ; preds = %if.end
  %11 = load ptr, ptr %image.addr, align 8, !dbg !5820
  %swap_page = getelementptr inbounds %struct.kimage, ptr %11, i32 0, i32 5, !dbg !5820
  %12 = load ptr, ptr %swap_page, align 8, !dbg !5820
  %13 = load i64, ptr @vmemmap_base, align 8, !dbg !5820
  %14 = inttoptr i64 %13 to ptr, !dbg !5820
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64, !dbg !5820
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64, !dbg !5820
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5820
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5820
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5821
  %arrayidx13 = getelementptr [4 x i64], ptr %page_list, i64 0, i64 3, !dbg !5822
  store i64 %shl, ptr %arrayidx13, align 8, !dbg !5823
  br label %if.end14, !dbg !5822

if.end14:                                         ; preds = %if.then12, %if.end
  call void @load_segments() #15, !dbg !5824
  call void @native_idt_invalidate() #15, !dbg !5825
  call void @native_gdt_invalidate() #15, !dbg !5826
  %15 = load ptr, ptr %image.addr, align 8, !dbg !5827
  %head = getelementptr inbounds %struct.kimage, ptr %15, i32 0, i32 0, !dbg !5828
  %16 = load i64, ptr %head, align 8, !dbg !5828
  %arraydecay = getelementptr inbounds [4 x i64], ptr %page_list, i64 0, i64 0, !dbg !5829
  %17 = ptrtoint ptr %arraydecay to i64, !dbg !5830
  %18 = load ptr, ptr %image.addr, align 8, !dbg !5831
  %start = getelementptr inbounds %struct.kimage, ptr %18, i32 0, i32 3, !dbg !5832
  %19 = load i64, ptr %start, align 8, !dbg !5832
  %20 = load ptr, ptr %image.addr, align 8, !dbg !5833
  %preserve_context15 = getelementptr inbounds %struct.kimage, ptr %20, i32 0, i32 13, !dbg !5834
  %bf.load16 = load i8, ptr %preserve_context15, align 8, !dbg !5834
  %bf.lshr17 = lshr i8 %bf.load16, 1, !dbg !5834
  %bf.clear18 = and i8 %bf.lshr17, 1, !dbg !5834
  %bf.cast19 = zext i8 %bf.clear18 to i32, !dbg !5834
  %21 = load i32, ptr %host_mem_enc_active, align 4, !dbg !5835
  %call20 = call i64 @relocate_kernel(i64 noundef %16, i64 noundef %17, i64 noundef %19, i32 noundef %bf.cast19, i32 noundef %21) #15, !dbg !5836
  %22 = load ptr, ptr %image.addr, align 8, !dbg !5837
  %start21 = getelementptr inbounds %struct.kimage, ptr %22, i32 0, i32 3, !dbg !5838
  store i64 %call20, ptr %start21, align 8, !dbg !5839
  %23 = load i32, ptr %save_ftrace_enabled, align 4, !dbg !5840
  call void @__ftrace_enabled_restore(i32 noundef %23) #15, !dbg !5841
  call void @llvm.lifetime.end.p0(i64 8, ptr %control_page) #14, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 4, ptr %save_ftrace_enabled) #14, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 4, ptr %host_mem_enc_active) #14, !dbg !5842
  call void @llvm.lifetime.end.p0(i64 32, ptr %page_list) #14, !dbg !5842
  ret void, !dbg !5842
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cc_platform_has(i32 noundef %attr) #3 align 16 !dbg !5843 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  ret i1 false, !dbg !5849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__ftrace_enabled_save() #3 align 16 !dbg !5850 {
entry:
  ret i32 0, !dbg !5852
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #4 align 16 !dbg !5853 {
entry:
  call void @native_irq_disable() #15, !dbg !5855
  ret void, !dbg !5856
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hw_breakpoint_disable() #3 align 16 !dbg !5857 {
entry:
  call void @native_set_debugreg(i32 noundef 7, i64 noundef 0) #15, !dbg !5858
  call void @native_set_debugreg(i32 noundef 0, i64 noundef 0) #15, !dbg !5859
  call void @native_set_debugreg(i32 noundef 1, i64 noundef 0) #15, !dbg !5860
  call void @native_set_debugreg(i32 noundef 2, i64 noundef 0) #15, !dbg !5861
  call void @native_set_debugreg(i32 noundef 3, i64 noundef 0) #15, !dbg !5862
  ret void, !dbg !5863
}

; Function Attrs: nocf_check noredzone null_pointer_is_valid
declare !dbg !5864 dso_local void @cet_disable() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5866 dso_local void @clear_IO_APIC() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5868 dso_local void @restore_boot_irq_mode() #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lowmem_page_address(ptr noundef %page) #4 align 16 !dbg !5869 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  %0 = load ptr, ptr %page.addr, align 8, !dbg !5877
  %1 = load i64, ptr @vmemmap_base, align 8, !dbg !5877
  %2 = inttoptr i64 %1 to ptr, !dbg !5877
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !5877
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !5877
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5877
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5877
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5877
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !5877
  %add = add i64 %shl, %3, !dbg !5877
  %4 = inttoptr i64 %add to ptr, !dbg !5877
  ret ptr %4, !dbg !5878
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5879 dso_local ptr @__memcpy(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5883 dso_local i64 @relocate_kernel(i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_to_phys(ptr noundef %address) #3 align 16 !dbg !5886 {
entry:
  %address.addr = alloca ptr, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  %0 = load ptr, ptr %address.addr, align 8, !dbg !5895
  %1 = ptrtoint ptr %0 to i64, !dbg !5895
  %call = call i64 @__phys_addr_nodebug(i64 noundef %1) #15, !dbg !5895
  ret i64 %call, !dbg !5896
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #4 align 16 !dbg !5897 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5902, metadata !DIExpression()), !dbg !5904
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #14, !dbg !5905
  call void @llvm.dbg.declare(metadata ptr %y, metadata !5903, metadata !DIExpression()), !dbg !5906
  %0 = load i64, ptr %x.addr, align 8, !dbg !5907
  %sub = sub i64 %0, -2147483648, !dbg !5908
  store i64 %sub, ptr %y, align 8, !dbg !5906
  %1 = load i64, ptr %y, align 8, !dbg !5909
  %2 = load i64, ptr %x.addr, align 8, !dbg !5910
  %3 = load i64, ptr %y, align 8, !dbg !5911
  %cmp = icmp ugt i64 %2, %3, !dbg !5912
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5913

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !5914
  br label %cond.end, !dbg !5913

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !5915
  %sub1 = sub i64 -2147483648, %5, !dbg !5916
  br label %cond.end, !dbg !5913

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5913
  %add = add i64 %1, %cond, !dbg !5917
  store i64 %add, ptr %x.addr, align 8, !dbg !5918
  %6 = load i64, ptr %x.addr, align 8, !dbg !5919
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #14, !dbg !5920
  ret i64 %6, !dbg !5921
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @load_segments() #0 align 16 !dbg !5922 {
entry:
  call void asm sideeffect "\09movl $0,%ds\0A\09movl $0,%es\0A\09movl $0,%ss\0A\09movl $0,%fs\0A\09movl $0,%gs\0A", "{ax},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 24) #14, !dbg !5923, !srcloc !5924
  ret void, !dbg !5925
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_idt_invalidate() #3 align 16 !dbg !5926 {
entry:
  %invalid_idt = alloca %struct.desc_ptr, align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr %invalid_idt) #14, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %invalid_idt, metadata !5929, metadata !DIExpression()), !dbg !5936
  call void @llvm.memset.p0.i64(ptr align 1 %invalid_idt, i8 0, i64 10, i1 false), !dbg !5936
  call void @native_load_idt(ptr noundef %invalid_idt) #15, !dbg !5937
  call void @llvm.lifetime.end.p0(i64 10, ptr %invalid_idt) #14, !dbg !5938
  ret void, !dbg !5938
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_gdt_invalidate() #3 align 16 !dbg !5939 {
entry:
  %invalid_gdt = alloca %struct.desc_ptr, align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr %invalid_gdt) #14, !dbg !5942
  call void @llvm.dbg.declare(metadata ptr %invalid_gdt, metadata !5941, metadata !DIExpression()), !dbg !5943
  call void @llvm.memset.p0.i64(ptr align 1 %invalid_gdt, i8 0, i64 10, i1 false), !dbg !5943
  call void @native_load_gdt(ptr noundef %invalid_gdt) #15, !dbg !5944
  call void @llvm.lifetime.end.p0(i64 10, ptr %invalid_gdt) #14, !dbg !5945
  ret void, !dbg !5945
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__ftrace_enabled_restore(i32 noundef %enabled) #3 align 16 !dbg !5946 {
entry:
  %enabled.addr = alloca i32, align 4
  store i32 %enabled, ptr %enabled.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %enabled.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  ret void, !dbg !5950
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_kexec_protect_crashkres() #0 align 16 !dbg !5951 {
entry:
  call void @kexec_mark_crashkres(i1 noundef zeroext true) #15, !dbg !5952
  ret void, !dbg !5953
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kexec_mark_crashkres(i1 noundef zeroext %protect) #0 align 16 !dbg !5954 {
entry:
  %protect.addr = alloca i8, align 1
  %control = alloca i64, align 8
  %frombool = zext i1 %protect to i8
  store i8 %frombool, ptr %protect.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %protect.addr, metadata !5958, metadata !DIExpression()), !dbg !5960
  call void @llvm.lifetime.start.p0(i64 8, ptr %control) #14, !dbg !5961
  call void @llvm.dbg.declare(metadata ptr %control, metadata !5959, metadata !DIExpression()), !dbg !5962
  %0 = load i64, ptr @crashk_low_res, align 8, !dbg !5963
  %1 = load i64, ptr getelementptr inbounds (%struct.resource, ptr @crashk_low_res, i32 0, i32 1), align 8, !dbg !5964
  %2 = load i8, ptr %protect.addr, align 1, !dbg !5965, !range !5966, !noundef !1081
  %tobool = trunc i8 %2 to i1, !dbg !5965
  %call = call i32 @kexec_mark_range(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %tobool) #15, !dbg !5967
  %3 = load ptr, ptr @kexec_crash_image, align 8, !dbg !5968
  %control_code_page = getelementptr inbounds %struct.kimage, ptr %3, i32 0, i32 4, !dbg !5968
  %4 = load ptr, ptr %control_code_page, align 8, !dbg !5968
  %5 = load i64, ptr @vmemmap_base, align 8, !dbg !5968
  %6 = inttoptr i64 %5 to ptr, !dbg !5968
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64, !dbg !5968
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64, !dbg !5968
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5968
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5968
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5968
  store i64 %shl, ptr %control, align 8, !dbg !5969
  %7 = load i64, ptr @crashk_res, align 8, !dbg !5970
  %8 = load i64, ptr %control, align 8, !dbg !5971
  %sub = sub i64 %8, 1, !dbg !5972
  %9 = load i8, ptr %protect.addr, align 1, !dbg !5973, !range !5966, !noundef !1081
  %tobool1 = trunc i8 %9 to i1, !dbg !5973
  %call2 = call i32 @kexec_mark_range(i64 noundef %7, i64 noundef %sub, i1 noundef zeroext %tobool1) #15, !dbg !5974
  %10 = load i64, ptr %control, align 8, !dbg !5975
  %add = add i64 %10, 4096, !dbg !5975
  store i64 %add, ptr %control, align 8, !dbg !5975
  %11 = load i64, ptr %control, align 8, !dbg !5976
  %12 = load i64, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 8, !dbg !5977
  %13 = load i8, ptr %protect.addr, align 1, !dbg !5978, !range !5966, !noundef !1081
  %tobool3 = trunc i8 %13 to i1, !dbg !5978
  %call4 = call i32 @kexec_mark_range(i64 noundef %11, i64 noundef %12, i1 noundef zeroext %tobool3) #15, !dbg !5979
  call void @llvm.lifetime.end.p0(i64 8, ptr %control) #14, !dbg !5980
  ret void, !dbg !5980
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_kexec_unprotect_crashkres() #0 align 16 !dbg !5981 {
entry:
  call void @kexec_mark_crashkres(i1 noundef zeroext false) #15, !dbg !5982
  ret void, !dbg !5983
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_kexec_post_alloc_pages(ptr noundef %vaddr, i32 noundef %pages, i32 noundef %gfp) #0 align 16 !dbg !5984 {
entry:
  %retval = alloca i32, align 4
  %vaddr.addr = alloca ptr, align 8
  %pages.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !5988, metadata !DIExpression()), !dbg !5991
  store i32 %pages, ptr %pages.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !5989, metadata !DIExpression()), !dbg !5992
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5990, metadata !DIExpression()), !dbg !5993
  %call = call zeroext i1 @cc_platform_has(i32 noundef 1) #15, !dbg !5994
  br i1 %call, label %if.end, label %if.then, !dbg !5996

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5997
  br label %return, !dbg !5997

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %vaddr.addr, align 8, !dbg !5998
  %1 = ptrtoint ptr %0 to i64, !dbg !5999
  %2 = load i32, ptr %pages.addr, align 4, !dbg !6000
  %call1 = call i32 @set_memory_decrypted(i64 noundef %1, i32 noundef %2) #15, !dbg !6001
  store i32 %call1, ptr %retval, align 4, !dbg !6002
  br label %return, !dbg !6002

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6003
  ret i32 %3, !dbg !6003
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6004 dso_local i32 @set_memory_decrypted(i64 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_kexec_pre_free_pages(ptr noundef %vaddr, i32 noundef %pages) #0 align 16 !dbg !6008 {
entry:
  %vaddr.addr = alloca ptr, align 8
  %pages.addr = alloca i32, align 4
  store ptr %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !6012, metadata !DIExpression()), !dbg !6014
  store i32 %pages, ptr %pages.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !6013, metadata !DIExpression()), !dbg !6015
  %call = call zeroext i1 @cc_platform_has(i32 noundef 1) #15, !dbg !6016
  br i1 %call, label %if.end, label %if.then, !dbg !6018

if.then:                                          ; preds = %entry
  br label %return, !dbg !6019

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %vaddr.addr, align 8, !dbg !6020
  %1 = ptrtoint ptr %0 to i64, !dbg !6021
  %2 = load i32, ptr %pages.addr, align 4, !dbg !6022
  %call1 = call i32 @set_memory_encrypted(i64 noundef %1, i32 noundef %2) #15, !dbg !6023
  br label %return, !dbg !6024

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6024
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6025 dso_local i32 @set_memory_encrypted(i64 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pgt_page(ptr noundef %data) #0 align 16 !dbg !6026 {
entry:
  %data.addr = alloca ptr, align 8
  %image = alloca ptr, align 8
  %page = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6028, metadata !DIExpression()), !dbg !6032
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #14, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %image, metadata !6029, metadata !DIExpression()), !dbg !6034
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6035
  store ptr %0, ptr %image, align 8, !dbg !6034
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #14, !dbg !6036
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6030, metadata !DIExpression()), !dbg !6037
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6031, metadata !DIExpression()), !dbg !6039
  store ptr null, ptr %p, align 8, !dbg !6039
  %1 = load ptr, ptr %image, align 8, !dbg !6040
  %call = call ptr @kimage_alloc_control_pages(ptr noundef %1, i32 noundef 0) #15, !dbg !6041
  store ptr %call, ptr %page, align 8, !dbg !6042
  %2 = load ptr, ptr %page, align 8, !dbg !6043
  %tobool = icmp ne ptr %2, null, !dbg !6043
  br i1 %tobool, label %if.then, label %if.end, !dbg !6045

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %page, align 8, !dbg !6046
  %call1 = call ptr @lowmem_page_address(ptr noundef %3) #15, !dbg !6046
  store ptr %call1, ptr %p, align 8, !dbg !6048
  %4 = load ptr, ptr %p, align 8, !dbg !6049
  call void @clear_page(ptr noundef %4) #15, !dbg !6050
  br label %if.end, !dbg !6051

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %p, align 8, !dbg !6052
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #14, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #14, !dbg !6053
  ret ptr %5, !dbg !6054
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6055 dso_local i32 @kernel_ident_mapping_init(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_efi_systab(ptr noundef %info, ptr noundef %level4p) #0 align 16 !dbg !6059 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %level4p.addr = alloca ptr, align 8
  %mstart = alloca i64, align 8
  %mend = alloca i64, align 8
  %kaddr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %stbl = alloca ptr, align 8
  %stbl22 = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6063, metadata !DIExpression()), !dbg !6074
  store ptr %level4p, ptr %level4p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %level4p.addr, metadata !6064, metadata !DIExpression()), !dbg !6075
  call void @llvm.lifetime.start.p0(i64 8, ptr %mstart) #14, !dbg !6076
  call void @llvm.dbg.declare(metadata ptr %mstart, metadata !6065, metadata !DIExpression()), !dbg !6077
  call void @llvm.lifetime.start.p0(i64 8, ptr %mend) #14, !dbg !6076
  call void @llvm.dbg.declare(metadata ptr %mend, metadata !6066, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 8, ptr %kaddr) #14, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %kaddr, metadata !6067, metadata !DIExpression()), !dbg !6080
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6068, metadata !DIExpression()), !dbg !6082
  %call = call zeroext i1 @efi_enabled(i32 noundef 0) #15, !dbg !6083
  br i1 %call, label %if.end, label %if.then, !dbg !6085

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6086

if.end:                                           ; preds = %entry
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 17, i32 1), align 1, !dbg !6087
  %conv = zext i32 %0 to i64, !dbg !6088
  %1 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 17, i32 6), align 1, !dbg !6089
  %conv1 = zext i32 %1 to i64, !dbg !6090
  %shl = shl i64 %conv1, 32, !dbg !6091
  %or = or i64 %conv, %shl, !dbg !6092
  store i64 %or, ptr %mstart, align 8, !dbg !6093
  %call2 = call zeroext i1 @efi_enabled(i32 noundef 5) #15, !dbg !6094
  br i1 %call2, label %if.then3, label %if.else, !dbg !6096

if.then3:                                         ; preds = %if.end
  %2 = load i64, ptr %mstart, align 8, !dbg !6097
  %add = add i64 %2, 120, !dbg !6098
  store i64 %add, ptr %mend, align 8, !dbg !6099
  br label %if.end5, !dbg !6100

if.else:                                          ; preds = %if.end
  %3 = load i64, ptr %mstart, align 8, !dbg !6101
  %add4 = add i64 %3, 72, !dbg !6102
  store i64 %add4, ptr %mend, align 8, !dbg !6103
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %4 = load i64, ptr %mstart, align 8, !dbg !6104
  %tobool = icmp ne i64 %4, 0, !dbg !6104
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !6106

if.then6:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !6107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6107

if.end7:                                          ; preds = %if.end5
  %5 = load ptr, ptr %info.addr, align 8, !dbg !6108
  %6 = load ptr, ptr %level4p.addr, align 8, !dbg !6109
  %7 = load i64, ptr %mstart, align 8, !dbg !6110
  %8 = load i64, ptr %mend, align 8, !dbg !6111
  %call8 = call i32 @kernel_ident_mapping_init(ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) #15, !dbg !6112
  store i32 %call8, ptr %ret, align 4, !dbg !6113
  %9 = load i32, ptr %ret, align 4, !dbg !6114
  %tobool9 = icmp ne i32 %9, 0, !dbg !6114
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6116

if.then10:                                        ; preds = %if.end7
  %10 = load i32, ptr %ret, align 4, !dbg !6117
  store i32 %10, ptr %retval, align 4, !dbg !6118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6118

if.end11:                                         ; preds = %if.end7
  %11 = load i64, ptr %mstart, align 8, !dbg !6119
  %12 = load i64, ptr %mend, align 8, !dbg !6120
  %13 = load i64, ptr %mstart, align 8, !dbg !6121
  %sub = sub i64 %12, %13, !dbg !6122
  %call12 = call ptr @memremap(i64 noundef %11, i64 noundef %sub, i64 noundef 1) #15, !dbg !6123
  store ptr %call12, ptr %kaddr, align 8, !dbg !6124
  %14 = load ptr, ptr %kaddr, align 8, !dbg !6125
  %tobool13 = icmp ne ptr %14, null, !dbg !6125
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !6127

if.then14:                                        ; preds = %if.end11
  br label %do.body, !dbg !6128

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !6131

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6131

do.end:                                           ; preds = %do.cond
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #17, !dbg !6128
  store i32 %call15, ptr %tmp, align 4, !dbg !6131
  %15 = load i32, ptr %tmp, align 4, !dbg !6128
  store i32 -12, ptr %retval, align 4, !dbg !6133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6133

if.end16:                                         ; preds = %if.end11
  %16 = load i64, ptr @efi_config_table, align 8, !dbg !6134
  store i64 %16, ptr %mstart, align 8, !dbg !6135
  %call17 = call zeroext i1 @efi_enabled(i32 noundef 5) #15, !dbg !6136
  br i1 %call17, label %if.then18, label %if.else21, !dbg !6137

if.then18:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %stbl) #14, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %stbl, metadata !6069, metadata !DIExpression()), !dbg !6139
  %17 = load ptr, ptr %kaddr, align 8, !dbg !6140
  store ptr %17, ptr %stbl, align 8, !dbg !6139
  %18 = load i64, ptr %mstart, align 8, !dbg !6141
  %19 = load ptr, ptr %stbl, align 8, !dbg !6142
  %nr_tables = getelementptr inbounds %struct.efi_system_table_64_t, ptr %19, i32 0, i32 12, !dbg !6143
  %20 = load i32, ptr %nr_tables, align 8, !dbg !6143
  %conv19 = zext i32 %20 to i64, !dbg !6142
  %mul = mul i64 24, %conv19, !dbg !6144
  %add20 = add i64 %18, %mul, !dbg !6145
  store i64 %add20, ptr %mend, align 8, !dbg !6146
  call void @llvm.lifetime.end.p0(i64 8, ptr %stbl) #14, !dbg !6147
  br label %if.end27, !dbg !6148

if.else21:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %stbl22) #14, !dbg !6149
  call void @llvm.dbg.declare(metadata ptr %stbl22, metadata !6072, metadata !DIExpression()), !dbg !6150
  %21 = load ptr, ptr %kaddr, align 8, !dbg !6151
  store ptr %21, ptr %stbl22, align 8, !dbg !6150
  %22 = load i64, ptr %mstart, align 8, !dbg !6152
  %23 = load ptr, ptr %stbl22, align 8, !dbg !6153
  %nr_tables23 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %23, i32 0, i32 11, !dbg !6154
  %24 = load i32, ptr %nr_tables23, align 8, !dbg !6154
  %conv24 = zext i32 %24 to i64, !dbg !6153
  %mul25 = mul i64 20, %conv24, !dbg !6155
  %add26 = add i64 %22, %mul25, !dbg !6156
  store i64 %add26, ptr %mend, align 8, !dbg !6157
  call void @llvm.lifetime.end.p0(i64 8, ptr %stbl22) #14, !dbg !6158
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %if.then18
  %25 = load ptr, ptr %kaddr, align 8, !dbg !6159
  call void @memunmap(ptr noundef %25) #15, !dbg !6160
  %26 = load ptr, ptr %info.addr, align 8, !dbg !6161
  %27 = load ptr, ptr %level4p.addr, align 8, !dbg !6162
  %28 = load i64, ptr %mstart, align 8, !dbg !6163
  %29 = load i64, ptr %mend, align 8, !dbg !6164
  %call28 = call i32 @kernel_ident_mapping_init(ptr noundef %26, ptr noundef %27, i64 noundef %28, i64 noundef %29) #15, !dbg !6165
  store i32 %call28, ptr %retval, align 4, !dbg !6166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6166

cleanup:                                          ; preds = %if.end27, %do.end, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6167
  call void @llvm.lifetime.end.p0(i64 8, ptr %kaddr) #14, !dbg !6167
  call void @llvm.lifetime.end.p0(i64 8, ptr %mend) #14, !dbg !6167
  call void @llvm.lifetime.end.p0(i64 8, ptr %mstart) #14, !dbg !6167
  %30 = load i32, ptr %retval, align 4, !dbg !6167
  ret i32 %30, !dbg !6167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @map_acpi_tables(ptr noundef %info, ptr noundef %level4p) #0 align 16 !dbg !6168 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %level4p.addr = alloca ptr, align 8
  %data = alloca %struct.init_pgtable_data, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6170, metadata !DIExpression()), !dbg !6179
  store ptr %level4p, ptr %level4p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %level4p.addr, metadata !6171, metadata !DIExpression()), !dbg !6180
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #14, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6172, metadata !DIExpression()), !dbg !6182
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !6183
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6177, metadata !DIExpression()), !dbg !6184
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6185
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6178, metadata !DIExpression()), !dbg !6186
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6187
  %info1 = getelementptr inbounds %struct.init_pgtable_data, ptr %data, i32 0, i32 0, !dbg !6188
  store ptr %0, ptr %info1, align 8, !dbg !6189
  %1 = load ptr, ptr %level4p.addr, align 8, !dbg !6190
  %level4p2 = getelementptr inbounds %struct.init_pgtable_data, ptr %data, i32 0, i32 1, !dbg !6191
  store ptr %1, ptr %level4p2, align 8, !dbg !6192
  store i64 2147484160, ptr %flags, align 8, !dbg !6193
  %2 = load i64, ptr %flags, align 8, !dbg !6194
  %call = call i32 @walk_iomem_res_desc(i64 noundef 2, i64 noundef %2, i64 noundef 0, i64 noundef -1, ptr noundef %data, ptr noundef @mem_region_callback) #15, !dbg !6195
  store i32 %call, ptr %ret, align 4, !dbg !6196
  %3 = load i32, ptr %ret, align 4, !dbg !6197
  %tobool = icmp ne i32 %3, 0, !dbg !6197
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6199

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !6200
  %cmp = icmp ne i32 %4, -22, !dbg !6201
  br i1 %cmp, label %if.then, label %if.end, !dbg !6202

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, ptr %ret, align 4, !dbg !6203
  store i32 %5, ptr %retval, align 4, !dbg !6204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6204

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i64, ptr %flags, align 8, !dbg !6205
  %call3 = call i32 @walk_iomem_res_desc(i64 noundef 3, i64 noundef %6, i64 noundef 0, i64 noundef -1, ptr noundef %data, ptr noundef @mem_region_callback) #15, !dbg !6206
  store i32 %call3, ptr %ret, align 4, !dbg !6207
  %7 = load i32, ptr %ret, align 4, !dbg !6208
  %tobool4 = icmp ne i32 %7, 0, !dbg !6208
  br i1 %tobool4, label %land.lhs.true5, label %if.end8, !dbg !6210

land.lhs.true5:                                   ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !6211
  %cmp6 = icmp ne i32 %8, -22, !dbg !6212
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !6213

if.then7:                                         ; preds = %land.lhs.true5
  %9 = load i32, ptr %ret, align 4, !dbg !6214
  store i32 %9, ptr %retval, align 4, !dbg !6215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6215

if.end8:                                          ; preds = %land.lhs.true5, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6216

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6217
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !6217
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #14, !dbg !6217
  %10 = load i32, ptr %retval, align 4, !dbg !6217
  ret i32 %10, !dbg !6217
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @init_transition_pgtable(ptr noundef %image, ptr noundef %pgd, i64 noundef %control_page) #0 align 16 !dbg !6218 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %control_page.addr = alloca i64, align 8
  %prot = alloca %struct.pgprot, align 8
  %vaddr = alloca i64, align 8
  %paddr = alloca i64, align 8
  %result = alloca i32, align 4
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  %pte = alloca ptr, align 8
  %agg.tmp = alloca %struct.pgd_t, align 8
  %agg.tmp22 = alloca %struct.p4d_t, align 8
  %agg.tmp40 = alloca %struct.pud_t, align 8
  %agg.tmp58 = alloca %struct.pmd_t, align 8
  %.compoundliteral = alloca %struct.pgprot, align 8
  %agg.tmp71 = alloca %struct.pte_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image.addr, metadata !6222, metadata !DIExpression()), !dbg !6234
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6223, metadata !DIExpression()), !dbg !6235
  store i64 %control_page, ptr %control_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %control_page.addr, metadata !6224, metadata !DIExpression()), !dbg !6236
  call void @llvm.lifetime.start.p0(i64 8, ptr %prot) #14, !dbg !6237
  call void @llvm.dbg.declare(metadata ptr %prot, metadata !6225, metadata !DIExpression()), !dbg !6238
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !6239
  %0 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !6239
  %and = and i64 355, %0, !dbg !6239
  store i64 %and, ptr %pgprot, align 8, !dbg !6239
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #14, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !6226, metadata !DIExpression()), !dbg !6241
  call void @llvm.lifetime.start.p0(i64 8, ptr %paddr) #14, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %paddr, metadata !6227, metadata !DIExpression()), !dbg !6242
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !6243
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6228, metadata !DIExpression()), !dbg !6244
  store i32 -12, ptr %result, align 4, !dbg !6244
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #14, !dbg !6245
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6229, metadata !DIExpression()), !dbg !6246
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #14, !dbg !6247
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6230, metadata !DIExpression()), !dbg !6248
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #14, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6231, metadata !DIExpression()), !dbg !6250
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #14, !dbg !6251
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6232, metadata !DIExpression()), !dbg !6252
  store i64 ptrtoint (ptr @relocate_kernel to i64), ptr %vaddr, align 8, !dbg !6253
  %1 = load i64, ptr %control_page.addr, align 8, !dbg !6254
  store i64 %1, ptr %paddr, align 8, !dbg !6255
  %2 = load i64, ptr %vaddr, align 8, !dbg !6256
  %3 = load i32, ptr @pgdir_shift, align 4, !dbg !6256
  %sh_prom = zext i32 %3 to i64, !dbg !6256
  %shr = lshr i64 %2, %sh_prom, !dbg !6256
  %and1 = and i64 %shr, 511, !dbg !6256
  %4 = load ptr, ptr %pgd.addr, align 8, !dbg !6257
  %add.ptr = getelementptr %struct.pgd_t, ptr %4, i64 %and1, !dbg !6257
  store ptr %add.ptr, ptr %pgd.addr, align 8, !dbg !6257
  %5 = load ptr, ptr %pgd.addr, align 8, !dbg !6258
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %5, i32 0, i32 0, !dbg !6260
  %6 = load i64, ptr %coerce.dive, align 8, !dbg !6260
  %call = call i32 @pgd_present(i64 %6) #15, !dbg !6260
  %tobool = icmp ne i32 %call, 0, !dbg !6260
  br i1 %tobool, label %if.end10, label %if.then, !dbg !6261

if.then:                                          ; preds = %entry
  %call2 = call i64 @get_zeroed_page(i32 noundef 3264) #15, !dbg !6262
  %7 = inttoptr i64 %call2 to ptr, !dbg !6264
  store ptr %7, ptr %p4d, align 8, !dbg !6265
  %8 = load ptr, ptr %p4d, align 8, !dbg !6266
  %tobool3 = icmp ne ptr %8, null, !dbg !6266
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !6268

if.then4:                                         ; preds = %if.then
  br label %err, !dbg !6269

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %p4d, align 8, !dbg !6270
  %10 = load ptr, ptr %image.addr, align 8, !dbg !6271
  %arch = getelementptr inbounds %struct.kimage, ptr %10, i32 0, i32 14, !dbg !6272
  %p4d5 = getelementptr inbounds %struct.kimage_arch, ptr %arch, i32 0, i32 1, !dbg !6273
  store ptr %9, ptr %p4d5, align 8, !dbg !6274
  %11 = load ptr, ptr %pgd.addr, align 8, !dbg !6275
  %12 = load ptr, ptr %p4d, align 8, !dbg !6275
  %13 = ptrtoint ptr %12 to i64, !dbg !6275
  %call6 = call i64 @__phys_addr_nodebug(i64 noundef %13) #15, !dbg !6275
  %or = or i64 %call6, 99, !dbg !6275
  %call7 = call i64 @native_make_pgd(i64 noundef %or) #15, !dbg !6275
  %coerce.dive8 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6275
  store i64 %call7, ptr %coerce.dive8, align 8, !dbg !6275
  %coerce.dive9 = getelementptr inbounds %struct.pgd_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6275
  %14 = load i64, ptr %coerce.dive9, align 8, !dbg !6275
  call void @native_set_pgd(ptr noundef %11, i64 %14) #15, !dbg !6275
  br label %if.end10, !dbg !6276

if.end10:                                         ; preds = %if.end, %entry
  %15 = load ptr, ptr %pgd.addr, align 8, !dbg !6277
  %16 = load i64, ptr %vaddr, align 8, !dbg !6278
  %call11 = call ptr @p4d_offset(ptr noundef %15, i64 noundef %16) #15, !dbg !6279
  store ptr %call11, ptr %p4d, align 8, !dbg !6280
  %17 = load ptr, ptr %p4d, align 8, !dbg !6281
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %17, i32 0, i32 0, !dbg !6283
  %18 = load i64, ptr %coerce.dive12, align 8, !dbg !6283
  %call13 = call i32 @p4d_present(i64 %18) #15, !dbg !6283
  %tobool14 = icmp ne i32 %call13, 0, !dbg !6283
  br i1 %tobool14, label %if.end28, label %if.then15, !dbg !6284

if.then15:                                        ; preds = %if.end10
  %call16 = call i64 @get_zeroed_page(i32 noundef 3264) #15, !dbg !6285
  %19 = inttoptr i64 %call16 to ptr, !dbg !6287
  store ptr %19, ptr %pud, align 8, !dbg !6288
  %20 = load ptr, ptr %pud, align 8, !dbg !6289
  %tobool17 = icmp ne ptr %20, null, !dbg !6289
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !6291

if.then18:                                        ; preds = %if.then15
  br label %err, !dbg !6292

if.end19:                                         ; preds = %if.then15
  %21 = load ptr, ptr %pud, align 8, !dbg !6293
  %22 = load ptr, ptr %image.addr, align 8, !dbg !6294
  %arch20 = getelementptr inbounds %struct.kimage, ptr %22, i32 0, i32 14, !dbg !6295
  %pud21 = getelementptr inbounds %struct.kimage_arch, ptr %arch20, i32 0, i32 2, !dbg !6296
  store ptr %21, ptr %pud21, align 8, !dbg !6297
  %23 = load ptr, ptr %p4d, align 8, !dbg !6298
  %24 = load ptr, ptr %pud, align 8, !dbg !6298
  %25 = ptrtoint ptr %24 to i64, !dbg !6298
  %call23 = call i64 @__phys_addr_nodebug(i64 noundef %25) #15, !dbg !6298
  %or24 = or i64 %call23, 99, !dbg !6298
  %call25 = call i64 @native_make_p4d(i64 noundef %or24) #15, !dbg !6298
  %coerce.dive26 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp22, i32 0, i32 0, !dbg !6298
  store i64 %call25, ptr %coerce.dive26, align 8, !dbg !6298
  %coerce.dive27 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp22, i32 0, i32 0, !dbg !6298
  %26 = load i64, ptr %coerce.dive27, align 8, !dbg !6298
  call void @native_set_p4d(ptr noundef %23, i64 %26) #15, !dbg !6298
  br label %if.end28, !dbg !6299

if.end28:                                         ; preds = %if.end19, %if.end10
  %27 = load ptr, ptr %p4d, align 8, !dbg !6300
  %28 = load i64, ptr %vaddr, align 8, !dbg !6301
  %call29 = call ptr @pud_offset(ptr noundef %27, i64 noundef %28) #15, !dbg !6302
  store ptr %call29, ptr %pud, align 8, !dbg !6303
  %29 = load ptr, ptr %pud, align 8, !dbg !6304
  %coerce.dive30 = getelementptr inbounds %struct.pud_t, ptr %29, i32 0, i32 0, !dbg !6306
  %30 = load i64, ptr %coerce.dive30, align 8, !dbg !6306
  %call31 = call i32 @pud_present(i64 %30) #15, !dbg !6306
  %tobool32 = icmp ne i32 %call31, 0, !dbg !6306
  br i1 %tobool32, label %if.end46, label %if.then33, !dbg !6307

if.then33:                                        ; preds = %if.end28
  %call34 = call i64 @get_zeroed_page(i32 noundef 3264) #15, !dbg !6308
  %31 = inttoptr i64 %call34 to ptr, !dbg !6310
  store ptr %31, ptr %pmd, align 8, !dbg !6311
  %32 = load ptr, ptr %pmd, align 8, !dbg !6312
  %tobool35 = icmp ne ptr %32, null, !dbg !6312
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !6314

if.then36:                                        ; preds = %if.then33
  br label %err, !dbg !6315

if.end37:                                         ; preds = %if.then33
  %33 = load ptr, ptr %pmd, align 8, !dbg !6316
  %34 = load ptr, ptr %image.addr, align 8, !dbg !6317
  %arch38 = getelementptr inbounds %struct.kimage, ptr %34, i32 0, i32 14, !dbg !6318
  %pmd39 = getelementptr inbounds %struct.kimage_arch, ptr %arch38, i32 0, i32 3, !dbg !6319
  store ptr %33, ptr %pmd39, align 8, !dbg !6320
  %35 = load ptr, ptr %pud, align 8, !dbg !6321
  %36 = load ptr, ptr %pmd, align 8, !dbg !6321
  %37 = ptrtoint ptr %36 to i64, !dbg !6321
  %call41 = call i64 @__phys_addr_nodebug(i64 noundef %37) #15, !dbg !6321
  %or42 = or i64 %call41, 99, !dbg !6321
  %call43 = call i64 @native_make_pud(i64 noundef %or42) #15, !dbg !6321
  %coerce.dive44 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp40, i32 0, i32 0, !dbg !6321
  store i64 %call43, ptr %coerce.dive44, align 8, !dbg !6321
  %coerce.dive45 = getelementptr inbounds %struct.pud_t, ptr %agg.tmp40, i32 0, i32 0, !dbg !6321
  %38 = load i64, ptr %coerce.dive45, align 8, !dbg !6321
  call void @native_set_pud(ptr noundef %35, i64 %38) #15, !dbg !6321
  br label %if.end46, !dbg !6322

if.end46:                                         ; preds = %if.end37, %if.end28
  %39 = load ptr, ptr %pud, align 8, !dbg !6323
  %40 = load i64, ptr %vaddr, align 8, !dbg !6324
  %call47 = call ptr @pmd_offset(ptr noundef %39, i64 noundef %40) #15, !dbg !6325
  store ptr %call47, ptr %pmd, align 8, !dbg !6326
  %41 = load ptr, ptr %pmd, align 8, !dbg !6327
  %coerce.dive48 = getelementptr inbounds %struct.pmd_t, ptr %41, i32 0, i32 0, !dbg !6329
  %42 = load i64, ptr %coerce.dive48, align 8, !dbg !6329
  %call49 = call i32 @pmd_present(i64 %42) #15, !dbg !6329
  %tobool50 = icmp ne i32 %call49, 0, !dbg !6329
  br i1 %tobool50, label %if.end64, label %if.then51, !dbg !6330

if.then51:                                        ; preds = %if.end46
  %call52 = call i64 @get_zeroed_page(i32 noundef 3264) #15, !dbg !6331
  %43 = inttoptr i64 %call52 to ptr, !dbg !6333
  store ptr %43, ptr %pte, align 8, !dbg !6334
  %44 = load ptr, ptr %pte, align 8, !dbg !6335
  %tobool53 = icmp ne ptr %44, null, !dbg !6335
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !6337

if.then54:                                        ; preds = %if.then51
  br label %err, !dbg !6338

if.end55:                                         ; preds = %if.then51
  %45 = load ptr, ptr %pte, align 8, !dbg !6339
  %46 = load ptr, ptr %image.addr, align 8, !dbg !6340
  %arch56 = getelementptr inbounds %struct.kimage, ptr %46, i32 0, i32 14, !dbg !6341
  %pte57 = getelementptr inbounds %struct.kimage_arch, ptr %arch56, i32 0, i32 4, !dbg !6342
  store ptr %45, ptr %pte57, align 8, !dbg !6343
  %47 = load ptr, ptr %pmd, align 8, !dbg !6344
  %48 = load ptr, ptr %pte, align 8, !dbg !6344
  %49 = ptrtoint ptr %48 to i64, !dbg !6344
  %call59 = call i64 @__phys_addr_nodebug(i64 noundef %49) #15, !dbg !6344
  %or60 = or i64 %call59, 99, !dbg !6344
  %call61 = call i64 @native_make_pmd(i64 noundef %or60) #15, !dbg !6344
  %coerce.dive62 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp58, i32 0, i32 0, !dbg !6344
  store i64 %call61, ptr %coerce.dive62, align 8, !dbg !6344
  %coerce.dive63 = getelementptr inbounds %struct.pmd_t, ptr %agg.tmp58, i32 0, i32 0, !dbg !6344
  %50 = load i64, ptr %coerce.dive63, align 8, !dbg !6344
  call void @native_set_pmd(ptr noundef %47, i64 %50) #15, !dbg !6344
  br label %if.end64, !dbg !6345

if.end64:                                         ; preds = %if.end55, %if.end46
  %51 = load ptr, ptr %pmd, align 8, !dbg !6346
  %52 = load i64, ptr %vaddr, align 8, !dbg !6347
  %call65 = call ptr @pte_offset_kernel(ptr noundef %51, i64 noundef %52) #15, !dbg !6348
  store ptr %call65, ptr %pte, align 8, !dbg !6349
  %call66 = call zeroext i1 @cc_platform_has(i32 noundef 2) #15, !dbg !6350
  br i1 %call66, label %if.then67, label %if.end70, !dbg !6352

if.then67:                                        ; preds = %if.end64
  %pgprot68 = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !6353
  %53 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !6353
  %and69 = and i64 355, %53, !dbg !6353
  store i64 %and69, ptr %pgprot68, align 8, !dbg !6353
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prot, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !6353
  br label %if.end70, !dbg !6354

if.end70:                                         ; preds = %if.then67, %if.end64
  %54 = load ptr, ptr %pte, align 8, !dbg !6355
  %55 = load i64, ptr %paddr, align 8, !dbg !6355
  %shr72 = lshr i64 %55, 12, !dbg !6355
  %coerce.dive73 = getelementptr inbounds %struct.pgprot, ptr %prot, i32 0, i32 0, !dbg !6355
  %56 = load i64, ptr %coerce.dive73, align 8, !dbg !6355
  %call74 = call i64 @pfn_pte(i64 noundef %shr72, i64 %56) #15, !dbg !6355
  %coerce.dive75 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp71, i32 0, i32 0, !dbg !6355
  store i64 %call74, ptr %coerce.dive75, align 8, !dbg !6355
  %coerce.dive76 = getelementptr inbounds %struct.pte_t, ptr %agg.tmp71, i32 0, i32 0, !dbg !6355
  %57 = load i64, ptr %coerce.dive76, align 8, !dbg !6355
  call void @native_set_pte(ptr noundef %54, i64 %57) #15, !dbg !6355
  store i32 0, ptr %retval, align 4, !dbg !6356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6356

err:                                              ; preds = %if.then54, %if.then36, %if.then18, %if.then4
  call void @llvm.dbg.label(metadata !6233), !dbg !6357
  %58 = load i32, ptr %result, align 4, !dbg !6358
  store i32 %58, ptr %retval, align 4, !dbg !6359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6359

cleanup:                                          ; preds = %err, %if.end70
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #14, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #14, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #14, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #14, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 8, ptr %paddr) #14, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #14, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 8, ptr %prot) #14, !dbg !6360
  %59 = load i32, ptr %retval, align 4, !dbg !6360
  ret i32 %59, !dbg !6360
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6361 dso_local ptr @kimage_alloc_control_pages(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_page(ptr noundef %page) #3 align 16 !dbg !6364 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !6366, metadata !DIExpression()), !dbg !6367
  %0 = load ptr, ptr %page.addr, align 8, !dbg !6368
  call void @kmsan_unpoison_memory(ptr noundef %0, i64 noundef 4096) #15, !dbg !6369
  %1 = call i64 @llvm.read_register.i64(metadata !5529), !dbg !6370
  %2 = load ptr, ptr %page.addr, align 8, !dbg !6370
  %3 = call { ptr, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09call ${2:c}\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 9*32+ 9)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call ${3:c}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09call ${4:c}\0A6652:\0A.popsection\0A", "={di},={rsp},i,i,i,0,{rsp},~{cc},~{memory},~{rax},~{rcx},~{dirflag},~{fpsr},~{flags}"(ptr @clear_page_orig, ptr @clear_page_rep, ptr @clear_page_erms, ptr %2, i64 %1) #14, !dbg !6370, !srcloc !6371
  %asmresult = extractvalue { ptr, i64 } %3, 0, !dbg !6370
  %asmresult1 = extractvalue { ptr, i64 } %3, 1, !dbg !6370
  store ptr %asmresult, ptr %page.addr, align 8, !dbg !6370
  call void @llvm.write_register.i64(metadata !5529, i64 %asmresult1), !dbg !6370
  ret void, !dbg !6372
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !6373 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6378, metadata !DIExpression()), !dbg !6380
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6379, metadata !DIExpression()), !dbg !6381
  ret void, !dbg !6382
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_page_orig(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_page_rep(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_page_erms(ptr noundef) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_enabled(i32 noundef %feature) #3 align 16 !dbg !6383 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !6387, metadata !DIExpression()), !dbg !6388
  %0 = load i32, ptr %feature.addr, align 4, !dbg !6389
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6389
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6389

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0) to i32, !dbg !6389
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6389
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !6389

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !6389

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28), align 8, !dbg !6389
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !6389
  br i1 %4, label %cond.true, label %cond.false, !dbg !6389

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %feature.addr, align 4, !dbg !6389
  %conv4 = sext i32 %5 to i64, !dbg !6389
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #15, !dbg !6389
  %conv5 = zext i1 %call to i32, !dbg !6389
  br label %cond.end, !dbg !6389

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %feature.addr, align 4, !dbg !6389
  %conv6 = sext i32 %6 to i64, !dbg !6389
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #15, !dbg !6389
  %conv8 = zext i1 %call7 to i32, !dbg !6389
  br label %cond.end, !dbg !6389

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !6389
  %cmp = icmp ne i32 %cond, 0, !dbg !6390
  ret i1 %cmp, !dbg !6391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6392 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6396 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6400 dso_local void @memunmap(ptr noundef) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6401 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6409, metadata !DIExpression()), !dbg !6414
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6410, metadata !DIExpression()), !dbg !6415
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !6416
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6411, metadata !DIExpression()), !dbg !6417
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6418
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6419
  %div = udiv i64 %1, 64, !dbg !6419
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6420
  store ptr %add.ptr, ptr %p, align 8, !dbg !6417
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !6421
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6412, metadata !DIExpression()), !dbg !6422
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6423
  %rem = urem i64 %2, 64, !dbg !6423
  %shl = shl i64 1, %rem, !dbg !6423
  store i64 %shl, ptr %mask, align 8, !dbg !6422
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6413, metadata !DIExpression()), !dbg !6425
  %3 = load ptr, ptr %p, align 8, !dbg !6426
  %4 = load i64, ptr %3, align 8, !dbg !6427
  store i64 %4, ptr %val, align 8, !dbg !6425
  %5 = load i64, ptr %val, align 8, !dbg !6428
  %6 = load i64, ptr %mask, align 8, !dbg !6429
  %and = and i64 %5, %6, !dbg !6430
  %tobool = icmp ne i64 %and, 0, !dbg !6431
  %lnot = xor i1 %tobool, true, !dbg !6431
  %lnot1 = xor i1 %lnot, true, !dbg !6432
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !6433
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !6433
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !6433
  ret i1 %lnot1, !dbg !6434
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6435 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6438, metadata !DIExpression()), !dbg !6440
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6439, metadata !DIExpression()), !dbg !6441
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6442
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6443
  %div = udiv i64 %1, 64, !dbg !6443
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6444
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !6445
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6446
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6447
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6448
  ret i1 %call, !dbg !6449
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6450 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6457, metadata !DIExpression()), !dbg !6459
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6458, metadata !DIExpression()), !dbg !6460
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6461
  %1 = load i64, ptr %size.addr, align 8, !dbg !6462
  %conv = trunc i64 %1 to i32, !dbg !6462
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !6463
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6464
  %3 = load i64, ptr %size.addr, align 8, !dbg !6464
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !6464
  ret void, !dbg !6465
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6466 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6469, metadata !DIExpression()), !dbg !6471
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6470, metadata !DIExpression()), !dbg !6472
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6473
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6474
  br i1 %1, label %cond.true, label %cond.false, !dbg !6474

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6475
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6476
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6477
  %conv = zext i1 %call to i32, !dbg !6477
  br label %cond.end, !dbg !6474

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6478
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6479
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !6480
  %conv2 = zext i1 %call1 to i32, !dbg !6480
  br label %cond.end, !dbg !6474

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6474
  %tobool = icmp ne i32 %cond, 0, !dbg !6474
  ret i1 %tobool, !dbg !6481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6482 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6487, metadata !DIExpression()), !dbg !6489
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6488, metadata !DIExpression()), !dbg !6490
  ret i1 true, !dbg !6491
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6492 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6497, metadata !DIExpression()), !dbg !6500
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6498, metadata !DIExpression()), !dbg !6501
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6499, metadata !DIExpression()), !dbg !6502
  ret void, !dbg !6503
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6504 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6508, metadata !DIExpression()), !dbg !6510
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6509, metadata !DIExpression()), !dbg !6511
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6512
  %and = and i64 %0, 63, !dbg !6513
  %shl = shl i64 1, %and, !dbg !6514
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6515
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6516
  %shr = ashr i64 %2, 6, !dbg !6517
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6515
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6515
  %and1 = and i64 %shl, %3, !dbg !6518
  %cmp = icmp ne i64 %and1, 0, !dbg !6519
  ret i1 %cmp, !dbg !6520
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6521 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6523, metadata !DIExpression()), !dbg !6526
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6524, metadata !DIExpression()), !dbg !6527
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !6528
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6525, metadata !DIExpression()), !dbg !6529
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6530
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6531
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !6532, !srcloc !6533
  %3 = icmp ult i8 %2, 2, !dbg !6532
  call void @llvm.assume(i1 %3), !dbg !6532
  store i8 %2, ptr %oldbit, align 1, !dbg !6532
  %4 = load i8, ptr %oldbit, align 1, !dbg !6534, !range !5966, !noundef !1081
  %tobool = trunc i8 %4 to i1, !dbg !6534
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !6535
  ret i1 %tobool, !dbg !6536
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6537 dso_local i32 @walk_iomem_res_desc(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mem_region_callback(ptr noundef %res, ptr noundef %arg) #0 align 16 !dbg !6554 {
entry:
  %res.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %mstart = alloca i64, align 8
  %mend = alloca i64, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6556, metadata !DIExpression()), !dbg !6562
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6557, metadata !DIExpression()), !dbg !6563
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #14, !dbg !6564
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6558, metadata !DIExpression()), !dbg !6565
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !6566
  store ptr %0, ptr %data, align 8, !dbg !6565
  call void @llvm.lifetime.start.p0(i64 8, ptr %mstart) #14, !dbg !6567
  call void @llvm.dbg.declare(metadata ptr %mstart, metadata !6560, metadata !DIExpression()), !dbg !6568
  call void @llvm.lifetime.start.p0(i64 8, ptr %mend) #14, !dbg !6567
  call void @llvm.dbg.declare(metadata ptr %mend, metadata !6561, metadata !DIExpression()), !dbg !6569
  %1 = load ptr, ptr %res.addr, align 8, !dbg !6570
  %start = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 0, !dbg !6571
  %2 = load i64, ptr %start, align 8, !dbg !6571
  store i64 %2, ptr %mstart, align 8, !dbg !6572
  %3 = load i64, ptr %mstart, align 8, !dbg !6573
  %4 = load ptr, ptr %res.addr, align 8, !dbg !6574
  %call = call i64 @resource_size(ptr noundef %4) #15, !dbg !6575
  %add = add i64 %3, %call, !dbg !6576
  %sub = sub i64 %add, 1, !dbg !6577
  store i64 %sub, ptr %mend, align 8, !dbg !6578
  %5 = load ptr, ptr %data, align 8, !dbg !6579
  %info = getelementptr inbounds %struct.init_pgtable_data, ptr %5, i32 0, i32 0, !dbg !6580
  %6 = load ptr, ptr %info, align 8, !dbg !6580
  %7 = load ptr, ptr %data, align 8, !dbg !6581
  %level4p = getelementptr inbounds %struct.init_pgtable_data, ptr %7, i32 0, i32 1, !dbg !6582
  %8 = load ptr, ptr %level4p, align 8, !dbg !6582
  %9 = load i64, ptr %mstart, align 8, !dbg !6583
  %10 = load i64, ptr %mend, align 8, !dbg !6584
  %call1 = call i32 @kernel_ident_mapping_init(ptr noundef %6, ptr noundef %8, i64 noundef %9, i64 noundef %10) #15, !dbg !6585
  call void @llvm.lifetime.end.p0(i64 8, ptr %mend) #14, !dbg !6586
  call void @llvm.lifetime.end.p0(i64 8, ptr %mstart) #14, !dbg !6586
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #14, !dbg !6586
  ret i32 %call1, !dbg !6587
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #3 align 16 !dbg !6588 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6594, metadata !DIExpression()), !dbg !6595
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6596
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !6597
  %1 = load i64, ptr %end, align 8, !dbg !6597
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6598
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !6599
  %3 = load i64, ptr %start, align 8, !dbg !6599
  %sub = sub i64 %1, %3, !dbg !6600
  %add = add i64 %sub, 1, !dbg !6601
  ret i64 %add, !dbg !6602
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pgd_present(i64 %pgd.coerce) #3 align 16 !dbg !6603 {
entry:
  %retval = alloca i32, align 4
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6608, metadata !DIExpression()), !dbg !6609
  br i1 false, label %cond.true, label %cond.false, !dbg !6610

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !6611

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6610

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6611

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !6611

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !6611
  br i1 %call, label %if.end, label %if.then, !dbg !6611

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !6611
  br i1 %call5, label %if.end, label %if.then, !dbg !6610

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 1, ptr %retval, align 4, !dbg !6613
  br label %return, !dbg !6613

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6614
  %0 = load i64, ptr %coerce.dive6, align 8, !dbg !6614
  %call7 = call i64 @pgd_flags(i64 %0) #15, !dbg !6614
  %and = and i64 %call7, 1, !dbg !6615
  %conv = trunc i64 %and to i32, !dbg !6614
  store i32 %conv, ptr %retval, align 4, !dbg !6616
  br label %return, !dbg !6616

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !6617
  ret i32 %1, !dbg !6617
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6618 dso_local i64 @get_zeroed_page(i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pgd(ptr noundef %pgdp, i64 %pgd.coerce) #3 align 16 !dbg !6622 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %tmp = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !6627, metadata !DIExpression()), !dbg !6629
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6628, metadata !DIExpression()), !dbg !6630
  br label %do.body, !dbg !6631

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6632

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6634

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6632

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !6636
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !6636
  %1 = load ptr, ptr %pgdp.addr, align 8, !dbg !6636
  %coerce.dive3 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6636
  %2 = load i64, ptr %coerce.dive3, align 8, !dbg !6636
  %call = call i64 @pti_set_user_pgtbl(ptr noundef %1, i64 %2) #15, !dbg !6636
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !6636
  store volatile i64 %call, ptr %coerce.dive4, align 8, !dbg !6636
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %tmp, i64 8, i1 true), !dbg !6636
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !6636
  br label %do.end5, !dbg !6636

do.end5:                                          ; preds = %do.body2
  br label %do.end6, !dbg !6632

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pgd(i64 noundef %val) #3 align 16 !dbg !6639 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6643, metadata !DIExpression()), !dbg !6644
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !6645
  %0 = load i64, ptr %val.addr, align 8, !dbg !6646
  %and = and i64 %0, -1, !dbg !6647
  store i64 %and, ptr %pgd, align 8, !dbg !6645
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !6648
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6648
  ret i64 %1, !dbg !6648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #3 align 16 !dbg !6649 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !6653, metadata !DIExpression()), !dbg !6655
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6654, metadata !DIExpression()), !dbg !6656
  br i1 false, label %cond.true, label %cond.false, !dbg !6657

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !6658

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6657

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6658

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !6658

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !6658
  br i1 %call, label %if.end, label %if.then, !dbg !6658

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !6658
  br i1 %call5, label %if.end, label %if.then, !dbg !6657

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !6660
  store ptr %0, ptr %retval, align 8, !dbg !6661
  br label %return, !dbg !6661

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !6662
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !6663
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !6663
  %call6 = call i64 @pgd_page_vaddr(i64 %2) #15, !dbg !6663
  %3 = inttoptr i64 %call6 to ptr, !dbg !6664
  %4 = load i64, ptr %address.addr, align 8, !dbg !6665
  %call7 = call i64 @p4d_index(i64 noundef %4) #15, !dbg !6666
  %add.ptr = getelementptr %struct.p4d_t, ptr %3, i64 %call7, !dbg !6667
  store ptr %add.ptr, ptr %retval, align 8, !dbg !6668
  br label %return, !dbg !6668

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6669
  ret ptr %5, !dbg !6669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p4d_present(i64 %p4d.coerce) #3 align 16 !dbg !6670 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6674, metadata !DIExpression()), !dbg !6675
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6676
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6676
  %call = call i64 @p4d_flags(i64 %0) #15, !dbg !6676
  %and = and i64 %call, 1, !dbg !6677
  %conv = trunc i64 %and to i32, !dbg !6676
  ret i32 %conv, !dbg !6678
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_p4d(ptr noundef %p4dp, i64 %p4d.coerce) #3 align 16 !dbg !6679 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %p4dp.addr = alloca ptr, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pgd_t, align 8
  %tmp16 = alloca %struct.pgd_t, align 8
  %tmp25 = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  store ptr %p4dp, ptr %p4dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4dp.addr, metadata !6683, metadata !DIExpression()), !dbg !6686
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6684, metadata !DIExpression()), !dbg !6687
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #14, !dbg !6688
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6685, metadata !DIExpression()), !dbg !6689
  br i1 false, label %cond.true, label %cond.false, !dbg !6690

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !6691

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !6690

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !6691

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !6691

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !6691
  br i1 %call, label %if.then, label %if.end, !dbg !6691

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #15, !dbg !6691
  br i1 %call5, label %if.then, label %if.end, !dbg !6690

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %do.body, !dbg !6693

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !6695

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !6697

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6697

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !6695

do.body7:                                         ; preds = %do.end
  %0 = load ptr, ptr %p4dp.addr, align 8, !dbg !6699
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %p4d, i64 8, i1 true), !dbg !6699
  br label %do.cond8, !dbg !6699

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6699

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !6695

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6695

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6701

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !6702
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6703
  %1 = load i64, ptr %coerce.dive12, align 8, !dbg !6703
  %call13 = call i64 @native_p4d_val(i64 %1) #15, !dbg !6703
  %call14 = call i64 @native_make_pgd(i64 noundef %call13) #15, !dbg !6702
  %coerce.dive15 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !6702
  store i64 %call14, ptr %coerce.dive15, align 8, !dbg !6702
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp, i64 8, i1 false), !dbg !6702
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !6702
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp16) #14, !dbg !6704
  %2 = load ptr, ptr %p4dp.addr, align 8, !dbg !6705
  %coerce.dive17 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6704
  %3 = load i64, ptr %coerce.dive17, align 8, !dbg !6704
  %call18 = call i64 @pti_set_user_pgtbl(ptr noundef %2, i64 %3) #15, !dbg !6704
  %coerce.dive19 = getelementptr inbounds %struct.pgd_t, ptr %tmp16, i32 0, i32 0, !dbg !6704
  store i64 %call18, ptr %coerce.dive19, align 8, !dbg !6704
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp16, i64 8, i1 false), !dbg !6704
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp16) #14, !dbg !6704
  br label %do.body20, !dbg !6706

do.body20:                                        ; preds = %if.end
  br label %do.body21, !dbg !6707

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6709

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6709

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !6707

do.body24:                                        ; preds = %do.end23
  %4 = load ptr, ptr %p4dp.addr, align 8, !dbg !6711
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp25) #14, !dbg !6711
  %coerce.dive26 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6711
  %5 = load i64, ptr %coerce.dive26, align 8, !dbg !6711
  %call27 = call i64 @native_pgd_val(i64 %5) #15, !dbg !6711
  %call28 = call i64 @native_make_p4d(i64 noundef %call27) #15, !dbg !6711
  %coerce.dive29 = getelementptr inbounds %struct.p4d_t, ptr %tmp25, i32 0, i32 0, !dbg !6711
  store volatile i64 %call28, ptr %coerce.dive29, align 8, !dbg !6711
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %tmp25, i64 8, i1 true), !dbg !6711
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp25) #14, !dbg !6711
  br label %do.cond30, !dbg !6711

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !6711

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !6707

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !6707

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6713
  br label %cleanup, !dbg !6713

cleanup:                                          ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #14, !dbg !6713
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6713

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_p4d(i64 noundef %val) #3 align 16 !dbg !6714 {
entry:
  %retval = alloca %struct.p4d_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6718, metadata !DIExpression()), !dbg !6719
  %p4d = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !6720
  %0 = load i64, ptr %val.addr, align 8, !dbg !6721
  store i64 %0, ptr %p4d, align 8, !dbg !6720
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !6722
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6722
  ret i64 %1, !dbg !6722
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_offset(ptr noundef %p4d, i64 noundef %address) #3 align 16 !dbg !6723 {
entry:
  %p4d.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !6728, metadata !DIExpression()), !dbg !6730
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6729, metadata !DIExpression()), !dbg !6731
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !6732
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !6733
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6733
  %call = call ptr @p4d_pgtable(i64 %1) #15, !dbg !6733
  %2 = load i64, ptr %address.addr, align 8, !dbg !6734
  %call1 = call i64 @pud_index(i64 noundef %2) #15, !dbg !6735
  %add.ptr = getelementptr %struct.pud_t, ptr %call, i64 %call1, !dbg !6736
  ret ptr %add.ptr, !dbg !6737
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pud_present(i64 %pud.coerce) #3 align 16 !dbg !6738 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6742, metadata !DIExpression()), !dbg !6743
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6744
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6744
  %call = call i64 @pud_flags(i64 %0) #15, !dbg !6744
  %and = and i64 %call, 1, !dbg !6745
  %conv = trunc i64 %and to i32, !dbg !6744
  ret i32 %conv, !dbg !6746
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pud(ptr noundef %pudp, i64 %pud.coerce) #3 align 16 !dbg !6747 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %pudp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  store ptr %pudp, ptr %pudp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pudp.addr, metadata !6751, metadata !DIExpression()), !dbg !6753
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6752, metadata !DIExpression()), !dbg !6754
  br label %do.body, !dbg !6755

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6756

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6758

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6756

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pudp.addr, align 8, !dbg !6760
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pud, i64 8, i1 true), !dbg !6760
  br label %do.end3, !dbg !6760

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6756

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6762
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pud(i64 noundef %val) #3 align 16 !dbg !6763 {
entry:
  %retval = alloca %struct.pud_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6767, metadata !DIExpression()), !dbg !6768
  %pud = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !6769
  %0 = load i64, ptr %val.addr, align 8, !dbg !6770
  store i64 %0, ptr %pud, align 8, !dbg !6769
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %retval, i32 0, i32 0, !dbg !6771
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6771
  ret i64 %1, !dbg !6771
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pmd_offset(ptr noundef %pud, i64 noundef %address) #3 align 16 !dbg !6772 {
entry:
  %pud.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pud, ptr %pud.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pud.addr, metadata !6776, metadata !DIExpression()), !dbg !6778
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6777, metadata !DIExpression()), !dbg !6779
  %0 = load ptr, ptr %pud.addr, align 8, !dbg !6780
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %0, i32 0, i32 0, !dbg !6781
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6781
  %call = call ptr @pud_pgtable(i64 %1) #15, !dbg !6781
  %2 = load i64, ptr %address.addr, align 8, !dbg !6782
  %call1 = call i64 @pmd_index(i64 noundef %2) #15, !dbg !6783
  %add.ptr = getelementptr %struct.pmd_t, ptr %call, i64 %call1, !dbg !6784
  ret ptr %add.ptr, !dbg !6785
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pmd_present(i64 %pmd.coerce) #3 align 16 !dbg !6786 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6790, metadata !DIExpression()), !dbg !6791
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !6792
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6792
  %call = call i64 @pmd_flags(i64 %0) #15, !dbg !6792
  %and = and i64 %call, 385, !dbg !6793
  %conv = trunc i64 %and to i32, !dbg !6792
  ret i32 %conv, !dbg !6794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pmd(ptr noundef %pmdp, i64 %pmd.coerce) #3 align 16 !dbg !6795 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %pmdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  store ptr %pmdp, ptr %pmdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmdp.addr, metadata !6799, metadata !DIExpression()), !dbg !6801
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !6800, metadata !DIExpression()), !dbg !6802
  br label %do.body, !dbg !6803

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6804

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6806

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6804

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %pmdp.addr, align 8, !dbg !6808
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pmd, i64 8, i1 true), !dbg !6808
  br label %do.end3, !dbg !6808

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6804

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6810
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pmd(i64 noundef %val) #3 align 16 !dbg !6811 {
entry:
  %retval = alloca %struct.pmd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6815, metadata !DIExpression()), !dbg !6816
  %pmd = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !6817
  %0 = load i64, ptr %val.addr, align 8, !dbg !6818
  store i64 %0, ptr %pmd, align 8, !dbg !6817
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %retval, i32 0, i32 0, !dbg !6819
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6819
  ret i64 %1, !dbg !6819
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pte_offset_kernel(ptr noundef %pmd, i64 noundef %address) #3 align 16 !dbg !6820 {
entry:
  %pmd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !6824, metadata !DIExpression()), !dbg !6826
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6825, metadata !DIExpression()), !dbg !6827
  %0 = load ptr, ptr %pmd.addr, align 8, !dbg !6828
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %0, i32 0, i32 0, !dbg !6829
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !6829
  %call = call i64 @pmd_page_vaddr(i64 %1) #15, !dbg !6829
  %2 = inttoptr i64 %call to ptr, !dbg !6830
  %3 = load i64, ptr %address.addr, align 8, !dbg !6831
  %call1 = call i64 @pte_index(i64 noundef %3) #15, !dbg !6832
  %add.ptr = getelementptr %struct.pte_t, ptr %2, i64 %call1, !dbg !6833
  ret ptr %add.ptr, !dbg !6834
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_pte(ptr noundef %ptep, i64 %pte.coerce) #3 align 16 !dbg !6835 {
entry:
  %pte = alloca %struct.pte_t, align 8
  %ptep.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %pte, i32 0, i32 0
  store i64 %pte.coerce, ptr %coerce.dive, align 8
  store ptr %ptep, ptr %ptep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptep.addr, metadata !6839, metadata !DIExpression()), !dbg !6841
  call void @llvm.dbg.declare(metadata ptr %pte, metadata !6840, metadata !DIExpression()), !dbg !6842
  br label %do.body, !dbg !6843

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6844

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6846

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6844

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %ptep.addr, align 8, !dbg !6848
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %pte, i64 8, i1 true), !dbg !6848
  br label %do.end3, !dbg !6848

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6844

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6850
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pfn_pte(i64 noundef %page_nr, i64 %pgprot.coerce) #3 align 16 !dbg !6851 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %pgprot = alloca %struct.pgprot, align 8
  %page_nr.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  store i64 %page_nr, ptr %page_nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_nr.addr, metadata !6855, metadata !DIExpression()), !dbg !6858
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !6856, metadata !DIExpression()), !dbg !6859
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #14, !dbg !6860
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !6857, metadata !DIExpression()), !dbg !6861
  %0 = load i64, ptr %page_nr.addr, align 8, !dbg !6862
  %shl = shl i64 %0, 12, !dbg !6863
  store i64 %shl, ptr %pfn, align 8, !dbg !6861
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !6864
  %1 = load i64, ptr %pgprot1, align 8, !dbg !6864
  %call = call i64 @protnone_mask(i64 noundef %1) #15, !dbg !6865
  %2 = load i64, ptr %pfn, align 8, !dbg !6866
  %xor = xor i64 %2, %call, !dbg !6866
  store i64 %xor, ptr %pfn, align 8, !dbg !6866
  %3 = load i64, ptr %pfn, align 8, !dbg !6867
  %and = and i64 %3, 4503599627366400, !dbg !6867
  store i64 %and, ptr %pfn, align 8, !dbg !6867
  %4 = load i64, ptr %pfn, align 8, !dbg !6868
  %coerce.dive2 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !6868
  %5 = load i64, ptr %coerce.dive2, align 8, !dbg !6868
  %call3 = call i64 @check_pgprot(i64 %5) #15, !dbg !6868
  %or = or i64 %4, %call3, !dbg !6868
  %call4 = call i64 @native_make_pte(i64 noundef %or) #15, !dbg !6868
  %coerce.dive5 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6868
  store i64 %call4, ptr %coerce.dive5, align 8, !dbg !6868
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #14, !dbg !6869
  %coerce.dive6 = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !6869
  %6 = load i64, ptr %coerce.dive6, align 8, !dbg !6869
  ret i64 %6, !dbg !6869
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !6870 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6875, metadata !DIExpression()), !dbg !6878
  %0 = load i16, ptr %bit.addr, align 2, !dbg !6879
  %1 = load i16, ptr %bit.addr, align 2, !dbg !6880
  %conv = zext i16 %1 to i32, !dbg !6880
  %and = and i32 %conv, 7, !dbg !6881
  %shl = shl i32 1, %and, !dbg !6882
  %2 = load i16, ptr %bit.addr, align 2, !dbg !6883
  %conv1 = zext i16 %2 to i32, !dbg !6883
  %shr = ashr i32 %conv1, 3, !dbg !6884
  %idxprom = sext i32 %shr to i64, !dbg !6885
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !6885
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #14
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !6886, !srcloc !6887

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !6886

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !6876), !dbg !6888
  store i1 true, ptr %retval, align 1, !dbg !6889
  br label %return, !dbg !6889

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !6877), !dbg !6890
  store i1 false, ptr %retval, align 1, !dbg !6891
  br label %return, !dbg !6891

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !6892
  ret i1 %3, !dbg !6892
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_flags(i64 %pgd.coerce) #3 align 16 !dbg !6893 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6897, metadata !DIExpression()), !dbg !6898
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6899
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6899
  %call = call i64 @native_pgd_val(i64 %0) #15, !dbg !6899
  %and = and i64 %call, -4503599627366401, !dbg !6900
  ret i64 %and, !dbg !6901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #3 align 16 !dbg !6902 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6904, metadata !DIExpression()), !dbg !6905
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6906
  %0 = load i64, ptr %pgd1, align 8, !dbg !6906
  %and = and i64 %0, -1, !dbg !6907
  ret i64 %and, !dbg !6908
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #3 align 16 !dbg !6909 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !6913, metadata !DIExpression()), !dbg !6915
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6914, metadata !DIExpression()), !dbg !6916
  br i1 false, label %cond.true, label %cond.false2, !dbg !6917

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !6918

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.end, label %if.then, !dbg !6918

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !6918
  br i1 %call, label %if.end, label %if.then, !dbg !6918

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 235) #15, !dbg !6918
  br i1 %call3, label %if.end, label %if.then, !dbg !6917

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !6920
  br label %return, !dbg !6921

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !6922
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6923
  %1 = load i64, ptr %coerce.dive4, align 8, !dbg !6923
  %call5 = call i64 @__pti_set_user_pgtbl(ptr noundef %0, i64 %1) #15, !dbg !6923
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !6923
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !6923
  br label %return, !dbg !6924

return:                                           ; preds = %if.end, %if.then
  %coerce.dive7 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !6925
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !6925
  ret i64 %2, !dbg !6925
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6926 dso_local i64 @__pti_set_user_pgtbl(ptr noundef, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #3 align 16 !dbg !6927 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !6931, metadata !DIExpression()), !dbg !6932
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !6933
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6933
  %call = call i64 @native_pgd_val(i64 %0) #15, !dbg !6933
  %and = and i64 %call, 4503599627366400, !dbg !6933
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !6933
  %add = add i64 %and, %1, !dbg !6933
  %2 = inttoptr i64 %add to ptr, !dbg !6933
  %3 = ptrtoint ptr %2 to i64, !dbg !6934
  ret i64 %3, !dbg !6935
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #3 align 16 !dbg !6936 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6938, metadata !DIExpression()), !dbg !6939
  %0 = load i64, ptr %address.addr, align 8, !dbg !6940
  %shr = lshr i64 %0, 39, !dbg !6941
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !6942
  %sub = sub i32 %1, 1, !dbg !6943
  %conv = zext i32 %sub to i64, !dbg !6944
  %and = and i64 %shr, %conv, !dbg !6945
  ret i64 %and, !dbg !6946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_flags(i64 %p4d.coerce) #3 align 16 !dbg !6947 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6951, metadata !DIExpression()), !dbg !6952
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6953
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6953
  %call = call i64 @native_p4d_val(i64 %0) #15, !dbg !6953
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6954
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6954
  %call3 = call i64 @p4d_flags_mask(i64 %1) #15, !dbg !6954
  %and = and i64 %call, %call3, !dbg !6955
  ret i64 %and, !dbg !6956
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #3 align 16 !dbg !6957 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6959, metadata !DIExpression()), !dbg !6960
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6961
  %0 = load i64, ptr %p4d1, align 8, !dbg !6961
  ret i64 %0, !dbg !6962
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_flags_mask(i64 %p4d.coerce) #3 align 16 !dbg !6963 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6965, metadata !DIExpression()), !dbg !6966
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6967
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6967
  %call = call i64 @p4d_pfn_mask(i64 %0) #15, !dbg !6967
  %not = xor i64 %call, -1, !dbg !6968
  ret i64 %not, !dbg !6969
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_pfn_mask(i64 %p4d.coerce) #3 align 16 !dbg !6970 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6972, metadata !DIExpression()), !dbg !6973
  ret i64 4503599627366400, !dbg !6974
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_pgtable(i64 %p4d.coerce) #3 align 16 !dbg !6975 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !6979, metadata !DIExpression()), !dbg !6980
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6981
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6981
  %call = call i64 @native_p4d_val(i64 %0) #15, !dbg !6981
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !6981
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6981
  %call3 = call i64 @p4d_pfn_mask(i64 %1) #15, !dbg !6981
  %and = and i64 %call, %call3, !dbg !6981
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !6981
  %add = add i64 %and, %2, !dbg !6981
  %3 = inttoptr i64 %add to ptr, !dbg !6981
  ret ptr %3, !dbg !6982
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #3 align 16 !dbg !6983 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6985, metadata !DIExpression()), !dbg !6986
  %0 = load i64, ptr %address.addr, align 8, !dbg !6987
  %shr = lshr i64 %0, 30, !dbg !6988
  %and = and i64 %shr, 511, !dbg !6989
  ret i64 %and, !dbg !6990
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_flags(i64 %pud.coerce) #3 align 16 !dbg !6991 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !6995, metadata !DIExpression()), !dbg !6996
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6997
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !6997
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !6997
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !6998
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !6998
  %call3 = call i64 @pud_flags_mask(i64 %1) #15, !dbg !6998
  %and = and i64 %call, %call3, !dbg !6999
  ret i64 %and, !dbg !7000
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pud_val(i64 %pud.coerce) #3 align 16 !dbg !7001 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7003, metadata !DIExpression()), !dbg !7004
  %pud1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7005
  %0 = load i64, ptr %pud1, align 8, !dbg !7005
  ret i64 %0, !dbg !7006
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_flags_mask(i64 %pud.coerce) #3 align 16 !dbg !7007 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7009, metadata !DIExpression()), !dbg !7010
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7011
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7011
  %call = call i64 @pud_pfn_mask(i64 %0) #15, !dbg !7011
  %not = xor i64 %call, -1, !dbg !7012
  ret i64 %not, !dbg !7013
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_pfn_mask(i64 %pud.coerce) #3 align 16 !dbg !7014 {
entry:
  %retval = alloca i64, align 8
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7016, metadata !DIExpression()), !dbg !7017
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7018
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7018
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !7018
  %and = and i64 %call, 128, !dbg !7020
  %tobool = icmp ne i64 %and, 0, !dbg !7020
  br i1 %tobool, label %if.then, label %if.else, !dbg !7021

if.then:                                          ; preds = %entry
  store i64 4503598553628672, ptr %retval, align 8, !dbg !7022
  br label %return, !dbg !7022

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !7023
  br label %return, !dbg !7023

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !7024
  ret i64 %1, !dbg !7024
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_pgtable(i64 %pud.coerce) #3 align 16 !dbg !7025 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0
  store i64 %pud.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !7029, metadata !DIExpression()), !dbg !7030
  %coerce.dive1 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7031
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7031
  %call = call i64 @native_pud_val(i64 %0) #15, !dbg !7031
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, ptr %pud, i32 0, i32 0, !dbg !7031
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7031
  %call3 = call i64 @pud_pfn_mask(i64 %1) #15, !dbg !7031
  %and = and i64 %call, %call3, !dbg !7031
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7031
  %add = add i64 %and, %2, !dbg !7031
  %3 = inttoptr i64 %add to ptr, !dbg !7031
  ret ptr %3, !dbg !7032
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #3 align 16 !dbg !7033 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7035, metadata !DIExpression()), !dbg !7036
  %0 = load i64, ptr %address.addr, align 8, !dbg !7037
  %shr = lshr i64 %0, 21, !dbg !7038
  %and = and i64 %shr, 511, !dbg !7039
  ret i64 %and, !dbg !7040
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags(i64 %pmd.coerce) #3 align 16 !dbg !7041 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7045, metadata !DIExpression()), !dbg !7046
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7047
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7047
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !7047
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7048
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7048
  %call3 = call i64 @pmd_flags_mask(i64 %1) #15, !dbg !7048
  %and = and i64 %call, %call3, !dbg !7049
  ret i64 %and, !dbg !7050
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pmd_val(i64 %pmd.coerce) #3 align 16 !dbg !7051 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7053, metadata !DIExpression()), !dbg !7054
  %pmd1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7055
  %0 = load i64, ptr %pmd1, align 8, !dbg !7055
  ret i64 %0, !dbg !7056
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_flags_mask(i64 %pmd.coerce) #3 align 16 !dbg !7057 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7059, metadata !DIExpression()), !dbg !7060
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7061
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7061
  %call = call i64 @pmd_pfn_mask(i64 %0) #15, !dbg !7061
  %not = xor i64 %call, -1, !dbg !7062
  ret i64 %not, !dbg !7063
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_pfn_mask(i64 %pmd.coerce) #3 align 16 !dbg !7064 {
entry:
  %retval = alloca i64, align 8
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7066, metadata !DIExpression()), !dbg !7067
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7068
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7068
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !7068
  %and = and i64 %call, 128, !dbg !7070
  %tobool = icmp ne i64 %and, 0, !dbg !7070
  br i1 %tobool, label %if.then, label %if.else, !dbg !7071

if.then:                                          ; preds = %entry
  store i64 4503599625273344, ptr %retval, align 8, !dbg !7072
  br label %return, !dbg !7072

if.else:                                          ; preds = %entry
  store i64 4503599627366400, ptr %retval, align 8, !dbg !7073
  br label %return, !dbg !7073

return:                                           ; preds = %if.else, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !7074
  ret i64 %1, !dbg !7074
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_page_vaddr(i64 %pmd.coerce) #3 align 16 !dbg !7075 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0
  store i64 %pmd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !7079, metadata !DIExpression()), !dbg !7080
  %coerce.dive1 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7081
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7081
  %call = call i64 @native_pmd_val(i64 %0) #15, !dbg !7081
  %coerce.dive2 = getelementptr inbounds %struct.pmd_t, ptr %pmd, i32 0, i32 0, !dbg !7081
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !7081
  %call3 = call i64 @pmd_pfn_mask(i64 %1) #15, !dbg !7081
  %and = and i64 %call, %call3, !dbg !7081
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !7081
  %add = add i64 %and, %2, !dbg !7081
  %3 = inttoptr i64 %add to ptr, !dbg !7081
  %4 = ptrtoint ptr %3 to i64, !dbg !7082
  ret i64 %4, !dbg !7083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pte_index(i64 noundef %address) #3 align 16 !dbg !7084 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !7086, metadata !DIExpression()), !dbg !7087
  %0 = load i64, ptr %address.addr, align 8, !dbg !7088
  %shr = lshr i64 %0, 12, !dbg !7089
  %and = and i64 %shr, 511, !dbg !7090
  ret i64 %and, !dbg !7091
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @protnone_mask(i64 noundef %val) #3 align 16 !dbg !7092 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7097, metadata !DIExpression()), !dbg !7098
  %0 = load i64, ptr %val.addr, align 8, !dbg !7099
  %call = call zeroext i1 @__pte_needs_invert(i64 noundef %0) #15, !dbg !7100
  %1 = zext i1 %call to i64, !dbg !7100
  %cond = select i1 %call, i64 -1, i64 0, !dbg !7100
  ret i64 %cond, !dbg !7101
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pte(i64 noundef %val) #3 align 16 !dbg !7102 {
entry:
  %retval = alloca %struct.pte_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7106, metadata !DIExpression()), !dbg !7107
  %pte = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7108
  %0 = load i64, ptr %val.addr, align 8, !dbg !7109
  store i64 %0, ptr %pte, align 8, !dbg !7108
  %coerce.dive = getelementptr inbounds %struct.pte_t, ptr %retval, i32 0, i32 0, !dbg !7110
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !7110
  ret i64 %1, !dbg !7110
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @check_pgprot(i64 %pgprot.coerce) #3 align 16 !dbg !7111 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %massaged_val = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !7115, metadata !DIExpression()), !dbg !7117
  call void @llvm.lifetime.start.p0(i64 8, ptr %massaged_val) #14, !dbg !7118
  call void @llvm.dbg.declare(metadata ptr %massaged_val, metadata !7116, metadata !DIExpression()), !dbg !7119
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !7120
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !7120
  %call = call i64 @massage_pgprot(i64 %0) #15, !dbg !7120
  store i64 %call, ptr %massaged_val, align 8, !dbg !7119
  %1 = load i64, ptr %massaged_val, align 8, !dbg !7121
  call void @llvm.lifetime.end.p0(i64 8, ptr %massaged_val) #14, !dbg !7122
  ret i64 %1, !dbg !7123
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__pte_needs_invert(i64 noundef %val) #3 align 16 !dbg !7124 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7128, metadata !DIExpression()), !dbg !7129
  %0 = load i64, ptr %val.addr, align 8, !dbg !7130
  %tobool = icmp ne i64 %0, 0, !dbg !7130
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7131

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %val.addr, align 8, !dbg !7132
  %and = and i64 %1, 1, !dbg !7133
  %tobool1 = icmp ne i64 %and, 0, !dbg !7134
  %lnot = xor i1 %tobool1, true, !dbg !7134
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !7135
  ret i1 %2, !dbg !7136
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @massage_pgprot(i64 %pgprot.coerce) #3 align 16 !dbg !7137 {
entry:
  %pgprot = alloca %struct.pgprot, align 8
  %protval = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0
  store i64 %pgprot.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgprot, metadata !7139, metadata !DIExpression()), !dbg !7141
  call void @llvm.lifetime.start.p0(i64 8, ptr %protval) #14, !dbg !7142
  call void @llvm.dbg.declare(metadata ptr %protval, metadata !7140, metadata !DIExpression()), !dbg !7143
  %pgprot1 = getelementptr inbounds %struct.pgprot, ptr %pgprot, i32 0, i32 0, !dbg !7144
  %0 = load i64, ptr %pgprot1, align 8, !dbg !7144
  store i64 %0, ptr %protval, align 8, !dbg !7143
  %1 = load i64, ptr %protval, align 8, !dbg !7145
  %and = and i64 %1, 1, !dbg !7147
  %tobool = icmp ne i64 %and, 0, !dbg !7147
  br i1 %tobool, label %if.then, label %if.end, !dbg !7148

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @__supported_pte_mask, align 8, !dbg !7149
  %3 = load i64, ptr %protval, align 8, !dbg !7150
  %and2 = and i64 %3, %2, !dbg !7150
  store i64 %and2, ptr %protval, align 8, !dbg !7150
  br label %if.end, !dbg !7151

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %protval, align 8, !dbg !7152
  call void @llvm.lifetime.end.p0(i64 8, ptr %protval) #14, !dbg !7153
  ret i64 %4, !dbg !7154
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7155 dso_local void @free_pages(i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #4 align 16 !dbg !7158 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !7159, !srcloc !7160
  ret void, !dbg !7161
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_debugreg(i32 noundef %regno, i64 noundef %value) #4 align 16 !dbg !7162 {
entry:
  %regno.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  store i32 %regno, ptr %regno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regno.addr, metadata !7166, metadata !DIExpression()), !dbg !7168
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !7167, metadata !DIExpression()), !dbg !7169
  %0 = load i32, ptr %regno.addr, align 4, !dbg !7170
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %sw.bb5
  ], !dbg !7171

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %value.addr, align 8, !dbg !7172
  call void asm sideeffect "mov $0, %db0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %1) #14, !dbg !7174, !srcloc !7175
  br label %sw.epilog, !dbg !7176

sw.bb1:                                           ; preds = %entry
  %2 = load i64, ptr %value.addr, align 8, !dbg !7177
  call void asm sideeffect "mov $0, %db1", "r,~{dirflag},~{fpsr},~{flags}"(i64 %2) #14, !dbg !7178, !srcloc !7179
  br label %sw.epilog, !dbg !7180

sw.bb2:                                           ; preds = %entry
  %3 = load i64, ptr %value.addr, align 8, !dbg !7181
  call void asm sideeffect "mov $0, %db2", "r,~{dirflag},~{fpsr},~{flags}"(i64 %3) #14, !dbg !7182, !srcloc !7183
  br label %sw.epilog, !dbg !7184

sw.bb3:                                           ; preds = %entry
  %4 = load i64, ptr %value.addr, align 8, !dbg !7185
  call void asm sideeffect "mov $0, %db3", "r,~{dirflag},~{fpsr},~{flags}"(i64 %4) #14, !dbg !7186, !srcloc !7187
  br label %sw.epilog, !dbg !7188

sw.bb4:                                           ; preds = %entry
  %5 = load i64, ptr %value.addr, align 8, !dbg !7189
  call void asm sideeffect "mov $0, %db6", "r,~{dirflag},~{fpsr},~{flags}"(i64 %5) #14, !dbg !7190, !srcloc !7191
  br label %sw.epilog, !dbg !7192

sw.bb5:                                           ; preds = %entry
  %6 = load i64, ptr %value.addr, align 8, !dbg !7193
  call void asm sideeffect "mov $0, %db7", "r,*m,~{dirflag},~{fpsr},~{flags}"(i64 %6, ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #14, !dbg !7194, !srcloc !7195
  br label %sw.epilog, !dbg !7196

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !7197

do.body:                                          ; preds = %sw.default
  br label %do.body6, !dbg !7198

do.body6:                                         ; preds = %do.body
  br label %do.end, !dbg !7200

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !7198

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 94, i32 0, i64 12) #14, !dbg !7202, !srcloc !7204
  br label %do.end8, !dbg !7202

do.end8:                                          ; preds = %do.body7
  unreachable, !dbg !7198

do.end9:                                          ; No predecessors!
  br label %sw.epilog, !dbg !7205

sw.epilog:                                        ; preds = %do.end9, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !7206
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_load_idt(ptr noundef %dtr) #4 align 16 !dbg !7207 {
entry:
  %dtr.addr = alloca ptr, align 8
  store ptr %dtr, ptr %dtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dtr.addr, metadata !7212, metadata !DIExpression()), !dbg !7213
  %0 = load ptr, ptr %dtr.addr, align 8, !dbg !7214
  call void asm sideeffect "lidt $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.desc_ptr) %0) #14, !dbg !7215, !srcloc !7216
  ret void, !dbg !7217
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_load_gdt(ptr noundef %dtr) #3 align 16 !dbg !7218 {
entry:
  %dtr.addr = alloca ptr, align 8
  store ptr %dtr, ptr %dtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dtr.addr, metadata !7220, metadata !DIExpression()), !dbg !7221
  %0 = load ptr, ptr %dtr.addr, align 8, !dbg !7222
  call void asm sideeffect "lgdt $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.desc_ptr) %0) #14, !dbg !7223, !srcloc !7224
  ret void, !dbg !7225
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kexec_mark_range(i64 noundef %start, i64 noundef %end, i1 noundef zeroext %protect) #0 align 16 !dbg !7226 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %protect.addr = alloca i8, align 1
  %page = alloca ptr, align 8
  %nr_pages = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !7230, metadata !DIExpression()), !dbg !7235
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !7231, metadata !DIExpression()), !dbg !7236
  %frombool = zext i1 %protect to i8
  store i8 %frombool, ptr %protect.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %protect.addr, metadata !7232, metadata !DIExpression()), !dbg !7237
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #14, !dbg !7238
  call void @llvm.dbg.declare(metadata ptr %page, metadata !7233, metadata !DIExpression()), !dbg !7239
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_pages) #14, !dbg !7240
  call void @llvm.dbg.declare(metadata ptr %nr_pages, metadata !7234, metadata !DIExpression()), !dbg !7241
  %0 = load i64, ptr %end.addr, align 8, !dbg !7242
  %tobool = icmp ne i64 %0, 0, !dbg !7242
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !7244

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %start.addr, align 8, !dbg !7245
  %2 = load i64, ptr %end.addr, align 8, !dbg !7246
  %cmp = icmp ugt i64 %1, %2, !dbg !7247
  br i1 %cmp, label %if.then, label %if.end, !dbg !7248

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !7249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7249

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, ptr @vmemmap_base, align 8, !dbg !7250
  %4 = inttoptr i64 %3 to ptr, !dbg !7250
  %5 = load i64, ptr %start.addr, align 8, !dbg !7250
  %shr = lshr i64 %5, 12, !dbg !7250
  %add.ptr = getelementptr %struct.page, ptr %4, i64 %shr, !dbg !7250
  store ptr %add.ptr, ptr %page, align 8, !dbg !7251
  %6 = load i64, ptr %end.addr, align 8, !dbg !7252
  %shr1 = lshr i64 %6, 12, !dbg !7253
  %7 = load i64, ptr %start.addr, align 8, !dbg !7254
  %shr2 = lshr i64 %7, 12, !dbg !7255
  %sub = sub i64 %shr1, %shr2, !dbg !7256
  %add = add i64 %sub, 1, !dbg !7257
  %conv = trunc i64 %add to i32, !dbg !7258
  store i32 %conv, ptr %nr_pages, align 4, !dbg !7259
  %8 = load i8, ptr %protect.addr, align 1, !dbg !7260, !range !5966, !noundef !1081
  %tobool3 = trunc i8 %8 to i1, !dbg !7260
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !7262

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %page, align 8, !dbg !7263
  %10 = load i32, ptr %nr_pages, align 4, !dbg !7264
  %call = call i32 @set_pages_ro(ptr noundef %9, i32 noundef %10) #15, !dbg !7265
  store i32 %call, ptr %retval, align 4, !dbg !7266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7266

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %page, align 8, !dbg !7267
  %12 = load i32, ptr %nr_pages, align 4, !dbg !7268
  %call5 = call i32 @set_pages_rw(ptr noundef %11, i32 noundef %12) #15, !dbg !7269
  store i32 %call5, ptr %retval, align 4, !dbg !7270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7270

cleanup:                                          ; preds = %if.else, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_pages) #14, !dbg !7271
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #14, !dbg !7271
  %13 = load i32, ptr %retval, align 4, !dbg !7271
  ret i32 %13, !dbg !7271
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7272 dso_local i32 @set_pages_ro(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7275 dso_local i32 @set_pages_rw(ptr noundef, i32 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocf_check noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nocf_check noredzone }
attributes #17 = { cold noredzone }

!llvm.dbg.cu = !{!13}
!llvm.named.register.rsp = !{!5529}
!llvm.module.flags = !{!5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537}
!llvm.ident = !{!5538}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/machine_kexec_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ccf4ac3f47ab451bd813f9f37c566a2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 42)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 94, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./arch/x86/include/asm/debugreg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddda32c6e179418a7aa4e5f76d410b15")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 32)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.machine_kexec_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/machine_kexec_64\22 -D KBUILD_BASENAME=\22machine_kexec_64\22 -D KBUILD_MODNAME=\22machine_kexec_64\22 -D __KBUILD_MODNAME=kmod_machine_kexec_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/machine_kexec_64.ll arch/x86/kernel/machine_kexec_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !298, globals: !5528, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !23, !28, !123, !129, !145, !152, !160, !166, !171, !176, !182, !188, !195, !203, !210, !219, !224, !229, !235, !247, !254, !262, !272, !277, !285}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !16, line: 312, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22}
!19 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!20 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!21 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!22 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !24, line: 65, baseType: !17, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!27 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !30, file: !29, line: 147, baseType: !17, size: 32, elements: !120)
!29 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !29, line: 135, size: 512, elements: !31)
!31 = !{!32, !35, !37, !39, !43, !44, !60, !118, !119}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !30, file: !29, line: 136, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !29, line: 137, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !30, file: !29, line: 138, baseType: !38, size: 32, offset: 128)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !30, file: !29, line: 139, baseType: !40, size: 16, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !41, line: 24, baseType: !42)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !29, line: 150, baseType: !28, size: 32, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !30, file: !29, line: 151, baseType: !45, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !29, line: 64, baseType: !47)
!47 = !DISubroutineType(types: !48)
!48 = !{!38, !49, !38, !36, !50, !56}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 61, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !53, line: 72, baseType: !54)
!53 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !53, line: 16, baseType: !55)
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !41, line: 52, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !53, line: 88, baseType: !59)
!59 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !30, file: !29, line: 152, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !29, line: 117, size: 256, elements: !63)
!63 = !{!64, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !62, file: !29, line: 118, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !41, line: 174, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 172, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !66, file: !41, line: 173, baseType: !38, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !62, file: !29, line: 119, baseType: !70, size: 192, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !71, line: 41, baseType: !72)
!71 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !71, line: 37, size: 192, elements: !73)
!73 = !{!74, !112}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !72, file: !71, line: 38, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !76, line: 29, baseType: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !76, line: 17, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !76, line: 18, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !77, file: !76, line: 18, size: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !80, file: !76, line: 19, baseType: !83, size: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !84, line: 14, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !83, file: !84, line: 15, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !88, line: 44, baseType: !89)
!88 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !88, line: 14, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 15, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 15, size: 32, elements: !93)
!93 = !{!94, !95, !105}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !88, line: 16, baseType: !65, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !88, line: 24, baseType: !96, size: 16)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 24, size: 16, elements: !97)
!97 = !{!98, !104}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !96, file: !88, line: 25, baseType: !99, size: 8)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !100, line: 17, baseType: !101)
!100 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !102, line: 21, baseType: !103)
!102 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !96, file: !88, line: 26, baseType: !99, size: 8, offset: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !88, line: 28, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 28, size: 32, elements: !107)
!107 = !{!108, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !106, file: !88, line: 29, baseType: !109, size: 16)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !100, line: 19, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !102, line: 24, baseType: !42)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !106, file: !88, line: 30, baseType: !109, size: 16, offset: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !72, file: !71, line: 39, baseType: !113, size: 128, offset: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !41, line: 190, size: 128, elements: !114)
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !41, line: 191, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !113, file: !41, line: 191, baseType: !116, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !30, file: !29, line: 153, baseType: !36, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !30, file: !29, line: 154, baseType: !36, size: 64, offset: 448)
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!122 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !124, line: 16, baseType: !17, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "TT_NONE", value: 0)
!127 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!128 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !130, line: 1325, baseType: !17, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!132 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!133 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!134 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!135 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!136 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!137 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!138 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!139 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!140 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!141 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!142 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!143 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!144 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !146, line: 51, baseType: !17, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!149 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!150 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!151 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !153, line: 9, baseType: !17, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!154 = !{!155, !156, !157, !158, !159}
!155 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!156 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!157 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!158 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!159 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !161, line: 26, baseType: !17, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!162 = !{!163, !164, !165}
!163 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!164 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!165 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !167, line: 32, baseType: !17, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!168 = !{!169, !170}
!169 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!170 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !172, line: 2052, baseType: !17, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!173 = !{!174, !175}
!174 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!175 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !177, line: 54, baseType: !17, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!178 = !{!179, !180, !181}
!179 = !DIEnumerator(name: "USRQUOTA", value: 0)
!180 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!181 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !183, line: 45, baseType: !17, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!184 = !{!185, !186, !187}
!185 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!186 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!187 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !189, line: 487, baseType: !17, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!190 = !{!191, !192, !193, !194}
!191 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!192 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!193 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!194 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !196, line: 620, baseType: !17, size: 32, elements: !197)
!196 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!197 = !{!198, !199, !200, !201, !202}
!198 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!199 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!200 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!201 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!202 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !196, line: 597, baseType: !38, size: 32, elements: !204)
!204 = !{!205, !206, !207, !208, !209}
!205 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!206 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!207 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!208 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!209 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !189, line: 547, baseType: !17, size: 32, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218}
!212 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!213 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!214 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!215 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!216 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!217 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!218 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !189, line: 564, baseType: !17, size: 32, elements: !220)
!220 = !{!221, !222, !223}
!221 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!222 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!223 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !189, line: 577, baseType: !17, size: 32, elements: !225)
!225 = !{!226, !227, !228}
!226 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!227 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!228 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !189, line: 503, baseType: !17, size: 32, elements: !230)
!230 = !{!231, !232, !233, !234}
!231 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!232 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!233 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!234 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !236, line: 44, baseType: !17, size: 32, elements: !237)
!236 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246}
!238 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!239 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!240 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!241 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!242 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!243 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!244 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!245 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!246 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !248, line: 15, baseType: !17, size: 32, elements: !249)
!248 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!249 = !{!250, !251, !252, !253}
!250 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!251 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!252 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!253 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !255, line: 68, baseType: !17, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!256 = !{!257, !258, !259, !260, !261}
!257 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!258 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!259 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!260 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!261 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_attr", file: !263, line: 22, baseType: !17, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/cc_platform.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec881fca7f8cde0abb6c64a9f159f14b")
!264 = !{!265, !266, !267, !268, !269, !270, !271}
!265 = !DIEnumerator(name: "CC_ATTR_MEM_ENCRYPT", value: 0)
!266 = !DIEnumerator(name: "CC_ATTR_HOST_MEM_ENCRYPT", value: 1)
!267 = !DIEnumerator(name: "CC_ATTR_GUEST_MEM_ENCRYPT", value: 2)
!268 = !DIEnumerator(name: "CC_ATTR_GUEST_STATE_ENCRYPT", value: 3)
!269 = !DIEnumerator(name: "CC_ATTR_GUEST_UNROLL_STRING_IO", value: 4)
!270 = !DIEnumerator(name: "CC_ATTR_GUEST_SEV_SNP", value: 5)
!271 = !DIEnumerator(name: "CC_ATTR_HOTPLUG_DISABLED", value: 6)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 10, baseType: !17, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!274 = !{!275, !276}
!275 = !DIEnumerator(name: "false", value: 0)
!276 = !DIEnumerator(name: "true", value: 1)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !278, line: 140, baseType: !17, size: 32, elements: !279)
!278 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!279 = !{!280, !281, !282, !283, !284}
!280 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!281 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!282 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!283 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!284 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !286, line: 135, baseType: !17, size: 32, elements: !287)
!286 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!288 = !DIEnumerator(name: "IORES_DESC_NONE", value: 0)
!289 = !DIEnumerator(name: "IORES_DESC_CRASH_KERNEL", value: 1)
!290 = !DIEnumerator(name: "IORES_DESC_ACPI_TABLES", value: 2)
!291 = !DIEnumerator(name: "IORES_DESC_ACPI_NV_STORAGE", value: 3)
!292 = !DIEnumerator(name: "IORES_DESC_PERSISTENT_MEMORY", value: 4)
!293 = !DIEnumerator(name: "IORES_DESC_PERSISTENT_MEMORY_LEGACY", value: 5)
!294 = !DIEnumerator(name: "IORES_DESC_DEVICE_PRIVATE_MEMORY", value: 6)
!295 = !DIEnumerator(name: "IORES_DESC_RESERVED", value: 7)
!296 = !DIEnumerator(name: "IORES_DESC_SOFT_RESERVED", value: 8)
!297 = !DIEnumerator(name: "IORES_DESC_CXL", value: 9)
!298 = !{!55, !299, !2024, !5416, !36, !398, !5471, !5499, !5516, !5517, !3896, !5456, !758, !2010, !2003, !2029, !38, !33, !598, !2956, !5518, !5520, !1094, !5522, !5524, !5526, !3669}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !130, line: 74, size: 512, align: 128, elements: !301)
!301 = !{!302, !303, !5410, !5415}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !130, line: 75, baseType: !55, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !130, line: 83, baseType: !304, size: 320, offset: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !130, line: 83, size: 320, elements: !305)
!305 = !{!306, !5336, !5350, !5354, !5409}
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !130, line: 84, baseType: !307, size: 320)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !304, file: !130, line: 84, size: 320, elements: !308)
!308 = !{!309, !320, !5330, !5335}
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !130, line: 90, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !130, line: 90, size: 128, elements: !311)
!311 = !{!312, !313, !318, !319}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !310, file: !130, line: 91, baseType: !113, size: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !130, line: 94, baseType: !314, size: 128)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !130, line: 94, size: 128, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !314, file: !130, line: 96, baseType: !36, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !314, file: !130, line: 98, baseType: !17, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !310, file: !130, line: 102, baseType: !113, size: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !310, file: !130, line: 103, baseType: !113, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !307, file: !130, line: 106, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !172, line: 472, size: 1536, align: 64, elements: !323)
!323 = !{!324, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5324, !5325, !5326, !5327, !5328, !5329}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !322, file: !172, line: 473, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !172, line: 641, size: 4800, elements: !327)
!327 = !{!328, !329, !330, !338, !339, !346, !347, !350, !351, !5107, !5108, !5109, !5110, !5111, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5151, !5154, !5155, !5156, !5173, !5174, !5175, !5176}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !326, file: !172, line: 642, baseType: !40, size: 16)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !326, file: !172, line: 643, baseType: !42, size: 16, offset: 16)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !326, file: !172, line: 644, baseType: !331, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !332, line: 23, baseType: !333)
!332 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 21, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !333, file: !332, line: 22, baseType: !336, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !41, line: 37, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !53, line: 49, baseType: !17)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !326, file: !172, line: 645, baseType: !113, size: 128, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !326, file: !172, line: 646, baseType: !340, size: 32, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !332, line: 28, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 26, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !341, file: !332, line: 27, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !41, line: 38, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !53, line: 50, baseType: !17)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !326, file: !172, line: 647, baseType: !17, size: 32, offset: 224)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !326, file: !172, line: 650, baseType: !348, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !172, line: 607, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !326, file: !172, line: 651, baseType: !348, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !326, file: !172, line: 654, baseType: !352, size: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !172, line: 1966, size: 2048, align: 512, elements: !355)
!355 = !{!356, !4941, !4951, !4955, !4959, !4963, !4967, !4971, !4975, !4979, !4983, !4984, !4988, !4992, !5029, !5058, !5062, !5068, !5072, !5076, !5080, !5084, !5088, !5094, !5098}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !354, file: !172, line: 1967, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !325, !360, !17}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !362, line: 82, size: 1536, elements: !363)
!362 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!363 = !{!364, !365, !375, !383, !384, !404, !405, !407, !420, !4925, !4926, !4927, !4928, !4933, !4934, !4935}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !361, file: !362, line: 84, baseType: !17, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !361, file: !362, line: 85, baseType: !366, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !367, line: 275, baseType: !368)
!367 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !367, line: 275, size: 32, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !368, file: !367, line: 275, baseType: !371, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !367, line: 69, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !367, line: 64, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !372, file: !367, line: 65, baseType: !17, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !361, file: !362, line: 86, baseType: !376, size: 128, offset: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !377, line: 38, size: 128, elements: !378)
!377 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!378 = !{!379, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !377, line: 39, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !376, file: !377, line: 39, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !361, file: !362, line: 87, baseType: !360, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !361, file: !362, line: 88, baseType: !385, size: 128, offset: 256)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !362, line: 49, size: 128, elements: !386)
!386 = !{!387, !401}
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !362, line: 50, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !362, line: 50, size: 64, elements: !389)
!389 = !{!390, !397}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !362, line: 51, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !388, file: !362, line: 51, size: 64, elements: !392)
!392 = !{!393, !396}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !391, file: !362, line: 52, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !100, line: 21, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !102, line: 27, baseType: !17)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !391, file: !362, line: 52, baseType: !394, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !388, file: !362, line: 54, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !100, line: 23, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !102, line: 31, baseType: !400)
!400 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !362, line: 56, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !361, file: !362, line: 89, baseType: !325, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !361, file: !362, line: 91, baseType: !406, size: 256, offset: 448)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !11)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !361, file: !362, line: 94, baseType: !408, size: 64, offset: 704)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !409, line: 25, size: 64, elements: !410)
!409 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !409, line: 26, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !409, line: 26, size: 64, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !412, file: !409, line: 28, baseType: !399, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !409, line: 30, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !412, file: !409, line: 30, size: 64, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !416, file: !409, line: 31, baseType: !75, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !416, file: !409, line: 32, baseType: !38, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !361, file: !362, line: 95, baseType: !421, size: 64, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !362, line: 128, size: 1024, align: 512, elements: !424)
!424 = !{!425, !429, !430, !437, !443, !447, !451, !455, !456, !460, !465, !4915, !4919}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !423, file: !362, line: 129, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!38, !360, !17}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !423, file: !362, line: 130, baseType: !426, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !423, file: !362, line: 131, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!38, !434, !436}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !423, file: !362, line: 132, baseType: !438, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!38, !434, !17, !33, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !423, file: !362, line: 134, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!38, !434}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !423, file: !362, line: 135, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!38, !360}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !423, file: !362, line: 136, baseType: !452, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !360}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !423, file: !362, line: 137, baseType: !452, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !423, file: !362, line: 138, baseType: !457, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !360, !325}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !423, file: !362, line: 139, baseType: !461, size: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !360, !464, !38}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !423, file: !362, line: 140, baseType: !466, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !4914}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !471, line: 70, size: 256, elements: !472)
!471 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!472 = !{!473, !474, !4910, !4911}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !470, file: !471, line: 71, baseType: !360, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !470, file: !471, line: 72, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !172, line: 1190, size: 10752, elements: !477)
!477 = !{!478, !479, !482, !483, !484, !485, !3922, !4074, !4114, !4199, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4216, !4220, !4221, !4712, !4715, !4772, !4775, !4776, !4777, !4818, !4844, !4845, !4846, !4847, !4848, !4849, !4852, !4853, !4860, !4861, !4862, !4863, !4864, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !476, file: !172, line: 1191, baseType: !113, size: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !476, file: !172, line: 1192, baseType: !480, size: 32, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !41, line: 21, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !41, line: 18, baseType: !394)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !476, file: !172, line: 1193, baseType: !103, size: 8, offset: 160)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !476, file: !172, line: 1194, baseType: !55, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !476, file: !172, line: 1195, baseType: !57, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !476, file: !172, line: 1196, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !172, line: 2366, size: 576, elements: !488)
!488 = !{!489, !490, !491, !497, !501, !505, !509, !3910, !3911, !3912, !3914, !3915, !3916, !3918, !3919, !3920, !3921}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !172, line: 2367, baseType: !33, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !487, file: !172, line: 2368, baseType: !38, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !487, file: !172, line: 2376, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!38, !495}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !471, line: 21, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !487, file: !172, line: 2377, baseType: !498, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !172, line: 75, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !487, file: !172, line: 2378, baseType: !502, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!360, !486, !38, !33, !36}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !487, file: !172, line: 2380, baseType: !506, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !475}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !487, file: !172, line: 2381, baseType: !510, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !16, line: 402, size: 9216, align: 512, elements: !512)
!512 = !{!513, !514, !515, !519, !3581, !3607, !3608, !3609, !3610, !3614, !3617, !3618, !3619, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3687, !3691, !3709, !3726, !3727, !3728, !3729, !3738, !3761, !3762, !3765, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3779, !3780, !3866, !3874, !3875, !3876, !3878, !3882, !3883, !3892, !3893, !3894, !3895, !3897, !3898, !3899, !3906, !3907, !3908, !3909}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !511, file: !16, line: 403, baseType: !15, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !511, file: !16, line: 406, baseType: !113, size: 128, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !16, line: 409, baseType: !516, size: 448, offset: 192)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 56)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !511, file: !16, line: 417, baseType: !520, size: 768, offset: 640)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !16, line: 45, size: 768, elements: !521)
!521 = !{!522, !3575, !3576, !3577, !3580}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !520, file: !16, line: 46, baseType: !523, size: 512)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !524, line: 64, size: 512, elements: !525)
!524 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!525 = !{!526, !527, !528, !530, !576, !3564, !3565, !3570, !3571, !3572, !3573, !3574}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !523, file: !524, line: 65, baseType: !33, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !523, file: !524, line: 66, baseType: !113, size: 128, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !523, file: !524, line: 67, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !523, file: !524, line: 68, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !524, line: 168, size: 768, elements: !533)
!533 = !{!534, !535, !536, !537}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !532, file: !524, line: 169, baseType: !113, size: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !532, file: !524, line: 170, baseType: !75, size: 32, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !532, file: !524, line: 171, baseType: !523, size: 512, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !532, file: !524, line: 172, baseType: !538, size: 64, offset: 704)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !524, line: 133, size: 192, elements: !541)
!541 = !{!542, !549, !554}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !540, file: !524, line: 134, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!38, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !540, file: !524, line: 135, baseType: !550, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!33, !547}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !540, file: !524, line: 136, baseType: !555, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!38, !547, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !524, line: 125, size: 20736, elements: !561)
!561 = !{!562, !566, !570, !571, !575}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !560, file: !524, line: 126, baseType: !563, size: 192)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 192, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 3)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !560, file: !524, line: 127, baseType: !567, size: 4096, offset: 192)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 4096, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !560, file: !524, line: 128, baseType: !38, size: 32, offset: 4288)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !560, file: !524, line: 129, baseType: !572, size: 16384, offset: 4320)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 2048)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !560, file: !524, line: 130, baseType: !38, size: 32, offset: 20704)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !523, file: !524, line: 69, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !524, line: 116, size: 384, elements: !580)
!580 = !{!581, !585, !608, !3524, !3556, !3560}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !579, file: !524, line: 117, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !529}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !579, file: !524, line: 118, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !589, line: 254, size: 128, elements: !590)
!589 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!590 = !{!591, !604}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !588, file: !589, line: 255, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!595, !529, !599, !464}
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 66, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !53, line: 73, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !53, line: 15, baseType: !598)
!598 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !589, line: 30, size: 128, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !600, file: !589, line: 31, baseType: !33, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !600, file: !589, line: 32, baseType: !40, size: 16, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !588, file: !589, line: 256, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!595, !529, !599, !33, !51}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !579, file: !524, line: 119, baseType: !609, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !589, line: 84, size: 320, elements: !613)
!613 = !{!614, !615, !619, !3520, !3522}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !589, line: 85, baseType: !33, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !612, file: !589, line: 86, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!40, !529, !599, !38}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !612, file: !589, line: 88, baseType: !620, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!40, !529, !623, !38}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !589, line: 175, size: 512, elements: !625)
!625 = !{!626, !627, !628, !629, !633, !3515, !3516}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !624, file: !589, line: 176, baseType: !600, size: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !624, file: !589, line: 177, baseType: !51, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !624, file: !589, line: 178, baseType: !36, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !624, file: !589, line: 179, baseType: !630, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!321}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !624, file: !589, line: 180, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!595, !637, !529, !623, !464, !57, !51}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !172, line: 994, size: 1856, align: 64, elements: !639)
!639 = !{!640, !659, !660, !662, !671, !684, !685, !686, !3195, !3196, !3205, !3211, !3212, !3505, !3506, !3507, !3508, !3510, !3511, !3514}
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !172, line: 995, baseType: !641, size: 128)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !172, line: 995, size: 128, elements: !642)
!642 = !{!643, !649, !658}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !641, file: !172, line: 996, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !645, line: 60, size: 64, elements: !646)
!645 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !645, line: 61, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !641, file: !172, line: 997, baseType: !650, size: 128, align: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !41, line: 232, size: 128, align: 64, elements: !651)
!651 = !{!652, !654}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !41, line: 233, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !650, file: !41, line: 234, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !653}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !641, file: !172, line: 998, baseType: !17, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !638, file: !172, line: 1005, baseType: !75, size: 32, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !638, file: !172, line: 1006, baseType: !661, size: 32, offset: 160)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !41, line: 156, baseType: !17)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !638, file: !172, line: 1007, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !664, line: 13, baseType: !665)
!664 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !41, line: 181, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 179, size: 64, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !666, file: !41, line: 180, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !100, line: 22, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !102, line: 30, baseType: !59)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !638, file: !172, line: 1008, baseType: !672, size: 256, offset: 256)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !673, line: 66, size: 256, elements: !674)
!673 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!674 = !{!675, !676, !678, !683}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !672, file: !673, line: 67, baseType: !663, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !672, file: !673, line: 68, baseType: !677, size: 32, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !84, line: 23, baseType: !83)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !672, file: !673, line: 70, baseType: !679, size: 32, offset: 96)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !680, line: 15, size: 32, elements: !681)
!680 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !679, file: !680, line: 20, baseType: !65, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !672, file: !673, line: 72, baseType: !113, size: 128, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !638, file: !172, line: 1009, baseType: !57, size: 64, offset: 512)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !638, file: !172, line: 1010, baseType: !17, size: 32, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !638, file: !172, line: 1011, baseType: !687, size: 256, offset: 640)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !172, line: 948, size: 256, elements: !688)
!688 = !{!689, !710, !3191, !3192, !3193, !3194}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !687, file: !172, line: 949, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !691, line: 34, baseType: !692)
!691 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !691, line: 25, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !692, file: !691, line: 26, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !696, line: 27, baseType: !697)
!696 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !696, line: 13, size: 64, elements: !698)
!698 = !{!699, !709}
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !696, line: 14, baseType: !700, size: 32)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !696, line: 14, size: 32, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !700, file: !696, line: 15, baseType: !65, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !696, line: 16, baseType: !704, size: 32)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !696, line: 16, size: 32, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !704, file: !696, line: 18, baseType: !99, size: 8)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !704, file: !696, line: 19, baseType: !708, size: 24, offset: 8)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 24, elements: !564)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !697, file: !696, line: 26, baseType: !87, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !687, file: !172, line: 950, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !153, line: 59, size: 768, elements: !713)
!713 = !{!714, !720, !721, !722, !735, !736, !737, !738}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !712, file: !153, line: 61, baseType: !715, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !716, line: 113, baseType: !717)
!716 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !716, line: 111, size: 32, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !717, file: !716, line: 112, baseType: !65, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !712, file: !153, line: 62, baseType: !17, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !712, file: !153, line: 63, baseType: !75, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !712, file: !153, line: 65, baseType: !723, size: 256, offset: 128)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 256, elements: !733)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !41, line: 194, size: 64, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !724, file: !41, line: 195, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !41, line: 198, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !41, line: 199, baseType: !727, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !728, file: !41, line: 199, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!733 = !{!734}
!734 = !DISubrange(count: 4)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !712, file: !153, line: 66, baseType: !724, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !712, file: !153, line: 68, baseType: !70, size: 192, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !712, file: !153, line: 69, baseType: !650, size: 128, align: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !712, file: !153, line: 70, baseType: !739, offset: 768)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, elements: !1518)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !153, line: 54, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !740, file: !153, line: 55, baseType: !38, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !740, file: !153, line: 56, baseType: !744, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !746, line: 26, size: 1152, elements: !747)
!746 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!747 = !{!748, !762, !763, !764, !3177, !3181, !3182, !3183, !3186, !3187, !3188, !3189, !3190}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !745, file: !746, line: 27, baseType: !749, size: 192)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !750, line: 19, size: 192, elements: !751)
!750 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!751 = !{!752, !760, !761}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !749, file: !750, line: 20, baseType: !753, size: 128)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !754, line: 296, size: 128, elements: !755)
!754 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!755 = !{!756, !757, !759}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !753, file: !754, line: 297, baseType: !75, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !753, file: !754, line: 299, baseType: !758, size: 32, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !41, line: 154, baseType: !17)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !753, file: !754, line: 300, baseType: !36, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !749, file: !750, line: 21, baseType: !17, size: 32, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !749, file: !750, line: 22, baseType: !17, size: 32, offset: 160)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !745, file: !746, line: 28, baseType: !650, size: 128, align: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !745, file: !746, line: 29, baseType: !17, size: 32, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !745, file: !746, line: 30, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !767, line: 746, size: 58368, elements: !768)
!767 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!768 = !{!769, !777, !778, !779, !780, !781, !782, !783, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !856, !867, !962, !966, !969, !1000, !1001, !1002, !1003, !1014, !1016, !1017, !1018, !1019, !1020, !1021, !1032, !1033, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1050, !1051, !1058, !1059, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1604, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1619, !1620, !1621, !1622, !1624, !1625, !1626, !1627, !1628, !1629, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1653, !1659, !1729, !1730, !1731, !1732, !1736, !1739, !1746, !1751, !1754, !1757, !1760, !2382, !2582, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2620, !2621, !2622, !2631, !2639, !2640, !2641, !2642, !2643, !2648, !2649, !2650, !2653, !2654, !2657, !2660, !2666, !2674, !2677, !2678, !2764, !2765, !2766, !2767, !2768, !2774, !2775, !2776, !2777, !2778, !2779, !2782, !2796, !2797, !2800, !2801, !2802, !2805, !2806, !2807, !2808, !2809, !2810, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2842, !2845, !2851, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2863, !2935, !2937, !2938, !2939, !2940, !2941, !2942, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2972, !2973, !2974}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !766, file: !767, line: 752, baseType: !770, size: 192)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !771, line: 56, size: 192, elements: !772)
!771 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!772 = !{!773, !774, !775, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !771, line: 57, baseType: !55, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !770, file: !771, line: 58, baseType: !55, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !770, file: !771, line: 59, baseType: !394, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !770, file: !771, line: 61, baseType: !394, size: 32, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !766, file: !767, line: 754, baseType: !17, size: 32, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !766, file: !767, line: 767, baseType: !36, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !766, file: !767, line: 768, baseType: !715, size: 32, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !767, line: 770, baseType: !17, size: 32, offset: 352)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !766, file: !767, line: 771, baseType: !17, size: 32, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !766, file: !767, line: 774, baseType: !38, size: 32, offset: 416)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !766, file: !767, line: 775, baseType: !784, size: 128, offset: 448)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !785, line: 58, size: 128, elements: !786)
!785 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!786 = !{!787, !788, !793, !794}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !784, file: !785, line: 59, baseType: !644, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !785, line: 60, baseType: !789, size: 32, offset: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !784, file: !785, line: 60, size: 32, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !789, file: !785, line: 61, baseType: !17, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !789, file: !785, line: 62, baseType: !65, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !784, file: !785, line: 65, baseType: !109, size: 16, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !784, file: !785, line: 65, baseType: !109, size: 16, offset: 112)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !766, file: !767, line: 776, baseType: !17, size: 32, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !766, file: !767, line: 777, baseType: !55, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !766, file: !767, line: 778, baseType: !765, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !766, file: !767, line: 787, baseType: !38, size: 32, offset: 768)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !766, file: !767, line: 788, baseType: !38, size: 32, offset: 800)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !766, file: !767, line: 790, baseType: !38, size: 32, offset: 832)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !766, file: !767, line: 792, baseType: !38, size: 32, offset: 864)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !766, file: !767, line: 793, baseType: !38, size: 32, offset: 896)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !766, file: !767, line: 794, baseType: !38, size: 32, offset: 928)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !766, file: !767, line: 795, baseType: !17, size: 32, offset: 960)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !766, file: !767, line: 797, baseType: !806, size: 2048, offset: 1024)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !767, line: 551, size: 2048, elements: !807)
!807 = !{!808, !813, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !835, !838, !839, !840}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !806, file: !767, line: 553, baseType: !809, size: 128)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !767, line: 411, size: 128, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !809, file: !767, line: 412, baseType: !55, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !809, file: !767, line: 413, baseType: !394, size: 32, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !806, file: !767, line: 554, baseType: !814, size: 192, align: 64, offset: 128)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !815, line: 5, size: 192, align: 64, elements: !816)
!815 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!816 = !{!817, !818, !820}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !814, file: !815, line: 6, baseType: !55, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !814, file: !815, line: 7, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !814, file: !815, line: 8, baseType: !819, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !806, file: !767, line: 555, baseType: !398, size: 64, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !806, file: !767, line: 556, baseType: !398, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !806, file: !767, line: 558, baseType: !113, size: 128, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !806, file: !767, line: 559, baseType: !17, size: 32, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !806, file: !767, line: 561, baseType: !398, size: 64, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !806, file: !767, line: 562, baseType: !398, size: 64, offset: 704)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !806, file: !767, line: 563, baseType: !398, size: 64, offset: 768)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !806, file: !767, line: 564, baseType: !398, size: 64, offset: 832)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !806, file: !767, line: 565, baseType: !669, size: 64, offset: 896)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !806, file: !767, line: 566, baseType: !398, size: 64, offset: 960)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !806, file: !767, line: 568, baseType: !398, size: 64, offset: 1024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !806, file: !767, line: 571, baseType: !38, size: 32, offset: 1088)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !806, file: !767, line: 572, baseType: !834, size: 64, offset: 1152)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !806, file: !767, line: 574, baseType: !836, size: 64, offset: 1216)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !767, line: 49, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !806, file: !767, line: 576, baseType: !836, size: 64, offset: 1280)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !806, file: !767, line: 578, baseType: !55, size: 64, offset: 1344)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !806, file: !767, line: 588, baseType: !841, size: 512, align: 512, offset: 1536)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !767, line: 497, size: 512, align: 512, elements: !842)
!842 = !{!843, !844, !845, !846, !847, !848, !849, !850, !851}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !841, file: !767, line: 498, baseType: !398, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !841, file: !767, line: 499, baseType: !398, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !841, file: !767, line: 500, baseType: !398, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !841, file: !767, line: 501, baseType: !394, size: 32, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !841, file: !767, line: 502, baseType: !394, size: 32, offset: 224)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !841, file: !767, line: 503, baseType: !55, size: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !841, file: !767, line: 504, baseType: !55, size: 64, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !841, file: !767, line: 505, baseType: !55, size: 64, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !841, file: !767, line: 506, baseType: !852, size: 64, align: 64, offset: 448)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !767, line: 445, size: 64, align: 64, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !852, file: !767, line: 446, baseType: !17, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !852, file: !767, line: 447, baseType: !17, size: 32, offset: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !766, file: !767, line: 798, baseType: !857, size: 384, offset: 3072)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !767, line: 592, size: 384, elements: !858)
!858 = !{!859, !860, !861, !862, !863, !864, !865}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !857, file: !767, line: 593, baseType: !113, size: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !857, file: !767, line: 594, baseType: !55, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !857, file: !767, line: 595, baseType: !55, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !857, file: !767, line: 596, baseType: !17, size: 32, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !857, file: !767, line: 597, baseType: !42, size: 16, offset: 288)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !857, file: !767, line: 598, baseType: !42, size: 16, offset: 304)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !857, file: !767, line: 600, baseType: !866, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !766, file: !767, line: 799, baseType: !868, size: 1792, offset: 3456)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !767, line: 610, size: 1792, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !959, !960}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !868, file: !767, line: 611, baseType: !814, size: 192, align: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !868, file: !767, line: 618, baseType: !398, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !868, file: !767, line: 619, baseType: !398, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !868, file: !767, line: 620, baseType: !398, size: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !868, file: !767, line: 621, baseType: !398, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !868, file: !767, line: 622, baseType: !398, size: 64, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !868, file: !767, line: 629, baseType: !669, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !868, file: !767, line: 630, baseType: !398, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !868, file: !767, line: 631, baseType: !17, size: 32, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !868, file: !767, line: 653, baseType: !17, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !868, file: !767, line: 654, baseType: !17, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !868, file: !767, line: 655, baseType: !17, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !868, file: !767, line: 656, baseType: !17, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !868, file: !767, line: 662, baseType: !884, size: 512, offset: 704)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !24, line: 118, size: 512, elements: !885)
!885 = !{!886, !894, !895, !900, !955, !956, !957, !958}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !884, file: !24, line: 119, baseType: !887, size: 256)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !888, line: 9, size: 256, elements: !889)
!888 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !887, file: !888, line: 10, baseType: !814, size: 192, align: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !887, file: !888, line: 11, baseType: !892, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !893, line: 29, baseType: !669)
!893 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !884, file: !24, line: 120, baseType: !892, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !884, file: !24, line: 121, baseType: !896, size: 64, offset: 320)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!23, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !884, file: !24, line: 122, baseType: !901, size: 64, offset: 384)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !24, line: 159, size: 512, align: 512, elements: !903)
!903 = !{!904, !929, !930, !933, !938, !939, !950, !954}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !902, file: !24, line: 160, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !24, line: 215, size: 4608, align: 512, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !906, file: !24, line: 216, baseType: !677, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !906, file: !24, line: 217, baseType: !17, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !906, file: !24, line: 218, baseType: !17, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !906, file: !24, line: 219, baseType: !17, size: 32, offset: 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !906, file: !24, line: 220, baseType: !17, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !906, file: !24, line: 221, baseType: !17, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !906, file: !24, line: 222, baseType: !17, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !906, file: !24, line: 223, baseType: !17, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !906, file: !24, line: 224, baseType: !17, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !906, file: !24, line: 226, baseType: !17, size: 32, offset: 160)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !906, file: !24, line: 227, baseType: !42, size: 16, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !906, file: !24, line: 228, baseType: !42, size: 16, offset: 208)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !906, file: !24, line: 229, baseType: !17, size: 32, offset: 224)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !906, file: !24, line: 235, baseType: !892, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !906, file: !24, line: 236, baseType: !899, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !906, file: !24, line: 237, baseType: !892, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !906, file: !24, line: 238, baseType: !899, size: 64, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !906, file: !24, line: 239, baseType: !926, size: 4096, align: 512, offset: 512)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 4096, align: 512, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 8)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !902, file: !24, line: 161, baseType: !17, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !902, file: !24, line: 162, baseType: !931, size: 32, offset: 96)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !41, line: 32, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !53, line: 96, baseType: !38)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !902, file: !24, line: 163, baseType: !934, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !367, line: 274, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !367, line: 274, size: 32, elements: !936)
!936 = !{!937}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !935, file: !367, line: 274, baseType: !371, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !902, file: !24, line: 164, baseType: !899, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !902, file: !24, line: 165, baseType: !940, size: 128, offset: 256)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !888, line: 14, size: 128, elements: !941)
!941 = !{!942}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !940, file: !888, line: 15, baseType: !943, size: 128)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !815, line: 26, size: 128, elements: !944)
!944 = !{!945, !949}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !943, file: !815, line: 27, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !815, line: 12, size: 64, elements: !947)
!947 = !{!948}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !946, file: !815, line: 13, baseType: !819, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !943, file: !815, line: 28, baseType: !819, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !902, file: !24, line: 166, baseType: !951, size: 64, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!892}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !902, file: !24, line: 167, baseType: !892, size: 64, offset: 448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !884, file: !24, line: 123, baseType: !99, size: 8, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !884, file: !24, line: 124, baseType: !99, size: 8, offset: 456)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !884, file: !24, line: 125, baseType: !99, size: 8, offset: 464)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !884, file: !24, line: 126, baseType: !99, size: 8, offset: 472)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !868, file: !767, line: 671, baseType: !884, size: 512, offset: 1216)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !868, file: !767, line: 679, baseType: !961, size: 64, offset: 1728)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !766, file: !767, line: 800, baseType: !963, size: 64, offset: 5248)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !767, line: 800, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !766, file: !767, line: 809, baseType: !967, size: 64, offset: 5312)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !767, line: 70, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !766, file: !767, line: 825, baseType: !970, size: 2048, align: 512, offset: 5632)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !767, line: 509, size: 2048, align: 512, elements: !971)
!971 = !{!972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !970, file: !767, line: 511, baseType: !398, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !970, file: !767, line: 512, baseType: !398, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !970, file: !767, line: 513, baseType: !398, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !970, file: !767, line: 514, baseType: !398, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !970, file: !767, line: 515, baseType: !398, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !970, file: !767, line: 516, baseType: !398, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !970, file: !767, line: 518, baseType: !398, size: 64, offset: 384)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !970, file: !767, line: 519, baseType: !398, size: 64, offset: 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !970, file: !767, line: 520, baseType: !669, size: 64, offset: 512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !970, file: !767, line: 522, baseType: !398, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !970, file: !767, line: 523, baseType: !398, size: 64, offset: 640)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !970, file: !767, line: 524, baseType: !669, size: 64, offset: 704)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !970, file: !767, line: 526, baseType: !669, size: 64, offset: 768)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !970, file: !767, line: 527, baseType: !398, size: 64, offset: 832)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !970, file: !767, line: 529, baseType: !398, size: 64, offset: 896)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !970, file: !767, line: 530, baseType: !398, size: 64, offset: 960)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !970, file: !767, line: 531, baseType: !398, size: 64, offset: 1024)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !970, file: !767, line: 532, baseType: !398, size: 64, offset: 1088)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !970, file: !767, line: 533, baseType: !398, size: 64, offset: 1152)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !970, file: !767, line: 535, baseType: !398, size: 64, offset: 1216)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !970, file: !767, line: 536, baseType: !398, size: 64, offset: 1280)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !970, file: !767, line: 537, baseType: !398, size: 64, offset: 1344)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !970, file: !767, line: 538, baseType: !398, size: 64, offset: 1408)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !970, file: !767, line: 539, baseType: !398, size: 64, offset: 1472)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !970, file: !767, line: 540, baseType: !398, size: 64, offset: 1536)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !970, file: !767, line: 541, baseType: !398, size: 64, offset: 1600)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !970, file: !767, line: 542, baseType: !398, size: 64, offset: 1664)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !970, file: !767, line: 543, baseType: !398, size: 64, offset: 1728)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !766, file: !767, line: 833, baseType: !17, size: 32, offset: 7680)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !766, file: !767, line: 836, baseType: !17, size: 32, offset: 7712)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !766, file: !767, line: 837, baseType: !38, size: 32, offset: 7744)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !766, file: !767, line: 838, baseType: !1004, size: 64, offset: 7808)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1007, line: 19, baseType: !1008)
!1007 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1007, line: 19, size: 64, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1008, file: !1007, line: 19, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, elements: !1012)
!1012 = !{!1013}
!1013 = !DISubrange(count: 1)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !766, file: !767, line: 839, baseType: !1015, size: 64, offset: 7872)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !766, file: !767, line: 840, baseType: !1006, size: 64, offset: 7936)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !766, file: !767, line: 841, baseType: !36, size: 64, offset: 8000)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !766, file: !767, line: 843, baseType: !42, size: 16, offset: 8064)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !766, file: !767, line: 845, baseType: !42, size: 16, offset: 8080)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !766, file: !767, line: 848, baseType: !38, size: 32, offset: 8096)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !766, file: !767, line: 849, baseType: !1022, size: 32, offset: 8128)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !767, line: 718, size: 32, elements: !1023)
!1023 = !{!1024, !1031}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1022, file: !767, line: 724, baseType: !1025, size: 32)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !767, line: 719, size: 32, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1025, file: !767, line: 720, baseType: !99, size: 8)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1025, file: !767, line: 721, baseType: !99, size: 8, offset: 8)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1025, file: !767, line: 722, baseType: !99, size: 8, offset: 16)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1025, file: !767, line: 723, baseType: !99, size: 8, offset: 24)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1022, file: !767, line: 725, baseType: !394, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !766, file: !767, line: 850, baseType: !113, size: 128, offset: 8192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !766, file: !767, line: 851, baseType: !1034, size: 64, offset: 8320)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !767, line: 60, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !766, file: !767, line: 855, baseType: !55, size: 64, offset: 8384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !766, file: !767, line: 856, baseType: !99, size: 8, offset: 8448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !766, file: !767, line: 857, baseType: !99, size: 8, offset: 8456)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !766, file: !767, line: 858, baseType: !38, size: 32, offset: 8480)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !766, file: !767, line: 859, baseType: !113, size: 128, offset: 8512)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !766, file: !767, line: 860, baseType: !38, size: 32, offset: 8640)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !766, file: !767, line: 861, baseType: !113, size: 128, offset: 8704)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !766, file: !767, line: 873, baseType: !1044, size: 256, offset: 8832)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !767, line: 376, size: 256, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1044, file: !767, line: 381, baseType: !55, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1044, file: !767, line: 384, baseType: !400, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1044, file: !767, line: 389, baseType: !400, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1044, file: !767, line: 392, baseType: !400, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !766, file: !767, line: 875, baseType: !113, size: 128, offset: 9088)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !766, file: !767, line: 877, baseType: !1052, size: 320, offset: 9216)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1053, line: 86, size: 320, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1052, file: !1053, line: 87, baseType: !38, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1052, file: !1053, line: 88, baseType: !113, size: 128, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1052, file: !1053, line: 89, baseType: !113, size: 128, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !766, file: !767, line: 878, baseType: !814, size: 192, align: 64, offset: 9536)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !766, file: !767, line: 881, baseType: !1060, size: 64, offset: 9728)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !130, line: 733, size: 10240, elements: !1062)
!1062 = !{!1063, !1516}
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !130, line: 734, baseType: !1064, size: 10240)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !130, line: 734, size: 10240, elements: !1065)
!1065 = !{!1066, !1070, !1084, !1088, !1089, !1090, !1091, !1092, !1093, !1102, !1103, !1104, !1110, !1111, !1112, !1113, !1114, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1151, !1163, !1166, !1236, !1237, !1238, !1241, !1502, !1503, !1506, !1507, !1508, !1514, !1515}
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !130, line: 739, baseType: !1067, size: 512, align: 512)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1064, file: !130, line: 739, size: 512, align: 512, elements: !1068)
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1067, file: !130, line: 747, baseType: !65, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1064, file: !130, line: 750, baseType: !1071, size: 128, offset: 512)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1072, line: 218, size: 128, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1073 = !{!1074, !1082, !1083}
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !1072, line: 219, baseType: !1075, size: 32)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !1072, line: 219, size: 32, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1075, file: !1072, line: 220, baseType: !75, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1075, file: !1072, line: 221, baseType: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1072, line: 197, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1072, line: 197, elements: !1081)
!1081 = !{}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1071, file: !1072, line: 223, baseType: !17, size: 32, offset: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1071, file: !1072, line: 224, baseType: !36, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1064, file: !130, line: 752, baseType: !1085, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!55, !637, !55, !55, !55, !55}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1064, file: !130, line: 756, baseType: !55, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1064, file: !130, line: 757, baseType: !55, size: 64, offset: 768)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1064, file: !130, line: 760, baseType: !55, size: 64, offset: 832)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1064, file: !130, line: 761, baseType: !55, size: 64, offset: 896)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1064, file: !130, line: 763, baseType: !55, size: 64, offset: 960)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1064, file: !130, line: 764, baseType: !1094, size: 64, offset: 1024)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1096, line: 299, baseType: !1097)
!1096 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 299, size: 64, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1097, file: !1096, line: 299, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1101, line: 18, baseType: !55)
!1101 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1064, file: !130, line: 773, baseType: !65, size: 32, offset: 1088)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1064, file: !130, line: 785, baseType: !65, size: 32, offset: 1120)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1064, file: !130, line: 795, baseType: !1105, size: 64, offset: 1152)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !130, line: 726, size: 128, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1106, file: !130, line: 727, baseType: !398, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1106, file: !130, line: 728, baseType: !38, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1064, file: !130, line: 801, baseType: !55, size: 64, offset: 1216)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1064, file: !130, line: 804, baseType: !663, size: 64, offset: 1280)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1064, file: !130, line: 806, baseType: !38, size: 32, offset: 1344)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1064, file: !130, line: 808, baseType: !75, size: 32, offset: 1376)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1064, file: !130, line: 823, baseType: !1115, size: 320, offset: 1408)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1116, line: 48, size: 320, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1117 = !{!1118, !1119, !1120, !1121, !1122}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1115, file: !1116, line: 49, baseType: !663, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1115, file: !1116, line: 55, baseType: !663, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1115, file: !1116, line: 57, baseType: !679, size: 32, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1115, file: !1116, line: 59, baseType: !677, size: 32, offset: 160)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1115, file: !1116, line: 60, baseType: !113, size: 128, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1064, file: !130, line: 825, baseType: !113, size: 128, offset: 1728)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1064, file: !130, line: 845, baseType: !38, size: 32, offset: 1856)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1064, file: !130, line: 849, baseType: !55, size: 64, offset: 1920)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1064, file: !130, line: 850, baseType: !55, size: 64, offset: 1984)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1064, file: !130, line: 852, baseType: !55, size: 64, offset: 2048)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1064, file: !130, line: 853, baseType: !55, size: 64, offset: 2112)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1064, file: !130, line: 854, baseType: !665, size: 64, offset: 2176)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1064, file: !130, line: 855, baseType: !55, size: 64, offset: 2240)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1064, file: !130, line: 856, baseType: !55, size: 64, offset: 2304)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1064, file: !130, line: 857, baseType: !55, size: 64, offset: 2368)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1064, file: !130, line: 858, baseType: !55, size: 64, offset: 2432)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1064, file: !130, line: 865, baseType: !371, size: 32, offset: 2496)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1064, file: !130, line: 867, baseType: !75, size: 32, offset: 2528)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1064, file: !130, line: 869, baseType: !55, size: 64, offset: 2560)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1064, file: !130, line: 869, baseType: !55, size: 64, offset: 2624)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1064, file: !130, line: 869, baseType: !55, size: 64, offset: 2688)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1064, file: !130, line: 869, baseType: !55, size: 64, offset: 2752)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1064, file: !130, line: 870, baseType: !55, size: 64, offset: 2816)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1064, file: !130, line: 870, baseType: !55, size: 64, offset: 2880)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1064, file: !130, line: 870, baseType: !55, size: 64, offset: 2944)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1064, file: !130, line: 871, baseType: !55, size: 64, offset: 3008)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1064, file: !130, line: 871, baseType: !55, size: 64, offset: 3072)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1064, file: !130, line: 871, baseType: !55, size: 64, offset: 3136)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1064, file: !130, line: 871, baseType: !55, size: 64, offset: 3200)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1064, file: !130, line: 873, baseType: !1148, size: 3328, offset: 3264)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3328, elements: !1149)
!1149 = !{!1150}
!1150 = !DISubrange(count: 52)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1064, file: !130, line: 875, baseType: !1152, size: 1280, offset: 6592)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 1280, elements: !733)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1154, line: 22, size: 320, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1155 = !{!1156, !1157, !1158, !1159}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1153, file: !1154, line: 23, baseType: !677, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1153, file: !1154, line: 24, baseType: !669, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1153, file: !1154, line: 26, baseType: !113, size: 128, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1153, file: !1154, line: 28, baseType: !1160, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !100, line: 20, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !102, line: 26, baseType: !38)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1064, file: !130, line: 877, baseType: !1164, size: 64, offset: 7872)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !130, line: 877, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1064, file: !130, line: 880, baseType: !1167, size: 1088, offset: 7936)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1168, line: 72, baseType: !1169)
!1168 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1168, line: 23, size: 1088, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1200, !1201, !1202, !1203, !1230, !1231, !1232}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1169, file: !1168, line: 28, baseType: !398, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1169, file: !1168, line: 38, baseType: !665, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1169, file: !1168, line: 40, baseType: !55, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1169, file: !1168, line: 43, baseType: !1115, size: 320, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1169, file: !1168, line: 44, baseType: !1176, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1178, line: 30, size: 128, elements: !1179)
!1178 = !DIFile(filename: "./arch/x86/include/asm/mmu_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7349a2ab0563256af671ddc4b36d96")
!1179 = !{!1180, !1198, !1199}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1177, file: !1178, line: 37, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1183, line: 16, size: 64, elements: !1184)
!1183 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1182, file: !1183, line: 17, baseType: !109, size: 16)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1182, file: !1183, line: 18, baseType: !109, size: 16, offset: 16)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1182, file: !1183, line: 19, baseType: !109, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1182, file: !1183, line: 19, baseType: !109, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1182, file: !1183, line: 19, baseType: !109, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1182, file: !1183, line: 19, baseType: !109, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1182, file: !1183, line: 19, baseType: !109, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1182, file: !1183, line: 20, baseType: !109, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1182, file: !1183, line: 20, baseType: !109, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1182, file: !1183, line: 20, baseType: !109, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1182, file: !1183, line: 20, baseType: !109, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1182, file: !1183, line: 20, baseType: !109, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1182, file: !1183, line: 20, baseType: !109, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !1177, file: !1178, line: 38, baseType: !17, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !1177, file: !1178, line: 49, baseType: !38, size: 32, offset: 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1169, file: !1168, line: 48, baseType: !55, size: 64, offset: 576)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1169, file: !1168, line: 59, baseType: !672, size: 256, offset: 640)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1169, file: !1168, line: 60, baseType: !36, size: 64, offset: 896)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1169, file: !1168, line: 61, baseType: !1204, size: 64, offset: 960)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1207, line: 13, size: 1216, elements: !1208)
!1207 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1206, file: !1207, line: 14, baseType: !36, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1206, file: !1207, line: 15, baseType: !55, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1206, file: !1207, line: 17, baseType: !55, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1206, file: !1207, line: 17, baseType: !55, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1206, file: !1207, line: 18, baseType: !55, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1206, file: !1207, line: 18, baseType: !55, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1206, file: !1207, line: 19, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1206, file: !1207, line: 21, baseType: !598, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1206, file: !1207, line: 23, baseType: !598, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1206, file: !1207, line: 24, baseType: !598, size: 64, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1206, file: !1207, line: 25, baseType: !598, size: 64, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1206, file: !1207, line: 26, baseType: !598, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1206, file: !1207, line: 27, baseType: !598, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1206, file: !1207, line: 28, baseType: !598, size: 64, offset: 832)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1206, file: !1207, line: 29, baseType: !598, size: 64, offset: 896)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1206, file: !1207, line: 30, baseType: !598, size: 64, offset: 960)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1206, file: !1207, line: 31, baseType: !598, size: 64, offset: 1024)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1206, file: !1207, line: 32, baseType: !598, size: 64, offset: 1088)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1206, file: !1207, line: 33, baseType: !598, size: 64, offset: 1152)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1169, file: !1168, line: 63, baseType: !65, size: 32, offset: 1024)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1169, file: !1168, line: 69, baseType: !109, size: 16, offset: 1056)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1169, file: !1168, line: 70, baseType: !1233, size: 16, offset: 1072)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !100, line: 18, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !102, line: 23, baseType: !1235)
!1235 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1064, file: !130, line: 882, baseType: !55, size: 64, offset: 9024)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1064, file: !130, line: 885, baseType: !75, size: 32, offset: 9088)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1064, file: !130, line: 886, baseType: !1239, size: 64, offset: 9152)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !130, line: 732, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1064, file: !130, line: 901, baseType: !1242, size: 64, offset: 9216)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1244, line: 68, size: 4800, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1245 = !{!1246, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1285, !1286, !1289, !1290, !1400, !1401, !1413, !1483, !1484, !1498, !1500}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1243, file: !1244, line: 69, baseType: !1247, size: 576)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1244, line: 23, size: 576, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1247, file: !1244, line: 24, baseType: !394, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !1244, line: 25, baseType: !1251, size: 512, offset: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !1244, line: 25, size: 512, elements: !1252)
!1252 = !{!1253, !1262}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1251, file: !1244, line: 26, baseType: !1254, size: 480)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1255, size: 480, elements: !1260)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1244, line: 17, size: 96, elements: !1256)
!1256 = !{!1257, !1258, !1259}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1255, file: !1244, line: 18, baseType: !394, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1255, file: !1244, line: 19, baseType: !394, size: 32, offset: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1255, file: !1244, line: 20, baseType: !394, size: 32, offset: 64)
!1260 = !{!1261}
!1261 = !DISubrange(count: 5)
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !1244, line: 27, baseType: !1263, size: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !1244, line: 27, size: 128, elements: !1264)
!1264 = !{!1265, !1267}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1263, file: !1244, line: 28, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1263, file: !1244, line: 29, baseType: !1266, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1243, file: !1244, line: 70, baseType: !1247, size: 576, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1243, file: !1244, line: 71, baseType: !1247, size: 576, offset: 1152)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1243, file: !1244, line: 72, baseType: !1242, size: 64, offset: 1728)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1243, file: !1244, line: 73, baseType: !38, size: 32, offset: 1792)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1243, file: !1244, line: 74, baseType: !331, size: 32, offset: 1824)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1243, file: !1244, line: 75, baseType: !340, size: 32, offset: 1856)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1243, file: !1244, line: 76, baseType: !1275, size: 192, offset: 1920)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1276, line: 9, size: 192, elements: !1277)
!1276 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1277 = !{!1278, !1279, !1283, !1284}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1275, file: !1276, line: 10, baseType: !663, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1275, file: !1276, line: 11, baseType: !1280, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1276, line: 7, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1275, file: !1276, line: 12, baseType: !17, size: 32, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1275, file: !1276, line: 13, baseType: !715, size: 32, offset: 160)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1243, file: !1244, line: 77, baseType: !55, size: 64, offset: 2112)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1243, file: !1244, line: 80, baseType: !1287, size: 8, offset: 2176)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 35, baseType: !1288)
!1288 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1243, file: !1244, line: 88, baseType: !113, size: 128, offset: 2240)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1243, file: !1244, line: 89, baseType: !1291, size: 64, offset: 2368)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1293, line: 195, size: 1728, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1294 = !{!1295, !1296, !1299, !1304, !1305, !1308, !1309, !1316, !1317, !1318, !1319, !1322, !1323, !1324, !1325, !1326, !1364, !1385}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1292, file: !1293, line: 196, baseType: !715, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1292, file: !1293, line: 197, baseType: !1297, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1293, line: 28, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !41, line: 104, baseType: !1161)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1293, line: 198, baseType: !1300, size: 192, offset: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1293, line: 198, size: 192, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1300, file: !1293, line: 199, baseType: !113, size: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1300, file: !1293, line: 200, baseType: !814, size: 192, align: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1292, file: !1293, line: 205, baseType: !1115, size: 320, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1292, file: !1293, line: 206, baseType: !1306, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1293, line: 206, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1292, file: !1293, line: 207, baseType: !36, size: 64, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1293, line: 208, baseType: !1310, size: 64, offset: 704)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1293, line: 208, size: 64, elements: !1311)
!1311 = !{!1312, !1315}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1310, file: !1293, line: 209, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1314, line: 8, baseType: !670)
!1314 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1310, file: !1293, line: 210, baseType: !1313, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1292, file: !1293, line: 212, baseType: !1313, size: 64, offset: 768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1292, file: !1293, line: 213, baseType: !331, size: 32, offset: 832)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1292, file: !1293, line: 214, baseType: !340, size: 32, offset: 864)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1292, file: !1293, line: 215, baseType: !1320, size: 32, offset: 896)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1293, line: 31, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 110, baseType: !394)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1292, file: !1293, line: 216, baseType: !42, size: 16, offset: 928)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1292, file: !1293, line: 217, baseType: !42, size: 16, offset: 944)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1292, file: !1293, line: 221, baseType: !1235, size: 16, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1292, file: !1293, line: 228, baseType: !55, size: 64, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1293, line: 245, baseType: !1327, size: 320, offset: 1088)
!1327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1293, line: 245, size: 320, elements: !1328)
!1328 = !{!1329, !1356}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1327, file: !1293, line: 246, baseType: !1330, size: 320)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1293, line: 114, size: 320, elements: !1331)
!1331 = !{!1332, !1333, !1345, !1348, !1355}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1330, file: !1293, line: 116, baseType: !55, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !1293, line: 117, baseType: !1334, size: 64, offset: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !1293, line: 117, size: 64, elements: !1335)
!1335 = !{!1336, !1344}
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1334, file: !1293, line: 118, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1334, file: !1293, line: 118, size: 64, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1337, file: !1293, line: 120, baseType: !109, size: 16)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1337, file: !1293, line: 121, baseType: !1341, size: 48, offset: 16)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 6)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1334, file: !1293, line: 127, baseType: !55, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1330, file: !1293, line: 129, baseType: !1346, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1293, line: 102, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1330, file: !1293, line: 130, baseType: !1349, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1293, line: 108, size: 192, elements: !1351)
!1351 = !{!1352, !1353, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1350, file: !1293, line: 109, baseType: !650, size: 128, align: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1350, file: !1293, line: 110, baseType: !715, size: 32, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1350, file: !1293, line: 111, baseType: !1287, size: 8, offset: 160)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1330, file: !1293, line: 131, baseType: !33, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1327, file: !1293, line: 247, baseType: !1357, size: 320)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1327, file: !1293, line: 247, size: 320, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1357, file: !1293, line: 248, baseType: !55, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1357, file: !1293, line: 249, baseType: !55, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1357, file: !1293, line: 250, baseType: !1346, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1357, file: !1293, line: 251, baseType: !1349, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1357, file: !1293, line: 252, baseType: !464, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1293, line: 260, baseType: !1365, size: 256, offset: 1408)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1293, line: 260, size: 256, elements: !1366)
!1366 = !{!1367, !1373}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1365, file: !1293, line: 261, baseType: !1368, size: 256)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1293, line: 134, size: 256, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1368, file: !1293, line: 135, baseType: !36, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1368, file: !1293, line: 136, baseType: !1372, size: 256)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !733)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1293, line: 262, baseType: !1374, size: 256)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1293, line: 262, size: 256, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1374, file: !1293, line: 264, baseType: !113, size: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1374, file: !1293, line: 265, baseType: !1378, size: 128, offset: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1379, line: 22, size: 128, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1380 = !{!1381, !1384}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1378, file: !1379, line: 23, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1379, line: 23, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1378, file: !1379, line: 24, baseType: !55, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1292, file: !1293, line: 280, baseType: !1386, size: 64, offset: 1664)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1293, line: 176, size: 192, elements: !1388)
!1388 = !{!1389, !1398, !1399}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1387, file: !1293, line: 177, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1293, line: 171, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!38, !1291, !1394, !1396, !1291}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1387, file: !1293, line: 178, baseType: !1291, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1387, file: !1293, line: 179, baseType: !1346, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1243, file: !1244, line: 90, baseType: !1115, size: 320, offset: 2432)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1243, file: !1244, line: 97, baseType: !1402, size: 256, offset: 2752)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1403, line: 98, size: 256, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1404 = !{!1405, !1406, !1407}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1402, file: !1403, line: 99, baseType: !663, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1402, file: !1403, line: 100, baseType: !113, size: 128, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1402, file: !1403, line: 101, baseType: !1408, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1403, line: 21, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1243, file: !1244, line: 99, baseType: !1414, size: 768, offset: 3008)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !29, line: 199, size: 768, elements: !1415)
!1415 = !{!1416, !1421}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1414, file: !29, line: 200, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!38, !1420}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1414, file: !29, line: 201, baseType: !1422, size: 704, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !29, line: 193, size: 704, elements: !1423)
!1423 = !{!1424, !1482}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1422, file: !29, line: 195, baseType: !1425, size: 640)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !29, line: 173, size: 640, elements: !1426)
!1426 = !{!1427, !1439, !1451, !1452, !1472, !1473, !1475, !1481}
!1427 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !29, line: 174, baseType: !1428, size: 192)
!1428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !29, line: 174, size: 192, elements: !1429)
!1429 = !{!1430, !1438}
!1430 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !29, line: 175, baseType: !1431, size: 192)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1428, file: !29, line: 175, size: 192, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1437}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1431, file: !29, line: 176, baseType: !49, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1431, file: !29, line: 177, baseType: !38, size: 32, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1431, file: !29, line: 178, baseType: !38, size: 32, offset: 96)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1431, file: !29, line: 179, baseType: !38, size: 32, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1431, file: !29, line: 180, baseType: !38, size: 32, offset: 160)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1428, file: !29, line: 182, baseType: !650, size: 128, align: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1425, file: !29, line: 184, baseType: !1440, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1442, line: 26, size: 256, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1441, file: !1442, line: 27, baseType: !17, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1441, file: !1442, line: 28, baseType: !1446, size: 192, offset: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1447, line: 43, size: 192, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1446, file: !1447, line: 44, baseType: !677, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1446, file: !1447, line: 45, baseType: !113, size: 128, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1425, file: !29, line: 185, baseType: !49, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1425, file: !29, line: 186, baseType: !1453, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !29, line: 204, size: 960, elements: !1455)
!1455 = !{!1456, !1457, !1461, !1468}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1454, file: !29, line: 205, baseType: !1414, size: 768)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1454, file: !29, line: 206, baseType: !1458, size: 64, offset: 768)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1420, !1453}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1454, file: !29, line: 207, baseType: !1462, size: 64, offset: 832)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !1465, !1466, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1454, file: !29, line: 209, baseType: !1469, size: 64, offset: 896)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!38, !1465, !49}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1425, file: !29, line: 187, baseType: !1420, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1425, file: !29, line: 188, baseType: !1474, size: 64, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1425, file: !29, line: 189, baseType: !1476, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !29, line: 157, size: 256, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1477, file: !29, line: 158, baseType: !814, size: 192, align: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1477, file: !29, line: 159, baseType: !1465, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1425, file: !29, line: 190, baseType: !724, size: 64, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1422, file: !29, line: 196, baseType: !946, size: 64, offset: 640)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1243, file: !1244, line: 100, baseType: !1465, size: 64, offset: 3776)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1243, file: !1244, line: 102, baseType: !1485, size: 64, offset: 3840)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1244, line: 107, size: 1152, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1496}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1486, file: !1244, line: 108, baseType: !728, size: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1486, file: !1244, line: 109, baseType: !1242, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1486, file: !1244, line: 110, baseType: !331, size: 32, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1486, file: !1244, line: 111, baseType: !65, size: 32, offset: 224)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1486, file: !1244, line: 112, baseType: !1493, size: 640, offset: 256)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 640, elements: !1494)
!1494 = !{!1495}
!1495 = !DISubrange(count: 10)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1486, file: !1244, line: 113, baseType: !1497, size: 256, offset: 896)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 256, elements: !733)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1243, file: !1244, line: 103, baseType: !1499, size: 640, offset: 3904)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 640, elements: !1494)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1243, file: !1244, line: 104, baseType: !1501, size: 256, offset: 4544)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 256, elements: !733)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1064, file: !130, line: 904, baseType: !637, size: 64, offset: 9280)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1064, file: !130, line: 906, baseType: !1504, size: 64, offset: 9344)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !130, line: 906, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1064, file: !130, line: 930, baseType: !65, size: 32, offset: 9408)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1064, file: !130, line: 933, baseType: !65, size: 32, offset: 9440)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1064, file: !130, line: 935, baseType: !1509, size: 64, offset: 9472)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !146, line: 103, size: 64, elements: !1510)
!1510 = !{!1511}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1509, file: !146, line: 104, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !146, line: 101, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1064, file: !130, line: 940, baseType: !663, size: 64, offset: 9536)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1064, file: !130, line: 942, baseType: !1402, size: 256, offset: 9600)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1061, file: !130, line: 986, baseType: !1517, offset: 10240)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, elements: !1518)
!1518 = !{!1519}
!1519 = !DISubrange(count: -1)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !766, file: !767, line: 882, baseType: !1060, size: 64, offset: 9792)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !766, file: !767, line: 884, baseType: !38, size: 32, offset: 9856)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !766, file: !767, line: 885, baseType: !38, size: 32, offset: 9888)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !766, file: !767, line: 886, baseType: !38, size: 32, offset: 9920)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !766, file: !767, line: 888, baseType: !38, size: 32, offset: 9952)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !766, file: !767, line: 890, baseType: !55, size: 64, offset: 9984)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !766, file: !767, line: 893, baseType: !17, size: 32, offset: 10048)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !766, file: !767, line: 896, baseType: !17, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !766, file: !767, line: 897, baseType: !17, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !766, file: !767, line: 898, baseType: !17, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !766, file: !767, line: 899, baseType: !17, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !766, file: !767, line: 919, baseType: !17, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !766, file: !767, line: 922, baseType: !17, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !766, file: !767, line: 923, baseType: !17, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !766, file: !767, line: 925, baseType: !17, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !766, file: !767, line: 939, baseType: !17, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !766, file: !767, line: 941, baseType: !17, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !766, file: !767, line: 944, baseType: !17, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !766, file: !767, line: 956, baseType: !17, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !766, file: !767, line: 962, baseType: !17, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !766, file: !767, line: 966, baseType: !17, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !766, file: !767, line: 969, baseType: !55, size: 64, offset: 10176)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !766, file: !767, line: 971, baseType: !1543, size: 448, offset: 10240)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !124, line: 25, size: 448, elements: !1544)
!1544 = !{!1545, !1546, !1551}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1543, file: !124, line: 26, baseType: !55, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1543, file: !124, line: 27, baseType: !1547, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!598, !1550}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !124, line: 28, baseType: !1552, size: 320, offset: 128)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !124, line: 28, size: 320, elements: !1553)
!1553 = !{!1554, !1564, !1589}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1552, file: !124, line: 37, baseType: !1555, size: 320)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !124, line: 30, size: 320, elements: !1556)
!1556 = !{!1557, !1559, !1560, !1561, !1562, !1563}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1555, file: !124, line: 31, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1555, file: !124, line: 32, baseType: !394, size: 32, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1555, file: !124, line: 33, baseType: !394, size: 32, offset: 96)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1555, file: !124, line: 34, baseType: !394, size: 32, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1555, file: !124, line: 35, baseType: !398, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1555, file: !124, line: 36, baseType: !1558, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1552, file: !124, line: 47, baseType: !1565, size: 192)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !124, line: 39, size: 192, elements: !1566)
!1566 = !{!1567, !1568, !1569, !1588}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1565, file: !124, line: 40, baseType: !931, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1565, file: !124, line: 41, baseType: !123, size: 32, offset: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !124, line: 42, baseType: !1570, size: 64, offset: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1565, file: !124, line: 42, size: 64, elements: !1571)
!1571 = !{!1572, !1580}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1570, file: !124, line: 43, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1575, line: 7, size: 128, elements: !1576)
!1575 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1576 = !{!1577, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1574, file: !1575, line: 8, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !53, line: 93, baseType: !59)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1574, file: !1575, line: 9, baseType: !59, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1570, file: !124, line: 44, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1583, line: 7, size: 64, elements: !1584)
!1583 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1584 = !{!1585, !1587}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1582, file: !1583, line: 8, baseType: !1586, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1583, line: 5, baseType: !1161)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1582, file: !1583, line: 9, baseType: !1161, size: 32, offset: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1565, file: !124, line: 46, baseType: !398, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1552, file: !124, line: 55, baseType: !1590, size: 256)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !124, line: 49, size: 256, elements: !1591)
!1591 = !{!1592, !1600, !1601, !1602, !1603}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1590, file: !124, line: 50, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1595, line: 36, size: 64, elements: !1596)
!1595 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1596 = !{!1597, !1598, !1599}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1594, file: !1595, line: 37, baseType: !38, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1594, file: !1595, line: 38, baseType: !1235, size: 16, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1594, file: !1595, line: 39, baseType: !1235, size: 16, offset: 48)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1590, file: !124, line: 51, baseType: !38, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1590, file: !124, line: 52, baseType: !38, size: 32, offset: 96)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1590, file: !124, line: 53, baseType: !55, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1590, file: !124, line: 54, baseType: !55, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !766, file: !767, line: 973, baseType: !1605, size: 32, offset: 10688)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !41, line: 27, baseType: !1606)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !53, line: 28, baseType: !38)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !766, file: !767, line: 974, baseType: !1605, size: 32, offset: 10720)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !766, file: !767, line: 978, baseType: !55, size: 64, offset: 10752)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !766, file: !767, line: 987, baseType: !765, size: 64, offset: 10816)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !766, file: !767, line: 990, baseType: !765, size: 64, offset: 10880)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !766, file: !767, line: 995, baseType: !113, size: 128, offset: 10944)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !766, file: !767, line: 996, baseType: !113, size: 128, offset: 11072)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !766, file: !767, line: 997, baseType: !765, size: 64, offset: 11200)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !766, file: !767, line: 1005, baseType: !113, size: 128, offset: 11264)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !766, file: !767, line: 1006, baseType: !113, size: 128, offset: 11392)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !766, file: !767, line: 1009, baseType: !711, size: 64, offset: 11520)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !766, file: !767, line: 1010, baseType: !1618, size: 512, offset: 11584)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 512, elements: !733)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !766, file: !767, line: 1011, baseType: !113, size: 128, offset: 12096)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !766, file: !767, line: 1012, baseType: !113, size: 128, offset: 12224)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !766, file: !767, line: 1014, baseType: !1440, size: 64, offset: 12352)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !766, file: !767, line: 1017, baseType: !1623, size: 64, offset: 12416)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !766, file: !767, line: 1020, baseType: !1623, size: 64, offset: 12480)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !766, file: !767, line: 1023, baseType: !36, size: 64, offset: 12544)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !766, file: !767, line: 1025, baseType: !398, size: 64, offset: 12608)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !766, file: !767, line: 1026, baseType: !398, size: 64, offset: 12672)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !766, file: !767, line: 1031, baseType: !398, size: 64, offset: 12736)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !766, file: !767, line: 1032, baseType: !1630, size: 192, offset: 12800)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !767, line: 324, size: 192, elements: !1631)
!1631 = !{!1632, !1633, !1634}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1630, file: !767, line: 326, baseType: !398, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1630, file: !767, line: 327, baseType: !398, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1630, file: !767, line: 328, baseType: !677, size: 32, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !766, file: !767, line: 1041, baseType: !55, size: 64, offset: 12992)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !766, file: !767, line: 1042, baseType: !55, size: 64, offset: 13056)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !766, file: !767, line: 1045, baseType: !398, size: 64, offset: 13120)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !766, file: !767, line: 1048, baseType: !398, size: 64, offset: 13184)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !766, file: !767, line: 1051, baseType: !55, size: 64, offset: 13248)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !766, file: !767, line: 1052, baseType: !55, size: 64, offset: 13312)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !766, file: !767, line: 1055, baseType: !1642, size: 640, offset: 13376)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1643, line: 132, size: 640, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1644 = !{!1645, !1651, !1652}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1642, file: !1643, line: 133, baseType: !1646, size: 576)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1647, size: 576, elements: !564)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1643, line: 117, size: 192, elements: !1648)
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1647, file: !1643, line: 118, baseType: !398, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1647, file: !1643, line: 119, baseType: !940, size: 128, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1642, file: !1643, line: 134, baseType: !17, size: 32, offset: 576)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1642, file: !1643, line: 135, baseType: !17, size: 32, offset: 608)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !766, file: !767, line: 1058, baseType: !1654, size: 448, offset: 14016)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1643, line: 144, size: 448, elements: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1654, file: !1643, line: 145, baseType: !650, size: 128, align: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1654, file: !1643, line: 146, baseType: !672, size: 256, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1654, file: !1643, line: 147, baseType: !17, size: 32, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !766, file: !767, line: 1064, baseType: !1660, size: 64, offset: 14464)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1663, line: 110, size: 1472, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1714, !1715, !1716, !1724}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1662, file: !1663, line: 111, baseType: !663, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1662, file: !1663, line: 112, baseType: !331, size: 32, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1662, file: !1663, line: 113, baseType: !340, size: 32, offset: 96)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1662, file: !1663, line: 114, baseType: !331, size: 32, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1662, file: !1663, line: 115, baseType: !340, size: 32, offset: 160)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1662, file: !1663, line: 116, baseType: !331, size: 32, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1662, file: !1663, line: 117, baseType: !340, size: 32, offset: 224)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1662, file: !1663, line: 118, baseType: !331, size: 32, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1662, file: !1663, line: 119, baseType: !340, size: 32, offset: 288)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1662, file: !1663, line: 120, baseType: !17, size: 32, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1662, file: !1663, line: 121, baseType: !1676, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1677, line: 24, baseType: !1678)
!1677 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1677, line: 24, size: 64, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1678, file: !1677, line: 24, baseType: !398, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1662, file: !1663, line: 122, baseType: !1676, size: 64, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1662, file: !1663, line: 123, baseType: !1676, size: 64, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1662, file: !1663, line: 124, baseType: !1676, size: 64, offset: 576)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1662, file: !1663, line: 125, baseType: !1676, size: 64, offset: 640)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1662, file: !1663, line: 127, baseType: !103, size: 8, offset: 704)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1662, file: !1663, line: 129, baseType: !1291, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1662, file: !1663, line: 130, baseType: !1291, size: 64, offset: 832)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1662, file: !1663, line: 131, baseType: !1291, size: 64, offset: 896)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1662, file: !1663, line: 132, baseType: !1291, size: 64, offset: 960)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1662, file: !1663, line: 135, baseType: !36, size: 64, offset: 1024)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1662, file: !1663, line: 137, baseType: !1692, size: 64, offset: 1088)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1694, line: 14, size: 1088, elements: !1695)
!1694 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1693, file: !1694, line: 15, baseType: !715, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1693, file: !1694, line: 17, baseType: !1153, size: 320, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1693, file: !1694, line: 19, baseType: !55, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1693, file: !1694, line: 20, baseType: !663, size: 64, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1693, file: !1694, line: 23, baseType: !728, size: 128, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1693, file: !1694, line: 24, baseType: !331, size: 32, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1693, file: !1694, line: 29, baseType: !663, size: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1693, file: !1694, line: 36, baseType: !1704, size: 320, offset: 768)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1705, line: 15, size: 320, elements: !1706)
!1705 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1704, file: !1705, line: 16, baseType: !677, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1704, file: !1705, line: 18, baseType: !38, size: 32, offset: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1704, file: !1705, line: 19, baseType: !38, size: 32, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1704, file: !1705, line: 20, baseType: !38, size: 32, offset: 96)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1704, file: !1705, line: 21, baseType: !38, size: 32, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1704, file: !1705, line: 22, baseType: !55, size: 64, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1704, file: !1705, line: 23, baseType: !55, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1662, file: !1663, line: 138, baseType: !1242, size: 64, offset: 1152)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1662, file: !1663, line: 139, baseType: !1485, size: 64, offset: 1216)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1662, file: !1663, line: 140, baseType: !1717, size: 64, offset: 1280)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1663, line: 25, size: 64, elements: !1719)
!1719 = !{!1720, !1721, !1722}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1718, file: !1663, line: 26, baseType: !65, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1718, file: !1663, line: 27, baseType: !38, size: 32, offset: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1718, file: !1663, line: 28, baseType: !1723, offset: 64)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !1518)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1663, line: 142, baseType: !1725, size: 128, offset: 1344)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !1663, line: 142, size: 128, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1725, file: !1663, line: 143, baseType: !38, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1725, file: !1663, line: 144, baseType: !650, size: 128, align: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !766, file: !767, line: 1067, baseType: !1660, size: 64, offset: 14528)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !766, file: !767, line: 1070, baseType: !1660, size: 64, offset: 14592)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !766, file: !767, line: 1074, baseType: !1291, size: 64, offset: 14656)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !766, file: !767, line: 1084, baseType: !1733, size: 128, offset: 14720)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1734)
!1734 = !{!1735}
!1735 = !DISubrange(count: 16)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !766, file: !767, line: 1086, baseType: !1737, size: 64, offset: 14848)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !767, line: 55, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !766, file: !767, line: 1089, baseType: !1740, size: 64, offset: 14912)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1741, line: 12, size: 64, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1742 = !{!1743}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1740, file: !1741, line: 13, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1741, line: 8, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !766, file: !767, line: 1090, baseType: !1747, size: 128, offset: 14976)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1748, line: 13, size: 128, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1749 = !{!1750}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1747, file: !1748, line: 14, baseType: !113, size: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !766, file: !767, line: 1097, baseType: !1752, size: 64, offset: 15104)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !767, line: 50, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !766, file: !767, line: 1100, baseType: !1755, size: 64, offset: 15168)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !767, line: 1100, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !766, file: !767, line: 1103, baseType: !1758, size: 64, offset: 15232)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !767, line: 53, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !766, file: !767, line: 1107, baseType: !1761, size: 64, offset: 15296)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1763, line: 31, size: 576, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1764 = !{!1765, !1766, !1769, !1772, !1775, !1776, !1779, !1782, !1783}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1762, file: !1763, line: 32, baseType: !715, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1762, file: !1763, line: 33, baseType: !1767, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1763, line: 9, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1762, file: !1763, line: 34, baseType: !1770, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1763, line: 10, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1762, file: !1763, line: 35, baseType: !1773, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1763, line: 8, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1762, file: !1763, line: 36, baseType: !744, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1762, file: !1763, line: 37, baseType: !1777, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1293, line: 34, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1762, file: !1763, line: 38, baseType: !1780, size: 64, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1763, line: 38, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1762, file: !1763, line: 39, baseType: !1780, size: 64, offset: 448)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1762, file: !1763, line: 40, baseType: !1784, size: 64, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1786, line: 771, size: 384, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1787 = !{!1788, !1789, !1790, !1791}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1785, file: !1786, line: 772, baseType: !1275, size: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1785, file: !1786, line: 773, baseType: !1242, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1785, file: !1786, line: 774, baseType: !1485, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1785, file: !1786, line: 775, baseType: !1792, size: 64, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1794, line: 209, size: 4736, elements: !1795)
!1794 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1795 = !{!1796, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1793, file: !1794, line: 215, baseType: !1797, size: 896)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1798, size: 896, elements: !2166)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1794, line: 152, size: 1600, elements: !1800)
!1800 = !{!1801, !2217, !2323, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2360}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1799, file: !1794, line: 154, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1794, line: 389, size: 7872, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !2117, !2134, !2135, !2139, !2140, !2141, !2142, !2143, !2144, !2163, !2164, !2168, !2169, !2170, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2204, !2207, !2208, !2215}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1803, file: !1794, line: 391, baseType: !1799, size: 1600)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1803, file: !1794, line: 393, baseType: !55, size: 64, offset: 1600)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1803, file: !1794, line: 401, baseType: !38, size: 32, offset: 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1803, file: !1794, line: 404, baseType: !38, size: 32, offset: 1696)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1803, file: !1794, line: 417, baseType: !38, size: 32, offset: 1728)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1803, file: !1794, line: 418, baseType: !38, size: 32, offset: 1760)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1803, file: !1794, line: 419, baseType: !38, size: 32, offset: 1792)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1803, file: !1794, line: 432, baseType: !38, size: 32, offset: 1824)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1803, file: !1794, line: 433, baseType: !38, size: 32, offset: 1856)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1803, file: !1794, line: 434, baseType: !38, size: 32, offset: 1888)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1803, file: !1794, line: 436, baseType: !38, size: 32, offset: 1920)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1803, file: !1794, line: 439, baseType: !17, size: 32, offset: 1952)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1803, file: !1794, line: 441, baseType: !1818, size: 64, offset: 1984)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1820, line: 190, size: 1152, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !2109, !2110, !2111, !2112, !2113, !2116}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1819, file: !1820, line: 191, baseType: !65, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1819, file: !1820, line: 192, baseType: !65, size: 32, offset: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1819, file: !1820, line: 202, baseType: !1818, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1819, file: !1820, line: 203, baseType: !33, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1819, file: !1820, line: 205, baseType: !814, size: 192, align: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1819, file: !1820, line: 207, baseType: !1216, size: 64, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1819, file: !1820, line: 208, baseType: !17, size: 32, offset: 448)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1819, file: !1820, line: 209, baseType: !1830, size: 256, offset: 512)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1819, file: !1820, line: 209, size: 256, elements: !1831)
!1831 = !{!1832, !1841, !1845}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1830, file: !1820, line: 210, baseType: !1833, size: 256)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1820, line: 153, size: 256, elements: !1834)
!1834 = !{!1835, !1836, !1837, !1840}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1833, file: !1820, line: 154, baseType: !55, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1833, file: !1820, line: 156, baseType: !946, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1833, file: !1820, line: 162, baseType: !1838, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1820, line: 162, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1833, file: !1820, line: 167, baseType: !55, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1830, file: !1820, line: 211, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1820, line: 170, size: 64, elements: !1843)
!1843 = !{!1844}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1842, file: !1820, line: 171, baseType: !1818, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1830, file: !1820, line: 212, baseType: !1846, size: 256)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1820, line: 174, size: 256, elements: !1847)
!1847 = !{!1848, !2104, !2107, !2108}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1846, file: !1820, line: 175, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1820, line: 271, size: 768, elements: !1852)
!1852 = !{!1853, !2068, !2072, !2073, !2074, !2075, !2076, !2080, !2081, !2082, !2083, !2100}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1851, file: !1820, line: 276, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!38, !1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1820, line: 251, size: 1216, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1858, file: !1820, line: 253, baseType: !1818, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1858, file: !1820, line: 254, baseType: !637, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1858, file: !1820, line: 255, baseType: !1863, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1865, line: 17, size: 960, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1866 = !{!1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1896, !1897, !1900}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1864, file: !1865, line: 18, baseType: !464, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1864, file: !1865, line: 19, baseType: !51, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1864, file: !1865, line: 20, baseType: !51, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1864, file: !1865, line: 21, baseType: !51, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1864, file: !1865, line: 22, baseType: !51, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1864, file: !1865, line: 23, baseType: !57, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1864, file: !1865, line: 24, baseType: !57, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1864, file: !1865, line: 25, baseType: !672, size: 256, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1864, file: !1865, line: 26, baseType: !1876, size: 64, offset: 704)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1865, line: 32, size: 256, elements: !1879)
!1879 = !{!1880, !1884, !1888, !1892}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1878, file: !1865, line: 33, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!36, !1863, !56}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1878, file: !1865, line: 34, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1863, !36}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1878, file: !1865, line: 35, baseType: !1889, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!36, !1863, !36, !56}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1878, file: !1865, line: 36, baseType: !1893, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!38, !1863, !36}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1864, file: !1865, line: 27, baseType: !38, size: 32, offset: 768)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1864, file: !1865, line: 28, baseType: !1898, size: 64, offset: 832)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1864, file: !1865, line: 29, baseType: !36, size: 64, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1858, file: !1820, line: 256, baseType: !36, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1858, file: !1820, line: 259, baseType: !672, size: 256, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1858, file: !1820, line: 260, baseType: !672, size: 256, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1858, file: !1820, line: 261, baseType: !38, size: 32, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1858, file: !1820, line: 262, baseType: !113, size: 128, offset: 832)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1858, file: !1820, line: 263, baseType: !464, size: 64, offset: 960)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1858, file: !1820, line: 265, baseType: !51, size: 64, offset: 1024)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1858, file: !1820, line: 266, baseType: !1287, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1858, file: !1820, line: 267, baseType: !1287, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1858, file: !1820, line: 268, baseType: !1911, size: 64, offset: 1152)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1914, line: 563, size: 1024, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1915 = !{!1916, !1972, !1973, !1977, !1981, !1985, !2034, !2038, !2042, !2046, !2047, !2048, !2052, !2056, !2060, !2064}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1913, file: !1914, line: 564, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1920}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !130, line: 625, size: 1344, elements: !1922)
!1922 = !{!1923, !1932, !1933, !1939, !1946, !1947, !1952, !1953, !1958, !1959, !1962, !1963, !1964, !1965, !1966, !1967, !1970}
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !130, line: 628, baseType: !1924, size: 128)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !130, line: 628, size: 128, elements: !1925)
!1925 = !{!1926, !1931}
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !1924, file: !130, line: 629, baseType: !1927, size: 128)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1924, file: !130, line: 629, size: 128, elements: !1928)
!1928 = !{!1929, !1930}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1927, file: !130, line: 631, baseType: !55, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1927, file: !130, line: 632, baseType: !55, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1924, file: !130, line: 635, baseType: !650, size: 128, align: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1921, file: !130, line: 639, baseType: !1060, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1921, file: !130, line: 640, baseType: !1934, size: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1096, line: 297, baseType: !1935)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1096, line: 297, size: 64, elements: !1936)
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1935, file: !1096, line: 297, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1101, line: 19, baseType: !55)
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !130, line: 646, baseType: !1940, size: 64, offset: 256)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !130, line: 646, size: 64, elements: !1941)
!1941 = !{!1942, !1945}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1940, file: !130, line: 647, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1944)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !130, line: 542, baseType: !55)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1940, file: !130, line: 648, baseType: !1944, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1921, file: !130, line: 666, baseType: !38, size: 32, offset: 320)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1921, file: !130, line: 667, baseType: !1948, size: 64, offset: 384)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !130, line: 579, size: 320, elements: !1950)
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1949, file: !130, line: 580, baseType: !1115, size: 320)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1921, file: !130, line: 670, baseType: !1287, size: 8, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1921, file: !130, line: 681, baseType: !1954, size: 256, offset: 512)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !130, line: 678, size: 256, elements: !1955)
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1954, file: !130, line: 679, baseType: !814, size: 192, align: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1954, file: !130, line: 680, baseType: !55, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1921, file: !130, line: 689, baseType: !113, size: 128, offset: 768)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1921, file: !130, line: 691, baseType: !1960, size: 64, offset: 896)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !130, line: 691, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1921, file: !130, line: 694, baseType: !1911, size: 64, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1921, file: !130, line: 697, baseType: !55, size: 64, offset: 1024)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1921, file: !130, line: 699, baseType: !637, size: 64, offset: 1088)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1921, file: !130, line: 700, baseType: !36, size: 64, offset: 1152)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1921, file: !130, line: 711, baseType: !663, size: 64, offset: 1216)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1921, file: !130, line: 717, baseType: !1968, size: 64, offset: 1280)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !130, line: 717, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1921, file: !130, line: 722, baseType: !1971, offset: 1344)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !130, line: 570, elements: !1081)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1913, file: !1914, line: 569, baseType: !1917, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1913, file: !1914, line: 571, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!38, !1920, !55}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1913, file: !1914, line: 572, baseType: !1978, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!38, !1920}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1913, file: !1914, line: 578, baseType: !1982, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!38, !1920, !55, !55, !55}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1913, file: !1914, line: 580, baseType: !1986, size: 64, offset: 320)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !130, line: 1184, baseType: !17)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1914, line: 512, size: 896, elements: !1992)
!1992 = !{!1993, !2001, !2002, !2009, !2016, !2026, !2027, !2028, !2030, !2032}
!1993 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !1914, line: 513, baseType: !1994, size: 320)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1914, line: 513, size: 320, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1994, file: !1914, line: 514, baseType: !1920, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1994, file: !1914, line: 515, baseType: !758, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1994, file: !1914, line: 516, baseType: !55, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1994, file: !1914, line: 517, baseType: !55, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1994, file: !1914, line: 518, baseType: !55, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1991, file: !1914, line: 520, baseType: !129, size: 32, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1991, file: !1914, line: 522, baseType: !2003, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1101, line: 22, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1101, line: 22, size: 64, elements: !2006)
!2006 = !{!2007}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2005, file: !1101, line: 22, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1101, line: 15, baseType: !55)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1991, file: !1914, line: 524, baseType: !2010, size: 64, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1096, line: 372, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 372, size: 64, elements: !2013)
!2013 = !{!2014}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2012, file: !1096, line: 372, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1101, line: 16, baseType: !55)
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !1914, line: 527, baseType: !2017, size: 64, offset: 512)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1991, file: !1914, line: 527, size: 64, elements: !2018)
!2018 = !{!2019, !2025}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2017, file: !1914, line: 528, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1101, line: 21, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1101, line: 21, size: 64, elements: !2022)
!2022 = !{!2023}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2021, file: !1101, line: 21, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1101, line: 14, baseType: !55)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2017, file: !1914, line: 529, baseType: !2004, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1991, file: !1914, line: 534, baseType: !299, size: 64, offset: 576)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1991, file: !1914, line: 535, baseType: !299, size: 64, offset: 640)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1991, file: !1914, line: 541, baseType: !2029, size: 64, offset: 704)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1991, file: !1914, line: 545, baseType: !2031, size: 64, offset: 768)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1991, file: !1914, line: 549, baseType: !2033, size: 64, offset: 832)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1096, line: 520, baseType: !299)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1913, file: !1914, line: 581, baseType: !2035, size: 64, offset: 384)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!1989, !1990, !17}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1913, file: !1914, line: 582, baseType: !2039, size: 64, offset: 448)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!1989, !1990, !55, !55}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1913, file: !1914, line: 584, baseType: !2043, size: 64, offset: 512)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!55, !1920}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1913, file: !1914, line: 588, baseType: !1986, size: 64, offset: 576)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1913, file: !1914, line: 591, baseType: !1986, size: 64, offset: 640)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1913, file: !1914, line: 597, baseType: !2049, size: 64, offset: 704)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!38, !1920, !55, !36, !38, !38}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1913, file: !1914, line: 603, baseType: !2053, size: 64, offset: 768)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!33, !1920}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1913, file: !1914, line: 613, baseType: !2057, size: 64, offset: 832)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!38, !1920, !1968}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1913, file: !1914, line: 625, baseType: !2061, size: 64, offset: 896)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!1968, !1920, !55}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1913, file: !1914, line: 633, baseType: !2065, size: 64, offset: 960)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!299, !1920, !55}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1851, file: !1820, line: 277, baseType: !2069, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !1857}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1851, file: !1820, line: 290, baseType: !1893, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1851, file: !1820, line: 292, baseType: !1881, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1851, file: !1820, line: 293, baseType: !1889, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1851, file: !1820, line: 294, baseType: !1885, size: 64, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1851, file: !1820, line: 296, baseType: !2077, size: 64, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!595, !1857, !464, !51, !57}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1851, file: !1820, line: 306, baseType: !51, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1851, file: !1820, line: 313, baseType: !1287, size: 8, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1851, file: !1820, line: 314, baseType: !2077, size: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1851, file: !1820, line: 317, baseType: !2084, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!2087, !1857, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2088, line: 59, baseType: !17)
!2088 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2091, line: 37, size: 128, elements: !2092)
!2091 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2092 = !{!2093, !2099}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2090, file: !2091, line: 38, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2091, line: 31, baseType: !2095)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !637, !2098, !2089}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2090, file: !2091, line: 39, baseType: !2087, size: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1851, file: !1820, line: 320, baseType: !2101, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!38, !1857, !1920}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1846, file: !1820, line: 176, baseType: !2105, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1820, line: 35, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1846, file: !1820, line: 177, baseType: !57, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1846, file: !1820, line: 178, baseType: !1818, size: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1819, file: !1820, line: 215, baseType: !36, size: 64, offset: 768)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1819, file: !1820, line: 221, baseType: !398, size: 64, offset: 832)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1819, file: !1820, line: 223, baseType: !42, size: 16, offset: 896)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1819, file: !1820, line: 224, baseType: !40, size: 16, offset: 912)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1819, file: !1820, line: 225, baseType: !2114, size: 64, offset: 960)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1820, line: 36, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1819, file: !1820, line: 227, baseType: !650, size: 128, align: 64, offset: 1024)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1803, file: !1794, line: 442, baseType: !2118, size: 448, offset: 2048)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1794, line: 138, size: 448, elements: !2119)
!2119 = !{!2120, !2121, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2118, file: !1794, line: 140, baseType: !1818, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2118, file: !1794, line: 141, baseType: !55, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2118, file: !1794, line: 142, baseType: !2123, size: 320, offset: 128)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2124, line: 11, size: 320, elements: !2125)
!2124 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2125 = !{!2126, !2127, !2128, !2133}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2123, file: !2124, line: 16, baseType: !728, size: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2123, file: !2124, line: 17, baseType: !55, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2123, file: !2124, line: 18, baseType: !2129, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !2124, line: 19, baseType: !394, size: 32, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1803, file: !1794, line: 443, baseType: !2118, size: 448, offset: 2496)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1803, file: !1794, line: 446, baseType: !2136, offset: 2944)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2118, elements: !2137)
!2137 = !{!2138}
!2138 = !DISubrange(count: 0)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1803, file: !1794, line: 455, baseType: !109, size: 16, offset: 2944)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1803, file: !1794, line: 456, baseType: !109, size: 16, offset: 2960)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1803, file: !1794, line: 457, baseType: !109, size: 16, offset: 2976)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1803, file: !1794, line: 458, baseType: !109, size: 16, offset: 2992)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1803, file: !1794, line: 461, baseType: !1797, size: 896, offset: 3008)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1803, file: !1794, line: 463, baseType: !2145, size: 64, offset: 3904)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1794, line: 537, size: 41664, elements: !2147)
!2147 = !{!2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2161}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2146, file: !1794, line: 538, baseType: !1838, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2146, file: !1794, line: 541, baseType: !17, size: 32, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2146, file: !1794, line: 544, baseType: !38, size: 32, offset: 96)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2146, file: !1794, line: 547, baseType: !113, size: 128, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2146, file: !1794, line: 548, baseType: !650, size: 128, align: 64, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2146, file: !1794, line: 555, baseType: !1803, size: 7872, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2146, file: !1794, line: 558, baseType: !1802, size: 64, offset: 8256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2146, file: !1794, line: 561, baseType: !65, size: 32, offset: 8320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2146, file: !1794, line: 564, baseType: !17, size: 32, offset: 8352)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2146, file: !1794, line: 567, baseType: !2158, size: 32768, offset: 8384)
!2158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2159)
!2159 = !{!2160}
!2160 = !DISubrange(count: 4096)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2146, file: !1794, line: 570, baseType: !2162, size: 512, offset: 41152)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !568)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1803, file: !1794, line: 469, baseType: !113, size: 128, offset: 3968)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1803, file: !1794, line: 478, baseType: !2165, size: 1792, offset: 4096)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1792, elements: !2166)
!2166 = !{!2167}
!2167 = !DISubrange(count: 14)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1803, file: !1794, line: 487, baseType: !1802, size: 64, offset: 5888)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1803, file: !1794, line: 488, baseType: !1802, size: 64, offset: 5952)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1803, file: !1794, line: 491, baseType: !2171, size: 64, offset: 6016)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1794, line: 327, size: 896, elements: !2173)
!2173 = !{!2174, !2177, !2187, !2188, !2189, !2190, !2191}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2172, file: !1794, line: 332, baseType: !2175)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2176, line: 64, elements: !1081)
!2176 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2172, file: !1794, line: 333, baseType: !2178, size: 192)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1794, line: 299, size: 192, elements: !2179)
!2179 = !{!2180}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2178, file: !1794, line: 300, baseType: !2181, size: 192)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2182, line: 17, size: 192, elements: !2183)
!2182 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2183 = !{!2184, !2185, !2186}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2181, file: !2182, line: 18, baseType: !398, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2181, file: !2182, line: 19, baseType: !398, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2181, file: !2182, line: 20, baseType: !400, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2172, file: !1794, line: 339, baseType: !2178, size: 192, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2172, file: !1794, line: 347, baseType: !2178, size: 192, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2172, file: !1794, line: 353, baseType: !2178, size: 192, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2172, file: !1794, line: 366, baseType: !1802, size: 64, offset: 768)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2172, file: !1794, line: 367, baseType: !1802, size: 64, offset: 832)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1803, file: !1794, line: 492, baseType: !113, size: 128, offset: 6080)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1803, file: !1794, line: 495, baseType: !2178, size: 192, offset: 6208)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1803, file: !1794, line: 496, baseType: !2178, size: 192, offset: 6400)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1803, file: !1794, line: 497, baseType: !1630, size: 192, offset: 6592)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1803, file: !1794, line: 503, baseType: !113, size: 128, offset: 6784)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1803, file: !1794, line: 504, baseType: !672, size: 256, offset: 6912)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1803, file: !1794, line: 507, baseType: !70, size: 192, offset: 7168)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1803, file: !1794, line: 510, baseType: !1402, size: 256, offset: 7360)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1803, file: !1794, line: 513, baseType: !2201, size: 64, offset: 7616)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2203, line: 214, elements: !1081)
!2203 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1803, file: !1794, line: 516, baseType: !2205, offset: 7680)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2206, line: 76, elements: !1081)
!2206 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1803, file: !1794, line: 519, baseType: !65, size: 32, offset: 7680)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1803, file: !1794, line: 522, baseType: !2209, size: 128, offset: 7712)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1794, line: 370, size: 128, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2209, file: !1794, line: 372, baseType: !1287, size: 8)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2209, file: !1794, line: 375, baseType: !38, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2209, file: !1794, line: 380, baseType: !38, size: 32, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2209, file: !1794, line: 386, baseType: !38, size: 32, offset: 96)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1803, file: !1794, line: 529, baseType: !2216, offset: 7872)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1802, elements: !1518)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1799, file: !1794, line: 157, baseType: !2218, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1794, line: 669, size: 1984, elements: !2220)
!2220 = !{!2221, !2225, !2229, !2233, !2234, !2235, !2236, !2240, !2244, !2245, !2251, !2255, !2256, !2260, !2264, !2268, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2321, !2322}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2219, file: !1794, line: 670, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!1798, !1798}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2219, file: !1794, line: 671, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!38, !1798}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2219, file: !1794, line: 672, baseType: !2230, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !1798}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2219, file: !1794, line: 673, baseType: !2230, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2219, file: !1794, line: 674, baseType: !2230, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2219, file: !1794, line: 675, baseType: !2230, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2219, file: !1794, line: 676, baseType: !2237, size: 64, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !1798, !38}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2219, file: !1794, line: 677, baseType: !2241, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!38, !1863, !1798}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2219, file: !1794, line: 679, baseType: !2241, size: 64, offset: 512)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2219, file: !1794, line: 682, baseType: !2246, size: 64, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!38, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1794, line: 30, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2219, file: !1794, line: 683, baseType: !2252, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null, !2249}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2219, file: !1794, line: 684, baseType: !2252, size: 64, offset: 704)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2219, file: !1794, line: 685, baseType: !2257, size: 64, offset: 768)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2219, file: !1794, line: 686, baseType: !2261, size: 64, offset: 832)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!38, !765, !1792}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2219, file: !1794, line: 688, baseType: !2265, size: 64, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !765, !1792}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2219, file: !1794, line: 689, baseType: !2269, size: 64, offset: 960)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null, !765}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2219, file: !1794, line: 690, baseType: !2269, size: 64, offset: 1024)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2219, file: !1794, line: 691, baseType: !2269, size: 64, offset: 1088)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2219, file: !1794, line: 692, baseType: !2230, size: 64, offset: 1152)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2219, file: !1794, line: 694, baseType: !1287, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2219, file: !1794, line: 707, baseType: !1287, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2219, file: !1794, line: 719, baseType: !1287, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2219, file: !1794, line: 722, baseType: !38, size: 32, offset: 1248)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2219, file: !1794, line: 723, baseType: !33, size: 64, offset: 1280)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2219, file: !1794, line: 726, baseType: !33, size: 64, offset: 1344)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2219, file: !1794, line: 729, baseType: !2145, size: 64, offset: 1408)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2219, file: !1794, line: 732, baseType: !749, size: 192, offset: 1472)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2219, file: !1794, line: 738, baseType: !113, size: 128, offset: 1664)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2219, file: !1794, line: 744, baseType: !2285, size: 64, offset: 1792)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1794, line: 580, size: 1728, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2297, !2298, !2299, !2303, !2307, !2308, !2309, !2310, !2311, !2315, !2319, !2320}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2286, file: !1794, line: 586, baseType: !2162, size: 512)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2286, file: !1794, line: 587, baseType: !55, size: 64, offset: 512)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2286, file: !1794, line: 593, baseType: !51, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2286, file: !1794, line: 596, baseType: !17, size: 32, offset: 640)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2286, file: !1794, line: 604, baseType: !17, size: 32, offset: 672)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2286, file: !1794, line: 610, baseType: !2218, size: 64, offset: 704)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2286, file: !1794, line: 611, baseType: !113, size: 128, offset: 768)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2286, file: !1794, line: 612, baseType: !2296, size: 64, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2286, file: !1794, line: 614, baseType: !1854, size: 64, offset: 960)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2286, file: !1794, line: 615, baseType: !2069, size: 64, offset: 1024)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2286, file: !1794, line: 621, baseType: !2300, size: 64, offset: 1088)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!398, !1798, !2285}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2286, file: !1794, line: 625, baseType: !2304, size: 64, offset: 1152)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!669, !1798, !2285}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2286, file: !1794, line: 628, baseType: !1893, size: 64, offset: 1216)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2286, file: !1794, line: 631, baseType: !1881, size: 64, offset: 1280)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2286, file: !1794, line: 632, baseType: !1889, size: 64, offset: 1344)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2286, file: !1794, line: 633, baseType: !1885, size: 64, offset: 1408)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2286, file: !1794, line: 640, baseType: !2312, size: 64, offset: 1472)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!38, !1798, !2285, !398}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2286, file: !1794, line: 645, baseType: !2316, size: 64, offset: 1536)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!38, !1798, !2285, !669}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2286, file: !1794, line: 654, baseType: !2077, size: 64, offset: 1600)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2286, file: !1794, line: 657, baseType: !2084, size: 64, offset: 1664)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2219, file: !1794, line: 745, baseType: !2285, size: 64, offset: 1856)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2219, file: !1794, line: 754, baseType: !17, size: 32, offset: 1920)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1799, file: !1794, line: 160, baseType: !2324, size: 128, offset: 128)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2325, line: 105, size: 128, elements: !2326)
!2325 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2324, file: !2325, line: 110, baseType: !55, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2324, file: !2325, line: 118, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2325, line: 95, size: 448, elements: !2331)
!2331 = !{!2332, !2333, !2339, !2340, !2341, !2342, !2343}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2330, file: !2325, line: 96, baseType: !663, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2330, file: !2325, line: 97, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2325, line: 60, baseType: !2336)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2330, file: !2325, line: 98, baseType: !2334, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2330, file: !2325, line: 99, baseType: !1287, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2330, file: !2325, line: 100, baseType: !1287, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2330, file: !2325, line: 101, baseType: !650, size: 128, align: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2330, file: !2325, line: 102, baseType: !2338, size: 64, offset: 384)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1799, file: !1794, line: 163, baseType: !113, size: 128, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1799, file: !1794, line: 164, baseType: !113, size: 128, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1799, file: !1794, line: 167, baseType: !113, size: 128, offset: 512)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1799, file: !1794, line: 173, baseType: !38, size: 32, offset: 640)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1799, file: !1794, line: 175, baseType: !17, size: 32, offset: 672)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1799, file: !1794, line: 183, baseType: !398, size: 64, offset: 704)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1799, file: !1794, line: 189, baseType: !65, size: 32, offset: 768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1799, file: !1794, line: 192, baseType: !1402, size: 256, offset: 832)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1799, file: !1794, line: 193, baseType: !2353, size: 448, offset: 1088)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1403, line: 120, size: 448, elements: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2353, file: !1403, line: 121, baseType: !1402, size: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2353, file: !1403, line: 122, baseType: !650, size: 128, align: 64, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2353, file: !1403, line: 125, baseType: !2358, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1403, line: 18, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1799, file: !1794, line: 199, baseType: !1798, size: 64, offset: 1536)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1793, file: !1794, line: 218, baseType: !715, size: 32, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1793, file: !1794, line: 226, baseType: !1792, size: 64, offset: 960)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1793, file: !1794, line: 229, baseType: !1802, size: 64, offset: 1024)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1793, file: !1794, line: 232, baseType: !38, size: 32, offset: 1088)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1793, file: !1794, line: 241, baseType: !113, size: 128, offset: 1152)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1793, file: !1794, line: 242, baseType: !113, size: 128, offset: 1280)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1793, file: !1794, line: 243, baseType: !113, size: 128, offset: 1408)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1793, file: !1794, line: 246, baseType: !113, size: 128, offset: 1536)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1793, file: !1794, line: 255, baseType: !2165, size: 1792, offset: 1664)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1793, file: !1794, line: 258, baseType: !113, size: 128, offset: 3456)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1793, file: !1794, line: 259, baseType: !113, size: 128, offset: 3584)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1793, file: !1794, line: 265, baseType: !728, size: 128, offset: 3712)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1793, file: !1794, line: 271, baseType: !113, size: 128, offset: 3840)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1793, file: !1794, line: 277, baseType: !113, size: 128, offset: 3968)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1793, file: !1794, line: 278, baseType: !113, size: 128, offset: 4096)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1793, file: !1794, line: 279, baseType: !113, size: 128, offset: 4224)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1793, file: !1794, line: 288, baseType: !1802, size: 64, offset: 4352)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1793, file: !1794, line: 289, baseType: !1802, size: 64, offset: 4416)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1793, file: !1794, line: 290, baseType: !1792, size: 64, offset: 4480)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1793, file: !1794, line: 293, baseType: !1287, size: 8, offset: 4544)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1793, file: !1794, line: 296, baseType: !650, size: 128, align: 64, offset: 4608)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !766, file: !767, line: 1110, baseType: !2383, size: 64, offset: 15360)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2385, line: 93, size: 8768, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2437, !2446, !2447, !2449, !2450, !2451, !2454, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2492, !2493, !2500, !2510, !2572, !2573, !2576, !2577, !2578, !2579, !2580, !2581}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2384, file: !2385, line: 94, baseType: !715, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2384, file: !2385, line: 95, baseType: !65, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2384, file: !2385, line: 96, baseType: !38, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2384, file: !2385, line: 97, baseType: !38, size: 32, offset: 96)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2384, file: !2385, line: 98, baseType: !113, size: 128, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2384, file: !2385, line: 100, baseType: !70, size: 192, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2384, file: !2385, line: 103, baseType: !765, size: 64, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2384, file: !2385, line: 106, baseType: !2395, size: 192, offset: 512)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2396, line: 32, size: 192, elements: !2397)
!2396 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2397 = !{!2398, !2399}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2395, file: !2396, line: 33, baseType: !113, size: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2395, file: !2396, line: 34, baseType: !2400, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2401, line: 25, baseType: !2402)
!2401 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2401, line: 23, size: 64, elements: !2403)
!2403 = !{!2404}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2402, file: !2401, line: 24, baseType: !1011, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2384, file: !2385, line: 109, baseType: !724, size: 64, offset: 704)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2384, file: !2385, line: 112, baseType: !38, size: 32, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2384, file: !2385, line: 114, baseType: !38, size: 32, offset: 800)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2384, file: !2385, line: 115, baseType: !765, size: 64, offset: 832)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2384, file: !2385, line: 118, baseType: !38, size: 32, offset: 896)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2384, file: !2385, line: 119, baseType: !17, size: 32, offset: 928)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2384, file: !2385, line: 121, baseType: !2412, size: 64, offset: 960)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2385, line: 80, size: 448, elements: !2414)
!2414 = !{!2415, !2416, !2422}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2413, file: !2385, line: 81, baseType: !65, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2413, file: !2385, line: 82, baseType: !2417, size: 128, offset: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2385, line: 75, size: 128, elements: !2418)
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2417, file: !2385, line: 76, baseType: !765, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2417, file: !2385, line: 77, baseType: !2421, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2413, file: !2385, line: 83, baseType: !1441, size: 256, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2384, file: !2385, line: 132, baseType: !17, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2384, file: !2385, line: 133, baseType: !17, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2384, file: !2385, line: 138, baseType: !17, size: 32, offset: 1056)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2384, file: !2385, line: 139, baseType: !113, size: 128, offset: 1088)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2384, file: !2385, line: 142, baseType: !884, size: 512, offset: 1216)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2384, file: !2385, line: 143, baseType: !892, size: 64, offset: 1728)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2384, file: !2385, line: 150, baseType: !2430, size: 256, offset: 1792)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2431, size: 256, elements: !2435)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2385, line: 38, size: 128, elements: !2432)
!2432 = !{!2433, !2434}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2431, file: !2385, line: 39, baseType: !398, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2431, file: !2385, line: 40, baseType: !398, size: 64, offset: 64)
!2435 = !{!2436}
!2436 = !DISubrange(count: 2)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2384, file: !2385, line: 156, baseType: !2438, size: 192, offset: 2048)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2385, line: 66, size: 192, elements: !2439)
!2439 = !{!2440}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2438, file: !2385, line: 67, baseType: !2441, size: 192)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2385, line: 47, size: 192, elements: !2442)
!2442 = !{!2443, !2444, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2441, file: !2385, line: 48, baseType: !665, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2441, file: !2385, line: 49, baseType: !665, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2441, file: !2385, line: 50, baseType: !665, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2384, file: !2385, line: 160, baseType: !1642, size: 640, offset: 2240)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2384, file: !2385, line: 163, baseType: !2448, size: 256, offset: 2880)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 256, elements: !733)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2384, file: !2385, line: 169, baseType: !711, size: 64, offset: 3136)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2384, file: !2385, line: 172, baseType: !38, size: 32, offset: 3200)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2384, file: !2385, line: 174, baseType: !2452, size: 64, offset: 3264)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2385, line: 174, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2384, file: !2385, line: 185, baseType: !2455, size: 64, offset: 3328)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !367, line: 860, baseType: !2456)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 853, size: 64, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2456, file: !367, line: 858, baseType: !366, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2456, file: !367, line: 859, baseType: !75, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2384, file: !2385, line: 186, baseType: !398, size: 64, offset: 3392)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2384, file: !2385, line: 186, baseType: !398, size: 64, offset: 3456)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2384, file: !2385, line: 186, baseType: !398, size: 64, offset: 3520)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2384, file: !2385, line: 186, baseType: !398, size: 64, offset: 3584)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2384, file: !2385, line: 187, baseType: !398, size: 64, offset: 3648)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2384, file: !2385, line: 188, baseType: !398, size: 64, offset: 3712)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2384, file: !2385, line: 189, baseType: !1630, size: 192, offset: 3776)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2384, file: !2385, line: 190, baseType: !55, size: 64, offset: 3968)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2384, file: !2385, line: 190, baseType: !55, size: 64, offset: 4032)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2384, file: !2385, line: 190, baseType: !55, size: 64, offset: 4096)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2384, file: !2385, line: 190, baseType: !55, size: 64, offset: 4160)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2384, file: !2385, line: 191, baseType: !55, size: 64, offset: 4224)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2384, file: !2385, line: 191, baseType: !55, size: 64, offset: 4288)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2384, file: !2385, line: 191, baseType: !55, size: 64, offset: 4352)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2384, file: !2385, line: 191, baseType: !55, size: 64, offset: 4416)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2384, file: !2385, line: 192, baseType: !55, size: 64, offset: 4480)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2384, file: !2385, line: 192, baseType: !55, size: 64, offset: 4544)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2384, file: !2385, line: 192, baseType: !55, size: 64, offset: 4608)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2384, file: !2385, line: 192, baseType: !55, size: 64, offset: 4672)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2384, file: !2385, line: 193, baseType: !55, size: 64, offset: 4736)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2384, file: !2385, line: 193, baseType: !55, size: 64, offset: 4800)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2384, file: !2385, line: 194, baseType: !2482, size: 448, offset: 4864)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2483, line: 12, size: 448, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2484 = !{!2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2482, file: !2483, line: 15, baseType: !398, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2482, file: !2483, line: 17, baseType: !398, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2482, file: !2483, line: 19, baseType: !398, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2482, file: !2483, line: 21, baseType: !398, size: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2482, file: !2483, line: 29, baseType: !398, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2482, file: !2483, line: 35, baseType: !398, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2482, file: !2483, line: 44, baseType: !398, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2384, file: !2385, line: 202, baseType: !400, size: 64, offset: 5312)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2384, file: !2385, line: 213, baseType: !2494, size: 2048, offset: 5376)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2495, size: 2048, elements: !1734)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2496, line: 43, size: 128, elements: !2497)
!2496 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2497 = !{!2498, !2499}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2495, file: !2496, line: 44, baseType: !54, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2495, file: !2496, line: 45, baseType: !54, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2384, file: !2385, line: 216, baseType: !2501, size: 448, offset: 7424)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2385, line: 30, size: 448, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2501, file: !2385, line: 31, baseType: !38, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2501, file: !2385, line: 32, baseType: !598, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2501, file: !2385, line: 33, baseType: !55, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2501, file: !2385, line: 34, baseType: !398, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2501, file: !2385, line: 34, baseType: !398, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2501, file: !2385, line: 35, baseType: !55, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2501, file: !2385, line: 35, baseType: !55, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2384, file: !2385, line: 219, baseType: !2511, size: 64, offset: 7872)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2513, line: 41, size: 3456, elements: !2514)
!2513 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2514 = !{!2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2512, file: !2513, line: 47, baseType: !110, size: 16)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2512, file: !2513, line: 48, baseType: !395, size: 32, offset: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2512, file: !2513, line: 54, baseType: !101, size: 8, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2512, file: !2513, line: 55, baseType: !101, size: 8, offset: 72)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2512, file: !2513, line: 73, baseType: !399, size: 64, align: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2512, file: !2513, line: 74, baseType: !399, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2512, file: !2513, line: 81, baseType: !399, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2512, file: !2513, line: 82, baseType: !399, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2512, file: !2513, line: 85, baseType: !399, size: 64, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2512, file: !2513, line: 86, baseType: !399, size: 64, offset: 448)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2512, file: !2513, line: 94, baseType: !399, size: 64, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2512, file: !2513, line: 102, baseType: !399, size: 64, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2512, file: !2513, line: 107, baseType: !10, size: 256, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2512, file: !2513, line: 108, baseType: !101, size: 8, align: 64, offset: 896)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2512, file: !2513, line: 110, baseType: !2530, size: 24, offset: 904)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 24, elements: !564)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2512, file: !2513, line: 111, baseType: !395, size: 32, align: 64, offset: 960)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2512, file: !2513, line: 113, baseType: !395, size: 32, offset: 992)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2512, file: !2513, line: 114, baseType: !395, size: 32, offset: 1024)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2512, file: !2513, line: 115, baseType: !395, size: 32, offset: 1056)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2512, file: !2513, line: 117, baseType: !395, size: 32, offset: 1088)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2512, file: !2513, line: 118, baseType: !399, size: 64, align: 64, offset: 1152)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2512, file: !2513, line: 120, baseType: !399, size: 64, offset: 1216)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2512, file: !2513, line: 121, baseType: !399, size: 64, offset: 1280)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2512, file: !2513, line: 122, baseType: !399, size: 64, offset: 1344)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2512, file: !2513, line: 123, baseType: !399, size: 64, offset: 1408)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2512, file: !2513, line: 133, baseType: !399, size: 64, offset: 1472)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2512, file: !2513, line: 137, baseType: !399, size: 64, offset: 1536)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2512, file: !2513, line: 142, baseType: !399, size: 64, offset: 1600)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2512, file: !2513, line: 143, baseType: !399, size: 64, offset: 1664)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2512, file: !2513, line: 146, baseType: !399, size: 64, offset: 1728)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2512, file: !2513, line: 147, baseType: !399, size: 64, offset: 1792)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2512, file: !2513, line: 148, baseType: !399, size: 64, offset: 1856)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2512, file: !2513, line: 149, baseType: !399, size: 64, offset: 1920)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2512, file: !2513, line: 154, baseType: !399, size: 64, offset: 1984)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2512, file: !2513, line: 155, baseType: !399, size: 64, offset: 2048)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2512, file: !2513, line: 156, baseType: !399, size: 64, offset: 2112)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2512, file: !2513, line: 158, baseType: !399, size: 64, offset: 2176)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2512, file: !2513, line: 159, baseType: !399, size: 64, offset: 2240)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2512, file: !2513, line: 162, baseType: !399, size: 64, offset: 2304)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2512, file: !2513, line: 163, baseType: !399, size: 64, offset: 2368)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2512, file: !2513, line: 164, baseType: !399, size: 64, offset: 2432)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2512, file: !2513, line: 167, baseType: !399, size: 64, offset: 2496)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2512, file: !2513, line: 168, baseType: !399, size: 64, offset: 2560)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2512, file: !2513, line: 171, baseType: !399, size: 64, offset: 2624)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2512, file: !2513, line: 172, baseType: !399, size: 64, offset: 2688)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2512, file: !2513, line: 175, baseType: !399, size: 64, offset: 2752)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2512, file: !2513, line: 178, baseType: !399, size: 64, offset: 2816)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2512, file: !2513, line: 179, baseType: !399, size: 64, offset: 2880)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2512, file: !2513, line: 182, baseType: !395, size: 32, offset: 2944)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2512, file: !2513, line: 186, baseType: !399, size: 64, align: 64, offset: 3008)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2512, file: !2513, line: 194, baseType: !399, size: 64, offset: 3072)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2512, file: !2513, line: 195, baseType: !399, size: 64, offset: 3136)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2512, file: !2513, line: 199, baseType: !399, size: 64, offset: 3200)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2512, file: !2513, line: 200, baseType: !399, size: 64, offset: 3264)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2512, file: !2513, line: 203, baseType: !399, size: 64, offset: 3328)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2512, file: !2513, line: 204, baseType: !399, size: 64, offset: 3392)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2384, file: !2385, line: 222, baseType: !17, size: 32, offset: 7936)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2384, file: !2385, line: 223, baseType: !2574, size: 64, offset: 8000)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2385, line: 223, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2384, file: !2385, line: 230, baseType: !1287, size: 8, offset: 8064)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2384, file: !2385, line: 231, baseType: !1235, size: 16, offset: 8080)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2384, file: !2385, line: 232, baseType: !1235, size: 16, offset: 8096)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2384, file: !2385, line: 234, baseType: !1060, size: 64, offset: 8128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2384, file: !2385, line: 237, baseType: !672, size: 256, offset: 8192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2384, file: !2385, line: 243, baseType: !1115, size: 320, offset: 8448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !766, file: !767, line: 1111, baseType: !2583, size: 64, offset: 15424)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2385, line: 20, size: 16640, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2584, file: !2385, line: 21, baseType: !75, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2584, file: !2385, line: 22, baseType: !715, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2584, file: !2385, line: 23, baseType: !70, size: 192, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2584, file: !2385, line: 24, baseType: !2590, size: 16384, offset: 256)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2591, size: 16384, elements: !568)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2396, line: 51, size: 256, elements: !2592)
!2592 = !{!2593}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2591, file: !2396, line: 52, baseType: !2594, size: 256)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2396, line: 37, size: 256, elements: !2595)
!2595 = !{!2596, !2603, !2604, !2608}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2594, file: !2396, line: 39, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2598, line: 83, baseType: !2599)
!2598 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2598, line: 82, baseType: !2601)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !38}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2594, file: !2396, line: 40, baseType: !55, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2594, file: !2396, line: 46, baseType: !2605, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2598, line: 86, baseType: !2606)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2598, line: 85, baseType: !2258)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2594, file: !2396, line: 48, baseType: !2400, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !766, file: !767, line: 1112, baseType: !2400, size: 64, offset: 15488)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !766, file: !767, line: 1113, baseType: !2400, size: 64, offset: 15552)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !766, file: !767, line: 1115, baseType: !2400, size: 64, offset: 15616)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !766, file: !767, line: 1116, baseType: !2395, size: 192, offset: 15680)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !766, file: !767, line: 1117, baseType: !55, size: 64, offset: 15872)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !766, file: !767, line: 1118, baseType: !51, size: 64, offset: 15936)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !766, file: !767, line: 1119, baseType: !17, size: 32, offset: 16000)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !766, file: !767, line: 1121, baseType: !653, size: 64, offset: 16064)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !766, file: !767, line: 1125, baseType: !2618, size: 64, offset: 16128)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !767, line: 43, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !766, file: !767, line: 1127, baseType: !331, size: 32, offset: 16192)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !766, file: !767, line: 1128, baseType: !17, size: 32, offset: 16224)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !766, file: !767, line: 1130, baseType: !2623, size: 128, offset: 16256)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2624, line: 37, size: 128, elements: !2625)
!2624 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2625 = !{!2626, !2627, !2628}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2623, file: !2624, line: 38, baseType: !38, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2623, file: !2624, line: 39, baseType: !65, size: 32, offset: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2623, file: !2624, line: 40, baseType: !2629, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2624, line: 24, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !766, file: !767, line: 1131, baseType: !2632, size: 256, offset: 16384)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2633, line: 12, size: 256, elements: !2634)
!2633 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2634 = !{!2635, !2636, !2637, !2638}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2632, file: !2633, line: 13, baseType: !464, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2632, file: !2633, line: 14, baseType: !55, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2632, file: !2633, line: 15, baseType: !55, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2632, file: !2633, line: 16, baseType: !1287, size: 8, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !766, file: !767, line: 1134, baseType: !398, size: 64, offset: 16640)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !766, file: !767, line: 1135, baseType: !398, size: 64, offset: 16704)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !766, file: !767, line: 1138, baseType: !75, size: 32, offset: 16768)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !766, file: !767, line: 1141, baseType: !677, size: 32, offset: 16800)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !766, file: !767, line: 1143, baseType: !2644, size: 64, offset: 16832)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !767, line: 735, size: 64, elements: !2645)
!2645 = !{!2646}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2644, file: !767, line: 736, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !766, file: !767, line: 1147, baseType: !943, size: 128, offset: 16896)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !766, file: !767, line: 1149, baseType: !765, size: 64, offset: 17024)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !766, file: !767, line: 1151, baseType: !2651, size: 64, offset: 17088)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !767, line: 1151, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !766, file: !767, line: 1188, baseType: !36, size: 64, offset: 17152)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !766, file: !767, line: 1191, baseType: !2655, size: 64, offset: 17216)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !767, line: 44, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !766, file: !767, line: 1194, baseType: !2658, size: 64, offset: 17280)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !767, line: 45, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !766, file: !767, line: 1197, baseType: !2661, size: 64, offset: 17344)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2663, line: 155, size: 64, elements: !2664)
!2663 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2664 = !{!2665}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !2662, file: !2663, line: 157, baseType: !55, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !766, file: !767, line: 1199, baseType: !2667, size: 64, offset: 17408)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2669, line: 99, size: 128, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2670 = !{!2671, !2672, !2673}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2668, file: !2669, line: 100, baseType: !663, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2668, file: !2669, line: 101, baseType: !65, size: 32, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2668, file: !2669, line: 103, baseType: !42, size: 16, offset: 96)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !766, file: !767, line: 1202, baseType: !2675, size: 64, offset: 17472)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !767, line: 48, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !766, file: !767, line: 1205, baseType: !55, size: 64, offset: 17536)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !766, file: !767, line: 1206, baseType: !2679, size: 64, offset: 17600)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2396, line: 14, baseType: !2681)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2396, line: 12, size: 384, elements: !2682)
!2682 = !{!2683}
!2683 = !DIDerivedType(tag: DW_TAG_member, scope: !2681, file: !2396, line: 13, baseType: !2684, size: 384)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !2396, line: 13, size: 384, elements: !2685)
!2685 = !{!2686, !2687, !2688, !2689}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2684, file: !2396, line: 13, baseType: !38, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2684, file: !2396, line: 13, baseType: !38, size: 32, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2684, file: !2396, line: 13, baseType: !38, size: 32, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2684, file: !2396, line: 13, baseType: !2690, size: 256, offset: 128)
!2690 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2691, line: 37, size: 256, elements: !2692)
!2691 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2692 = !{!2693, !2698, !2711, !2717, !2726, !2753, !2758}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2690, file: !2691, line: 42, baseType: !2694, size: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !2691, line: 39, size: 64, elements: !2695)
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2694, file: !2691, line: 40, baseType: !1606, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2694, file: !2691, line: 41, baseType: !337, size: 32, offset: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2690, file: !2691, line: 50, baseType: !2699, size: 192)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !2691, line: 45, size: 192, elements: !2700)
!2700 = !{!2701, !2703, !2704, !2710}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2699, file: !2691, line: 46, baseType: !2702, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !53, line: 95, baseType: !38)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2699, file: !2691, line: 47, baseType: !38, size: 32, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2699, file: !2691, line: 48, baseType: !2705, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2691, line: 11, baseType: !2706)
!2706 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2691, line: 8, size: 64, elements: !2707)
!2707 = !{!2708, !2709}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2706, file: !2691, line: 9, baseType: !38, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2706, file: !2691, line: 10, baseType: !36, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2699, file: !2691, line: 49, baseType: !38, size: 32, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2690, file: !2691, line: 57, baseType: !2712, size: 128)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !2691, line: 53, size: 128, elements: !2713)
!2713 = !{!2714, !2715, !2716}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2712, file: !2691, line: 54, baseType: !1606, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2712, file: !2691, line: 55, baseType: !337, size: 32, offset: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2712, file: !2691, line: 56, baseType: !2705, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2690, file: !2691, line: 66, baseType: !2718, size: 256)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !2691, line: 60, size: 256, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2723, !2725}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2718, file: !2691, line: 61, baseType: !1606, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2718, file: !2691, line: 62, baseType: !337, size: 32, offset: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2718, file: !2691, line: 63, baseType: !38, size: 32, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2718, file: !2691, line: 64, baseType: !2724, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !53, line: 94, baseType: !597)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2718, file: !2691, line: 65, baseType: !2724, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2690, file: !2691, line: 105, baseType: !2727, size: 256)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !2691, line: 69, size: 256, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2727, file: !2691, line: 70, baseType: !36, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, scope: !2727, file: !2691, line: 79, baseType: !2731, size: 192, offset: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2727, file: !2691, line: 79, size: 192, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2742, !2747}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2731, file: !2691, line: 81, baseType: !38, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2731, file: !2691, line: 86, baseType: !1235, size: 16)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2731, file: !2691, line: 92, baseType: !2736, size: 192)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2731, file: !2691, line: 88, size: 192, elements: !2737)
!2737 = !{!2738, !2740, !2741}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2736, file: !2691, line: 89, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !927)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2736, file: !2691, line: 90, baseType: !36, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2736, file: !2691, line: 91, baseType: !36, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2731, file: !2691, line: 97, baseType: !2743, size: 96)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2731, file: !2691, line: 94, size: 96, elements: !2744)
!2744 = !{!2745, !2746}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2743, file: !2691, line: 95, baseType: !2739, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2743, file: !2691, line: 96, baseType: !395, size: 32, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2731, file: !2691, line: 103, baseType: !2748, size: 128)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2731, file: !2691, line: 99, size: 128, elements: !2749)
!2749 = !{!2750, !2751, !2752}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2748, file: !2691, line: 100, baseType: !55, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2748, file: !2691, line: 101, baseType: !395, size: 32, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2748, file: !2691, line: 102, baseType: !395, size: 32, offset: 96)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2690, file: !2691, line: 111, baseType: !2754, size: 128)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !2691, line: 108, size: 128, elements: !2755)
!2755 = !{!2756, !2757}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2754, file: !2691, line: 109, baseType: !598, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2754, file: !2691, line: 110, baseType: !38, size: 32, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2690, file: !2691, line: 118, baseType: !2759, size: 128)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !2691, line: 114, size: 128, elements: !2760)
!2760 = !{!2761, !2762, !2763}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2759, file: !2691, line: 115, baseType: !36, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2759, file: !2691, line: 116, baseType: !38, size: 32, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2759, file: !2691, line: 117, baseType: !17, size: 32, offset: 96)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !766, file: !767, line: 1208, baseType: !2482, size: 448, offset: 17664)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !766, file: !767, line: 1215, baseType: !398, size: 64, offset: 18112)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !766, file: !767, line: 1217, baseType: !398, size: 64, offset: 18176)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !766, file: !767, line: 1219, baseType: !398, size: 64, offset: 18240)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !766, file: !767, line: 1223, baseType: !2769, size: 64, offset: 18304)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2770, line: 99, baseType: !2771)
!2770 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2770, line: 99, size: 64, elements: !2772)
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2771, file: !2770, line: 99, baseType: !1011, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !766, file: !767, line: 1225, baseType: !366, size: 32, offset: 18368)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !766, file: !767, line: 1226, baseType: !38, size: 32, offset: 18400)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !766, file: !767, line: 1227, baseType: !38, size: 32, offset: 18432)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !766, file: !767, line: 1231, baseType: !1792, size: 64, offset: 18496)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !766, file: !767, line: 1233, baseType: !113, size: 128, offset: 18560)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !766, file: !767, line: 1240, baseType: !2780, size: 64, offset: 18688)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !767, line: 62, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !766, file: !767, line: 1242, baseType: !2783, size: 64, offset: 18752)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2785, line: 392, size: 96, elements: !2786)
!2785 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2786 = !{!2787, !2793, !2795}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2784, file: !2785, line: 393, baseType: !2788, size: 32)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2785, line: 388, size: 32, elements: !2789)
!2789 = !{!2790}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2788, file: !2785, line: 389, baseType: !2791, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2792, line: 46, baseType: !394)
!2792 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2784, file: !2785, line: 394, baseType: !2794, size: 32, offset: 32)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2792, line: 42, baseType: !1161)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2784, file: !2785, line: 395, baseType: !2791, size: 32, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !766, file: !767, line: 1244, baseType: !113, size: 128, offset: 18816)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !766, file: !767, line: 1245, baseType: !2798, size: 64, offset: 18944)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !767, line: 51, flags: DIFlagFwdDecl)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !766, file: !767, line: 1246, baseType: !672, size: 256, offset: 19008)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !766, file: !767, line: 1247, baseType: !17, size: 32, offset: 19264)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !766, file: !767, line: 1250, baseType: !2803, size: 64, offset: 19328)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !767, line: 57, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !766, file: !767, line: 1251, baseType: !672, size: 256, offset: 19392)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !766, file: !767, line: 1252, baseType: !113, size: 128, offset: 19648)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !766, file: !767, line: 1259, baseType: !1968, size: 64, offset: 19776)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !766, file: !767, line: 1260, baseType: !1235, size: 16, offset: 19840)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !766, file: !767, line: 1261, baseType: !1235, size: 16, offset: 19856)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !766, file: !767, line: 1314, baseType: !2811, size: 64, offset: 19904)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2813, line: 62, size: 256, align: 256, elements: !2814)
!2813 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2814 = !{!2815, !2816, !2817, !2818, !2819, !2820, !2821}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2812, file: !2813, line: 75, baseType: !395, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2812, file: !2813, line: 90, baseType: !395, size: 32, offset: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2812, file: !2813, line: 112, baseType: !399, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2812, file: !2813, line: 132, baseType: !395, size: 32, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2812, file: !2813, line: 140, baseType: !395, size: 32, offset: 160)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2812, file: !2813, line: 149, baseType: !395, size: 32, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2812, file: !2813, line: 154, baseType: !2822, offset: 224)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1518)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !766, file: !767, line: 1315, baseType: !394, size: 32, offset: 19968)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !766, file: !767, line: 1316, baseType: !394, size: 32, offset: 20000)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !766, file: !767, line: 1321, baseType: !55, size: 64, offset: 20032)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !766, file: !767, line: 1325, baseType: !38, size: 32, offset: 20096)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !766, file: !767, line: 1326, baseType: !38, size: 32, offset: 20128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !766, file: !767, line: 1327, baseType: !38, size: 32, offset: 20160)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !766, file: !767, line: 1328, baseType: !38, size: 32, offset: 20192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !766, file: !767, line: 1329, baseType: !650, size: 128, align: 64, offset: 20224)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !766, file: !767, line: 1332, baseType: !2832, size: 128, offset: 20352)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2833, line: 51, size: 128, elements: !2834)
!2833 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2834 = !{!2835, !2840, !2841}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2832, file: !2833, line: 60, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2837, line: 7, size: 64, elements: !2838)
!2837 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2838 = !{!2839}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2836, file: !2837, line: 12, baseType: !1008, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2832, file: !2833, line: 63, baseType: !1287, size: 8, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2832, file: !2833, line: 70, baseType: !1287, size: 8, offset: 72)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !766, file: !767, line: 1335, baseType: !2843, size: 64, offset: 20480)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !767, line: 59, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !766, file: !767, line: 1337, baseType: !2846, size: 128, offset: 20544)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2833, line: 39, size: 128, elements: !2847)
!2847 = !{!2848, !2849, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2846, file: !2833, line: 40, baseType: !299, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2846, file: !2833, line: 42, baseType: !395, size: 32, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2846, file: !2833, line: 43, baseType: !395, size: 32, offset: 96)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !766, file: !767, line: 1340, baseType: !2852, size: 64, offset: 20672)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !767, line: 69, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !766, file: !767, line: 1351, baseType: !38, size: 32, offset: 20736)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !766, file: !767, line: 1352, baseType: !38, size: 32, offset: 20768)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !766, file: !767, line: 1354, baseType: !55, size: 64, offset: 20800)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !766, file: !767, line: 1364, baseType: !398, size: 64, offset: 20864)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !766, file: !767, line: 1365, baseType: !398, size: 64, offset: 20928)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !766, file: !767, line: 1412, baseType: !55, size: 64, offset: 20992)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !766, file: !767, line: 1453, baseType: !2861, size: 64, offset: 21056)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !767, line: 1453, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !766, file: !767, line: 1457, baseType: !2864, size: 64, offset: 21120)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !146, line: 61, size: 576, elements: !2866)
!2866 = !{!2867, !2868, !2887, !2890, !2891, !2924, !2934}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2865, file: !146, line: 62, baseType: !145, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, scope: !2865, file: !146, line: 64, baseType: !2869, size: 192, offset: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2865, file: !146, line: 64, size: 192, elements: !2870)
!2870 = !{!2871, !2882}
!2871 = !DIDerivedType(tag: DW_TAG_member, scope: !2869, file: !146, line: 65, baseType: !2872, size: 192)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2869, file: !146, line: 65, size: 192, elements: !2873)
!2873 = !{!2874, !2881}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2872, file: !146, line: 66, baseType: !2875, size: 128)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2876, line: 50, size: 128, elements: !2877)
!2876 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2877 = !{!2878, !2879, !2880}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2875, file: !2876, line: 52, baseType: !55, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2875, file: !2876, line: 54, baseType: !17, size: 32, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2875, file: !2876, line: 55, baseType: !17, size: 32, offset: 96)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2872, file: !146, line: 67, baseType: !55, size: 64, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, scope: !2869, file: !146, line: 70, baseType: !2883, size: 192)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2869, file: !146, line: 70, size: 192, elements: !2884)
!2884 = !{!2885, !2886}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2883, file: !146, line: 71, baseType: !650, size: 128, align: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2883, file: !146, line: 72, baseType: !55, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2865, file: !146, line: 76, baseType: !2888, size: 64, offset: 256)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !146, line: 76, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2865, file: !146, line: 77, baseType: !55, size: 64, offset: 320)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2865, file: !146, line: 79, baseType: !2892, size: 64, offset: 384)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2876, line: 25, size: 256, elements: !2894)
!2894 = !{!2895, !2901, !2905}
!2895 = !DIDerivedType(tag: DW_TAG_member, scope: !2893, file: !2876, line: 26, baseType: !2896, size: 128)
!2896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2893, file: !2876, line: 26, size: 128, elements: !2897)
!2897 = !{!2898, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2896, file: !2876, line: 27, baseType: !2899, size: 128)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !1734)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2896, file: !2876, line: 28, baseType: !2899, size: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2893, file: !2876, line: 31, baseType: !2902, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2876, line: 23, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, scope: !2893, file: !2876, line: 33, baseType: !2906, size: 64, offset: 192)
!2906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2893, file: !2876, line: 33, size: 64, elements: !2907)
!2907 = !{!2908, !2914, !2919}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2906, file: !2876, line: 38, baseType: !2909, size: 64)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2906, file: !2876, line: 34, size: 64, elements: !2910)
!2910 = !{!2911, !2912, !2913}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2909, file: !2876, line: 35, baseType: !1161, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2909, file: !2876, line: 36, baseType: !99, size: 8, offset: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2909, file: !2876, line: 37, baseType: !99, size: 8, offset: 40)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2906, file: !2876, line: 42, baseType: !2915, size: 16)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2906, file: !2876, line: 39, size: 16, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2915, file: !2876, line: 40, baseType: !99, size: 8)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2915, file: !2876, line: 41, baseType: !99, size: 8, offset: 8)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2906, file: !2876, line: 46, baseType: !2920, size: 16)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2906, file: !2876, line: 43, size: 16, elements: !2921)
!2921 = !{!2922, !2923}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2920, file: !2876, line: 44, baseType: !99, size: 8)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2920, file: !2876, line: 45, baseType: !99, size: 8, offset: 8)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2865, file: !146, line: 81, baseType: !2925, size: 64, offset: 448)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !146, line: 85, size: 384, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931, !2932, !2933}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2926, file: !146, line: 86, baseType: !2888, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2926, file: !146, line: 87, baseType: !55, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2926, file: !146, line: 88, baseType: !55, size: 64, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2926, file: !146, line: 89, baseType: !55, size: 64, offset: 192)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2926, file: !146, line: 90, baseType: !1287, size: 8, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2926, file: !146, line: 92, baseType: !2925, size: 64, offset: 320)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2865, file: !146, line: 82, baseType: !17, size: 32, offset: 512)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !766, file: !767, line: 1463, baseType: !2936, offset: 21184)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !767, line: 739, elements: !1081)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !766, file: !767, line: 1470, baseType: !650, size: 128, align: 64, offset: 21184)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !766, file: !767, line: 1471, baseType: !715, size: 32, offset: 21312)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !766, file: !767, line: 1472, baseType: !38, size: 32, offset: 21344)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !766, file: !767, line: 1474, baseType: !765, size: 64, offset: 21376)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !766, file: !767, line: 1475, baseType: !2123, size: 320, offset: 21440)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !766, file: !767, line: 1478, baseType: !2943, size: 64, offset: 21760)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2945, line: 49, size: 512, elements: !2946)
!2945 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2946 = !{!2947, !2948, !2949, !2950, !2951, !2953, !2954, !2955, !2957}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2944, file: !2945, line: 50, baseType: !2943, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2944, file: !2945, line: 51, baseType: !36, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2944, file: !2945, line: 52, baseType: !55, size: 64, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2944, file: !2945, line: 53, baseType: !55, size: 64, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2944, file: !2945, line: 54, baseType: !2952, size: 64, offset: 256)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2944, file: !2945, line: 56, baseType: !17, size: 32, offset: 320)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2944, file: !2945, line: 58, baseType: !17, size: 32, offset: 352)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2944, file: !2945, line: 59, baseType: !2956, size: 64, offset: 384)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !41, line: 159, baseType: !398)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2944, file: !2945, line: 60, baseType: !1216, size: 64, offset: 448)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !766, file: !767, line: 1482, baseType: !715, size: 32, offset: 21824)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !766, file: !767, line: 1489, baseType: !36, size: 64, offset: 21888)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !766, file: !767, line: 1504, baseType: !36, size: 64, offset: 21952)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !766, file: !767, line: 1505, baseType: !399, size: 64, offset: 22016)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !766, file: !767, line: 1506, baseType: !398, size: 64, offset: 22080)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !766, file: !767, line: 1507, baseType: !399, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !766, file: !767, line: 1508, baseType: !399, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !766, file: !767, line: 1509, baseType: !399, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !766, file: !767, line: 1510, baseType: !650, size: 128, align: 64, offset: 22208)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !766, file: !767, line: 1511, baseType: !38, size: 32, offset: 22336)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !766, file: !767, line: 1515, baseType: !2969, size: 64, offset: 22400)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !645, line: 56, size: 64, elements: !2970)
!2970 = !{!2971}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2969, file: !645, line: 57, baseType: !648, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !766, file: !767, line: 1518, baseType: !2969, size: 64, offset: 22464)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !766, file: !767, line: 1528, baseType: !650, size: 128, align: 64, offset: 22528)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !766, file: !767, line: 1552, baseType: !2975, size: 35328, offset: 23040)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2976, line: 430, size: 35328, elements: !2977)
!2976 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2977 = !{!2978, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2991, !2992, !2993, !2994, !2995, !2996, !2999, !3000, !3001, !3002}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2975, file: !2976, line: 432, baseType: !2979, size: 192)
!2979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, size: 192, elements: !564)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2975, file: !2976, line: 436, baseType: !55, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2975, file: !2976, line: 440, baseType: !42, size: 16, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2975, file: !2976, line: 441, baseType: !42, size: 16, offset: 272)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2975, file: !2976, line: 442, baseType: !42, size: 16, offset: 288)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2975, file: !2976, line: 443, baseType: !42, size: 16, offset: 304)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2975, file: !2976, line: 447, baseType: !55, size: 64, offset: 320)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2975, file: !2976, line: 448, baseType: !55, size: 64, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2975, file: !2976, line: 459, baseType: !2988, size: 256, offset: 448)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2989, size: 256, elements: !733)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2976, line: 428, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2975, file: !2976, line: 461, baseType: !55, size: 64, offset: 704)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2975, file: !2976, line: 463, baseType: !55, size: 64, offset: 768)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2975, file: !2976, line: 465, baseType: !55, size: 64, offset: 832)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2975, file: !2976, line: 466, baseType: !55, size: 64, offset: 896)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2975, file: !2976, line: 467, baseType: !55, size: 64, offset: 960)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2975, file: !2976, line: 473, baseType: !2997, size: 64, offset: 1024)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2976, line: 10, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2975, file: !2976, line: 480, baseType: !55, size: 64, offset: 1088)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2975, file: !2976, line: 482, baseType: !17, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2975, file: !2976, line: 491, baseType: !394, size: 32, offset: 1184)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2975, file: !2976, line: 501, baseType: !3003, size: 33792, offset: 1536)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3004, line: 448, size: 33792, elements: !3005)
!3004 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3005 = !{!3006, !3007, !3008, !3168, !3169, !3175, !3176}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3003, file: !3004, line: 461, baseType: !17, size: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3003, file: !3004, line: 468, baseType: !55, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3003, file: !3004, line: 476, baseType: !3009, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3004, line: 356, size: 33280, align: 512, elements: !3011)
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3010, file: !3004, line: 358, baseType: !17, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3010, file: !3004, line: 361, baseType: !17, size: 32, offset: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3010, file: !3004, line: 364, baseType: !398, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3010, file: !3004, line: 367, baseType: !398, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3010, file: !3004, line: 370, baseType: !398, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3010, file: !3004, line: 373, baseType: !17, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3010, file: !3004, line: 376, baseType: !17, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3010, file: !3004, line: 391, baseType: !17, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3010, file: !3004, line: 394, baseType: !17, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3010, file: !3004, line: 397, baseType: !3022, size: 32768, offset: 512)
!3022 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3004, line: 348, size: 32768, elements: !3023)
!3023 = !{!3024, !3039, !3076, !3153, !3166}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3022, file: !3004, line: 349, baseType: !3025, size: 896)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3004, line: 12, size: 896, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3038}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3025, file: !3004, line: 13, baseType: !394, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3025, file: !3004, line: 14, baseType: !394, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3025, file: !3004, line: 15, baseType: !394, size: 32, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3025, file: !3004, line: 16, baseType: !394, size: 32, offset: 96)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3025, file: !3004, line: 17, baseType: !394, size: 32, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3025, file: !3004, line: 18, baseType: !394, size: 32, offset: 160)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3025, file: !3004, line: 19, baseType: !394, size: 32, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3025, file: !3004, line: 22, baseType: !3035, size: 640, offset: 224)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 640, elements: !3036)
!3036 = !{!3037}
!3037 = !DISubrange(count: 20)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3025, file: !3004, line: 25, baseType: !394, size: 32, offset: 864)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3022, file: !3004, line: 350, baseType: !3040, size: 4096, align: 128)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3004, line: 34, size: 4096, align: 128, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3061, !3062, !3063, !3065, !3067, !3071}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3040, file: !3004, line: 35, baseType: !109, size: 16)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3040, file: !3004, line: 36, baseType: !109, size: 16, offset: 16)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3040, file: !3004, line: 37, baseType: !109, size: 16, offset: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3040, file: !3004, line: 38, baseType: !109, size: 16, offset: 48)
!3046 = !DIDerivedType(tag: DW_TAG_member, scope: !3040, file: !3004, line: 39, baseType: !3047, size: 128, offset: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3040, file: !3004, line: 39, size: 128, elements: !3048)
!3048 = !{!3049, !3054}
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !3047, file: !3004, line: 40, baseType: !3050, size: 128)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3047, file: !3004, line: 40, size: 128, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3050, file: !3004, line: 41, baseType: !398, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3050, file: !3004, line: 42, baseType: !398, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !3047, file: !3004, line: 44, baseType: !3055, size: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3047, file: !3004, line: 44, size: 128, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3055, file: !3004, line: 45, baseType: !394, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3055, file: !3004, line: 46, baseType: !394, size: 32, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3055, file: !3004, line: 47, baseType: !394, size: 32, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3055, file: !3004, line: 48, baseType: !394, size: 32, offset: 96)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3040, file: !3004, line: 51, baseType: !394, size: 32, offset: 192)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3040, file: !3004, line: 52, baseType: !394, size: 32, offset: 224)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3040, file: !3004, line: 55, baseType: !3064, size: 1024, offset: 256)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 1024, elements: !11)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3040, file: !3004, line: 58, baseType: !3066, size: 2048, offset: 1280)
!3066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 2048, elements: !568)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3040, file: !3004, line: 60, baseType: !3068, size: 384, offset: 3328)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 384, elements: !3069)
!3069 = !{!3070}
!3070 = !DISubrange(count: 12)
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !3040, file: !3004, line: 62, baseType: !3072, size: 384, offset: 3712)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3040, file: !3004, line: 62, size: 384, elements: !3073)
!3073 = !{!3074, !3075}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3072, file: !3004, line: 63, baseType: !3068, size: 384)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3072, file: !3004, line: 64, baseType: !3068, size: 384)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3022, file: !3004, line: 351, baseType: !3077, size: 1088)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3004, line: 79, size: 1088, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3152}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3077, file: !3004, line: 80, baseType: !394, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3077, file: !3004, line: 81, baseType: !394, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3077, file: !3004, line: 82, baseType: !394, size: 32, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3077, file: !3004, line: 83, baseType: !394, size: 32, offset: 96)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3077, file: !3004, line: 84, baseType: !394, size: 32, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3077, file: !3004, line: 85, baseType: !394, size: 32, offset: 160)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3077, file: !3004, line: 86, baseType: !394, size: 32, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3077, file: !3004, line: 88, baseType: !3035, size: 640, offset: 224)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3077, file: !3004, line: 89, baseType: !99, size: 8, offset: 864)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3077, file: !3004, line: 90, baseType: !99, size: 8, offset: 872)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3077, file: !3004, line: 91, baseType: !99, size: 8, offset: 880)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3077, file: !3004, line: 92, baseType: !99, size: 8, offset: 888)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3077, file: !3004, line: 93, baseType: !99, size: 8, offset: 896)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3077, file: !3004, line: 94, baseType: !99, size: 8, offset: 904)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3077, file: !3004, line: 95, baseType: !3094, size: 64, offset: 960)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3096, line: 11, size: 128, elements: !3097)
!3096 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3095, file: !3096, line: 12, baseType: !598, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3095, file: !3096, line: 13, baseType: !3100, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3102, line: 103, size: 1344, elements: !3103)
!3102 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3132, !3133, !3134}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3101, file: !3102, line: 109, baseType: !55, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3101, file: !3102, line: 110, baseType: !55, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3101, file: !3102, line: 111, baseType: !55, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3101, file: !3102, line: 112, baseType: !55, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3101, file: !3102, line: 113, baseType: !55, size: 64, offset: 256)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3101, file: !3102, line: 114, baseType: !55, size: 64, offset: 320)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3101, file: !3102, line: 117, baseType: !55, size: 64, offset: 384)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3101, file: !3102, line: 118, baseType: !55, size: 64, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3101, file: !3102, line: 119, baseType: !55, size: 64, offset: 512)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3101, file: !3102, line: 120, baseType: !55, size: 64, offset: 576)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3101, file: !3102, line: 121, baseType: !55, size: 64, offset: 640)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3101, file: !3102, line: 122, baseType: !55, size: 64, offset: 704)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3101, file: !3102, line: 123, baseType: !55, size: 64, offset: 768)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3101, file: !3102, line: 124, baseType: !55, size: 64, offset: 832)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3101, file: !3102, line: 125, baseType: !55, size: 64, offset: 896)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3101, file: !3102, line: 139, baseType: !55, size: 64, offset: 960)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3101, file: !3102, line: 142, baseType: !55, size: 64, offset: 1024)
!3121 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !3102, line: 144, baseType: !3122, size: 64, offset: 1088)
!3122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3101, file: !3102, line: 144, size: 64, elements: !3123)
!3123 = !{!3124, !3125, !3126}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3122, file: !3102, line: 146, baseType: !109, size: 16)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3122, file: !3102, line: 148, baseType: !398, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3122, file: !3102, line: 150, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3102, line: 59, size: 64, elements: !3128)
!3128 = !{!3129, !3130, !3131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3127, file: !3102, line: 61, baseType: !398, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3127, file: !3102, line: 63, baseType: !398, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3127, file: !3102, line: 65, baseType: !398, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3101, file: !3102, line: 153, baseType: !55, size: 64, offset: 1152)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3101, file: !3102, line: 154, baseType: !55, size: 64, offset: 1216)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !3102, line: 156, baseType: !3135, size: 64, offset: 1280)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3101, file: !3102, line: 156, size: 64, elements: !3136)
!3136 = !{!3137, !3138, !3139}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3135, file: !3102, line: 158, baseType: !109, size: 16)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3135, file: !3102, line: 160, baseType: !398, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3135, file: !3102, line: 162, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3102, line: 69, size: 64, elements: !3141)
!3141 = !{!3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3140, file: !3102, line: 71, baseType: !398, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3140, file: !3102, line: 73, baseType: !398, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3140, file: !3102, line: 75, baseType: !398, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3140, file: !3102, line: 77, baseType: !398, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3140, file: !3102, line: 80, baseType: !398, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3140, file: !3102, line: 83, baseType: !398, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3140, file: !3102, line: 86, baseType: !398, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3140, file: !3102, line: 88, baseType: !398, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3140, file: !3102, line: 93, baseType: !398, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3140, file: !3102, line: 100, baseType: !398, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3077, file: !3004, line: 96, baseType: !394, size: 32, offset: 1024)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3022, file: !3004, line: 352, baseType: !3154, size: 4608, align: 512)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3004, line: 333, size: 4608, align: 512, elements: !3155)
!3155 = !{!3156, !3157, !3164}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3154, file: !3004, line: 334, baseType: !3040, size: 4096, align: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3154, file: !3004, line: 335, baseType: !3158, size: 512, offset: 4096)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3004, line: 312, size: 512, elements: !3159)
!3159 = !{!3160, !3161, !3162}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3158, file: !3004, line: 313, baseType: !398, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3158, file: !3004, line: 314, baseType: !398, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3158, file: !3004, line: 315, baseType: !3163, size: 384, offset: 128)
!3163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 384, elements: !1342)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3154, file: !3004, line: 336, baseType: !3165, offset: 4608)
!3165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, elements: !1518)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3022, file: !3004, line: 353, baseType: !3167, size: 32768)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 32768, elements: !2159)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3003, file: !3004, line: 484, baseType: !3009, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3003, file: !3004, line: 491, baseType: !3170, size: 128, offset: 256)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3004, line: 404, size: 128, elements: !3171)
!3171 = !{!3172, !3173, !3174}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3170, file: !3004, line: 424, baseType: !398, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3170, file: !3004, line: 432, baseType: !17, size: 32, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3170, file: !3004, line: 440, baseType: !17, size: 32, offset: 96)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3003, file: !3004, line: 498, baseType: !3170, size: 128, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3003, file: !3004, line: 508, baseType: !3010, size: 33280, align: 512, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !745, file: !746, line: 31, baseType: !3178, size: 64, offset: 448)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3180, line: 11, flags: DIFlagFwdDecl)
!3180 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !745, file: !746, line: 32, baseType: !17, size: 32, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !745, file: !746, line: 33, baseType: !744, size: 64, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !745, file: !746, line: 35, baseType: !3184, size: 64, offset: 640)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !746, line: 17, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !745, file: !746, line: 37, baseType: !1242, size: 64, offset: 704)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !745, file: !746, line: 38, baseType: !1485, size: 64, offset: 768)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !745, file: !746, line: 39, baseType: !38, size: 32, offset: 832)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !745, file: !746, line: 40, baseType: !1275, size: 192, offset: 896)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !745, file: !746, line: 42, baseType: !38, size: 32, offset: 1088)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !687, file: !172, line: 951, baseType: !152, size: 32, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !687, file: !172, line: 952, baseType: !331, size: 32, offset: 160)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !687, file: !172, line: 952, baseType: !331, size: 32, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !687, file: !172, line: 953, baseType: !38, size: 32, offset: 224)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !638, file: !172, line: 1012, baseType: !1660, size: 64, offset: 896)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !638, file: !172, line: 1013, baseType: !3197, size: 256, offset: 960)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !172, line: 970, size: 256, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3197, file: !172, line: 971, baseType: !55, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3197, file: !172, line: 972, baseType: !17, size: 32, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3197, file: !172, line: 973, baseType: !17, size: 32, offset: 96)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3197, file: !172, line: 974, baseType: !17, size: 32, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3197, file: !172, line: 975, baseType: !17, size: 32, offset: 160)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3197, file: !172, line: 976, baseType: !57, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !638, file: !172, line: 1014, baseType: !3206, size: 128, offset: 1216)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3207, line: 8, size: 128, elements: !3208)
!3207 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3208 = !{!3209, !3210}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3206, file: !3207, line: 9, baseType: !469, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3206, file: !3207, line: 10, baseType: !360, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !638, file: !172, line: 1015, baseType: !325, size: 64, offset: 1344)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !638, file: !172, line: 1016, baseType: !3213, size: 64, offset: 1408)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3215)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !172, line: 1914, size: 2112, elements: !3216)
!3216 = !{!3217, !3218, !3222, !3226, !3230, !3396, !3397, !3403, !3416, !3420, !3424, !3425, !3429, !3430, !3434, !3439, !3440, !3444, !3448, !3454, !3455, !3459, !3460, !3464, !3468, !3472, !3478, !3482, !3486, !3490, !3494, !3495, !3501}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3215, file: !172, line: 1915, baseType: !510, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3215, file: !172, line: 1916, baseType: !3219, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!57, !637, !57, !38}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3215, file: !172, line: 1917, baseType: !3223, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!595, !637, !464, !51, !56}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3215, file: !172, line: 1918, baseType: !3227, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!595, !637, !33, !51, !56}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3215, file: !172, line: 1919, baseType: !3231, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!595, !3234, !3339}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !172, line: 373, size: 384, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3243, !3244, !3245, !3246}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3235, file: !172, line: 374, baseType: !637, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3235, file: !172, line: 375, baseType: !57, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3235, file: !172, line: 376, baseType: !3240, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{null, !3234, !598}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3235, file: !172, line: 377, baseType: !36, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3235, file: !172, line: 378, baseType: !38, size: 32, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3235, file: !172, line: 379, baseType: !109, size: 16, offset: 288)
!3246 = !DIDerivedType(tag: DW_TAG_member, scope: !3235, file: !172, line: 380, baseType: !3247, size: 64, offset: 320)
!3247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3235, file: !172, line: 380, size: 64, elements: !3248)
!3248 = !{!3249, !3335}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3247, file: !172, line: 386, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !3252, line: 998, size: 448, elements: !3253)
!3252 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!3253 = !{!3254, !3321, !3322}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !3251, file: !3252, line: 999, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !130, line: 293, size: 1536, elements: !3257)
!3257 = !{!3258, !3288, !3302}
!3258 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !130, line: 295, baseType: !3259, size: 512)
!3259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3256, file: !130, line: 295, size: 512, elements: !3260)
!3260 = !{!3261, !3287}
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !3259, file: !130, line: 296, baseType: !3262, size: 448)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3259, file: !130, line: 296, size: 448, elements: !3263)
!3263 = !{!3264, !3265, !3274, !3275, !3276, !3285, !3286}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3262, file: !130, line: 298, baseType: !55, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !130, line: 299, baseType: !3266, size: 128, offset: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3262, file: !130, line: 299, size: 128, elements: !3267)
!3267 = !{!3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3266, file: !130, line: 300, baseType: !113, size: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !3266, file: !130, line: 302, baseType: !3270, size: 128)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3266, file: !130, line: 302, size: 128, elements: !3271)
!3271 = !{!3272, !3273}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3270, file: !130, line: 303, baseType: !36, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3270, file: !130, line: 305, baseType: !17, size: 32, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3262, file: !130, line: 310, baseType: !321, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3262, file: !130, line: 311, baseType: !55, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !130, line: 312, baseType: !3277, size: 64, offset: 320)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3262, file: !130, line: 312, size: 64, elements: !3278)
!3278 = !{!3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3277, file: !130, line: 313, baseType: !36, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3277, file: !130, line: 314, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !130, line: 257, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 255, size: 64, elements: !3283)
!3283 = !{!3284}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3282, file: !130, line: 256, baseType: !55, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3262, file: !130, line: 316, baseType: !65, size: 32, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3262, file: !130, line: 317, baseType: !65, size: 32, offset: 416)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3259, file: !130, line: 323, baseType: !300, size: 512, align: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !130, line: 325, baseType: !3289, size: 512, offset: 512)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3256, file: !130, line: 325, size: 512, elements: !3290)
!3290 = !{!3291, !3301}
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !130, line: 326, baseType: !3292, size: 320)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3289, file: !130, line: 326, size: 320, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299, !3300}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3292, file: !130, line: 327, baseType: !55, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3292, file: !130, line: 328, baseType: !55, size: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3292, file: !130, line: 329, baseType: !55, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3292, file: !130, line: 331, baseType: !65, size: 32, offset: 192)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3292, file: !130, line: 332, baseType: !65, size: 32, offset: 224)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3292, file: !130, line: 333, baseType: !65, size: 32, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3292, file: !130, line: 335, baseType: !17, size: 32, offset: 288)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3289, file: !130, line: 339, baseType: !300, size: 512, align: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !130, line: 341, baseType: !3303, size: 512, offset: 1024)
!3303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3256, file: !130, line: 341, size: 512, elements: !3304)
!3304 = !{!3305, !3314, !3320}
!3305 = !DIDerivedType(tag: DW_TAG_member, scope: !3303, file: !130, line: 342, baseType: !3306, size: 384)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3303, file: !130, line: 342, size: 384, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3311, !3312, !3313}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3306, file: !130, line: 343, baseType: !55, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3306, file: !130, line: 344, baseType: !55, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3306, file: !130, line: 346, baseType: !36, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3306, file: !130, line: 347, baseType: !36, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3306, file: !130, line: 348, baseType: !36, size: 64, offset: 256)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3306, file: !130, line: 349, baseType: !36, size: 64, offset: 320)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !3303, file: !130, line: 352, baseType: !3315, size: 256)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3303, file: !130, line: 352, size: 256, elements: !3316)
!3316 = !{!3317, !3318, !3319}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3315, file: !130, line: 353, baseType: !55, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3315, file: !130, line: 354, baseType: !55, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3315, file: !130, line: 356, baseType: !113, size: 128, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3303, file: !130, line: 359, baseType: !300, size: 512, align: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !3251, file: !3252, line: 1000, baseType: !38, size: 32, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3251, file: !3252, line: 1001, baseType: !3323, size: 320, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !71, line: 14, baseType: !3324)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !71, line: 30, size: 320, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3334}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3324, file: !71, line: 31, baseType: !17, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3324, file: !71, line: 32, baseType: !36, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3324, file: !71, line: 33, baseType: !3329, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !71, line: 16, baseType: !3330)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!38, !3333, !17, !38, !36}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3324, file: !71, line: 34, baseType: !113, size: 128, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3247, file: !172, line: 395, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!595, !36}
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !3341, line: 41, size: 320, elements: !3342)
!3341 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348, !3353, !3391}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !3340, file: !3341, line: 42, baseType: !99, size: 8)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !3340, file: !3341, line: 43, baseType: !1287, size: 8, offset: 8)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !3340, file: !3341, line: 44, baseType: !1287, size: 8, offset: 16)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !3340, file: !3341, line: 45, baseType: !1287, size: 8, offset: 24)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !3340, file: !3341, line: 46, baseType: !1287, size: 8, offset: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !3341, line: 47, baseType: !3349, size: 64, offset: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3340, file: !3341, line: 47, size: 64, elements: !3350)
!3350 = !{!3351, !3352}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !3349, file: !3341, line: 48, baseType: !51, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !3349, file: !3341, line: 49, baseType: !38, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !3341, line: 61, baseType: !3354, size: 128, offset: 128)
!3354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3340, file: !3341, line: 61, size: 128, elements: !3355)
!3355 = !{!3356, !3362}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !3354, file: !3341, line: 67, baseType: !3357, size: 128)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !3358, line: 17, size: 128, elements: !3359)
!3358 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !3357, file: !3358, line: 19, baseType: !36, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !3357, file: !3358, line: 20, baseType: !52, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, scope: !3354, file: !3341, line: 68, baseType: !3363, size: 128)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3354, file: !3341, line: 68, size: 128, elements: !3364)
!3364 = !{!3365, !3390}
!3365 = !DIDerivedType(tag: DW_TAG_member, scope: !3363, file: !3341, line: 69, baseType: !3366, size: 64)
!3366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3363, file: !3341, line: 69, size: 64, elements: !3367)
!3367 = !{!3368, !3371, !3378, !3387, !3389}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !3366, file: !3341, line: 71, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3357)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !3366, file: !3341, line: 72, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3374)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !3341, line: 17, size: 128, elements: !3375)
!3375 = !{!3376, !3377}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !3374, file: !3341, line: 18, baseType: !36, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !3374, file: !3341, line: 19, baseType: !51, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !3366, file: !3341, line: 73, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3381)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !3382, line: 31, size: 128, elements: !3383)
!3382 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!3383 = !{!3384, !3385, !3386}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !3381, file: !3382, line: 32, baseType: !299, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !3381, file: !3382, line: 33, baseType: !17, size: 32, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !3381, file: !3382, line: 34, baseType: !17, size: 32, offset: 96)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !3366, file: !3341, line: 74, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !3366, file: !3341, line: 75, baseType: !36, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3363, file: !3341, line: 77, baseType: !51, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !3341, line: 80, baseType: !3392, size: 64, offset: 256)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3340, file: !3341, line: 80, size: 64, elements: !3393)
!3393 = !{!3394, !3395}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !3392, file: !3341, line: 81, baseType: !55, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !3392, file: !3341, line: 82, baseType: !57, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3215, file: !172, line: 1920, baseType: !3231, size: 64, offset: 320)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3215, file: !172, line: 1921, baseType: !3398, size: 64, offset: 384)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!38, !3234, !3401, !17}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !172, line: 53, flags: DIFlagFwdDecl)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3215, file: !172, line: 1923, baseType: !3404, size: 64, offset: 448)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!38, !637, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !172, line: 1858, size: 128, elements: !3409)
!3409 = !{!3410, !3415}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3408, file: !172, line: 1859, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !172, line: 1855, baseType: !3412)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!1287, !3407, !33, !38, !57, !398, !17}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3408, file: !172, line: 1860, baseType: !57, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3215, file: !172, line: 1924, baseType: !3417, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!2087, !637, !2089}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3215, file: !172, line: 1925, baseType: !3421, size: 64, offset: 576)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!598, !637, !17, !55}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3215, file: !172, line: 1926, baseType: !3421, size: 64, offset: 640)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3215, file: !172, line: 1927, baseType: !3426, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!38, !637, !1920}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3215, file: !172, line: 1928, baseType: !55, size: 64, offset: 768)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3215, file: !172, line: 1929, baseType: !3431, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!38, !325, !637}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3215, file: !172, line: 1930, baseType: !3435, size: 64, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!38, !637, !3438}
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !172, line: 1061, baseType: !36)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3215, file: !172, line: 1931, baseType: !3431, size: 64, offset: 960)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3215, file: !172, line: 1932, baseType: !3441, size: 64, offset: 1024)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!38, !637, !57, !57, !38}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3215, file: !172, line: 1933, baseType: !3445, size: 64, offset: 1088)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!38, !38, !637, !38}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3215, file: !172, line: 1934, baseType: !3449, size: 64, offset: 1152)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!38, !637, !38, !3452}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !172, line: 1063, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3215, file: !172, line: 1935, baseType: !1085, size: 64, offset: 1216)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3215, file: !172, line: 1936, baseType: !3456, size: 64, offset: 1280)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!38, !38}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3215, file: !172, line: 1937, baseType: !3449, size: 64, offset: 1344)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3215, file: !172, line: 1938, baseType: !3461, size: 64, offset: 1408)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!595, !2843, !637, !56, !51, !17}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3215, file: !172, line: 1939, baseType: !3465, size: 64, offset: 1472)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!595, !637, !56, !2843, !51, !17}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3215, file: !172, line: 1940, baseType: !3469, size: 64, offset: 1536)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{null, !637}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3215, file: !172, line: 1941, baseType: !3473, size: 64, offset: 1600)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!38, !637, !38, !3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3215, file: !172, line: 1942, baseType: !3479, size: 64, offset: 1664)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!598, !637, !38, !57, !57}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3215, file: !172, line: 1944, baseType: !3483, size: 64, offset: 1728)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !1863, !637}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3215, file: !172, line: 1948, baseType: !3487, size: 64, offset: 1792)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!595, !637, !57, !637, !57, !51, !17}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3215, file: !172, line: 1950, baseType: !3491, size: 64, offset: 1856)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!57, !637, !57, !637, !57, !57, !17}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3215, file: !172, line: 1953, baseType: !3441, size: 64, offset: 1920)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3215, file: !172, line: 1954, baseType: !3496, size: 64, offset: 1984)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!38, !3499, !17}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !172, line: 1911, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3215, file: !172, line: 1955, baseType: !3502, size: 64, offset: 2048)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!38, !3499, !3401, !17}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !638, file: !172, line: 1018, baseType: !398, size: 64, offset: 1472)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !638, file: !172, line: 1020, baseType: !36, size: 64, offset: 1536)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !638, file: !172, line: 1023, baseType: !36, size: 64, offset: 1600)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !638, file: !172, line: 1027, baseType: !3509, size: 64, offset: 1664)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !638, file: !172, line: 1029, baseType: !321, size: 64, offset: 1728)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !638, file: !172, line: 1030, baseType: !3512, size: 32, offset: 1792)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3513, line: 8, baseType: !394)
!3513 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !638, file: !172, line: 1031, baseType: !3512, size: 32, offset: 1824)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !624, file: !589, line: 182, baseType: !634, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !624, file: !589, line: 184, baseType: !3517, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!38, !637, !529, !623, !1920}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !612, file: !589, line: 90, baseType: !3521, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !612, file: !589, line: 91, baseType: !3523, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !579, file: !524, line: 120, baseType: !3525, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!3528, !547}
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3530)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !161, line: 39, size: 384, elements: !3531)
!3531 = !{!3532, !3533, !3537, !3541, !3548, !3552}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3530, file: !161, line: 40, baseType: !160, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3530, file: !161, line: 41, baseType: !3534, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!1287}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3530, file: !161, line: 42, baseType: !3538, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!36}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3530, file: !161, line: 43, baseType: !3542, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!1216, !3545}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3547, line: 17, flags: DIFlagFwdDecl)
!3547 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3530, file: !161, line: 44, baseType: !3549, size: 64, offset: 256)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!1216}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3530, file: !161, line: 45, baseType: !3553, size: 64, offset: 320)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !36}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !579, file: !524, line: 121, baseType: !3557, size: 64, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!1216, !547}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !579, file: !524, line: 122, baseType: !3561, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{null, !547, !1466, !1467}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !523, file: !524, line: 70, baseType: !1818, size: 64, offset: 384)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !523, file: !524, line: 71, baseType: !3566, size: 32, offset: 448)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3567, line: 19, size: 32, elements: !3568)
!3567 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3568 = !{!3569}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3566, file: !3567, line: 20, baseType: !715, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !523, file: !524, line: 73, baseType: !17, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !523, file: !524, line: 74, baseType: !17, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !523, file: !524, line: 75, baseType: !17, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !523, file: !524, line: 76, baseType: !17, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !523, file: !524, line: 77, baseType: !17, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !520, file: !16, line: 47, baseType: !510, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !520, file: !16, line: 48, baseType: !529, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !520, file: !16, line: 49, baseType: !3578, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !16, line: 49, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !520, file: !16, line: 50, baseType: !1440, size: 64, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !511, file: !16, line: 418, baseType: !3582, size: 64, offset: 1408)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !16, line: 53, size: 448, elements: !3584)
!3584 = !{!3585, !3586, !3591, !3595, !3599, !3603}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3583, file: !16, line: 54, baseType: !600, size: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3583, file: !16, line: 55, baseType: !3587, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!595, !3582, !3590, !464}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3583, file: !16, line: 57, baseType: !3592, size: 64, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!595, !3582, !3590, !33, !51}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3583, file: !16, line: 59, baseType: !3596, size: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !510, !33}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3583, file: !16, line: 60, baseType: !3600, size: 64, offset: 320)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!38, !510}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3583, file: !16, line: 61, baseType: !3604, size: 64, offset: 384)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{null, !510}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !511, file: !16, line: 419, baseType: !33, size: 64, offset: 1472)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !511, file: !16, line: 420, baseType: !33, size: 64, offset: 1536)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !511, file: !16, line: 421, baseType: !529, size: 64, offset: 1600)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !511, file: !16, line: 424, baseType: !3611, size: 64, offset: 1664)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3613)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !16, line: 424, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !511, file: !16, line: 425, baseType: !3615, size: 64, offset: 1728)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !511, file: !16, line: 426, baseType: !17, size: 32, offset: 1792)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !511, file: !16, line: 435, baseType: !672, size: 256, offset: 1856)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !511, file: !16, line: 437, baseType: !3620, size: 64, offset: 2112)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3622, line: 69, size: 320, elements: !3623)
!3622 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3623 = !{!3624, !3625, !3626, !3643, !3645, !3649, !3650}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3621, file: !3622, line: 70, baseType: !33, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3621, file: !3622, line: 71, baseType: !510, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3621, file: !3622, line: 72, baseType: !3627, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3629)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3622, line: 47, size: 256, elements: !3630)
!3630 = !{!3631, !3632, !3638, !3642}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3629, file: !3622, line: 49, baseType: !17, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3629, file: !3622, line: 51, baseType: !3633, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!38, !33, !3636}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3621)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3629, file: !3622, line: 53, baseType: !3639, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!38, !464, !3636}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3629, file: !3622, line: 55, baseType: !3553, size: 64, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3621, file: !3622, line: 73, baseType: !3644, size: 16, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3621, file: !3622, line: 74, baseType: !3646, size: 8, offset: 208)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !100, line: 16, baseType: !3647)
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !102, line: 20, baseType: !3648)
!3648 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3621, file: !3622, line: 75, baseType: !99, size: 8, offset: 216)
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !3621, file: !3622, line: 76, baseType: !3651, size: 64, offset: 256)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3621, file: !3622, line: 76, size: 64, elements: !3652)
!3652 = !{!3653, !3654, !3661}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3651, file: !3622, line: 77, baseType: !36, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3651, file: !3622, line: 78, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3657)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3622, line: 86, size: 128, elements: !3658)
!3658 = !{!3659, !3660}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3657, file: !3622, line: 87, baseType: !17, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3657, file: !3622, line: 88, baseType: !464, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3651, file: !3622, line: 79, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3622, line: 92, size: 256, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3670, !3671}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3664, file: !3622, line: 94, baseType: !17, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3664, file: !3622, line: 95, baseType: !17, size: 32, offset: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3664, file: !3622, line: 96, baseType: !3669, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3664, file: !3622, line: 97, baseType: !3627, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3664, file: !3622, line: 98, baseType: !36, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !511, file: !16, line: 438, baseType: !17, size: 32, offset: 2176)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !511, file: !16, line: 441, baseType: !17, size: 32, offset: 2208)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !511, file: !16, line: 442, baseType: !3611, size: 64, offset: 2240)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !511, file: !16, line: 443, baseType: !3615, size: 64, offset: 2304)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !511, file: !16, line: 444, baseType: !1287, size: 8, offset: 2368)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !511, file: !16, line: 451, baseType: !1287, size: 8, offset: 2376)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !511, file: !16, line: 454, baseType: !17, size: 32, offset: 2400)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !511, file: !16, line: 455, baseType: !3680, size: 64, offset: 2432)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3682, line: 23, size: 96, elements: !3683)
!3682 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3683 = !{!3684, !3685, !3686}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3681, file: !3682, line: 24, baseType: !38, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3681, file: !3682, line: 24, baseType: !38, size: 32, offset: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3681, file: !3682, line: 24, baseType: !38, size: 32, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !511, file: !16, line: 458, baseType: !3688, size: 64, offset: 2496)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!38}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !511, file: !16, line: 460, baseType: !3692, size: 4032, align: 512, offset: 2560)
!3692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3693, size: 4032, elements: !3707)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !16, line: 362, size: 576, elements: !3694)
!3694 = !{!3695, !3696, !3697}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3693, file: !16, line: 363, baseType: !36, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3693, file: !16, line: 364, baseType: !17, size: 32, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3693, file: !16, line: 367, baseType: !3698, size: 448, offset: 128)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !16, line: 319, size: 448, elements: !3699)
!3699 = !{!3700, !3701}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3698, file: !16, line: 320, baseType: !510, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3698, file: !16, line: 321, baseType: !3702, size: 384, offset: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3703, line: 40, size: 384, elements: !3704)
!3703 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3704 = !{!3705}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3702, file: !3703, line: 41, baseType: !3706, size: 384, align: 64)
!3706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 384, align: 64, elements: !2435)
!3707 = !{!3708}
!3708 = !DISubrange(count: 7)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !511, file: !16, line: 463, baseType: !3710, size: 192, offset: 6592)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3711, line: 8, size: 192, elements: !3712)
!3711 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3712 = !{!3713, !3714, !3715}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3710, file: !3711, line: 10, baseType: !17, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3710, file: !3711, line: 11, baseType: !1623, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3710, file: !3711, line: 12, baseType: !3716, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3718, line: 59, size: 48, elements: !3719)
!3718 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3717, file: !3718, line: 60, baseType: !1233, size: 16)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3717, file: !3718, line: 61, baseType: !1233, size: 16, offset: 16)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3717, file: !3718, line: 63, baseType: !17, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3717, file: !3718, line: 64, baseType: !17, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3717, file: !3718, line: 65, baseType: !17, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3717, file: !3718, line: 66, baseType: !17, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !511, file: !16, line: 465, baseType: !55, size: 64, offset: 6784)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !511, file: !16, line: 469, baseType: !17, size: 32, offset: 6848)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !511, file: !16, line: 470, baseType: !113, size: 128, offset: 6912)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !511, file: !16, line: 471, baseType: !3730, size: 64, offset: 7040)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3732, line: 33, size: 96, elements: !3733)
!3732 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3733 = !{!3734, !3735, !3736, !3737}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3731, file: !3732, line: 37, baseType: !38, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3731, file: !3732, line: 43, baseType: !38, size: 32, offset: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3731, file: !3732, line: 45, baseType: !42, size: 16, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3731, file: !3732, line: 47, baseType: !42, size: 16, offset: 80)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !511, file: !16, line: 476, baseType: !3739, size: 64, offset: 7104)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !16, line: 378, size: 256, elements: !3741)
!3741 = !{!3742, !3758, !3759, !3760}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3740, file: !16, line: 379, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3745, line: 204, baseType: !3746)
!3745 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3745, line: 197, size: 192, elements: !3747)
!3747 = !{!3748, !3750, !3751, !3752, !3754, !3756}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3746, file: !3745, line: 198, baseType: !3749, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3745, line: 21, baseType: !395)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3746, file: !3745, line: 199, baseType: !103, size: 8, offset: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3746, file: !3745, line: 200, baseType: !103, size: 8, offset: 40)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3746, file: !3745, line: 201, baseType: !3753, size: 16, offset: 48)
!3753 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3745, line: 17, baseType: !110)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3746, file: !3745, line: 202, baseType: !3755, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3745, line: 16, baseType: !399)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3746, file: !3745, line: 203, baseType: !3757, size: 64, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3745, line: 22, baseType: !399)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3740, file: !16, line: 380, baseType: !17, size: 32, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3740, file: !16, line: 381, baseType: !464, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3740, file: !16, line: 382, baseType: !464, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !511, file: !16, line: 477, baseType: !3740, size: 256, offset: 7168)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !511, file: !16, line: 480, baseType: !3763, size: 64, offset: 7424)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !16, line: 480, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !511, file: !16, line: 483, baseType: !3766, size: 64, offset: 7488)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !16, line: 483, flags: DIFlagFwdDecl)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !511, file: !16, line: 488, baseType: !464, size: 64, offset: 7552)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !511, file: !16, line: 492, baseType: !36, size: 64, offset: 7616)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !511, file: !16, line: 493, baseType: !17, size: 32, offset: 7680)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !511, file: !16, line: 495, baseType: !36, size: 64, offset: 7744)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !511, file: !16, line: 496, baseType: !17, size: 32, offset: 7808)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !511, file: !16, line: 499, baseType: !17, size: 32, offset: 7840)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !511, file: !16, line: 500, baseType: !3775, size: 64, offset: 7872)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3777, line: 45, baseType: !3778)
!3777 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !511, file: !16, line: 503, baseType: !17, size: 32, offset: 7936)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !511, file: !16, line: 504, baseType: !3781, size: 64, offset: 8000)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3784, line: 96, size: 192, elements: !3785)
!3784 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3785 = !{!3786, !3787, !3829, !3832}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3783, file: !3784, line: 97, baseType: !17, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3783, file: !3784, line: 98, baseType: !3788, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3784, line: 24, size: 3072, elements: !3790)
!3790 = !{!3791, !3793, !3794, !3795, !3796, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3826, !3827, !3828}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3789, file: !3784, line: 26, baseType: !3792, size: 128)
!3792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 128, elements: !2435)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3789, file: !3784, line: 27, baseType: !3792, size: 128, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3789, file: !3784, line: 28, baseType: !38, size: 32, offset: 256)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3789, file: !3784, line: 31, baseType: !75, size: 32, align: 512, offset: 512)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3789, file: !3784, line: 32, baseType: !3797, size: 960, offset: 576)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3798, line: 206, size: 960, elements: !3799)
!3798 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3799 = !{!3800, !3801, !3804, !3806, !3807, !3808}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3797, file: !3798, line: 207, baseType: !653, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3797, file: !3798, line: 208, baseType: !3802, size: 256, offset: 64)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3803, size: 256, elements: !733)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3797, file: !3798, line: 209, baseType: !3805, size: 256, offset: 320)
!3805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !733)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3797, file: !3798, line: 213, baseType: !598, size: 64, offset: 576)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3797, file: !3798, line: 215, baseType: !1501, size: 256, offset: 640)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3797, file: !3798, line: 216, baseType: !99, size: 8, offset: 896)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3789, file: !3784, line: 33, baseType: !55, size: 64, offset: 1536)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3789, file: !3784, line: 34, baseType: !55, size: 64, offset: 1600)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3789, file: !3784, line: 35, baseType: !1287, size: 8, offset: 1664)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3789, file: !3784, line: 36, baseType: !2123, size: 320, offset: 1728)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3789, file: !3784, line: 37, baseType: !1402, size: 256, offset: 2048)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3789, file: !3784, line: 38, baseType: !650, size: 128, align: 64, offset: 2304)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3789, file: !3784, line: 39, baseType: !3816, size: 64, offset: 2432)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3784, line: 49, size: 768, elements: !3818)
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824, !3825}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3817, file: !3784, line: 50, baseType: !75, size: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3817, file: !3784, line: 51, baseType: !3805, size: 256, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3817, file: !3784, line: 53, baseType: !3805, size: 256, offset: 320)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3817, file: !3784, line: 54, baseType: !55, size: 64, offset: 576)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3817, file: !3784, line: 55, baseType: !3816, size: 64, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3817, file: !3784, line: 56, baseType: !38, size: 32, offset: 704)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3817, file: !3784, line: 57, baseType: !38, size: 32, offset: 736)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3789, file: !3784, line: 40, baseType: !55, size: 64, offset: 2496)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3789, file: !3784, line: 42, baseType: !38, size: 32, offset: 2560)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3789, file: !3784, line: 43, baseType: !3782, size: 64, offset: 2624)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3783, file: !3784, line: 99, baseType: !3830, offset: 128)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3831, line: 211, elements: !1081)
!3831 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3783, file: !3784, line: 100, baseType: !3833, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3784, line: 63, size: 3008, elements: !3835)
!3835 = !{!3836, !3837, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3865}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3834, file: !3784, line: 64, baseType: !3816, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3834, file: !3784, line: 65, baseType: !3838, size: 192, offset: 64)
!3838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3816, size: 192, elements: !564)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3834, file: !3784, line: 67, baseType: !38, size: 32, offset: 256)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3834, file: !3784, line: 68, baseType: !672, size: 256, offset: 320)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3834, file: !3784, line: 69, baseType: !75, size: 32, offset: 576)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3834, file: !3784, line: 70, baseType: !672, size: 256, offset: 640)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3834, file: !3784, line: 71, baseType: !55, size: 64, offset: 896)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3834, file: !3784, line: 72, baseType: !55, size: 64, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3834, file: !3784, line: 73, baseType: !55, size: 64, offset: 1024)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3834, file: !3784, line: 74, baseType: !55, size: 64, offset: 1088)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3834, file: !3784, line: 75, baseType: !55, size: 64, offset: 1152)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3834, file: !3784, line: 76, baseType: !55, size: 64, offset: 1216)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3834, file: !3784, line: 77, baseType: !55, size: 64, offset: 1280)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3834, file: !3784, line: 78, baseType: !55, size: 64, offset: 1344)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3834, file: !3784, line: 79, baseType: !1287, size: 8, offset: 1408)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3834, file: !3784, line: 80, baseType: !55, size: 64, offset: 1472)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3834, file: !3784, line: 81, baseType: !672, size: 256, offset: 1536)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3834, file: !3784, line: 82, baseType: !1441, size: 256, offset: 1792)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3834, file: !3784, line: 84, baseType: !65, size: 32, offset: 2048)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3834, file: !3784, line: 87, baseType: !55, size: 64, offset: 2112)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3834, file: !3784, line: 88, baseType: !55, size: 64, offset: 2176)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3834, file: !3784, line: 89, baseType: !3859, size: 704, offset: 2240)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1403, line: 111, size: 704, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3859, file: !1403, line: 112, baseType: !1402, size: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3859, file: !1403, line: 113, baseType: !2123, size: 320, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3859, file: !1403, line: 116, baseType: !2358, size: 64, offset: 576)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3859, file: !1403, line: 117, baseType: !38, size: 32, offset: 640)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3834, file: !3784, line: 90, baseType: !3782, size: 64, offset: 2944)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !511, file: !16, line: 515, baseType: !3867, size: 64, offset: 8064)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3869, line: 117, size: 128, elements: !3870)
!3869 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3870 = !{!3871, !3872, !3873}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3868, file: !3869, line: 118, baseType: !1161, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3868, file: !3869, line: 119, baseType: !1161, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3868, file: !3869, line: 120, baseType: !598, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !511, file: !16, line: 516, baseType: !17, size: 32, offset: 8128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !511, file: !16, line: 519, baseType: !17, size: 32, offset: 8160)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !511, file: !16, line: 520, baseType: !3877, size: 64, offset: 8192)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !511, file: !16, line: 523, baseType: !3879, size: 64, offset: 8256)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !16, line: 523, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !511, file: !16, line: 524, baseType: !17, size: 32, offset: 8320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !511, file: !16, line: 525, baseType: !3884, size: 64, offset: 8384)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !3887, line: 28, size: 192, elements: !3888)
!3887 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!3888 = !{!3889, !3890, !3891}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3886, file: !3887, line: 29, baseType: !33, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !3886, file: !3887, line: 30, baseType: !33, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !3886, file: !3887, line: 31, baseType: !55, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !511, file: !16, line: 526, baseType: !17, size: 32, offset: 8448)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !511, file: !16, line: 533, baseType: !36, size: 64, offset: 8512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !511, file: !16, line: 534, baseType: !17, size: 32, offset: 8576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !511, file: !16, line: 535, baseType: !3896, size: 64, offset: 8640)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !511, file: !16, line: 536, baseType: !17, size: 32, offset: 8704)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !511, file: !16, line: 539, baseType: !38, size: 32, offset: 8736)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !511, file: !16, line: 540, baseType: !3900, size: 64, offset: 8768)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3902, line: 32, size: 64, elements: !3903)
!3902 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3903 = !{!3904, !3905}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3901, file: !3902, line: 33, baseType: !1161, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3901, file: !3902, line: 34, baseType: !1161, size: 32, offset: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !511, file: !16, line: 563, baseType: !113, size: 128, offset: 8832)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !511, file: !16, line: 565, baseType: !113, size: 128, offset: 8960)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !511, file: !16, line: 568, baseType: !2257, size: 64, offset: 9088)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !511, file: !16, line: 570, baseType: !65, size: 32, offset: 9152)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !172, line: 2382, baseType: !486, size: 64, offset: 448)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !487, file: !172, line: 2383, baseType: !724, size: 64, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !487, file: !172, line: 2385, baseType: !3913, offset: 576)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3831, line: 206, elements: !1081)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !487, file: !172, line: 2386, baseType: !3913, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !487, file: !172, line: 2387, baseType: !3913, offset: 576)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !487, file: !172, line: 2388, baseType: !3917, offset: 576)
!3917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3913, elements: !564)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !487, file: !172, line: 2390, baseType: !3913, offset: 576)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !487, file: !172, line: 2391, baseType: !3913, offset: 576)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !487, file: !172, line: 2392, baseType: !3913, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !487, file: !172, line: 2393, baseType: !3913, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !476, file: !172, line: 1197, baseType: !3923, size: 64, offset: 384)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3925)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !172, line: 2057, size: 1664, elements: !3926)
!3926 = !{!3927, !3931, !3935, !3936, !3940, !3964, !3968, !3969, !3970, !3974, !3978, !3982, !3983, !3984, !3990, !3994, !3995, !3999, !4000, !4001, !4002, !4006, !4010, !4057, !4072, !4073}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3925, file: !172, line: 2058, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!325, !475}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3925, file: !172, line: 2059, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !325}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3925, file: !172, line: 2060, baseType: !3932, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3925, file: !172, line: 2062, baseType: !3937, size: 64, offset: 192)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !325, !38}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3925, file: !172, line: 2063, baseType: !3941, size: 64, offset: 256)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!38, !325, !3944}
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !167, line: 42, size: 384, elements: !3946)
!3946 = !{!3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !3945, file: !167, line: 43, baseType: !598, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !3945, file: !167, line: 45, baseType: !598, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !3945, file: !167, line: 52, baseType: !57, size: 64, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !3945, file: !167, line: 53, baseType: !57, size: 64, offset: 192)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !3945, file: !167, line: 55, baseType: !166, size: 32, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !3945, file: !167, line: 57, baseType: !17, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !3945, file: !167, line: 58, baseType: !17, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !3945, file: !167, line: 59, baseType: !17, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !3945, file: !167, line: 60, baseType: !17, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !3945, file: !167, line: 61, baseType: !17, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !3945, file: !167, line: 62, baseType: !17, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !3945, file: !167, line: 63, baseType: !17, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !3945, file: !167, line: 71, baseType: !17, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !3945, file: !167, line: 78, baseType: !3961, size: 64, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !167, line: 78, flags: DIFlagFwdDecl)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3925, file: !172, line: 2064, baseType: !3965, size: 64, offset: 320)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!38, !325}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3925, file: !172, line: 2065, baseType: !3932, size: 64, offset: 384)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3925, file: !172, line: 2066, baseType: !506, size: 64, offset: 448)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3925, file: !172, line: 2067, baseType: !3971, size: 64, offset: 512)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!38, !475, !38}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3925, file: !172, line: 2068, baseType: !3975, size: 64, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!38, !475, !171}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3925, file: !172, line: 2069, baseType: !3979, size: 64, offset: 640)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!38, !475}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3925, file: !172, line: 2070, baseType: !3975, size: 64, offset: 704)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3925, file: !172, line: 2071, baseType: !3979, size: 64, offset: 768)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3925, file: !172, line: 2072, baseType: !3985, size: 64, offset: 832)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!38, !360, !3988}
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !172, line: 62, flags: DIFlagFwdDecl)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3925, file: !172, line: 2073, baseType: !3991, size: 64, offset: 896)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!38, !475, !1623, !464}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3925, file: !172, line: 2074, baseType: !506, size: 64, offset: 960)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3925, file: !172, line: 2076, baseType: !3996, size: 64, offset: 1024)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!38, !1863, !360}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3925, file: !172, line: 2077, baseType: !3996, size: 64, offset: 1088)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3925, file: !172, line: 2078, baseType: !3996, size: 64, offset: 1152)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3925, file: !172, line: 2079, baseType: !3996, size: 64, offset: 1216)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3925, file: !172, line: 2081, baseType: !4003, size: 64, offset: 1280)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!595, !475, !38, !464, !51, !57}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3925, file: !172, line: 2082, baseType: !4007, size: 64, offset: 1344)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!595, !475, !38, !33, !51, !57}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3925, file: !172, line: 2083, baseType: !4011, size: 64, offset: 1408)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!4014, !325}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !177, line: 296, size: 1664, elements: !4017)
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4042, !4043, !4044}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4016, file: !177, line: 297, baseType: !728, size: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4016, file: !177, line: 298, baseType: !113, size: 128, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4016, file: !177, line: 299, baseType: !113, size: 128, offset: 256)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4016, file: !177, line: 300, baseType: !113, size: 128, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4016, file: !177, line: 301, baseType: !672, size: 256, offset: 512)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4016, file: !177, line: 302, baseType: !75, size: 32, offset: 768)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4016, file: !177, line: 303, baseType: !65, size: 32, offset: 800)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4016, file: !177, line: 304, baseType: !475, size: 64, offset: 832)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4016, file: !177, line: 305, baseType: !4027, size: 64, offset: 896)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !177, line: 68, size: 64, elements: !4028)
!4028 = !{!4029, !4041}
!4029 = !DIDerivedType(tag: DW_TAG_member, scope: !4027, file: !177, line: 69, baseType: !4030, size: 32)
!4030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4027, file: !177, line: 69, size: 32, elements: !4031)
!4031 = !{!4032, !4033, !4034}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4030, file: !177, line: 70, baseType: !331, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4030, file: !177, line: 71, baseType: !340, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4030, file: !177, line: 72, baseType: !4035, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4036, line: 24, baseType: !4037)
!4036 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4036, line: 22, size: 32, elements: !4038)
!4038 = !{!4039}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4037, file: !4036, line: 23, baseType: !4040, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4036, line: 20, baseType: !337)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4027, file: !177, line: 74, baseType: !176, size: 32, offset: 32)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4016, file: !177, line: 306, baseType: !57, size: 64, offset: 960)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4016, file: !177, line: 307, baseType: !55, size: 64, offset: 1024)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4016, file: !177, line: 308, baseType: !4045, size: 576, offset: 1088)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !177, line: 205, size: 576, elements: !4046)
!4046 = !{!4047, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4045, file: !177, line: 206, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !177, line: 66, baseType: !59)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4045, file: !177, line: 207, baseType: !4048, size: 64, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4045, file: !177, line: 208, baseType: !4048, size: 64, offset: 128)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4045, file: !177, line: 209, baseType: !4048, size: 64, offset: 192)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4045, file: !177, line: 210, baseType: !4048, size: 64, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4045, file: !177, line: 211, baseType: !4048, size: 64, offset: 320)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4045, file: !177, line: 212, baseType: !4048, size: 64, offset: 384)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4045, file: !177, line: 213, baseType: !1313, size: 64, offset: 448)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4045, file: !177, line: 214, baseType: !1313, size: 64, offset: 512)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3925, file: !172, line: 2085, baseType: !4058, size: 64, offset: 1472)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!598, !475, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4063, line: 15, size: 256, elements: !4064)
!4063 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4064 = !{!4065, !4066, !4067, !4068, !4069}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4062, file: !4063, line: 16, baseType: !758, size: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4062, file: !4063, line: 19, baseType: !38, size: 32, offset: 32)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4062, file: !4063, line: 26, baseType: !55, size: 64, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4062, file: !4063, line: 33, baseType: !55, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4062, file: !4063, line: 36, baseType: !4070, size: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !130, line: 33, flags: DIFlagFwdDecl)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3925, file: !172, line: 2087, baseType: !4058, size: 64, offset: 1536)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3925, file: !172, line: 2089, baseType: !506, size: 64, offset: 1600)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !476, file: !172, line: 1198, baseType: !4075, size: 64, offset: 448)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4077)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !177, line: 324, size: 704, elements: !4078)
!4078 = !{!4079, !4083, !4087, !4091, !4092, !4093, !4094, !4095, !4100, !4105, !4109}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4077, file: !177, line: 325, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!38, !4015}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4077, file: !177, line: 326, baseType: !4084, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!4015, !475, !38}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4077, file: !177, line: 327, baseType: !4088, size: 64, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{null, !4015}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4077, file: !177, line: 328, baseType: !4080, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4077, file: !177, line: 329, baseType: !4080, size: 64, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4077, file: !177, line: 330, baseType: !4080, size: 64, offset: 320)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4077, file: !177, line: 331, baseType: !3971, size: 64, offset: 384)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4077, file: !177, line: 334, baseType: !4096, size: 64, offset: 448)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!4099, !325}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4077, file: !177, line: 335, baseType: !4101, size: 64, offset: 512)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!38, !325, !4104}
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4077, file: !177, line: 337, baseType: !4106, size: 64, offset: 576)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!38, !325, !4099}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4077, file: !177, line: 339, baseType: !4110, size: 64, offset: 640)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!38, !475, !4113}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !476, file: !172, line: 1199, baseType: !4115, size: 64, offset: 512)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4117)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !177, line: 430, size: 704, elements: !4118)
!4118 = !{!4119, !4125, !4126, !4130, !4131, !4132, !4147, !4170, !4174, !4175, !4198}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4117, file: !177, line: 431, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!38, !475, !38, !38, !4123}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3206)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4117, file: !177, line: 432, baseType: !3971, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4117, file: !177, line: 433, baseType: !4127, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!38, !475, !17}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4117, file: !177, line: 434, baseType: !4127, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4117, file: !177, line: 435, baseType: !3971, size: 64, offset: 256)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4117, file: !177, line: 436, baseType: !4133, size: 64, offset: 320)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!38, !475, !38, !4136}
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !177, line: 417, size: 256, elements: !4138)
!4138 = !{!4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4137, file: !177, line: 418, baseType: !38, size: 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4137, file: !177, line: 419, baseType: !17, size: 32, offset: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4137, file: !177, line: 420, baseType: !17, size: 32, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4137, file: !177, line: 422, baseType: !17, size: 32, offset: 96)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4137, file: !177, line: 423, baseType: !17, size: 32, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4137, file: !177, line: 424, baseType: !17, size: 32, offset: 160)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4137, file: !177, line: 425, baseType: !17, size: 32, offset: 192)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4137, file: !177, line: 426, baseType: !17, size: 32, offset: 224)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4117, file: !177, line: 437, baseType: !4148, size: 64, offset: 384)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!38, !475, !4027, !4151}
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !177, line: 345, size: 960, elements: !4153)
!4153 = !{!4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4152, file: !177, line: 346, baseType: !38, size: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4152, file: !177, line: 347, baseType: !398, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4152, file: !177, line: 348, baseType: !398, size: 64, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4152, file: !177, line: 349, baseType: !398, size: 64, offset: 192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4152, file: !177, line: 350, baseType: !398, size: 64, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4152, file: !177, line: 351, baseType: !398, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4152, file: !177, line: 352, baseType: !398, size: 64, offset: 384)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4152, file: !177, line: 353, baseType: !669, size: 64, offset: 448)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4152, file: !177, line: 355, baseType: !669, size: 64, offset: 512)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4152, file: !177, line: 356, baseType: !38, size: 32, offset: 576)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4152, file: !177, line: 357, baseType: !38, size: 32, offset: 608)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4152, file: !177, line: 358, baseType: !398, size: 64, offset: 640)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4152, file: !177, line: 359, baseType: !398, size: 64, offset: 704)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4152, file: !177, line: 360, baseType: !398, size: 64, offset: 768)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4152, file: !177, line: 361, baseType: !669, size: 64, offset: 832)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4152, file: !177, line: 362, baseType: !38, size: 32, offset: 896)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4117, file: !177, line: 438, baseType: !4171, size: 64, offset: 448)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!38, !475, !4113, !4151}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4117, file: !177, line: 440, baseType: !4148, size: 64, offset: 512)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4117, file: !177, line: 441, baseType: !4176, size: 64, offset: 576)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!38, !475, !4179}
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !177, line: 411, size: 1408, elements: !4181)
!4181 = !{!4182, !4183}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4180, file: !177, line: 412, baseType: !17, size: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4180, file: !177, line: 413, baseType: !4184, size: 1344, offset: 64)
!4184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4185, size: 1344, elements: !564)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !177, line: 397, size: 448, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4197}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4185, file: !177, line: 398, baseType: !17, size: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4185, file: !177, line: 399, baseType: !17, size: 32, offset: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4185, file: !177, line: 401, baseType: !17, size: 32, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4185, file: !177, line: 402, baseType: !17, size: 32, offset: 96)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4185, file: !177, line: 403, baseType: !17, size: 32, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4185, file: !177, line: 404, baseType: !17, size: 32, offset: 160)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4185, file: !177, line: 405, baseType: !17, size: 32, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4185, file: !177, line: 406, baseType: !400, size: 64, offset: 256)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4185, file: !177, line: 407, baseType: !4196, size: 64, offset: 320)
!4196 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !41, line: 132, baseType: !398)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4185, file: !177, line: 408, baseType: !4196, size: 64, offset: 384)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4117, file: !177, line: 442, baseType: !4127, size: 64, offset: 640)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !476, file: !172, line: 1200, baseType: !4200, size: 64, offset: 576)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4202)
!4202 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !172, line: 54, flags: DIFlagFwdDecl)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !476, file: !172, line: 1201, baseType: !55, size: 64, offset: 640)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !476, file: !172, line: 1202, baseType: !55, size: 64, offset: 704)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !476, file: !172, line: 1203, baseType: !55, size: 64, offset: 768)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !476, file: !172, line: 1204, baseType: !360, size: 64, offset: 832)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !476, file: !172, line: 1205, baseType: !1115, size: 320, offset: 896)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !476, file: !172, line: 1206, baseType: !38, size: 32, offset: 1216)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !476, file: !172, line: 1207, baseType: !65, size: 32, offset: 1248)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !476, file: !172, line: 1209, baseType: !36, size: 64, offset: 1280)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !476, file: !172, line: 1211, baseType: !4212, size: 64, offset: 1344)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4215)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !172, line: 1211, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !476, file: !172, line: 1223, baseType: !4217, size: 64, offset: 1408)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !377, line: 34, size: 64, elements: !4218)
!4218 = !{!4219}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4217, file: !377, line: 35, baseType: !380, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !476, file: !172, line: 1224, baseType: !113, size: 128, offset: 1472)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !476, file: !172, line: 1225, baseType: !4222, size: 64, offset: 1600)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !4224, line: 40, size: 7424, elements: !4225)
!4224 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!4225 = !{!4226, !4228, !4229, !4230, !4233, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4260, !4261}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !4223, file: !4224, line: 41, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !41, line: 131, baseType: !398)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !4223, file: !4224, line: 42, baseType: !4227, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !4223, file: !4224, line: 43, baseType: !2861, size: 64, offset: 128)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !4223, file: !4224, line: 44, baseType: !4231, size: 64, offset: 192)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2669, line: 74, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !4223, file: !4224, line: 45, baseType: !4234, size: 64, offset: 256)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !4224, line: 45, flags: DIFlagFwdDecl)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !4223, file: !4224, line: 46, baseType: !55, size: 64, offset: 320)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !4223, file: !4224, line: 47, baseType: !1287, size: 8, offset: 384)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !4223, file: !4224, line: 48, baseType: !99, size: 8, offset: 392)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !4223, file: !4224, line: 49, baseType: !1287, size: 8, offset: 400)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !4223, file: !4224, line: 50, baseType: !1287, size: 8, offset: 408)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !4223, file: !4224, line: 51, baseType: !480, size: 32, offset: 416)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !4223, file: !4224, line: 52, baseType: !65, size: 32, offset: 448)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !4223, file: !4224, line: 53, baseType: !75, size: 32, offset: 480)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !4223, file: !4224, line: 54, baseType: !325, size: 64, offset: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !4223, file: !4224, line: 55, baseType: !36, size: 64, offset: 576)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !4223, file: !4224, line: 56, baseType: !36, size: 64, offset: 640)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !4223, file: !4224, line: 57, baseType: !4248, size: 64, offset: 704)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4250)
!4250 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !4224, line: 57, flags: DIFlagFwdDecl)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !4223, file: !4224, line: 58, baseType: !672, size: 256, offset: 768)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !4223, file: !4224, line: 60, baseType: !38, size: 32, offset: 1024)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !4223, file: !4224, line: 61, baseType: !38, size: 32, offset: 1056)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !4223, file: !4224, line: 62, baseType: !529, size: 64, offset: 1088)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !4223, file: !4224, line: 65, baseType: !672, size: 256, offset: 1152)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !4223, file: !4224, line: 66, baseType: !475, size: 64, offset: 1408)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !4223, file: !4224, line: 68, baseType: !4258, size: 64, offset: 1472)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !4224, line: 68, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !4223, file: !4224, line: 72, baseType: !1287, size: 8, offset: 1536)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !4223, file: !4224, line: 77, baseType: !4262, size: 5824, offset: 1600)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !189, line: 705, size: 5824, elements: !4263)
!4263 = !{!4264, !4265, !4267, !4270, !4271, !4324, !4394, !4395, !4396, !4397, !4398, !4405, !4497, !4510, !4520, !4524, !4526, !4527, !4528, !4532, !4539, !4540, !4543, !4546, !4550, !4654, !4655, !4656, !4657, !4658, !4659, !4689, !4690, !4691, !4694, !4697, !4706, !4707, !4708, !4709, !4710, !4711}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4262, file: !189, line: 706, baseType: !523, size: 512)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4262, file: !189, line: 707, baseType: !4266, size: 64, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4262, file: !189, line: 709, baseType: !4268, size: 64, offset: 576)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !189, line: 37, flags: DIFlagFwdDecl)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4262, file: !189, line: 711, baseType: !33, size: 64, offset: 640)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4262, file: !189, line: 712, baseType: !4272, size: 64, offset: 704)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !189, line: 89, size: 384, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4284, !4289, !4293}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4274, file: !189, line: 90, baseType: !33, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4274, file: !189, line: 91, baseType: !609, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4274, file: !189, line: 92, baseType: !4279, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!38, !4282, !559}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4262)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4274, file: !189, line: 93, baseType: !4285, size: 64, offset: 192)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!464, !4282, !4288, !1466, !1467}
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4274, file: !189, line: 95, baseType: !4290, size: 64, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !4266}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4274, file: !189, line: 97, baseType: !4294, size: 64, offset: 320)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4296)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !196, line: 286, size: 1472, elements: !4297)
!4297 = !{!4298, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4296, file: !196, line: 287, baseType: !4299, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!38, !4266}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4296, file: !196, line: 288, baseType: !4290, size: 64, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4296, file: !196, line: 289, baseType: !4299, size: 64, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4296, file: !196, line: 290, baseType: !4299, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4296, file: !196, line: 291, baseType: !4299, size: 64, offset: 256)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4296, file: !196, line: 292, baseType: !4299, size: 64, offset: 320)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4296, file: !196, line: 293, baseType: !4299, size: 64, offset: 384)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4296, file: !196, line: 294, baseType: !4299, size: 64, offset: 448)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4296, file: !196, line: 295, baseType: !4299, size: 64, offset: 512)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4296, file: !196, line: 296, baseType: !4299, size: 64, offset: 576)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4296, file: !196, line: 297, baseType: !4299, size: 64, offset: 640)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4296, file: !196, line: 298, baseType: !4299, size: 64, offset: 704)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4296, file: !196, line: 299, baseType: !4299, size: 64, offset: 768)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4296, file: !196, line: 300, baseType: !4299, size: 64, offset: 832)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4296, file: !196, line: 301, baseType: !4299, size: 64, offset: 896)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4296, file: !196, line: 302, baseType: !4299, size: 64, offset: 960)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4296, file: !196, line: 303, baseType: !4299, size: 64, offset: 1024)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4296, file: !196, line: 304, baseType: !4299, size: 64, offset: 1088)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4296, file: !196, line: 305, baseType: !4299, size: 64, offset: 1152)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4296, file: !196, line: 306, baseType: !4299, size: 64, offset: 1216)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4296, file: !196, line: 307, baseType: !4299, size: 64, offset: 1280)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4296, file: !196, line: 308, baseType: !4299, size: 64, offset: 1344)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4296, file: !196, line: 309, baseType: !4299, size: 64, offset: 1408)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4262, file: !189, line: 714, baseType: !4325, size: 64, offset: 768)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4328, line: 80, size: 1344, elements: !4329)
!4328 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4329 = !{!4330, !4331, !4332, !4333, !4334, !4335, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4393}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4327, file: !4328, line: 81, baseType: !33, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4327, file: !4328, line: 82, baseType: !33, size: 64, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4327, file: !4328, line: 83, baseType: !609, size: 64, offset: 128)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4327, file: !4328, line: 84, baseType: !609, size: 64, offset: 192)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4327, file: !4328, line: 85, baseType: !609, size: 64, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4327, file: !4328, line: 87, baseType: !4336, size: 64, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!38, !4266, !4339}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !183, line: 96, size: 1152, elements: !4341)
!4341 = !{!4342, !4343, !4344, !4345, !4346, !4347, !4348, !4352, !4356, !4357, !4358, !4359, !4360, !4368, !4369, !4370, !4371, !4372, !4373}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4340, file: !183, line: 97, baseType: !33, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4340, file: !183, line: 98, baseType: !4325, size: 64, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4340, file: !183, line: 100, baseType: !510, size: 64, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4340, file: !183, line: 101, baseType: !33, size: 64, offset: 192)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4340, file: !183, line: 103, baseType: !1287, size: 8, offset: 256)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4340, file: !183, line: 104, baseType: !182, size: 32, offset: 288)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4340, file: !183, line: 106, baseType: !4349, size: 64, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4351)
!4351 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !183, line: 106, flags: DIFlagFwdDecl)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4340, file: !183, line: 107, baseType: !4353, size: 64, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4355)
!4355 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !183, line: 107, flags: DIFlagFwdDecl)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4340, file: !183, line: 109, baseType: !4299, size: 64, offset: 448)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4340, file: !183, line: 110, baseType: !4290, size: 64, offset: 512)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4340, file: !183, line: 111, baseType: !4299, size: 64, offset: 576)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4340, file: !183, line: 112, baseType: !4290, size: 64, offset: 640)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4340, file: !183, line: 113, baseType: !4361, size: 64, offset: 704)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!38, !4266, !4364}
!4364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !196, line: 60, baseType: !4365)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !196, line: 58, size: 32, elements: !4366)
!4366 = !{!4367}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4365, file: !196, line: 59, baseType: !38, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4340, file: !183, line: 114, baseType: !4299, size: 64, offset: 768)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4340, file: !183, line: 115, baseType: !609, size: 64, offset: 832)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4340, file: !183, line: 116, baseType: !609, size: 64, offset: 896)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4340, file: !183, line: 118, baseType: !4294, size: 64, offset: 960)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4340, file: !183, line: 119, baseType: !4290, size: 64, offset: 1024)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4340, file: !183, line: 121, baseType: !4374, size: 64, offset: 1088)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !183, line: 121, flags: DIFlagFwdDecl)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4327, file: !4328, line: 88, baseType: !4279, size: 64, offset: 384)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4327, file: !4328, line: 89, baseType: !4299, size: 64, offset: 448)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4327, file: !4328, line: 90, baseType: !4290, size: 64, offset: 512)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4327, file: !4328, line: 91, baseType: !4290, size: 64, offset: 576)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4327, file: !4328, line: 92, baseType: !4290, size: 64, offset: 640)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4327, file: !4328, line: 94, baseType: !4299, size: 64, offset: 704)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4327, file: !4328, line: 95, baseType: !4299, size: 64, offset: 768)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4327, file: !4328, line: 97, baseType: !4361, size: 64, offset: 832)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4327, file: !4328, line: 98, baseType: !4299, size: 64, offset: 896)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4327, file: !4328, line: 100, baseType: !4299, size: 64, offset: 960)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4327, file: !4328, line: 102, baseType: !4299, size: 64, offset: 1024)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4327, file: !4328, line: 103, baseType: !4290, size: 64, offset: 1088)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4327, file: !4328, line: 105, baseType: !4294, size: 64, offset: 1152)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4327, file: !4328, line: 107, baseType: !4390, size: 64, offset: 1216)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4392)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4328, line: 107, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4327, file: !4328, line: 109, baseType: !1287, size: 8, offset: 1280)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4262, file: !189, line: 715, baseType: !4339, size: 64, offset: 832)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4262, file: !189, line: 717, baseType: !36, size: 64, offset: 896)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4262, file: !189, line: 719, baseType: !36, size: 64, offset: 960)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4262, file: !189, line: 721, baseType: !672, size: 256, offset: 1024)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4262, file: !189, line: 725, baseType: !4399, size: 448, offset: 1280)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !189, line: 517, size: 448, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4404}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4399, file: !189, line: 518, baseType: !113, size: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4399, file: !189, line: 519, baseType: !113, size: 128, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4399, file: !189, line: 520, baseType: !113, size: 128, offset: 256)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4399, file: !189, line: 521, baseType: !188, size: 32, offset: 384)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4262, file: !189, line: 726, baseType: !4406, size: 2496, offset: 1728)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !196, line: 663, size: 2496, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4490, !4494}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4406, file: !196, line: 664, baseType: !4364, size: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4406, file: !196, line: 665, baseType: !17, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4406, file: !196, line: 666, baseType: !17, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4406, file: !196, line: 667, baseType: !1287, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4406, file: !196, line: 668, baseType: !1287, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4406, file: !196, line: 669, baseType: !1287, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4406, file: !196, line: 670, baseType: !1287, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4406, file: !196, line: 671, baseType: !1287, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4406, file: !196, line: 672, baseType: !1287, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4406, file: !196, line: 673, baseType: !1287, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4406, file: !196, line: 674, baseType: !1287, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4406, file: !196, line: 675, baseType: !394, size: 32, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4406, file: !196, line: 676, baseType: !75, size: 32, offset: 96)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4406, file: !196, line: 678, baseType: !113, size: 128, offset: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4406, file: !196, line: 679, baseType: !1441, size: 256, offset: 256)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4406, file: !196, line: 680, baseType: !4424, size: 64, offset: 512)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4426, line: 43, size: 1536, elements: !4427)
!4426 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4425, file: !4426, line: 44, baseType: !33, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4425, file: !4426, line: 45, baseType: !38, size: 32, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4425, file: !4426, line: 46, baseType: !113, size: 128, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4425, file: !4426, line: 47, baseType: !75, size: 32, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4425, file: !4426, line: 48, baseType: !4433, size: 64, offset: 320)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !196, line: 629, flags: DIFlagFwdDecl)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4425, file: !4426, line: 49, baseType: !2123, size: 320, offset: 384)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4425, file: !4426, line: 50, baseType: !55, size: 64, offset: 704)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4425, file: !4426, line: 51, baseType: !892, size: 64, offset: 768)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4425, file: !4426, line: 52, baseType: !892, size: 64, offset: 832)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4425, file: !4426, line: 53, baseType: !892, size: 64, offset: 896)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4425, file: !4426, line: 54, baseType: !892, size: 64, offset: 960)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4425, file: !4426, line: 55, baseType: !892, size: 64, offset: 1024)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4425, file: !4426, line: 56, baseType: !55, size: 64, offset: 1088)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4425, file: !4426, line: 57, baseType: !55, size: 64, offset: 1152)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4425, file: !4426, line: 58, baseType: !55, size: 64, offset: 1216)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4425, file: !4426, line: 59, baseType: !55, size: 64, offset: 1280)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4425, file: !4426, line: 60, baseType: !55, size: 64, offset: 1344)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4425, file: !4426, line: 61, baseType: !4266, size: 64, offset: 1408)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4425, file: !4426, line: 62, baseType: !1287, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4425, file: !4426, line: 63, baseType: !1287, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4406, file: !196, line: 681, baseType: !1287, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4406, file: !196, line: 682, baseType: !1287, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4406, file: !196, line: 683, baseType: !1287, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4406, file: !196, line: 684, baseType: !17, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4406, file: !196, line: 685, baseType: !17, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4406, file: !196, line: 690, baseType: !884, size: 512, offset: 640)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4406, file: !196, line: 691, baseType: !398, size: 64, offset: 1152)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4406, file: !196, line: 692, baseType: !1402, size: 256, offset: 1216)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4406, file: !196, line: 693, baseType: !70, size: 192, offset: 1472)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4406, file: !196, line: 694, baseType: !4433, size: 64, offset: 1664)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4406, file: !196, line: 695, baseType: !65, size: 32, offset: 1728)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4406, file: !196, line: 696, baseType: !65, size: 32, offset: 1760)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4406, file: !196, line: 697, baseType: !17, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4406, file: !196, line: 698, baseType: !17, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4406, file: !196, line: 699, baseType: !17, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4406, file: !196, line: 700, baseType: !17, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4406, file: !196, line: 701, baseType: !17, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4406, file: !196, line: 702, baseType: !17, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4406, file: !196, line: 703, baseType: !1287, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4406, file: !196, line: 704, baseType: !17, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4406, file: !196, line: 705, baseType: !17, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4406, file: !196, line: 706, baseType: !17, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4406, file: !196, line: 707, baseType: !17, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4406, file: !196, line: 708, baseType: !17, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4406, file: !196, line: 709, baseType: !17, size: 32, offset: 1824)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4406, file: !196, line: 710, baseType: !195, size: 32, offset: 1856)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4406, file: !196, line: 711, baseType: !203, size: 32, offset: 1888)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4406, file: !196, line: 712, baseType: !203, size: 32, offset: 1920)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4406, file: !196, line: 713, baseType: !38, size: 32, offset: 1952)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4406, file: !196, line: 714, baseType: !38, size: 32, offset: 1984)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4406, file: !196, line: 715, baseType: !398, size: 64, offset: 2048)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4406, file: !196, line: 716, baseType: !398, size: 64, offset: 2112)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4406, file: !196, line: 717, baseType: !398, size: 64, offset: 2176)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4406, file: !196, line: 718, baseType: !398, size: 64, offset: 2240)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4406, file: !196, line: 720, baseType: !4485, size: 64, offset: 2304)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !196, line: 632, size: 64, elements: !4487)
!4487 = !{!4488, !4489}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4486, file: !196, line: 633, baseType: !75, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4486, file: !196, line: 634, baseType: !17, size: 32, offset: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4406, file: !196, line: 721, baseType: !4491, size: 64, offset: 2368)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{null, !4266, !1161}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4406, file: !196, line: 722, baseType: !4495, size: 64, offset: 2432)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !196, line: 722, flags: DIFlagFwdDecl)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4262, file: !189, line: 727, baseType: !4498, size: 64, offset: 4224)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !196, line: 742, size: 1792, elements: !4500)
!4500 = !{!4501, !4502, !4503, !4507, !4508, !4509}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4499, file: !196, line: 743, baseType: !4296, size: 1472)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4499, file: !196, line: 744, baseType: !4299, size: 64, offset: 1472)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4499, file: !196, line: 745, baseType: !4504, size: 64, offset: 1536)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{null, !4266, !1287}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4499, file: !196, line: 746, baseType: !4299, size: 64, offset: 1600)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4499, file: !196, line: 747, baseType: !4290, size: 64, offset: 1664)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4499, file: !196, line: 748, baseType: !4290, size: 64, offset: 1728)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4262, file: !189, line: 736, baseType: !4511, size: 128, offset: 4288)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !189, line: 529, size: 128, elements: !4512)
!4512 = !{!4513, !4517}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4511, file: !189, line: 531, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4516, line: 13, flags: DIFlagFwdDecl)
!4516 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4511, file: !189, line: 532, baseType: !4518, size: 64, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !189, line: 49, flags: DIFlagFwdDecl)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4262, file: !189, line: 738, baseType: !4521, size: 64, offset: 4416)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4523)
!4523 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !189, line: 738, flags: DIFlagFwdDecl)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4262, file: !189, line: 740, baseType: !4525, size: 64, offset: 4480)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4262, file: !189, line: 741, baseType: !398, size: 64, offset: 4544)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4262, file: !189, line: 746, baseType: !398, size: 64, offset: 4608)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4262, file: !189, line: 747, baseType: !4529, size: 64, offset: 4672)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4531)
!4531 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !189, line: 747, flags: DIFlagFwdDecl)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4262, file: !189, line: 749, baseType: !4533, size: 64, offset: 4736)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !189, line: 428, size: 128, elements: !4535)
!4535 = !{!4536, !4537, !4538}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4534, file: !189, line: 433, baseType: !17, size: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4534, file: !189, line: 434, baseType: !17, size: 32, offset: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4534, file: !189, line: 435, baseType: !55, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4262, file: !189, line: 751, baseType: !113, size: 128, offset: 4800)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4262, file: !189, line: 762, baseType: !4541, size: 64, offset: 4928)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !189, line: 762, flags: DIFlagFwdDecl)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4262, file: !189, line: 770, baseType: !4544, offset: 4992)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4545, line: 5, elements: !1081)
!4545 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4262, file: !189, line: 772, baseType: !4547, size: 64, offset: 4992)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4549, line: 18, flags: DIFlagFwdDecl)
!4549 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4262, file: !189, line: 773, baseType: !4551, size: 64, offset: 5056)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4553, line: 41, size: 512, elements: !4554)
!4553 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4554 = !{!4555, !4556, !4650, !4651, !4652, !4653}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4552, file: !4553, line: 42, baseType: !4551, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4552, file: !4553, line: 43, baseType: !4557, size: 64, offset: 64)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4559)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4553, line: 125, size: 1408, elements: !4560)
!4560 = !{!4561, !4565, !4569, !4575, !4579, !4580, !4585, !4589, !4593, !4597, !4601, !4602, !4606, !4610, !4614, !4625, !4626, !4627, !4628, !4638, !4642, !4646}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4559, file: !4553, line: 126, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!4551, !4551}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4559, file: !4553, line: 127, baseType: !4566, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{null, !4551}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4559, file: !4553, line: 128, baseType: !4570, size: 64, offset: 128)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!1287, !4573}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4552)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4559, file: !4553, line: 129, baseType: !4576, size: 64, offset: 192)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!1216, !4573, !4282}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4559, file: !4553, line: 131, baseType: !4570, size: 64, offset: 256)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4559, file: !4553, line: 133, baseType: !4581, size: 64, offset: 320)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!4584, !4573}
!4584 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4553, line: 132, flags: DIFlagFwdDecl)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4559, file: !4553, line: 134, baseType: !4586, size: 64, offset: 384)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!1287, !4573, !33}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4559, file: !4553, line: 136, baseType: !4590, size: 64, offset: 448)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!38, !4573, !33, !17, !36, !51}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4559, file: !4553, line: 141, baseType: !4594, size: 64, offset: 512)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!38, !4573, !33, !3877, !51}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4559, file: !4553, line: 144, baseType: !4598, size: 64, offset: 576)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!33, !4573}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4559, file: !4553, line: 145, baseType: !4598, size: 64, offset: 640)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4559, file: !4553, line: 146, baseType: !4603, size: 64, offset: 704)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!4551, !4573}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4559, file: !4553, line: 148, baseType: !4607, size: 64, offset: 768)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!4551, !4573, !4551}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4559, file: !4553, line: 151, baseType: !4611, size: 64, offset: 832)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!4551, !4573, !33}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4559, file: !4553, line: 153, baseType: !4615, size: 64, offset: 896)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!38, !4573, !33, !33, !17, !17, !4618}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4553, line: 94, size: 640, elements: !4620)
!4620 = !{!4621, !4622, !4623}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4619, file: !4553, line: 95, baseType: !4551, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4619, file: !4553, line: 96, baseType: !17, size: 32, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4619, file: !4553, line: 97, baseType: !4624, size: 512, offset: 128)
!4624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 512, elements: !927)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4559, file: !4553, line: 158, baseType: !4607, size: 64, offset: 960)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4559, file: !4553, line: 161, baseType: !4603, size: 64, offset: 1024)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4559, file: !4553, line: 163, baseType: !4562, size: 64, offset: 1088)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4559, file: !4553, line: 164, baseType: !4629, size: 64, offset: 1152)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!38, !4573, !4632}
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4553, line: 73, size: 128, elements: !4634)
!4634 = !{!4635, !4636, !4637}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4633, file: !4553, line: 74, baseType: !17, size: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4633, file: !4553, line: 75, baseType: !17, size: 32, offset: 32)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4633, file: !4553, line: 76, baseType: !4573, size: 64, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4559, file: !4553, line: 166, baseType: !4639, size: 64, offset: 1216)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!36, !4551, !38}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4559, file: !4553, line: 167, baseType: !4643, size: 64, offset: 1280)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!38, !4573, !17}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4559, file: !4553, line: 168, baseType: !4647, size: 64, offset: 1344)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!38, !4551}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4552, file: !4553, line: 44, baseType: !4266, size: 64, offset: 128)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4552, file: !4553, line: 45, baseType: !113, size: 128, offset: 192)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4552, file: !4553, line: 46, baseType: !113, size: 128, offset: 320)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4552, file: !4553, line: 47, baseType: !99, size: 8, offset: 448)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4262, file: !189, line: 776, baseType: !38, size: 32, offset: 5120)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4262, file: !189, line: 778, baseType: !480, size: 32, offset: 5152)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4262, file: !189, line: 779, baseType: !394, size: 32, offset: 5184)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4262, file: !189, line: 781, baseType: !75, size: 32, offset: 5216)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4262, file: !189, line: 782, baseType: !113, size: 128, offset: 5248)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4262, file: !189, line: 784, baseType: !4660, size: 64, offset: 5376)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4662)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4663, line: 52, size: 768, elements: !4664)
!4663 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4664 = !{!4665, !4666, !4667, !4668, !4669, !4673, !4677, !4678, !4679, !4680, !4684, !4688}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4662, file: !4663, line: 53, baseType: !33, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4662, file: !4663, line: 55, baseType: !609, size: 64, offset: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4662, file: !4663, line: 56, baseType: !609, size: 64, offset: 128)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4662, file: !4663, line: 58, baseType: !4279, size: 64, offset: 192)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4662, file: !4663, line: 59, baseType: !4670, size: 64, offset: 256)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!464, !4282, !4288}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4662, file: !4663, line: 61, baseType: !4674, size: 64, offset: 320)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{null, !4660}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4662, file: !4663, line: 62, baseType: !4290, size: 64, offset: 384)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4662, file: !4663, line: 64, baseType: !4299, size: 64, offset: 448)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4662, file: !4663, line: 66, baseType: !3528, size: 64, offset: 512)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4662, file: !4663, line: 67, baseType: !4681, size: 64, offset: 576)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!1216, !4282}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4662, file: !4663, line: 69, baseType: !4685, size: 64, offset: 640)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{null, !4282, !1466, !1467}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4662, file: !4663, line: 71, baseType: !4294, size: 64, offset: 704)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4262, file: !189, line: 785, baseType: !609, size: 64, offset: 5440)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4262, file: !189, line: 787, baseType: !4290, size: 64, offset: 5504)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4262, file: !189, line: 788, baseType: !4692, size: 64, offset: 5568)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !189, line: 46, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4262, file: !189, line: 789, baseType: !4695, size: 64, offset: 5632)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !189, line: 48, flags: DIFlagFwdDecl)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4262, file: !189, line: 791, baseType: !4698, size: 64, offset: 5696)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !189, line: 597, size: 128, elements: !4700)
!4700 = !{!4701, !4702, !4703, !4704, !4705}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4699, file: !189, line: 598, baseType: !210, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4699, file: !189, line: 599, baseType: !219, size: 32, offset: 32)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4699, file: !189, line: 600, baseType: !224, size: 32, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4699, file: !189, line: 601, baseType: !1287, size: 8, offset: 96)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4699, file: !189, line: 602, baseType: !1287, size: 8, offset: 104)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4262, file: !189, line: 793, baseType: !229, size: 32, offset: 5760)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4262, file: !189, line: 795, baseType: !1287, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4262, file: !189, line: 796, baseType: !1287, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4262, file: !189, line: 797, baseType: !1287, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4262, file: !189, line: 798, baseType: !1287, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4262, file: !189, line: 799, baseType: !1287, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !476, file: !172, line: 1226, baseType: !4713, size: 64, offset: 1664)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !172, line: 1226, flags: DIFlagFwdDecl)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !476, file: !172, line: 1227, baseType: !4716, size: 64, offset: 1728)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !236, line: 163, size: 6848, elements: !4718)
!4718 = !{!4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4765, !4766, !4767, !4768, !4769, !4770, !4771}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4717, file: !236, line: 164, baseType: !398, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4717, file: !236, line: 165, baseType: !814, size: 192, align: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4717, file: !236, line: 166, baseType: !113, size: 128, offset: 256)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4717, file: !236, line: 167, baseType: !55, size: 64, offset: 384)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4717, file: !236, line: 168, baseType: !55, size: 64, offset: 448)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4717, file: !236, line: 170, baseType: !3566, size: 32, offset: 512)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4717, file: !236, line: 171, baseType: !17, size: 32, offset: 544)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4717, file: !236, line: 172, baseType: !17, size: 32, offset: 576)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4717, file: !236, line: 173, baseType: !17, size: 32, offset: 608)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4717, file: !236, line: 173, baseType: !17, size: 32, offset: 640)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4717, file: !236, line: 179, baseType: !663, size: 64, offset: 704)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4717, file: !236, line: 184, baseType: !55, size: 64, offset: 768)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4717, file: !236, line: 186, baseType: !4732, size: 4672, offset: 832)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !236, line: 105, size: 4672, elements: !4733)
!4733 = !{!4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4758, !4759, !4760, !4761, !4762, !4763, !4764}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4732, file: !236, line: 106, baseType: !4716, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4732, file: !236, line: 108, baseType: !55, size: 64, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4732, file: !236, line: 109, baseType: !55, size: 64, offset: 128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4732, file: !236, line: 111, baseType: !113, size: 128, offset: 192)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4732, file: !236, line: 112, baseType: !113, size: 128, offset: 320)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4732, file: !236, line: 113, baseType: !113, size: 128, offset: 448)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4732, file: !236, line: 114, baseType: !113, size: 128, offset: 576)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4732, file: !236, line: 115, baseType: !75, size: 32, offset: 704)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4732, file: !236, line: 117, baseType: !65, size: 32, offset: 736)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4732, file: !236, line: 118, baseType: !1152, size: 1280, offset: 768)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4732, file: !236, line: 120, baseType: !55, size: 64, offset: 2048)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4732, file: !236, line: 121, baseType: !55, size: 64, offset: 2112)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4732, file: !236, line: 122, baseType: !55, size: 64, offset: 2176)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4732, file: !236, line: 123, baseType: !55, size: 64, offset: 2240)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4732, file: !236, line: 124, baseType: !55, size: 64, offset: 2304)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4732, file: !236, line: 132, baseType: !55, size: 64, offset: 2368)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4732, file: !236, line: 133, baseType: !55, size: 64, offset: 2432)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4732, file: !236, line: 135, baseType: !4752, size: 384, offset: 2496)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4753, line: 76, size: 384, elements: !4754)
!4753 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4754 = !{!4755, !4756, !4757}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4752, file: !4753, line: 78, baseType: !1153, size: 320)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4752, file: !4753, line: 80, baseType: !17, size: 32, offset: 320)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4752, file: !4753, line: 81, baseType: !677, size: 32, offset: 352)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4732, file: !236, line: 136, baseType: !38, size: 32, offset: 2880)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4732, file: !236, line: 137, baseType: !235, size: 32, offset: 2912)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4732, file: !236, line: 139, baseType: !75, size: 32, offset: 2944)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4732, file: !236, line: 140, baseType: !113, size: 128, offset: 3008)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4732, file: !236, line: 141, baseType: !3859, size: 704, offset: 3136)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4732, file: !236, line: 142, baseType: !3859, size: 704, offset: 3840)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4732, file: !236, line: 144, baseType: !113, size: 128, offset: 4544)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4717, file: !236, line: 187, baseType: !113, size: 128, offset: 5504)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4717, file: !236, line: 193, baseType: !70, size: 192, offset: 5632)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4717, file: !236, line: 195, baseType: !4266, size: 64, offset: 5824)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4717, file: !236, line: 196, baseType: !2162, size: 512, offset: 5888)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4717, file: !236, line: 197, baseType: !4266, size: 64, offset: 6400)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4717, file: !236, line: 199, baseType: !2123, size: 320, offset: 6464)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4717, file: !236, line: 202, baseType: !360, size: 64, offset: 6784)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !476, file: !172, line: 1228, baseType: !4773, size: 64, offset: 1792)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !172, line: 1228, flags: DIFlagFwdDecl)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !476, file: !172, line: 1229, baseType: !728, size: 128, offset: 1856)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !476, file: !172, line: 1230, baseType: !17, size: 32, offset: 1984)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !476, file: !172, line: 1231, baseType: !4778, size: 2496, offset: 2048)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !177, line: 521, size: 2496, elements: !4779)
!4779 = !{!4780, !4781, !4782, !4784, !4816}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4778, file: !177, line: 522, baseType: !17, size: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4778, file: !177, line: 523, baseType: !1115, size: 320, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4778, file: !177, line: 524, baseType: !4783, size: 192, offset: 384)
!4783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 192, elements: !564)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4778, file: !177, line: 525, baseType: !4785, size: 1728, offset: 576)
!4785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4786, size: 1728, elements: !564)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !177, line: 222, size: 576, elements: !4787)
!4787 = !{!4788, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4786, file: !177, line: 223, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !177, line: 445, size: 256, elements: !4791)
!4791 = !{!4792, !4793, !4806, !4807}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4790, file: !177, line: 446, baseType: !38, size: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4790, file: !177, line: 447, baseType: !4794, size: 64, offset: 64)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4796)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !177, line: 312, size: 512, elements: !4797)
!4797 = !{!4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4796, file: !177, line: 313, baseType: !3971, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4796, file: !177, line: 314, baseType: !3971, size: 64, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4796, file: !177, line: 315, baseType: !3971, size: 64, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4796, file: !177, line: 316, baseType: !3971, size: 64, offset: 192)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4796, file: !177, line: 317, baseType: !4080, size: 64, offset: 256)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4796, file: !177, line: 318, baseType: !4080, size: 64, offset: 320)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4796, file: !177, line: 319, baseType: !4080, size: 64, offset: 384)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4796, file: !177, line: 320, baseType: !4110, size: 64, offset: 448)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4790, file: !177, line: 448, baseType: !510, size: 64, offset: 128)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4790, file: !177, line: 449, baseType: !4789, size: 64, offset: 192)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4786, file: !177, line: 224, baseType: !38, size: 32, offset: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4786, file: !177, line: 226, baseType: !113, size: 128, offset: 128)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4786, file: !177, line: 227, baseType: !55, size: 64, offset: 256)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4786, file: !177, line: 228, baseType: !17, size: 32, offset: 320)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4786, file: !177, line: 229, baseType: !17, size: 32, offset: 352)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4786, file: !177, line: 230, baseType: !4048, size: 64, offset: 384)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4786, file: !177, line: 231, baseType: !4048, size: 64, offset: 448)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4786, file: !177, line: 232, baseType: !36, size: 64, offset: 512)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4778, file: !177, line: 526, baseType: !4817, size: 192, offset: 2304)
!4817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4794, size: 192, elements: !564)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !476, file: !172, line: 1233, baseType: !4819, size: 2368, offset: 4544)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !172, line: 1184, size: 2368, elements: !4820)
!4820 = !{!4821, !4822, !4823}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4819, file: !172, line: 1185, baseType: !42, size: 16)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4819, file: !172, line: 1186, baseType: !42, size: 16, offset: 16)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4819, file: !172, line: 1187, baseType: !4824, size: 2304, offset: 64)
!4824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4825, size: 2304, elements: !564)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4826, line: 12, size: 768, elements: !4827)
!4826 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4827 = !{!4828, !4836, !4837, !4842, !4843}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4825, file: !4826, line: 13, baseType: !4829, size: 384)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4830, line: 17, size: 384, elements: !4831)
!4830 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4831 = !{!4832, !4833, !4834, !4835}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4829, file: !4830, line: 18, baseType: !38, size: 32)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4829, file: !4830, line: 19, baseType: !38, size: 32, offset: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4829, file: !4830, line: 20, baseType: !70, size: 192, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4829, file: !4830, line: 22, baseType: !650, size: 128, align: 64, offset: 256)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4825, file: !4826, line: 14, baseType: !3669, size: 64, offset: 384)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4825, file: !4826, line: 15, baseType: !4838, size: 64, offset: 448)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4839, line: 16, size: 64, elements: !4840)
!4839 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4840 = !{!4841}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4838, file: !4839, line: 17, baseType: !765, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4825, file: !4826, line: 16, baseType: !70, size: 192, offset: 512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4825, file: !4826, line: 17, baseType: !65, size: 32, offset: 704)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !476, file: !172, line: 1240, baseType: !36, size: 64, offset: 6912)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !476, file: !172, line: 1243, baseType: !394, size: 32, offset: 6976)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !476, file: !172, line: 1245, baseType: !1313, size: 64, offset: 7040)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !476, file: !172, line: 1246, baseType: !1313, size: 64, offset: 7104)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !476, file: !172, line: 1248, baseType: !395, size: 32, offset: 7168)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !476, file: !172, line: 1249, baseType: !4850, size: 64, offset: 7232)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !172, line: 634, flags: DIFlagFwdDecl)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !476, file: !172, line: 1252, baseType: !10, size: 256, offset: 7296)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !476, file: !172, line: 1253, baseType: !4854, size: 128, offset: 7552)
!4854 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4855, line: 21, baseType: !4856)
!4855 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4855, line: 19, size: 128, elements: !4857)
!4857 = !{!4858}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4856, file: !4855, line: 20, baseType: !4859, size: 128)
!4859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !1734)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !476, file: !172, line: 1255, baseType: !17, size: 32, offset: 7680)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !476, file: !172, line: 1261, baseType: !672, size: 256, offset: 7744)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !476, file: !172, line: 1267, baseType: !33, size: 64, offset: 8000)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !476, file: !172, line: 1269, baseType: !421, size: 64, offset: 8064)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !476, file: !172, line: 1271, baseType: !4865, size: 448, offset: 8128)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4063, line: 63, size: 448, elements: !4866)
!4866 = !{!4867, !4872, !4873, !4874, !4875, !4876, !4877}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4865, file: !4063, line: 64, baseType: !4868, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!55, !4871, !4061}
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4865, file: !4063, line: 66, baseType: !4868, size: 64, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4865, file: !4063, line: 69, baseType: !598, size: 64, offset: 128)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4865, file: !4063, line: 70, baseType: !38, size: 32, offset: 192)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4865, file: !4063, line: 71, baseType: !17, size: 32, offset: 224)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4865, file: !4063, line: 74, baseType: !113, size: 128, offset: 256)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4865, file: !4063, line: 85, baseType: !4878, size: 64, offset: 384)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !476, file: !172, line: 1274, baseType: !663, size: 64, offset: 8576)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !476, file: !172, line: 1280, baseType: !663, size: 64, offset: 8640)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !476, file: !172, line: 1283, baseType: !38, size: 32, offset: 8704)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !476, file: !172, line: 1286, baseType: !3512, size: 32, offset: 8736)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !476, file: !172, line: 1289, baseType: !2358, size: 64, offset: 8768)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !476, file: !172, line: 1290, baseType: !724, size: 64, offset: 8832)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !476, file: !172, line: 1297, baseType: !1242, size: 64, offset: 8896)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !476, file: !172, line: 1304, baseType: !4887, size: 64, offset: 8960)
!4887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4888, line: 49, size: 64, elements: !4889)
!4888 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4889 = !{!4890}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4887, file: !4888, line: 50, baseType: !4891, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4888, line: 41, size: 512, align: 512, elements: !4893)
!4893 = !{!4894, !4895, !4900}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4892, file: !4888, line: 43, baseType: !75, size: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4892, file: !4888, line: 45, baseType: !4896, size: 192, offset: 64)
!4896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4888, line: 29, size: 192, elements: !4897)
!4897 = !{!4898, !4899}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4896, file: !4888, line: 30, baseType: !113, size: 128)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4896, file: !4888, line: 32, baseType: !598, size: 64, offset: 128)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4892, file: !4888, line: 46, baseType: !598, size: 64, offset: 256)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !476, file: !172, line: 1305, baseType: !4887, size: 64, offset: 9024)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !476, file: !172, line: 1306, baseType: !650, size: 128, align: 64, offset: 9088)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !476, file: !172, line: 1307, baseType: !1402, size: 256, offset: 9216)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !476, file: !172, line: 1309, baseType: !672, size: 256, offset: 9472)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !476, file: !172, line: 1314, baseType: !38, size: 32, offset: 9728)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !476, file: !172, line: 1317, baseType: !75, size: 32, align: 512, offset: 10240)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !476, file: !172, line: 1318, baseType: !113, size: 128, offset: 10304)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !476, file: !172, line: 1320, baseType: !75, size: 32, offset: 10432)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !476, file: !172, line: 1321, baseType: !113, size: 128, offset: 10496)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !470, file: !471, line: 73, baseType: !38, size: 32, offset: 128)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !470, file: !471, line: 74, baseType: !4912, size: 64, offset: 192)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1677, line: 42, flags: DIFlagFwdDecl)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !423, file: !362, line: 141, baseType: !4916, size: 64, offset: 704)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!38, !4123, !1287}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !423, file: !362, line: 142, baseType: !4920, size: 64, offset: 768)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!360, !360, !4923}
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !361, file: !362, line: 96, baseType: !475, size: 64, offset: 832)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !361, file: !362, line: 97, baseType: !55, size: 64, offset: 896)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !361, file: !362, line: 98, baseType: !36, size: 64, offset: 960)
!4928 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !362, line: 100, baseType: !4929, size: 128, offset: 1024)
!4929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !362, line: 100, size: 128, elements: !4930)
!4930 = !{!4931, !4932}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4929, file: !362, line: 101, baseType: !113, size: 128)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4929, file: !362, line: 102, baseType: !2098, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !361, file: !362, line: 104, baseType: !113, size: 128, offset: 1152)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !361, file: !362, line: 105, baseType: !113, size: 128, offset: 1280)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !361, file: !362, line: 113, baseType: !4936, size: 128, offset: 1408)
!4936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !362, line: 109, size: 128, elements: !4937)
!4937 = !{!4938, !4939, !4940}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4936, file: !362, line: 110, baseType: !728, size: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4936, file: !362, line: 111, baseType: !376, size: 128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4936, file: !362, line: 112, baseType: !650, size: 128, align: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !354, file: !172, line: 1968, baseType: !4942, size: 64, offset: 64)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!33, !360, !325, !4945}
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4947, line: 10, size: 128, elements: !4948)
!4947 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4948 = !{!4949, !4950}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4946, file: !4947, line: 11, baseType: !3553, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4946, file: !4947, line: 12, baseType: !36, size: 64, offset: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !354, file: !172, line: 1969, baseType: !4952, size: 64, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!38, !4912, !325, !38}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !354, file: !172, line: 1970, baseType: !4956, size: 64, offset: 192)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!348, !325, !38, !1287}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !354, file: !172, line: 1972, baseType: !4960, size: 64, offset: 256)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!38, !360, !464, !38}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !354, file: !172, line: 1974, baseType: !4964, size: 64, offset: 320)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!38, !4912, !325, !360, !40, !1287}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !354, file: !172, line: 1976, baseType: !4968, size: 64, offset: 384)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!38, !360, !325, !360}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !354, file: !172, line: 1977, baseType: !4972, size: 64, offset: 448)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!38, !325, !360}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !354, file: !172, line: 1978, baseType: !4976, size: 64, offset: 512)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!38, !4912, !325, !360, !33}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !354, file: !172, line: 1980, baseType: !4980, size: 64, offset: 576)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!38, !4912, !325, !360, !40}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !354, file: !172, line: 1982, baseType: !4972, size: 64, offset: 640)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !354, file: !172, line: 1983, baseType: !4985, size: 64, offset: 704)
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!38, !4912, !325, !360, !40, !480}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !354, file: !172, line: 1985, baseType: !4989, size: 64, offset: 768)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!38, !4912, !325, !360, !325, !360, !17}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !354, file: !172, line: 1987, baseType: !4993, size: 64, offset: 832)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!38, !4912, !360, !4996}
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !172, line: 226, size: 640, elements: !4998)
!4998 = !{!4999, !5000, !5001, !5011, !5020, !5021, !5026, !5027, !5028}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4997, file: !172, line: 227, baseType: !17, size: 32)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4997, file: !172, line: 228, baseType: !40, size: 16, offset: 32)
!5001 = !DIDerivedType(tag: DW_TAG_member, scope: !4997, file: !172, line: 241, baseType: !5002, size: 32, offset: 64)
!5002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4997, file: !172, line: 241, size: 32, elements: !5003)
!5003 = !{!5004, !5005}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5002, file: !172, line: 242, baseType: !331, size: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5002, file: !172, line: 243, baseType: !5006, size: 32)
!5006 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5007, line: 16, baseType: !5008)
!5007 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5007, line: 14, size: 32, elements: !5009)
!5009 = !{!5010}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5008, file: !5007, line: 15, baseType: !336, size: 32)
!5011 = !DIDerivedType(tag: DW_TAG_member, scope: !4997, file: !172, line: 245, baseType: !5012, size: 32, offset: 96)
!5012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4997, file: !172, line: 245, size: 32, elements: !5013)
!5013 = !{!5014, !5015}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5012, file: !172, line: 246, baseType: !340, size: 32)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5012, file: !172, line: 247, baseType: !5016, size: 32)
!5016 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5007, line: 20, baseType: !5017)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5007, line: 18, size: 32, elements: !5018)
!5018 = !{!5019}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5017, file: !5007, line: 19, baseType: !344, size: 32)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4997, file: !172, line: 249, baseType: !57, size: 64, offset: 128)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4997, file: !172, line: 250, baseType: !5022, size: 128, offset: 192)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1314, line: 13, size: 128, elements: !5023)
!5023 = !{!5024, !5025}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5022, file: !1314, line: 14, baseType: !1313, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5022, file: !1314, line: 15, baseType: !598, size: 64, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4997, file: !172, line: 251, baseType: !5022, size: 128, offset: 320)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4997, file: !172, line: 252, baseType: !5022, size: 128, offset: 448)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4997, file: !172, line: 259, baseType: !637, size: 64, offset: 576)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !354, file: !172, line: 1988, baseType: !5030, size: 64, offset: 896)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!38, !4912, !4123, !5033, !394, !17}
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5035, line: 22, size: 1280, elements: !5036)
!5035 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5036 = !{!5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5034, file: !5035, line: 23, baseType: !394, size: 32)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5034, file: !5035, line: 24, baseType: !40, size: 16, offset: 32)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5034, file: !5035, line: 25, baseType: !17, size: 32, offset: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5034, file: !5035, line: 26, baseType: !1321, size: 32, offset: 96)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5034, file: !5035, line: 27, baseType: !398, size: 64, offset: 128)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5034, file: !5035, line: 28, baseType: !398, size: 64, offset: 192)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5034, file: !5035, line: 41, baseType: !398, size: 64, offset: 256)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5034, file: !5035, line: 42, baseType: !480, size: 32, offset: 320)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5034, file: !5035, line: 43, baseType: !480, size: 32, offset: 352)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5034, file: !5035, line: 44, baseType: !331, size: 32, offset: 384)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5034, file: !5035, line: 45, baseType: !340, size: 32, offset: 416)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5034, file: !5035, line: 46, baseType: !57, size: 64, offset: 448)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5034, file: !5035, line: 47, baseType: !5022, size: 128, offset: 512)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5034, file: !5035, line: 48, baseType: !5022, size: 128, offset: 640)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5034, file: !5035, line: 49, baseType: !5022, size: 128, offset: 768)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5034, file: !5035, line: 50, baseType: !5022, size: 128, offset: 896)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5034, file: !5035, line: 51, baseType: !398, size: 64, offset: 1024)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5034, file: !5035, line: 52, baseType: !398, size: 64, offset: 1088)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5034, file: !5035, line: 53, baseType: !394, size: 32, offset: 1152)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5034, file: !5035, line: 54, baseType: !394, size: 32, offset: 1184)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5034, file: !5035, line: 55, baseType: !398, size: 64, offset: 1216)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !354, file: !172, line: 1990, baseType: !5059, size: 64, offset: 960)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!595, !360, !464, !51}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !354, file: !172, line: 1991, baseType: !5063, size: 64, offset: 1024)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!38, !325, !5066, !398, !398}
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !172, line: 55, flags: DIFlagFwdDecl)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !354, file: !172, line: 1993, baseType: !5069, size: 64, offset: 1088)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!38, !325, !38}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !354, file: !172, line: 1994, baseType: !5073, size: 64, offset: 1152)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!38, !325, !360, !637, !17, !40}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !354, file: !172, line: 1997, baseType: !5077, size: 64, offset: 1216)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!38, !4912, !325, !637, !40}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !354, file: !172, line: 1999, baseType: !5081, size: 64, offset: 1280)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!348, !4912, !360, !38}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !354, file: !172, line: 2001, baseType: !5085, size: 64, offset: 1344)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!38, !4912, !360, !348, !38}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !354, file: !172, line: 2003, baseType: !5089, size: 64, offset: 1408)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!38, !4912, !360, !5092}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !172, line: 76, flags: DIFlagFwdDecl)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !354, file: !172, line: 2005, baseType: !5095, size: 64, offset: 1472)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!38, !360, !5092}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !354, file: !172, line: 2006, baseType: !5099, size: 64, offset: 1536)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!5102, !325}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !172, line: 3192, size: 192, elements: !5104)
!5104 = !{!5105, !5106}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5103, file: !172, line: 3193, baseType: !753, size: 128)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5103, file: !172, line: 3194, baseType: !394, size: 32, offset: 128)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !326, file: !172, line: 655, baseType: !475, size: 64, offset: 448)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !326, file: !172, line: 656, baseType: !321, size: 64, offset: 512)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !326, file: !172, line: 659, baseType: !36, size: 64, offset: 576)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !326, file: !172, line: 663, baseType: !55, size: 64, offset: 640)
!5111 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !172, line: 671, baseType: !5112, size: 32, offset: 704)
!5112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !172, line: 671, size: 32, elements: !5113)
!5113 = !{!5114, !5116}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5112, file: !172, line: 672, baseType: !5115, size: 32)
!5115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5112, file: !172, line: 673, baseType: !17, size: 32)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !326, file: !172, line: 675, baseType: !480, size: 32, offset: 736)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !326, file: !172, line: 676, baseType: !57, size: 64, offset: 768)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !326, file: !172, line: 677, baseType: !5022, size: 128, offset: 832)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !326, file: !172, line: 678, baseType: !5022, size: 128, offset: 960)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !326, file: !172, line: 679, baseType: !5022, size: 128, offset: 1088)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !326, file: !172, line: 680, baseType: !75, size: 32, offset: 1216)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !326, file: !172, line: 681, baseType: !42, size: 16, offset: 1248)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !326, file: !172, line: 682, baseType: !99, size: 8, offset: 1264)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !326, file: !172, line: 683, baseType: !99, size: 8, offset: 1272)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !326, file: !172, line: 684, baseType: !4196, size: 64, offset: 1280)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !326, file: !172, line: 691, baseType: !55, size: 64, offset: 1344)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !326, file: !172, line: 692, baseType: !1115, size: 320, offset: 1408)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !326, file: !172, line: 694, baseType: !55, size: 64, offset: 1728)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !326, file: !172, line: 695, baseType: !55, size: 64, offset: 1792)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !326, file: !172, line: 697, baseType: !728, size: 128, offset: 1856)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !326, file: !172, line: 698, baseType: !113, size: 128, offset: 1984)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !326, file: !172, line: 707, baseType: !113, size: 128, offset: 2112)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !326, file: !172, line: 708, baseType: !113, size: 128, offset: 2240)
!5135 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !172, line: 709, baseType: !5136, size: 128, offset: 2368)
!5136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !172, line: 709, size: 128, elements: !5137)
!5137 = !{!5138, !5139}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5136, file: !172, line: 710, baseType: !724, size: 64)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5136, file: !172, line: 711, baseType: !650, size: 128, align: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !326, file: !172, line: 713, baseType: !665, size: 64, offset: 2496)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !326, file: !172, line: 714, baseType: !665, size: 64, offset: 2560)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !326, file: !172, line: 715, baseType: !65, size: 32, offset: 2624)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !326, file: !172, line: 716, baseType: !65, size: 32, offset: 2656)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !326, file: !172, line: 717, baseType: !65, size: 32, offset: 2688)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !326, file: !172, line: 719, baseType: !65, size: 32, offset: 2720)
!5146 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !172, line: 721, baseType: !5147, size: 64, offset: 2752)
!5147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !172, line: 721, size: 64, elements: !5148)
!5148 = !{!5149, !5150}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5147, file: !172, line: 722, baseType: !3213, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5147, file: !172, line: 723, baseType: !3932, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !326, file: !172, line: 725, baseType: !5152, size: 64, offset: 2816)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !172, line: 725, flags: DIFlagFwdDecl)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !326, file: !172, line: 726, baseType: !322, size: 1536, align: 64, offset: 2880)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !326, file: !172, line: 727, baseType: !113, size: 128, offset: 4416)
!5156 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !172, line: 728, baseType: !5157, size: 64, offset: 4544)
!5157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !172, line: 728, size: 64, elements: !5158)
!5158 = !{!5159, !5160, !5171, !5172}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5157, file: !172, line: 729, baseType: !2843, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5157, file: !172, line: 730, baseType: !5161, size: 64)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !5163, line: 14, size: 832, elements: !5164)
!5163 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!5164 = !{!5165, !5166, !5167, !5168, !5169, !5170}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5162, file: !5163, line: 15, baseType: !523, size: 512)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5162, file: !5163, line: 16, baseType: !510, size: 64, offset: 512)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5162, file: !5163, line: 17, baseType: !3213, size: 64, offset: 576)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5162, file: !5163, line: 18, baseType: !113, size: 128, offset: 640)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5162, file: !5163, line: 19, baseType: !480, size: 32, offset: 768)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5162, file: !5163, line: 20, baseType: !17, size: 32, offset: 800)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5157, file: !172, line: 731, baseType: !464, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5157, file: !172, line: 732, baseType: !17, size: 32)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !326, file: !172, line: 735, baseType: !395, size: 32, offset: 4608)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !326, file: !172, line: 738, baseType: !395, size: 32, offset: 4640)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !326, file: !172, line: 739, baseType: !4850, size: 64, offset: 4672)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !326, file: !172, line: 750, baseType: !36, size: 64, offset: 4736)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !322, file: !172, line: 474, baseType: !753, size: 128, offset: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !322, file: !172, line: 475, baseType: !1115, size: 320, offset: 192)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !322, file: !172, line: 476, baseType: !758, size: 32, offset: 512)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !322, file: !172, line: 477, baseType: !65, size: 32, offset: 544)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !322, file: !172, line: 482, baseType: !943, size: 128, offset: 576)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !322, file: !172, line: 483, baseType: !55, size: 64, offset: 704)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !322, file: !172, line: 484, baseType: !55, size: 64, offset: 768)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !322, file: !172, line: 485, baseType: !5185, size: 64, offset: 832)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5187)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !172, line: 404, size: 1280, elements: !5188)
!5188 = !{!5189, !5193, !5197, !5201, !5205, !5221, !5225, !5229, !5233, !5237, !5241, !5245, !5246, !5250, !5254, !5258, !5263, !5267, !5319, !5320}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5187, file: !172, line: 405, baseType: !5190, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!38, !299, !3944}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5187, file: !172, line: 406, baseType: !5194, size: 64, offset: 64)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!38, !637, !3255}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5187, file: !172, line: 409, baseType: !5198, size: 64, offset: 128)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!38, !321, !3944}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5187, file: !172, line: 412, baseType: !5202, size: 64, offset: 192)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!1287, !321, !3255}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5187, file: !172, line: 414, baseType: !5206, size: 64, offset: 256)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{null, !5209}
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !3252, line: 1276, size: 448, elements: !5211)
!5211 = !{!5212, !5213, !5214, !5216, !5217, !5218, !5219, !5220}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5210, file: !3252, line: 1277, baseType: !637, size: 64)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5210, file: !3252, line: 1278, baseType: !321, size: 64, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5210, file: !3252, line: 1279, baseType: !5215, size: 64, offset: 128)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5210, file: !3252, line: 1281, baseType: !55, size: 64, offset: 192)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5210, file: !3252, line: 1282, baseType: !17, size: 32, offset: 256)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5210, file: !3252, line: 1283, baseType: !17, size: 32, offset: 288)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5210, file: !3252, line: 1284, baseType: !1287, size: 8, offset: 320)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5210, file: !3252, line: 1285, baseType: !55, size: 64, offset: 384)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5187, file: !172, line: 416, baseType: !5222, size: 64, offset: 320)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!38, !637, !321, !57, !17, !2952, !3477}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5187, file: !172, line: 419, baseType: !5226, size: 64, offset: 384)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!38, !637, !321, !57, !17, !17, !299, !36}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5187, file: !172, line: 424, baseType: !5230, size: 64, offset: 448)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!4227, !321, !4227}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5187, file: !172, line: 425, baseType: !5234, size: 64, offset: 512)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{null, !3255, !51, !51}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5187, file: !172, line: 426, baseType: !5238, size: 64, offset: 576)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!1287, !3255, !758}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5187, file: !172, line: 427, baseType: !5242, size: 64, offset: 640)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{null, !3255}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5187, file: !172, line: 428, baseType: !3231, size: 64, offset: 704)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5187, file: !172, line: 433, baseType: !5247, size: 64, offset: 768)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!38, !321, !3255, !3255, !247}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5187, file: !172, line: 435, baseType: !5251, size: 64, offset: 832)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{!38, !3255}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5187, file: !172, line: 436, baseType: !5255, size: 64, offset: 896)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!1287, !3255, !51, !51}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5187, file: !172, line: 438, baseType: !5259, size: 64, offset: 960)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{null, !3255, !5262, !5262}
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5187, file: !172, line: 439, baseType: !5264, size: 64, offset: 1024)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!38, !321, !299}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5187, file: !172, line: 442, baseType: !5268, size: 64, offset: 1088)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!38, !5271, !637, !5318}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2663, line: 282, size: 2176, elements: !5273)
!5273 = !{!5274, !5275, !5276, !5277, !5278, !5279, !5280, !5282, !5289, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5272, file: !2663, line: 283, baseType: !2324, size: 128)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5272, file: !2663, line: 284, baseType: !55, size: 64, offset: 128)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5272, file: !2663, line: 285, baseType: !1235, size: 16, offset: 192)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5272, file: !2663, line: 286, baseType: !1052, size: 320, offset: 256)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5272, file: !2663, line: 287, baseType: !3648, size: 8, offset: 576)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5272, file: !2663, line: 288, baseType: !17, size: 32, offset: 608)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5272, file: !2663, line: 289, baseType: !5281, size: 64, offset: 640)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5272, file: !2663, line: 290, baseType: !5283, size: 64, offset: 704)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2663, line: 250, size: 64, elements: !5285)
!5285 = !{!5286, !5287, !5288}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5284, file: !2663, line: 251, baseType: !75, size: 32)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5284, file: !2663, line: 257, baseType: !17, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5284, file: !2663, line: 258, baseType: !17, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5272, file: !2663, line: 291, baseType: !5290, size: 128, offset: 768)
!5290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2663, line: 274, size: 128, elements: !5291)
!5291 = !{!5292, !5293}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5290, file: !2663, line: 275, baseType: !5284, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5290, file: !2663, line: 276, baseType: !5284, size: 64, offset: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5272, file: !2663, line: 292, baseType: !17, size: 32, offset: 896)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5272, file: !2663, line: 293, baseType: !17, size: 32, offset: 928)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5272, file: !2663, line: 294, baseType: !17, size: 32, offset: 960)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5272, file: !2663, line: 295, baseType: !17, size: 32, offset: 992)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5272, file: !2663, line: 296, baseType: !17, size: 32, offset: 1024)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5272, file: !2663, line: 297, baseType: !17, size: 32, offset: 1056)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5272, file: !2663, line: 298, baseType: !3669, size: 64, offset: 1088)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5272, file: !2663, line: 299, baseType: !5302, size: 64, offset: 1152)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2663, line: 269, size: 96, elements: !5304)
!5304 = !{!5305, !5306}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5303, file: !2663, line: 270, baseType: !5284, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5303, file: !2663, line: 271, baseType: !17, size: 32, offset: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5272, file: !2663, line: 300, baseType: !946, size: 64, offset: 1216)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5272, file: !2663, line: 301, baseType: !4222, size: 64, offset: 1280)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5272, file: !2663, line: 302, baseType: !637, size: 64, offset: 1344)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5272, file: !2663, line: 303, baseType: !17, size: 32, offset: 1408)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5272, file: !2663, line: 304, baseType: !1441, size: 256, offset: 1472)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5272, file: !2663, line: 305, baseType: !75, size: 32, offset: 1728)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5272, file: !2663, line: 318, baseType: !75, size: 32, offset: 1760)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5272, file: !2663, line: 322, baseType: !1402, size: 256, offset: 1792)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5272, file: !2663, line: 323, baseType: !5290, size: 128, offset: 2048)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5272, file: !2663, line: 324, baseType: !5317, offset: 2176)
!5317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1052, elements: !1518)
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5187, file: !172, line: 444, baseType: !3469, size: 64, offset: 1152)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5187, file: !172, line: 445, baseType: !5321, size: 64, offset: 1216)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!38, !3234, !3339}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !172, line: 486, baseType: !55, size: 64, offset: 896)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !322, file: !172, line: 487, baseType: !1115, size: 320, offset: 960)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !322, file: !172, line: 488, baseType: !3512, size: 32, offset: 1280)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !322, file: !172, line: 489, baseType: !75, size: 32, offset: 1312)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !322, file: !172, line: 490, baseType: !113, size: 128, offset: 1344)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !322, file: !172, line: 491, baseType: !36, size: 64, offset: 1472)
!5330 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !130, line: 107, baseType: !5331, size: 64, offset: 192)
!5331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !130, line: 107, size: 64, elements: !5332)
!5332 = !{!5333, !5334}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5331, file: !130, line: 108, baseType: !55, size: 64)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !5331, file: !130, line: 109, baseType: !55, size: 64)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !307, file: !130, line: 117, baseType: !55, size: 64, offset: 256)
!5336 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !130, line: 119, baseType: !5337, size: 320)
!5337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !304, file: !130, line: 119, size: 320, elements: !5338)
!5338 = !{!5339, !5340, !5343, !5344, !5345}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !5337, file: !130, line: 124, baseType: !55, size: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !5337, file: !130, line: 125, baseType: !5341, size: 64, offset: 64)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !130, line: 125, flags: DIFlagFwdDecl)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !5337, file: !130, line: 126, baseType: !55, size: 64, offset: 128)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5337, file: !130, line: 127, baseType: !55, size: 64, offset: 192)
!5345 = !DIDerivedType(tag: DW_TAG_member, scope: !5337, file: !130, line: 128, baseType: !5346, size: 64, offset: 256)
!5346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5337, file: !130, line: 128, size: 64, elements: !5347)
!5347 = !{!5348, !5349}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !5346, file: !130, line: 133, baseType: !55, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !5346, file: !130, line: 138, baseType: !663, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !130, line: 141, baseType: !5351, size: 64)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !304, file: !130, line: 141, size: 64, elements: !5352)
!5352 = !{!5353}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !5351, file: !130, line: 142, baseType: !55, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !130, line: 144, baseType: !5355, size: 128)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !304, file: !130, line: 144, size: 128, elements: !5356)
!5356 = !{!5357, !5408}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !5355, file: !130, line: 146, baseType: !5358, size: 64)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !255, line: 126, size: 1216, elements: !5360)
!5360 = !{!5361, !5371, !5372, !5373, !5374, !5375, !5376, !5390, !5391, !5392}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !5359, file: !255, line: 127, baseType: !5362, size: 384)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !255, line: 21, size: 384, elements: !5363)
!5363 = !{!5364, !5365, !5367, !5368, !5369, !5370}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !5362, file: !255, line: 22, baseType: !55, size: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !5362, file: !255, line: 23, baseType: !5366, size: 64, offset: 64)
!5366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5362, file: !255, line: 24, baseType: !5366, size: 64, offset: 128)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5362, file: !255, line: 25, baseType: !55, size: 64, offset: 192)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5362, file: !255, line: 26, baseType: !55, size: 64, offset: 256)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5362, file: !255, line: 27, baseType: !55, size: 64, offset: 320)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5359, file: !255, line: 128, baseType: !2324, size: 128, offset: 384)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5359, file: !255, line: 129, baseType: !1441, size: 256, offset: 512)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5359, file: !255, line: 130, baseType: !254, size: 32, offset: 768)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5359, file: !255, line: 131, baseType: !17, size: 32, offset: 800)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !5359, file: !255, line: 132, baseType: !55, size: 64, offset: 832)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5359, file: !255, line: 133, baseType: !5377, size: 64, offset: 896)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5379)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !255, line: 77, size: 192, elements: !5380)
!5380 = !{!5381, !5385, !5386}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !5379, file: !255, line: 83, baseType: !5382, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{null, !299}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !5379, file: !255, line: 89, baseType: !1986, size: 64, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !5379, file: !255, line: 100, baseType: !5387, size: 64, offset: 128)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!38, !5358, !55, !55, !38}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5359, file: !255, line: 134, baseType: !36, size: 64, offset: 960)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !5359, file: !255, line: 135, baseType: !38, size: 32, offset: 1024)
!5392 = !DIDerivedType(tag: DW_TAG_member, scope: !5359, file: !255, line: 136, baseType: !5393, size: 128, offset: 1088)
!5393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5359, file: !255, line: 136, size: 128, elements: !5394)
!5394 = !{!5395, !5401}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5393, file: !255, line: 137, baseType: !5396, size: 128)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !5397, line: 6, size: 128, elements: !5398)
!5397 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!5398 = !{!5399, !5400}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5396, file: !5397, line: 7, baseType: !398, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5396, file: !5397, line: 8, baseType: !398, size: 64, offset: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, scope: !5393, file: !255, line: 138, baseType: !5402)
!5402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5393, file: !255, line: 138, elements: !5403)
!5403 = !{!5404, !5406}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !5402, file: !255, line: 138, baseType: !5405)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5402, file: !255, line: 138, elements: !1081)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !5402, file: !255, line: 138, baseType: !5407)
!5407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5396, elements: !1518)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !5355, file: !130, line: 147, baseType: !36, size: 64, offset: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !304, file: !130, line: 161, baseType: !650, size: 128, align: 64)
!5410 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !130, line: 164, baseType: !5411, size: 32, offset: 384)
!5411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !130, line: 164, size: 32, elements: !5412)
!5412 = !{!5413, !5414}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5411, file: !130, line: 169, baseType: !65, size: 32)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !5411, file: !130, line: 177, baseType: !17, size: 32)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !300, file: !130, line: 181, baseType: !65, size: 32, offset: 416)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kimage", file: !5418, line: 296, size: 5760, elements: !5419)
!5418 = !DIFile(filename: "./include/linux/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "46c4f8f14212f79d216b15c6b640c492")
!5419 = !{!5420, !5422, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5465, !5466, !5467, !5468, !5469, !5470}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5417, file: !5418, line: 297, baseType: !5421, size: 64)
!5421 = !DIDerivedType(tag: DW_TAG_typedef, name: "kimage_entry_t", file: !5418, line: 80, baseType: !55)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5417, file: !5418, line: 298, baseType: !5423, size: 64, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5421, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "last_entry", scope: !5417, file: !5418, line: 299, baseType: !5423, size: 64, offset: 128)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5417, file: !5418, line: 301, baseType: !55, size: 64, offset: 192)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "control_code_page", scope: !5417, file: !5418, line: 302, baseType: !299, size: 64, offset: 256)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "swap_page", scope: !5417, file: !5418, line: 303, baseType: !299, size: 64, offset: 320)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "vmcoreinfo_data_copy", scope: !5417, file: !5418, line: 304, baseType: !36, size: 64, offset: 384)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segments", scope: !5417, file: !5418, line: 306, baseType: !55, size: 64, offset: 448)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !5417, file: !5418, line: 307, baseType: !5431, size: 4096, offset: 512)
!5431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5432, size: 4096, elements: !1734)
!5432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kexec_segment", file: !5418, line: 82, size: 256, elements: !5433)
!5433 = !{!5434, !5439, !5440, !5441}
!5434 = !DIDerivedType(tag: DW_TAG_member, scope: !5432, file: !5418, line: 91, baseType: !5435, size: 64)
!5435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5432, file: !5418, line: 91, size: 64, elements: !5436)
!5436 = !{!5437, !5438}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5435, file: !5418, line: 92, baseType: !36, size: 64)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "kbuf", scope: !5435, file: !5418, line: 93, baseType: !36, size: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "bufsz", scope: !5432, file: !5418, line: 95, baseType: !51, size: 64, offset: 64)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5432, file: !5418, line: 96, baseType: !55, size: 64, offset: 128)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", scope: !5432, file: !5418, line: 97, baseType: !51, size: 64, offset: 192)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "control_pages", scope: !5417, file: !5418, line: 309, baseType: !113, size: 128, offset: 4608)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "dest_pages", scope: !5417, file: !5418, line: 310, baseType: !113, size: 128, offset: 4736)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "unusable_pages", scope: !5417, file: !5418, line: 311, baseType: !113, size: 128, offset: 4864)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "control_page", scope: !5417, file: !5418, line: 314, baseType: !55, size: 64, offset: 4992)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5417, file: !5418, line: 317, baseType: !17, size: 1, offset: 5056, flags: DIFlagBitField, extraData: i64 5056)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_context", scope: !5417, file: !5418, line: 320, baseType: !17, size: 1, offset: 5057, flags: DIFlagBitField, extraData: i64 5056)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "file_mode", scope: !5417, file: !5418, line: 322, baseType: !17, size: 1, offset: 5058, flags: DIFlagBitField, extraData: i64 5056)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "update_elfcorehdr", scope: !5417, file: !5418, line: 325, baseType: !17, size: 1, offset: 5059, flags: DIFlagBitField, extraData: i64 5056)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5417, file: !5418, line: 329, baseType: !5451, size: 320, offset: 5120)
!5451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kimage_arch", file: !5452, line: 145, size: 320, elements: !5453)
!5452 = !DIFile(filename: "./arch/x86/include/asm/kexec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ab2d478aae98767fa69f277d1e3e2976")
!5453 = !{!5454, !5455, !5462, !5463, !5464}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !5451, file: !5452, line: 150, baseType: !1094, size: 64)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !5451, file: !5452, line: 159, baseType: !5456, size: 64, offset: 64)
!5456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5457, size: 64)
!5457 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !1096, line: 346, baseType: !5458)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 346, size: 64, elements: !5459)
!5459 = !{!5460}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !5458, file: !1096, line: 346, baseType: !5461, size: 64)
!5461 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !1101, line: 17, baseType: !55)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !5451, file: !5452, line: 160, baseType: !2010, size: 64, offset: 128)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !5451, file: !5452, line: 161, baseType: !2003, size: 64, offset: 192)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !5451, file: !5452, line: 162, baseType: !2029, size: 64, offset: 256)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "hp_action", scope: !5417, file: !5418, line: 354, baseType: !38, size: 32, offset: 5440)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "elfcorehdr_index", scope: !5417, file: !5418, line: 355, baseType: !38, size: 32, offset: 5472)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "elfcorehdr_updated", scope: !5417, file: !5418, line: 356, baseType: !1287, size: 8, offset: 5504)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "elf_headers", scope: !5417, file: !5418, line: 368, baseType: !36, size: 64, offset: 5568)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "elf_headers_sz", scope: !5417, file: !5418, line: 369, baseType: !55, size: 64, offset: 5632)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "elf_load_addr", scope: !5417, file: !5418, line: 370, baseType: !55, size: 64, offset: 5696)
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_system_table_64_t", file: !5473, line: 495, baseType: !5474)
!5473 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!5474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5473, line: 479, size: 960, elements: !5475)
!5475 = !{!5476, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498}
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !5474, file: !5473, line: 480, baseType: !5477, size: 192)
!5477 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !5473, line: 90, baseType: !5478)
!5478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5473, line: 84, size: 192, elements: !5479)
!5479 = !{!5480, !5481, !5482, !5483, !5484}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !5478, file: !5473, line: 85, baseType: !398, size: 64)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !5478, file: !5473, line: 86, baseType: !394, size: 32, offset: 64)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !5478, file: !5473, line: 87, baseType: !394, size: 32, offset: 96)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !5478, file: !5473, line: 88, baseType: !394, size: 32, offset: 128)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5478, file: !5473, line: 89, baseType: !394, size: 32, offset: 160)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !5474, file: !5473, line: 481, baseType: !398, size: 64, offset: 192)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "fw_revision", scope: !5474, file: !5473, line: 482, baseType: !394, size: 32, offset: 256)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5474, file: !5473, line: 483, baseType: !394, size: 32, offset: 288)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "con_in_handle", scope: !5474, file: !5473, line: 484, baseType: !398, size: 64, offset: 320)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "con_in", scope: !5474, file: !5473, line: 485, baseType: !398, size: 64, offset: 384)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "con_out_handle", scope: !5474, file: !5473, line: 486, baseType: !398, size: 64, offset: 448)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "con_out", scope: !5474, file: !5473, line: 487, baseType: !398, size: 64, offset: 512)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "stderr_handle", scope: !5474, file: !5473, line: 488, baseType: !398, size: 64, offset: 576)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "stderr", scope: !5474, file: !5473, line: 489, baseType: !398, size: 64, offset: 640)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !5474, file: !5473, line: 490, baseType: !398, size: 64, offset: 704)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !5474, file: !5473, line: 491, baseType: !398, size: 64, offset: 768)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tables", scope: !5474, file: !5473, line: 492, baseType: !394, size: 32, offset: 832)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5474, file: !5473, line: 493, baseType: !394, size: 32, offset: 864)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !5474, file: !5473, line: 494, baseType: !398, size: 64, offset: 896)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_system_table_32_t", file: !5473, line: 511, baseType: !5501)
!5501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5473, line: 497, size: 576, elements: !5502)
!5502 = !{!5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515}
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !5501, file: !5473, line: 498, baseType: !5477, size: 192)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "fw_vendor", scope: !5501, file: !5473, line: 499, baseType: !394, size: 32, offset: 192)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "fw_revision", scope: !5501, file: !5473, line: 500, baseType: !394, size: 32, offset: 224)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "con_in_handle", scope: !5501, file: !5473, line: 501, baseType: !394, size: 32, offset: 256)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "con_in", scope: !5501, file: !5473, line: 502, baseType: !394, size: 32, offset: 288)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "con_out_handle", scope: !5501, file: !5473, line: 503, baseType: !394, size: 32, offset: 320)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "con_out", scope: !5501, file: !5473, line: 504, baseType: !394, size: 32, offset: 352)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "stderr_handle", scope: !5501, file: !5473, line: 505, baseType: !394, size: 32, offset: 384)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "stderr", scope: !5501, file: !5473, line: 506, baseType: !394, size: 32, offset: 416)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !5501, file: !5473, line: 507, baseType: !394, size: 32, offset: 448)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "boottime", scope: !5501, file: !5473, line: 508, baseType: !394, size: 32, offset: 480)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tables", scope: !5501, file: !5473, line: 509, baseType: !394, size: 32, offset: 512)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "tables", scope: !5501, file: !5473, line: 510, baseType: !394, size: 32, offset: 544)
!5516 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !41, line: 42, baseType: !55)
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5366, size: 64)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1095)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5521, size: 64)
!5521 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5457)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2011)
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 64)
!5525 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2004)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2020)
!5528 = !{!0, !7}
!5529 = !{!"rsp"}
!5530 = !{i32 7, !"Dwarf Version", i32 5}
!5531 = !{i32 2, !"Debug Info Version", i32 3}
!5532 = !{i32 1, !"wchar_size", i32 2}
!5533 = !{i32 8, !"cf-protection-branch", i32 1}
!5534 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5535 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5536 = !{i32 1, !"Code Model", i32 2}
!5537 = !{i32 1, !"override-stack-alignment", i32 8}
!5538 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5539 = distinct !DISubprogram(name: "machine_kexec_prepare", scope: !2, file: !2, line: 305, type: !5540, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5542)
!5540 = !DISubroutineType(types: !5541)
!5541 = !{!38, !5416}
!5542 = !{!5543, !5544, !5545}
!5543 = !DILocalVariable(name: "image", arg: 1, scope: !5539, file: !2, line: 305, type: !5416)
!5544 = !DILocalVariable(name: "control_page", scope: !5539, file: !2, line: 307, type: !55)
!5545 = !DILocalVariable(name: "result", scope: !5539, file: !2, line: 308, type: !38)
!5546 = !DILocation(line: 305, column: 42, scope: !5539)
!5547 = !DILocation(line: 307, column: 2, scope: !5539)
!5548 = !DILocation(line: 307, column: 16, scope: !5539)
!5549 = !DILocation(line: 308, column: 2, scope: !5539)
!5550 = !DILocation(line: 308, column: 6, scope: !5539)
!5551 = !DILocation(line: 311, column: 17, scope: !5539)
!5552 = !DILocation(line: 311, column: 55, scope: !5539)
!5553 = !DILocation(line: 311, column: 15, scope: !5539)
!5554 = !DILocation(line: 314, column: 24, scope: !5539)
!5555 = !DILocation(line: 314, column: 31, scope: !5539)
!5556 = !DILocation(line: 314, column: 11, scope: !5539)
!5557 = !DILocation(line: 314, column: 9, scope: !5539)
!5558 = !DILocation(line: 315, column: 6, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5539, file: !2, line: 315, column: 6)
!5560 = !DILocation(line: 315, column: 6, scope: !5539)
!5561 = !DILocation(line: 316, column: 10, scope: !5559)
!5562 = !DILocation(line: 316, column: 3, scope: !5559)
!5563 = !DILocation(line: 318, column: 2, scope: !5539)
!5564 = !DILocation(line: 319, column: 1, scope: !5539)
!5565 = distinct !DISubprogram(name: "init_pgtable", scope: !2, file: !2, line: 223, type: !5566, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5568)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!38, !5416, !55}
!5568 = !{!5569, !5570, !5571, !5584, !5585, !5586, !5587}
!5569 = !DILocalVariable(name: "image", arg: 1, scope: !5565, file: !2, line: 223, type: !5416)
!5570 = !DILocalVariable(name: "control_page", arg: 2, scope: !5565, file: !2, line: 223, type: !55)
!5571 = !DILocalVariable(name: "info", scope: !5565, file: !2, line: 225, type: !5572)
!5572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_mapping_info", file: !5573, line: 7, size: 384, elements: !5574)
!5573 = !DIFile(filename: "./arch/x86/include/asm/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "048126f7712986985e39e526eec9923f")
!5574 = !{!5575, !5579, !5580, !5581, !5582, !5583}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_pgt_page", scope: !5572, file: !5573, line: 8, baseType: !5576, size: 64)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!36, !36}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5572, file: !5573, line: 9, baseType: !36, size: 64, offset: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "page_flag", scope: !5572, file: !5573, line: 10, baseType: !55, size: 64, offset: 128)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5572, file: !5573, line: 11, baseType: !55, size: 64, offset: 192)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "direct_gbpages", scope: !5572, file: !5573, line: 12, baseType: !1287, size: 8, offset: 256)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "kernpg_flag", scope: !5572, file: !5573, line: 13, baseType: !55, size: 64, offset: 320)
!5584 = !DILocalVariable(name: "mstart", scope: !5565, file: !2, line: 231, type: !55)
!5585 = !DILocalVariable(name: "mend", scope: !5565, file: !2, line: 231, type: !55)
!5586 = !DILocalVariable(name: "result", scope: !5565, file: !2, line: 232, type: !38)
!5587 = !DILocalVariable(name: "i", scope: !5565, file: !2, line: 233, type: !38)
!5588 = !DILocation(line: 223, column: 40, scope: !5565)
!5589 = !DILocation(line: 223, column: 61, scope: !5565)
!5590 = !DILocation(line: 225, column: 2, scope: !5565)
!5591 = !DILocation(line: 225, column: 26, scope: !5565)
!5592 = !DILocation(line: 225, column: 33, scope: !5565)
!5593 = !DILocation(line: 227, column: 14, scope: !5565)
!5594 = !DILocation(line: 231, column: 2, scope: !5565)
!5595 = !DILocation(line: 231, column: 16, scope: !5565)
!5596 = !DILocation(line: 231, column: 24, scope: !5565)
!5597 = !DILocation(line: 232, column: 2, scope: !5565)
!5598 = !DILocation(line: 232, column: 6, scope: !5565)
!5599 = !DILocation(line: 233, column: 2, scope: !5565)
!5600 = !DILocation(line: 233, column: 6, scope: !5565)
!5601 = !DILocation(line: 235, column: 35, scope: !5565)
!5602 = !DILocation(line: 235, column: 20, scope: !5565)
!5603 = !DILocation(line: 235, column: 2, scope: !5565)
!5604 = !DILocation(line: 235, column: 9, scope: !5565)
!5605 = !DILocation(line: 235, column: 14, scope: !5565)
!5606 = !DILocation(line: 235, column: 18, scope: !5565)
!5607 = !DILocation(line: 236, column: 7, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 236, column: 6)
!5609 = !DILocation(line: 236, column: 14, scope: !5608)
!5610 = !DILocation(line: 236, column: 19, scope: !5608)
!5611 = !DILocation(line: 236, column: 6, scope: !5565)
!5612 = !DILocation(line: 237, column: 3, scope: !5608)
!5613 = !DILocation(line: 239, column: 6, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 239, column: 6)
!5615 = !DILocation(line: 239, column: 6, scope: !5565)
!5616 = !DILocation(line: 240, column: 8, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5614, file: !2, line: 239, column: 50)
!5618 = !DILocation(line: 240, column: 20, scope: !5617)
!5619 = !DILocation(line: 241, column: 8, scope: !5617)
!5620 = !DILocation(line: 241, column: 20, scope: !5617)
!5621 = !DILocation(line: 242, column: 2, scope: !5617)
!5622 = !DILocation(line: 244, column: 6, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 244, column: 6)
!5624 = !DILocation(line: 244, column: 6, scope: !5565)
!5625 = !DILocation(line: 245, column: 8, scope: !5623)
!5626 = !DILocation(line: 245, column: 23, scope: !5623)
!5627 = !DILocation(line: 245, column: 3, scope: !5623)
!5628 = !DILocation(line: 247, column: 9, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 247, column: 2)
!5630 = !DILocation(line: 247, column: 7, scope: !5629)
!5631 = !DILocation(line: 247, column: 14, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5629, file: !2, line: 247, column: 2)
!5633 = !DILocation(line: 247, column: 18, scope: !5632)
!5634 = !DILocation(line: 247, column: 16, scope: !5632)
!5635 = !DILocation(line: 247, column: 2, scope: !5629)
!5636 = !DILocation(line: 248, column: 23, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5632, file: !2, line: 247, column: 38)
!5638 = !DILocation(line: 248, column: 12, scope: !5637)
!5639 = !DILocation(line: 248, column: 26, scope: !5637)
!5640 = !DILocation(line: 248, column: 32, scope: !5637)
!5641 = !DILocation(line: 248, column: 10, scope: !5637)
!5642 = !DILocation(line: 249, column: 23, scope: !5637)
!5643 = !DILocation(line: 249, column: 12, scope: !5637)
!5644 = !DILocation(line: 249, column: 26, scope: !5637)
!5645 = !DILocation(line: 249, column: 30, scope: !5637)
!5646 = !DILocation(line: 249, column: 10, scope: !5637)
!5647 = !DILocation(line: 251, column: 45, scope: !5637)
!5648 = !DILocation(line: 251, column: 52, scope: !5637)
!5649 = !DILocation(line: 251, column: 57, scope: !5637)
!5650 = !DILocation(line: 252, column: 10, scope: !5637)
!5651 = !DILocation(line: 252, column: 18, scope: !5637)
!5652 = !DILocation(line: 251, column: 12, scope: !5637)
!5653 = !DILocation(line: 251, column: 10, scope: !5637)
!5654 = !DILocation(line: 253, column: 7, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5637, file: !2, line: 253, column: 7)
!5656 = !DILocation(line: 253, column: 7, scope: !5637)
!5657 = !DILocation(line: 254, column: 11, scope: !5655)
!5658 = !DILocation(line: 254, column: 4, scope: !5655)
!5659 = !DILocation(line: 255, column: 2, scope: !5637)
!5660 = !DILocation(line: 247, column: 34, scope: !5632)
!5661 = !DILocation(line: 247, column: 2, scope: !5632)
!5662 = distinct !{!5662, !5635, !5663, !5664, !5665}
!5663 = !DILocation(line: 255, column: 2, scope: !5629)
!5664 = !{!"llvm.loop.mustprogress"}
!5665 = !{!"llvm.loop.unroll.disable"}
!5666 = !DILocation(line: 263, column: 9, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 263, column: 2)
!5668 = !DILocation(line: 263, column: 7, scope: !5667)
!5669 = !DILocation(line: 263, column: 14, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5667, file: !2, line: 263, column: 2)
!5671 = !DILocation(line: 263, column: 18, scope: !5670)
!5672 = !DILocation(line: 263, column: 25, scope: !5670)
!5673 = !DILocation(line: 263, column: 16, scope: !5670)
!5674 = !DILocation(line: 263, column: 2, scope: !5667)
!5675 = !DILocation(line: 264, column: 12, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5670, file: !2, line: 263, column: 43)
!5677 = !DILocation(line: 264, column: 19, scope: !5676)
!5678 = !DILocation(line: 264, column: 27, scope: !5676)
!5679 = !DILocation(line: 264, column: 30, scope: !5676)
!5680 = !DILocation(line: 264, column: 10, scope: !5676)
!5681 = !DILocation(line: 265, column: 12, scope: !5676)
!5682 = !DILocation(line: 265, column: 21, scope: !5676)
!5683 = !DILocation(line: 265, column: 28, scope: !5676)
!5684 = !DILocation(line: 265, column: 36, scope: !5676)
!5685 = !DILocation(line: 265, column: 39, scope: !5676)
!5686 = !DILocation(line: 265, column: 19, scope: !5676)
!5687 = !DILocation(line: 265, column: 10, scope: !5676)
!5688 = !DILocation(line: 267, column: 45, scope: !5676)
!5689 = !DILocation(line: 267, column: 52, scope: !5676)
!5690 = !DILocation(line: 267, column: 57, scope: !5676)
!5691 = !DILocation(line: 268, column: 10, scope: !5676)
!5692 = !DILocation(line: 268, column: 18, scope: !5676)
!5693 = !DILocation(line: 267, column: 12, scope: !5676)
!5694 = !DILocation(line: 267, column: 10, scope: !5676)
!5695 = !DILocation(line: 270, column: 7, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5676, file: !2, line: 270, column: 7)
!5697 = !DILocation(line: 270, column: 7, scope: !5676)
!5698 = !DILocation(line: 271, column: 11, scope: !5696)
!5699 = !DILocation(line: 271, column: 4, scope: !5696)
!5700 = !DILocation(line: 272, column: 2, scope: !5676)
!5701 = !DILocation(line: 263, column: 39, scope: !5670)
!5702 = !DILocation(line: 263, column: 2, scope: !5670)
!5703 = distinct !{!5703, !5674, !5704, !5664, !5665}
!5704 = !DILocation(line: 272, column: 2, scope: !5667)
!5705 = !DILocation(line: 278, column: 33, scope: !5565)
!5706 = !DILocation(line: 278, column: 40, scope: !5565)
!5707 = !DILocation(line: 278, column: 45, scope: !5565)
!5708 = !DILocation(line: 278, column: 11, scope: !5565)
!5709 = !DILocation(line: 278, column: 9, scope: !5565)
!5710 = !DILocation(line: 279, column: 6, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 279, column: 6)
!5712 = !DILocation(line: 279, column: 6, scope: !5565)
!5713 = !DILocation(line: 280, column: 10, scope: !5711)
!5714 = !DILocation(line: 280, column: 3, scope: !5711)
!5715 = !DILocation(line: 282, column: 34, scope: !5565)
!5716 = !DILocation(line: 282, column: 41, scope: !5565)
!5717 = !DILocation(line: 282, column: 46, scope: !5565)
!5718 = !DILocation(line: 282, column: 11, scope: !5565)
!5719 = !DILocation(line: 282, column: 9, scope: !5565)
!5720 = !DILocation(line: 283, column: 6, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5565, file: !2, line: 283, column: 6)
!5722 = !DILocation(line: 283, column: 6, scope: !5565)
!5723 = !DILocation(line: 284, column: 10, scope: !5721)
!5724 = !DILocation(line: 284, column: 3, scope: !5721)
!5725 = !DILocation(line: 290, column: 33, scope: !5565)
!5726 = !DILocation(line: 290, column: 40, scope: !5565)
!5727 = !DILocation(line: 290, column: 47, scope: !5565)
!5728 = !DILocation(line: 290, column: 52, scope: !5565)
!5729 = !DILocation(line: 290, column: 57, scope: !5565)
!5730 = !DILocation(line: 290, column: 9, scope: !5565)
!5731 = !DILocation(line: 290, column: 2, scope: !5565)
!5732 = !DILocation(line: 291, column: 1, scope: !5565)
!5733 = distinct !DISubprogram(name: "machine_kexec_cleanup", scope: !2, file: !2, line: 321, type: !5734, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5736)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{null, !5416}
!5736 = !{!5737}
!5737 = !DILocalVariable(name: "image", arg: 1, scope: !5733, file: !2, line: 321, type: !5416)
!5738 = !DILocation(line: 321, column: 43, scope: !5733)
!5739 = !DILocation(line: 323, column: 26, scope: !5733)
!5740 = !DILocation(line: 323, column: 2, scope: !5733)
!5741 = !DILocation(line: 324, column: 1, scope: !5733)
!5742 = distinct !DISubprogram(name: "free_transition_pgtable", scope: !2, file: !2, line: 140, type: !5734, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5743)
!5743 = !{!5744}
!5744 = !DILocalVariable(name: "image", arg: 1, scope: !5742, file: !2, line: 140, type: !5416)
!5745 = !DILocation(line: 140, column: 52, scope: !5742)
!5746 = !DILocation(line: 142, column: 2, scope: !5742)
!5747 = !DILocation(line: 143, column: 2, scope: !5742)
!5748 = !DILocation(line: 143, column: 9, scope: !5742)
!5749 = !DILocation(line: 143, column: 14, scope: !5742)
!5750 = !DILocation(line: 143, column: 18, scope: !5742)
!5751 = !DILocation(line: 144, column: 2, scope: !5742)
!5752 = !DILocation(line: 145, column: 2, scope: !5742)
!5753 = !DILocation(line: 145, column: 9, scope: !5742)
!5754 = !DILocation(line: 145, column: 14, scope: !5742)
!5755 = !DILocation(line: 145, column: 18, scope: !5742)
!5756 = !DILocation(line: 146, column: 2, scope: !5742)
!5757 = !DILocation(line: 147, column: 2, scope: !5742)
!5758 = !DILocation(line: 147, column: 9, scope: !5742)
!5759 = !DILocation(line: 147, column: 14, scope: !5742)
!5760 = !DILocation(line: 147, column: 18, scope: !5742)
!5761 = !DILocation(line: 148, column: 2, scope: !5742)
!5762 = !DILocation(line: 149, column: 2, scope: !5742)
!5763 = !DILocation(line: 149, column: 9, scope: !5742)
!5764 = !DILocation(line: 149, column: 14, scope: !5742)
!5765 = !DILocation(line: 149, column: 18, scope: !5742)
!5766 = !DILocation(line: 150, column: 1, scope: !5742)
!5767 = distinct !DISubprogram(name: "machine_kexec", scope: !2, file: !2, line: 330, type: !5734, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5768)
!5768 = !{!5769, !5770, !5771, !5772, !5773}
!5769 = !DILocalVariable(name: "image", arg: 1, scope: !5767, file: !2, line: 330, type: !5416)
!5770 = !DILocalVariable(name: "page_list", scope: !5767, file: !2, line: 332, type: !3805)
!5771 = !DILocalVariable(name: "host_mem_enc_active", scope: !5767, file: !2, line: 333, type: !17)
!5772 = !DILocalVariable(name: "save_ftrace_enabled", scope: !5767, file: !2, line: 334, type: !38)
!5773 = !DILocalVariable(name: "control_page", scope: !5767, file: !2, line: 335, type: !36)
!5774 = !DILocation(line: 330, column: 35, scope: !5767)
!5775 = !DILocation(line: 332, column: 2, scope: !5767)
!5776 = !DILocation(line: 332, column: 16, scope: !5767)
!5777 = !DILocation(line: 333, column: 2, scope: !5767)
!5778 = !DILocation(line: 333, column: 15, scope: !5767)
!5779 = !DILocation(line: 334, column: 2, scope: !5767)
!5780 = !DILocation(line: 334, column: 6, scope: !5767)
!5781 = !DILocation(line: 335, column: 2, scope: !5767)
!5782 = !DILocation(line: 335, column: 8, scope: !5767)
!5783 = !DILocation(line: 341, column: 24, scope: !5767)
!5784 = !DILocation(line: 341, column: 22, scope: !5767)
!5785 = !DILocation(line: 348, column: 24, scope: !5767)
!5786 = !DILocation(line: 348, column: 22, scope: !5767)
!5787 = !DILocation(line: 351, column: 2, scope: !5767)
!5788 = !DILocation(line: 351, column: 2, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5767, file: !2, line: 351, column: 2)
!5790 = !DILocation(line: 352, column: 2, scope: !5767)
!5791 = !DILocation(line: 353, column: 2, scope: !5767)
!5792 = !DILocation(line: 355, column: 6, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5767, file: !2, line: 355, column: 6)
!5794 = !DILocation(line: 355, column: 13, scope: !5793)
!5795 = !DILocation(line: 355, column: 6, scope: !5767)
!5796 = !DILocation(line: 363, column: 3, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5793, file: !2, line: 355, column: 31)
!5798 = !DILocation(line: 364, column: 3, scope: !5797)
!5799 = !DILocation(line: 366, column: 2, scope: !5797)
!5800 = !DILocation(line: 368, column: 17, scope: !5767)
!5801 = !DILocation(line: 368, column: 15, scope: !5767)
!5802 = !DILocation(line: 369, column: 11, scope: !5767)
!5803 = !DILocation(line: 369, column: 2, scope: !5767)
!5804 = !DILocation(line: 371, column: 44, scope: !5767)
!5805 = !DILocation(line: 371, column: 31, scope: !5767)
!5806 = !DILocation(line: 371, column: 2, scope: !5767)
!5807 = !DILocation(line: 371, column: 29, scope: !5767)
!5808 = !DILocation(line: 372, column: 46, scope: !5767)
!5809 = !DILocation(line: 372, column: 31, scope: !5767)
!5810 = !DILocation(line: 372, column: 2, scope: !5767)
!5811 = !DILocation(line: 372, column: 29, scope: !5767)
!5812 = !DILocation(line: 373, column: 44, scope: !5767)
!5813 = !DILocation(line: 373, column: 2, scope: !5767)
!5814 = !DILocation(line: 373, column: 27, scope: !5767)
!5815 = !DILocation(line: 375, column: 6, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5767, file: !2, line: 375, column: 6)
!5817 = !DILocation(line: 375, column: 13, scope: !5816)
!5818 = !DILocation(line: 375, column: 18, scope: !5816)
!5819 = !DILocation(line: 375, column: 6, scope: !5767)
!5820 = !DILocation(line: 376, column: 30, scope: !5816)
!5821 = !DILocation(line: 377, column: 7, scope: !5816)
!5822 = !DILocation(line: 376, column: 3, scope: !5816)
!5823 = !DILocation(line: 376, column: 27, scope: !5816)
!5824 = !DILocation(line: 389, column: 2, scope: !5767)
!5825 = !DILocation(line: 394, column: 2, scope: !5767)
!5826 = !DILocation(line: 395, column: 2, scope: !5767)
!5827 = !DILocation(line: 398, column: 48, scope: !5767)
!5828 = !DILocation(line: 398, column: 55, scope: !5767)
!5829 = !DILocation(line: 399, column: 27, scope: !5767)
!5830 = !DILocation(line: 399, column: 12, scope: !5767)
!5831 = !DILocation(line: 400, column: 12, scope: !5767)
!5832 = !DILocation(line: 400, column: 19, scope: !5767)
!5833 = !DILocation(line: 401, column: 12, scope: !5767)
!5834 = !DILocation(line: 401, column: 19, scope: !5767)
!5835 = !DILocation(line: 402, column: 12, scope: !5767)
!5836 = !DILocation(line: 398, column: 17, scope: !5767)
!5837 = !DILocation(line: 398, column: 2, scope: !5767)
!5838 = !DILocation(line: 398, column: 9, scope: !5767)
!5839 = !DILocation(line: 398, column: 15, scope: !5767)
!5840 = !DILocation(line: 409, column: 27, scope: !5767)
!5841 = !DILocation(line: 409, column: 2, scope: !5767)
!5842 = !DILocation(line: 410, column: 1, scope: !5767)
!5843 = distinct !DISubprogram(name: "cc_platform_has", scope: !263, file: !263, line: 113, type: !5844, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5846)
!5844 = !DISubroutineType(types: !5845)
!5845 = !{!1287, !262}
!5846 = !{!5847}
!5847 = !DILocalVariable(name: "attr", arg: 1, scope: !5843, file: !263, line: 113, type: !262)
!5848 = !DILocation(line: 113, column: 49, scope: !5843)
!5849 = !DILocation(line: 113, column: 57, scope: !5843)
!5850 = distinct !DISubprogram(name: "__ftrace_enabled_save", scope: !5851, file: !5851, line: 930, type: !3689, scopeLine: 931, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!5851 = !DIFile(filename: "./include/linux/ftrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4b80d89eac182dfc62518530b9fd5d2")
!5852 = !DILocation(line: 937, column: 2, scope: !5850)
!5853 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5854, file: !5854, line: 70, type: !2258, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!5854 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!5855 = !DILocation(line: 72, column: 2, scope: !5853)
!5856 = !DILocation(line: 73, column: 1, scope: !5853)
!5857 = distinct !DISubprogram(name: "hw_breakpoint_disable", scope: !9, file: !9, line: 98, type: !2258, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!5858 = !DILocation(line: 101, column: 2, scope: !5857)
!5859 = !DILocation(line: 104, column: 2, scope: !5857)
!5860 = !DILocation(line: 105, column: 2, scope: !5857)
!5861 = !DILocation(line: 106, column: 2, scope: !5857)
!5862 = !DILocation(line: 107, column: 2, scope: !5857)
!5863 = !DILocation(line: 108, column: 1, scope: !5857)
!5864 = !DISubprogram(name: "cet_disable", scope: !5865, file: !5865, line: 72, type: !2258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5865 = !DIFile(filename: "./arch/x86/include/asm/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7621f2ef482a6250db9c8e206e21622e")
!5866 = !DISubprogram(name: "clear_IO_APIC", scope: !5867, file: !5867, line: 173, type: !2258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5867 = !DIFile(filename: "./arch/x86/include/asm/io_apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c646052d57aa5ccfb364bced6a46c18")
!5868 = !DISubprogram(name: "restore_boot_irq_mode", scope: !5867, file: !5867, line: 174, type: !2258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5869 = distinct !DISubprogram(name: "lowmem_page_address", scope: !1914, file: !1914, line: 2176, type: !5870, scopeLine: 2177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5874)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!36, !5872}
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!5874 = !{!5875}
!5875 = !DILocalVariable(name: "page", arg: 1, scope: !5869, file: !1914, line: 2176, type: !5872)
!5876 = !DILocation(line: 2176, column: 69, scope: !5869)
!5877 = !DILocation(line: 2178, column: 9, scope: !5869)
!5878 = !DILocation(line: 2178, column: 2, scope: !5869)
!5879 = !DISubprogram(name: "__memcpy", scope: !5880, file: !5880, line: 19, type: !5881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5880 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!36, !36, !1216, !51}
!5883 = !DISubprogram(name: "relocate_kernel", scope: !5452, file: !5452, line: 125, type: !5884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5884 = !DISubroutineType(types: !5885)
!5885 = !{!55, !55, !55, !55, !17, !17}
!5886 = distinct !DISubprogram(name: "virt_to_phys", scope: !5887, file: !5887, line: 128, type: !5888, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5892)
!5887 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!2956, !5890}
!5890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5891, size: 64)
!5891 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5892 = !{!5893}
!5893 = !DILocalVariable(name: "address", arg: 1, scope: !5886, file: !5887, line: 128, type: !5890)
!5894 = !DILocation(line: 128, column: 55, scope: !5886)
!5895 = !DILocation(line: 130, column: 9, scope: !5886)
!5896 = !DILocation(line: 130, column: 2, scope: !5886)
!5897 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5898, file: !5898, line: 22, type: !5899, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5901)
!5898 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!5899 = !DISubroutineType(types: !5900)
!5900 = !{!55, !55}
!5901 = !{!5902, !5903}
!5902 = !DILocalVariable(name: "x", arg: 1, scope: !5897, file: !5898, line: 22, type: !55)
!5903 = !DILocalVariable(name: "y", scope: !5897, file: !5898, line: 24, type: !55)
!5904 = !DILocation(line: 22, column: 72, scope: !5897)
!5905 = !DILocation(line: 24, column: 2, scope: !5897)
!5906 = !DILocation(line: 24, column: 16, scope: !5897)
!5907 = !DILocation(line: 24, column: 20, scope: !5897)
!5908 = !DILocation(line: 24, column: 22, scope: !5897)
!5909 = !DILocation(line: 27, column: 6, scope: !5897)
!5910 = !DILocation(line: 27, column: 12, scope: !5897)
!5911 = !DILocation(line: 27, column: 16, scope: !5897)
!5912 = !DILocation(line: 27, column: 14, scope: !5897)
!5913 = !DILocation(line: 27, column: 11, scope: !5897)
!5914 = !DILocation(line: 27, column: 21, scope: !5897)
!5915 = !DILocation(line: 27, column: 55, scope: !5897)
!5916 = !DILocation(line: 27, column: 53, scope: !5897)
!5917 = !DILocation(line: 27, column: 8, scope: !5897)
!5918 = !DILocation(line: 27, column: 4, scope: !5897)
!5919 = !DILocation(line: 29, column: 9, scope: !5897)
!5920 = !DILocation(line: 30, column: 1, scope: !5897)
!5921 = !DILocation(line: 29, column: 2, scope: !5897)
!5922 = distinct !DISubprogram(name: "load_segments", scope: !2, file: !2, line: 293, type: !2258, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!5923 = !DILocation(line: 295, column: 2, scope: !5922)
!5924 = !{i64 6975, i64 6997, i64 7018, i64 7039, i64 7060}
!5925 = !DILocation(line: 303, column: 1, scope: !5922)
!5926 = distinct !DISubprogram(name: "native_idt_invalidate", scope: !5927, file: !5927, line: 238, type: !2258, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5928)
!5927 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!5928 = !{!5929}
!5929 = !DILocalVariable(name: "invalid_idt", scope: !5926, file: !5927, line: 240, type: !5930)
!5930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5931)
!5931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_ptr", file: !1183, line: 112, size: 80, elements: !5932)
!5932 = !{!5933, !5934}
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5931, file: !1183, line: 113, baseType: !42, size: 16)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5931, file: !1183, line: 114, baseType: !55, size: 64, offset: 16)
!5935 = !DILocation(line: 240, column: 2, scope: !5926)
!5936 = !DILocation(line: 240, column: 24, scope: !5926)
!5937 = !DILocation(line: 245, column: 2, scope: !5926)
!5938 = !DILocation(line: 246, column: 1, scope: !5926)
!5939 = distinct !DISubprogram(name: "native_gdt_invalidate", scope: !5927, file: !5927, line: 228, type: !2258, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5940)
!5940 = !{!5941}
!5941 = !DILocalVariable(name: "invalid_gdt", scope: !5939, file: !5927, line: 230, type: !5930)
!5942 = !DILocation(line: 230, column: 2, scope: !5939)
!5943 = !DILocation(line: 230, column: 24, scope: !5939)
!5944 = !DILocation(line: 235, column: 2, scope: !5939)
!5945 = !DILocation(line: 236, column: 1, scope: !5939)
!5946 = distinct !DISubprogram(name: "__ftrace_enabled_restore", scope: !5851, file: !5851, line: 941, type: !2601, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5947)
!5947 = !{!5948}
!5948 = !DILocalVariable(name: "enabled", arg: 1, scope: !5946, file: !5851, line: 941, type: !38)
!5949 = !DILocation(line: 941, column: 49, scope: !5946)
!5950 = !DILocation(line: 946, column: 1, scope: !5946)
!5951 = distinct !DISubprogram(name: "arch_kexec_protect_crashkres", scope: !2, file: !2, line: 586, type: !2258, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!5952 = !DILocation(line: 588, column: 2, scope: !5951)
!5953 = !DILocation(line: 589, column: 1, scope: !5951)
!5954 = distinct !DISubprogram(name: "kexec_mark_crashkres", scope: !2, file: !2, line: 573, type: !5955, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5957)
!5955 = !DISubroutineType(types: !5956)
!5956 = !{null, !1287}
!5957 = !{!5958, !5959}
!5958 = !DILocalVariable(name: "protect", arg: 1, scope: !5954, file: !2, line: 573, type: !1287)
!5959 = !DILocalVariable(name: "control", scope: !5954, file: !2, line: 575, type: !55)
!5960 = !DILocation(line: 573, column: 39, scope: !5954)
!5961 = !DILocation(line: 575, column: 2, scope: !5954)
!5962 = !DILocation(line: 575, column: 16, scope: !5954)
!5963 = !DILocation(line: 577, column: 34, scope: !5954)
!5964 = !DILocation(line: 577, column: 56, scope: !5954)
!5965 = !DILocation(line: 577, column: 61, scope: !5954)
!5966 = !{i8 0, i8 2}
!5967 = !DILocation(line: 577, column: 2, scope: !5954)
!5968 = !DILocation(line: 580, column: 12, scope: !5954)
!5969 = !DILocation(line: 580, column: 10, scope: !5954)
!5970 = !DILocation(line: 581, column: 30, scope: !5954)
!5971 = !DILocation(line: 581, column: 37, scope: !5954)
!5972 = !DILocation(line: 581, column: 45, scope: !5954)
!5973 = !DILocation(line: 581, column: 50, scope: !5954)
!5974 = !DILocation(line: 581, column: 2, scope: !5954)
!5975 = !DILocation(line: 582, column: 10, scope: !5954)
!5976 = !DILocation(line: 583, column: 19, scope: !5954)
!5977 = !DILocation(line: 583, column: 39, scope: !5954)
!5978 = !DILocation(line: 583, column: 44, scope: !5954)
!5979 = !DILocation(line: 583, column: 2, scope: !5954)
!5980 = !DILocation(line: 584, column: 1, scope: !5954)
!5981 = distinct !DISubprogram(name: "arch_kexec_unprotect_crashkres", scope: !2, file: !2, line: 591, type: !2258, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!5982 = !DILocation(line: 593, column: 2, scope: !5981)
!5983 = !DILocation(line: 594, column: 1, scope: !5981)
!5984 = distinct !DISubprogram(name: "arch_kexec_post_alloc_pages", scope: !2, file: !2, line: 605, type: !5985, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5987)
!5985 = !DISubroutineType(types: !5986)
!5986 = !{!38, !36, !17, !758}
!5987 = !{!5988, !5989, !5990}
!5988 = !DILocalVariable(name: "vaddr", arg: 1, scope: !5984, file: !2, line: 605, type: !36)
!5989 = !DILocalVariable(name: "pages", arg: 2, scope: !5984, file: !2, line: 605, type: !17)
!5990 = !DILocalVariable(name: "gfp", arg: 3, scope: !5984, file: !2, line: 605, type: !758)
!5991 = !DILocation(line: 605, column: 39, scope: !5984)
!5992 = !DILocation(line: 605, column: 59, scope: !5984)
!5993 = !DILocation(line: 605, column: 72, scope: !5984)
!5994 = !DILocation(line: 607, column: 7, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5984, file: !2, line: 607, column: 6)
!5996 = !DILocation(line: 607, column: 6, scope: !5984)
!5997 = !DILocation(line: 608, column: 3, scope: !5995)
!5998 = !DILocation(line: 615, column: 45, scope: !5984)
!5999 = !DILocation(line: 615, column: 30, scope: !5984)
!6000 = !DILocation(line: 615, column: 52, scope: !5984)
!6001 = !DILocation(line: 615, column: 9, scope: !5984)
!6002 = !DILocation(line: 615, column: 2, scope: !5984)
!6003 = !DILocation(line: 616, column: 1, scope: !5984)
!6004 = !DISubprogram(name: "set_memory_decrypted", scope: !6005, file: !6005, line: 52, type: !6006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6005 = !DIFile(filename: "./arch/x86/include/asm/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ed4c9c9f9b5c1359158a637c4326a39")
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!38, !55, !38}
!6008 = distinct !DISubprogram(name: "arch_kexec_pre_free_pages", scope: !2, file: !2, line: 618, type: !6009, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6011)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{null, !36, !17}
!6011 = !{!6012, !6013}
!6012 = !DILocalVariable(name: "vaddr", arg: 1, scope: !6008, file: !2, line: 618, type: !36)
!6013 = !DILocalVariable(name: "pages", arg: 2, scope: !6008, file: !2, line: 618, type: !17)
!6014 = !DILocation(line: 618, column: 38, scope: !6008)
!6015 = !DILocation(line: 618, column: 58, scope: !6008)
!6016 = !DILocation(line: 620, column: 7, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6008, file: !2, line: 620, column: 6)
!6018 = !DILocation(line: 620, column: 6, scope: !6008)
!6019 = !DILocation(line: 621, column: 3, scope: !6017)
!6020 = !DILocation(line: 627, column: 38, scope: !6008)
!6021 = !DILocation(line: 627, column: 23, scope: !6008)
!6022 = !DILocation(line: 627, column: 45, scope: !6008)
!6023 = !DILocation(line: 627, column: 2, scope: !6008)
!6024 = !DILocation(line: 628, column: 1, scope: !6008)
!6025 = !DISubprogram(name: "set_memory_encrypted", scope: !6005, file: !6005, line: 51, type: !6006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6026 = distinct !DISubprogram(name: "alloc_pgt_page", scope: !2, file: !2, line: 208, type: !5577, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6027)
!6027 = !{!6028, !6029, !6030, !6031}
!6028 = !DILocalVariable(name: "data", arg: 1, scope: !6026, file: !2, line: 208, type: !36)
!6029 = !DILocalVariable(name: "image", scope: !6026, file: !2, line: 210, type: !5416)
!6030 = !DILocalVariable(name: "page", scope: !6026, file: !2, line: 211, type: !299)
!6031 = !DILocalVariable(name: "p", scope: !6026, file: !2, line: 212, type: !36)
!6032 = !DILocation(line: 208, column: 35, scope: !6026)
!6033 = !DILocation(line: 210, column: 2, scope: !6026)
!6034 = !DILocation(line: 210, column: 17, scope: !6026)
!6035 = !DILocation(line: 210, column: 42, scope: !6026)
!6036 = !DILocation(line: 211, column: 2, scope: !6026)
!6037 = !DILocation(line: 211, column: 15, scope: !6026)
!6038 = !DILocation(line: 212, column: 2, scope: !6026)
!6039 = !DILocation(line: 212, column: 8, scope: !6026)
!6040 = !DILocation(line: 214, column: 36, scope: !6026)
!6041 = !DILocation(line: 214, column: 9, scope: !6026)
!6042 = !DILocation(line: 214, column: 7, scope: !6026)
!6043 = !DILocation(line: 215, column: 6, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6026, file: !2, line: 215, column: 6)
!6045 = !DILocation(line: 215, column: 6, scope: !6026)
!6046 = !DILocation(line: 216, column: 7, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6044, file: !2, line: 215, column: 12)
!6048 = !DILocation(line: 216, column: 5, scope: !6047)
!6049 = !DILocation(line: 217, column: 14, scope: !6047)
!6050 = !DILocation(line: 217, column: 3, scope: !6047)
!6051 = !DILocation(line: 218, column: 2, scope: !6047)
!6052 = !DILocation(line: 220, column: 9, scope: !6026)
!6053 = !DILocation(line: 221, column: 1, scope: !6026)
!6054 = !DILocation(line: 220, column: 2, scope: !6026)
!6055 = !DISubprogram(name: "kernel_ident_mapping_init", scope: !5573, file: !5573, line: 16, type: !6056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{!38, !6058, !1094, !55, !55}
!6058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!6059 = distinct !DISubprogram(name: "map_efi_systab", scope: !2, file: !2, line: 90, type: !6060, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6062)
!6060 = !DISubroutineType(types: !6061)
!6061 = !{!38, !6058, !1094}
!6062 = !{!6063, !6064, !6065, !6066, !6067, !6068, !6069, !6072}
!6063 = !DILocalVariable(name: "info", arg: 1, scope: !6059, file: !2, line: 90, type: !6058)
!6064 = !DILocalVariable(name: "level4p", arg: 2, scope: !6059, file: !2, line: 90, type: !1094)
!6065 = !DILocalVariable(name: "mstart", scope: !6059, file: !2, line: 93, type: !55)
!6066 = !DILocalVariable(name: "mend", scope: !6059, file: !2, line: 93, type: !55)
!6067 = !DILocalVariable(name: "kaddr", scope: !6059, file: !2, line: 94, type: !36)
!6068 = !DILocalVariable(name: "ret", scope: !6059, file: !2, line: 95, type: !38)
!6069 = !DILocalVariable(name: "stbl", scope: !6070, file: !2, line: 124, type: !5471)
!6070 = distinct !DILexicalBlock(scope: !6071, file: !2, line: 123, column: 30)
!6071 = distinct !DILexicalBlock(scope: !6059, file: !2, line: 123, column: 6)
!6072 = !DILocalVariable(name: "stbl", scope: !6073, file: !2, line: 128, type: !5499)
!6073 = distinct !DILexicalBlock(scope: !6071, file: !2, line: 127, column: 9)
!6074 = !DILocation(line: 90, column: 41, scope: !6059)
!6075 = !DILocation(line: 90, column: 54, scope: !6059)
!6076 = !DILocation(line: 93, column: 2, scope: !6059)
!6077 = !DILocation(line: 93, column: 16, scope: !6059)
!6078 = !DILocation(line: 93, column: 24, scope: !6059)
!6079 = !DILocation(line: 94, column: 2, scope: !6059)
!6080 = !DILocation(line: 94, column: 8, scope: !6059)
!6081 = !DILocation(line: 95, column: 2, scope: !6059)
!6082 = !DILocation(line: 95, column: 6, scope: !6059)
!6083 = !DILocation(line: 97, column: 7, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6059, file: !2, line: 97, column: 6)
!6085 = !DILocation(line: 97, column: 6, scope: !6059)
!6086 = !DILocation(line: 98, column: 3, scope: !6084)
!6087 = !DILocation(line: 100, column: 33, scope: !6059)
!6088 = !DILocation(line: 100, column: 12, scope: !6059)
!6089 = !DILocation(line: 101, column: 31, scope: !6059)
!6090 = !DILocation(line: 101, column: 5, scope: !6059)
!6091 = !DILocation(line: 101, column: 44, scope: !6059)
!6092 = !DILocation(line: 100, column: 44, scope: !6059)
!6093 = !DILocation(line: 100, column: 9, scope: !6059)
!6094 = !DILocation(line: 103, column: 6, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6059, file: !2, line: 103, column: 6)
!6096 = !DILocation(line: 103, column: 6, scope: !6059)
!6097 = !DILocation(line: 104, column: 10, scope: !6095)
!6098 = !DILocation(line: 104, column: 17, scope: !6095)
!6099 = !DILocation(line: 104, column: 8, scope: !6095)
!6100 = !DILocation(line: 104, column: 3, scope: !6095)
!6101 = !DILocation(line: 106, column: 10, scope: !6095)
!6102 = !DILocation(line: 106, column: 17, scope: !6095)
!6103 = !DILocation(line: 106, column: 8, scope: !6095)
!6104 = !DILocation(line: 108, column: 7, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6059, file: !2, line: 108, column: 6)
!6106 = !DILocation(line: 108, column: 6, scope: !6059)
!6107 = !DILocation(line: 109, column: 3, scope: !6105)
!6108 = !DILocation(line: 111, column: 34, scope: !6059)
!6109 = !DILocation(line: 111, column: 40, scope: !6059)
!6110 = !DILocation(line: 111, column: 49, scope: !6059)
!6111 = !DILocation(line: 111, column: 57, scope: !6059)
!6112 = !DILocation(line: 111, column: 8, scope: !6059)
!6113 = !DILocation(line: 111, column: 6, scope: !6059)
!6114 = !DILocation(line: 112, column: 6, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6059, file: !2, line: 112, column: 6)
!6116 = !DILocation(line: 112, column: 6, scope: !6059)
!6117 = !DILocation(line: 113, column: 10, scope: !6115)
!6118 = !DILocation(line: 113, column: 3, scope: !6115)
!6119 = !DILocation(line: 115, column: 19, scope: !6059)
!6120 = !DILocation(line: 115, column: 27, scope: !6059)
!6121 = !DILocation(line: 115, column: 34, scope: !6059)
!6122 = !DILocation(line: 115, column: 32, scope: !6059)
!6123 = !DILocation(line: 115, column: 10, scope: !6059)
!6124 = !DILocation(line: 115, column: 8, scope: !6059)
!6125 = !DILocation(line: 116, column: 7, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6059, file: !2, line: 116, column: 6)
!6127 = !DILocation(line: 116, column: 6, scope: !6059)
!6128 = !DILocation(line: 117, column: 3, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6130, file: !2, line: 117, column: 3)
!6130 = distinct !DILexicalBlock(scope: !6126, file: !2, line: 116, column: 14)
!6131 = !DILocation(line: 117, column: 3, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6129, file: !2, line: 117, column: 3)
!6133 = !DILocation(line: 118, column: 3, scope: !6130)
!6134 = !DILocation(line: 121, column: 11, scope: !6059)
!6135 = !DILocation(line: 121, column: 9, scope: !6059)
!6136 = !DILocation(line: 123, column: 6, scope: !6071)
!6137 = !DILocation(line: 123, column: 6, scope: !6059)
!6138 = !DILocation(line: 124, column: 3, scope: !6070)
!6139 = !DILocation(line: 124, column: 26, scope: !6070)
!6140 = !DILocation(line: 124, column: 58, scope: !6070)
!6141 = !DILocation(line: 126, column: 10, scope: !6070)
!6142 = !DILocation(line: 126, column: 51, scope: !6070)
!6143 = !DILocation(line: 126, column: 57, scope: !6070)
!6144 = !DILocation(line: 126, column: 49, scope: !6070)
!6145 = !DILocation(line: 126, column: 17, scope: !6070)
!6146 = !DILocation(line: 126, column: 8, scope: !6070)
!6147 = !DILocation(line: 127, column: 2, scope: !6071)
!6148 = !DILocation(line: 127, column: 2, scope: !6070)
!6149 = !DILocation(line: 128, column: 3, scope: !6073)
!6150 = !DILocation(line: 128, column: 26, scope: !6073)
!6151 = !DILocation(line: 128, column: 58, scope: !6073)
!6152 = !DILocation(line: 130, column: 10, scope: !6073)
!6153 = !DILocation(line: 130, column: 51, scope: !6073)
!6154 = !DILocation(line: 130, column: 57, scope: !6073)
!6155 = !DILocation(line: 130, column: 49, scope: !6073)
!6156 = !DILocation(line: 130, column: 17, scope: !6073)
!6157 = !DILocation(line: 130, column: 8, scope: !6073)
!6158 = !DILocation(line: 131, column: 2, scope: !6071)
!6159 = !DILocation(line: 133, column: 11, scope: !6059)
!6160 = !DILocation(line: 133, column: 2, scope: !6059)
!6161 = !DILocation(line: 135, column: 35, scope: !6059)
!6162 = !DILocation(line: 135, column: 41, scope: !6059)
!6163 = !DILocation(line: 135, column: 50, scope: !6059)
!6164 = !DILocation(line: 135, column: 58, scope: !6059)
!6165 = !DILocation(line: 135, column: 9, scope: !6059)
!6166 = !DILocation(line: 135, column: 2, scope: !6059)
!6167 = !DILocation(line: 138, column: 1, scope: !6059)
!6168 = distinct !DISubprogram(name: "map_acpi_tables", scope: !2, file: !2, line: 55, type: !6060, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6169)
!6169 = !{!6170, !6171, !6172, !6177, !6178}
!6170 = !DILocalVariable(name: "info", arg: 1, scope: !6168, file: !2, line: 55, type: !6058)
!6171 = !DILocalVariable(name: "level4p", arg: 2, scope: !6168, file: !2, line: 55, type: !1094)
!6172 = !DILocalVariable(name: "data", scope: !6168, file: !2, line: 57, type: !6173)
!6173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_pgtable_data", file: !2, line: 38, size: 128, elements: !6174)
!6174 = !{!6175, !6176}
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6173, file: !2, line: 39, baseType: !6058, size: 64)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "level4p", scope: !6173, file: !2, line: 40, baseType: !1094, size: 64, offset: 64)
!6177 = !DILocalVariable(name: "flags", scope: !6168, file: !2, line: 58, type: !55)
!6178 = !DILocalVariable(name: "ret", scope: !6168, file: !2, line: 59, type: !38)
!6179 = !DILocation(line: 55, column: 42, scope: !6168)
!6180 = !DILocation(line: 55, column: 55, scope: !6168)
!6181 = !DILocation(line: 57, column: 2, scope: !6168)
!6182 = !DILocation(line: 57, column: 27, scope: !6168)
!6183 = !DILocation(line: 58, column: 2, scope: !6168)
!6184 = !DILocation(line: 58, column: 16, scope: !6168)
!6185 = !DILocation(line: 59, column: 2, scope: !6168)
!6186 = !DILocation(line: 59, column: 6, scope: !6168)
!6187 = !DILocation(line: 61, column: 14, scope: !6168)
!6188 = !DILocation(line: 61, column: 7, scope: !6168)
!6189 = !DILocation(line: 61, column: 12, scope: !6168)
!6190 = !DILocation(line: 62, column: 17, scope: !6168)
!6191 = !DILocation(line: 62, column: 7, scope: !6168)
!6192 = !DILocation(line: 62, column: 15, scope: !6168)
!6193 = !DILocation(line: 63, column: 8, scope: !6168)
!6194 = !DILocation(line: 65, column: 52, scope: !6168)
!6195 = !DILocation(line: 65, column: 8, scope: !6168)
!6196 = !DILocation(line: 65, column: 6, scope: !6168)
!6197 = !DILocation(line: 67, column: 6, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6168, file: !2, line: 67, column: 6)
!6199 = !DILocation(line: 67, column: 10, scope: !6198)
!6200 = !DILocation(line: 67, column: 13, scope: !6198)
!6201 = !DILocation(line: 67, column: 17, scope: !6198)
!6202 = !DILocation(line: 67, column: 6, scope: !6168)
!6203 = !DILocation(line: 68, column: 10, scope: !6198)
!6204 = !DILocation(line: 68, column: 3, scope: !6198)
!6205 = !DILocation(line: 71, column: 56, scope: !6168)
!6206 = !DILocation(line: 71, column: 8, scope: !6168)
!6207 = !DILocation(line: 71, column: 6, scope: !6168)
!6208 = !DILocation(line: 73, column: 6, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6168, file: !2, line: 73, column: 6)
!6210 = !DILocation(line: 73, column: 10, scope: !6209)
!6211 = !DILocation(line: 73, column: 13, scope: !6209)
!6212 = !DILocation(line: 73, column: 17, scope: !6209)
!6213 = !DILocation(line: 73, column: 6, scope: !6168)
!6214 = !DILocation(line: 74, column: 10, scope: !6209)
!6215 = !DILocation(line: 74, column: 3, scope: !6209)
!6216 = !DILocation(line: 76, column: 2, scope: !6168)
!6217 = !DILocation(line: 77, column: 1, scope: !6168)
!6218 = distinct !DISubprogram(name: "init_transition_pgtable", scope: !2, file: !2, line: 152, type: !6219, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6221)
!6219 = !DISubroutineType(types: !6220)
!6220 = !{!38, !5416, !1094, !55}
!6221 = !{!6222, !6223, !6224, !6225, !6226, !6227, !6228, !6229, !6230, !6231, !6232, !6233}
!6222 = !DILocalVariable(name: "image", arg: 1, scope: !6218, file: !2, line: 152, type: !5416)
!6223 = !DILocalVariable(name: "pgd", arg: 2, scope: !6218, file: !2, line: 152, type: !1094)
!6224 = !DILocalVariable(name: "control_page", arg: 3, scope: !6218, file: !2, line: 153, type: !55)
!6225 = !DILocalVariable(name: "prot", scope: !6218, file: !2, line: 155, type: !1934)
!6226 = !DILocalVariable(name: "vaddr", scope: !6218, file: !2, line: 156, type: !55)
!6227 = !DILocalVariable(name: "paddr", scope: !6218, file: !2, line: 156, type: !55)
!6228 = !DILocalVariable(name: "result", scope: !6218, file: !2, line: 157, type: !38)
!6229 = !DILocalVariable(name: "p4d", scope: !6218, file: !2, line: 158, type: !5456)
!6230 = !DILocalVariable(name: "pud", scope: !6218, file: !2, line: 159, type: !2010)
!6231 = !DILocalVariable(name: "pmd", scope: !6218, file: !2, line: 160, type: !2003)
!6232 = !DILocalVariable(name: "pte", scope: !6218, file: !2, line: 161, type: !2029)
!6233 = !DILabel(scope: !6218, name: "err", file: !2, line: 204)
!6234 = !DILocation(line: 152, column: 51, scope: !6218)
!6235 = !DILocation(line: 152, column: 65, scope: !6218)
!6236 = !DILocation(line: 153, column: 22, scope: !6218)
!6237 = !DILocation(line: 155, column: 2, scope: !6218)
!6238 = !DILocation(line: 155, column: 11, scope: !6218)
!6239 = !DILocation(line: 155, column: 18, scope: !6218)
!6240 = !DILocation(line: 156, column: 2, scope: !6218)
!6241 = !DILocation(line: 156, column: 16, scope: !6218)
!6242 = !DILocation(line: 156, column: 23, scope: !6218)
!6243 = !DILocation(line: 157, column: 2, scope: !6218)
!6244 = !DILocation(line: 157, column: 6, scope: !6218)
!6245 = !DILocation(line: 158, column: 2, scope: !6218)
!6246 = !DILocation(line: 158, column: 9, scope: !6218)
!6247 = !DILocation(line: 159, column: 2, scope: !6218)
!6248 = !DILocation(line: 159, column: 9, scope: !6218)
!6249 = !DILocation(line: 160, column: 2, scope: !6218)
!6250 = !DILocation(line: 160, column: 9, scope: !6218)
!6251 = !DILocation(line: 161, column: 2, scope: !6218)
!6252 = !DILocation(line: 161, column: 9, scope: !6218)
!6253 = !DILocation(line: 163, column: 8, scope: !6218)
!6254 = !DILocation(line: 164, column: 10, scope: !6218)
!6255 = !DILocation(line: 164, column: 8, scope: !6218)
!6256 = !DILocation(line: 165, column: 9, scope: !6218)
!6257 = !DILocation(line: 165, column: 6, scope: !6218)
!6258 = !DILocation(line: 166, column: 20, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6218, file: !2, line: 166, column: 6)
!6260 = !DILocation(line: 166, column: 7, scope: !6259)
!6261 = !DILocation(line: 166, column: 6, scope: !6218)
!6262 = !DILocation(line: 167, column: 18, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6259, file: !2, line: 166, column: 26)
!6264 = !DILocation(line: 167, column: 9, scope: !6263)
!6265 = !DILocation(line: 167, column: 7, scope: !6263)
!6266 = !DILocation(line: 168, column: 8, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6263, file: !2, line: 168, column: 7)
!6268 = !DILocation(line: 168, column: 7, scope: !6263)
!6269 = !DILocation(line: 169, column: 4, scope: !6267)
!6270 = !DILocation(line: 170, column: 21, scope: !6263)
!6271 = !DILocation(line: 170, column: 3, scope: !6263)
!6272 = !DILocation(line: 170, column: 10, scope: !6263)
!6273 = !DILocation(line: 170, column: 15, scope: !6263)
!6274 = !DILocation(line: 170, column: 19, scope: !6263)
!6275 = !DILocation(line: 171, column: 3, scope: !6263)
!6276 = !DILocation(line: 172, column: 2, scope: !6263)
!6277 = !DILocation(line: 173, column: 19, scope: !6218)
!6278 = !DILocation(line: 173, column: 24, scope: !6218)
!6279 = !DILocation(line: 173, column: 8, scope: !6218)
!6280 = !DILocation(line: 173, column: 6, scope: !6218)
!6281 = !DILocation(line: 174, column: 20, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6218, file: !2, line: 174, column: 6)
!6283 = !DILocation(line: 174, column: 7, scope: !6282)
!6284 = !DILocation(line: 174, column: 6, scope: !6218)
!6285 = !DILocation(line: 175, column: 18, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6282, file: !2, line: 174, column: 26)
!6287 = !DILocation(line: 175, column: 9, scope: !6286)
!6288 = !DILocation(line: 175, column: 7, scope: !6286)
!6289 = !DILocation(line: 176, column: 8, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6286, file: !2, line: 176, column: 7)
!6291 = !DILocation(line: 176, column: 7, scope: !6286)
!6292 = !DILocation(line: 177, column: 4, scope: !6290)
!6293 = !DILocation(line: 178, column: 21, scope: !6286)
!6294 = !DILocation(line: 178, column: 3, scope: !6286)
!6295 = !DILocation(line: 178, column: 10, scope: !6286)
!6296 = !DILocation(line: 178, column: 15, scope: !6286)
!6297 = !DILocation(line: 178, column: 19, scope: !6286)
!6298 = !DILocation(line: 179, column: 3, scope: !6286)
!6299 = !DILocation(line: 180, column: 2, scope: !6286)
!6300 = !DILocation(line: 181, column: 19, scope: !6218)
!6301 = !DILocation(line: 181, column: 24, scope: !6218)
!6302 = !DILocation(line: 181, column: 8, scope: !6218)
!6303 = !DILocation(line: 181, column: 6, scope: !6218)
!6304 = !DILocation(line: 182, column: 20, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6218, file: !2, line: 182, column: 6)
!6306 = !DILocation(line: 182, column: 7, scope: !6305)
!6307 = !DILocation(line: 182, column: 6, scope: !6218)
!6308 = !DILocation(line: 183, column: 18, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6305, file: !2, line: 182, column: 26)
!6310 = !DILocation(line: 183, column: 9, scope: !6309)
!6311 = !DILocation(line: 183, column: 7, scope: !6309)
!6312 = !DILocation(line: 184, column: 8, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6309, file: !2, line: 184, column: 7)
!6314 = !DILocation(line: 184, column: 7, scope: !6309)
!6315 = !DILocation(line: 185, column: 4, scope: !6313)
!6316 = !DILocation(line: 186, column: 21, scope: !6309)
!6317 = !DILocation(line: 186, column: 3, scope: !6309)
!6318 = !DILocation(line: 186, column: 10, scope: !6309)
!6319 = !DILocation(line: 186, column: 15, scope: !6309)
!6320 = !DILocation(line: 186, column: 19, scope: !6309)
!6321 = !DILocation(line: 187, column: 3, scope: !6309)
!6322 = !DILocation(line: 188, column: 2, scope: !6309)
!6323 = !DILocation(line: 189, column: 19, scope: !6218)
!6324 = !DILocation(line: 189, column: 24, scope: !6218)
!6325 = !DILocation(line: 189, column: 8, scope: !6218)
!6326 = !DILocation(line: 189, column: 6, scope: !6218)
!6327 = !DILocation(line: 190, column: 20, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6218, file: !2, line: 190, column: 6)
!6329 = !DILocation(line: 190, column: 7, scope: !6328)
!6330 = !DILocation(line: 190, column: 6, scope: !6218)
!6331 = !DILocation(line: 191, column: 18, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6328, file: !2, line: 190, column: 26)
!6333 = !DILocation(line: 191, column: 9, scope: !6332)
!6334 = !DILocation(line: 191, column: 7, scope: !6332)
!6335 = !DILocation(line: 192, column: 8, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6332, file: !2, line: 192, column: 7)
!6337 = !DILocation(line: 192, column: 7, scope: !6332)
!6338 = !DILocation(line: 193, column: 4, scope: !6336)
!6339 = !DILocation(line: 194, column: 21, scope: !6332)
!6340 = !DILocation(line: 194, column: 3, scope: !6332)
!6341 = !DILocation(line: 194, column: 10, scope: !6332)
!6342 = !DILocation(line: 194, column: 15, scope: !6332)
!6343 = !DILocation(line: 194, column: 19, scope: !6332)
!6344 = !DILocation(line: 195, column: 3, scope: !6332)
!6345 = !DILocation(line: 196, column: 2, scope: !6332)
!6346 = !DILocation(line: 197, column: 26, scope: !6218)
!6347 = !DILocation(line: 197, column: 31, scope: !6218)
!6348 = !DILocation(line: 197, column: 8, scope: !6218)
!6349 = !DILocation(line: 197, column: 6, scope: !6218)
!6350 = !DILocation(line: 199, column: 6, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6218, file: !2, line: 199, column: 6)
!6352 = !DILocation(line: 199, column: 6, scope: !6218)
!6353 = !DILocation(line: 200, column: 10, scope: !6351)
!6354 = !DILocation(line: 200, column: 3, scope: !6351)
!6355 = !DILocation(line: 202, column: 2, scope: !6218)
!6356 = !DILocation(line: 203, column: 2, scope: !6218)
!6357 = !DILocation(line: 204, column: 1, scope: !6218)
!6358 = !DILocation(line: 205, column: 9, scope: !6218)
!6359 = !DILocation(line: 205, column: 2, scope: !6218)
!6360 = !DILocation(line: 206, column: 1, scope: !6218)
!6361 = !DISubprogram(name: "kimage_alloc_control_pages", scope: !5418, file: !5418, line: 378, type: !6362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6362 = !DISubroutineType(types: !6363)
!6363 = !{!299, !5416, !17}
!6364 = distinct !DISubprogram(name: "clear_page", scope: !5898, file: !5898, line: 47, type: !3554, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6365)
!6365 = !{!6366}
!6366 = !DILocalVariable(name: "page", arg: 1, scope: !6364, file: !5898, line: 47, type: !36)
!6367 = !DILocation(line: 47, column: 37, scope: !6364)
!6368 = !DILocation(line: 53, column: 24, scope: !6364)
!6369 = !DILocation(line: 53, column: 2, scope: !6364)
!6370 = !DILocation(line: 54, column: 2, scope: !6364)
!6371 = !{i64 2148594841, i64 2148594874, i64 2148594880, i64 2148594896, i64 2148594915, i64 2148594946, i64 2148595905, i64 2148594480, i64 2148595911, i64 2148595959, i64 2148596023, i64 2148596087, i64 2148596144, i64 2148596351, i64 2148596399, i64 2148596463, i64 2148596527, i64 2148596584, i64 2148594598, i64 2148594623, i64 2148596791, i64 2148596920, i64 2148596852, i64 2148596934, i64 2148596948, i64 2148597077, i64 2148597009, i64 2148597091, i64 2148594757}
!6372 = !DILocation(line: 60, column: 1, scope: !6364)
!6373 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6374, file: !6374, line: 70, type: !6375, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6377)
!6374 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6375 = !DISubroutineType(types: !6376)
!6376 = !{null, !1216, !51}
!6377 = !{!6378, !6379}
!6378 = !DILocalVariable(name: "address", arg: 1, scope: !6373, file: !6374, line: 70, type: !1216)
!6379 = !DILocalVariable(name: "size", arg: 2, scope: !6373, file: !6374, line: 70, type: !51)
!6380 = !DILocation(line: 70, column: 54, scope: !6373)
!6381 = !DILocation(line: 70, column: 70, scope: !6373)
!6382 = !DILocation(line: 72, column: 1, scope: !6373)
!6383 = distinct !DISubprogram(name: "efi_enabled", scope: !5473, file: !5473, line: 880, type: !6384, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6386)
!6384 = !DISubroutineType(types: !6385)
!6385 = !{!1287, !38}
!6386 = !{!6387}
!6387 = !DILocalVariable(name: "feature", arg: 1, scope: !6383, file: !5473, line: 880, type: !38)
!6388 = !DILocation(line: 880, column: 36, scope: !6383)
!6389 = !DILocation(line: 882, column: 9, scope: !6383)
!6390 = !DILocation(line: 882, column: 39, scope: !6383)
!6391 = !DILocation(line: 882, column: 2, scope: !6383)
!6392 = !DISubprogram(name: "memremap", scope: !278, file: !278, line: 149, type: !6393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6393 = !DISubroutineType(types: !6394)
!6394 = !{!36, !6395, !51, !55}
!6395 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !41, line: 164, baseType: !2956)
!6396 = !DISubprogram(name: "_printk", scope: !6397, file: !6397, line: 153, type: !6398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6397 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6398 = !DISubroutineType(types: !6399)
!6399 = !{!38, !33, null}
!6400 = !DISubprogram(name: "memunmap", scope: !278, file: !278, line: 150, type: !3554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6401 = distinct !DISubprogram(name: "const_test_bit", scope: !6402, file: !6402, line: 166, type: !6403, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6408)
!6402 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6403 = !DISubroutineType(types: !6404)
!6404 = !{!1287, !55, !6405}
!6405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6406, size: 64)
!6406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6407)
!6407 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!6408 = !{!6409, !6410, !6411, !6412, !6413}
!6409 = !DILocalVariable(name: "nr", arg: 1, scope: !6401, file: !6402, line: 166, type: !55)
!6410 = !DILocalVariable(name: "addr", arg: 2, scope: !6401, file: !6402, line: 166, type: !6405)
!6411 = !DILocalVariable(name: "p", scope: !6401, file: !6402, line: 168, type: !5517)
!6412 = !DILocalVariable(name: "mask", scope: !6401, file: !6402, line: 169, type: !55)
!6413 = !DILocalVariable(name: "val", scope: !6401, file: !6402, line: 170, type: !55)
!6414 = !DILocation(line: 166, column: 30, scope: !6401)
!6415 = !DILocation(line: 166, column: 64, scope: !6401)
!6416 = !DILocation(line: 168, column: 2, scope: !6401)
!6417 = !DILocation(line: 168, column: 23, scope: !6401)
!6418 = !DILocation(line: 168, column: 50, scope: !6401)
!6419 = !DILocation(line: 168, column: 57, scope: !6401)
!6420 = !DILocation(line: 168, column: 55, scope: !6401)
!6421 = !DILocation(line: 169, column: 2, scope: !6401)
!6422 = !DILocation(line: 169, column: 16, scope: !6401)
!6423 = !DILocation(line: 169, column: 23, scope: !6401)
!6424 = !DILocation(line: 170, column: 2, scope: !6401)
!6425 = !DILocation(line: 170, column: 16, scope: !6401)
!6426 = !DILocation(line: 170, column: 23, scope: !6401)
!6427 = !DILocation(line: 170, column: 22, scope: !6401)
!6428 = !DILocation(line: 172, column: 12, scope: !6401)
!6429 = !DILocation(line: 172, column: 18, scope: !6401)
!6430 = !DILocation(line: 172, column: 16, scope: !6401)
!6431 = !DILocation(line: 172, column: 10, scope: !6401)
!6432 = !DILocation(line: 172, column: 9, scope: !6401)
!6433 = !DILocation(line: 173, column: 1, scope: !6401)
!6434 = !DILocation(line: 172, column: 2, scope: !6401)
!6435 = distinct !DISubprogram(name: "_test_bit", scope: !6436, file: !6436, line: 139, type: !6403, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6437)
!6436 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6437 = !{!6438, !6439}
!6438 = !DILocalVariable(name: "nr", arg: 1, scope: !6435, file: !6436, line: 139, type: !55)
!6439 = !DILocalVariable(name: "addr", arg: 2, scope: !6435, file: !6436, line: 139, type: !6405)
!6440 = !DILocation(line: 139, column: 25, scope: !6435)
!6441 = !DILocation(line: 139, column: 59, scope: !6435)
!6442 = !DILocation(line: 141, column: 25, scope: !6435)
!6443 = !DILocation(line: 141, column: 32, scope: !6435)
!6444 = !DILocation(line: 141, column: 30, scope: !6435)
!6445 = !DILocation(line: 141, column: 2, scope: !6435)
!6446 = !DILocation(line: 142, column: 23, scope: !6435)
!6447 = !DILocation(line: 142, column: 27, scope: !6435)
!6448 = !DILocation(line: 142, column: 9, scope: !6435)
!6449 = !DILocation(line: 142, column: 2, scope: !6435)
!6450 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6451, file: !6451, line: 66, type: !6452, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6456)
!6451 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6452 = !DISubroutineType(types: !6453)
!6453 = !{null, !6454, !51}
!6454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6455, size: 64)
!6455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5891)
!6456 = !{!6457, !6458}
!6457 = !DILocalVariable(name: "v", arg: 1, scope: !6450, file: !6451, line: 66, type: !6454)
!6458 = !DILocalVariable(name: "size", arg: 2, scope: !6450, file: !6451, line: 66, type: !51)
!6459 = !DILocation(line: 66, column: 73, scope: !6450)
!6460 = !DILocation(line: 66, column: 83, scope: !6450)
!6461 = !DILocation(line: 68, column: 19, scope: !6450)
!6462 = !DILocation(line: 68, column: 22, scope: !6450)
!6463 = !DILocation(line: 68, column: 2, scope: !6450)
!6464 = !DILocation(line: 69, column: 2, scope: !6450)
!6465 = !DILocation(line: 70, column: 1, scope: !6450)
!6466 = distinct !DISubprogram(name: "arch_test_bit", scope: !6467, file: !6467, line: 237, type: !6403, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6468)
!6467 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6468 = !{!6469, !6470}
!6469 = !DILocalVariable(name: "nr", arg: 1, scope: !6466, file: !6467, line: 237, type: !55)
!6470 = !DILocalVariable(name: "addr", arg: 2, scope: !6466, file: !6467, line: 237, type: !6405)
!6471 = !DILocation(line: 237, column: 29, scope: !6466)
!6472 = !DILocation(line: 237, column: 63, scope: !6466)
!6473 = !DILocation(line: 239, column: 30, scope: !6466)
!6474 = !DILocation(line: 239, column: 9, scope: !6466)
!6475 = !DILocation(line: 239, column: 54, scope: !6466)
!6476 = !DILocation(line: 239, column: 58, scope: !6466)
!6477 = !DILocation(line: 239, column: 36, scope: !6466)
!6478 = !DILocation(line: 240, column: 26, scope: !6466)
!6479 = !DILocation(line: 240, column: 30, scope: !6466)
!6480 = !DILocation(line: 240, column: 8, scope: !6466)
!6481 = !DILocation(line: 239, column: 2, scope: !6466)
!6482 = distinct !DISubprogram(name: "kasan_check_read", scope: !6483, file: !6483, line: 40, type: !6484, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6486)
!6483 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6484 = !DISubroutineType(types: !6485)
!6485 = !{!1287, !6454, !17}
!6486 = !{!6487, !6488}
!6487 = !DILocalVariable(name: "p", arg: 1, scope: !6482, file: !6483, line: 40, type: !6454)
!6488 = !DILocalVariable(name: "size", arg: 2, scope: !6482, file: !6483, line: 40, type: !17)
!6489 = !DILocation(line: 40, column: 58, scope: !6482)
!6490 = !DILocation(line: 40, column: 74, scope: !6482)
!6491 = !DILocation(line: 42, column: 2, scope: !6482)
!6492 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6493, file: !6493, line: 229, type: !6494, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6496)
!6493 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6494 = !DISubroutineType(types: !6495)
!6495 = !{null, !6454, !51, !38}
!6496 = !{!6497, !6498, !6499}
!6497 = !DILocalVariable(name: "ptr", arg: 1, scope: !6492, file: !6493, line: 229, type: !6454)
!6498 = !DILocalVariable(name: "size", arg: 2, scope: !6492, file: !6493, line: 229, type: !51)
!6499 = !DILocalVariable(name: "type", arg: 3, scope: !6492, file: !6493, line: 230, type: !38)
!6500 = !DILocation(line: 229, column: 60, scope: !6492)
!6501 = !DILocation(line: 229, column: 72, scope: !6492)
!6502 = !DILocation(line: 230, column: 15, scope: !6492)
!6503 = !DILocation(line: 230, column: 23, scope: !6492)
!6504 = distinct !DISubprogram(name: "constant_test_bit", scope: !6467, file: !6467, line: 204, type: !6505, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6507)
!6505 = !DISubroutineType(types: !6506)
!6506 = !{!1287, !598, !6405}
!6507 = !{!6508, !6509}
!6508 = !DILocalVariable(name: "nr", arg: 1, scope: !6504, file: !6467, line: 204, type: !598)
!6509 = !DILocalVariable(name: "addr", arg: 2, scope: !6504, file: !6467, line: 204, type: !6405)
!6510 = !DILocation(line: 204, column: 52, scope: !6504)
!6511 = !DILocation(line: 204, column: 86, scope: !6504)
!6512 = !DILocation(line: 206, column: 19, scope: !6504)
!6513 = !DILocation(line: 206, column: 22, scope: !6504)
!6514 = !DILocation(line: 206, column: 15, scope: !6504)
!6515 = !DILocation(line: 207, column: 4, scope: !6504)
!6516 = !DILocation(line: 207, column: 9, scope: !6504)
!6517 = !DILocation(line: 207, column: 12, scope: !6504)
!6518 = !DILocation(line: 206, column: 44, scope: !6504)
!6519 = !DILocation(line: 207, column: 37, scope: !6504)
!6520 = !DILocation(line: 206, column: 2, scope: !6504)
!6521 = distinct !DISubprogram(name: "variable_test_bit", scope: !6467, file: !6467, line: 224, type: !6505, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6522)
!6522 = !{!6523, !6524, !6525}
!6523 = !DILocalVariable(name: "nr", arg: 1, scope: !6521, file: !6467, line: 224, type: !598)
!6524 = !DILocalVariable(name: "addr", arg: 2, scope: !6521, file: !6467, line: 224, type: !6405)
!6525 = !DILocalVariable(name: "oldbit", scope: !6521, file: !6467, line: 226, type: !1287)
!6526 = !DILocation(line: 224, column: 52, scope: !6521)
!6527 = !DILocation(line: 224, column: 86, scope: !6521)
!6528 = !DILocation(line: 226, column: 2, scope: !6521)
!6529 = !DILocation(line: 226, column: 7, scope: !6521)
!6530 = !DILocation(line: 231, column: 33, scope: !6521)
!6531 = !DILocation(line: 231, column: 46, scope: !6521)
!6532 = !DILocation(line: 228, column: 2, scope: !6521)
!6533 = !{i64 2148317585, i64 2148317659}
!6534 = !DILocation(line: 233, column: 9, scope: !6521)
!6535 = !DILocation(line: 234, column: 1, scope: !6521)
!6536 = !DILocation(line: 233, column: 2, scope: !6521)
!6537 = !DISubprogram(name: "walk_iomem_res_desc", scope: !286, file: !286, line: 334, type: !6538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{!38, !55, !55, !398, !398, !36, !6540}
!6540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6541, size: 64)
!6541 = !DISubroutineType(types: !6542)
!6542 = !{!38, !6543, !36}
!6543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6544, size: 64)
!6544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !286, line: 21, size: 512, elements: !6545)
!6545 = !{!6546, !6547, !6548, !6549, !6550, !6551, !6552, !6553}
!6546 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6544, file: !286, line: 22, baseType: !6395, size: 64)
!6547 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6544, file: !286, line: 23, baseType: !6395, size: 64, offset: 64)
!6548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6544, file: !286, line: 24, baseType: !33, size: 64, offset: 128)
!6549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6544, file: !286, line: 25, baseType: !55, size: 64, offset: 192)
!6550 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !6544, file: !286, line: 26, baseType: !55, size: 64, offset: 256)
!6551 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6544, file: !286, line: 27, baseType: !6543, size: 64, offset: 320)
!6552 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !6544, file: !286, line: 27, baseType: !6543, size: 64, offset: 384)
!6553 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !6544, file: !286, line: 27, baseType: !6543, size: 64, offset: 448)
!6554 = distinct !DISubprogram(name: "mem_region_callback", scope: !2, file: !2, line: 43, type: !6541, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6555)
!6555 = !{!6556, !6557, !6558, !6560, !6561}
!6556 = !DILocalVariable(name: "res", arg: 1, scope: !6554, file: !2, line: 43, type: !6543)
!6557 = !DILocalVariable(name: "arg", arg: 2, scope: !6554, file: !2, line: 43, type: !36)
!6558 = !DILocalVariable(name: "data", scope: !6554, file: !2, line: 45, type: !6559)
!6559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6173, size: 64)
!6560 = !DILocalVariable(name: "mstart", scope: !6554, file: !2, line: 46, type: !55)
!6561 = !DILocalVariable(name: "mend", scope: !6554, file: !2, line: 46, type: !55)
!6562 = !DILocation(line: 43, column: 49, scope: !6554)
!6563 = !DILocation(line: 43, column: 60, scope: !6554)
!6564 = !DILocation(line: 45, column: 2, scope: !6554)
!6565 = !DILocation(line: 45, column: 28, scope: !6554)
!6566 = !DILocation(line: 45, column: 35, scope: !6554)
!6567 = !DILocation(line: 46, column: 2, scope: !6554)
!6568 = !DILocation(line: 46, column: 16, scope: !6554)
!6569 = !DILocation(line: 46, column: 24, scope: !6554)
!6570 = !DILocation(line: 48, column: 11, scope: !6554)
!6571 = !DILocation(line: 48, column: 16, scope: !6554)
!6572 = !DILocation(line: 48, column: 9, scope: !6554)
!6573 = !DILocation(line: 49, column: 9, scope: !6554)
!6574 = !DILocation(line: 49, column: 32, scope: !6554)
!6575 = !DILocation(line: 49, column: 18, scope: !6554)
!6576 = !DILocation(line: 49, column: 16, scope: !6554)
!6577 = !DILocation(line: 49, column: 37, scope: !6554)
!6578 = !DILocation(line: 49, column: 7, scope: !6554)
!6579 = !DILocation(line: 51, column: 35, scope: !6554)
!6580 = !DILocation(line: 51, column: 41, scope: !6554)
!6581 = !DILocation(line: 51, column: 47, scope: !6554)
!6582 = !DILocation(line: 51, column: 53, scope: !6554)
!6583 = !DILocation(line: 51, column: 62, scope: !6554)
!6584 = !DILocation(line: 51, column: 70, scope: !6554)
!6585 = !DILocation(line: 51, column: 9, scope: !6554)
!6586 = !DILocation(line: 52, column: 1, scope: !6554)
!6587 = !DILocation(line: 51, column: 2, scope: !6554)
!6588 = distinct !DISubprogram(name: "resource_size", scope: !286, file: !286, line: 219, type: !6589, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6593)
!6589 = !DISubroutineType(types: !6590)
!6590 = !{!6395, !6591}
!6591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6592, size: 64)
!6592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6544)
!6593 = !{!6594}
!6594 = !DILocalVariable(name: "res", arg: 1, scope: !6588, file: !286, line: 219, type: !6591)
!6595 = !DILocation(line: 219, column: 68, scope: !6588)
!6596 = !DILocation(line: 221, column: 9, scope: !6588)
!6597 = !DILocation(line: 221, column: 14, scope: !6588)
!6598 = !DILocation(line: 221, column: 20, scope: !6588)
!6599 = !DILocation(line: 221, column: 25, scope: !6588)
!6600 = !DILocation(line: 221, column: 18, scope: !6588)
!6601 = !DILocation(line: 221, column: 31, scope: !6588)
!6602 = !DILocation(line: 221, column: 2, scope: !6588)
!6603 = distinct !DISubprogram(name: "pgd_present", scope: !6604, file: !6604, line: 1130, type: !6605, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6607)
!6604 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!6605 = !DISubroutineType(types: !6606)
!6606 = !{!38, !1095}
!6607 = !{!6608}
!6608 = !DILocalVariable(name: "pgd", arg: 1, scope: !6603, file: !6604, line: 1130, type: !1095)
!6609 = !DILocation(line: 1130, column: 37, scope: !6603)
!6610 = !DILocation(line: 1132, column: 6, scope: !6603)
!6611 = !DILocation(line: 1132, column: 7, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6603, file: !6604, line: 1132, column: 6)
!6613 = !DILocation(line: 1133, column: 3, scope: !6612)
!6614 = !DILocation(line: 1134, column: 9, scope: !6603)
!6615 = !DILocation(line: 1134, column: 24, scope: !6603)
!6616 = !DILocation(line: 1134, column: 2, scope: !6603)
!6617 = !DILocation(line: 1135, column: 1, scope: !6603)
!6618 = !DISubprogram(name: "get_zeroed_page", scope: !6619, file: !6619, line: 290, type: !6620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6619 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!6620 = !DISubroutineType(types: !6621)
!6621 = !{!55, !758}
!6622 = distinct !DISubprogram(name: "native_set_pgd", scope: !6623, file: !6623, line: 161, type: !6624, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6626)
!6623 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!6624 = !DISubroutineType(types: !6625)
!6625 = !{null, !1094, !1095}
!6626 = !{!6627, !6628}
!6627 = !DILocalVariable(name: "pgdp", arg: 1, scope: !6622, file: !6623, line: 161, type: !1094)
!6628 = !DILocalVariable(name: "pgd", arg: 2, scope: !6622, file: !6623, line: 161, type: !1095)
!6629 = !DILocation(line: 161, column: 42, scope: !6622)
!6630 = !DILocation(line: 161, column: 54, scope: !6622)
!6631 = !DILocation(line: 163, column: 2, scope: !6622)
!6632 = !DILocation(line: 163, column: 2, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6622, file: !6623, line: 163, column: 2)
!6634 = !DILocation(line: 163, column: 2, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6633, file: !6623, line: 163, column: 2)
!6636 = !DILocation(line: 163, column: 2, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6633, file: !6623, line: 163, column: 2)
!6638 = !DILocation(line: 164, column: 1, scope: !6622)
!6639 = distinct !DISubprogram(name: "native_make_pgd", scope: !1096, file: !1096, line: 330, type: !6640, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6642)
!6640 = !DISubroutineType(types: !6641)
!6641 = !{!1095, !1100}
!6642 = !{!6643}
!6643 = !DILocalVariable(name: "val", arg: 1, scope: !6639, file: !1096, line: 330, type: !1100)
!6644 = !DILocation(line: 330, column: 46, scope: !6639)
!6645 = !DILocation(line: 332, column: 17, scope: !6639)
!6646 = !DILocation(line: 332, column: 19, scope: !6639)
!6647 = !DILocation(line: 332, column: 23, scope: !6639)
!6648 = !DILocation(line: 332, column: 2, scope: !6639)
!6649 = distinct !DISubprogram(name: "p4d_offset", scope: !6604, file: !6604, line: 1149, type: !6650, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6652)
!6650 = !DISubroutineType(types: !6651)
!6651 = !{!5456, !1094, !55}
!6652 = !{!6653, !6654}
!6653 = !DILocalVariable(name: "pgd", arg: 1, scope: !6649, file: !6604, line: 1149, type: !1094)
!6654 = !DILocalVariable(name: "address", arg: 2, scope: !6649, file: !6604, line: 1149, type: !55)
!6655 = !DILocation(line: 1149, column: 40, scope: !6649)
!6656 = !DILocation(line: 1149, column: 59, scope: !6649)
!6657 = !DILocation(line: 1151, column: 6, scope: !6649)
!6658 = !DILocation(line: 1151, column: 7, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6649, file: !6604, line: 1151, column: 6)
!6660 = !DILocation(line: 1152, column: 19, scope: !6659)
!6661 = !DILocation(line: 1152, column: 3, scope: !6659)
!6662 = !DILocation(line: 1153, column: 34, scope: !6649)
!6663 = !DILocation(line: 1153, column: 18, scope: !6649)
!6664 = !DILocation(line: 1153, column: 9, scope: !6649)
!6665 = !DILocation(line: 1153, column: 51, scope: !6649)
!6666 = !DILocation(line: 1153, column: 41, scope: !6649)
!6667 = !DILocation(line: 1153, column: 39, scope: !6649)
!6668 = !DILocation(line: 1153, column: 2, scope: !6649)
!6669 = !DILocation(line: 1154, column: 1, scope: !6649)
!6670 = distinct !DISubprogram(name: "p4d_present", scope: !6604, file: !6604, line: 1097, type: !6671, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6673)
!6671 = !DISubroutineType(types: !6672)
!6672 = !{!38, !5457}
!6673 = !{!6674}
!6674 = !DILocalVariable(name: "p4d", arg: 1, scope: !6670, file: !6604, line: 1097, type: !5457)
!6675 = !DILocation(line: 1097, column: 37, scope: !6670)
!6676 = !DILocation(line: 1099, column: 9, scope: !6670)
!6677 = !DILocation(line: 1099, column: 24, scope: !6670)
!6678 = !DILocation(line: 1099, column: 2, scope: !6670)
!6679 = distinct !DISubprogram(name: "native_set_p4d", scope: !6623, file: !6623, line: 142, type: !6680, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6682)
!6680 = !DISubroutineType(types: !6681)
!6681 = !{null, !5456, !5457}
!6682 = !{!6683, !6684, !6685}
!6683 = !DILocalVariable(name: "p4dp", arg: 1, scope: !6679, file: !6623, line: 142, type: !5456)
!6684 = !DILocalVariable(name: "p4d", arg: 2, scope: !6679, file: !6623, line: 142, type: !5457)
!6685 = !DILocalVariable(name: "pgd", scope: !6679, file: !6623, line: 144, type: !1095)
!6686 = !DILocation(line: 142, column: 42, scope: !6679)
!6687 = !DILocation(line: 142, column: 54, scope: !6679)
!6688 = !DILocation(line: 144, column: 2, scope: !6679)
!6689 = !DILocation(line: 144, column: 8, scope: !6679)
!6690 = !DILocation(line: 146, column: 6, scope: !6679)
!6691 = !DILocation(line: 146, column: 6, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6679, file: !6623, line: 146, column: 6)
!6693 = !DILocation(line: 147, column: 3, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6692, file: !6623, line: 146, column: 72)
!6695 = !DILocation(line: 147, column: 3, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6694, file: !6623, line: 147, column: 3)
!6697 = !DILocation(line: 147, column: 3, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6696, file: !6623, line: 147, column: 3)
!6699 = !DILocation(line: 147, column: 3, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6696, file: !6623, line: 147, column: 3)
!6701 = !DILocation(line: 148, column: 3, scope: !6694)
!6702 = !DILocation(line: 151, column: 8, scope: !6679)
!6703 = !DILocation(line: 151, column: 24, scope: !6679)
!6704 = !DILocation(line: 152, column: 8, scope: !6679)
!6705 = !DILocation(line: 152, column: 36, scope: !6679)
!6706 = !DILocation(line: 153, column: 2, scope: !6679)
!6707 = !DILocation(line: 153, column: 2, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6679, file: !6623, line: 153, column: 2)
!6709 = !DILocation(line: 153, column: 2, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6708, file: !6623, line: 153, column: 2)
!6711 = !DILocation(line: 153, column: 2, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !6708, file: !6623, line: 153, column: 2)
!6713 = !DILocation(line: 154, column: 1, scope: !6679)
!6714 = distinct !DISubprogram(name: "native_make_p4d", scope: !1096, file: !1096, line: 348, type: !6715, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6717)
!6715 = !DISubroutineType(types: !6716)
!6716 = !{!5457, !2015}
!6717 = !{!6718}
!6718 = !DILocalVariable(name: "val", arg: 1, scope: !6714, file: !1096, line: 348, type: !2015)
!6719 = !DILocation(line: 348, column: 46, scope: !6714)
!6720 = !DILocation(line: 350, column: 17, scope: !6714)
!6721 = !DILocation(line: 350, column: 19, scope: !6714)
!6722 = !DILocation(line: 350, column: 2, scope: !6714)
!6723 = distinct !DISubprogram(name: "pud_offset", scope: !6724, file: !6724, line: 129, type: !6725, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6727)
!6724 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!6725 = !DISubroutineType(types: !6726)
!6726 = !{!2010, !5456, !55}
!6727 = !{!6728, !6729}
!6728 = !DILocalVariable(name: "p4d", arg: 1, scope: !6723, file: !6724, line: 129, type: !5456)
!6729 = !DILocalVariable(name: "address", arg: 2, scope: !6723, file: !6724, line: 129, type: !55)
!6730 = !DILocation(line: 129, column: 40, scope: !6723)
!6731 = !DILocation(line: 129, column: 59, scope: !6723)
!6732 = !DILocation(line: 131, column: 22, scope: !6723)
!6733 = !DILocation(line: 131, column: 9, scope: !6723)
!6734 = !DILocation(line: 131, column: 39, scope: !6723)
!6735 = !DILocation(line: 131, column: 29, scope: !6723)
!6736 = !DILocation(line: 131, column: 27, scope: !6723)
!6737 = !DILocation(line: 131, column: 2, scope: !6723)
!6738 = distinct !DISubprogram(name: "pud_present", scope: !6604, file: !6604, line: 1056, type: !6739, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6741)
!6739 = !DISubroutineType(types: !6740)
!6740 = !{!38, !2011}
!6741 = !{!6742}
!6742 = !DILocalVariable(name: "pud", arg: 1, scope: !6738, file: !6604, line: 1056, type: !2011)
!6743 = !DILocation(line: 1056, column: 37, scope: !6738)
!6744 = !DILocation(line: 1058, column: 9, scope: !6738)
!6745 = !DILocation(line: 1058, column: 24, scope: !6738)
!6746 = !DILocation(line: 1058, column: 2, scope: !6738)
!6747 = distinct !DISubprogram(name: "native_set_pud", scope: !6623, file: !6623, line: 117, type: !6748, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6750)
!6748 = !DISubroutineType(types: !6749)
!6749 = !{null, !2010, !2011}
!6750 = !{!6751, !6752}
!6751 = !DILocalVariable(name: "pudp", arg: 1, scope: !6747, file: !6623, line: 117, type: !2010)
!6752 = !DILocalVariable(name: "pud", arg: 2, scope: !6747, file: !6623, line: 117, type: !2011)
!6753 = !DILocation(line: 117, column: 42, scope: !6747)
!6754 = !DILocation(line: 117, column: 54, scope: !6747)
!6755 = !DILocation(line: 119, column: 2, scope: !6747)
!6756 = !DILocation(line: 119, column: 2, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6747, file: !6623, line: 119, column: 2)
!6758 = !DILocation(line: 119, column: 2, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !6757, file: !6623, line: 119, column: 2)
!6760 = !DILocation(line: 119, column: 2, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6757, file: !6623, line: 119, column: 2)
!6762 = !DILocation(line: 120, column: 1, scope: !6747)
!6763 = distinct !DISubprogram(name: "native_make_pud", scope: !1096, file: !1096, line: 374, type: !6764, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6766)
!6764 = !DISubroutineType(types: !6765)
!6765 = !{!2011, !2008}
!6766 = !{!6767}
!6767 = !DILocalVariable(name: "val", arg: 1, scope: !6763, file: !1096, line: 374, type: !2008)
!6768 = !DILocation(line: 374, column: 46, scope: !6763)
!6769 = !DILocation(line: 376, column: 17, scope: !6763)
!6770 = !DILocation(line: 376, column: 19, scope: !6763)
!6771 = !DILocation(line: 376, column: 2, scope: !6763)
!6772 = distinct !DISubprogram(name: "pmd_offset", scope: !6724, file: !6724, line: 121, type: !6773, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6775)
!6773 = !DISubroutineType(types: !6774)
!6774 = !{!2003, !2010, !55}
!6775 = !{!6776, !6777}
!6776 = !DILocalVariable(name: "pud", arg: 1, scope: !6772, file: !6724, line: 121, type: !2010)
!6777 = !DILocalVariable(name: "address", arg: 2, scope: !6772, file: !6724, line: 121, type: !55)
!6778 = !DILocation(line: 121, column: 40, scope: !6772)
!6779 = !DILocation(line: 121, column: 59, scope: !6772)
!6780 = !DILocation(line: 123, column: 22, scope: !6772)
!6781 = !DILocation(line: 123, column: 9, scope: !6772)
!6782 = !DILocation(line: 123, column: 39, scope: !6772)
!6783 = !DILocation(line: 123, column: 29, scope: !6772)
!6784 = !DILocation(line: 123, column: 27, scope: !6772)
!6785 = !DILocation(line: 123, column: 2, scope: !6772)
!6786 = distinct !DISubprogram(name: "pmd_present", scope: !6604, file: !6604, line: 975, type: !6787, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6789)
!6787 = !DISubroutineType(types: !6788)
!6788 = !{!38, !2004}
!6789 = !{!6790}
!6790 = !DILocalVariable(name: "pmd", arg: 1, scope: !6786, file: !6604, line: 975, type: !2004)
!6791 = !DILocation(line: 975, column: 37, scope: !6786)
!6792 = !DILocation(line: 983, column: 9, scope: !6786)
!6793 = !DILocation(line: 983, column: 24, scope: !6786)
!6794 = !DILocation(line: 983, column: 2, scope: !6786)
!6795 = distinct !DISubprogram(name: "native_set_pmd", scope: !6623, file: !6623, line: 81, type: !6796, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6798)
!6796 = !DISubroutineType(types: !6797)
!6797 = !{null, !2003, !2004}
!6798 = !{!6799, !6800}
!6799 = !DILocalVariable(name: "pmdp", arg: 1, scope: !6795, file: !6623, line: 81, type: !2003)
!6800 = !DILocalVariable(name: "pmd", arg: 2, scope: !6795, file: !6623, line: 81, type: !2004)
!6801 = !DILocation(line: 81, column: 42, scope: !6795)
!6802 = !DILocation(line: 81, column: 54, scope: !6795)
!6803 = !DILocation(line: 83, column: 2, scope: !6795)
!6804 = !DILocation(line: 83, column: 2, scope: !6805)
!6805 = distinct !DILexicalBlock(scope: !6795, file: !6623, line: 83, column: 2)
!6806 = !DILocation(line: 83, column: 2, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6805, file: !6623, line: 83, column: 2)
!6808 = !DILocation(line: 83, column: 2, scope: !6809)
!6809 = distinct !DILexicalBlock(scope: !6805, file: !6623, line: 83, column: 2)
!6810 = !DILocation(line: 84, column: 1, scope: !6795)
!6811 = distinct !DISubprogram(name: "native_make_pmd", scope: !1096, file: !1096, line: 398, type: !6812, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6814)
!6812 = !DISubroutineType(types: !6813)
!6813 = !{!2004, !2008}
!6814 = !{!6815}
!6815 = !DILocalVariable(name: "val", arg: 1, scope: !6811, file: !1096, line: 398, type: !2008)
!6816 = !DILocation(line: 398, column: 46, scope: !6811)
!6817 = !DILocation(line: 400, column: 17, scope: !6811)
!6818 = !DILocation(line: 400, column: 26, scope: !6811)
!6819 = !DILocation(line: 400, column: 2, scope: !6811)
!6820 = distinct !DISubprogram(name: "pte_offset_kernel", scope: !6724, file: !6724, line: 92, type: !6821, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6823)
!6821 = !DISubroutineType(types: !6822)
!6822 = !{!2029, !2003, !55}
!6823 = !{!6824, !6825}
!6824 = !DILocalVariable(name: "pmd", arg: 1, scope: !6820, file: !6724, line: 92, type: !2003)
!6825 = !DILocalVariable(name: "address", arg: 2, scope: !6820, file: !6724, line: 92, type: !55)
!6826 = !DILocation(line: 92, column: 47, scope: !6820)
!6827 = !DILocation(line: 92, column: 66, scope: !6820)
!6828 = !DILocation(line: 94, column: 34, scope: !6820)
!6829 = !DILocation(line: 94, column: 18, scope: !6820)
!6830 = !DILocation(line: 94, column: 9, scope: !6820)
!6831 = !DILocation(line: 94, column: 51, scope: !6820)
!6832 = !DILocation(line: 94, column: 41, scope: !6820)
!6833 = !DILocation(line: 94, column: 39, scope: !6820)
!6834 = !DILocation(line: 94, column: 2, scope: !6820)
!6835 = distinct !DISubprogram(name: "native_set_pte", scope: !6623, file: !6623, line: 65, type: !6836, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6838)
!6836 = !DISubroutineType(types: !6837)
!6837 = !{null, !2029, !2020}
!6838 = !{!6839, !6840}
!6839 = !DILocalVariable(name: "ptep", arg: 1, scope: !6835, file: !6623, line: 65, type: !2029)
!6840 = !DILocalVariable(name: "pte", arg: 2, scope: !6835, file: !6623, line: 65, type: !2020)
!6841 = !DILocation(line: 65, column: 42, scope: !6835)
!6842 = !DILocation(line: 65, column: 54, scope: !6835)
!6843 = !DILocation(line: 67, column: 2, scope: !6835)
!6844 = !DILocation(line: 67, column: 2, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6835, file: !6623, line: 67, column: 2)
!6846 = !DILocation(line: 67, column: 2, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6845, file: !6623, line: 67, column: 2)
!6848 = !DILocation(line: 67, column: 2, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6845, file: !6623, line: 67, column: 2)
!6850 = !DILocation(line: 68, column: 1, scope: !6835)
!6851 = distinct !DISubprogram(name: "pfn_pte", scope: !6604, file: !6604, line: 747, type: !6852, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6854)
!6852 = !DISubroutineType(types: !6853)
!6853 = !{!2020, !55, !1934}
!6854 = !{!6855, !6856, !6857}
!6855 = !DILocalVariable(name: "page_nr", arg: 1, scope: !6851, file: !6604, line: 747, type: !55)
!6856 = !DILocalVariable(name: "pgprot", arg: 2, scope: !6851, file: !6604, line: 747, type: !1934)
!6857 = !DILocalVariable(name: "pfn", scope: !6851, file: !6604, line: 749, type: !2956)
!6858 = !DILocation(line: 747, column: 43, scope: !6851)
!6859 = !DILocation(line: 747, column: 61, scope: !6851)
!6860 = !DILocation(line: 749, column: 2, scope: !6851)
!6861 = !DILocation(line: 749, column: 14, scope: !6851)
!6862 = !DILocation(line: 749, column: 33, scope: !6851)
!6863 = !DILocation(line: 749, column: 41, scope: !6851)
!6864 = !DILocation(line: 750, column: 23, scope: !6851)
!6865 = !DILocation(line: 750, column: 9, scope: !6851)
!6866 = !DILocation(line: 750, column: 6, scope: !6851)
!6867 = !DILocation(line: 751, column: 6, scope: !6851)
!6868 = !DILocation(line: 752, column: 9, scope: !6851)
!6869 = !DILocation(line: 753, column: 1, scope: !6851)
!6870 = distinct !DISubprogram(name: "_static_cpu_has", scope: !6871, file: !6871, line: 173, type: !6872, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6874)
!6871 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!6872 = !DISubroutineType(types: !6873)
!6873 = !{!1287, !109}
!6874 = !{!6875, !6876, !6877}
!6875 = !DILocalVariable(name: "bit", arg: 1, scope: !6870, file: !6871, line: 173, type: !109)
!6876 = !DILabel(scope: !6870, name: "t_yes", file: !6871, line: 187)
!6877 = !DILabel(scope: !6870, name: "t_no", file: !6871, line: 189)
!6878 = !DILocation(line: 173, column: 49, scope: !6870)
!6879 = !DILocation(line: 183, column: 24, scope: !6870)
!6880 = !DILocation(line: 184, column: 30, scope: !6870)
!6881 = !DILocation(line: 184, column: 34, scope: !6870)
!6882 = !DILocation(line: 184, column: 26, scope: !6870)
!6883 = !DILocation(line: 185, column: 70, scope: !6870)
!6884 = !DILocation(line: 185, column: 74, scope: !6870)
!6885 = !DILocation(line: 185, column: 25, scope: !6870)
!6886 = !DILocation(line: 175, column: 2, scope: !6870)
!6887 = !{i64 2149649901, i64 2149649934, i64 2149649940, i64 2149649956, i64 2149649975, i64 2149650006, i64 2149650959, i64 2149649548, i64 2149650965, i64 2149651013, i64 2149651077, i64 2149651141, i64 2149651198, i64 2149651405, i64 2149651453, i64 2149651517, i64 2149651581, i64 2149651638, i64 2149649666, i64 2149649691, i64 2149651848, i64 2149651976, i64 2149651909, i64 2149651990, i64 2149652004, i64 2149652120, i64 2149652065, i64 2149652134, i64 2149649825, i64 1128738, i64 1128778, i64 1128787, i64 1128837, i64 1128858, i64 1128878}
!6888 = !DILocation(line: 187, column: 1, scope: !6870)
!6889 = !DILocation(line: 188, column: 2, scope: !6870)
!6890 = !DILocation(line: 189, column: 1, scope: !6870)
!6891 = !DILocation(line: 190, column: 2, scope: !6870)
!6892 = !DILocation(line: 191, column: 1, scope: !6870)
!6893 = distinct !DISubprogram(name: "pgd_flags", scope: !1096, file: !1096, line: 340, type: !6894, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6896)
!6894 = !DISubroutineType(types: !6895)
!6895 = !{!1100, !1095}
!6896 = !{!6897}
!6897 = !DILocalVariable(name: "pgd", arg: 1, scope: !6893, file: !1096, line: 340, type: !1095)
!6898 = !DILocation(line: 340, column: 40, scope: !6893)
!6899 = !DILocation(line: 342, column: 9, scope: !6893)
!6900 = !DILocation(line: 342, column: 29, scope: !6893)
!6901 = !DILocation(line: 342, column: 2, scope: !6893)
!6902 = distinct !DISubprogram(name: "native_pgd_val", scope: !1096, file: !1096, line: 335, type: !6894, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6903)
!6903 = !{!6904}
!6904 = !DILocalVariable(name: "pgd", arg: 1, scope: !6902, file: !1096, line: 335, type: !1095)
!6905 = !DILocation(line: 335, column: 45, scope: !6902)
!6906 = !DILocation(line: 337, column: 13, scope: !6902)
!6907 = !DILocation(line: 337, column: 17, scope: !6902)
!6908 = !DILocation(line: 337, column: 2, scope: !6902)
!6909 = distinct !DISubprogram(name: "pti_set_user_pgtbl", scope: !6604, file: !6604, line: 903, type: !6910, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6912)
!6910 = !DISubroutineType(types: !6911)
!6911 = !{!1095, !1094, !1095}
!6912 = !{!6913, !6914}
!6913 = !DILocalVariable(name: "pgdp", arg: 1, scope: !6909, file: !6604, line: 903, type: !1094)
!6914 = !DILocalVariable(name: "pgd", arg: 2, scope: !6909, file: !6604, line: 903, type: !1095)
!6915 = !DILocation(line: 903, column: 47, scope: !6909)
!6916 = !DILocation(line: 903, column: 59, scope: !6909)
!6917 = !DILocation(line: 905, column: 6, scope: !6909)
!6918 = !DILocation(line: 905, column: 7, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6909, file: !6604, line: 905, column: 6)
!6920 = !DILocation(line: 906, column: 10, scope: !6919)
!6921 = !DILocation(line: 906, column: 3, scope: !6919)
!6922 = !DILocation(line: 907, column: 30, scope: !6909)
!6923 = !DILocation(line: 907, column: 9, scope: !6909)
!6924 = !DILocation(line: 907, column: 2, scope: !6909)
!6925 = !DILocation(line: 908, column: 1, scope: !6909)
!6926 = !DISubprogram(name: "__pti_set_user_pgtbl", scope: !6604, file: !6604, line: 896, type: !6910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6927 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !6604, file: !6604, line: 1137, type: !6928, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6930)
!6928 = !DISubroutineType(types: !6929)
!6929 = !{!55, !1095}
!6930 = !{!6931}
!6931 = !DILocalVariable(name: "pgd", arg: 1, scope: !6927, file: !6604, line: 1137, type: !1095)
!6932 = !DILocation(line: 1137, column: 50, scope: !6927)
!6933 = !DILocation(line: 1139, column: 24, scope: !6927)
!6934 = !DILocation(line: 1139, column: 9, scope: !6927)
!6935 = !DILocation(line: 1139, column: 2, scope: !6927)
!6936 = distinct !DISubprogram(name: "p4d_index", scope: !6604, file: !6604, line: 1124, type: !5899, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6937)
!6937 = !{!6938}
!6938 = !DILocalVariable(name: "address", arg: 1, scope: !6936, file: !6604, line: 1124, type: !55)
!6939 = !DILocation(line: 1124, column: 53, scope: !6936)
!6940 = !DILocation(line: 1126, column: 10, scope: !6936)
!6941 = !DILocation(line: 1126, column: 18, scope: !6936)
!6942 = !DILocation(line: 1126, column: 35, scope: !6936)
!6943 = !DILocation(line: 1126, column: 48, scope: !6936)
!6944 = !DILocation(line: 1126, column: 34, scope: !6936)
!6945 = !DILocation(line: 1126, column: 32, scope: !6936)
!6946 = !DILocation(line: 1126, column: 2, scope: !6936)
!6947 = distinct !DISubprogram(name: "p4d_flags", scope: !1096, file: !1096, line: 432, type: !6948, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6950)
!6948 = !DISubroutineType(types: !6949)
!6949 = !{!5461, !5457}
!6950 = !{!6951}
!6951 = !DILocalVariable(name: "p4d", arg: 1, scope: !6947, file: !1096, line: 432, type: !5457)
!6952 = !DILocation(line: 432, column: 40, scope: !6947)
!6953 = !DILocation(line: 434, column: 9, scope: !6947)
!6954 = !DILocation(line: 434, column: 31, scope: !6947)
!6955 = !DILocation(line: 434, column: 29, scope: !6947)
!6956 = !DILocation(line: 434, column: 2, scope: !6947)
!6957 = distinct !DISubprogram(name: "native_p4d_val", scope: !1096, file: !1096, line: 353, type: !6948, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6958)
!6958 = !{!6959}
!6959 = !DILocalVariable(name: "p4d", arg: 1, scope: !6957, file: !1096, line: 353, type: !5457)
!6960 = !DILocation(line: 353, column: 45, scope: !6957)
!6961 = !DILocation(line: 355, column: 13, scope: !6957)
!6962 = !DILocation(line: 355, column: 2, scope: !6957)
!6963 = distinct !DISubprogram(name: "p4d_flags_mask", scope: !1096, file: !1096, line: 427, type: !6948, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6964)
!6964 = !{!6965}
!6965 = !DILocalVariable(name: "p4d", arg: 1, scope: !6963, file: !1096, line: 427, type: !5457)
!6966 = !DILocation(line: 427, column: 45, scope: !6963)
!6967 = !DILocation(line: 429, column: 10, scope: !6963)
!6968 = !DILocation(line: 429, column: 9, scope: !6963)
!6969 = !DILocation(line: 429, column: 2, scope: !6963)
!6970 = distinct !DISubprogram(name: "p4d_pfn_mask", scope: !1096, file: !1096, line: 421, type: !6948, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6971)
!6971 = !{!6972}
!6972 = !DILocalVariable(name: "p4d", arg: 1, scope: !6970, file: !1096, line: 421, type: !5457)
!6973 = !DILocation(line: 421, column: 43, scope: !6970)
!6974 = !DILocation(line: 424, column: 2, scope: !6970)
!6975 = distinct !DISubprogram(name: "p4d_pgtable", scope: !6604, file: !6604, line: 1102, type: !6976, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6978)
!6976 = !DISubroutineType(types: !6977)
!6977 = !{!2010, !5457}
!6978 = !{!6979}
!6979 = !DILocalVariable(name: "p4d", arg: 1, scope: !6975, file: !6604, line: 1102, type: !5457)
!6980 = !DILocation(line: 1102, column: 40, scope: !6975)
!6981 = !DILocation(line: 1104, column: 18, scope: !6975)
!6982 = !DILocation(line: 1104, column: 2, scope: !6975)
!6983 = distinct !DISubprogram(name: "pud_index", scope: !6724, file: !6724, line: 79, type: !5899, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6984)
!6984 = !{!6985}
!6985 = !DILocalVariable(name: "address", arg: 1, scope: !6983, file: !6724, line: 79, type: !55)
!6986 = !DILocation(line: 79, column: 53, scope: !6983)
!6987 = !DILocation(line: 81, column: 10, scope: !6983)
!6988 = !DILocation(line: 81, column: 18, scope: !6983)
!6989 = !DILocation(line: 81, column: 32, scope: !6983)
!6990 = !DILocation(line: 81, column: 2, scope: !6983)
!6991 = distinct !DISubprogram(name: "pud_flags", scope: !1096, file: !1096, line: 450, type: !6992, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !6994)
!6992 = !DISubroutineType(types: !6993)
!6993 = !{!2015, !2011}
!6994 = !{!6995}
!6995 = !DILocalVariable(name: "pud", arg: 1, scope: !6991, file: !1096, line: 450, type: !2011)
!6996 = !DILocation(line: 450, column: 40, scope: !6991)
!6997 = !DILocation(line: 452, column: 9, scope: !6991)
!6998 = !DILocation(line: 452, column: 31, scope: !6991)
!6999 = !DILocation(line: 452, column: 29, scope: !6991)
!7000 = !DILocation(line: 452, column: 2, scope: !6991)
!7001 = distinct !DISubprogram(name: "native_pud_val", scope: !1096, file: !1096, line: 379, type: !6992, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7002)
!7002 = !{!7003}
!7003 = !DILocalVariable(name: "pud", arg: 1, scope: !7001, file: !1096, line: 379, type: !2011)
!7004 = !DILocation(line: 379, column: 45, scope: !7001)
!7005 = !DILocation(line: 381, column: 13, scope: !7001)
!7006 = !DILocation(line: 381, column: 2, scope: !7001)
!7007 = distinct !DISubprogram(name: "pud_flags_mask", scope: !1096, file: !1096, line: 445, type: !6992, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7008)
!7008 = !{!7009}
!7009 = !DILocalVariable(name: "pud", arg: 1, scope: !7007, file: !1096, line: 445, type: !2011)
!7010 = !DILocation(line: 445, column: 45, scope: !7007)
!7011 = !DILocation(line: 447, column: 10, scope: !7007)
!7012 = !DILocation(line: 447, column: 9, scope: !7007)
!7013 = !DILocation(line: 447, column: 2, scope: !7007)
!7014 = distinct !DISubprogram(name: "pud_pfn_mask", scope: !1096, file: !1096, line: 437, type: !6992, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7015)
!7015 = !{!7016}
!7016 = !DILocalVariable(name: "pud", arg: 1, scope: !7014, file: !1096, line: 437, type: !2011)
!7017 = !DILocation(line: 437, column: 43, scope: !7014)
!7018 = !DILocation(line: 439, column: 6, scope: !7019)
!7019 = distinct !DILexicalBlock(scope: !7014, file: !1096, line: 439, column: 6)
!7020 = !DILocation(line: 439, column: 26, scope: !7019)
!7021 = !DILocation(line: 439, column: 6, scope: !7014)
!7022 = !DILocation(line: 440, column: 3, scope: !7019)
!7023 = !DILocation(line: 442, column: 3, scope: !7019)
!7024 = !DILocation(line: 443, column: 1, scope: !7014)
!7025 = distinct !DISubprogram(name: "pud_pgtable", scope: !6604, file: !6604, line: 1061, type: !7026, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7028)
!7026 = !DISubroutineType(types: !7027)
!7027 = !{!2003, !2011}
!7028 = !{!7029}
!7029 = !DILocalVariable(name: "pud", arg: 1, scope: !7025, file: !6604, line: 1061, type: !2011)
!7030 = !DILocation(line: 1061, column: 40, scope: !7025)
!7031 = !DILocation(line: 1063, column: 18, scope: !7025)
!7032 = !DILocation(line: 1063, column: 2, scope: !7025)
!7033 = distinct !DISubprogram(name: "pmd_index", scope: !6724, file: !6724, line: 71, type: !5899, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7034)
!7034 = !{!7035}
!7035 = !DILocalVariable(name: "address", arg: 1, scope: !7033, file: !6724, line: 71, type: !55)
!7036 = !DILocation(line: 71, column: 53, scope: !7033)
!7037 = !DILocation(line: 73, column: 10, scope: !7033)
!7038 = !DILocation(line: 73, column: 18, scope: !7033)
!7039 = !DILocation(line: 73, column: 32, scope: !7033)
!7040 = !DILocation(line: 73, column: 2, scope: !7033)
!7041 = distinct !DISubprogram(name: "pmd_flags", scope: !1096, file: !1096, line: 468, type: !7042, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7044)
!7042 = !DISubroutineType(types: !7043)
!7043 = !{!2008, !2004}
!7044 = !{!7045}
!7045 = !DILocalVariable(name: "pmd", arg: 1, scope: !7041, file: !1096, line: 468, type: !2004)
!7046 = !DILocation(line: 468, column: 40, scope: !7041)
!7047 = !DILocation(line: 470, column: 9, scope: !7041)
!7048 = !DILocation(line: 470, column: 31, scope: !7041)
!7049 = !DILocation(line: 470, column: 29, scope: !7041)
!7050 = !DILocation(line: 470, column: 2, scope: !7041)
!7051 = distinct !DISubprogram(name: "native_pmd_val", scope: !1096, file: !1096, line: 403, type: !7042, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7052)
!7052 = !{!7053}
!7053 = !DILocalVariable(name: "pmd", arg: 1, scope: !7051, file: !1096, line: 403, type: !2004)
!7054 = !DILocation(line: 403, column: 45, scope: !7051)
!7055 = !DILocation(line: 405, column: 13, scope: !7051)
!7056 = !DILocation(line: 405, column: 2, scope: !7051)
!7057 = distinct !DISubprogram(name: "pmd_flags_mask", scope: !1096, file: !1096, line: 463, type: !7042, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7058)
!7058 = !{!7059}
!7059 = !DILocalVariable(name: "pmd", arg: 1, scope: !7057, file: !1096, line: 463, type: !2004)
!7060 = !DILocation(line: 463, column: 45, scope: !7057)
!7061 = !DILocation(line: 465, column: 10, scope: !7057)
!7062 = !DILocation(line: 465, column: 9, scope: !7057)
!7063 = !DILocation(line: 465, column: 2, scope: !7057)
!7064 = distinct !DISubprogram(name: "pmd_pfn_mask", scope: !1096, file: !1096, line: 455, type: !7042, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7065)
!7065 = !{!7066}
!7066 = !DILocalVariable(name: "pmd", arg: 1, scope: !7064, file: !1096, line: 455, type: !2004)
!7067 = !DILocation(line: 455, column: 43, scope: !7064)
!7068 = !DILocation(line: 457, column: 6, scope: !7069)
!7069 = distinct !DILexicalBlock(scope: !7064, file: !1096, line: 457, column: 6)
!7070 = !DILocation(line: 457, column: 26, scope: !7069)
!7071 = !DILocation(line: 457, column: 6, scope: !7064)
!7072 = !DILocation(line: 458, column: 3, scope: !7069)
!7073 = !DILocation(line: 460, column: 3, scope: !7069)
!7074 = !DILocation(line: 461, column: 1, scope: !7064)
!7075 = distinct !DISubprogram(name: "pmd_page_vaddr", scope: !6604, file: !6604, line: 1012, type: !7076, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7078)
!7076 = !DISubroutineType(types: !7077)
!7077 = !{!55, !2004}
!7078 = !{!7079}
!7079 = !DILocalVariable(name: "pmd", arg: 1, scope: !7075, file: !6604, line: 1012, type: !2004)
!7080 = !DILocation(line: 1012, column: 50, scope: !7075)
!7081 = !DILocation(line: 1014, column: 24, scope: !7075)
!7082 = !DILocation(line: 1014, column: 9, scope: !7075)
!7083 = !DILocation(line: 1014, column: 2, scope: !7075)
!7084 = distinct !DISubprogram(name: "pte_index", scope: !6724, file: !6724, line: 65, type: !5899, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7085)
!7085 = !{!7086}
!7086 = !DILocalVariable(name: "address", arg: 1, scope: !7084, file: !6724, line: 65, type: !55)
!7087 = !DILocation(line: 65, column: 53, scope: !7084)
!7088 = !DILocation(line: 67, column: 10, scope: !7084)
!7089 = !DILocation(line: 67, column: 18, scope: !7084)
!7090 = !DILocation(line: 67, column: 33, scope: !7084)
!7091 = !DILocation(line: 67, column: 2, scope: !7084)
!7092 = distinct !DISubprogram(name: "protnone_mask", scope: !7093, file: !7093, line: 22, type: !7094, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7096)
!7093 = !DIFile(filename: "./arch/x86/include/asm/pgtable-invert.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef882e7cb6c7c8e916706b4e150780ec")
!7094 = !DISubroutineType(types: !7095)
!7095 = !{!398, !398}
!7096 = !{!7097}
!7097 = !DILocalVariable(name: "val", arg: 1, scope: !7092, file: !7093, line: 22, type: !398)
!7098 = !DILocation(line: 22, column: 37, scope: !7092)
!7099 = !DILocation(line: 24, column: 28, scope: !7092)
!7100 = !DILocation(line: 24, column: 9, scope: !7092)
!7101 = !DILocation(line: 24, column: 2, scope: !7092)
!7102 = distinct !DISubprogram(name: "native_make_pte", scope: !1096, file: !1096, line: 473, type: !7103, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7105)
!7103 = !DISubroutineType(types: !7104)
!7104 = !{!2020, !2024}
!7105 = !{!7106}
!7106 = !DILocalVariable(name: "val", arg: 1, scope: !7102, file: !1096, line: 473, type: !2024)
!7107 = !DILocation(line: 473, column: 46, scope: !7102)
!7108 = !DILocation(line: 475, column: 17, scope: !7102)
!7109 = !DILocation(line: 475, column: 26, scope: !7102)
!7110 = !DILocation(line: 475, column: 2, scope: !7102)
!7111 = distinct !DISubprogram(name: "check_pgprot", scope: !6604, file: !6604, line: 730, type: !7112, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7114)
!7112 = !DISubroutineType(types: !7113)
!7113 = !{!1938, !1934}
!7114 = !{!7115, !7116}
!7115 = !DILocalVariable(name: "pgprot", arg: 1, scope: !7111, file: !6604, line: 730, type: !1934)
!7116 = !DILocalVariable(name: "massaged_val", scope: !7111, file: !6604, line: 732, type: !1938)
!7117 = !DILocation(line: 730, column: 49, scope: !7111)
!7118 = !DILocation(line: 732, column: 2, scope: !7111)
!7119 = !DILocation(line: 732, column: 14, scope: !7111)
!7120 = !DILocation(line: 732, column: 29, scope: !7111)
!7121 = !DILocation(line: 744, column: 9, scope: !7111)
!7122 = !DILocation(line: 745, column: 1, scope: !7111)
!7123 = !DILocation(line: 744, column: 2, scope: !7111)
!7124 = distinct !DISubprogram(name: "__pte_needs_invert", scope: !7093, file: !7093, line: 16, type: !7125, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7127)
!7125 = !DISubroutineType(types: !7126)
!7126 = !{!1287, !398}
!7127 = !{!7128}
!7128 = !DILocalVariable(name: "val", arg: 1, scope: !7124, file: !7093, line: 16, type: !398)
!7129 = !DILocation(line: 16, column: 43, scope: !7124)
!7130 = !DILocation(line: 18, column: 9, scope: !7124)
!7131 = !DILocation(line: 18, column: 13, scope: !7124)
!7132 = !DILocation(line: 18, column: 18, scope: !7124)
!7133 = !DILocation(line: 18, column: 22, scope: !7124)
!7134 = !DILocation(line: 18, column: 16, scope: !7124)
!7135 = !DILocation(line: 0, scope: !7124)
!7136 = !DILocation(line: 18, column: 2, scope: !7124)
!7137 = distinct !DISubprogram(name: "massage_pgprot", scope: !6604, file: !6604, line: 720, type: !7112, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7138)
!7138 = !{!7139, !7140}
!7139 = !DILocalVariable(name: "pgprot", arg: 1, scope: !7137, file: !6604, line: 720, type: !1934)
!7140 = !DILocalVariable(name: "protval", scope: !7137, file: !6604, line: 722, type: !1938)
!7141 = !DILocation(line: 720, column: 51, scope: !7137)
!7142 = !DILocation(line: 722, column: 2, scope: !7137)
!7143 = !DILocation(line: 722, column: 14, scope: !7137)
!7144 = !DILocation(line: 722, column: 24, scope: !7137)
!7145 = !DILocation(line: 724, column: 6, scope: !7146)
!7146 = distinct !DILexicalBlock(scope: !7137, file: !6604, line: 724, column: 6)
!7147 = !DILocation(line: 724, column: 14, scope: !7146)
!7148 = !DILocation(line: 724, column: 6, scope: !7137)
!7149 = !DILocation(line: 725, column: 14, scope: !7146)
!7150 = !DILocation(line: 725, column: 11, scope: !7146)
!7151 = !DILocation(line: 725, column: 3, scope: !7146)
!7152 = !DILocation(line: 727, column: 9, scope: !7137)
!7153 = !DILocation(line: 728, column: 1, scope: !7137)
!7154 = !DILocation(line: 727, column: 2, scope: !7137)
!7155 = !DISubprogram(name: "free_pages", scope: !6619, file: !6619, line: 303, type: !7156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7156 = !DISubroutineType(types: !7157)
!7157 = !{null, !55, !17}
!7158 = distinct !DISubprogram(name: "native_irq_disable", scope: !5854, file: !5854, line: 35, type: !2258, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!7159 = !DILocation(line: 37, column: 2, scope: !7158)
!7160 = !{i64 2098116}
!7161 = !DILocation(line: 38, column: 1, scope: !7158)
!7162 = distinct !DISubprogram(name: "native_set_debugreg", scope: !9, file: !9, line: 63, type: !7163, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7165)
!7163 = !DISubroutineType(types: !7164)
!7164 = !{null, !38, !55}
!7165 = !{!7166, !7167}
!7166 = !DILocalVariable(name: "regno", arg: 1, scope: !7162, file: !9, line: 63, type: !38)
!7167 = !DILocalVariable(name: "value", arg: 2, scope: !7162, file: !9, line: 63, type: !55)
!7168 = !DILocation(line: 63, column: 53, scope: !7162)
!7169 = !DILocation(line: 63, column: 74, scope: !7162)
!7170 = !DILocation(line: 65, column: 10, scope: !7162)
!7171 = !DILocation(line: 65, column: 2, scope: !7162)
!7172 = !DILocation(line: 67, column: 30, scope: !7173)
!7173 = distinct !DILexicalBlock(scope: !7162, file: !9, line: 65, column: 17)
!7174 = !DILocation(line: 67, column: 3, scope: !7173)
!7175 = !{i64 8645011}
!7176 = !DILocation(line: 68, column: 3, scope: !7173)
!7177 = !DILocation(line: 70, column: 30, scope: !7173)
!7178 = !DILocation(line: 70, column: 3, scope: !7173)
!7179 = !{i64 8645067}
!7180 = !DILocation(line: 71, column: 3, scope: !7173)
!7181 = !DILocation(line: 73, column: 30, scope: !7173)
!7182 = !DILocation(line: 73, column: 3, scope: !7173)
!7183 = !{i64 8645123}
!7184 = !DILocation(line: 74, column: 3, scope: !7173)
!7185 = !DILocation(line: 76, column: 30, scope: !7173)
!7186 = !DILocation(line: 76, column: 3, scope: !7173)
!7187 = !{i64 8645179}
!7188 = !DILocation(line: 77, column: 3, scope: !7173)
!7189 = !DILocation(line: 79, column: 30, scope: !7173)
!7190 = !DILocation(line: 79, column: 3, scope: !7173)
!7191 = !{i64 8645235}
!7192 = !DILocation(line: 80, column: 3, scope: !7173)
!7193 = !DILocation(line: 91, column: 39, scope: !7173)
!7194 = !DILocation(line: 91, column: 3, scope: !7173)
!7195 = !{i64 8645603}
!7196 = !DILocation(line: 92, column: 3, scope: !7173)
!7197 = !DILocation(line: 94, column: 3, scope: !7173)
!7198 = !DILocation(line: 94, column: 3, scope: !7199)
!7199 = distinct !DILexicalBlock(scope: !7173, file: !9, line: 94, column: 3)
!7200 = !DILocation(line: 94, column: 3, scope: !7201)
!7201 = distinct !DILexicalBlock(scope: !7199, file: !9, line: 94, column: 3)
!7202 = !DILocation(line: 94, column: 3, scope: !7203)
!7203 = distinct !DILexicalBlock(scope: !7199, file: !9, line: 94, column: 3)
!7204 = !{i64 2156135989, i64 2156136018, i64 2156136064, i64 2156136122, i64 2156136176, i64 2156136230, i64 2156136285, i64 2156136316}
!7205 = !DILocation(line: 95, column: 2, scope: !7173)
!7206 = !DILocation(line: 96, column: 1, scope: !7162)
!7207 = distinct !DISubprogram(name: "native_load_idt", scope: !5927, file: !5927, line: 213, type: !7208, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7211)
!7208 = !DISubroutineType(types: !7209)
!7209 = !{null, !7210}
!7210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5930, size: 64)
!7211 = !{!7212}
!7212 = !DILocalVariable(name: "dtr", arg: 1, scope: !7207, file: !5927, line: 213, type: !7210)
!7213 = !DILocation(line: 213, column: 68, scope: !7207)
!7214 = !DILocation(line: 215, column: 32, scope: !7207)
!7215 = !DILocation(line: 215, column: 2, scope: !7207)
!7216 = !{i64 8365789}
!7217 = !DILocation(line: 216, column: 1, scope: !7207)
!7218 = distinct !DISubprogram(name: "native_load_gdt", scope: !5927, file: !5927, line: 208, type: !7208, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7219)
!7219 = !{!7220}
!7220 = !DILocalVariable(name: "dtr", arg: 1, scope: !7218, file: !5927, line: 208, type: !7210)
!7221 = !DILocation(line: 208, column: 59, scope: !7218)
!7222 = !DILocation(line: 210, column: 32, scope: !7218)
!7223 = !DILocation(line: 210, column: 2, scope: !7218)
!7224 = !{i64 8365674}
!7225 = !DILocation(line: 211, column: 1, scope: !7218)
!7226 = distinct !DISubprogram(name: "kexec_mark_range", scope: !2, file: !2, line: 553, type: !7227, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !7229)
!7227 = !DISubroutineType(types: !7228)
!7228 = !{!38, !55, !55, !1287}
!7229 = !{!7230, !7231, !7232, !7233, !7234}
!7230 = !DILocalVariable(name: "start", arg: 1, scope: !7226, file: !2, line: 553, type: !55)
!7231 = !DILocalVariable(name: "end", arg: 2, scope: !7226, file: !2, line: 553, type: !55)
!7232 = !DILocalVariable(name: "protect", arg: 3, scope: !7226, file: !2, line: 553, type: !1287)
!7233 = !DILocalVariable(name: "page", scope: !7226, file: !2, line: 555, type: !299)
!7234 = !DILocalVariable(name: "nr_pages", scope: !7226, file: !2, line: 556, type: !17)
!7235 = !DILocation(line: 553, column: 32, scope: !7226)
!7236 = !DILocation(line: 553, column: 53, scope: !7226)
!7237 = !DILocation(line: 553, column: 63, scope: !7226)
!7238 = !DILocation(line: 555, column: 2, scope: !7226)
!7239 = !DILocation(line: 555, column: 15, scope: !7226)
!7240 = !DILocation(line: 556, column: 2, scope: !7226)
!7241 = !DILocation(line: 556, column: 15, scope: !7226)
!7242 = !DILocation(line: 562, column: 7, scope: !7243)
!7243 = distinct !DILexicalBlock(scope: !7226, file: !2, line: 562, column: 6)
!7244 = !DILocation(line: 562, column: 11, scope: !7243)
!7245 = !DILocation(line: 562, column: 14, scope: !7243)
!7246 = !DILocation(line: 562, column: 22, scope: !7243)
!7247 = !DILocation(line: 562, column: 20, scope: !7243)
!7248 = !DILocation(line: 562, column: 6, scope: !7226)
!7249 = !DILocation(line: 563, column: 3, scope: !7243)
!7250 = !DILocation(line: 565, column: 9, scope: !7226)
!7251 = !DILocation(line: 565, column: 7, scope: !7226)
!7252 = !DILocation(line: 566, column: 14, scope: !7226)
!7253 = !DILocation(line: 566, column: 18, scope: !7226)
!7254 = !DILocation(line: 566, column: 36, scope: !7226)
!7255 = !DILocation(line: 566, column: 42, scope: !7226)
!7256 = !DILocation(line: 566, column: 33, scope: !7226)
!7257 = !DILocation(line: 566, column: 57, scope: !7226)
!7258 = !DILocation(line: 566, column: 13, scope: !7226)
!7259 = !DILocation(line: 566, column: 11, scope: !7226)
!7260 = !DILocation(line: 567, column: 6, scope: !7261)
!7261 = distinct !DILexicalBlock(scope: !7226, file: !2, line: 567, column: 6)
!7262 = !DILocation(line: 567, column: 6, scope: !7226)
!7263 = !DILocation(line: 568, column: 23, scope: !7261)
!7264 = !DILocation(line: 568, column: 29, scope: !7261)
!7265 = !DILocation(line: 568, column: 10, scope: !7261)
!7266 = !DILocation(line: 568, column: 3, scope: !7261)
!7267 = !DILocation(line: 570, column: 23, scope: !7261)
!7268 = !DILocation(line: 570, column: 29, scope: !7261)
!7269 = !DILocation(line: 570, column: 10, scope: !7261)
!7270 = !DILocation(line: 570, column: 3, scope: !7261)
!7271 = !DILocation(line: 571, column: 1, scope: !7226)
!7272 = !DISubprogram(name: "set_pages_ro", scope: !6005, file: !6005, line: 83, type: !7273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7273 = !DISubroutineType(types: !7274)
!7274 = !{!38, !299, !38}
!7275 = !DISubprogram(name: "set_pages_rw", scope: !6005, file: !6005, line: 84, type: !7273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
