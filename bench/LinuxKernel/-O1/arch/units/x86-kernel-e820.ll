; ModuleID = 'arch/x86/kernel/e820.c'
source_filename = "arch/x86/kernel/e820.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_mem_start: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_mem_start ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_e820__mapped_raw_any: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad e820__mapped_raw_any ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_e820__mapped_any: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad e820__mapped_any ; .previous"
module asm ".section\09\22.initcall1.init..kmod_e820__351_792_e820__register_nvs_regions\22, \22a\22\09\09"
module asm "__initcall__kmod_e820__351_792_e820__register_nvs_regions1:\09\09\09"
module asm ".long\09__initstub__kmod_e820__351_792_e820__register_nvs_regions1 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.e820_table = type { i32, [320 x %struct.e820_entry] }
%struct.e820_entry = type <{ i64, i64, i32 }>
%struct.change_member = type { ptr, i64 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
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
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.x86_init_ops = type { %struct.x86_init_resources, %struct.x86_init_mpparse, %struct.x86_init_irqs, %struct.x86_init_oem, %struct.x86_init_paging, %struct.x86_init_timers, %struct.x86_init_iommu, %struct.x86_init_pci, %struct.x86_hyper_init, %struct.x86_init_acpi }
%struct.x86_init_resources = type { ptr, ptr, ptr, ptr }
%struct.x86_init_mpparse = type { ptr, ptr, ptr }
%struct.x86_init_irqs = type { ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_oem = type { ptr, ptr }
%struct.x86_init_paging = type { ptr }
%struct.x86_init_timers = type { ptr, ptr, ptr }
%struct.x86_init_iommu = type { ptr }
%struct.x86_init_pci = type { ptr, ptr, ptr, ptr }
%struct.x86_hyper_init = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_acpi = type { ptr, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.16, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.18, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.16 = type { i32 }
%union.anon.18 = type { i64, [88 x i8] }
%struct.setup_data = type { i64, i32, i32, [0 x i8] }
%struct.setup_indirect = type { i32, i32, i64, i64 }

@e820_table_init = internal global %struct.e820_table zeroinitializer, section ".init.data", align 4, !dbg !0
@e820_table = hidden global ptr @e820_table_init, section ".ref.data", align 8, !dbg !67
@e820_table_kexec_init = internal global %struct.e820_table zeroinitializer, section ".init.data", align 4, !dbg !229
@e820_table_kexec = hidden global ptr @e820_table_kexec_init, section ".ref.data", align 8, !dbg !82
@e820_table_firmware_init = internal global %struct.e820_table zeroinitializer, section ".init.data", align 4, !dbg !231
@e820_table_firmware = hidden global ptr @e820_table_firmware_init, section ".ref.data", align 8, !dbg !84
@pci_mem_start = hidden global i64 2934815422, align 8, !dbg !86
@__UNIQUE_ID___addressable_pci_mem_start340 = internal global ptr @pci_mem_start, section ".discard.addressable", align 8, !dbg !89
@__UNIQUE_ID___addressable_e820__mapped_raw_any341 = internal global ptr @e820__mapped_raw_any, section ".discard.addressable", align 8, !dbg !91
@__UNIQUE_ID___addressable_e820__mapped_any342 = internal global ptr @e820__mapped_any, section ".discard.addressable", align 8, !dbg !93
@.str = private unnamed_addr constant [29 x i8] c"\016%s: [mem %#018Lx-%#018Lx] \00", align 1, !dbg !95
@.str.1 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1, !dbg !100
@.str.2 = private unnamed_addr constant [23 x i8] c"arch/x86/kernel/e820.c\00", align 1, !dbg !105
@change_point_list = internal global [640 x %struct.change_member] zeroinitializer, section ".init.data", align 16, !dbg !233
@change_point = internal global [640 x ptr] zeroinitializer, section ".init.data", align 16, !dbg !243
@overlap_list = internal global [320 x ptr] zeroinitializer, section ".init.data", align 16, !dbg !247
@new_entries = internal global [320 x %struct.e820_entry] zeroinitializer, section ".init.data", align 16, !dbg !250
@.str.3 = private unnamed_addr constant [38 x i8] c"\017e820: remove [mem %#010Lx-%#010Lx] \00", align 1, !dbg !110
@.str.4 = private unnamed_addr constant [30 x i8] c"\016modified physical RAM map:\0A\00", align 1, !dbg !115
@.str.5 = private unnamed_addr constant [9 x i8] c"modified\00", align 1, !dbg !120
@max_pfn = external dso_local global i64, align 8
@.str.6 = private unnamed_addr constant [60 x i8] c"\013Cannot find an available gap in the 32-bit address range\0A\00", align 1, !dbg !125
@.str.7 = private unnamed_addr constant [57 x i8] c"\013PCI devices with unassigned 32-bit BARs may not work!\0A\00", align 1, !dbg !130
@.str.8 = private unnamed_addr constant [51 x i8] c"\016[mem %#010lx-%#010lx] available for PCI devices\0A\00", align 1, !dbg !135
@.str.9 = private unnamed_addr constant [30 x i8] c"\016extended physical RAM map:\0A\00", align 1, !dbg !140
@.str.10 = private unnamed_addr constant [9 x i8] c"extended\00", align 1, !dbg !142
@__UNIQUE_ID___addressable___initstub__kmod_e820__351_792_e820__register_nvs_regions1352 = internal global ptr @__initstub__kmod_e820__351_792_e820__register_nvs_regions1, section ".discard.addressable", align 8, !dbg !144
@.str.11 = private unnamed_addr constant [63 x i8] c"\016update e820_table_kexec for e820__memblock_alloc_reserved()\0A\00", align 1, !dbg !146
@__setup_str_parse_memopt = internal constant [4 x i8] c"mem\00", section ".init.rodata", align 1, !dbg !303
@__setup_parse_memopt = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_memopt, ptr @parse_memopt, i32 1 }, section ".init.setup", align 8, !dbg !151
@__setup_str_parse_memmap_opt = internal constant [7 x i8] c"memmap\00", section ".init.rodata", align 1, !dbg !313
@__setup_parse_memmap_opt = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_memmap_opt, ptr @parse_memmap_opt, i32 1 }, section ".init.setup", align 8, !dbg !163
@boot_params = external dso_local global %struct.boot_params, align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"\014e820: failed to memremap setup_data entry\0A\00", align 1, !dbg !165
@.str.13 = private unnamed_addr constant [48 x i8] c"\014e820: failed to memremap indirect setup_data\0A\00", align 1, !dbg !170
@.str.14 = private unnamed_addr constant [19 x i8] c"reserve setup_data\00", align 1, !dbg !175
@userdef = internal global i32 0, section ".init.data", align 4, !dbg !252
@.str.15 = private unnamed_addr constant [33 x i8] c"Invalid user supplied memory map\00", align 1, !dbg !180
@.str.16 = private unnamed_addr constant [34 x i8] c"\016user-defined physical RAM map:\0A\00", align 1, !dbg !185
@.str.17 = private unnamed_addr constant [5 x i8] c"user\00", align 1, !dbg !190
@.str.18 = private unnamed_addr constant [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", align 1, !dbg !195
@__func__.e820__reserve_resources = private unnamed_addr constant [24 x i8] c"e820__reserve_resources\00", align 1, !dbg !197
@e820_res = internal global ptr null, section ".init.data", align 8, !dbg !254
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.19 = private unnamed_addr constant [52 x i8] c"\017e820: reserve RAM buffer [mem %#010llx-%#010llx]\0A\00", align 1, !dbg !202
@.str.20 = private unnamed_addr constant [11 x i8] c"RAM buffer\00", align 1, !dbg !207
@.str.21 = private unnamed_addr constant [10 x i8] c"BIOS-e820\00", align 1, !dbg !212
@.str.22 = private unnamed_addr constant [8 x i8] c"BIOS-88\00", align 1, !dbg !217
@.str.23 = private unnamed_addr constant [10 x i8] c"BIOS-e801\00", align 1, !dbg !222
@x86_init = external dso_local global %struct.x86_init_ops, align 8
@.str.24 = private unnamed_addr constant [35 x i8] c"\016BIOS-provided physical RAM map:\0A\00", align 1, !dbg !224
@.str.25 = private unnamed_addr constant [54 x i8] c"\013too many entries; ignoring [mem %#010llx-%#010llx]\0A\00", align 1, !dbg !267
@.str.26 = private unnamed_addr constant [9 x i8] c"\01cusable\00", align 1, !dbg !272
@.str.27 = private unnamed_addr constant [11 x i8] c"\01creserved\00", align 1, !dbg !274
@.str.28 = private unnamed_addr constant [16 x i8] c"\01csoft reserved\00", align 1, !dbg !276
@.str.29 = private unnamed_addr constant [12 x i8] c"\01cACPI data\00", align 1, !dbg !281
@.str.30 = private unnamed_addr constant [11 x i8] c"\01cACPI NVS\00", align 1, !dbg !286
@.str.31 = private unnamed_addr constant [11 x i8] c"\01cunusable\00", align 1, !dbg !288
@.str.32 = private unnamed_addr constant [23 x i8] c"\01cpersistent (type %u)\00", align 1, !dbg !290
@.str.33 = private unnamed_addr constant [10 x i8] c"\01ctype %u\00", align 1, !dbg !292
@.str.34 = private unnamed_addr constant [38 x i8] c"\017e820: update [mem %#010Lx-%#010Lx] \00", align 1, !dbg !294
@.str.35 = private unnamed_addr constant [8 x i8] c"\01c ==> \00", align 1, !dbg !296
@.str.36 = private unnamed_addr constant [39 x i8] c"\016last_pfn = %#lx max_arch_pfn = %#lx\0A\00", align 1, !dbg !298
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.37 = private unnamed_addr constant [10 x i8] c"nopentium\00", align 1, !dbg !306
@.str.38 = private unnamed_addr constant [53 x i8] c"\014mem=nopentium ignored! (only supported on x86_32)\0A\00", align 1, !dbg !308
@.str.39 = private unnamed_addr constant [9 x i8] c"exactmap\00", align 1, !dbg !318
@.str.40 = private unnamed_addr constant [11 x i8] c"System RAM\00", align 1, !dbg !320
@.str.41 = private unnamed_addr constant [12 x i8] c"ACPI Tables\00", align 1, !dbg !322
@.str.42 = private unnamed_addr constant [26 x i8] c"ACPI Non-volatile Storage\00", align 1, !dbg !324
@.str.43 = private unnamed_addr constant [16 x i8] c"Unusable memory\00", align 1, !dbg !329
@.str.44 = private unnamed_addr constant [27 x i8] c"Persistent Memory (legacy)\00", align 1, !dbg !331
@.str.45 = private unnamed_addr constant [18 x i8] c"Persistent Memory\00", align 1, !dbg !336
@.str.46 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1, !dbg !341
@.str.47 = private unnamed_addr constant [14 x i8] c"Soft Reserved\00", align 1, !dbg !343
@.str.48 = private unnamed_addr constant [18 x i8] c"Unknown E820 type\00", align 1, !dbg !348
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_pci_mem_start340, ptr @__UNIQUE_ID___addressable_e820__mapped_raw_any341, ptr @__UNIQUE_ID___addressable_e820__mapped_any342, ptr @__UNIQUE_ID___addressable___initstub__kmod_e820__351_792_e820__register_nvs_regions1352, ptr @__setup_parse_memopt, ptr @__setup_parse_memmap_opt], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @e820__mapped_raw_any(i64 noundef %start, i64 noundef %end, i32 noundef %type) #0 align 16 !dbg !359 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !365, metadata !DIExpression()), !dbg !368
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !366, metadata !DIExpression()), !dbg !369
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !367, metadata !DIExpression()), !dbg !370
  %0 = load ptr, ptr @e820_table_firmware, align 8, !dbg !371
  %1 = load i64, ptr %start.addr, align 8, !dbg !372
  %2 = load i64, ptr %end.addr, align 8, !dbg !373
  %3 = load i32, ptr %type.addr, align 4, !dbg !374
  %call = call zeroext i1 @_e820__mapped_any(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #12, !dbg !375
  ret i1 %call, !dbg !376
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_e820__mapped_any(ptr noundef %table, i64 noundef %start, i64 noundef %end, i32 noundef %type) #0 align 16 !dbg !377 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !381, metadata !DIExpression()), !dbg !390
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !382, metadata !DIExpression()), !dbg !391
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !383, metadata !DIExpression()), !dbg !392
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !384, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %i, metadata !385, metadata !DIExpression()), !dbg !395
  store i32 0, ptr %i, align 4, !dbg !396
  br label %for.cond, !dbg !397

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !398
  %1 = load ptr, ptr %table.addr, align 8, !dbg !399
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %1, i32 0, i32 0, !dbg !400
  %2 = load i32, ptr %nr_entries, align 4, !dbg !400
  %cmp = icmp ult i32 %0, %2, !dbg !401
  br i1 %cmp, label %for.body, label %for.end, !dbg !402

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !386, metadata !DIExpression()), !dbg !404
  %3 = load ptr, ptr %table.addr, align 8, !dbg !405
  %entries = getelementptr inbounds %struct.e820_table, ptr %3, i32 0, i32 1, !dbg !406
  %4 = load i32, ptr %i, align 4, !dbg !407
  %idxprom = sext i32 %4 to i64, !dbg !405
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !405
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !404
  %5 = load i32, ptr %type.addr, align 4, !dbg !408
  %tobool = icmp ne i32 %5, 0, !dbg !408
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !410

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr %entry1, align 8, !dbg !411
  %type2 = getelementptr inbounds %struct.e820_entry, ptr %6, i32 0, i32 2, !dbg !412
  %7 = load i32, ptr %type2, align 1, !dbg !412
  %8 = load i32, ptr %type.addr, align 4, !dbg !413
  %cmp3 = icmp ne i32 %7, %8, !dbg !414
  br i1 %cmp3, label %if.then, label %if.end, !dbg !415

if.then:                                          ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !416

if.end:                                           ; preds = %land.lhs.true, %for.body
  %9 = load ptr, ptr %entry1, align 8, !dbg !417
  %addr = getelementptr inbounds %struct.e820_entry, ptr %9, i32 0, i32 0, !dbg !419
  %10 = load i64, ptr %addr, align 1, !dbg !419
  %11 = load i64, ptr %end.addr, align 8, !dbg !420
  %cmp4 = icmp uge i64 %10, %11, !dbg !421
  br i1 %cmp4, label %if.then7, label %lor.lhs.false, !dbg !422

lor.lhs.false:                                    ; preds = %if.end
  %12 = load ptr, ptr %entry1, align 8, !dbg !423
  %addr5 = getelementptr inbounds %struct.e820_entry, ptr %12, i32 0, i32 0, !dbg !424
  %13 = load i64, ptr %addr5, align 1, !dbg !424
  %14 = load ptr, ptr %entry1, align 8, !dbg !425
  %size = getelementptr inbounds %struct.e820_entry, ptr %14, i32 0, i32 1, !dbg !426
  %15 = load i64, ptr %size, align 1, !dbg !426
  %add = add i64 %13, %15, !dbg !427
  %16 = load i64, ptr %start.addr, align 8, !dbg !428
  %cmp6 = icmp ule i64 %add, %16, !dbg !429
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !430

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !431

if.end8:                                          ; preds = %lor.lhs.false
  store i1 true, ptr %retval, align 1, !dbg !432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !432

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !433
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %17 = load i32, ptr %i, align 4, !dbg !434
  %inc = add i32 %17, 1, !dbg !434
  store i32 %inc, ptr %i, align 4, !dbg !434
  br label %for.cond, !dbg !435, !llvm.loop !436

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !440

cleanup9:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !441
  %18 = load i1, ptr %retval, align 1, !dbg !441
  ret i1 %18, !dbg !441
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @e820__mapped_any(i64 noundef %start, i64 noundef %end, i32 noundef %type) #0 align 16 !dbg !442 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !444, metadata !DIExpression()), !dbg !447
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !445, metadata !DIExpression()), !dbg !448
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !446, metadata !DIExpression()), !dbg !449
  %0 = load ptr, ptr @e820_table, align 8, !dbg !450
  %1 = load i64, ptr %start.addr, align 8, !dbg !451
  %2 = load i64, ptr %end.addr, align 8, !dbg !452
  %3 = load i32, ptr %type.addr, align 4, !dbg !453
  %call = call zeroext i1 @_e820__mapped_any(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #12, !dbg !454
  ret i1 %call, !dbg !455
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden zeroext i1 @e820__mapped_all(i64 noundef %start, i64 noundef %end, i32 noundef %type) #2 section ".init.text" align 16 !dbg !456 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !458, metadata !DIExpression()), !dbg !461
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !459, metadata !DIExpression()), !dbg !462
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !460, metadata !DIExpression()), !dbg !463
  %0 = load i64, ptr %start.addr, align 8, !dbg !464
  %1 = load i64, ptr %end.addr, align 8, !dbg !465
  %2 = load i32, ptr %type.addr, align 4, !dbg !466
  %call = call ptr @__e820__mapped_all(i64 noundef %0, i64 noundef %1, i32 noundef %2) #12, !dbg !467
  %tobool = icmp ne ptr %call, null, !dbg !467
  ret i1 %tobool, !dbg !468
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__e820__mapped_all(i64 noundef %start, i64 noundef %end, i32 noundef %type) #0 align 16 !dbg !469 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !473, metadata !DIExpression()), !dbg !481
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !474, metadata !DIExpression()), !dbg !482
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !475, metadata !DIExpression()), !dbg !483
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !484
  call void @llvm.dbg.declare(metadata ptr %i, metadata !476, metadata !DIExpression()), !dbg !485
  store i32 0, ptr %i, align 4, !dbg !486
  br label %for.cond, !dbg !487

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !488
  %1 = load ptr, ptr @e820_table, align 8, !dbg !489
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %1, i32 0, i32 0, !dbg !490
  %2 = load i32, ptr %nr_entries, align 4, !dbg !490
  %cmp = icmp ult i32 %0, %2, !dbg !491
  br i1 %cmp, label %for.body, label %for.end, !dbg !492

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !477, metadata !DIExpression()), !dbg !494
  %3 = load ptr, ptr @e820_table, align 8, !dbg !495
  %entries = getelementptr inbounds %struct.e820_table, ptr %3, i32 0, i32 1, !dbg !496
  %4 = load i32, ptr %i, align 4, !dbg !497
  %idxprom = sext i32 %4 to i64, !dbg !495
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !495
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !494
  %5 = load i32, ptr %type.addr, align 4, !dbg !498
  %tobool = icmp ne i32 %5, 0, !dbg !498
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !500

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr %entry1, align 8, !dbg !501
  %type2 = getelementptr inbounds %struct.e820_entry, ptr %6, i32 0, i32 2, !dbg !502
  %7 = load i32, ptr %type2, align 1, !dbg !502
  %8 = load i32, ptr %type.addr, align 4, !dbg !503
  %cmp3 = icmp ne i32 %7, %8, !dbg !504
  br i1 %cmp3, label %if.then, label %if.end, !dbg !505

if.then:                                          ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !506

if.end:                                           ; preds = %land.lhs.true, %for.body
  %9 = load ptr, ptr %entry1, align 8, !dbg !507
  %addr = getelementptr inbounds %struct.e820_entry, ptr %9, i32 0, i32 0, !dbg !509
  %10 = load i64, ptr %addr, align 1, !dbg !509
  %11 = load i64, ptr %end.addr, align 8, !dbg !510
  %cmp4 = icmp uge i64 %10, %11, !dbg !511
  br i1 %cmp4, label %if.then7, label %lor.lhs.false, !dbg !512

lor.lhs.false:                                    ; preds = %if.end
  %12 = load ptr, ptr %entry1, align 8, !dbg !513
  %addr5 = getelementptr inbounds %struct.e820_entry, ptr %12, i32 0, i32 0, !dbg !514
  %13 = load i64, ptr %addr5, align 1, !dbg !514
  %14 = load ptr, ptr %entry1, align 8, !dbg !515
  %size = getelementptr inbounds %struct.e820_entry, ptr %14, i32 0, i32 1, !dbg !516
  %15 = load i64, ptr %size, align 1, !dbg !516
  %add = add i64 %13, %15, !dbg !517
  %16 = load i64, ptr %start.addr, align 8, !dbg !518
  %cmp6 = icmp ule i64 %add, %16, !dbg !519
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !520

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !521

if.end8:                                          ; preds = %lor.lhs.false
  %17 = load ptr, ptr %entry1, align 8, !dbg !522
  %addr9 = getelementptr inbounds %struct.e820_entry, ptr %17, i32 0, i32 0, !dbg !524
  %18 = load i64, ptr %addr9, align 1, !dbg !524
  %19 = load i64, ptr %start.addr, align 8, !dbg !525
  %cmp10 = icmp ule i64 %18, %19, !dbg !526
  br i1 %cmp10, label %if.then11, label %if.end15, !dbg !527

if.then11:                                        ; preds = %if.end8
  %20 = load ptr, ptr %entry1, align 8, !dbg !528
  %addr12 = getelementptr inbounds %struct.e820_entry, ptr %20, i32 0, i32 0, !dbg !529
  %21 = load i64, ptr %addr12, align 1, !dbg !529
  %22 = load ptr, ptr %entry1, align 8, !dbg !530
  %size13 = getelementptr inbounds %struct.e820_entry, ptr %22, i32 0, i32 1, !dbg !531
  %23 = load i64, ptr %size13, align 1, !dbg !531
  %add14 = add i64 %21, %23, !dbg !532
  store i64 %add14, ptr %start.addr, align 8, !dbg !533
  br label %if.end15, !dbg !534

if.end15:                                         ; preds = %if.then11, %if.end8
  %24 = load i64, ptr %start.addr, align 8, !dbg !535
  %25 = load i64, ptr %end.addr, align 8, !dbg !537
  %cmp16 = icmp uge i64 %24, %25, !dbg !538
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !539

if.then17:                                        ; preds = %if.end15
  %26 = load ptr, ptr %entry1, align 8, !dbg !540
  store ptr %26, ptr %retval, align 8, !dbg !541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !541

if.end18:                                         ; preds = %if.end15
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !542
  br label %cleanup, !dbg !542

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !542
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !543

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %27 = load i32, ptr %i, align 4, !dbg !544
  %inc = add i32 %27, 1, !dbg !544
  store i32 %inc, ptr %i, align 4, !dbg !544
  br label %for.cond, !dbg !545, !llvm.loop !546

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !548

cleanup19:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !549
  %28 = load ptr, ptr %retval, align 8, !dbg !549
  ret ptr %28, !dbg !549
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @e820__get_entry_type(i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !550 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !554, metadata !DIExpression()), !dbg !557
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !555, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !556, metadata !DIExpression()), !dbg !560
  %0 = load i64, ptr %start.addr, align 8, !dbg !561
  %1 = load i64, ptr %end.addr, align 8, !dbg !562
  %call = call ptr @__e820__mapped_all(i64 noundef %0, i64 noundef %1, i32 noundef 0) #12, !dbg !563
  store ptr %call, ptr %entry1, align 8, !dbg !560
  %2 = load ptr, ptr %entry1, align 8, !dbg !564
  %tobool = icmp ne ptr %2, null, !dbg !564
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !564

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %entry1, align 8, !dbg !565
  %type = getelementptr inbounds %struct.e820_entry, ptr %3, i32 0, i32 2, !dbg !566
  %4 = load i32, ptr %type, align 1, !dbg !566
  br label %cond.end, !dbg !564

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !564

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ -22, %cond.false ], !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !567
  ret i32 %cond, !dbg !568
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__range_add(i64 noundef %start, i64 noundef %size, i32 noundef %type) #2 section ".init.text" align 16 !dbg !569 {
entry:
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !573, metadata !DIExpression()), !dbg !576
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !574, metadata !DIExpression()), !dbg !577
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !575, metadata !DIExpression()), !dbg !578
  %0 = load ptr, ptr @e820_table, align 8, !dbg !579
  %1 = load i64, ptr %start.addr, align 8, !dbg !580
  %2 = load i64, ptr %size.addr, align 8, !dbg !581
  %3 = load i32, ptr %type.addr, align 4, !dbg !582
  call void @__e820__range_add(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #14, !dbg !583
  ret void, !dbg !584
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @__e820__range_add(ptr noundef %table, i64 noundef %start, i64 noundef %size, i32 noundef %type) #2 section ".init.text" align 16 !dbg !585 {
entry:
  %table.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !589, metadata !DIExpression()), !dbg !594
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !590, metadata !DIExpression()), !dbg !595
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !591, metadata !DIExpression()), !dbg !596
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !592, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #13, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %x, metadata !593, metadata !DIExpression()), !dbg !599
  %0 = load ptr, ptr %table.addr, align 8, !dbg !600
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %0, i32 0, i32 0, !dbg !601
  %1 = load i32, ptr %nr_entries, align 4, !dbg !601
  store i32 %1, ptr %x, align 4, !dbg !599
  %2 = load i32, ptr %x, align 4, !dbg !602
  %conv = sext i32 %2 to i64, !dbg !602
  %cmp = icmp uge i64 %conv, 320, !dbg !604
  br i1 %cmp, label %if.then, label %if.end, !dbg !605

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !606

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !609

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !609

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %start.addr, align 8, !dbg !606
  %4 = load i64, ptr %start.addr, align 8, !dbg !606
  %5 = load i64, ptr %size.addr, align 8, !dbg !606
  %add = add i64 %4, %5, !dbg !606
  %sub = sub i64 %add, 1, !dbg !606
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.25, i64 noundef %3, i64 noundef %sub) #14, !dbg !606
  store i32 %call, ptr %tmp, align 4, !dbg !609
  %6 = load i32, ptr %tmp, align 4, !dbg !606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !611

if.end:                                           ; preds = %entry
  %7 = load i64, ptr %start.addr, align 8, !dbg !612
  %8 = load ptr, ptr %table.addr, align 8, !dbg !613
  %entries = getelementptr inbounds %struct.e820_table, ptr %8, i32 0, i32 1, !dbg !614
  %9 = load i32, ptr %x, align 4, !dbg !615
  %idxprom = sext i32 %9 to i64, !dbg !613
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !613
  %addr = getelementptr inbounds %struct.e820_entry, ptr %arrayidx, i32 0, i32 0, !dbg !616
  store i64 %7, ptr %addr, align 4, !dbg !617
  %10 = load i64, ptr %size.addr, align 8, !dbg !618
  %11 = load ptr, ptr %table.addr, align 8, !dbg !619
  %entries2 = getelementptr inbounds %struct.e820_table, ptr %11, i32 0, i32 1, !dbg !620
  %12 = load i32, ptr %x, align 4, !dbg !621
  %idxprom3 = sext i32 %12 to i64, !dbg !619
  %arrayidx4 = getelementptr [320 x %struct.e820_entry], ptr %entries2, i64 0, i64 %idxprom3, !dbg !619
  %size5 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx4, i32 0, i32 1, !dbg !622
  store i64 %10, ptr %size5, align 4, !dbg !623
  %13 = load i32, ptr %type.addr, align 4, !dbg !624
  %14 = load ptr, ptr %table.addr, align 8, !dbg !625
  %entries6 = getelementptr inbounds %struct.e820_table, ptr %14, i32 0, i32 1, !dbg !626
  %15 = load i32, ptr %x, align 4, !dbg !627
  %idxprom7 = sext i32 %15 to i64, !dbg !625
  %arrayidx8 = getelementptr [320 x %struct.e820_entry], ptr %entries6, i64 0, i64 %idxprom7, !dbg !625
  %type9 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx8, i32 0, i32 2, !dbg !628
  store i32 %13, ptr %type9, align 4, !dbg !629
  %16 = load ptr, ptr %table.addr, align 8, !dbg !630
  %nr_entries10 = getelementptr inbounds %struct.e820_table, ptr %16, i32 0, i32 0, !dbg !631
  %17 = load i32, ptr %nr_entries10, align 4, !dbg !632
  %inc = add i32 %17, 1, !dbg !632
  store i32 %inc, ptr %nr_entries10, align 4, !dbg !632
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !633
  br label %cleanup, !dbg !633

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #13, !dbg !633
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !633

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__print_table(ptr noundef %who) #2 section ".init.text" align 16 !dbg !634 {
entry:
  %who.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  store ptr %who, ptr %who.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %who.addr, metadata !638, metadata !DIExpression()), !dbg !640
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %i, metadata !639, metadata !DIExpression()), !dbg !642
  store i32 0, ptr %i, align 4, !dbg !643
  br label %for.cond, !dbg !645

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !646
  %1 = load ptr, ptr @e820_table, align 8, !dbg !648
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %1, i32 0, i32 0, !dbg !649
  %2 = load i32, ptr %nr_entries, align 4, !dbg !649
  %cmp = icmp ult i32 %0, %2, !dbg !650
  br i1 %cmp, label %for.body, label %for.end, !dbg !651

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !652

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !655

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !655

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %who.addr, align 8, !dbg !652
  %4 = load ptr, ptr @e820_table, align 8, !dbg !652
  %entries = getelementptr inbounds %struct.e820_table, ptr %4, i32 0, i32 1, !dbg !652
  %5 = load i32, ptr %i, align 4, !dbg !652
  %idxprom = sext i32 %5 to i64, !dbg !652
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !652
  %addr = getelementptr inbounds %struct.e820_entry, ptr %arrayidx, i32 0, i32 0, !dbg !652
  %6 = load i64, ptr %addr, align 4, !dbg !652
  %7 = load ptr, ptr @e820_table, align 8, !dbg !652
  %entries1 = getelementptr inbounds %struct.e820_table, ptr %7, i32 0, i32 1, !dbg !652
  %8 = load i32, ptr %i, align 4, !dbg !652
  %idxprom2 = sext i32 %8 to i64, !dbg !652
  %arrayidx3 = getelementptr [320 x %struct.e820_entry], ptr %entries1, i64 0, i64 %idxprom2, !dbg !652
  %addr4 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx3, i32 0, i32 0, !dbg !652
  %9 = load i64, ptr %addr4, align 4, !dbg !652
  %10 = load ptr, ptr @e820_table, align 8, !dbg !652
  %entries5 = getelementptr inbounds %struct.e820_table, ptr %10, i32 0, i32 1, !dbg !652
  %11 = load i32, ptr %i, align 4, !dbg !652
  %idxprom6 = sext i32 %11 to i64, !dbg !652
  %arrayidx7 = getelementptr [320 x %struct.e820_entry], ptr %entries5, i64 0, i64 %idxprom6, !dbg !652
  %size = getelementptr inbounds %struct.e820_entry, ptr %arrayidx7, i32 0, i32 1, !dbg !652
  %12 = load i64, ptr %size, align 4, !dbg !652
  %add = add i64 %9, %12, !dbg !652
  %sub = sub i64 %add, 1, !dbg !652
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %3, i64 noundef %6, i64 noundef %sub) #14, !dbg !652
  store i32 %call, ptr %tmp, align 4, !dbg !655
  %13 = load i32, ptr %tmp, align 4, !dbg !652
  %14 = load ptr, ptr @e820_table, align 8, !dbg !657
  %entries8 = getelementptr inbounds %struct.e820_table, ptr %14, i32 0, i32 1, !dbg !658
  %15 = load i32, ptr %i, align 4, !dbg !659
  %idxprom9 = sext i32 %15 to i64, !dbg !657
  %arrayidx10 = getelementptr [320 x %struct.e820_entry], ptr %entries8, i64 0, i64 %idxprom9, !dbg !657
  %type = getelementptr inbounds %struct.e820_entry, ptr %arrayidx10, i32 0, i32 2, !dbg !660
  %16 = load i32, ptr %type, align 4, !dbg !660
  call void @e820_print_type(i32 noundef %16) #14, !dbg !661
  br label %do.body11, !dbg !662

do.body11:                                        ; preds = %do.end
  br label %do.cond12, !dbg !664

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !664

do.end13:                                         ; preds = %do.cond12
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #14, !dbg !662
  store i32 %call15, ptr %tmp14, align 4, !dbg !664
  %17 = load i32, ptr %tmp14, align 4, !dbg !662
  br label %for.inc, !dbg !666

for.inc:                                          ; preds = %do.end13
  %18 = load i32, ptr %i, align 4, !dbg !667
  %inc = add i32 %18, 1, !dbg !667
  store i32 %inc, ptr %i, align 4, !dbg !667
  br label %for.cond, !dbg !668, !llvm.loop !669

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !671
  ret void, !dbg !671
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !672 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @e820_print_type(i32 noundef %type) #2 section ".init.text" align 16 !dbg !676 {
entry:
  %type.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !680, metadata !DIExpression()), !dbg !681
  %0 = load i32, ptr %type.addr, align 4, !dbg !682
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 128, label %sw.bb
    i32 2, label %sw.bb1
    i32 -268435457, label %sw.bb6
    i32 3, label %sw.bb11
    i32 4, label %sw.bb16
    i32 5, label %sw.bb21
    i32 7, label %sw.bb26
    i32 12, label %sw.bb26
  ], !dbg !683

sw.bb:                                            ; preds = %entry, %entry
  br label %do.body, !dbg !684

do.body:                                          ; preds = %sw.bb
  br label %do.end, !dbg !687

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.26) #14, !dbg !684
  store i32 %call, ptr %tmp, align 4, !dbg !687
  %1 = load i32, ptr %tmp, align 4, !dbg !684
  br label %sw.epilog, !dbg !689

sw.bb1:                                           ; preds = %entry
  br label %do.body2, !dbg !690

do.body2:                                         ; preds = %sw.bb1
  br label %do.end3, !dbg !692

do.end3:                                          ; preds = %do.body2
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.27) #14, !dbg !690
  store i32 %call5, ptr %tmp4, align 4, !dbg !692
  %2 = load i32, ptr %tmp4, align 4, !dbg !690
  br label %sw.epilog, !dbg !694

sw.bb6:                                           ; preds = %entry
  br label %do.body7, !dbg !695

do.body7:                                         ; preds = %sw.bb6
  br label %do.end8, !dbg !697

do.end8:                                          ; preds = %do.body7
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.28) #14, !dbg !695
  store i32 %call10, ptr %tmp9, align 4, !dbg !697
  %3 = load i32, ptr %tmp9, align 4, !dbg !695
  br label %sw.epilog, !dbg !699

sw.bb11:                                          ; preds = %entry
  br label %do.body12, !dbg !700

do.body12:                                        ; preds = %sw.bb11
  br label %do.end13, !dbg !702

do.end13:                                         ; preds = %do.body12
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.29) #14, !dbg !700
  store i32 %call15, ptr %tmp14, align 4, !dbg !702
  %4 = load i32, ptr %tmp14, align 4, !dbg !700
  br label %sw.epilog, !dbg !704

sw.bb16:                                          ; preds = %entry
  br label %do.body17, !dbg !705

do.body17:                                        ; preds = %sw.bb16
  br label %do.end18, !dbg !707

do.end18:                                         ; preds = %do.body17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.30) #14, !dbg !705
  store i32 %call20, ptr %tmp19, align 4, !dbg !707
  %5 = load i32, ptr %tmp19, align 4, !dbg !705
  br label %sw.epilog, !dbg !709

sw.bb21:                                          ; preds = %entry
  br label %do.body22, !dbg !710

do.body22:                                        ; preds = %sw.bb21
  br label %do.end23, !dbg !712

do.end23:                                         ; preds = %do.body22
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.31) #14, !dbg !710
  store i32 %call25, ptr %tmp24, align 4, !dbg !712
  %6 = load i32, ptr %tmp24, align 4, !dbg !710
  br label %sw.epilog, !dbg !714

sw.bb26:                                          ; preds = %entry, %entry
  br label %do.body27, !dbg !715

do.body27:                                        ; preds = %sw.bb26
  br label %do.end28, !dbg !717

do.end28:                                         ; preds = %do.body27
  %7 = load i32, ptr %type.addr, align 4, !dbg !715
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.32, i32 noundef %7) #14, !dbg !715
  store i32 %call30, ptr %tmp29, align 4, !dbg !717
  %8 = load i32, ptr %tmp29, align 4, !dbg !715
  br label %sw.epilog, !dbg !719

sw.default:                                       ; preds = %entry
  br label %do.body31, !dbg !720

do.body31:                                        ; preds = %sw.default
  br label %do.end32, !dbg !722

do.end32:                                         ; preds = %do.body31
  %9 = load i32, ptr %type.addr, align 4, !dbg !720
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef @.str.33, i32 noundef %9) #14, !dbg !720
  store i32 %call34, ptr %tmp33, align 4, !dbg !722
  %10 = load i32, ptr %tmp33, align 4, !dbg !720
  br label %sw.epilog, !dbg !724

sw.epilog:                                        ; preds = %do.end32, %do.end28, %do.end23, %do.end18, %do.end13, %do.end8, %do.end3, %do.end
  ret void, !dbg !725
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @e820__update_table(ptr noundef %table) #2 section ".init.text" align 16 !dbg !726 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %entries = alloca ptr, align 8
  %max_nr_entries = alloca i32, align 4
  %current_type = alloca i32, align 4
  %last_type = alloca i32, align 4
  %last_addr = alloca i64, align 8
  %new_nr_entries = alloca i32, align 4
  %overlap_entries = alloca i32, align 4
  %i = alloca i32, align 4
  %chg_idx = alloca i32, align 4
  %chg_nr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !730, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #13, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !731, metadata !DIExpression()), !dbg !744
  %0 = load ptr, ptr %table.addr, align 8, !dbg !745
  %entries1 = getelementptr inbounds %struct.e820_table, ptr %0, i32 0, i32 1, !dbg !746
  %arraydecay = getelementptr inbounds [320 x %struct.e820_entry], ptr %entries1, i64 0, i64 0, !dbg !745
  store ptr %arraydecay, ptr %entries, align 8, !dbg !744
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_nr_entries) #13, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %max_nr_entries, metadata !732, metadata !DIExpression()), !dbg !748
  store i32 320, ptr %max_nr_entries, align 4, !dbg !748
  call void @llvm.lifetime.start.p0(i64 4, ptr %current_type) #13, !dbg !749
  call void @llvm.dbg.declare(metadata ptr %current_type, metadata !734, metadata !DIExpression()), !dbg !750
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_type) #13, !dbg !749
  call void @llvm.dbg.declare(metadata ptr %last_type, metadata !735, metadata !DIExpression()), !dbg !751
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_addr) #13, !dbg !752
  call void @llvm.dbg.declare(metadata ptr %last_addr, metadata !736, metadata !DIExpression()), !dbg !753
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_nr_entries) #13, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %new_nr_entries, metadata !737, metadata !DIExpression()), !dbg !755
  call void @llvm.lifetime.start.p0(i64 4, ptr %overlap_entries) #13, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %overlap_entries, metadata !738, metadata !DIExpression()), !dbg !756
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !757
  call void @llvm.dbg.declare(metadata ptr %i, metadata !739, metadata !DIExpression()), !dbg !758
  call void @llvm.lifetime.start.p0(i64 4, ptr %chg_idx) #13, !dbg !757
  call void @llvm.dbg.declare(metadata ptr %chg_idx, metadata !740, metadata !DIExpression()), !dbg !759
  call void @llvm.lifetime.start.p0(i64 4, ptr %chg_nr) #13, !dbg !757
  call void @llvm.dbg.declare(metadata ptr %chg_nr, metadata !741, metadata !DIExpression()), !dbg !760
  %1 = load ptr, ptr %table.addr, align 8, !dbg !761
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %1, i32 0, i32 0, !dbg !763
  %2 = load i32, ptr %nr_entries, align 4, !dbg !763
  %cmp = icmp ult i32 %2, 2, !dbg !764
  br i1 %cmp, label %if.then, label %if.end, !dbg !765

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !766

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !767

do.body:                                          ; preds = %if.end
  %3 = load ptr, ptr %table.addr, align 8, !dbg !768
  %nr_entries2 = getelementptr inbounds %struct.e820_table, ptr %3, i32 0, i32 0, !dbg !768
  %4 = load i32, ptr %nr_entries2, align 4, !dbg !768
  %5 = load i32, ptr %max_nr_entries, align 4, !dbg !768
  %cmp3 = icmp ugt i32 %4, %5, !dbg !768
  %lnot = xor i1 %cmp3, true, !dbg !768
  %lnot4 = xor i1 %lnot, true, !dbg !768
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !768
  %conv = sext i32 %lnot.ext to i64, !dbg !768
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !768
  %tobool = icmp ne i64 %expval, 0, !dbg !768
  br i1 %tobool, label %if.then5, label %if.end13, !dbg !771

if.then5:                                         ; preds = %do.body
  br label %do.body6, !dbg !768

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !772

do.body7:                                         ; preds = %do.body6
  br label %do.cond, !dbg !774

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !774

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !772

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 335, i32 0, i64 12) #13, !dbg !776, !srcloc !778
  br label %do.cond9, !dbg !776

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !776

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !772

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !772

do.end12:                                         ; preds = %do.cond11
  br label %if.end13, !dbg !772

if.end13:                                         ; preds = %do.end12, %do.body
  br label %do.cond14, !dbg !771

do.cond14:                                        ; preds = %if.end13
  br label %do.end15, !dbg !771

do.end15:                                         ; preds = %do.cond14
  store i32 0, ptr %i, align 4, !dbg !779
  br label %for.cond, !dbg !781

for.cond:                                         ; preds = %for.inc, %do.end15
  %6 = load i32, ptr %i, align 4, !dbg !782
  %7 = load ptr, ptr %table.addr, align 8, !dbg !784
  %nr_entries16 = getelementptr inbounds %struct.e820_table, ptr %7, i32 0, i32 0, !dbg !785
  %8 = load i32, ptr %nr_entries16, align 4, !dbg !785
  %cmp17 = icmp ult i32 %6, %8, !dbg !786
  br i1 %cmp17, label %for.body, label %for.end, !dbg !787

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %entries, align 8, !dbg !788
  %10 = load i32, ptr %i, align 4, !dbg !791
  %idxprom = zext i32 %10 to i64, !dbg !788
  %arrayidx = getelementptr %struct.e820_entry, ptr %9, i64 %idxprom, !dbg !788
  %addr = getelementptr inbounds %struct.e820_entry, ptr %arrayidx, i32 0, i32 0, !dbg !792
  %11 = load i64, ptr %addr, align 1, !dbg !792
  %12 = load ptr, ptr %entries, align 8, !dbg !793
  %13 = load i32, ptr %i, align 4, !dbg !794
  %idxprom19 = zext i32 %13 to i64, !dbg !793
  %arrayidx20 = getelementptr %struct.e820_entry, ptr %12, i64 %idxprom19, !dbg !793
  %size = getelementptr inbounds %struct.e820_entry, ptr %arrayidx20, i32 0, i32 1, !dbg !795
  %14 = load i64, ptr %size, align 1, !dbg !795
  %add = add i64 %11, %14, !dbg !796
  %15 = load ptr, ptr %entries, align 8, !dbg !797
  %16 = load i32, ptr %i, align 4, !dbg !798
  %idxprom21 = zext i32 %16 to i64, !dbg !797
  %arrayidx22 = getelementptr %struct.e820_entry, ptr %15, i64 %idxprom21, !dbg !797
  %addr23 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx22, i32 0, i32 0, !dbg !799
  %17 = load i64, ptr %addr23, align 1, !dbg !799
  %cmp24 = icmp ult i64 %add, %17, !dbg !800
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !801

if.then26:                                        ; preds = %for.body
  store i32 -1, ptr %retval, align 4, !dbg !802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !802

if.end27:                                         ; preds = %for.body
  br label %for.inc, !dbg !803

for.inc:                                          ; preds = %if.end27
  %18 = load i32, ptr %i, align 4, !dbg !804
  %inc = add i32 %18, 1, !dbg !804
  store i32 %inc, ptr %i, align 4, !dbg !804
  br label %for.cond, !dbg !805, !llvm.loop !806

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !808
  br label %for.cond28, !dbg !810

for.cond28:                                       ; preds = %for.inc37, %for.end
  %19 = load i32, ptr %i, align 4, !dbg !811
  %20 = load ptr, ptr %table.addr, align 8, !dbg !813
  %nr_entries29 = getelementptr inbounds %struct.e820_table, ptr %20, i32 0, i32 0, !dbg !814
  %21 = load i32, ptr %nr_entries29, align 4, !dbg !814
  %mul = mul i32 2, %21, !dbg !815
  %cmp30 = icmp ult i32 %19, %mul, !dbg !816
  br i1 %cmp30, label %for.body32, label %for.end39, !dbg !817

for.body32:                                       ; preds = %for.cond28
  %22 = load i32, ptr %i, align 4, !dbg !818
  %idxprom33 = zext i32 %22 to i64, !dbg !819
  %arrayidx34 = getelementptr [640 x %struct.change_member], ptr @change_point_list, i64 0, i64 %idxprom33, !dbg !819
  %23 = load i32, ptr %i, align 4, !dbg !820
  %idxprom35 = zext i32 %23 to i64, !dbg !821
  %arrayidx36 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom35, !dbg !821
  store ptr %arrayidx34, ptr %arrayidx36, align 8, !dbg !822
  br label %for.inc37, !dbg !821

for.inc37:                                        ; preds = %for.body32
  %24 = load i32, ptr %i, align 4, !dbg !823
  %inc38 = add i32 %24, 1, !dbg !823
  store i32 %inc38, ptr %i, align 4, !dbg !823
  br label %for.cond28, !dbg !824, !llvm.loop !825

for.end39:                                        ; preds = %for.cond28
  store i32 0, ptr %chg_idx, align 4, !dbg !827
  store i32 0, ptr %i, align 4, !dbg !828
  br label %for.cond40, !dbg !830

for.cond40:                                       ; preds = %for.inc80, %for.end39
  %25 = load i32, ptr %i, align 4, !dbg !831
  %26 = load ptr, ptr %table.addr, align 8, !dbg !833
  %nr_entries41 = getelementptr inbounds %struct.e820_table, ptr %26, i32 0, i32 0, !dbg !834
  %27 = load i32, ptr %nr_entries41, align 4, !dbg !834
  %cmp42 = icmp ult i32 %25, %27, !dbg !835
  br i1 %cmp42, label %for.body44, label %for.end82, !dbg !836

for.body44:                                       ; preds = %for.cond40
  %28 = load ptr, ptr %entries, align 8, !dbg !837
  %29 = load i32, ptr %i, align 4, !dbg !840
  %idxprom45 = zext i32 %29 to i64, !dbg !837
  %arrayidx46 = getelementptr %struct.e820_entry, ptr %28, i64 %idxprom45, !dbg !837
  %size47 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx46, i32 0, i32 1, !dbg !841
  %30 = load i64, ptr %size47, align 1, !dbg !841
  %cmp48 = icmp ne i64 %30, 0, !dbg !842
  br i1 %cmp48, label %if.then50, label %if.end79, !dbg !843

if.then50:                                        ; preds = %for.body44
  %31 = load ptr, ptr %entries, align 8, !dbg !844
  %32 = load i32, ptr %i, align 4, !dbg !846
  %idxprom51 = zext i32 %32 to i64, !dbg !844
  %arrayidx52 = getelementptr %struct.e820_entry, ptr %31, i64 %idxprom51, !dbg !844
  %addr53 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx52, i32 0, i32 0, !dbg !847
  %33 = load i64, ptr %addr53, align 1, !dbg !847
  %34 = load i32, ptr %chg_idx, align 4, !dbg !848
  %idxprom54 = zext i32 %34 to i64, !dbg !849
  %arrayidx55 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom54, !dbg !849
  %35 = load ptr, ptr %arrayidx55, align 8, !dbg !849
  %addr56 = getelementptr inbounds %struct.change_member, ptr %35, i32 0, i32 1, !dbg !850
  store i64 %33, ptr %addr56, align 8, !dbg !851
  %36 = load ptr, ptr %entries, align 8, !dbg !852
  %37 = load i32, ptr %i, align 4, !dbg !853
  %idxprom57 = zext i32 %37 to i64, !dbg !852
  %arrayidx58 = getelementptr %struct.e820_entry, ptr %36, i64 %idxprom57, !dbg !852
  %38 = load i32, ptr %chg_idx, align 4, !dbg !854
  %inc59 = add i32 %38, 1, !dbg !854
  store i32 %inc59, ptr %chg_idx, align 4, !dbg !854
  %idxprom60 = zext i32 %38 to i64, !dbg !855
  %arrayidx61 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom60, !dbg !855
  %39 = load ptr, ptr %arrayidx61, align 8, !dbg !855
  %entry62 = getelementptr inbounds %struct.change_member, ptr %39, i32 0, i32 0, !dbg !856
  store ptr %arrayidx58, ptr %entry62, align 8, !dbg !857
  %40 = load ptr, ptr %entries, align 8, !dbg !858
  %41 = load i32, ptr %i, align 4, !dbg !859
  %idxprom63 = zext i32 %41 to i64, !dbg !858
  %arrayidx64 = getelementptr %struct.e820_entry, ptr %40, i64 %idxprom63, !dbg !858
  %addr65 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx64, i32 0, i32 0, !dbg !860
  %42 = load i64, ptr %addr65, align 1, !dbg !860
  %43 = load ptr, ptr %entries, align 8, !dbg !861
  %44 = load i32, ptr %i, align 4, !dbg !862
  %idxprom66 = zext i32 %44 to i64, !dbg !861
  %arrayidx67 = getelementptr %struct.e820_entry, ptr %43, i64 %idxprom66, !dbg !861
  %size68 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx67, i32 0, i32 1, !dbg !863
  %45 = load i64, ptr %size68, align 1, !dbg !863
  %add69 = add i64 %42, %45, !dbg !864
  %46 = load i32, ptr %chg_idx, align 4, !dbg !865
  %idxprom70 = zext i32 %46 to i64, !dbg !866
  %arrayidx71 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom70, !dbg !866
  %47 = load ptr, ptr %arrayidx71, align 8, !dbg !866
  %addr72 = getelementptr inbounds %struct.change_member, ptr %47, i32 0, i32 1, !dbg !867
  store i64 %add69, ptr %addr72, align 8, !dbg !868
  %48 = load ptr, ptr %entries, align 8, !dbg !869
  %49 = load i32, ptr %i, align 4, !dbg !870
  %idxprom73 = zext i32 %49 to i64, !dbg !869
  %arrayidx74 = getelementptr %struct.e820_entry, ptr %48, i64 %idxprom73, !dbg !869
  %50 = load i32, ptr %chg_idx, align 4, !dbg !871
  %inc75 = add i32 %50, 1, !dbg !871
  store i32 %inc75, ptr %chg_idx, align 4, !dbg !871
  %idxprom76 = zext i32 %50 to i64, !dbg !872
  %arrayidx77 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom76, !dbg !872
  %51 = load ptr, ptr %arrayidx77, align 8, !dbg !872
  %entry78 = getelementptr inbounds %struct.change_member, ptr %51, i32 0, i32 0, !dbg !873
  store ptr %arrayidx74, ptr %entry78, align 8, !dbg !874
  br label %if.end79, !dbg !875

if.end79:                                         ; preds = %if.then50, %for.body44
  br label %for.inc80, !dbg !876

for.inc80:                                        ; preds = %if.end79
  %52 = load i32, ptr %i, align 4, !dbg !877
  %inc81 = add i32 %52, 1, !dbg !877
  store i32 %inc81, ptr %i, align 4, !dbg !877
  br label %for.cond40, !dbg !878, !llvm.loop !879

for.end82:                                        ; preds = %for.cond40
  %53 = load i32, ptr %chg_idx, align 4, !dbg !881
  store i32 %53, ptr %chg_nr, align 4, !dbg !882
  %54 = load i32, ptr %chg_nr, align 4, !dbg !883
  %conv83 = zext i32 %54 to i64, !dbg !883
  call void @sort(ptr noundef @change_point, i64 noundef %conv83, i64 noundef 8, ptr noundef @cpcompare, ptr noundef null) #12, !dbg !884
  store i32 0, ptr %overlap_entries, align 4, !dbg !885
  store i32 0, ptr %new_nr_entries, align 4, !dbg !886
  store i32 0, ptr %last_type, align 4, !dbg !887
  store i64 0, ptr %last_addr, align 8, !dbg !888
  store i32 0, ptr %chg_idx, align 4, !dbg !889
  br label %for.cond84, !dbg !891

for.cond84:                                       ; preds = %for.inc183, %for.end82
  %55 = load i32, ptr %chg_idx, align 4, !dbg !892
  %56 = load i32, ptr %chg_nr, align 4, !dbg !894
  %cmp85 = icmp ult i32 %55, %56, !dbg !895
  br i1 %cmp85, label %for.body87, label %for.end185, !dbg !896

for.body87:                                       ; preds = %for.cond84
  %57 = load i32, ptr %chg_idx, align 4, !dbg !897
  %idxprom88 = zext i32 %57 to i64, !dbg !900
  %arrayidx89 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom88, !dbg !900
  %58 = load ptr, ptr %arrayidx89, align 8, !dbg !900
  %addr90 = getelementptr inbounds %struct.change_member, ptr %58, i32 0, i32 1, !dbg !901
  %59 = load i64, ptr %addr90, align 8, !dbg !901
  %60 = load i32, ptr %chg_idx, align 4, !dbg !902
  %idxprom91 = zext i32 %60 to i64, !dbg !903
  %arrayidx92 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom91, !dbg !903
  %61 = load ptr, ptr %arrayidx92, align 8, !dbg !903
  %entry93 = getelementptr inbounds %struct.change_member, ptr %61, i32 0, i32 0, !dbg !904
  %62 = load ptr, ptr %entry93, align 8, !dbg !904
  %addr94 = getelementptr inbounds %struct.e820_entry, ptr %62, i32 0, i32 0, !dbg !905
  %63 = load i64, ptr %addr94, align 1, !dbg !905
  %cmp95 = icmp eq i64 %59, %63, !dbg !906
  br i1 %cmp95, label %if.then97, label %if.else, !dbg !907

if.then97:                                        ; preds = %for.body87
  %64 = load i32, ptr %chg_idx, align 4, !dbg !908
  %idxprom98 = zext i32 %64 to i64, !dbg !910
  %arrayidx99 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom98, !dbg !910
  %65 = load ptr, ptr %arrayidx99, align 8, !dbg !910
  %entry100 = getelementptr inbounds %struct.change_member, ptr %65, i32 0, i32 0, !dbg !911
  %66 = load ptr, ptr %entry100, align 8, !dbg !911
  %67 = load i32, ptr %overlap_entries, align 4, !dbg !912
  %inc101 = add i32 %67, 1, !dbg !912
  store i32 %inc101, ptr %overlap_entries, align 4, !dbg !912
  %idxprom102 = zext i32 %67 to i64, !dbg !913
  %arrayidx103 = getelementptr [320 x ptr], ptr @overlap_list, i64 0, i64 %idxprom102, !dbg !913
  store ptr %66, ptr %arrayidx103, align 8, !dbg !914
  br label %if.end124, !dbg !915

if.else:                                          ; preds = %for.body87
  store i32 0, ptr %i, align 4, !dbg !916
  br label %for.cond104, !dbg !919

for.cond104:                                      ; preds = %for.inc121, %if.else
  %68 = load i32, ptr %i, align 4, !dbg !920
  %69 = load i32, ptr %overlap_entries, align 4, !dbg !922
  %cmp105 = icmp ult i32 %68, %69, !dbg !923
  br i1 %cmp105, label %for.body107, label %for.end123, !dbg !924

for.body107:                                      ; preds = %for.cond104
  %70 = load i32, ptr %i, align 4, !dbg !925
  %idxprom108 = zext i32 %70 to i64, !dbg !928
  %arrayidx109 = getelementptr [320 x ptr], ptr @overlap_list, i64 0, i64 %idxprom108, !dbg !928
  %71 = load ptr, ptr %arrayidx109, align 8, !dbg !928
  %72 = load i32, ptr %chg_idx, align 4, !dbg !929
  %idxprom110 = zext i32 %72 to i64, !dbg !930
  %arrayidx111 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom110, !dbg !930
  %73 = load ptr, ptr %arrayidx111, align 8, !dbg !930
  %entry112 = getelementptr inbounds %struct.change_member, ptr %73, i32 0, i32 0, !dbg !931
  %74 = load ptr, ptr %entry112, align 8, !dbg !931
  %cmp113 = icmp eq ptr %71, %74, !dbg !932
  br i1 %cmp113, label %if.then115, label %if.end120, !dbg !933

if.then115:                                       ; preds = %for.body107
  %75 = load i32, ptr %overlap_entries, align 4, !dbg !934
  %sub = sub i32 %75, 1, !dbg !935
  %idxprom116 = zext i32 %sub to i64, !dbg !936
  %arrayidx117 = getelementptr [320 x ptr], ptr @overlap_list, i64 0, i64 %idxprom116, !dbg !936
  %76 = load ptr, ptr %arrayidx117, align 8, !dbg !936
  %77 = load i32, ptr %i, align 4, !dbg !937
  %idxprom118 = zext i32 %77 to i64, !dbg !938
  %arrayidx119 = getelementptr [320 x ptr], ptr @overlap_list, i64 0, i64 %idxprom118, !dbg !938
  store ptr %76, ptr %arrayidx119, align 8, !dbg !939
  br label %if.end120, !dbg !938

if.end120:                                        ; preds = %if.then115, %for.body107
  br label %for.inc121, !dbg !940

for.inc121:                                       ; preds = %if.end120
  %78 = load i32, ptr %i, align 4, !dbg !941
  %inc122 = add i32 %78, 1, !dbg !941
  store i32 %inc122, ptr %i, align 4, !dbg !941
  br label %for.cond104, !dbg !942, !llvm.loop !943

for.end123:                                       ; preds = %for.cond104
  %79 = load i32, ptr %overlap_entries, align 4, !dbg !945
  %dec = add i32 %79, -1, !dbg !945
  store i32 %dec, ptr %overlap_entries, align 4, !dbg !945
  br label %if.end124

if.end124:                                        ; preds = %for.end123, %if.then97
  store i32 0, ptr %current_type, align 4, !dbg !946
  store i32 0, ptr %i, align 4, !dbg !947
  br label %for.cond125, !dbg !949

for.cond125:                                      ; preds = %for.inc138, %if.end124
  %80 = load i32, ptr %i, align 4, !dbg !950
  %81 = load i32, ptr %overlap_entries, align 4, !dbg !952
  %cmp126 = icmp ult i32 %80, %81, !dbg !953
  br i1 %cmp126, label %for.body128, label %for.end140, !dbg !954

for.body128:                                      ; preds = %for.cond125
  %82 = load i32, ptr %i, align 4, !dbg !955
  %idxprom129 = zext i32 %82 to i64, !dbg !958
  %arrayidx130 = getelementptr [320 x ptr], ptr @overlap_list, i64 0, i64 %idxprom129, !dbg !958
  %83 = load ptr, ptr %arrayidx130, align 8, !dbg !958
  %type = getelementptr inbounds %struct.e820_entry, ptr %83, i32 0, i32 2, !dbg !959
  %84 = load i32, ptr %type, align 1, !dbg !959
  %85 = load i32, ptr %current_type, align 4, !dbg !960
  %cmp131 = icmp ugt i32 %84, %85, !dbg !961
  br i1 %cmp131, label %if.then133, label %if.end137, !dbg !962

if.then133:                                       ; preds = %for.body128
  %86 = load i32, ptr %i, align 4, !dbg !963
  %idxprom134 = zext i32 %86 to i64, !dbg !964
  %arrayidx135 = getelementptr [320 x ptr], ptr @overlap_list, i64 0, i64 %idxprom134, !dbg !964
  %87 = load ptr, ptr %arrayidx135, align 8, !dbg !964
  %type136 = getelementptr inbounds %struct.e820_entry, ptr %87, i32 0, i32 2, !dbg !965
  %88 = load i32, ptr %type136, align 1, !dbg !965
  store i32 %88, ptr %current_type, align 4, !dbg !966
  br label %if.end137, !dbg !967

if.end137:                                        ; preds = %if.then133, %for.body128
  br label %for.inc138, !dbg !968

for.inc138:                                       ; preds = %if.end137
  %89 = load i32, ptr %i, align 4, !dbg !969
  %inc139 = add i32 %89, 1, !dbg !969
  store i32 %inc139, ptr %i, align 4, !dbg !969
  br label %for.cond125, !dbg !970, !llvm.loop !971

for.end140:                                       ; preds = %for.cond125
  %90 = load i32, ptr %current_type, align 4, !dbg !973
  %91 = load i32, ptr %last_type, align 4, !dbg !975
  %cmp141 = icmp ne i32 %90, %91, !dbg !976
  br i1 %cmp141, label %if.then144, label %lor.lhs.false, !dbg !977

lor.lhs.false:                                    ; preds = %for.end140
  %92 = load i32, ptr %current_type, align 4, !dbg !978
  %call = call zeroext i1 @e820_nomerge(i32 noundef %92) #12, !dbg !979
  br i1 %call, label %if.then144, label %if.end182, !dbg !980

if.then144:                                       ; preds = %lor.lhs.false, %for.end140
  %93 = load i32, ptr %last_type, align 4, !dbg !981
  %tobool145 = icmp ne i32 %93, 0, !dbg !981
  br i1 %tobool145, label %if.then146, label %if.end166, !dbg !984

if.then146:                                       ; preds = %if.then144
  %94 = load i32, ptr %chg_idx, align 4, !dbg !985
  %idxprom147 = zext i32 %94 to i64, !dbg !987
  %arrayidx148 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom147, !dbg !987
  %95 = load ptr, ptr %arrayidx148, align 8, !dbg !987
  %addr149 = getelementptr inbounds %struct.change_member, ptr %95, i32 0, i32 1, !dbg !988
  %96 = load i64, ptr %addr149, align 8, !dbg !988
  %97 = load i64, ptr %last_addr, align 8, !dbg !989
  %sub150 = sub i64 %96, %97, !dbg !990
  %98 = load i32, ptr %new_nr_entries, align 4, !dbg !991
  %idxprom151 = zext i32 %98 to i64, !dbg !992
  %arrayidx152 = getelementptr [320 x %struct.e820_entry], ptr @new_entries, i64 0, i64 %idxprom151, !dbg !992
  %size153 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx152, i32 0, i32 1, !dbg !993
  store i64 %sub150, ptr %size153, align 4, !dbg !994
  %99 = load i32, ptr %new_nr_entries, align 4, !dbg !995
  %idxprom154 = zext i32 %99 to i64, !dbg !997
  %arrayidx155 = getelementptr [320 x %struct.e820_entry], ptr @new_entries, i64 0, i64 %idxprom154, !dbg !997
  %size156 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx155, i32 0, i32 1, !dbg !998
  %100 = load i64, ptr %size156, align 4, !dbg !998
  %cmp157 = icmp ne i64 %100, 0, !dbg !999
  br i1 %cmp157, label %if.then159, label %if.end165, !dbg !1000

if.then159:                                       ; preds = %if.then146
  %101 = load i32, ptr %new_nr_entries, align 4, !dbg !1001
  %inc160 = add i32 %101, 1, !dbg !1001
  store i32 %inc160, ptr %new_nr_entries, align 4, !dbg !1001
  %102 = load i32, ptr %max_nr_entries, align 4, !dbg !1003
  %cmp161 = icmp uge i32 %inc160, %102, !dbg !1004
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !1005

if.then163:                                       ; preds = %if.then159
  br label %for.end185, !dbg !1006

if.end164:                                        ; preds = %if.then159
  br label %if.end165, !dbg !1003

if.end165:                                        ; preds = %if.end164, %if.then146
  br label %if.end166, !dbg !1007

if.end166:                                        ; preds = %if.end165, %if.then144
  %103 = load i32, ptr %current_type, align 4, !dbg !1008
  %tobool167 = icmp ne i32 %103, 0, !dbg !1008
  br i1 %tobool167, label %if.then168, label %if.end181, !dbg !1010

if.then168:                                       ; preds = %if.end166
  %104 = load i32, ptr %chg_idx, align 4, !dbg !1011
  %idxprom169 = zext i32 %104 to i64, !dbg !1013
  %arrayidx170 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom169, !dbg !1013
  %105 = load ptr, ptr %arrayidx170, align 8, !dbg !1013
  %addr171 = getelementptr inbounds %struct.change_member, ptr %105, i32 0, i32 1, !dbg !1014
  %106 = load i64, ptr %addr171, align 8, !dbg !1014
  %107 = load i32, ptr %new_nr_entries, align 4, !dbg !1015
  %idxprom172 = zext i32 %107 to i64, !dbg !1016
  %arrayidx173 = getelementptr [320 x %struct.e820_entry], ptr @new_entries, i64 0, i64 %idxprom172, !dbg !1016
  %addr174 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx173, i32 0, i32 0, !dbg !1017
  store i64 %106, ptr %addr174, align 4, !dbg !1018
  %108 = load i32, ptr %current_type, align 4, !dbg !1019
  %109 = load i32, ptr %new_nr_entries, align 4, !dbg !1020
  %idxprom175 = zext i32 %109 to i64, !dbg !1021
  %arrayidx176 = getelementptr [320 x %struct.e820_entry], ptr @new_entries, i64 0, i64 %idxprom175, !dbg !1021
  %type177 = getelementptr inbounds %struct.e820_entry, ptr %arrayidx176, i32 0, i32 2, !dbg !1022
  store i32 %108, ptr %type177, align 4, !dbg !1023
  %110 = load i32, ptr %chg_idx, align 4, !dbg !1024
  %idxprom178 = zext i32 %110 to i64, !dbg !1025
  %arrayidx179 = getelementptr [640 x ptr], ptr @change_point, i64 0, i64 %idxprom178, !dbg !1025
  %111 = load ptr, ptr %arrayidx179, align 8, !dbg !1025
  %addr180 = getelementptr inbounds %struct.change_member, ptr %111, i32 0, i32 1, !dbg !1026
  %112 = load i64, ptr %addr180, align 8, !dbg !1026
  store i64 %112, ptr %last_addr, align 8, !dbg !1027
  br label %if.end181, !dbg !1028

if.end181:                                        ; preds = %if.then168, %if.end166
  %113 = load i32, ptr %current_type, align 4, !dbg !1029
  store i32 %113, ptr %last_type, align 4, !dbg !1030
  br label %if.end182, !dbg !1031

if.end182:                                        ; preds = %if.end181, %lor.lhs.false
  br label %for.inc183, !dbg !1032

for.inc183:                                       ; preds = %if.end182
  %114 = load i32, ptr %chg_idx, align 4, !dbg !1033
  %inc184 = add i32 %114, 1, !dbg !1033
  store i32 %inc184, ptr %chg_idx, align 4, !dbg !1033
  br label %for.cond84, !dbg !1034, !llvm.loop !1035

for.end185:                                       ; preds = %if.then163, %for.cond84
  %115 = load ptr, ptr %entries, align 8, !dbg !1037
  %116 = load i32, ptr %new_nr_entries, align 4, !dbg !1038
  %conv186 = zext i32 %116 to i64, !dbg !1038
  %mul187 = mul i64 %conv186, 20, !dbg !1039
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %115, ptr align 16 @new_entries, i64 %mul187, i1 false), !dbg !1040
  %117 = load i32, ptr %new_nr_entries, align 4, !dbg !1041
  %118 = load ptr, ptr %table.addr, align 8, !dbg !1042
  %nr_entries188 = getelementptr inbounds %struct.e820_table, ptr %118, i32 0, i32 0, !dbg !1043
  store i32 %117, ptr %nr_entries188, align 4, !dbg !1044
  store i32 0, ptr %retval, align 4, !dbg !1045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1045

cleanup:                                          ; preds = %for.end185, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %chg_nr) #13, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 4, ptr %chg_idx) #13, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 4, ptr %overlap_entries) #13, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_nr_entries) #13, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_addr) #13, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_type) #13, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 4, ptr %current_type) #13, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_nr_entries) #13, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #13, !dbg !1046
  %119 = load i32, ptr %retval, align 4, !dbg !1046
  ret i32 %119, !dbg !1046
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1047 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @cpcompare(ptr noundef %a, ptr noundef %b) #2 section ".init.text" align 16 !dbg !1065 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %app = alloca ptr, align 8
  %bpp = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %bp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1067, metadata !DIExpression()), !dbg !1077
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1068, metadata !DIExpression()), !dbg !1078
  call void @llvm.lifetime.start.p0(i64 8, ptr %app) #13, !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %app, metadata !1069, metadata !DIExpression()), !dbg !1080
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1081
  store ptr %0, ptr %app, align 8, !dbg !1080
  call void @llvm.lifetime.start.p0(i64 8, ptr %bpp) #13, !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %bpp, metadata !1072, metadata !DIExpression()), !dbg !1082
  %1 = load ptr, ptr %b.addr, align 8, !dbg !1083
  store ptr %1, ptr %bpp, align 8, !dbg !1082
  call void @llvm.lifetime.start.p0(i64 8, ptr %ap) #13, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !1073, metadata !DIExpression()), !dbg !1085
  %2 = load ptr, ptr %app, align 8, !dbg !1086
  %3 = load ptr, ptr %2, align 8, !dbg !1087
  store ptr %3, ptr %ap, align 8, !dbg !1085
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp) #13, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %bp, metadata !1076, metadata !DIExpression()), !dbg !1088
  %4 = load ptr, ptr %bpp, align 8, !dbg !1089
  %5 = load ptr, ptr %4, align 8, !dbg !1090
  store ptr %5, ptr %bp, align 8, !dbg !1088
  %6 = load ptr, ptr %ap, align 8, !dbg !1091
  %addr = getelementptr inbounds %struct.change_member, ptr %6, i32 0, i32 1, !dbg !1093
  %7 = load i64, ptr %addr, align 8, !dbg !1093
  %8 = load ptr, ptr %bp, align 8, !dbg !1094
  %addr1 = getelementptr inbounds %struct.change_member, ptr %8, i32 0, i32 1, !dbg !1095
  %9 = load i64, ptr %addr1, align 8, !dbg !1095
  %cmp = icmp ne i64 %7, %9, !dbg !1096
  br i1 %cmp, label %if.then, label %if.end, !dbg !1097

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %ap, align 8, !dbg !1098
  %addr2 = getelementptr inbounds %struct.change_member, ptr %10, i32 0, i32 1, !dbg !1099
  %11 = load i64, ptr %addr2, align 8, !dbg !1099
  %12 = load ptr, ptr %bp, align 8, !dbg !1100
  %addr3 = getelementptr inbounds %struct.change_member, ptr %12, i32 0, i32 1, !dbg !1101
  %13 = load i64, ptr %addr3, align 8, !dbg !1101
  %cmp4 = icmp ugt i64 %11, %13, !dbg !1102
  %14 = zext i1 %cmp4 to i64, !dbg !1098
  %cond = select i1 %cmp4, i32 1, i32 -1, !dbg !1098
  store i32 %cond, ptr %retval, align 4, !dbg !1103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1103

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %ap, align 8, !dbg !1104
  %addr5 = getelementptr inbounds %struct.change_member, ptr %15, i32 0, i32 1, !dbg !1105
  %16 = load i64, ptr %addr5, align 8, !dbg !1105
  %17 = load ptr, ptr %ap, align 8, !dbg !1106
  %entry6 = getelementptr inbounds %struct.change_member, ptr %17, i32 0, i32 0, !dbg !1107
  %18 = load ptr, ptr %entry6, align 8, !dbg !1107
  %addr7 = getelementptr inbounds %struct.e820_entry, ptr %18, i32 0, i32 0, !dbg !1108
  %19 = load i64, ptr %addr7, align 1, !dbg !1108
  %cmp8 = icmp ne i64 %16, %19, !dbg !1109
  %conv = zext i1 %cmp8 to i32, !dbg !1109
  %20 = load ptr, ptr %bp, align 8, !dbg !1110
  %addr9 = getelementptr inbounds %struct.change_member, ptr %20, i32 0, i32 1, !dbg !1111
  %21 = load i64, ptr %addr9, align 8, !dbg !1111
  %22 = load ptr, ptr %bp, align 8, !dbg !1112
  %entry10 = getelementptr inbounds %struct.change_member, ptr %22, i32 0, i32 0, !dbg !1113
  %23 = load ptr, ptr %entry10, align 8, !dbg !1113
  %addr11 = getelementptr inbounds %struct.e820_entry, ptr %23, i32 0, i32 0, !dbg !1114
  %24 = load i64, ptr %addr11, align 1, !dbg !1114
  %cmp12 = icmp ne i64 %21, %24, !dbg !1115
  %conv13 = zext i1 %cmp12 to i32, !dbg !1115
  %sub = sub i32 %conv, %conv13, !dbg !1116
  store i32 %sub, ptr %retval, align 4, !dbg !1117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1117

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp) #13, !dbg !1118
  call void @llvm.lifetime.end.p0(i64 8, ptr %ap) #13, !dbg !1118
  call void @llvm.lifetime.end.p0(i64 8, ptr %bpp) #13, !dbg !1118
  call void @llvm.lifetime.end.p0(i64 8, ptr %app) #13, !dbg !1118
  %25 = load i32, ptr %retval, align 4, !dbg !1118
  ret i32 %25, !dbg !1118
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @e820_nomerge(i32 noundef %type) #0 align 16 !dbg !1119 {
entry:
  %retval = alloca i1, align 1
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1123, metadata !DIExpression()), !dbg !1124
  %0 = load i32, ptr %type.addr, align 4, !dbg !1125
  %cmp = icmp eq i32 %0, 12, !dbg !1127
  br i1 %cmp, label %if.then, label %if.end, !dbg !1128

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !1129
  br label %return, !dbg !1129

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !1130
  %cmp1 = icmp eq i32 %1, -268435457, !dbg !1132
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1133

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !1134
  br label %return, !dbg !1134

if.end3:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1135
  br label %return, !dbg !1135

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !1136
  ret i1 %2, !dbg !1136
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i64 @e820__range_update(i64 noundef %start, i64 noundef %size, i32 noundef %old_type, i32 noundef %new_type) #2 section ".init.text" align 16 !dbg !1137 {
entry:
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %old_type.addr = alloca i32, align 4
  %new_type.addr = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1141, metadata !DIExpression()), !dbg !1145
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1142, metadata !DIExpression()), !dbg !1146
  store i32 %old_type, ptr %old_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old_type.addr, metadata !1143, metadata !DIExpression()), !dbg !1147
  store i32 %new_type, ptr %new_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_type.addr, metadata !1144, metadata !DIExpression()), !dbg !1148
  %0 = load ptr, ptr @e820_table, align 8, !dbg !1149
  %1 = load i64, ptr %start.addr, align 8, !dbg !1150
  %2 = load i64, ptr %size.addr, align 8, !dbg !1151
  %3 = load i32, ptr %old_type.addr, align 4, !dbg !1152
  %4 = load i32, ptr %new_type.addr, align 4, !dbg !1153
  %call = call i64 @__e820__range_update(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #14, !dbg !1154
  ret i64 %call, !dbg !1155
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @__e820__range_update(ptr noundef %table, i64 noundef %start, i64 noundef %size, i32 noundef %old_type, i32 noundef %new_type) #2 section ".init.text" align 16 !dbg !1156 {
entry:
  %table.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %old_type.addr = alloca i32, align 4
  %new_type.addr = alloca i32, align 4
  %end = alloca i64, align 8
  %i = alloca i32, align 4
  %real_updated_size = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %entry32 = alloca ptr, align 8
  %final_start = alloca i64, align 8
  %final_end = alloca i64, align 8
  %entry_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x343 = alloca i64, align 8
  %__UNIQUE_ID___y344 = alloca i64, align 8
  %tmp64 = alloca i64, align 8
  %__UNIQUE_ID___x345 = alloca i64, align 8
  %__UNIQUE_ID___y346 = alloca i64, align 8
  %tmp67 = alloca i64, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !1160, metadata !DIExpression()), !dbg !1181
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1161, metadata !DIExpression()), !dbg !1182
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1162, metadata !DIExpression()), !dbg !1183
  store i32 %old_type, ptr %old_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old_type.addr, metadata !1163, metadata !DIExpression()), !dbg !1184
  store i32 %new_type, ptr %new_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_type.addr, metadata !1164, metadata !DIExpression()), !dbg !1185
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #13, !dbg !1186
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1165, metadata !DIExpression()), !dbg !1187
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1166, metadata !DIExpression()), !dbg !1189
  call void @llvm.lifetime.start.p0(i64 8, ptr %real_updated_size) #13, !dbg !1190
  call void @llvm.dbg.declare(metadata ptr %real_updated_size, metadata !1167, metadata !DIExpression()), !dbg !1191
  store i64 0, ptr %real_updated_size, align 8, !dbg !1191
  br label %do.body, !dbg !1192

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %old_type.addr, align 4, !dbg !1193
  %1 = load i32, ptr %new_type.addr, align 4, !dbg !1193
  %cmp = icmp eq i32 %0, %1, !dbg !1193
  %lnot = xor i1 %cmp, true, !dbg !1193
  %lnot1 = xor i1 %lnot, true, !dbg !1193
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1193
  %conv = sext i32 %lnot.ext to i64, !dbg !1193
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1193
  %tobool = icmp ne i64 %expval, 0, !dbg !1193
  br i1 %tobool, label %if.then, label %if.end, !dbg !1196

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !1193

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !1197

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !1199

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !1199

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !1197

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 469, i32 0, i64 12) #13, !dbg !1201, !srcloc !1203
  br label %do.cond5, !dbg !1201

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1201

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !1197

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !1197

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !1197

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !1196

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !1196

do.end10:                                         ; preds = %do.cond9
  %2 = load i64, ptr %size.addr, align 8, !dbg !1204
  %3 = load i64, ptr %start.addr, align 8, !dbg !1206
  %sub = sub i64 -1, %3, !dbg !1207
  %cmp11 = icmp ugt i64 %2, %sub, !dbg !1208
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !1209

if.then13:                                        ; preds = %do.end10
  %4 = load i64, ptr %start.addr, align 8, !dbg !1210
  %sub14 = sub i64 -1, %4, !dbg !1211
  store i64 %sub14, ptr %size.addr, align 8, !dbg !1212
  br label %if.end15, !dbg !1213

if.end15:                                         ; preds = %if.then13, %do.end10
  %5 = load i64, ptr %start.addr, align 8, !dbg !1214
  %6 = load i64, ptr %size.addr, align 8, !dbg !1215
  %add = add i64 %5, %6, !dbg !1216
  store i64 %add, ptr %end, align 8, !dbg !1217
  br label %do.body16, !dbg !1218

do.body16:                                        ; preds = %if.end15
  br label %do.cond17, !dbg !1220

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1220

do.end18:                                         ; preds = %do.cond17
  %7 = load i64, ptr %start.addr, align 8, !dbg !1218
  %8 = load i64, ptr %end, align 8, !dbg !1218
  %sub19 = sub i64 %8, 1, !dbg !1218
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.34, i64 noundef %7, i64 noundef %sub19) #14, !dbg !1218
  store i32 %call, ptr %tmp, align 4, !dbg !1220
  %9 = load i32, ptr %tmp, align 4, !dbg !1218
  %10 = load i32, ptr %old_type.addr, align 4, !dbg !1222
  call void @e820_print_type(i32 noundef %10) #14, !dbg !1223
  br label %do.body20, !dbg !1224

do.body20:                                        ; preds = %do.end18
  br label %do.cond21, !dbg !1226

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1226

do.end22:                                         ; preds = %do.cond21
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.35) #14, !dbg !1224
  store i32 %call24, ptr %tmp23, align 4, !dbg !1226
  %11 = load i32, ptr %tmp23, align 4, !dbg !1224
  %12 = load i32, ptr %new_type.addr, align 4, !dbg !1228
  call void @e820_print_type(i32 noundef %12) #14, !dbg !1229
  br label %do.body25, !dbg !1230

do.body25:                                        ; preds = %do.end22
  br label %do.cond26, !dbg !1232

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !1232

do.end27:                                         ; preds = %do.cond26
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #14, !dbg !1230
  store i32 %call29, ptr %tmp28, align 4, !dbg !1232
  %13 = load i32, ptr %tmp28, align 4, !dbg !1230
  store i32 0, ptr %i, align 4, !dbg !1234
  br label %for.cond, !dbg !1235

for.cond:                                         ; preds = %for.inc, %do.end27
  %14 = load i32, ptr %i, align 4, !dbg !1236
  %15 = load ptr, ptr %table.addr, align 8, !dbg !1237
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %15, i32 0, i32 0, !dbg !1238
  %16 = load i32, ptr %nr_entries, align 4, !dbg !1238
  %cmp30 = icmp ult i32 %14, %16, !dbg !1239
  br i1 %cmp30, label %for.body, label %for.end, !dbg !1240

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry32) #13, !dbg !1241
  call void @llvm.dbg.declare(metadata ptr %entry32, metadata !1168, metadata !DIExpression()), !dbg !1242
  %17 = load ptr, ptr %table.addr, align 8, !dbg !1243
  %entries = getelementptr inbounds %struct.e820_table, ptr %17, i32 0, i32 1, !dbg !1244
  %18 = load i32, ptr %i, align 4, !dbg !1245
  %idxprom = zext i32 %18 to i64, !dbg !1243
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !1243
  store ptr %arrayidx, ptr %entry32, align 8, !dbg !1242
  call void @llvm.lifetime.start.p0(i64 8, ptr %final_start) #13, !dbg !1246
  call void @llvm.dbg.declare(metadata ptr %final_start, metadata !1172, metadata !DIExpression()), !dbg !1247
  call void @llvm.lifetime.start.p0(i64 8, ptr %final_end) #13, !dbg !1246
  call void @llvm.dbg.declare(metadata ptr %final_end, metadata !1173, metadata !DIExpression()), !dbg !1248
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_end) #13, !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %entry_end, metadata !1174, metadata !DIExpression()), !dbg !1250
  %19 = load ptr, ptr %entry32, align 8, !dbg !1251
  %type = getelementptr inbounds %struct.e820_entry, ptr %19, i32 0, i32 2, !dbg !1253
  %20 = load i32, ptr %type, align 1, !dbg !1253
  %21 = load i32, ptr %old_type.addr, align 4, !dbg !1254
  %cmp33 = icmp ne i32 %20, %21, !dbg !1255
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !1256

if.then35:                                        ; preds = %for.body
  store i32 18, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1257

if.end36:                                         ; preds = %for.body
  %22 = load ptr, ptr %entry32, align 8, !dbg !1258
  %addr = getelementptr inbounds %struct.e820_entry, ptr %22, i32 0, i32 0, !dbg !1259
  %23 = load i64, ptr %addr, align 1, !dbg !1259
  %24 = load ptr, ptr %entry32, align 8, !dbg !1260
  %size37 = getelementptr inbounds %struct.e820_entry, ptr %24, i32 0, i32 1, !dbg !1261
  %25 = load i64, ptr %size37, align 1, !dbg !1261
  %add38 = add i64 %23, %25, !dbg !1262
  store i64 %add38, ptr %entry_end, align 8, !dbg !1263
  %26 = load ptr, ptr %entry32, align 8, !dbg !1264
  %addr39 = getelementptr inbounds %struct.e820_entry, ptr %26, i32 0, i32 0, !dbg !1266
  %27 = load i64, ptr %addr39, align 1, !dbg !1266
  %28 = load i64, ptr %start.addr, align 8, !dbg !1267
  %cmp40 = icmp uge i64 %27, %28, !dbg !1268
  br i1 %cmp40, label %land.lhs.true, label %if.end48, !dbg !1269

land.lhs.true:                                    ; preds = %if.end36
  %29 = load i64, ptr %entry_end, align 8, !dbg !1270
  %30 = load i64, ptr %end, align 8, !dbg !1271
  %cmp42 = icmp ule i64 %29, %30, !dbg !1272
  br i1 %cmp42, label %if.then44, label %if.end48, !dbg !1273

if.then44:                                        ; preds = %land.lhs.true
  %31 = load i32, ptr %new_type.addr, align 4, !dbg !1274
  %32 = load ptr, ptr %entry32, align 8, !dbg !1276
  %type45 = getelementptr inbounds %struct.e820_entry, ptr %32, i32 0, i32 2, !dbg !1277
  store i32 %31, ptr %type45, align 1, !dbg !1278
  %33 = load ptr, ptr %entry32, align 8, !dbg !1279
  %size46 = getelementptr inbounds %struct.e820_entry, ptr %33, i32 0, i32 1, !dbg !1280
  %34 = load i64, ptr %size46, align 1, !dbg !1280
  %35 = load i64, ptr %real_updated_size, align 8, !dbg !1281
  %add47 = add i64 %35, %34, !dbg !1281
  store i64 %add47, ptr %real_updated_size, align 8, !dbg !1281
  store i32 18, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1282

if.end48:                                         ; preds = %land.lhs.true, %if.end36
  %36 = load ptr, ptr %entry32, align 8, !dbg !1283
  %addr49 = getelementptr inbounds %struct.e820_entry, ptr %36, i32 0, i32 0, !dbg !1285
  %37 = load i64, ptr %addr49, align 1, !dbg !1285
  %38 = load i64, ptr %start.addr, align 8, !dbg !1286
  %cmp50 = icmp ult i64 %37, %38, !dbg !1287
  br i1 %cmp50, label %land.lhs.true52, label %if.end62, !dbg !1288

land.lhs.true52:                                  ; preds = %if.end48
  %39 = load i64, ptr %entry_end, align 8, !dbg !1289
  %40 = load i64, ptr %end, align 8, !dbg !1290
  %cmp53 = icmp ugt i64 %39, %40, !dbg !1291
  br i1 %cmp53, label %if.then55, label %if.end62, !dbg !1292

if.then55:                                        ; preds = %land.lhs.true52
  %41 = load ptr, ptr %table.addr, align 8, !dbg !1293
  %42 = load i64, ptr %start.addr, align 8, !dbg !1295
  %43 = load i64, ptr %size.addr, align 8, !dbg !1296
  %44 = load i32, ptr %new_type.addr, align 4, !dbg !1297
  call void @__e820__range_add(ptr noundef %41, i64 noundef %42, i64 noundef %43, i32 noundef %44) #14, !dbg !1298
  %45 = load ptr, ptr %table.addr, align 8, !dbg !1299
  %46 = load i64, ptr %end, align 8, !dbg !1300
  %47 = load i64, ptr %entry_end, align 8, !dbg !1301
  %48 = load i64, ptr %end, align 8, !dbg !1302
  %sub56 = sub i64 %47, %48, !dbg !1303
  %49 = load ptr, ptr %entry32, align 8, !dbg !1304
  %type57 = getelementptr inbounds %struct.e820_entry, ptr %49, i32 0, i32 2, !dbg !1305
  %50 = load i32, ptr %type57, align 1, !dbg !1305
  call void @__e820__range_add(ptr noundef %45, i64 noundef %46, i64 noundef %sub56, i32 noundef %50) #14, !dbg !1306
  %51 = load i64, ptr %start.addr, align 8, !dbg !1307
  %52 = load ptr, ptr %entry32, align 8, !dbg !1308
  %addr58 = getelementptr inbounds %struct.e820_entry, ptr %52, i32 0, i32 0, !dbg !1309
  %53 = load i64, ptr %addr58, align 1, !dbg !1309
  %sub59 = sub i64 %51, %53, !dbg !1310
  %54 = load ptr, ptr %entry32, align 8, !dbg !1311
  %size60 = getelementptr inbounds %struct.e820_entry, ptr %54, i32 0, i32 1, !dbg !1312
  store i64 %sub59, ptr %size60, align 1, !dbg !1313
  %55 = load i64, ptr %size.addr, align 8, !dbg !1314
  %56 = load i64, ptr %real_updated_size, align 8, !dbg !1315
  %add61 = add i64 %56, %55, !dbg !1315
  store i64 %add61, ptr %real_updated_size, align 8, !dbg !1315
  store i32 18, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1316

if.end62:                                         ; preds = %land.lhs.true52, %if.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x343) #13, !dbg !1317
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x343, metadata !1175, metadata !DIExpression()), !dbg !1317
  %57 = load i64, ptr %start.addr, align 8, !dbg !1317
  store i64 %57, ptr %__UNIQUE_ID___x343, align 8, !dbg !1317
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y344) #13, !dbg !1317
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y344, metadata !1177, metadata !DIExpression()), !dbg !1317
  %58 = load ptr, ptr %entry32, align 8, !dbg !1317
  %addr63 = getelementptr inbounds %struct.e820_entry, ptr %58, i32 0, i32 0, !dbg !1317
  %59 = load i64, ptr %addr63, align 1, !dbg !1317
  store i64 %59, ptr %__UNIQUE_ID___y344, align 8, !dbg !1317
  %60 = load i64, ptr %__UNIQUE_ID___x343, align 8, !dbg !1317
  %61 = load i64, ptr %__UNIQUE_ID___y344, align 8, !dbg !1317
  %cmp65 = icmp ugt i64 %60, %61, !dbg !1317
  br i1 %cmp65, label %cond.true, label %cond.false, !dbg !1317

cond.true:                                        ; preds = %if.end62
  %62 = load i64, ptr %__UNIQUE_ID___x343, align 8, !dbg !1317
  br label %cond.end, !dbg !1317

cond.false:                                       ; preds = %if.end62
  %63 = load i64, ptr %__UNIQUE_ID___y344, align 8, !dbg !1317
  br label %cond.end, !dbg !1317

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %62, %cond.true ], [ %63, %cond.false ], !dbg !1317
  store i64 %cond, ptr %tmp64, align 8, !dbg !1317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y344) #13, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x343) #13, !dbg !1318
  %64 = load i64, ptr %tmp64, align 8, !dbg !1317
  store i64 %64, ptr %final_start, align 8, !dbg !1319
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x345) #13, !dbg !1320
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x345, metadata !1178, metadata !DIExpression()), !dbg !1320
  %65 = load i64, ptr %end, align 8, !dbg !1320
  store i64 %65, ptr %__UNIQUE_ID___x345, align 8, !dbg !1320
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y346) #13, !dbg !1320
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y346, metadata !1180, metadata !DIExpression()), !dbg !1320
  %66 = load i64, ptr %entry_end, align 8, !dbg !1320
  store i64 %66, ptr %__UNIQUE_ID___y346, align 8, !dbg !1320
  %67 = load i64, ptr %__UNIQUE_ID___x345, align 8, !dbg !1320
  %68 = load i64, ptr %__UNIQUE_ID___y346, align 8, !dbg !1320
  %cmp68 = icmp ult i64 %67, %68, !dbg !1320
  br i1 %cmp68, label %cond.true70, label %cond.false71, !dbg !1320

cond.true70:                                      ; preds = %cond.end
  %69 = load i64, ptr %__UNIQUE_ID___x345, align 8, !dbg !1320
  br label %cond.end72, !dbg !1320

cond.false71:                                     ; preds = %cond.end
  %70 = load i64, ptr %__UNIQUE_ID___y346, align 8, !dbg !1320
  br label %cond.end72, !dbg !1320

cond.end72:                                       ; preds = %cond.false71, %cond.true70
  %cond73 = phi i64 [ %69, %cond.true70 ], [ %70, %cond.false71 ], !dbg !1320
  store i64 %cond73, ptr %tmp67, align 8, !dbg !1320
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y346) #13, !dbg !1321
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x345) #13, !dbg !1321
  %71 = load i64, ptr %tmp67, align 8, !dbg !1320
  store i64 %71, ptr %final_end, align 8, !dbg !1322
  %72 = load i64, ptr %final_start, align 8, !dbg !1323
  %73 = load i64, ptr %final_end, align 8, !dbg !1325
  %cmp74 = icmp uge i64 %72, %73, !dbg !1326
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !1327

if.then76:                                        ; preds = %cond.end72
  store i32 18, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1328

if.end77:                                         ; preds = %cond.end72
  %74 = load ptr, ptr %table.addr, align 8, !dbg !1329
  %75 = load i64, ptr %final_start, align 8, !dbg !1330
  %76 = load i64, ptr %final_end, align 8, !dbg !1331
  %77 = load i64, ptr %final_start, align 8, !dbg !1332
  %sub78 = sub i64 %76, %77, !dbg !1333
  %78 = load i32, ptr %new_type.addr, align 4, !dbg !1334
  call void @__e820__range_add(ptr noundef %74, i64 noundef %75, i64 noundef %sub78, i32 noundef %78) #14, !dbg !1335
  %79 = load i64, ptr %final_end, align 8, !dbg !1336
  %80 = load i64, ptr %final_start, align 8, !dbg !1337
  %sub79 = sub i64 %79, %80, !dbg !1338
  %81 = load i64, ptr %real_updated_size, align 8, !dbg !1339
  %add80 = add i64 %81, %sub79, !dbg !1339
  store i64 %add80, ptr %real_updated_size, align 8, !dbg !1339
  %82 = load i64, ptr %final_end, align 8, !dbg !1340
  %83 = load i64, ptr %final_start, align 8, !dbg !1341
  %sub81 = sub i64 %82, %83, !dbg !1342
  %84 = load ptr, ptr %entry32, align 8, !dbg !1343
  %size82 = getelementptr inbounds %struct.e820_entry, ptr %84, i32 0, i32 1, !dbg !1344
  %85 = load i64, ptr %size82, align 1, !dbg !1345
  %sub83 = sub i64 %85, %sub81, !dbg !1345
  store i64 %sub83, ptr %size82, align 1, !dbg !1345
  %86 = load ptr, ptr %entry32, align 8, !dbg !1346
  %addr84 = getelementptr inbounds %struct.e820_entry, ptr %86, i32 0, i32 0, !dbg !1348
  %87 = load i64, ptr %addr84, align 1, !dbg !1348
  %88 = load i64, ptr %final_start, align 8, !dbg !1349
  %cmp85 = icmp ult i64 %87, %88, !dbg !1350
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !1351

if.then87:                                        ; preds = %if.end77
  store i32 18, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1352

if.end88:                                         ; preds = %if.end77
  %89 = load i64, ptr %final_end, align 8, !dbg !1353
  %90 = load ptr, ptr %entry32, align 8, !dbg !1354
  %addr89 = getelementptr inbounds %struct.e820_entry, ptr %90, i32 0, i32 0, !dbg !1355
  store i64 %89, ptr %addr89, align 1, !dbg !1356
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1357
  br label %cleanup, !dbg !1357

cleanup:                                          ; preds = %if.end88, %if.then87, %if.then76, %if.then55, %if.then44, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_end) #13, !dbg !1357
  call void @llvm.lifetime.end.p0(i64 8, ptr %final_end) #13, !dbg !1357
  call void @llvm.lifetime.end.p0(i64 8, ptr %final_start) #13, !dbg !1357
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry32) #13, !dbg !1357
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 18, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1358

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %91 = load i32, ptr %i, align 4, !dbg !1359
  %inc = add i32 %91, 1, !dbg !1359
  store i32 %inc, ptr %i, align 4, !dbg !1359
  br label %for.cond, !dbg !1360, !llvm.loop !1361

for.end:                                          ; preds = %for.cond
  %92 = load i64, ptr %real_updated_size, align 8, !dbg !1363
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %real_updated_size) #13, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #13, !dbg !1364
  ret i64 %92, !dbg !1365

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i64 @e820__range_remove(i64 noundef %start, i64 noundef %size, i32 noundef %old_type, i1 noundef zeroext %check_type) #2 section ".init.text" align 16 !dbg !1366 {
entry:
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %old_type.addr = alloca i32, align 4
  %check_type.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %end = alloca i64, align 8
  %real_removed_size = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %entry11 = alloca ptr, align 8
  %final_start = alloca i64, align 8
  %final_end = alloca i64, align 8
  %entry_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x347 = alloca i64, align 8
  %__UNIQUE_ID___y348 = alloca i64, align 8
  %tmp39 = alloca i64, align 8
  %__UNIQUE_ID___x349 = alloca i64, align 8
  %__UNIQUE_ID___y350 = alloca i64, align 8
  %tmp41 = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1370, metadata !DIExpression()), !dbg !1390
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1371, metadata !DIExpression()), !dbg !1391
  store i32 %old_type, ptr %old_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old_type.addr, metadata !1372, metadata !DIExpression()), !dbg !1392
  %frombool = zext i1 %check_type to i8
  store i8 %frombool, ptr %check_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %check_type.addr, metadata !1373, metadata !DIExpression()), !dbg !1393
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1394
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1374, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #13, !dbg !1396
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1375, metadata !DIExpression()), !dbg !1397
  call void @llvm.lifetime.start.p0(i64 8, ptr %real_removed_size) #13, !dbg !1398
  call void @llvm.dbg.declare(metadata ptr %real_removed_size, metadata !1376, metadata !DIExpression()), !dbg !1399
  store i64 0, ptr %real_removed_size, align 8, !dbg !1399
  %0 = load i64, ptr %size.addr, align 8, !dbg !1400
  %1 = load i64, ptr %start.addr, align 8, !dbg !1402
  %sub = sub i64 -1, %1, !dbg !1403
  %cmp = icmp ugt i64 %0, %sub, !dbg !1404
  br i1 %cmp, label %if.then, label %if.end, !dbg !1405

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %start.addr, align 8, !dbg !1406
  %sub1 = sub i64 -1, %2, !dbg !1407
  store i64 %sub1, ptr %size.addr, align 8, !dbg !1408
  br label %if.end, !dbg !1409

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %start.addr, align 8, !dbg !1410
  %4 = load i64, ptr %size.addr, align 8, !dbg !1411
  %add = add i64 %3, %4, !dbg !1412
  store i64 %add, ptr %end, align 8, !dbg !1413
  br label %do.body, !dbg !1414

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !1416

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1416

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %start.addr, align 8, !dbg !1414
  %6 = load i64, ptr %end, align 8, !dbg !1414
  %sub2 = sub i64 %6, 1, !dbg !1414
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i64 noundef %5, i64 noundef %sub2) #14, !dbg !1414
  store i32 %call, ptr %tmp, align 4, !dbg !1416
  %7 = load i32, ptr %tmp, align 4, !dbg !1414
  %8 = load i8, ptr %check_type.addr, align 1, !dbg !1418, !range !1420, !noundef !1421
  %tobool = trunc i8 %8 to i1, !dbg !1418
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !1422

if.then3:                                         ; preds = %do.end
  %9 = load i32, ptr %old_type.addr, align 4, !dbg !1423
  call void @e820_print_type(i32 noundef %9) #14, !dbg !1424
  br label %if.end4, !dbg !1424

if.end4:                                          ; preds = %if.then3, %do.end
  br label %do.body5, !dbg !1425

do.body5:                                         ; preds = %if.end4
  br label %do.cond6, !dbg !1427

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1427

do.end7:                                          ; preds = %do.cond6
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #14, !dbg !1425
  store i32 %call9, ptr %tmp8, align 4, !dbg !1427
  %10 = load i32, ptr %tmp8, align 4, !dbg !1425
  store i32 0, ptr %i, align 4, !dbg !1429
  br label %for.cond, !dbg !1430

for.cond:                                         ; preds = %for.inc, %do.end7
  %11 = load i32, ptr %i, align 4, !dbg !1431
  %12 = load ptr, ptr @e820_table, align 8, !dbg !1432
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %12, i32 0, i32 0, !dbg !1433
  %13 = load i32, ptr %nr_entries, align 4, !dbg !1433
  %cmp10 = icmp ult i32 %11, %13, !dbg !1434
  br i1 %cmp10, label %for.body, label %for.end, !dbg !1435

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry11) #13, !dbg !1436
  call void @llvm.dbg.declare(metadata ptr %entry11, metadata !1377, metadata !DIExpression()), !dbg !1437
  %14 = load ptr, ptr @e820_table, align 8, !dbg !1438
  %entries = getelementptr inbounds %struct.e820_table, ptr %14, i32 0, i32 1, !dbg !1439
  %15 = load i32, ptr %i, align 4, !dbg !1440
  %idxprom = sext i32 %15 to i64, !dbg !1438
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !1438
  store ptr %arrayidx, ptr %entry11, align 8, !dbg !1437
  call void @llvm.lifetime.start.p0(i64 8, ptr %final_start) #13, !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %final_start, metadata !1381, metadata !DIExpression()), !dbg !1442
  call void @llvm.lifetime.start.p0(i64 8, ptr %final_end) #13, !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %final_end, metadata !1382, metadata !DIExpression()), !dbg !1443
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_end) #13, !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %entry_end, metadata !1383, metadata !DIExpression()), !dbg !1445
  %16 = load i8, ptr %check_type.addr, align 1, !dbg !1446, !range !1420, !noundef !1421
  %tobool12 = trunc i8 %16 to i1, !dbg !1446
  br i1 %tobool12, label %land.lhs.true, label %if.end15, !dbg !1448

land.lhs.true:                                    ; preds = %for.body
  %17 = load ptr, ptr %entry11, align 8, !dbg !1449
  %type = getelementptr inbounds %struct.e820_entry, ptr %17, i32 0, i32 2, !dbg !1450
  %18 = load i32, ptr %type, align 1, !dbg !1450
  %19 = load i32, ptr %old_type.addr, align 4, !dbg !1451
  %cmp13 = icmp ne i32 %18, %19, !dbg !1452
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1453

if.then14:                                        ; preds = %land.lhs.true
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1454

if.end15:                                         ; preds = %land.lhs.true, %for.body
  %20 = load ptr, ptr %entry11, align 8, !dbg !1455
  %addr = getelementptr inbounds %struct.e820_entry, ptr %20, i32 0, i32 0, !dbg !1456
  %21 = load i64, ptr %addr, align 1, !dbg !1456
  %22 = load ptr, ptr %entry11, align 8, !dbg !1457
  %size16 = getelementptr inbounds %struct.e820_entry, ptr %22, i32 0, i32 1, !dbg !1458
  %23 = load i64, ptr %size16, align 1, !dbg !1458
  %add17 = add i64 %21, %23, !dbg !1459
  store i64 %add17, ptr %entry_end, align 8, !dbg !1460
  %24 = load ptr, ptr %entry11, align 8, !dbg !1461
  %addr18 = getelementptr inbounds %struct.e820_entry, ptr %24, i32 0, i32 0, !dbg !1463
  %25 = load i64, ptr %addr18, align 1, !dbg !1463
  %26 = load i64, ptr %start.addr, align 8, !dbg !1464
  %cmp19 = icmp uge i64 %25, %26, !dbg !1465
  br i1 %cmp19, label %land.lhs.true20, label %if.end25, !dbg !1466

land.lhs.true20:                                  ; preds = %if.end15
  %27 = load i64, ptr %entry_end, align 8, !dbg !1467
  %28 = load i64, ptr %end, align 8, !dbg !1468
  %cmp21 = icmp ule i64 %27, %28, !dbg !1469
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !1470

if.then22:                                        ; preds = %land.lhs.true20
  %29 = load ptr, ptr %entry11, align 8, !dbg !1471
  %size23 = getelementptr inbounds %struct.e820_entry, ptr %29, i32 0, i32 1, !dbg !1473
  %30 = load i64, ptr %size23, align 1, !dbg !1473
  %31 = load i64, ptr %real_removed_size, align 8, !dbg !1474
  %add24 = add i64 %31, %30, !dbg !1474
  store i64 %add24, ptr %real_removed_size, align 8, !dbg !1474
  %32 = load ptr, ptr %entry11, align 8, !dbg !1475
  call void @llvm.memset.p0.i64(ptr align 1 %32, i8 0, i64 20, i1 false), !dbg !1476
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1477

if.end25:                                         ; preds = %land.lhs.true20, %if.end15
  %33 = load ptr, ptr %entry11, align 8, !dbg !1478
  %addr26 = getelementptr inbounds %struct.e820_entry, ptr %33, i32 0, i32 0, !dbg !1480
  %34 = load i64, ptr %addr26, align 1, !dbg !1480
  %35 = load i64, ptr %start.addr, align 8, !dbg !1481
  %cmp27 = icmp ult i64 %34, %35, !dbg !1482
  br i1 %cmp27, label %land.lhs.true28, label %if.end37, !dbg !1483

land.lhs.true28:                                  ; preds = %if.end25
  %36 = load i64, ptr %entry_end, align 8, !dbg !1484
  %37 = load i64, ptr %end, align 8, !dbg !1485
  %cmp29 = icmp ugt i64 %36, %37, !dbg !1486
  br i1 %cmp29, label %if.then30, label %if.end37, !dbg !1487

if.then30:                                        ; preds = %land.lhs.true28
  %38 = load i64, ptr %end, align 8, !dbg !1488
  %39 = load i64, ptr %entry_end, align 8, !dbg !1490
  %40 = load i64, ptr %end, align 8, !dbg !1491
  %sub31 = sub i64 %39, %40, !dbg !1492
  %41 = load ptr, ptr %entry11, align 8, !dbg !1493
  %type32 = getelementptr inbounds %struct.e820_entry, ptr %41, i32 0, i32 2, !dbg !1494
  %42 = load i32, ptr %type32, align 1, !dbg !1494
  call void @e820__range_add(i64 noundef %38, i64 noundef %sub31, i32 noundef %42) #14, !dbg !1495
  %43 = load i64, ptr %start.addr, align 8, !dbg !1496
  %44 = load ptr, ptr %entry11, align 8, !dbg !1497
  %addr33 = getelementptr inbounds %struct.e820_entry, ptr %44, i32 0, i32 0, !dbg !1498
  %45 = load i64, ptr %addr33, align 1, !dbg !1498
  %sub34 = sub i64 %43, %45, !dbg !1499
  %46 = load ptr, ptr %entry11, align 8, !dbg !1500
  %size35 = getelementptr inbounds %struct.e820_entry, ptr %46, i32 0, i32 1, !dbg !1501
  store i64 %sub34, ptr %size35, align 1, !dbg !1502
  %47 = load i64, ptr %size.addr, align 8, !dbg !1503
  %48 = load i64, ptr %real_removed_size, align 8, !dbg !1504
  %add36 = add i64 %48, %47, !dbg !1504
  store i64 %add36, ptr %real_removed_size, align 8, !dbg !1504
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1505

if.end37:                                         ; preds = %land.lhs.true28, %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x347) #13, !dbg !1506
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x347, metadata !1384, metadata !DIExpression()), !dbg !1506
  %49 = load i64, ptr %start.addr, align 8, !dbg !1506
  store i64 %49, ptr %__UNIQUE_ID___x347, align 8, !dbg !1506
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y348) #13, !dbg !1506
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y348, metadata !1386, metadata !DIExpression()), !dbg !1506
  %50 = load ptr, ptr %entry11, align 8, !dbg !1506
  %addr38 = getelementptr inbounds %struct.e820_entry, ptr %50, i32 0, i32 0, !dbg !1506
  %51 = load i64, ptr %addr38, align 1, !dbg !1506
  store i64 %51, ptr %__UNIQUE_ID___y348, align 8, !dbg !1506
  %52 = load i64, ptr %__UNIQUE_ID___x347, align 8, !dbg !1506
  %53 = load i64, ptr %__UNIQUE_ID___y348, align 8, !dbg !1506
  %cmp40 = icmp ugt i64 %52, %53, !dbg !1506
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !1506

cond.true:                                        ; preds = %if.end37
  %54 = load i64, ptr %__UNIQUE_ID___x347, align 8, !dbg !1506
  br label %cond.end, !dbg !1506

cond.false:                                       ; preds = %if.end37
  %55 = load i64, ptr %__UNIQUE_ID___y348, align 8, !dbg !1506
  br label %cond.end, !dbg !1506

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %54, %cond.true ], [ %55, %cond.false ], !dbg !1506
  store i64 %cond, ptr %tmp39, align 8, !dbg !1506
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y348) #13, !dbg !1507
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x347) #13, !dbg !1507
  %56 = load i64, ptr %tmp39, align 8, !dbg !1506
  store i64 %56, ptr %final_start, align 8, !dbg !1508
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x349) #13, !dbg !1509
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x349, metadata !1387, metadata !DIExpression()), !dbg !1509
  %57 = load i64, ptr %end, align 8, !dbg !1509
  store i64 %57, ptr %__UNIQUE_ID___x349, align 8, !dbg !1509
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y350) #13, !dbg !1509
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y350, metadata !1389, metadata !DIExpression()), !dbg !1509
  %58 = load i64, ptr %entry_end, align 8, !dbg !1509
  store i64 %58, ptr %__UNIQUE_ID___y350, align 8, !dbg !1509
  %59 = load i64, ptr %__UNIQUE_ID___x349, align 8, !dbg !1509
  %60 = load i64, ptr %__UNIQUE_ID___y350, align 8, !dbg !1509
  %cmp42 = icmp ult i64 %59, %60, !dbg !1509
  br i1 %cmp42, label %cond.true43, label %cond.false44, !dbg !1509

cond.true43:                                      ; preds = %cond.end
  %61 = load i64, ptr %__UNIQUE_ID___x349, align 8, !dbg !1509
  br label %cond.end45, !dbg !1509

cond.false44:                                     ; preds = %cond.end
  %62 = load i64, ptr %__UNIQUE_ID___y350, align 8, !dbg !1509
  br label %cond.end45, !dbg !1509

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi i64 [ %61, %cond.true43 ], [ %62, %cond.false44 ], !dbg !1509
  store i64 %cond46, ptr %tmp41, align 8, !dbg !1509
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y350) #13, !dbg !1510
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x349) #13, !dbg !1510
  %63 = load i64, ptr %tmp41, align 8, !dbg !1509
  store i64 %63, ptr %final_end, align 8, !dbg !1511
  %64 = load i64, ptr %final_start, align 8, !dbg !1512
  %65 = load i64, ptr %final_end, align 8, !dbg !1514
  %cmp47 = icmp uge i64 %64, %65, !dbg !1515
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !1516

if.then48:                                        ; preds = %cond.end45
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1517

if.end49:                                         ; preds = %cond.end45
  %66 = load i64, ptr %final_end, align 8, !dbg !1518
  %67 = load i64, ptr %final_start, align 8, !dbg !1519
  %sub50 = sub i64 %66, %67, !dbg !1520
  %68 = load i64, ptr %real_removed_size, align 8, !dbg !1521
  %add51 = add i64 %68, %sub50, !dbg !1521
  store i64 %add51, ptr %real_removed_size, align 8, !dbg !1521
  %69 = load i64, ptr %final_end, align 8, !dbg !1522
  %70 = load i64, ptr %final_start, align 8, !dbg !1523
  %sub52 = sub i64 %69, %70, !dbg !1524
  %71 = load ptr, ptr %entry11, align 8, !dbg !1525
  %size53 = getelementptr inbounds %struct.e820_entry, ptr %71, i32 0, i32 1, !dbg !1526
  %72 = load i64, ptr %size53, align 1, !dbg !1527
  %sub54 = sub i64 %72, %sub52, !dbg !1527
  store i64 %sub54, ptr %size53, align 1, !dbg !1527
  %73 = load ptr, ptr %entry11, align 8, !dbg !1528
  %addr55 = getelementptr inbounds %struct.e820_entry, ptr %73, i32 0, i32 0, !dbg !1530
  %74 = load i64, ptr %addr55, align 1, !dbg !1530
  %75 = load i64, ptr %final_start, align 8, !dbg !1531
  %cmp56 = icmp ult i64 %74, %75, !dbg !1532
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !1533

if.then57:                                        ; preds = %if.end49
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1534

if.end58:                                         ; preds = %if.end49
  %76 = load i64, ptr %final_end, align 8, !dbg !1535
  %77 = load ptr, ptr %entry11, align 8, !dbg !1536
  %addr59 = getelementptr inbounds %struct.e820_entry, ptr %77, i32 0, i32 0, !dbg !1537
  store i64 %76, ptr %addr59, align 1, !dbg !1538
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1539
  br label %cleanup, !dbg !1539

cleanup:                                          ; preds = %if.end58, %if.then57, %if.then48, %if.then30, %if.then22, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_end) #13, !dbg !1539
  call void @llvm.lifetime.end.p0(i64 8, ptr %final_end) #13, !dbg !1539
  call void @llvm.lifetime.end.p0(i64 8, ptr %final_start) #13, !dbg !1539
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry11) #13, !dbg !1539
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1540

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %78 = load i32, ptr %i, align 4, !dbg !1541
  %inc = add i32 %78, 1, !dbg !1541
  store i32 %inc, ptr %i, align 4, !dbg !1541
  br label %for.cond, !dbg !1542, !llvm.loop !1543

for.end:                                          ; preds = %for.cond
  %79 = load i64, ptr %real_removed_size, align 8, !dbg !1545
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %real_removed_size) #13, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #13, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1546
  ret i64 %79, !dbg !1547

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__update_table_print() #2 section ".init.text" align 16 !dbg !1548 {
entry:
  %tmp = alloca i32, align 4
  %0 = load ptr, ptr @e820_table, align 8, !dbg !1551
  %call = call i32 @e820__update_table(ptr noundef %0) #14, !dbg !1553
  %tobool = icmp ne i32 %call, 0, !dbg !1553
  br i1 %tobool, label %if.then, label %if.end, !dbg !1554

if.then:                                          ; preds = %entry
  br label %return, !dbg !1555

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1556

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !1558

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #14, !dbg !1556
  store i32 %call1, ptr %tmp, align 4, !dbg !1558
  %1 = load i32, ptr %tmp, align 4, !dbg !1556
  call void @e820__print_table(ptr noundef @.str.5) #14, !dbg !1560
  br label %return, !dbg !1561

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !1561
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__setup_pci_gap() #2 section ".init.text" align 16 !dbg !1562 {
entry:
  %gapstart = alloca i64, align 8
  %gapsize = alloca i64, align 8
  %found = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %gapstart) #13, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %gapstart, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.start.p0(i64 8, ptr %gapsize) #13, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %gapsize, metadata !1565, metadata !DIExpression()), !dbg !1569
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #13, !dbg !1570
  call void @llvm.dbg.declare(metadata ptr %found, metadata !1566, metadata !DIExpression()), !dbg !1571
  store i64 4194304, ptr %gapsize, align 8, !dbg !1572
  %call = call i32 @e820_search_gap(ptr noundef %gapstart, ptr noundef %gapsize) #14, !dbg !1573
  store i32 %call, ptr %found, align 4, !dbg !1574
  %0 = load i32, ptr %found, align 4, !dbg !1575
  %tobool = icmp ne i32 %0, 0, !dbg !1575
  br i1 %tobool, label %if.end, label %if.then, !dbg !1577

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @max_pfn, align 8, !dbg !1578
  %shl = shl i64 %1, 12, !dbg !1580
  %add = add i64 %shl, 1048576, !dbg !1581
  store i64 %add, ptr %gapstart, align 8, !dbg !1582
  br label %do.body, !dbg !1583

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1585

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1585

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #14, !dbg !1583
  store i32 %call1, ptr %tmp, align 4, !dbg !1585
  %2 = load i32, ptr %tmp, align 4, !dbg !1583
  br label %do.body2, !dbg !1587

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !1589

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1589

do.end4:                                          ; preds = %do.cond3
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #14, !dbg !1587
  store i32 %call6, ptr %tmp5, align 4, !dbg !1589
  %3 = load i32, ptr %tmp5, align 4, !dbg !1587
  br label %if.end, !dbg !1591

if.end:                                           ; preds = %do.end4, %entry
  %4 = load i64, ptr %gapstart, align 8, !dbg !1592
  store i64 %4, ptr @pci_mem_start, align 8, !dbg !1593
  br label %do.body7, !dbg !1594

do.body7:                                         ; preds = %if.end
  br label %do.cond8, !dbg !1596

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !1596

do.end9:                                          ; preds = %do.cond8
  %5 = load i64, ptr %gapstart, align 8, !dbg !1594
  %6 = load i64, ptr %gapstart, align 8, !dbg !1594
  %7 = load i64, ptr %gapsize, align 8, !dbg !1594
  %add11 = add i64 %6, %7, !dbg !1594
  %sub = sub i64 %add11, 1, !dbg !1594
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i64 noundef %5, i64 noundef %sub) #14, !dbg !1594
  store i32 %call12, ptr %tmp10, align 4, !dbg !1596
  %8 = load i32, ptr %tmp10, align 4, !dbg !1594
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #13, !dbg !1598
  call void @llvm.lifetime.end.p0(i64 8, ptr %gapsize) #13, !dbg !1598
  call void @llvm.lifetime.end.p0(i64 8, ptr %gapstart) #13, !dbg !1598
  ret void, !dbg !1598
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @e820_search_gap(ptr noundef %gapstart, ptr noundef %gapsize) #2 section ".init.text" align 16 !dbg !1599 {
entry:
  %gapstart.addr = alloca ptr, align 8
  %gapsize.addr = alloca ptr, align 8
  %last = alloca i64, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %gap = alloca i64, align 8
  store ptr %gapstart, ptr %gapstart.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gapstart.addr, metadata !1604, metadata !DIExpression()), !dbg !1615
  store ptr %gapsize, ptr %gapsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gapsize.addr, metadata !1605, metadata !DIExpression()), !dbg !1616
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #13, !dbg !1617
  call void @llvm.dbg.declare(metadata ptr %last, metadata !1606, metadata !DIExpression()), !dbg !1618
  store i64 4294967296, ptr %last, align 8, !dbg !1618
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1619
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1607, metadata !DIExpression()), !dbg !1620
  %0 = load ptr, ptr @e820_table, align 8, !dbg !1621
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %0, i32 0, i32 0, !dbg !1622
  %1 = load i32, ptr %nr_entries, align 4, !dbg !1622
  store i32 %1, ptr %i, align 4, !dbg !1620
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #13, !dbg !1623
  call void @llvm.dbg.declare(metadata ptr %found, metadata !1608, metadata !DIExpression()), !dbg !1624
  store i32 0, ptr %found, align 4, !dbg !1624
  br label %while.cond, !dbg !1625

while.cond:                                       ; preds = %if.end10, %entry
  %2 = load i32, ptr %i, align 4, !dbg !1626
  %dec = add i32 %2, -1, !dbg !1626
  store i32 %dec, ptr %i, align 4, !dbg !1626
  %cmp = icmp sge i32 %dec, 0, !dbg !1627
  br i1 %cmp, label %while.body, label %while.end, !dbg !1625

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #13, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1609, metadata !DIExpression()), !dbg !1629
  %3 = load ptr, ptr @e820_table, align 8, !dbg !1630
  %entries = getelementptr inbounds %struct.e820_table, ptr %3, i32 0, i32 1, !dbg !1631
  %4 = load i32, ptr %i, align 4, !dbg !1632
  %idxprom = sext i32 %4 to i64, !dbg !1630
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !1630
  %addr = getelementptr inbounds %struct.e820_entry, ptr %arrayidx, i32 0, i32 0, !dbg !1633
  %5 = load i64, ptr %addr, align 4, !dbg !1633
  store i64 %5, ptr %start, align 8, !dbg !1629
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #13, !dbg !1634
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1611, metadata !DIExpression()), !dbg !1635
  %6 = load i64, ptr %start, align 8, !dbg !1636
  %7 = load ptr, ptr @e820_table, align 8, !dbg !1637
  %entries1 = getelementptr inbounds %struct.e820_table, ptr %7, i32 0, i32 1, !dbg !1638
  %8 = load i32, ptr %i, align 4, !dbg !1639
  %idxprom2 = sext i32 %8 to i64, !dbg !1637
  %arrayidx3 = getelementptr [320 x %struct.e820_entry], ptr %entries1, i64 0, i64 %idxprom2, !dbg !1637
  %size = getelementptr inbounds %struct.e820_entry, ptr %arrayidx3, i32 0, i32 1, !dbg !1640
  %9 = load i64, ptr %size, align 4, !dbg !1640
  %add = add i64 %6, %9, !dbg !1641
  store i64 %add, ptr %end, align 8, !dbg !1635
  %10 = load i64, ptr %last, align 8, !dbg !1642
  %11 = load i64, ptr %end, align 8, !dbg !1643
  %cmp4 = icmp ugt i64 %10, %11, !dbg !1644
  br i1 %cmp4, label %if.then, label %if.end7, !dbg !1645

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %gap) #13, !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %gap, metadata !1612, metadata !DIExpression()), !dbg !1647
  %12 = load i64, ptr %last, align 8, !dbg !1648
  %13 = load i64, ptr %end, align 8, !dbg !1649
  %sub = sub i64 %12, %13, !dbg !1650
  store i64 %sub, ptr %gap, align 8, !dbg !1647
  %14 = load i64, ptr %gap, align 8, !dbg !1651
  %15 = load ptr, ptr %gapsize.addr, align 8, !dbg !1653
  %16 = load i64, ptr %15, align 8, !dbg !1654
  %cmp5 = icmp uge i64 %14, %16, !dbg !1655
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1656

if.then6:                                         ; preds = %if.then
  %17 = load i64, ptr %gap, align 8, !dbg !1657
  %18 = load ptr, ptr %gapsize.addr, align 8, !dbg !1659
  store i64 %17, ptr %18, align 8, !dbg !1660
  %19 = load i64, ptr %end, align 8, !dbg !1661
  %20 = load ptr, ptr %gapstart.addr, align 8, !dbg !1662
  store i64 %19, ptr %20, align 8, !dbg !1663
  store i32 1, ptr %found, align 4, !dbg !1664
  br label %if.end, !dbg !1665

if.end:                                           ; preds = %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gap) #13, !dbg !1666
  br label %if.end7, !dbg !1667

if.end7:                                          ; preds = %if.end, %while.body
  %21 = load i64, ptr %start, align 8, !dbg !1668
  %22 = load i64, ptr %last, align 8, !dbg !1670
  %cmp8 = icmp ult i64 %21, %22, !dbg !1671
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1672

if.then9:                                         ; preds = %if.end7
  %23 = load i64, ptr %start, align 8, !dbg !1673
  store i64 %23, ptr %last, align 8, !dbg !1674
  br label %if.end10, !dbg !1675

if.end10:                                         ; preds = %if.then9, %if.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #13, !dbg !1676
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #13, !dbg !1676
  br label %while.cond, !dbg !1625, !llvm.loop !1677

while.end:                                        ; preds = %while.cond
  %24 = load i32, ptr %found, align 4, !dbg !1678
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #13, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #13, !dbg !1679
  ret i32 %24, !dbg !1680
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__reallocate_tables() #2 section ".init.text" align 16 !dbg !1681 {
entry:
  %n = alloca ptr, align 8
  %size = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #13, !dbg !1685
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1683, metadata !DIExpression()), !dbg !1686
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #13, !dbg !1687
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1684, metadata !DIExpression()), !dbg !1688
  %0 = load ptr, ptr @e820_table, align 8, !dbg !1689
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %0, i32 0, i32 0, !dbg !1690
  %1 = load i32, ptr %nr_entries, align 4, !dbg !1690
  %conv = zext i32 %1 to i64, !dbg !1689
  %mul = mul i64 20, %conv, !dbg !1691
  %add = add i64 4, %mul, !dbg !1692
  %conv1 = trunc i64 %add to i32, !dbg !1693
  store i32 %conv1, ptr %size, align 4, !dbg !1694
  %2 = load ptr, ptr @e820_table, align 8, !dbg !1695
  %3 = load i32, ptr %size, align 4, !dbg !1696
  %conv2 = sext i32 %3 to i64, !dbg !1696
  %call = call ptr @kmemdup(ptr noundef %2, i64 noundef %conv2, i32 noundef 3264) #15, !dbg !1697
  store ptr %call, ptr %n, align 8, !dbg !1698
  br label %do.body, !dbg !1699

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %n, align 8, !dbg !1700
  %tobool = icmp ne ptr %4, null, !dbg !1700
  %lnot = xor i1 %tobool, true, !dbg !1700
  %lnot3 = xor i1 %lnot, true, !dbg !1700
  %lnot4 = xor i1 %lnot3, true, !dbg !1700
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1700
  %conv5 = sext i32 %lnot.ext to i64, !dbg !1700
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !1700
  %tobool6 = icmp ne i64 %expval, 0, !dbg !1700
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1703

if.then:                                          ; preds = %do.body
  br label %do.body7, !dbg !1700

do.body7:                                         ; preds = %if.then
  br label %do.body8, !dbg !1704

do.body8:                                         ; preds = %do.body7
  br label %do.cond, !dbg !1706

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !1706

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !1704

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 704, i32 0, i64 12) #13, !dbg !1708, !srcloc !1710
  br label %do.cond10, !dbg !1708

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1708

do.end11:                                         ; preds = %do.cond10
  unreachable, !dbg !1704

do.cond12:                                        ; No predecessors!
  br label %do.end13, !dbg !1704

do.end13:                                         ; preds = %do.cond12
  br label %if.end, !dbg !1704

if.end:                                           ; preds = %do.end13, %do.body
  br label %do.cond14, !dbg !1703

do.cond14:                                        ; preds = %if.end
  br label %do.end15, !dbg !1703

do.end15:                                         ; preds = %do.cond14
  %5 = load ptr, ptr %n, align 8, !dbg !1711
  store ptr %5, ptr @e820_table, align 8, !dbg !1712
  %6 = load ptr, ptr @e820_table_kexec, align 8, !dbg !1713
  %nr_entries16 = getelementptr inbounds %struct.e820_table, ptr %6, i32 0, i32 0, !dbg !1714
  %7 = load i32, ptr %nr_entries16, align 4, !dbg !1714
  %conv17 = zext i32 %7 to i64, !dbg !1713
  %mul18 = mul i64 20, %conv17, !dbg !1715
  %add19 = add i64 4, %mul18, !dbg !1716
  %conv20 = trunc i64 %add19 to i32, !dbg !1717
  store i32 %conv20, ptr %size, align 4, !dbg !1718
  %8 = load ptr, ptr @e820_table_kexec, align 8, !dbg !1719
  %9 = load i32, ptr %size, align 4, !dbg !1720
  %conv21 = sext i32 %9 to i64, !dbg !1720
  %call22 = call ptr @kmemdup(ptr noundef %8, i64 noundef %conv21, i32 noundef 3264) #15, !dbg !1721
  store ptr %call22, ptr %n, align 8, !dbg !1722
  br label %do.body23, !dbg !1723

do.body23:                                        ; preds = %do.end15
  %10 = load ptr, ptr %n, align 8, !dbg !1724
  %tobool24 = icmp ne ptr %10, null, !dbg !1724
  %lnot25 = xor i1 %tobool24, true, !dbg !1724
  %lnot27 = xor i1 %lnot25, true, !dbg !1724
  %lnot29 = xor i1 %lnot27, true, !dbg !1724
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !1724
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !1724
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !1724
  %tobool33 = icmp ne i64 %expval32, 0, !dbg !1724
  br i1 %tobool33, label %if.then34, label %if.end44, !dbg !1727

if.then34:                                        ; preds = %do.body23
  br label %do.body35, !dbg !1724

do.body35:                                        ; preds = %if.then34
  br label %do.body36, !dbg !1728

do.body36:                                        ; preds = %do.body35
  br label %do.cond37, !dbg !1730

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !1730

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !1728

do.body39:                                        ; preds = %do.end38
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 709, i32 0, i64 12) #13, !dbg !1732, !srcloc !1734
  br label %do.cond40, !dbg !1732

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !1732

do.end41:                                         ; preds = %do.cond40
  unreachable, !dbg !1728

do.cond42:                                        ; No predecessors!
  br label %do.end43, !dbg !1728

do.end43:                                         ; preds = %do.cond42
  br label %if.end44, !dbg !1728

if.end44:                                         ; preds = %do.end43, %do.body23
  br label %do.cond45, !dbg !1727

do.cond45:                                        ; preds = %if.end44
  br label %do.end46, !dbg !1727

do.end46:                                         ; preds = %do.cond45
  %11 = load ptr, ptr %n, align 8, !dbg !1735
  store ptr %11, ptr @e820_table_kexec, align 8, !dbg !1736
  %12 = load ptr, ptr @e820_table_firmware, align 8, !dbg !1737
  %nr_entries47 = getelementptr inbounds %struct.e820_table, ptr %12, i32 0, i32 0, !dbg !1738
  %13 = load i32, ptr %nr_entries47, align 4, !dbg !1738
  %conv48 = zext i32 %13 to i64, !dbg !1737
  %mul49 = mul i64 20, %conv48, !dbg !1739
  %add50 = add i64 4, %mul49, !dbg !1740
  %conv51 = trunc i64 %add50 to i32, !dbg !1741
  store i32 %conv51, ptr %size, align 4, !dbg !1742
  %14 = load ptr, ptr @e820_table_firmware, align 8, !dbg !1743
  %15 = load i32, ptr %size, align 4, !dbg !1744
  %conv52 = sext i32 %15 to i64, !dbg !1744
  %call53 = call ptr @kmemdup(ptr noundef %14, i64 noundef %conv52, i32 noundef 3264) #15, !dbg !1745
  store ptr %call53, ptr %n, align 8, !dbg !1746
  br label %do.body54, !dbg !1747

do.body54:                                        ; preds = %do.end46
  %16 = load ptr, ptr %n, align 8, !dbg !1748
  %tobool55 = icmp ne ptr %16, null, !dbg !1748
  %lnot56 = xor i1 %tobool55, true, !dbg !1748
  %lnot58 = xor i1 %lnot56, true, !dbg !1748
  %lnot60 = xor i1 %lnot58, true, !dbg !1748
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !1748
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !1748
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !1748
  %tobool64 = icmp ne i64 %expval63, 0, !dbg !1748
  br i1 %tobool64, label %if.then65, label %if.end75, !dbg !1751

if.then65:                                        ; preds = %do.body54
  br label %do.body66, !dbg !1748

do.body66:                                        ; preds = %if.then65
  br label %do.body67, !dbg !1752

do.body67:                                        ; preds = %do.body66
  br label %do.cond68, !dbg !1754

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !1754

do.end69:                                         ; preds = %do.cond68
  br label %do.body70, !dbg !1752

do.body70:                                        ; preds = %do.end69
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 714, i32 0, i64 12) #13, !dbg !1756, !srcloc !1758
  br label %do.cond71, !dbg !1756

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !1756

do.end72:                                         ; preds = %do.cond71
  unreachable, !dbg !1752

do.cond73:                                        ; No predecessors!
  br label %do.end74, !dbg !1752

do.end74:                                         ; preds = %do.cond73
  br label %if.end75, !dbg !1752

if.end75:                                         ; preds = %do.end74, %do.body54
  br label %do.cond76, !dbg !1751

do.cond76:                                        ; preds = %if.end75
  br label %do.end77, !dbg !1751

do.end77:                                         ; preds = %do.cond76
  %17 = load ptr, ptr %n, align 8, !dbg !1759
  store ptr %17, ptr @e820_table_firmware, align 8, !dbg !1760
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #13, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #13, !dbg !1761
  ret void, !dbg !1761
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !1762 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #9

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__memory_setup_extended(i64 noundef %phys_addr, i32 noundef %data_len) #2 section ".init.text" align 16 !dbg !1766 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %data_len.addr = alloca i32, align 4
  %entries = alloca i32, align 4
  %extmap = alloca ptr, align 8
  %sdata = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !1770, metadata !DIExpression()), !dbg !1787
  store i32 %data_len, ptr %data_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_len.addr, metadata !1771, metadata !DIExpression()), !dbg !1788
  call void @llvm.lifetime.start.p0(i64 4, ptr %entries) #13, !dbg !1789
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !1772, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 8, ptr %extmap) #13, !dbg !1791
  call void @llvm.dbg.declare(metadata ptr %extmap, metadata !1773, metadata !DIExpression()), !dbg !1792
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdata) #13, !dbg !1793
  call void @llvm.dbg.declare(metadata ptr %sdata, metadata !1774, metadata !DIExpression()), !dbg !1794
  %0 = load i64, ptr %phys_addr.addr, align 8, !dbg !1795
  %1 = load i32, ptr %data_len.addr, align 4, !dbg !1796
  %conv = zext i32 %1 to i64, !dbg !1796
  %call = call ptr @early_memremap(i64 noundef %0, i64 noundef %conv) #12, !dbg !1797
  store ptr %call, ptr %sdata, align 8, !dbg !1798
  %2 = load ptr, ptr %sdata, align 8, !dbg !1799
  %len = getelementptr inbounds %struct.setup_data, ptr %2, i32 0, i32 2, !dbg !1800
  %3 = load i32, ptr %len, align 4, !dbg !1800
  %conv1 = zext i32 %3 to i64, !dbg !1799
  %div = udiv i64 %conv1, 20, !dbg !1801
  %conv2 = trunc i64 %div to i32, !dbg !1799
  store i32 %conv2, ptr %entries, align 4, !dbg !1802
  %4 = load ptr, ptr %sdata, align 8, !dbg !1803
  %data = getelementptr inbounds %struct.setup_data, ptr %4, i32 0, i32 3, !dbg !1804
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data, i64 0, i64 0, !dbg !1805
  store ptr %arraydecay, ptr %extmap, align 8, !dbg !1806
  %5 = load ptr, ptr %extmap, align 8, !dbg !1807
  %6 = load i32, ptr %entries, align 4, !dbg !1808
  %call3 = call i32 @__append_e820_table(ptr noundef %5, i32 noundef %6) #14, !dbg !1809
  %7 = load ptr, ptr @e820_table, align 8, !dbg !1810
  %call4 = call i32 @e820__update_table(ptr noundef %7) #14, !dbg !1811
  %8 = load ptr, ptr @e820_table_kexec, align 8, !dbg !1812
  %9 = load ptr, ptr @e820_table, align 8, !dbg !1813
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 6404, i1 false), !dbg !1814
  %10 = load ptr, ptr @e820_table_firmware, align 8, !dbg !1815
  %11 = load ptr, ptr @e820_table, align 8, !dbg !1816
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %11, i64 6404, i1 false), !dbg !1817
  %12 = load ptr, ptr %sdata, align 8, !dbg !1818
  %13 = load i32, ptr %data_len.addr, align 4, !dbg !1819
  %conv5 = zext i32 %13 to i64, !dbg !1819
  call void @early_memunmap(ptr noundef %12, i64 noundef %conv5) #12, !dbg !1820
  br label %do.body, !dbg !1821

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1823

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1823

do.end:                                           ; preds = %do.cond
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #14, !dbg !1821
  store i32 %call6, ptr %tmp, align 4, !dbg !1823
  %14 = load i32, ptr %tmp, align 4, !dbg !1821
  call void @e820__print_table(ptr noundef @.str.10) #14, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdata) #13, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 8, ptr %extmap) #13, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 4, ptr %entries) #13, !dbg !1826
  ret void, !dbg !1826
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1827 dso_local ptr @early_memremap(i64 noundef, i64 noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @__append_e820_table(ptr noundef %entries, i32 noundef %nr_entries) #2 section ".init.text" align 16 !dbg !1831 {
entry:
  %retval = alloca i32, align 4
  %entries.addr = alloca ptr, align 8
  %nr_entries.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %end = alloca i64, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !1835, metadata !DIExpression()), !dbg !1843
  store i32 %nr_entries, ptr %nr_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_entries.addr, metadata !1836, metadata !DIExpression()), !dbg !1844
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !1845
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1837, metadata !DIExpression()), !dbg !1846
  %0 = load ptr, ptr %entries.addr, align 8, !dbg !1847
  store ptr %0, ptr %entry1, align 8, !dbg !1846
  br label %while.cond, !dbg !1848

while.cond:                                       ; preds = %cleanup.cont, %entry
  %1 = load i32, ptr %nr_entries.addr, align 4, !dbg !1849
  %tobool = icmp ne i32 %1, 0, !dbg !1848
  br i1 %tobool, label %while.body, label %while.end, !dbg !1848

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #13, !dbg !1850
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1838, metadata !DIExpression()), !dbg !1851
  %2 = load ptr, ptr %entry1, align 8, !dbg !1852
  %addr = getelementptr inbounds %struct.boot_e820_entry, ptr %2, i32 0, i32 0, !dbg !1853
  %3 = load i64, ptr %addr, align 1, !dbg !1853
  store i64 %3, ptr %start, align 8, !dbg !1851
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13, !dbg !1854
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1840, metadata !DIExpression()), !dbg !1855
  %4 = load ptr, ptr %entry1, align 8, !dbg !1856
  %size2 = getelementptr inbounds %struct.boot_e820_entry, ptr %4, i32 0, i32 1, !dbg !1857
  %5 = load i64, ptr %size2, align 1, !dbg !1857
  store i64 %5, ptr %size, align 8, !dbg !1855
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #13, !dbg !1858
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1841, metadata !DIExpression()), !dbg !1859
  %6 = load i64, ptr %start, align 8, !dbg !1860
  %7 = load i64, ptr %size, align 8, !dbg !1861
  %add = add i64 %6, %7, !dbg !1862
  %sub = sub i64 %add, 1, !dbg !1863
  store i64 %sub, ptr %end, align 8, !dbg !1859
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #13, !dbg !1864
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1842, metadata !DIExpression()), !dbg !1865
  %8 = load ptr, ptr %entry1, align 8, !dbg !1866
  %type3 = getelementptr inbounds %struct.boot_e820_entry, ptr %8, i32 0, i32 2, !dbg !1867
  %9 = load i32, ptr %type3, align 1, !dbg !1867
  store i32 %9, ptr %type, align 4, !dbg !1865
  %10 = load i64, ptr %start, align 8, !dbg !1868
  %11 = load i64, ptr %end, align 8, !dbg !1870
  %cmp = icmp ugt i64 %10, %11, !dbg !1871
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1872

land.lhs.true:                                    ; preds = %while.body
  %12 = load i64, ptr %size, align 8, !dbg !1873
  %tobool4 = icmp ne i64 %12, 0, !dbg !1873
  %lnot = xor i1 %tobool4, true, !dbg !1873
  %lnot5 = xor i1 %lnot, true, !dbg !1873
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !1873
  %conv = sext i32 %lnot.ext to i64, !dbg !1873
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1873
  %tobool6 = icmp ne i64 %expval, 0, !dbg !1873
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1874

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !1875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1875

if.end:                                           ; preds = %land.lhs.true, %while.body
  %13 = load i64, ptr %start, align 8, !dbg !1876
  %14 = load i64, ptr %size, align 8, !dbg !1877
  %15 = load i32, ptr %type, align 4, !dbg !1878
  call void @e820__range_add(i64 noundef %13, i64 noundef %14, i32 noundef %15) #14, !dbg !1879
  %16 = load ptr, ptr %entry1, align 8, !dbg !1880
  %incdec.ptr = getelementptr %struct.boot_e820_entry, ptr %16, i32 1, !dbg !1880
  store ptr %incdec.ptr, ptr %entry1, align 8, !dbg !1880
  %17 = load i32, ptr %nr_entries.addr, align 4, !dbg !1881
  %dec = add i32 %17, -1, !dbg !1881
  store i32 %dec, ptr %nr_entries.addr, align 4, !dbg !1881
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1882
  br label %cleanup, !dbg !1882

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #13, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #13, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #13, !dbg !1882
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1848, !llvm.loop !1883

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup10, !dbg !1884

cleanup10:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !1885
  %18 = load i32, ptr %retval, align 4, !dbg !1885
  ret i32 %18, !dbg !1885
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1886 dso_local void @early_memunmap(ptr noundef, i64 noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__register_nosave_regions(i64 noundef %limit_pfn) #2 section ".init.text" align 16 !dbg !1889 {
entry:
  %limit_pfn.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %pfn = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !1893, metadata !DIExpression()), !dbg !1900
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1901
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1894, metadata !DIExpression()), !dbg !1902
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfn) #13, !dbg !1903
  call void @llvm.dbg.declare(metadata ptr %pfn, metadata !1895, metadata !DIExpression()), !dbg !1904
  store i64 0, ptr %pfn, align 8, !dbg !1904
  store i32 0, ptr %i, align 4, !dbg !1905
  br label %for.cond, !dbg !1906

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1907
  %1 = load ptr, ptr @e820_table, align 8, !dbg !1908
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %1, i32 0, i32 0, !dbg !1909
  %2 = load i32, ptr %nr_entries, align 4, !dbg !1909
  %cmp = icmp ult i32 %0, %2, !dbg !1910
  br i1 %cmp, label %for.body, label %for.end, !dbg !1911

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !1912
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1896, metadata !DIExpression()), !dbg !1913
  %3 = load ptr, ptr @e820_table, align 8, !dbg !1914
  %entries = getelementptr inbounds %struct.e820_table, ptr %3, i32 0, i32 1, !dbg !1915
  %4 = load i32, ptr %i, align 4, !dbg !1916
  %idxprom = sext i32 %4 to i64, !dbg !1914
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !1914
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !1913
  %5 = load i64, ptr %pfn, align 8, !dbg !1917
  %6 = load ptr, ptr %entry1, align 8, !dbg !1919
  %addr = getelementptr inbounds %struct.e820_entry, ptr %6, i32 0, i32 0, !dbg !1919
  %7 = load i64, ptr %addr, align 1, !dbg !1919
  %add = add i64 %7, 4096, !dbg !1919
  %sub = sub i64 %add, 1, !dbg !1919
  %shr = lshr i64 %sub, 12, !dbg !1919
  %cmp2 = icmp ult i64 %5, %shr, !dbg !1920
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1921

if.then:                                          ; preds = %for.body
  %8 = load i64, ptr %pfn, align 8, !dbg !1922
  %9 = load ptr, ptr %entry1, align 8, !dbg !1923
  %addr3 = getelementptr inbounds %struct.e820_entry, ptr %9, i32 0, i32 0, !dbg !1923
  %10 = load i64, ptr %addr3, align 1, !dbg !1923
  %add4 = add i64 %10, 4096, !dbg !1923
  %sub5 = sub i64 %add4, 1, !dbg !1923
  %shr6 = lshr i64 %sub5, 12, !dbg !1923
  call void @register_nosave_region(i64 noundef %8, i64 noundef %shr6) #12, !dbg !1924
  br label %if.end, !dbg !1924

if.end:                                           ; preds = %if.then, %for.body
  %11 = load ptr, ptr %entry1, align 8, !dbg !1925
  %addr7 = getelementptr inbounds %struct.e820_entry, ptr %11, i32 0, i32 0, !dbg !1925
  %12 = load i64, ptr %addr7, align 1, !dbg !1925
  %13 = load ptr, ptr %entry1, align 8, !dbg !1925
  %size = getelementptr inbounds %struct.e820_entry, ptr %13, i32 0, i32 1, !dbg !1925
  %14 = load i64, ptr %size, align 1, !dbg !1925
  %add8 = add i64 %12, %14, !dbg !1925
  %shr9 = lshr i64 %add8, 12, !dbg !1925
  store i64 %shr9, ptr %pfn, align 8, !dbg !1926
  %15 = load ptr, ptr %entry1, align 8, !dbg !1927
  %type = getelementptr inbounds %struct.e820_entry, ptr %15, i32 0, i32 2, !dbg !1929
  %16 = load i32, ptr %type, align 1, !dbg !1929
  %cmp10 = icmp ne i32 %16, 1, !dbg !1930
  br i1 %cmp10, label %land.lhs.true, label %if.end18, !dbg !1931

land.lhs.true:                                    ; preds = %if.end
  %17 = load ptr, ptr %entry1, align 8, !dbg !1932
  %type11 = getelementptr inbounds %struct.e820_entry, ptr %17, i32 0, i32 2, !dbg !1933
  %18 = load i32, ptr %type11, align 1, !dbg !1933
  %cmp12 = icmp ne i32 %18, 128, !dbg !1934
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !1935

if.then13:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %entry1, align 8, !dbg !1936
  %addr14 = getelementptr inbounds %struct.e820_entry, ptr %19, i32 0, i32 0, !dbg !1936
  %20 = load i64, ptr %addr14, align 1, !dbg !1936
  %add15 = add i64 %20, 4096, !dbg !1936
  %sub16 = sub i64 %add15, 1, !dbg !1936
  %shr17 = lshr i64 %sub16, 12, !dbg !1936
  %21 = load i64, ptr %pfn, align 8, !dbg !1937
  call void @register_nosave_region(i64 noundef %shr17, i64 noundef %21) #12, !dbg !1938
  br label %if.end18, !dbg !1938

if.end18:                                         ; preds = %if.then13, %land.lhs.true, %if.end
  %22 = load i64, ptr %pfn, align 8, !dbg !1939
  %23 = load i64, ptr %limit_pfn.addr, align 8, !dbg !1941
  %cmp19 = icmp uge i64 %22, %23, !dbg !1942
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1943

if.then20:                                        ; preds = %if.end18
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1944

if.end21:                                         ; preds = %if.end18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1945
  br label %cleanup, !dbg !1945

cleanup:                                          ; preds = %if.end21, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !1945
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1946

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i32, ptr %i, align 4, !dbg !1947
  %inc = add i32 %24, 1, !dbg !1947
  store i32 %inc, ptr %i, align 4, !dbg !1947
  br label %for.cond, !dbg !1948, !llvm.loop !1949

for.end:                                          ; preds = %cleanup, %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfn) #13, !dbg !1951
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1951
  ret void, !dbg !1951

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1952 dso_local void @register_nosave_region(i64 noundef, i64 noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_e820__351_792_e820__register_nvs_regions1() #2 section ".init.text" align 16 !dbg !1956 {
entry:
  %call = call i32 @e820__register_nvs_regions() #14, !dbg !1959
  ret i32 %call, !dbg !1959
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @e820__register_nvs_regions() #2 section ".init.text" align 16 !dbg !1960 {
entry:
  %i = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1967
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1962, metadata !DIExpression()), !dbg !1968
  store i32 0, ptr %i, align 4, !dbg !1969
  br label %for.cond, !dbg !1970

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1971
  %1 = load ptr, ptr @e820_table, align 8, !dbg !1972
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %1, i32 0, i32 0, !dbg !1973
  %2 = load i32, ptr %nr_entries, align 4, !dbg !1973
  %cmp = icmp ult i32 %0, %2, !dbg !1974
  br i1 %cmp, label %for.body, label %for.end, !dbg !1975

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !1976
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1963, metadata !DIExpression()), !dbg !1977
  %3 = load ptr, ptr @e820_table, align 8, !dbg !1978
  %entries = getelementptr inbounds %struct.e820_table, ptr %3, i32 0, i32 1, !dbg !1979
  %4 = load i32, ptr %i, align 4, !dbg !1980
  %idxprom = sext i32 %4 to i64, !dbg !1978
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !1978
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !1977
  %5 = load ptr, ptr %entry1, align 8, !dbg !1981
  %type = getelementptr inbounds %struct.e820_entry, ptr %5, i32 0, i32 2, !dbg !1983
  %6 = load i32, ptr %type, align 1, !dbg !1983
  %cmp2 = icmp eq i32 %6, 4, !dbg !1984
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1985

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %entry1, align 8, !dbg !1986
  %addr = getelementptr inbounds %struct.e820_entry, ptr %7, i32 0, i32 0, !dbg !1987
  %8 = load i64, ptr %addr, align 1, !dbg !1987
  %9 = load ptr, ptr %entry1, align 8, !dbg !1988
  %size = getelementptr inbounds %struct.e820_entry, ptr %9, i32 0, i32 1, !dbg !1989
  %10 = load i64, ptr %size, align 1, !dbg !1989
  %call = call i32 @acpi_nvs_register(i64 noundef %8, i64 noundef %10) #12, !dbg !1990
  br label %if.end, !dbg !1990

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !1991
  br label %for.inc, !dbg !1992

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !dbg !1993
  %inc = add i32 %11, 1, !dbg !1993
  store i32 %inc, ptr %i, align 4, !dbg !1993
  br label %for.cond, !dbg !1994, !llvm.loop !1995

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1997
  ret i32 0, !dbg !1998
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i64 @e820__memblock_alloc_reserved(i64 noundef %size, i64 noundef %align) #2 section ".init.text" align 16 !dbg !1999 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2003, metadata !DIExpression()), !dbg !2006
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #13, !dbg !2008
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !2005, metadata !DIExpression()), !dbg !2009
  %0 = load i64, ptr %size.addr, align 8, !dbg !2010
  %1 = load i64, ptr %align.addr, align 8, !dbg !2011
  %call = call i64 @memblock_phys_alloc(i64 noundef %0, i64 noundef %1) #12, !dbg !2012
  store i64 %call, ptr %addr, align 8, !dbg !2013
  %2 = load i64, ptr %addr, align 8, !dbg !2014
  %tobool = icmp ne i64 %2, 0, !dbg !2014
  br i1 %tobool, label %if.then, label %if.end, !dbg !2016

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %addr, align 8, !dbg !2017
  %4 = load i64, ptr %size.addr, align 8, !dbg !2019
  %call1 = call i64 @e820__range_update_kexec(i64 noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 2) #14, !dbg !2020
  br label %do.body, !dbg !2021

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2023

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2023

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11) #14, !dbg !2021
  store i32 %call2, ptr %tmp, align 4, !dbg !2023
  %5 = load i32, ptr %tmp, align 4, !dbg !2021
  call void @e820__update_table_kexec() #14, !dbg !2025
  br label %if.end, !dbg !2026

if.end:                                           ; preds = %do.end, %entry
  %6 = load i64, ptr %addr, align 8, !dbg !2027
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #13, !dbg !2028
  ret i64 %6, !dbg !2029
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @memblock_phys_alloc(i64 noundef %size, i64 noundef %align) #10 align 16 !dbg !2030 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2035, metadata !DIExpression()), !dbg !2037
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !2036, metadata !DIExpression()), !dbg !2038
  %0 = load i64, ptr %size.addr, align 8, !dbg !2039
  %1 = load i64, ptr %align.addr, align 8, !dbg !2040
  %call = call i64 @memblock_phys_alloc_range(i64 noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef 0) #12, !dbg !2041
  ret i64 %call, !dbg !2042
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @e820__range_update_kexec(i64 noundef %start, i64 noundef %size, i32 noundef %old_type, i32 noundef %new_type) #2 section ".init.text" align 16 !dbg !2043 {
entry:
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %old_type.addr = alloca i32, align 4
  %new_type.addr = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2045, metadata !DIExpression()), !dbg !2049
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2046, metadata !DIExpression()), !dbg !2050
  store i32 %old_type, ptr %old_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old_type.addr, metadata !2047, metadata !DIExpression()), !dbg !2051
  store i32 %new_type, ptr %new_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_type.addr, metadata !2048, metadata !DIExpression()), !dbg !2052
  %0 = load ptr, ptr @e820_table_kexec, align 8, !dbg !2053
  %1 = load i64, ptr %start.addr, align 8, !dbg !2054
  %2 = load i64, ptr %size.addr, align 8, !dbg !2055
  %3 = load i32, ptr %old_type.addr, align 4, !dbg !2056
  %4 = load i32, ptr %new_type.addr, align 4, !dbg !2057
  %call = call i64 @__e820__range_update(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #14, !dbg !2058
  ret i64 %call, !dbg !2059
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @e820__update_table_kexec() #2 section ".init.text" align 16 !dbg !2060 {
entry:
  %0 = load ptr, ptr @e820_table_kexec, align 8, !dbg !2061
  %call = call i32 @e820__update_table(ptr noundef %0) #14, !dbg !2062
  ret void, !dbg !2063
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i64 @e820__end_of_ram_pfn() #2 section ".init.text" align 16 !dbg !2064 {
entry:
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !2067
  %0 = zext i1 %call to i64, !dbg !2067
  %cond = select i1 %call, i32 52, i32 46, !dbg !2067
  %sh_prom = zext i32 %cond to i64, !dbg !2067
  %shl = shl i64 1, %sh_prom, !dbg !2067
  %shr = lshr i64 %shl, 12, !dbg !2067
  %call1 = call i64 @e820_end_pfn(i64 noundef %shr, i32 noundef 1) #14, !dbg !2068
  ret i64 %call1, !dbg !2069
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @e820_end_pfn(i64 noundef %limit_pfn, i32 noundef %type) #2 section ".init.text" align 16 !dbg !2070 {
entry:
  %limit_pfn.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %last_pfn = alloca i64, align 8
  %max_arch_pfn = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  %start_pfn = alloca i64, align 8
  %end_pfn = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !2074, metadata !DIExpression()), !dbg !2085
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2075, metadata !DIExpression()), !dbg !2086
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !2087
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2076, metadata !DIExpression()), !dbg !2088
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_pfn) #13, !dbg !2089
  call void @llvm.dbg.declare(metadata ptr %last_pfn, metadata !2077, metadata !DIExpression()), !dbg !2090
  store i64 0, ptr %last_pfn, align 8, !dbg !2090
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_arch_pfn) #13, !dbg !2091
  call void @llvm.dbg.declare(metadata ptr %max_arch_pfn, metadata !2078, metadata !DIExpression()), !dbg !2092
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !2093
  %0 = zext i1 %call to i64, !dbg !2093
  %cond = select i1 %call, i32 52, i32 46, !dbg !2093
  %sh_prom = zext i32 %cond to i64, !dbg !2093
  %shl = shl i64 1, %sh_prom, !dbg !2093
  %shr = lshr i64 %shl, 12, !dbg !2093
  store i64 %shr, ptr %max_arch_pfn, align 8, !dbg !2092
  store i32 0, ptr %i, align 4, !dbg !2094
  br label %for.cond, !dbg !2095

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2096
  %2 = load ptr, ptr @e820_table, align 8, !dbg !2097
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %2, i32 0, i32 0, !dbg !2098
  %3 = load i32, ptr %nr_entries, align 4, !dbg !2098
  %cmp = icmp ult i32 %1, %3, !dbg !2099
  br i1 %cmp, label %for.body, label %for.end, !dbg !2100

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2079, metadata !DIExpression()), !dbg !2102
  %4 = load ptr, ptr @e820_table, align 8, !dbg !2103
  %entries = getelementptr inbounds %struct.e820_table, ptr %4, i32 0, i32 1, !dbg !2104
  %5 = load i32, ptr %i, align 4, !dbg !2105
  %idxprom = sext i32 %5 to i64, !dbg !2103
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !2103
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_pfn) #13, !dbg !2106
  call void @llvm.dbg.declare(metadata ptr %start_pfn, metadata !2083, metadata !DIExpression()), !dbg !2107
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_pfn) #13, !dbg !2108
  call void @llvm.dbg.declare(metadata ptr %end_pfn, metadata !2084, metadata !DIExpression()), !dbg !2109
  %6 = load ptr, ptr %entry1, align 8, !dbg !2110
  %type2 = getelementptr inbounds %struct.e820_entry, ptr %6, i32 0, i32 2, !dbg !2112
  %7 = load i32, ptr %type2, align 1, !dbg !2112
  %8 = load i32, ptr %type.addr, align 4, !dbg !2113
  %cmp3 = icmp ne i32 %7, %8, !dbg !2114
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2115

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2116

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %entry1, align 8, !dbg !2117
  %addr = getelementptr inbounds %struct.e820_entry, ptr %9, i32 0, i32 0, !dbg !2118
  %10 = load i64, ptr %addr, align 1, !dbg !2118
  %shr4 = lshr i64 %10, 12, !dbg !2119
  store i64 %shr4, ptr %start_pfn, align 8, !dbg !2120
  %11 = load ptr, ptr %entry1, align 8, !dbg !2121
  %addr5 = getelementptr inbounds %struct.e820_entry, ptr %11, i32 0, i32 0, !dbg !2122
  %12 = load i64, ptr %addr5, align 1, !dbg !2122
  %13 = load ptr, ptr %entry1, align 8, !dbg !2123
  %size = getelementptr inbounds %struct.e820_entry, ptr %13, i32 0, i32 1, !dbg !2124
  %14 = load i64, ptr %size, align 1, !dbg !2124
  %add = add i64 %12, %14, !dbg !2125
  %shr6 = lshr i64 %add, 12, !dbg !2126
  store i64 %shr6, ptr %end_pfn, align 8, !dbg !2127
  %15 = load i64, ptr %start_pfn, align 8, !dbg !2128
  %16 = load i64, ptr %limit_pfn.addr, align 8, !dbg !2130
  %cmp7 = icmp uge i64 %15, %16, !dbg !2131
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2132

if.then8:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2133

if.end9:                                          ; preds = %if.end
  %17 = load i64, ptr %end_pfn, align 8, !dbg !2134
  %18 = load i64, ptr %limit_pfn.addr, align 8, !dbg !2136
  %cmp10 = icmp ugt i64 %17, %18, !dbg !2137
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2138

if.then11:                                        ; preds = %if.end9
  %19 = load i64, ptr %limit_pfn.addr, align 8, !dbg !2139
  store i64 %19, ptr %last_pfn, align 8, !dbg !2141
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2142

if.end12:                                         ; preds = %if.end9
  %20 = load i64, ptr %end_pfn, align 8, !dbg !2143
  %21 = load i64, ptr %last_pfn, align 8, !dbg !2145
  %cmp13 = icmp ugt i64 %20, %21, !dbg !2146
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2147

if.then14:                                        ; preds = %if.end12
  %22 = load i64, ptr %end_pfn, align 8, !dbg !2148
  store i64 %22, ptr %last_pfn, align 8, !dbg !2149
  br label %if.end15, !dbg !2150

if.end15:                                         ; preds = %if.then14, %if.end12
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2151
  br label %cleanup, !dbg !2151

cleanup:                                          ; preds = %if.end15, %if.then11, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_pfn) #13, !dbg !2151
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_pfn) #13, !dbg !2151
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !2151
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2152

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %23 = load i32, ptr %i, align 4, !dbg !2153
  %inc = add i32 %23, 1, !dbg !2153
  store i32 %inc, ptr %i, align 4, !dbg !2153
  br label %for.cond, !dbg !2154, !llvm.loop !2155

for.end:                                          ; preds = %cleanup, %for.cond
  %24 = load i64, ptr %last_pfn, align 8, !dbg !2157
  %25 = load i64, ptr %max_arch_pfn, align 8, !dbg !2159
  %cmp18 = icmp ugt i64 %24, %25, !dbg !2160
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2161

if.then19:                                        ; preds = %for.end
  %26 = load i64, ptr %max_arch_pfn, align 8, !dbg !2162
  store i64 %26, ptr %last_pfn, align 8, !dbg !2163
  br label %if.end20, !dbg !2164

if.end20:                                         ; preds = %if.then19, %for.end
  br label %do.body, !dbg !2165

do.body:                                          ; preds = %if.end20
  br label %do.cond, !dbg !2167

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2167

do.end:                                           ; preds = %do.cond
  %27 = load i64, ptr %last_pfn, align 8, !dbg !2165
  %28 = load i64, ptr %max_arch_pfn, align 8, !dbg !2165
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str.36, i64 noundef %27, i64 noundef %28) #14, !dbg !2165
  store i32 %call21, ptr %tmp, align 4, !dbg !2167
  %29 = load i32, ptr %tmp, align 4, !dbg !2165
  %30 = load i64, ptr %last_pfn, align 8, !dbg !2169
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_arch_pfn) #13, !dbg !2170
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_pfn) #13, !dbg !2170
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !2170
  ret i64 %30, !dbg !2171

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #10 align 16 !dbg !2172 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !2180, metadata !DIExpression()), !dbg !2183
  %0 = load i16, ptr %bit.addr, align 2, !dbg !2184
  %1 = load i16, ptr %bit.addr, align 2, !dbg !2185
  %conv = zext i16 %1 to i32, !dbg !2185
  %and = and i32 %conv, 7, !dbg !2186
  %shl = shl i32 1, %and, !dbg !2187
  %2 = load i16, ptr %bit.addr, align 2, !dbg !2188
  %conv1 = zext i16 %2 to i32, !dbg !2188
  %shr = ashr i32 %conv1, 3, !dbg !2189
  %idxprom = sext i32 %shr to i64, !dbg !2190
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !2190
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #13
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !2191, !srcloc !2192

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !2191

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !2181), !dbg !2193
  store i1 true, ptr %retval, align 1, !dbg !2194
  br label %return, !dbg !2194

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !2182), !dbg !2195
  store i1 false, ptr %retval, align 1, !dbg !2196
  br label %return, !dbg !2196

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !2197
  ret i1 %3, !dbg !2197
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i64 @e820__end_of_low_ram_pfn() #2 section ".init.text" align 16 !dbg !2198 {
entry:
  %call = call i64 @e820_end_pfn(i64 noundef 1048576, i32 noundef 1) #14, !dbg !2199
  ret i64 %call, !dbg !2200
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_memopt(ptr noundef %p) #2 section ".init.text" align 16 !dbg !2201 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %mem_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2203, metadata !DIExpression()), !dbg !2205
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem_size) #13, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %mem_size, metadata !2204, metadata !DIExpression()), !dbg !2207
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2208
  %tobool = icmp ne ptr %0, null, !dbg !2208
  br i1 %tobool, label %if.end, label %if.then, !dbg !2210

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2211

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2212
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.37) #12, !dbg !2214
  %tobool1 = icmp ne i32 %call, 0, !dbg !2214
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !2215

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !2216

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !2219

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2219

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.38) #14, !dbg !2216
  store i32 %call3, ptr %tmp, align 4, !dbg !2219
  %2 = load i32, ptr %tmp, align 4, !dbg !2216
  store i32 -22, ptr %retval, align 4, !dbg !2221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2221

if.end4:                                          ; preds = %if.end
  store i32 1, ptr @userdef, align 4, !dbg !2222
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2223
  %call5 = call i64 @memparse(ptr noundef %3, ptr noundef %p.addr) #12, !dbg !2224
  store i64 %call5, ptr %mem_size, align 8, !dbg !2225
  %4 = load i64, ptr %mem_size, align 8, !dbg !2226
  %cmp = icmp eq i64 %4, 0, !dbg !2228
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2229

if.then6:                                         ; preds = %if.end4
  store i32 -22, ptr %retval, align 4, !dbg !2230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2230

if.end7:                                          ; preds = %if.end4
  %5 = load i64, ptr %mem_size, align 8, !dbg !2231
  %6 = load i64, ptr %mem_size, align 8, !dbg !2232
  %sub = sub i64 -1, %6, !dbg !2233
  %call8 = call i64 @e820__range_remove(i64 noundef %5, i64 noundef %sub, i32 noundef 1, i1 noundef zeroext true) #14, !dbg !2234
  store i32 0, ptr %retval, align 4, !dbg !2235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2235

cleanup:                                          ; preds = %if.end7, %if.then6, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem_size) #13, !dbg !2236
  %7 = load i32, ptr %retval, align 4, !dbg !2236
  ret i32 %7, !dbg !2236
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_memmap_opt(ptr noundef %str) #2 section ".init.text" align 16 !dbg !2237 {
entry:
  %str.addr = alloca ptr, align 8
  %k = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2239, metadata !DIExpression()), !dbg !2242
  br label %while.cond, !dbg !2243

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !2244
  %tobool = icmp ne ptr %0, null, !dbg !2243
  br i1 %tobool, label %while.body, label %while.end, !dbg !2243

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #13, !dbg !2245
  call void @llvm.dbg.declare(metadata ptr %k, metadata !2240, metadata !DIExpression()), !dbg !2246
  %1 = load ptr, ptr %str.addr, align 8, !dbg !2247
  %call = call ptr @strchr(ptr noundef %1, i32 noundef 44) #12, !dbg !2248
  store ptr %call, ptr %k, align 8, !dbg !2246
  %2 = load ptr, ptr %k, align 8, !dbg !2249
  %tobool1 = icmp ne ptr %2, null, !dbg !2249
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2251

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %k, align 8, !dbg !2252
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !2252
  store ptr %incdec.ptr, ptr %k, align 8, !dbg !2252
  store i8 0, ptr %3, align 1, !dbg !2253
  br label %if.end, !dbg !2254

if.end:                                           ; preds = %if.then, %while.body
  %4 = load ptr, ptr %str.addr, align 8, !dbg !2255
  %call2 = call i32 @parse_memmap_one(ptr noundef %4) #14, !dbg !2256
  %5 = load ptr, ptr %k, align 8, !dbg !2257
  store ptr %5, ptr %str.addr, align 8, !dbg !2258
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #13, !dbg !2259
  br label %while.cond, !dbg !2243, !llvm.loop !2260

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !2261
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__reserve_setup_data() #2 section ".init.text" align 16 !dbg !2262 {
entry:
  %indirect = alloca ptr, align 8
  %data = alloca ptr, align 8
  %pa_data = alloca i64, align 8
  %pa_next = alloca i64, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %tmp56 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %indirect) #13, !dbg !2269
  call void @llvm.dbg.declare(metadata ptr %indirect, metadata !2264, metadata !DIExpression()), !dbg !2270
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #13, !dbg !2271
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2265, metadata !DIExpression()), !dbg !2272
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_data) #13, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %pa_data, metadata !2266, metadata !DIExpression()), !dbg !2274
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_next) #13, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %pa_next, metadata !2267, metadata !DIExpression()), !dbg !2275
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13, !dbg !2276
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2268, metadata !DIExpression()), !dbg !2277
  %0 = load i64, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 34), align 1, !dbg !2278
  store i64 %0, ptr %pa_data, align 8, !dbg !2279
  %1 = load i64, ptr %pa_data, align 8, !dbg !2280
  %tobool = icmp ne i64 %1, 0, !dbg !2280
  br i1 %tobool, label %if.end, label %if.then, !dbg !2282

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2283

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !2284

while.cond:                                       ; preds = %if.end49, %if.end
  %2 = load i64, ptr %pa_data, align 8, !dbg !2285
  %tobool1 = icmp ne i64 %2, 0, !dbg !2284
  br i1 %tobool1, label %while.body, label %while.end, !dbg !2284

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %pa_data, align 8, !dbg !2286
  %call = call ptr @early_memremap(i64 noundef %3, i64 noundef 16) #12, !dbg !2288
  store ptr %call, ptr %data, align 8, !dbg !2289
  %4 = load ptr, ptr %data, align 8, !dbg !2290
  %tobool2 = icmp ne ptr %4, null, !dbg !2290
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !2292

if.then3:                                         ; preds = %while.body
  br label %do.body, !dbg !2293

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !2296

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2296

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #14, !dbg !2293
  store i32 %call4, ptr %tmp, align 4, !dbg !2296
  %5 = load i32, ptr %tmp, align 4, !dbg !2293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2298

if.end5:                                          ; preds = %while.body
  store i32 16, ptr %len, align 4, !dbg !2299
  %6 = load ptr, ptr %data, align 8, !dbg !2300
  %next = getelementptr inbounds %struct.setup_data, ptr %6, i32 0, i32 0, !dbg !2301
  %7 = load i64, ptr %next, align 8, !dbg !2301
  store i64 %7, ptr %pa_next, align 8, !dbg !2302
  %8 = load i64, ptr %pa_data, align 8, !dbg !2303
  %9 = load ptr, ptr %data, align 8, !dbg !2304
  %len6 = getelementptr inbounds %struct.setup_data, ptr %9, i32 0, i32 2, !dbg !2305
  %10 = load i32, ptr %len6, align 4, !dbg !2305
  %conv = zext i32 %10 to i64, !dbg !2304
  %add = add i64 16, %conv, !dbg !2306
  %call7 = call i64 @e820__range_update(i64 noundef %8, i64 noundef %add, i32 noundef 1, i32 noundef 128) #14, !dbg !2307
  %11 = load ptr, ptr %data, align 8, !dbg !2308
  %type = getelementptr inbounds %struct.setup_data, ptr %11, i32 0, i32 1, !dbg !2310
  %12 = load i32, ptr %type, align 8, !dbg !2310
  %cmp = icmp ne i32 %12, 4, !dbg !2311
  br i1 %cmp, label %land.lhs.true, label %if.end21, !dbg !2312

land.lhs.true:                                    ; preds = %if.end5
  %13 = load ptr, ptr %data, align 8, !dbg !2313
  %type9 = getelementptr inbounds %struct.setup_data, ptr %13, i32 0, i32 1, !dbg !2314
  %14 = load i32, ptr %type9, align 8, !dbg !2314
  %cmp10 = icmp ne i32 %14, 8, !dbg !2315
  br i1 %cmp10, label %land.lhs.true12, label %if.end21, !dbg !2316

land.lhs.true12:                                  ; preds = %land.lhs.true
  %15 = load ptr, ptr %data, align 8, !dbg !2317
  %type13 = getelementptr inbounds %struct.setup_data, ptr %15, i32 0, i32 1, !dbg !2318
  %16 = load i32, ptr %type13, align 8, !dbg !2318
  %cmp14 = icmp ne i32 %16, 9, !dbg !2319
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !2320

if.then16:                                        ; preds = %land.lhs.true12
  %17 = load i64, ptr %pa_data, align 8, !dbg !2321
  %18 = load ptr, ptr %data, align 8, !dbg !2322
  %len17 = getelementptr inbounds %struct.setup_data, ptr %18, i32 0, i32 2, !dbg !2323
  %19 = load i32, ptr %len17, align 4, !dbg !2323
  %conv18 = zext i32 %19 to i64, !dbg !2322
  %add19 = add i64 16, %conv18, !dbg !2324
  %call20 = call i64 @e820__range_update_kexec(i64 noundef %17, i64 noundef %add19, i32 noundef 1, i32 noundef 128) #14, !dbg !2325
  br label %if.end21, !dbg !2325

if.end21:                                         ; preds = %if.then16, %land.lhs.true12, %land.lhs.true, %if.end5
  %20 = load ptr, ptr %data, align 8, !dbg !2326
  %type22 = getelementptr inbounds %struct.setup_data, ptr %20, i32 0, i32 1, !dbg !2328
  %21 = load i32, ptr %type22, align 8, !dbg !2328
  %cmp23 = icmp eq i32 %21, -2147483648, !dbg !2329
  br i1 %cmp23, label %if.then25, label %if.end49, !dbg !2330

if.then25:                                        ; preds = %if.end21
  %22 = load ptr, ptr %data, align 8, !dbg !2331
  %len26 = getelementptr inbounds %struct.setup_data, ptr %22, i32 0, i32 2, !dbg !2333
  %23 = load i32, ptr %len26, align 4, !dbg !2333
  %24 = load i32, ptr %len, align 4, !dbg !2334
  %add27 = add i32 %24, %23, !dbg !2334
  store i32 %add27, ptr %len, align 4, !dbg !2334
  %25 = load ptr, ptr %data, align 8, !dbg !2335
  call void @early_memunmap(ptr noundef %25, i64 noundef 16) #12, !dbg !2336
  %26 = load i64, ptr %pa_data, align 8, !dbg !2337
  %27 = load i32, ptr %len, align 4, !dbg !2338
  %conv28 = zext i32 %27 to i64, !dbg !2338
  %call29 = call ptr @early_memremap(i64 noundef %26, i64 noundef %conv28) #12, !dbg !2339
  store ptr %call29, ptr %data, align 8, !dbg !2340
  %28 = load ptr, ptr %data, align 8, !dbg !2341
  %tobool30 = icmp ne ptr %28, null, !dbg !2341
  br i1 %tobool30, label %if.end37, label %if.then31, !dbg !2343

if.then31:                                        ; preds = %if.then25
  br label %do.body32, !dbg !2344

do.body32:                                        ; preds = %if.then31
  br label %do.cond33, !dbg !2347

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !2347

do.end34:                                         ; preds = %do.cond33
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #14, !dbg !2344
  store i32 %call36, ptr %tmp35, align 4, !dbg !2347
  %29 = load i32, ptr %tmp35, align 4, !dbg !2344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2349

if.end37:                                         ; preds = %if.then25
  %30 = load ptr, ptr %data, align 8, !dbg !2350
  %data38 = getelementptr inbounds %struct.setup_data, ptr %30, i32 0, i32 3, !dbg !2351
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data38, i64 0, i64 0, !dbg !2350
  store ptr %arraydecay, ptr %indirect, align 8, !dbg !2352
  %31 = load ptr, ptr %indirect, align 8, !dbg !2353
  %type39 = getelementptr inbounds %struct.setup_indirect, ptr %31, i32 0, i32 0, !dbg !2355
  %32 = load i32, ptr %type39, align 8, !dbg !2355
  %cmp40 = icmp ne i32 %32, -2147483648, !dbg !2356
  br i1 %cmp40, label %if.then42, label %if.end48, !dbg !2357

if.then42:                                        ; preds = %if.end37
  %33 = load ptr, ptr %indirect, align 8, !dbg !2358
  %addr = getelementptr inbounds %struct.setup_indirect, ptr %33, i32 0, i32 3, !dbg !2360
  %34 = load i64, ptr %addr, align 8, !dbg !2360
  %35 = load ptr, ptr %indirect, align 8, !dbg !2361
  %len43 = getelementptr inbounds %struct.setup_indirect, ptr %35, i32 0, i32 2, !dbg !2362
  %36 = load i64, ptr %len43, align 8, !dbg !2362
  %call44 = call i64 @e820__range_update(i64 noundef %34, i64 noundef %36, i32 noundef 1, i32 noundef 128) #14, !dbg !2363
  %37 = load ptr, ptr %indirect, align 8, !dbg !2364
  %addr45 = getelementptr inbounds %struct.setup_indirect, ptr %37, i32 0, i32 3, !dbg !2365
  %38 = load i64, ptr %addr45, align 8, !dbg !2365
  %39 = load ptr, ptr %indirect, align 8, !dbg !2366
  %len46 = getelementptr inbounds %struct.setup_indirect, ptr %39, i32 0, i32 2, !dbg !2367
  %40 = load i64, ptr %len46, align 8, !dbg !2367
  %call47 = call i64 @e820__range_update_kexec(i64 noundef %38, i64 noundef %40, i32 noundef 1, i32 noundef 128) #14, !dbg !2368
  br label %if.end48, !dbg !2369

if.end48:                                         ; preds = %if.then42, %if.end37
  br label %if.end49, !dbg !2370

if.end49:                                         ; preds = %if.end48, %if.end21
  %41 = load i64, ptr %pa_next, align 8, !dbg !2371
  store i64 %41, ptr %pa_data, align 8, !dbg !2372
  %42 = load ptr, ptr %data, align 8, !dbg !2373
  %43 = load i32, ptr %len, align 4, !dbg !2374
  %conv50 = zext i32 %43 to i64, !dbg !2374
  call void @early_memunmap(ptr noundef %42, i64 noundef %conv50) #12, !dbg !2375
  br label %while.cond, !dbg !2284, !llvm.loop !2376

while.end:                                        ; preds = %while.cond
  %44 = load ptr, ptr @e820_table, align 8, !dbg !2378
  %call51 = call i32 @e820__update_table(ptr noundef %44) #14, !dbg !2379
  %45 = load ptr, ptr @e820_table_kexec, align 8, !dbg !2380
  %call52 = call i32 @e820__update_table(ptr noundef %45) #14, !dbg !2381
  br label %do.body53, !dbg !2382

do.body53:                                        ; preds = %while.end
  br label %do.cond54, !dbg !2384

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !2384

do.end55:                                         ; preds = %do.cond54
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #14, !dbg !2382
  store i32 %call57, ptr %tmp56, align 4, !dbg !2384
  %46 = load i32, ptr %tmp56, align 4, !dbg !2382
  call void @e820__print_table(ptr noundef @.str.14) #14, !dbg !2386
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2387
  br label %cleanup, !dbg !2387

cleanup:                                          ; preds = %do.end55, %do.end34, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13, !dbg !2387
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_next) #13, !dbg !2387
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_data) #13, !dbg !2387
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #13, !dbg !2387
  call void @llvm.lifetime.end.p0(i64 8, ptr %indirect) #13, !dbg !2387
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2387

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__finish_early_params() #2 section ".init.text" align 16 !dbg !2388 {
entry:
  %tmp = alloca i32, align 4
  %0 = load i32, ptr @userdef, align 4, !dbg !2389
  %tobool = icmp ne i32 %0, 0, !dbg !2389
  br i1 %tobool, label %if.then, label %if.end3, !dbg !2391

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @e820_table, align 8, !dbg !2392
  %call = call i32 @e820__update_table(ptr noundef %1) #14, !dbg !2395
  %cmp = icmp slt i32 %call, 0, !dbg !2396
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2397

if.then1:                                         ; preds = %if.then
  call void @early_panic(ptr noundef @.str.15) #14, !dbg !2398
  br label %if.end, !dbg !2398

if.end:                                           ; preds = %if.then1, %if.then
  br label %do.body, !dbg !2399

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2401

do.end:                                           ; preds = %do.body
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16) #14, !dbg !2399
  store i32 %call2, ptr %tmp, align 4, !dbg !2401
  %2 = load i32, ptr %tmp, align 4, !dbg !2399
  call void @e820__print_table(ptr noundef @.str.17) #14, !dbg !2403
  br label %if.end3, !dbg !2404

if.end3:                                          ; preds = %do.end, %entry
  ret void, !dbg !2405
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @early_panic(ptr noundef %msg) #2 section ".init.text" align 16 !dbg !2406 {
entry:
  %msg.addr = alloca ptr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !2408, metadata !DIExpression()), !dbg !2409
  %0 = load ptr, ptr %msg.addr, align 8, !dbg !2410
  call void (ptr, ...) @early_printk(ptr noundef %0) #12, !dbg !2411
  %1 = load ptr, ptr %msg.addr, align 8, !dbg !2412
  call void (ptr, ...) @panic(ptr noundef %1) #16, !dbg !2413
  unreachable, !dbg !2413
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__reserve_resources() #2 section ".init.text" align 16 !dbg !2414 {
entry:
  %i = alloca i32, align 4
  %res = alloca ptr, align 8
  %end = alloca i64, align 8
  %entry6 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %entry27 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2416, metadata !DIExpression()), !dbg !2428
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #13, !dbg !2429
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2417, metadata !DIExpression()), !dbg !2430
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #13, !dbg !2431
  call void @llvm.dbg.declare(metadata ptr %end, metadata !2418, metadata !DIExpression()), !dbg !2432
  %0 = load ptr, ptr @e820_table, align 8, !dbg !2433
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %0, i32 0, i32 0, !dbg !2434
  %1 = load i32, ptr %nr_entries, align 4, !dbg !2434
  %conv = zext i32 %1 to i64, !dbg !2433
  %mul = mul i64 64, %conv, !dbg !2435
  %call = call ptr @memblock_alloc(i64 noundef %mul, i64 noundef 64) #12, !dbg !2436
  store ptr %call, ptr %res, align 8, !dbg !2437
  %2 = load ptr, ptr %res, align 8, !dbg !2438
  %tobool = icmp ne ptr %2, null, !dbg !2438
  br i1 %tobool, label %if.end, label %if.then, !dbg !2440

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @e820_table, align 8, !dbg !2441
  %nr_entries1 = getelementptr inbounds %struct.e820_table, ptr %3, i32 0, i32 0, !dbg !2442
  %4 = load i32, ptr %nr_entries1, align 4, !dbg !2442
  %conv2 = zext i32 %4 to i64, !dbg !2441
  %mul3 = mul i64 64, %conv2, !dbg !2443
  call void (ptr, ...) @panic(ptr noundef @.str.18, ptr noundef @__func__.e820__reserve_resources, i64 noundef %mul3) #16, !dbg !2444
  unreachable, !dbg !2444

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %res, align 8, !dbg !2445
  store ptr %5, ptr @e820_res, align 8, !dbg !2446
  store i32 0, ptr %i, align 4, !dbg !2447
  br label %for.cond, !dbg !2448

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4, !dbg !2449
  %7 = load ptr, ptr @e820_table, align 8, !dbg !2450
  %nr_entries4 = getelementptr inbounds %struct.e820_table, ptr %7, i32 0, i32 0, !dbg !2451
  %8 = load i32, ptr %nr_entries4, align 4, !dbg !2451
  %cmp = icmp ult i32 %6, %8, !dbg !2452
  br i1 %cmp, label %for.body, label %for.end, !dbg !2453

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry6) #13, !dbg !2454
  call void @llvm.dbg.declare(metadata ptr %entry6, metadata !2419, metadata !DIExpression()), !dbg !2455
  %9 = load ptr, ptr @e820_table, align 8, !dbg !2456
  %entries = getelementptr inbounds %struct.e820_table, ptr %9, i32 0, i32 1, !dbg !2457
  %arraydecay = getelementptr inbounds [320 x %struct.e820_entry], ptr %entries, i64 0, i64 0, !dbg !2456
  %10 = load i32, ptr %i, align 4, !dbg !2458
  %idx.ext = sext i32 %10 to i64, !dbg !2459
  %add.ptr = getelementptr %struct.e820_entry, ptr %arraydecay, i64 %idx.ext, !dbg !2459
  store ptr %add.ptr, ptr %entry6, align 8, !dbg !2455
  %11 = load ptr, ptr %entry6, align 8, !dbg !2460
  %addr = getelementptr inbounds %struct.e820_entry, ptr %11, i32 0, i32 0, !dbg !2461
  %12 = load i64, ptr %addr, align 1, !dbg !2461
  %13 = load ptr, ptr %entry6, align 8, !dbg !2462
  %size = getelementptr inbounds %struct.e820_entry, ptr %13, i32 0, i32 1, !dbg !2463
  %14 = load i64, ptr %size, align 1, !dbg !2463
  %add = add i64 %12, %14, !dbg !2464
  %sub = sub i64 %add, 1, !dbg !2465
  store i64 %sub, ptr %end, align 8, !dbg !2466
  %15 = load i64, ptr %end, align 8, !dbg !2467
  %16 = load i64, ptr %end, align 8, !dbg !2469
  %cmp7 = icmp ne i64 %15, %16, !dbg !2470
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !2471

if.then9:                                         ; preds = %for.body
  %17 = load ptr, ptr %res, align 8, !dbg !2472
  %incdec.ptr = getelementptr %struct.resource, ptr %17, i32 1, !dbg !2472
  store ptr %incdec.ptr, ptr %res, align 8, !dbg !2472
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2474

if.end10:                                         ; preds = %for.body
  %18 = load ptr, ptr %entry6, align 8, !dbg !2475
  %addr11 = getelementptr inbounds %struct.e820_entry, ptr %18, i32 0, i32 0, !dbg !2476
  %19 = load i64, ptr %addr11, align 1, !dbg !2476
  %20 = load ptr, ptr %res, align 8, !dbg !2477
  %start = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 0, !dbg !2478
  store i64 %19, ptr %start, align 8, !dbg !2479
  %21 = load i64, ptr %end, align 8, !dbg !2480
  %22 = load ptr, ptr %res, align 8, !dbg !2481
  %end12 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1, !dbg !2482
  store i64 %21, ptr %end12, align 8, !dbg !2483
  %23 = load ptr, ptr %entry6, align 8, !dbg !2484
  %call13 = call ptr @e820_type_to_string(ptr noundef %23) #14, !dbg !2485
  %24 = load ptr, ptr %res, align 8, !dbg !2486
  %name = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 2, !dbg !2487
  store ptr %call13, ptr %name, align 8, !dbg !2488
  %25 = load ptr, ptr %entry6, align 8, !dbg !2489
  %call14 = call i64 @e820_type_to_iomem_type(ptr noundef %25) #14, !dbg !2490
  %26 = load ptr, ptr %res, align 8, !dbg !2491
  %flags = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 3, !dbg !2492
  store i64 %call14, ptr %flags, align 8, !dbg !2493
  %27 = load ptr, ptr %entry6, align 8, !dbg !2494
  %call15 = call i64 @e820_type_to_iores_desc(ptr noundef %27) #14, !dbg !2495
  %28 = load ptr, ptr %res, align 8, !dbg !2496
  %desc = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 4, !dbg !2497
  store i64 %call15, ptr %desc, align 8, !dbg !2498
  %29 = load ptr, ptr %entry6, align 8, !dbg !2499
  %type = getelementptr inbounds %struct.e820_entry, ptr %29, i32 0, i32 2, !dbg !2501
  %30 = load i32, ptr %type, align 1, !dbg !2501
  %31 = load ptr, ptr %res, align 8, !dbg !2502
  %call16 = call zeroext i1 @do_mark_busy(i32 noundef %30, ptr noundef %31) #14, !dbg !2503
  br i1 %call16, label %if.then17, label %if.end20, !dbg !2504

if.then17:                                        ; preds = %if.end10
  %32 = load ptr, ptr %res, align 8, !dbg !2505
  %flags18 = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 3, !dbg !2507
  %33 = load i64, ptr %flags18, align 8, !dbg !2508
  %or = or i64 %33, 2147483648, !dbg !2508
  store i64 %or, ptr %flags18, align 8, !dbg !2508
  %34 = load ptr, ptr %res, align 8, !dbg !2509
  %call19 = call i32 @insert_resource(ptr noundef @iomem_resource, ptr noundef %34) #12, !dbg !2510
  br label %if.end20, !dbg !2511

if.end20:                                         ; preds = %if.then17, %if.end10
  %35 = load ptr, ptr %res, align 8, !dbg !2512
  %incdec.ptr21 = getelementptr %struct.resource, ptr %35, i32 1, !dbg !2512
  store ptr %incdec.ptr21, ptr %res, align 8, !dbg !2512
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2513
  br label %cleanup, !dbg !2513

cleanup:                                          ; preds = %if.end20, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry6) #13, !dbg !2513
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2514

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %36 = load i32, ptr %i, align 4, !dbg !2515
  %inc = add i32 %36, 1, !dbg !2515
  store i32 %inc, ptr %i, align 4, !dbg !2515
  br label %for.cond, !dbg !2516, !llvm.loop !2517

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !2519
  br label %for.cond22, !dbg !2520

for.cond22:                                       ; preds = %for.inc38, %for.end
  %37 = load i32, ptr %i, align 4, !dbg !2521
  %38 = load ptr, ptr @e820_table_firmware, align 8, !dbg !2522
  %nr_entries23 = getelementptr inbounds %struct.e820_table, ptr %38, i32 0, i32 0, !dbg !2523
  %39 = load i32, ptr %nr_entries23, align 4, !dbg !2523
  %cmp24 = icmp ult i32 %37, %39, !dbg !2524
  br i1 %cmp24, label %for.body26, label %for.end40, !dbg !2525

for.body26:                                       ; preds = %for.cond22
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry27) #13, !dbg !2526
  call void @llvm.dbg.declare(metadata ptr %entry27, metadata !2423, metadata !DIExpression()), !dbg !2527
  %40 = load ptr, ptr @e820_table_firmware, align 8, !dbg !2528
  %entries28 = getelementptr inbounds %struct.e820_table, ptr %40, i32 0, i32 1, !dbg !2529
  %arraydecay29 = getelementptr inbounds [320 x %struct.e820_entry], ptr %entries28, i64 0, i64 0, !dbg !2528
  %41 = load i32, ptr %i, align 4, !dbg !2530
  %idx.ext30 = sext i32 %41 to i64, !dbg !2531
  %add.ptr31 = getelementptr %struct.e820_entry, ptr %arraydecay29, i64 %idx.ext30, !dbg !2531
  store ptr %add.ptr31, ptr %entry27, align 8, !dbg !2527
  %42 = load ptr, ptr %entry27, align 8, !dbg !2532
  %addr32 = getelementptr inbounds %struct.e820_entry, ptr %42, i32 0, i32 0, !dbg !2533
  %43 = load i64, ptr %addr32, align 1, !dbg !2533
  %44 = load ptr, ptr %entry27, align 8, !dbg !2534
  %addr33 = getelementptr inbounds %struct.e820_entry, ptr %44, i32 0, i32 0, !dbg !2535
  %45 = load i64, ptr %addr33, align 1, !dbg !2535
  %46 = load ptr, ptr %entry27, align 8, !dbg !2536
  %size34 = getelementptr inbounds %struct.e820_entry, ptr %46, i32 0, i32 1, !dbg !2537
  %47 = load i64, ptr %size34, align 1, !dbg !2537
  %add35 = add i64 %45, %47, !dbg !2538
  %48 = load ptr, ptr %entry27, align 8, !dbg !2539
  %call36 = call ptr @e820_type_to_string(ptr noundef %48) #14, !dbg !2540
  %call37 = call i32 @firmware_map_add_early(i64 noundef %43, i64 noundef %add35, ptr noundef %call36) #12, !dbg !2541
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry27) #13, !dbg !2542
  br label %for.inc38, !dbg !2543

for.inc38:                                        ; preds = %for.body26
  %49 = load i32, ptr %i, align 4, !dbg !2544
  %inc39 = add i32 %49, 1, !dbg !2544
  store i32 %inc39, ptr %i, align 4, !dbg !2544
  br label %for.cond22, !dbg !2545, !llvm.loop !2546

for.end40:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #13, !dbg !2548
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #13, !dbg !2548
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !2548
  ret void, !dbg !2548

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @memblock_alloc(i64 noundef %size, i64 noundef %align) #10 align 16 !dbg !2549 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2553, metadata !DIExpression()), !dbg !2555
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !2554, metadata !DIExpression()), !dbg !2556
  %0 = load i64, ptr %size.addr, align 8, !dbg !2557
  %1 = load i64, ptr %align.addr, align 8, !dbg !2558
  %call = call ptr @memblock_alloc_try_nid(i64 noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef 0, i32 noundef -1) #12, !dbg !2559
  ret ptr %call, !dbg !2560
}

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !2561 dso_local void @panic(ptr noundef, ...) #11

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @e820_type_to_string(ptr noundef %entry1) #2 section ".init.text" align 16 !dbg !2565 {
entry:
  %retval = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2569, metadata !DIExpression()), !dbg !2570
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2571
  %type = getelementptr inbounds %struct.e820_entry, ptr %0, i32 0, i32 2, !dbg !2572
  %1 = load i32, ptr %type, align 1, !dbg !2572
  switch i32 %1, label %sw.default [
    i32 128, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 12, label %sw.bb5
    i32 7, label %sw.bb6
    i32 2, label %sw.bb7
    i32 -268435457, label %sw.bb8
  ], !dbg !2573

sw.bb:                                            ; preds = %entry, %entry
  store ptr @.str.40, ptr %retval, align 8, !dbg !2574
  br label %return, !dbg !2574

sw.bb2:                                           ; preds = %entry
  store ptr @.str.41, ptr %retval, align 8, !dbg !2576
  br label %return, !dbg !2576

sw.bb3:                                           ; preds = %entry
  store ptr @.str.42, ptr %retval, align 8, !dbg !2577
  br label %return, !dbg !2577

sw.bb4:                                           ; preds = %entry
  store ptr @.str.43, ptr %retval, align 8, !dbg !2578
  br label %return, !dbg !2578

sw.bb5:                                           ; preds = %entry
  store ptr @.str.44, ptr %retval, align 8, !dbg !2579
  br label %return, !dbg !2579

sw.bb6:                                           ; preds = %entry
  store ptr @.str.45, ptr %retval, align 8, !dbg !2580
  br label %return, !dbg !2580

sw.bb7:                                           ; preds = %entry
  store ptr @.str.46, ptr %retval, align 8, !dbg !2581
  br label %return, !dbg !2581

sw.bb8:                                           ; preds = %entry
  store ptr @.str.47, ptr %retval, align 8, !dbg !2582
  br label %return, !dbg !2582

sw.default:                                       ; preds = %entry
  store ptr @.str.48, ptr %retval, align 8, !dbg !2583
  br label %return, !dbg !2583

return:                                           ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %2 = load ptr, ptr %retval, align 8, !dbg !2584
  ret ptr %2, !dbg !2584
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @e820_type_to_iomem_type(ptr noundef %entry1) #2 section ".init.text" align 16 !dbg !2585 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2589, metadata !DIExpression()), !dbg !2590
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2591
  %type = getelementptr inbounds %struct.e820_entry, ptr %0, i32 0, i32 2, !dbg !2592
  %1 = load i32, ptr %type, align 1, !dbg !2592
  switch i32 %1, label %sw.default [
    i32 128, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb2
    i32 5, label %sw.bb2
    i32 12, label %sw.bb2
    i32 7, label %sw.bb2
    i32 2, label %sw.bb2
    i32 -268435457, label %sw.bb2
  ], !dbg !2593

sw.bb:                                            ; preds = %entry, %entry
  store i64 16777728, ptr %retval, align 8, !dbg !2594
  br label %return, !dbg !2594

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.default, !dbg !2596

sw.default:                                       ; preds = %entry, %sw.bb2
  store i64 512, ptr %retval, align 8, !dbg !2597
  br label %return, !dbg !2597

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i64, ptr %retval, align 8, !dbg !2598
  ret i64 %2, !dbg !2598
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @e820_type_to_iores_desc(ptr noundef %entry1) #2 section ".init.text" align 16 !dbg !2599 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2601, metadata !DIExpression()), !dbg !2602
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2603
  %type = getelementptr inbounds %struct.e820_entry, ptr %0, i32 0, i32 2, !dbg !2604
  %1 = load i32, ptr %type, align 1, !dbg !2604
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 7, label %sw.bb3
    i32 12, label %sw.bb4
    i32 2, label %sw.bb5
    i32 -268435457, label %sw.bb6
    i32 128, label %sw.bb7
    i32 1, label %sw.bb7
    i32 5, label %sw.bb7
  ], !dbg !2605

sw.bb:                                            ; preds = %entry
  store i64 2, ptr %retval, align 8, !dbg !2606
  br label %return, !dbg !2606

sw.bb2:                                           ; preds = %entry
  store i64 3, ptr %retval, align 8, !dbg !2608
  br label %return, !dbg !2608

sw.bb3:                                           ; preds = %entry
  store i64 4, ptr %retval, align 8, !dbg !2609
  br label %return, !dbg !2609

sw.bb4:                                           ; preds = %entry
  store i64 5, ptr %retval, align 8, !dbg !2610
  br label %return, !dbg !2610

sw.bb5:                                           ; preds = %entry
  store i64 7, ptr %retval, align 8, !dbg !2611
  br label %return, !dbg !2611

sw.bb6:                                           ; preds = %entry
  store i64 8, ptr %retval, align 8, !dbg !2612
  br label %return, !dbg !2612

sw.bb7:                                           ; preds = %entry, %entry, %entry
  br label %sw.default, !dbg !2613

sw.default:                                       ; preds = %entry, %sw.bb7
  store i64 0, ptr %retval, align 8, !dbg !2614
  br label %return, !dbg !2614

return:                                           ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %2 = load i64, ptr %retval, align 8, !dbg !2615
  ret i64 %2, !dbg !2615
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @do_mark_busy(i32 noundef %type, ptr noundef %res) #2 section ".init.text" align 16 !dbg !2616 {
entry:
  %retval = alloca i1, align 1
  %type.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2620, metadata !DIExpression()), !dbg !2622
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2621, metadata !DIExpression()), !dbg !2623
  %0 = load ptr, ptr %res.addr, align 8, !dbg !2624
  %start = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 0, !dbg !2626
  %1 = load i64, ptr %start, align 8, !dbg !2626
  %cmp = icmp ult i64 %1, 1048576, !dbg !2627
  br i1 %cmp, label %if.then, label %if.end, !dbg !2628

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !2629
  br label %return, !dbg !2629

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %type.addr, align 4, !dbg !2630
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 -268435457, label %sw.bb
    i32 12, label %sw.bb
    i32 7, label %sw.bb
    i32 128, label %sw.bb1
    i32 1, label %sw.bb1
    i32 3, label %sw.bb1
    i32 4, label %sw.bb1
    i32 5, label %sw.bb1
  ], !dbg !2631

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  store i1 false, ptr %retval, align 1, !dbg !2632
  br label %return, !dbg !2632

sw.bb1:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  br label %sw.default, !dbg !2634

sw.default:                                       ; preds = %if.end, %sw.bb1
  store i1 true, ptr %retval, align 1, !dbg !2635
  br label %return, !dbg !2635

return:                                           ; preds = %sw.default, %sw.bb, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !2636
  ret i1 %3, !dbg !2636
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2637 dso_local i32 @insert_resource(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2640 dso_local i32 @firmware_map_add_early(i64 noundef, i64 noundef, ptr noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__reserve_resources_late() #2 section ".init.text" align 16 !dbg !2644 {
entry:
  %i = alloca i32, align 4
  %res = alloca ptr, align 8
  %entry6 = alloca ptr, align 8
  %start = alloca i64, align 8
  %end7 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !2654
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2646, metadata !DIExpression()), !dbg !2655
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #13, !dbg !2656
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2647, metadata !DIExpression()), !dbg !2657
  %0 = load ptr, ptr @e820_res, align 8, !dbg !2658
  store ptr %0, ptr %res, align 8, !dbg !2659
  store i32 0, ptr %i, align 4, !dbg !2660
  br label %for.cond, !dbg !2662

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2663
  %2 = load ptr, ptr @e820_table, align 8, !dbg !2665
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %2, i32 0, i32 0, !dbg !2666
  %3 = load i32, ptr %nr_entries, align 4, !dbg !2666
  %cmp = icmp ult i32 %1, %3, !dbg !2667
  br i1 %cmp, label %for.body, label %for.end, !dbg !2668

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %res, align 8, !dbg !2669
  %parent = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 5, !dbg !2672
  %5 = load ptr, ptr %parent, align 8, !dbg !2672
  %tobool = icmp ne ptr %5, null, !dbg !2669
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2673

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr %res, align 8, !dbg !2674
  %end = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1, !dbg !2675
  %7 = load i64, ptr %end, align 8, !dbg !2675
  %tobool1 = icmp ne i64 %7, 0, !dbg !2674
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2676

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %res, align 8, !dbg !2677
  call void @insert_resource_expand_to_fit(ptr noundef @iomem_resource, ptr noundef %8) #12, !dbg !2678
  br label %if.end, !dbg !2678

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %9 = load ptr, ptr %res, align 8, !dbg !2679
  %incdec.ptr = getelementptr %struct.resource, ptr %9, i32 1, !dbg !2679
  store ptr %incdec.ptr, ptr %res, align 8, !dbg !2679
  br label %for.inc, !dbg !2680

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !2681
  %inc = add i32 %10, 1, !dbg !2681
  store i32 %inc, ptr %i, align 4, !dbg !2681
  br label %for.cond, !dbg !2682, !llvm.loop !2683

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !2685
  br label %for.cond2, !dbg !2686

for.cond2:                                        ; preds = %for.inc23, %for.end
  %11 = load i32, ptr %i, align 4, !dbg !2687
  %12 = load ptr, ptr @e820_table, align 8, !dbg !2688
  %nr_entries3 = getelementptr inbounds %struct.e820_table, ptr %12, i32 0, i32 0, !dbg !2689
  %13 = load i32, ptr %nr_entries3, align 4, !dbg !2689
  %cmp4 = icmp ult i32 %11, %13, !dbg !2690
  br i1 %cmp4, label %for.body5, label %for.end25, !dbg !2691

for.body5:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry6) #13, !dbg !2692
  call void @llvm.dbg.declare(metadata ptr %entry6, metadata !2648, metadata !DIExpression()), !dbg !2693
  %14 = load ptr, ptr @e820_table, align 8, !dbg !2694
  %entries = getelementptr inbounds %struct.e820_table, ptr %14, i32 0, i32 1, !dbg !2695
  %15 = load i32, ptr %i, align 4, !dbg !2696
  %idxprom = sext i32 %15 to i64, !dbg !2694
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !2694
  store ptr %arrayidx, ptr %entry6, align 8, !dbg !2693
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #13, !dbg !2697
  call void @llvm.dbg.declare(metadata ptr %start, metadata !2652, metadata !DIExpression()), !dbg !2698
  call void @llvm.lifetime.start.p0(i64 8, ptr %end7) #13, !dbg !2697
  call void @llvm.dbg.declare(metadata ptr %end7, metadata !2653, metadata !DIExpression()), !dbg !2699
  %16 = load ptr, ptr %entry6, align 8, !dbg !2700
  %type = getelementptr inbounds %struct.e820_entry, ptr %16, i32 0, i32 2, !dbg !2702
  %17 = load i32, ptr %type, align 1, !dbg !2702
  %cmp8 = icmp ne i32 %17, 1, !dbg !2703
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2704

if.then9:                                         ; preds = %for.body5
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2705

if.end10:                                         ; preds = %for.body5
  %18 = load ptr, ptr %entry6, align 8, !dbg !2706
  %addr = getelementptr inbounds %struct.e820_entry, ptr %18, i32 0, i32 0, !dbg !2707
  %19 = load i64, ptr %addr, align 1, !dbg !2707
  %20 = load ptr, ptr %entry6, align 8, !dbg !2708
  %size = getelementptr inbounds %struct.e820_entry, ptr %20, i32 0, i32 1, !dbg !2709
  %21 = load i64, ptr %size, align 1, !dbg !2709
  %add = add i64 %19, %21, !dbg !2710
  store i64 %add, ptr %start, align 8, !dbg !2711
  %22 = load i64, ptr %start, align 8, !dbg !2712
  %sub = sub i64 %22, 1, !dbg !2712
  %23 = load i64, ptr %start, align 8, !dbg !2712
  %call = call i64 @ram_alignment(i64 noundef %23) #14, !dbg !2712
  %sub11 = sub i64 %call, 1, !dbg !2712
  %or = or i64 %sub, %sub11, !dbg !2712
  %add12 = add i64 %or, 1, !dbg !2712
  %sub13 = sub i64 %add12, 1, !dbg !2713
  store i64 %sub13, ptr %end7, align 8, !dbg !2714
  %24 = load i64, ptr %end7, align 8, !dbg !2715
  %cmp14 = icmp ugt i64 %24, -1, !dbg !2717
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2718

if.then15:                                        ; preds = %if.end10
  store i64 -1, ptr %end7, align 8, !dbg !2719
  br label %if.end16, !dbg !2720

if.end16:                                         ; preds = %if.then15, %if.end10
  %25 = load i64, ptr %start, align 8, !dbg !2721
  %26 = load i64, ptr %end7, align 8, !dbg !2723
  %cmp17 = icmp uge i64 %25, %26, !dbg !2724
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !2725

if.then18:                                        ; preds = %if.end16
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2726

if.end19:                                         ; preds = %if.end16
  br label %do.body, !dbg !2727

do.body:                                          ; preds = %if.end19
  br label %do.cond, !dbg !2729

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2729

do.end:                                           ; preds = %do.cond
  %27 = load i64, ptr %start, align 8, !dbg !2727
  %28 = load i64, ptr %end7, align 8, !dbg !2727
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, i64 noundef %27, i64 noundef %28) #14, !dbg !2727
  store i32 %call20, ptr %tmp, align 4, !dbg !2729
  %29 = load i32, ptr %tmp, align 4, !dbg !2727
  %30 = load i64, ptr %start, align 8, !dbg !2731
  %31 = load i64, ptr %end7, align 8, !dbg !2732
  call void @reserve_region_with_split(ptr noundef @iomem_resource, i64 noundef %30, i64 noundef %31, ptr noundef @.str.20) #12, !dbg !2733
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2734
  br label %cleanup, !dbg !2734

cleanup:                                          ; preds = %do.end, %if.then18, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %end7) #13, !dbg !2734
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #13, !dbg !2734
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry6) #13, !dbg !2734
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc23
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc23, !dbg !2735

for.inc23:                                        ; preds = %cleanup.cont, %cleanup
  %32 = load i32, ptr %i, align 4, !dbg !2736
  %inc24 = add i32 %32, 1, !dbg !2736
  store i32 %inc24, ptr %i, align 4, !dbg !2736
  br label %for.cond2, !dbg !2737, !llvm.loop !2738

for.end25:                                        ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #13, !dbg !2740
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !2740
  ret void, !dbg !2740

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2741 dso_local void @insert_resource_expand_to_fit(ptr noundef, ptr noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @ram_alignment(i64 noundef %pos) #2 section ".init.text" align 16 !dbg !2744 {
entry:
  %retval = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %mb = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !2748, metadata !DIExpression()), !dbg !2750
  call void @llvm.lifetime.start.p0(i64 8, ptr %mb) #13, !dbg !2751
  call void @llvm.dbg.declare(metadata ptr %mb, metadata !2749, metadata !DIExpression()), !dbg !2752
  %0 = load i64, ptr %pos.addr, align 8, !dbg !2753
  %shr = lshr i64 %0, 20, !dbg !2754
  store i64 %shr, ptr %mb, align 8, !dbg !2752
  %1 = load i64, ptr %mb, align 8, !dbg !2755
  %tobool = icmp ne i64 %1, 0, !dbg !2755
  br i1 %tobool, label %if.end, label %if.then, !dbg !2757

if.then:                                          ; preds = %entry
  store i64 65536, ptr %retval, align 8, !dbg !2758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2758

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %mb, align 8, !dbg !2759
  %cmp = icmp ult i64 %2, 16, !dbg !2761
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2762

if.then1:                                         ; preds = %if.end
  store i64 1048576, ptr %retval, align 8, !dbg !2763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2763

if.end2:                                          ; preds = %if.end
  store i64 67108864, ptr %retval, align 8, !dbg !2764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2764

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mb) #13, !dbg !2765
  %3 = load i64, ptr %retval, align 8, !dbg !2765
  ret i64 %3, !dbg !2765
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2766 dso_local void @reserve_region_with_split(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @e820__memory_setup_default() #2 section ".init.text" align 16 !dbg !2769 {
entry:
  %who = alloca ptr, align 8
  %mem_size = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %who) #13, !dbg !2777
  call void @llvm.dbg.declare(metadata ptr %who, metadata !2773, metadata !DIExpression()), !dbg !2778
  store ptr @.str.21, ptr %who, align 8, !dbg !2778
  %0 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 20), align 1, !dbg !2779
  %conv = zext i8 %0 to i32, !dbg !2780
  %call = call i32 @append_e820_table(ptr noundef getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 31), i32 noundef %conv) #14, !dbg !2781
  %cmp = icmp slt i32 %call, 0, !dbg !2782
  br i1 %cmp, label %if.then, label %if.end8, !dbg !2783

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem_size) #13, !dbg !2784
  call void @llvm.dbg.declare(metadata ptr %mem_size, metadata !2774, metadata !DIExpression()), !dbg !2785
  %1 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 18), align 1, !dbg !2786
  %2 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 2), align 1, !dbg !2788
  %conv2 = zext i16 %2 to i32, !dbg !2789
  %cmp3 = icmp ult i32 %1, %conv2, !dbg !2790
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !2791

if.then5:                                         ; preds = %if.then
  %3 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 2), align 1, !dbg !2792
  %conv6 = zext i16 %3 to i64, !dbg !2794
  store i64 %conv6, ptr %mem_size, align 8, !dbg !2795
  store ptr @.str.22, ptr %who, align 8, !dbg !2796
  br label %if.end, !dbg !2797

if.else:                                          ; preds = %if.then
  %4 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 18), align 1, !dbg !2798
  %conv7 = zext i32 %4 to i64, !dbg !2800
  store i64 %conv7, ptr %mem_size, align 8, !dbg !2801
  store ptr @.str.23, ptr %who, align 8, !dbg !2802
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %5 = load ptr, ptr @e820_table, align 8, !dbg !2803
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %5, i32 0, i32 0, !dbg !2804
  store i32 0, ptr %nr_entries, align 4, !dbg !2805
  call void @e820__range_add(i64 noundef 0, i64 noundef 651264, i32 noundef 1) #14, !dbg !2806
  %6 = load i64, ptr %mem_size, align 8, !dbg !2807
  %shl = shl i64 %6, 10, !dbg !2808
  call void @e820__range_add(i64 noundef 1048576, i64 noundef %shl, i32 noundef 1) #14, !dbg !2809
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem_size) #13, !dbg !2810
  br label %if.end8, !dbg !2811

if.end8:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr @e820_table, align 8, !dbg !2812
  %call9 = call i32 @e820__update_table(ptr noundef %7) #14, !dbg !2813
  %8 = load ptr, ptr %who, align 8, !dbg !2814
  call void @llvm.lifetime.end.p0(i64 8, ptr %who) #13, !dbg !2815
  ret ptr %8, !dbg !2816
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @append_e820_table(ptr noundef %entries, i32 noundef %nr_entries) #2 section ".init.text" align 16 !dbg !2817 {
entry:
  %retval = alloca i32, align 4
  %entries.addr = alloca ptr, align 8
  %nr_entries.addr = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !2819, metadata !DIExpression()), !dbg !2821
  store i32 %nr_entries, ptr %nr_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_entries.addr, metadata !2820, metadata !DIExpression()), !dbg !2822
  %0 = load i32, ptr %nr_entries.addr, align 4, !dbg !2823
  %cmp = icmp ult i32 %0, 2, !dbg !2825
  br i1 %cmp, label %if.then, label %if.end, !dbg !2826

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2827
  br label %return, !dbg !2827

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entries.addr, align 8, !dbg !2828
  %2 = load i32, ptr %nr_entries.addr, align 4, !dbg !2829
  %call = call i32 @__append_e820_table(ptr noundef %1, i32 noundef %2) #14, !dbg !2830
  store i32 %call, ptr %retval, align 4, !dbg !2831
  br label %return, !dbg !2831

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !2832
  ret i32 %3, !dbg !2832
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__memory_setup() #2 section ".init.text" align 16 !dbg !2833 {
entry:
  %who = alloca ptr, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %who) #13, !dbg !2836
  call void @llvm.dbg.declare(metadata ptr %who, metadata !2835, metadata !DIExpression()), !dbg !2837
  br label %do.body, !dbg !2838

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2839

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2839

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_init_resources, ptr @x86_init, i32 0, i32 2), align 8, !dbg !2841
  %call = call ptr %0() #12, !dbg !2842
  store ptr %call, ptr %who, align 8, !dbg !2843
  %1 = load ptr, ptr @e820_table_kexec, align 8, !dbg !2844
  %2 = load ptr, ptr @e820_table, align 8, !dbg !2845
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 6404, i1 false), !dbg !2846
  %3 = load ptr, ptr @e820_table_firmware, align 8, !dbg !2847
  %4 = load ptr, ptr @e820_table, align 8, !dbg !2848
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %4, i64 6404, i1 false), !dbg !2849
  br label %do.body1, !dbg !2850

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !2852

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !2852

do.end3:                                          ; preds = %do.cond2
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.24) #14, !dbg !2850
  store i32 %call4, ptr %tmp, align 4, !dbg !2852
  %5 = load i32, ptr %tmp, align 4, !dbg !2850
  %6 = load ptr, ptr %who, align 8, !dbg !2854
  call void @e820__print_table(ptr noundef %6) #14, !dbg !2855
  call void @llvm.lifetime.end.p0(i64 8, ptr %who) #13, !dbg !2856
  ret void, !dbg !2856
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @e820__memblock_setup() #2 section ".init.text" align 16 !dbg !2857 {
entry:
  %i = alloca i32, align 4
  %end = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !2865
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2859, metadata !DIExpression()), !dbg !2866
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #13, !dbg !2867
  call void @llvm.dbg.declare(metadata ptr %end, metadata !2860, metadata !DIExpression()), !dbg !2868
  call void @memblock_allow_resize() #12, !dbg !2869
  store i32 0, ptr %i, align 4, !dbg !2870
  br label %for.cond, !dbg !2871

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2872
  %1 = load ptr, ptr @e820_table, align 8, !dbg !2873
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %1, i32 0, i32 0, !dbg !2874
  %2 = load i32, ptr %nr_entries, align 4, !dbg !2874
  %cmp = icmp ult i32 %0, %2, !dbg !2875
  br i1 %cmp, label %for.body, label %for.end, !dbg !2876

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #13, !dbg !2877
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2861, metadata !DIExpression()), !dbg !2878
  %3 = load ptr, ptr @e820_table, align 8, !dbg !2879
  %entries = getelementptr inbounds %struct.e820_table, ptr %3, i32 0, i32 1, !dbg !2880
  %4 = load i32, ptr %i, align 4, !dbg !2881
  %idxprom = sext i32 %4 to i64, !dbg !2879
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !2879
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !2878
  %5 = load ptr, ptr %entry1, align 8, !dbg !2882
  %addr = getelementptr inbounds %struct.e820_entry, ptr %5, i32 0, i32 0, !dbg !2883
  %6 = load i64, ptr %addr, align 1, !dbg !2883
  %7 = load ptr, ptr %entry1, align 8, !dbg !2884
  %size = getelementptr inbounds %struct.e820_entry, ptr %7, i32 0, i32 1, !dbg !2885
  %8 = load i64, ptr %size, align 1, !dbg !2885
  %add = add i64 %6, %8, !dbg !2886
  store i64 %add, ptr %end, align 8, !dbg !2887
  %9 = load i64, ptr %end, align 8, !dbg !2888
  %10 = load i64, ptr %end, align 8, !dbg !2890
  %cmp2 = icmp ne i64 %9, %10, !dbg !2891
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2892

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2893

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %entry1, align 8, !dbg !2894
  %type = getelementptr inbounds %struct.e820_entry, ptr %11, i32 0, i32 2, !dbg !2896
  %12 = load i32, ptr %type, align 1, !dbg !2896
  %cmp3 = icmp eq i32 %12, -268435457, !dbg !2897
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !2898

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %entry1, align 8, !dbg !2899
  %addr5 = getelementptr inbounds %struct.e820_entry, ptr %13, i32 0, i32 0, !dbg !2900
  %14 = load i64, ptr %addr5, align 1, !dbg !2900
  %15 = load ptr, ptr %entry1, align 8, !dbg !2901
  %size6 = getelementptr inbounds %struct.e820_entry, ptr %15, i32 0, i32 1, !dbg !2902
  %16 = load i64, ptr %size6, align 1, !dbg !2902
  %call = call i32 @memblock_reserve(i64 noundef %14, i64 noundef %16) #12, !dbg !2903
  br label %if.end7, !dbg !2903

if.end7:                                          ; preds = %if.then4, %if.end
  %17 = load ptr, ptr %entry1, align 8, !dbg !2904
  %type8 = getelementptr inbounds %struct.e820_entry, ptr %17, i32 0, i32 2, !dbg !2906
  %18 = load i32, ptr %type8, align 1, !dbg !2906
  %cmp9 = icmp ne i32 %18, 1, !dbg !2907
  br i1 %cmp9, label %land.lhs.true, label %if.end13, !dbg !2908

land.lhs.true:                                    ; preds = %if.end7
  %19 = load ptr, ptr %entry1, align 8, !dbg !2909
  %type10 = getelementptr inbounds %struct.e820_entry, ptr %19, i32 0, i32 2, !dbg !2910
  %20 = load i32, ptr %type10, align 1, !dbg !2910
  %cmp11 = icmp ne i32 %20, 128, !dbg !2911
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !2912

if.then12:                                        ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2913

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %21 = load ptr, ptr %entry1, align 8, !dbg !2914
  %addr14 = getelementptr inbounds %struct.e820_entry, ptr %21, i32 0, i32 0, !dbg !2915
  %22 = load i64, ptr %addr14, align 1, !dbg !2915
  %23 = load ptr, ptr %entry1, align 8, !dbg !2916
  %size15 = getelementptr inbounds %struct.e820_entry, ptr %23, i32 0, i32 1, !dbg !2917
  %24 = load i64, ptr %size15, align 1, !dbg !2917
  %call16 = call i32 @memblock_add(i64 noundef %22, i64 noundef %24) #12, !dbg !2918
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2919
  br label %cleanup, !dbg !2919

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #13, !dbg !2919
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2920

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %25 = load i32, ptr %i, align 4, !dbg !2921
  %inc = add i32 %25, 1, !dbg !2921
  store i32 %inc, ptr %i, align 4, !dbg !2921
  br label %for.cond, !dbg !2922, !llvm.loop !2923

for.end:                                          ; preds = %for.cond
  call void @memblock_trim_memory(i64 noundef 4096) #12, !dbg !2925
  call void @memblock_dump_all() #12, !dbg !2926
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #13, !dbg !2927
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !2927
  ret void, !dbg !2927

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2928 dso_local void @memblock_allow_resize() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2929 dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2932 dso_local i32 @memblock_add(i64 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2933 dso_local void @memblock_trim_memory(i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2936 dso_local void @memblock_dump_all() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2937 dso_local i32 @acpi_nvs_register(i64 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2941 dso_local i64 @memblock_phys_alloc_range(i64 noundef, i64 noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2944 dso_local i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2947 dso_local i64 @memparse(ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2952 dso_local ptr @strchr(ptr noundef, i32 noundef) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_memmap_one(ptr noundef %p) #2 section ".init.text" align 16 !dbg !2955 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %oldp = alloca ptr, align 8
  %start_at = alloca i64, align 8
  %mem_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %from = alloca i32, align 4
  %to = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2957, metadata !DIExpression()), !dbg !2969
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldp) #13, !dbg !2970
  call void @llvm.dbg.declare(metadata ptr %oldp, metadata !2958, metadata !DIExpression()), !dbg !2971
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_at) #13, !dbg !2972
  call void @llvm.dbg.declare(metadata ptr %start_at, metadata !2959, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem_size) #13, !dbg !2972
  call void @llvm.dbg.declare(metadata ptr %mem_size, metadata !2960, metadata !DIExpression()), !dbg !2974
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2975
  %tobool = icmp ne ptr %0, null, !dbg !2975
  br i1 %tobool, label %if.end, label %if.then, !dbg !2977

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !2978

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2979
  %call = call i32 @strncmp(ptr noundef %1, ptr noundef @.str.39, i64 noundef 8) #12, !dbg !2981
  %tobool1 = icmp ne i32 %call, 0, !dbg !2981
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2982

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr @e820_table, align 8, !dbg !2983
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %2, i32 0, i32 0, !dbg !2985
  store i32 0, ptr %nr_entries, align 4, !dbg !2986
  store i32 1, ptr @userdef, align 4, !dbg !2987
  store i32 0, ptr %retval, align 4, !dbg !2988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !2988

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2989
  store ptr %3, ptr %oldp, align 8, !dbg !2990
  %4 = load ptr, ptr %p.addr, align 8, !dbg !2991
  %call4 = call i64 @memparse(ptr noundef %4, ptr noundef %p.addr) #12, !dbg !2992
  store i64 %call4, ptr %mem_size, align 8, !dbg !2993
  %5 = load ptr, ptr %p.addr, align 8, !dbg !2994
  %6 = load ptr, ptr %oldp, align 8, !dbg !2996
  %cmp = icmp eq ptr %5, %6, !dbg !2997
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2998

if.then5:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !2999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !2999

if.end6:                                          ; preds = %if.end3
  store i32 1, ptr @userdef, align 4, !dbg !3000
  %7 = load ptr, ptr %p.addr, align 8, !dbg !3001
  %8 = load i8, ptr %7, align 1, !dbg !3002
  %conv = zext i8 %8 to i32, !dbg !3002
  %cmp7 = icmp eq i32 %conv, 64, !dbg !3003
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !3004

if.then9:                                         ; preds = %if.end6
  %9 = load ptr, ptr %p.addr, align 8, !dbg !3005
  %add.ptr = getelementptr i8, ptr %9, i64 1, !dbg !3007
  %call10 = call i64 @memparse(ptr noundef %add.ptr, ptr noundef %p.addr) #12, !dbg !3008
  store i64 %call10, ptr %start_at, align 8, !dbg !3009
  %10 = load i64, ptr %start_at, align 8, !dbg !3010
  %11 = load i64, ptr %mem_size, align 8, !dbg !3011
  call void @e820__range_add(i64 noundef %10, i64 noundef %11, i32 noundef 1) #14, !dbg !3012
  br label %if.end82, !dbg !3013

if.else:                                          ; preds = %if.end6
  %12 = load ptr, ptr %p.addr, align 8, !dbg !3014
  %13 = load i8, ptr %12, align 1, !dbg !3015
  %conv11 = zext i8 %13 to i32, !dbg !3015
  %cmp12 = icmp eq i32 %conv11, 35, !dbg !3016
  br i1 %cmp12, label %if.then14, label %if.else17, !dbg !3017

if.then14:                                        ; preds = %if.else
  %14 = load ptr, ptr %p.addr, align 8, !dbg !3018
  %add.ptr15 = getelementptr i8, ptr %14, i64 1, !dbg !3020
  %call16 = call i64 @memparse(ptr noundef %add.ptr15, ptr noundef %p.addr) #12, !dbg !3021
  store i64 %call16, ptr %start_at, align 8, !dbg !3022
  %15 = load i64, ptr %start_at, align 8, !dbg !3023
  %16 = load i64, ptr %mem_size, align 8, !dbg !3024
  call void @e820__range_add(i64 noundef %15, i64 noundef %16, i32 noundef 3) #14, !dbg !3025
  br label %if.end81, !dbg !3026

if.else17:                                        ; preds = %if.else
  %17 = load ptr, ptr %p.addr, align 8, !dbg !3027
  %18 = load i8, ptr %17, align 1, !dbg !3028
  %conv18 = zext i8 %18 to i32, !dbg !3028
  %cmp19 = icmp eq i32 %conv18, 36, !dbg !3029
  br i1 %cmp19, label %if.then21, label %if.else24, !dbg !3030

if.then21:                                        ; preds = %if.else17
  %19 = load ptr, ptr %p.addr, align 8, !dbg !3031
  %add.ptr22 = getelementptr i8, ptr %19, i64 1, !dbg !3033
  %call23 = call i64 @memparse(ptr noundef %add.ptr22, ptr noundef %p.addr) #12, !dbg !3034
  store i64 %call23, ptr %start_at, align 8, !dbg !3035
  %20 = load i64, ptr %start_at, align 8, !dbg !3036
  %21 = load i64, ptr %mem_size, align 8, !dbg !3037
  call void @e820__range_add(i64 noundef %20, i64 noundef %21, i32 noundef 2) #14, !dbg !3038
  br label %if.end80, !dbg !3039

if.else24:                                        ; preds = %if.else17
  %22 = load ptr, ptr %p.addr, align 8, !dbg !3040
  %23 = load i8, ptr %22, align 1, !dbg !3041
  %conv25 = zext i8 %23 to i32, !dbg !3041
  %cmp26 = icmp eq i32 %conv25, 33, !dbg !3042
  br i1 %cmp26, label %if.then28, label %if.else31, !dbg !3043

if.then28:                                        ; preds = %if.else24
  %24 = load ptr, ptr %p.addr, align 8, !dbg !3044
  %add.ptr29 = getelementptr i8, ptr %24, i64 1, !dbg !3046
  %call30 = call i64 @memparse(ptr noundef %add.ptr29, ptr noundef %p.addr) #12, !dbg !3047
  store i64 %call30, ptr %start_at, align 8, !dbg !3048
  %25 = load i64, ptr %start_at, align 8, !dbg !3049
  %26 = load i64, ptr %mem_size, align 8, !dbg !3050
  call void @e820__range_add(i64 noundef %25, i64 noundef %26, i32 noundef 12) #14, !dbg !3051
  br label %if.end79, !dbg !3052

if.else31:                                        ; preds = %if.else24
  %27 = load ptr, ptr %p.addr, align 8, !dbg !3053
  %28 = load i8, ptr %27, align 1, !dbg !3054
  %conv32 = zext i8 %28 to i32, !dbg !3054
  %cmp33 = icmp eq i32 %conv32, 37, !dbg !3055
  br i1 %cmp33, label %if.then35, label %if.else76, !dbg !3056

if.then35:                                        ; preds = %if.else31
  call void @llvm.lifetime.start.p0(i64 4, ptr %from) #13, !dbg !3057
  call void @llvm.dbg.declare(metadata ptr %from, metadata !2961, metadata !DIExpression()), !dbg !3058
  store i32 0, ptr %from, align 4, !dbg !3058
  call void @llvm.lifetime.start.p0(i64 4, ptr %to) #13, !dbg !3057
  call void @llvm.dbg.declare(metadata ptr %to, metadata !2968, metadata !DIExpression()), !dbg !3059
  store i32 0, ptr %to, align 4, !dbg !3059
  %29 = load ptr, ptr %p.addr, align 8, !dbg !3060
  %add.ptr36 = getelementptr i8, ptr %29, i64 1, !dbg !3061
  %call37 = call i64 @memparse(ptr noundef %add.ptr36, ptr noundef %p.addr) #12, !dbg !3062
  store i64 %call37, ptr %start_at, align 8, !dbg !3063
  %30 = load ptr, ptr %p.addr, align 8, !dbg !3064
  %31 = load i8, ptr %30, align 1, !dbg !3066
  %conv38 = zext i8 %31 to i32, !dbg !3066
  %cmp39 = icmp eq i32 %conv38, 45, !dbg !3067
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !3068

if.then41:                                        ; preds = %if.then35
  %32 = load ptr, ptr %p.addr, align 8, !dbg !3069
  %add.ptr42 = getelementptr i8, ptr %32, i64 1, !dbg !3070
  %call43 = call i64 @simple_strtoull(ptr noundef %add.ptr42, ptr noundef %p.addr, i32 noundef 0) #12, !dbg !3071
  %conv44 = trunc i64 %call43 to i32, !dbg !3071
  store i32 %conv44, ptr %from, align 4, !dbg !3072
  br label %if.end45, !dbg !3073

if.end45:                                         ; preds = %if.then41, %if.then35
  %33 = load ptr, ptr %p.addr, align 8, !dbg !3074
  %34 = load i8, ptr %33, align 1, !dbg !3076
  %conv46 = zext i8 %34 to i32, !dbg !3076
  %cmp47 = icmp eq i32 %conv46, 43, !dbg !3077
  br i1 %cmp47, label %if.then49, label %if.end53, !dbg !3078

if.then49:                                        ; preds = %if.end45
  %35 = load ptr, ptr %p.addr, align 8, !dbg !3079
  %add.ptr50 = getelementptr i8, ptr %35, i64 1, !dbg !3080
  %call51 = call i64 @simple_strtoull(ptr noundef %add.ptr50, ptr noundef %p.addr, i32 noundef 0) #12, !dbg !3081
  %conv52 = trunc i64 %call51 to i32, !dbg !3081
  store i32 %conv52, ptr %to, align 4, !dbg !3082
  br label %if.end53, !dbg !3083

if.end53:                                         ; preds = %if.then49, %if.end45
  %36 = load ptr, ptr %p.addr, align 8, !dbg !3084
  %37 = load i8, ptr %36, align 1, !dbg !3086
  %conv54 = zext i8 %37 to i32, !dbg !3086
  %cmp55 = icmp ne i32 %conv54, 0, !dbg !3087
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !3088

if.then57:                                        ; preds = %if.end53
  store i32 -22, ptr %retval, align 4, !dbg !3089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3089

if.end58:                                         ; preds = %if.end53
  %38 = load i32, ptr %from, align 4, !dbg !3090
  %tobool59 = icmp ne i32 %38, 0, !dbg !3090
  br i1 %tobool59, label %land.lhs.true, label %if.else63, !dbg !3092

land.lhs.true:                                    ; preds = %if.end58
  %39 = load i32, ptr %to, align 4, !dbg !3093
  %tobool60 = icmp ne i32 %39, 0, !dbg !3093
  br i1 %tobool60, label %if.then61, label %if.else63, !dbg !3094

if.then61:                                        ; preds = %land.lhs.true
  %40 = load i64, ptr %start_at, align 8, !dbg !3095
  %41 = load i64, ptr %mem_size, align 8, !dbg !3096
  %42 = load i32, ptr %from, align 4, !dbg !3097
  %43 = load i32, ptr %to, align 4, !dbg !3098
  %call62 = call i64 @e820__range_update(i64 noundef %40, i64 noundef %41, i32 noundef %42, i32 noundef %43) #14, !dbg !3099
  br label %if.end74, !dbg !3099

if.else63:                                        ; preds = %land.lhs.true, %if.end58
  %44 = load i32, ptr %to, align 4, !dbg !3100
  %tobool64 = icmp ne i32 %44, 0, !dbg !3100
  br i1 %tobool64, label %if.then65, label %if.else66, !dbg !3102

if.then65:                                        ; preds = %if.else63
  %45 = load i64, ptr %start_at, align 8, !dbg !3103
  %46 = load i64, ptr %mem_size, align 8, !dbg !3104
  %47 = load i32, ptr %to, align 4, !dbg !3105
  call void @e820__range_add(i64 noundef %45, i64 noundef %46, i32 noundef %47) #14, !dbg !3106
  br label %if.end73, !dbg !3106

if.else66:                                        ; preds = %if.else63
  %48 = load i32, ptr %from, align 4, !dbg !3107
  %tobool67 = icmp ne i32 %48, 0, !dbg !3107
  br i1 %tobool67, label %if.then68, label %if.else70, !dbg !3109

if.then68:                                        ; preds = %if.else66
  %49 = load i64, ptr %start_at, align 8, !dbg !3110
  %50 = load i64, ptr %mem_size, align 8, !dbg !3111
  %51 = load i32, ptr %from, align 4, !dbg !3112
  %call69 = call i64 @e820__range_remove(i64 noundef %49, i64 noundef %50, i32 noundef %51, i1 noundef zeroext true) #14, !dbg !3113
  br label %if.end72, !dbg !3113

if.else70:                                        ; preds = %if.else66
  %52 = load i64, ptr %start_at, align 8, !dbg !3114
  %53 = load i64, ptr %mem_size, align 8, !dbg !3115
  %call71 = call i64 @e820__range_remove(i64 noundef %52, i64 noundef %53, i32 noundef 0, i1 noundef zeroext false) #14, !dbg !3116
  br label %if.end72

if.end72:                                         ; preds = %if.else70, %if.then68
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then65
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then61
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3117
  br label %cleanup, !dbg !3117

cleanup:                                          ; preds = %if.end74, %if.then57
  call void @llvm.lifetime.end.p0(i64 4, ptr %to) #13, !dbg !3117
  call void @llvm.lifetime.end.p0(i64 4, ptr %from) #13, !dbg !3117
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup86 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end78, !dbg !3118

if.else76:                                        ; preds = %if.else31
  %54 = load i64, ptr %mem_size, align 8, !dbg !3119
  %55 = load i64, ptr %mem_size, align 8, !dbg !3121
  %sub = sub i64 -1, %55, !dbg !3122
  %call77 = call i64 @e820__range_remove(i64 noundef %54, i64 noundef %sub, i32 noundef 1, i1 noundef zeroext true) #14, !dbg !3123
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %cleanup.cont
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then28
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then21
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then14
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then9
  %56 = load ptr, ptr %p.addr, align 8, !dbg !3124
  %57 = load i8, ptr %56, align 1, !dbg !3125
  %conv83 = zext i8 %57 to i32, !dbg !3125
  %cmp84 = icmp eq i32 %conv83, 0, !dbg !3126
  %58 = zext i1 %cmp84 to i64, !dbg !3125
  %cond = select i1 %cmp84, i32 0, i32 -22, !dbg !3125
  store i32 %cond, ptr %retval, align 4, !dbg !3127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !3127

cleanup86:                                        ; preds = %if.end82, %cleanup, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem_size) #13, !dbg !3128
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_at) #13, !dbg !3128
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldp) #13, !dbg !3128
  %59 = load i32, ptr %retval, align 4, !dbg !3128
  ret i32 %59, !dbg !3128
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3129 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3132 dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3136 dso_local void @early_printk(ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3137 dso_local ptr @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone }
attributes #13 = { nounwind }
attributes #14 = { cold noredzone }
attributes #15 = { noredzone allocsize(1) }
attributes #16 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!350, !351, !352, !353, !354, !355, !356, !357}
!llvm.ident = !{!358}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "e820_table_init", scope: !2, file: !3, line: 59, type: !70, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.e820.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/e820\22 -D KBUILD_BASENAME=\22e820\22 -D KBUILD_MODNAME=\22e820\22 -D __KBUILD_MODNAME=kmod_e820 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/e820.ll arch/x86/kernel/e820.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !36, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/e820.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "77841395e224083a3513e9a67e2f931d")
!4 = !{!5, !18, !23}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!10 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!11 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!12 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!13 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!14 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!15 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!16 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!17 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 10, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "false", value: 0)
!22 = !DIEnumerator(name: "true", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 135, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!26 = !DIEnumerator(name: "IORES_DESC_NONE", value: 0)
!27 = !DIEnumerator(name: "IORES_DESC_CRASH_KERNEL", value: 1)
!28 = !DIEnumerator(name: "IORES_DESC_ACPI_TABLES", value: 2)
!29 = !DIEnumerator(name: "IORES_DESC_ACPI_NV_STORAGE", value: 3)
!30 = !DIEnumerator(name: "IORES_DESC_PERSISTENT_MEMORY", value: 4)
!31 = !DIEnumerator(name: "IORES_DESC_PERSISTENT_MEMORY_LEGACY", value: 5)
!32 = !DIEnumerator(name: "IORES_DESC_DEVICE_PRIVATE_MEMORY", value: 6)
!33 = !DIEnumerator(name: "IORES_DESC_RESERVED", value: 7)
!34 = !DIEnumerator(name: "IORES_DESC_SOFT_RESERVED", value: 8)
!35 = !DIEnumerator(name: "IORES_DESC_CXL", value: 9)
!36 = !{!37, !38, !39, !41, !52, !59, !61, !63}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !40, line: 154, baseType: !7)
!40 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !43, line: 143, size: 160, elements: !44)
!43 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!44 = !{!45, !49, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !42, file: !43, line: 144, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !47, line: 31, baseType: !48)
!47 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!48 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !42, file: !43, line: 145, baseType: !46, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !43, line: 146, baseType: !51, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !47, line: 27, baseType: !7)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_indirect", file: !43, line: 61, size: 192, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !43, line: 62, baseType: !51, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !53, file: !43, line: 63, baseType: !51, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !53, file: !43, line: 64, baseType: !46, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !53, file: !43, line: 65, baseType: !46, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !40, line: 164, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !40, line: 159, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !62, line: 23, baseType: !46)
!62 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !{!67, !82, !84, !86, !89, !91, !93, !95, !100, !105, !110, !115, !120, !125, !130, !135, !140, !142, !144, !146, !151, !163, !165, !170, !175, !180, !185, !190, !195, !197, !202, !207, !212, !217, !222, !224, !0, !229, !231, !233, !243, !247, !250, !252, !254, !267, !272, !274, !276, !281, !286, !288, !290, !292, !294, !296, !298, !303, !306, !308, !313, !318, !320, !322, !324, !329, !331, !336, !341, !343, !348}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "e820_table", scope: !2, file: !3, line: 63, type: !69, isLocal: false, isDefinition: true)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_table", file: !6, line: 94, size: 51232, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !70, file: !6, line: 95, baseType: !51, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !70, file: !6, line: 96, baseType: !74, size: 51200, offset: 32)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 51200, elements: !80)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_entry", file: !6, line: 55, size: 160, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !75, file: !6, line: 56, baseType: !61, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !75, file: !6, line: 57, baseType: !61, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !6, line: 58, baseType: !5, size: 32, offset: 128)
!80 = !{!81}
!81 = !DISubrange(count: 320)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "e820_table_kexec", scope: !2, file: !3, line: 64, type: !69, isLocal: false, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "e820_table_firmware", scope: !2, file: !3, line: 65, type: !69, isLocal: false, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "pci_mem_start", scope: !2, file: !3, line: 68, type: !88, isLocal: false, isDefinition: true)
!88 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_mem_start340", scope: !2, file: !3, line: 70, type: !37, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_e820__mapped_raw_any341", scope: !2, file: !3, line: 98, type: !37, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_e820__mapped_any342", scope: !2, file: !3, line: 104, type: !37, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 232, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 29)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 32, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 335, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 184, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 23)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !3, line: 551, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 304, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 38)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 607, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 240, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 30)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 608, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 72, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 9)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 669, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 480, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 60)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 670, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 456, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 57)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 681, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 408, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 51)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 741, type: !117, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 742, type: !122, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_e820__351_792_e820__register_nvs_regions1352", scope: !2, file: !3, line: 792, type: !37, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !3, line: 810, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 504, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 63)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__setup_parse_memopt", scope: !2, file: !3, line: 916, type: !153, isLocal: true, isDefinition: true, align: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !154, line: 324, size: 192, elements: !155)
!154 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!155 = !{!156, !157, !162}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !153, file: !154, line: 325, baseType: !63, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !153, file: !154, line: 326, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!38, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !153, file: !154, line: 327, baseType: !38, size: 32, offset: 128)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "__setup_parse_memmap_opt", scope: !2, file: !3, line: 989, type: !153, isLocal: true, isDefinition: true, align: 64)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1010, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 360, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 45)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1035, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 384, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 48)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1057, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 152, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 19)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1069, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 264, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 33)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1071, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 272, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 34)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1072, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 40, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 5)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1165, type: !187, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1165, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 24)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1254, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 416, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 52)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1255, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 88, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 11)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1264, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 80, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 10)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1278, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 64, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 8)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1281, type: !214, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1312, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 280, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 35)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "e820_table_kexec_init", scope: !2, file: !3, line: 60, type: !70, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "e820_table_firmware_init", scope: !2, file: !3, line: 61, type: !70, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "change_point_list", scope: !2, file: !3, line: 286, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 81920, elements: !241)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "change_member", file: !3, line: 279, size: 128, elements: !237)
!237 = !{!238, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !236, file: !3, line: 281, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !236, file: !3, line: 283, baseType: !48, size: 64, offset: 64)
!241 = !{!242}
!242 = !DISubrange(count: 640)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "change_point", scope: !2, file: !3, line: 287, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 40960, elements: !241)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "overlap_list", scope: !2, file: !3, line: 288, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 20480, elements: !80)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "new_entries", scope: !2, file: !3, line: 289, type: !74, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "userdef", scope: !2, file: !3, line: 881, type: !38, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "e820_res", scope: !2, file: !3, line: 1154, type: !256, isLocal: true, isDefinition: true)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !24, line: 21, size: 512, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !257, file: !24, line: 22, baseType: !59, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !257, file: !24, line: 23, baseType: !59, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !24, line: 24, baseType: !63, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !24, line: 25, baseType: !88, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !257, file: !24, line: 26, baseType: !88, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !257, file: !24, line: 27, baseType: !256, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !257, file: !24, line: 27, baseType: !256, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !257, file: !24, line: 27, baseType: !256, size: 64, offset: 448)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 432, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 54)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !122, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !209, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 128, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 16)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 96, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 12)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !209, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !209, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !107, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !214, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !3, line: 475, type: !112, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !219, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 860, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 312, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 39)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "__setup_str_parse_memopt", scope: !2, file: !3, line: 916, type: !305, isLocal: true, isDefinition: true, align: 8)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 32, elements: !103)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !3, line: 891, type: !214, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !3, line: 896, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 424, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 53)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "__setup_str_parse_memmap_opt", scope: !2, file: !3, line: 989, type: !315, isLocal: true, isDefinition: true, align: 8)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 56, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 7)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !3, line: 926, type: !122, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1080, type: !209, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1081, type: !283, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1082, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 208, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 26)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1083, type: !278, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1084, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 216, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 27)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1085, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 144, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 18)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1086, type: !122, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1087, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 112, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 14)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1088, type: !338, isLocal: true, isDefinition: true)
!350 = !{i32 7, !"Dwarf Version", i32 5}
!351 = !{i32 2, !"Debug Info Version", i32 3}
!352 = !{i32 1, !"wchar_size", i32 2}
!353 = !{i32 8, !"cf-protection-branch", i32 1}
!354 = !{i32 4, !"function_return_thunk_extern", i32 1}
!355 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!356 = !{i32 1, !"Code Model", i32 2}
!357 = !{i32 1, !"override-stack-alignment", i32 8}
!358 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!359 = distinct !DISubprogram(name: "e820__mapped_raw_any", scope: !3, file: !3, line: 94, type: !360, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !364)
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !61, !61, !5}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !40, line: 35, baseType: !363)
!363 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!364 = !{!365, !366, !367}
!365 = !DILocalVariable(name: "start", arg: 1, scope: !359, file: !3, line: 94, type: !61)
!366 = !DILocalVariable(name: "end", arg: 2, scope: !359, file: !3, line: 94, type: !61)
!367 = !DILocalVariable(name: "type", arg: 3, scope: !359, file: !3, line: 94, type: !5)
!368 = !DILocation(line: 94, column: 31, scope: !359)
!369 = !DILocation(line: 94, column: 42, scope: !359)
!370 = !DILocation(line: 94, column: 62, scope: !359)
!371 = !DILocation(line: 96, column: 27, scope: !359)
!372 = !DILocation(line: 96, column: 48, scope: !359)
!373 = !DILocation(line: 96, column: 55, scope: !359)
!374 = !DILocation(line: 96, column: 60, scope: !359)
!375 = !DILocation(line: 96, column: 9, scope: !359)
!376 = !DILocation(line: 96, column: 2, scope: !359)
!377 = distinct !DISubprogram(name: "_e820__mapped_any", scope: !3, file: !3, line: 77, type: !378, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!362, !69, !61, !61, !5}
!380 = !{!381, !382, !383, !384, !385, !386}
!381 = !DILocalVariable(name: "table", arg: 1, scope: !377, file: !3, line: 77, type: !69)
!382 = !DILocalVariable(name: "start", arg: 2, scope: !377, file: !3, line: 78, type: !61)
!383 = !DILocalVariable(name: "end", arg: 3, scope: !377, file: !3, line: 78, type: !61)
!384 = !DILocalVariable(name: "type", arg: 4, scope: !377, file: !3, line: 78, type: !5)
!385 = !DILocalVariable(name: "i", scope: !377, file: !3, line: 80, type: !38)
!386 = !DILocalVariable(name: "entry", scope: !387, file: !3, line: 83, type: !239)
!387 = distinct !DILexicalBlock(scope: !388, file: !3, line: 82, column: 42)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 82, column: 2)
!389 = distinct !DILexicalBlock(scope: !377, file: !3, line: 82, column: 2)
!390 = !DILocation(line: 77, column: 50, scope: !377)
!391 = !DILocation(line: 78, column: 14, scope: !377)
!392 = !DILocation(line: 78, column: 25, scope: !377)
!393 = !DILocation(line: 78, column: 45, scope: !377)
!394 = !DILocation(line: 80, column: 2, scope: !377)
!395 = !DILocation(line: 80, column: 6, scope: !377)
!396 = !DILocation(line: 82, column: 9, scope: !389)
!397 = !DILocation(line: 82, column: 7, scope: !389)
!398 = !DILocation(line: 82, column: 14, scope: !388)
!399 = !DILocation(line: 82, column: 18, scope: !388)
!400 = !DILocation(line: 82, column: 25, scope: !388)
!401 = !DILocation(line: 82, column: 16, scope: !388)
!402 = !DILocation(line: 82, column: 2, scope: !389)
!403 = !DILocation(line: 83, column: 3, scope: !387)
!404 = !DILocation(line: 83, column: 22, scope: !387)
!405 = !DILocation(line: 83, column: 31, scope: !387)
!406 = !DILocation(line: 83, column: 38, scope: !387)
!407 = !DILocation(line: 83, column: 46, scope: !387)
!408 = !DILocation(line: 85, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !387, file: !3, line: 85, column: 7)
!410 = !DILocation(line: 85, column: 12, scope: !409)
!411 = !DILocation(line: 85, column: 15, scope: !409)
!412 = !DILocation(line: 85, column: 22, scope: !409)
!413 = !DILocation(line: 85, column: 30, scope: !409)
!414 = !DILocation(line: 85, column: 27, scope: !409)
!415 = !DILocation(line: 85, column: 7, scope: !387)
!416 = !DILocation(line: 86, column: 4, scope: !409)
!417 = !DILocation(line: 87, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !387, file: !3, line: 87, column: 7)
!419 = !DILocation(line: 87, column: 14, scope: !418)
!420 = !DILocation(line: 87, column: 22, scope: !418)
!421 = !DILocation(line: 87, column: 19, scope: !418)
!422 = !DILocation(line: 87, column: 26, scope: !418)
!423 = !DILocation(line: 87, column: 29, scope: !418)
!424 = !DILocation(line: 87, column: 36, scope: !418)
!425 = !DILocation(line: 87, column: 43, scope: !418)
!426 = !DILocation(line: 87, column: 50, scope: !418)
!427 = !DILocation(line: 87, column: 41, scope: !418)
!428 = !DILocation(line: 87, column: 58, scope: !418)
!429 = !DILocation(line: 87, column: 55, scope: !418)
!430 = !DILocation(line: 87, column: 7, scope: !387)
!431 = !DILocation(line: 88, column: 4, scope: !418)
!432 = !DILocation(line: 89, column: 3, scope: !387)
!433 = !DILocation(line: 90, column: 2, scope: !388)
!434 = !DILocation(line: 82, column: 38, scope: !388)
!435 = !DILocation(line: 82, column: 2, scope: !388)
!436 = distinct !{!436, !402, !437, !438, !439}
!437 = !DILocation(line: 90, column: 2, scope: !389)
!438 = !{!"llvm.loop.mustprogress"}
!439 = !{!"llvm.loop.unroll.disable"}
!440 = !DILocation(line: 91, column: 2, scope: !377)
!441 = !DILocation(line: 92, column: 1, scope: !377)
!442 = distinct !DISubprogram(name: "e820__mapped_any", scope: !3, file: !3, line: 100, type: !360, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !443)
!443 = !{!444, !445, !446}
!444 = !DILocalVariable(name: "start", arg: 1, scope: !442, file: !3, line: 100, type: !61)
!445 = !DILocalVariable(name: "end", arg: 2, scope: !442, file: !3, line: 100, type: !61)
!446 = !DILocalVariable(name: "type", arg: 3, scope: !442, file: !3, line: 100, type: !5)
!447 = !DILocation(line: 100, column: 27, scope: !442)
!448 = !DILocation(line: 100, column: 38, scope: !442)
!449 = !DILocation(line: 100, column: 58, scope: !442)
!450 = !DILocation(line: 102, column: 27, scope: !442)
!451 = !DILocation(line: 102, column: 39, scope: !442)
!452 = !DILocation(line: 102, column: 46, scope: !442)
!453 = !DILocation(line: 102, column: 51, scope: !442)
!454 = !DILocation(line: 102, column: 9, scope: !442)
!455 = !DILocation(line: 102, column: 2, scope: !442)
!456 = distinct !DISubprogram(name: "e820__mapped_all", scope: !3, file: !3, line: 148, type: !360, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !457)
!457 = !{!458, !459, !460}
!458 = !DILocalVariable(name: "start", arg: 1, scope: !456, file: !3, line: 148, type: !61)
!459 = !DILocalVariable(name: "end", arg: 2, scope: !456, file: !3, line: 148, type: !61)
!460 = !DILocalVariable(name: "type", arg: 3, scope: !456, file: !3, line: 148, type: !5)
!461 = !DILocation(line: 148, column: 34, scope: !456)
!462 = !DILocation(line: 148, column: 45, scope: !456)
!463 = !DILocation(line: 148, column: 65, scope: !456)
!464 = !DILocation(line: 150, column: 28, scope: !456)
!465 = !DILocation(line: 150, column: 35, scope: !456)
!466 = !DILocation(line: 150, column: 40, scope: !456)
!467 = !DILocation(line: 150, column: 9, scope: !456)
!468 = !DILocation(line: 150, column: 2, scope: !456)
!469 = distinct !DISubprogram(name: "__e820__mapped_all", scope: !3, file: !3, line: 112, type: !470, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!239, !61, !61, !5}
!472 = !{!473, !474, !475, !476, !477}
!473 = !DILocalVariable(name: "start", arg: 1, scope: !469, file: !3, line: 112, type: !61)
!474 = !DILocalVariable(name: "end", arg: 2, scope: !469, file: !3, line: 112, type: !61)
!475 = !DILocalVariable(name: "type", arg: 3, scope: !469, file: !3, line: 113, type: !5)
!476 = !DILocalVariable(name: "i", scope: !469, file: !3, line: 115, type: !38)
!477 = !DILocalVariable(name: "entry", scope: !478, file: !3, line: 118, type: !239)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 117, column: 47)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 117, column: 2)
!480 = distinct !DILexicalBlock(scope: !469, file: !3, line: 117, column: 2)
!481 = !DILocation(line: 112, column: 50, scope: !469)
!482 = !DILocation(line: 112, column: 61, scope: !469)
!483 = !DILocation(line: 113, column: 26, scope: !469)
!484 = !DILocation(line: 115, column: 2, scope: !469)
!485 = !DILocation(line: 115, column: 6, scope: !469)
!486 = !DILocation(line: 117, column: 9, scope: !480)
!487 = !DILocation(line: 117, column: 7, scope: !480)
!488 = !DILocation(line: 117, column: 14, scope: !479)
!489 = !DILocation(line: 117, column: 18, scope: !479)
!490 = !DILocation(line: 117, column: 30, scope: !479)
!491 = !DILocation(line: 117, column: 16, scope: !479)
!492 = !DILocation(line: 117, column: 2, scope: !480)
!493 = !DILocation(line: 118, column: 3, scope: !478)
!494 = !DILocation(line: 118, column: 22, scope: !478)
!495 = !DILocation(line: 118, column: 31, scope: !478)
!496 = !DILocation(line: 118, column: 43, scope: !478)
!497 = !DILocation(line: 118, column: 51, scope: !478)
!498 = !DILocation(line: 120, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !478, file: !3, line: 120, column: 7)
!500 = !DILocation(line: 120, column: 12, scope: !499)
!501 = !DILocation(line: 120, column: 15, scope: !499)
!502 = !DILocation(line: 120, column: 22, scope: !499)
!503 = !DILocation(line: 120, column: 30, scope: !499)
!504 = !DILocation(line: 120, column: 27, scope: !499)
!505 = !DILocation(line: 120, column: 7, scope: !478)
!506 = !DILocation(line: 121, column: 4, scope: !499)
!507 = !DILocation(line: 124, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !478, file: !3, line: 124, column: 7)
!509 = !DILocation(line: 124, column: 14, scope: !508)
!510 = !DILocation(line: 124, column: 22, scope: !508)
!511 = !DILocation(line: 124, column: 19, scope: !508)
!512 = !DILocation(line: 124, column: 26, scope: !508)
!513 = !DILocation(line: 124, column: 29, scope: !508)
!514 = !DILocation(line: 124, column: 36, scope: !508)
!515 = !DILocation(line: 124, column: 43, scope: !508)
!516 = !DILocation(line: 124, column: 50, scope: !508)
!517 = !DILocation(line: 124, column: 41, scope: !508)
!518 = !DILocation(line: 124, column: 58, scope: !508)
!519 = !DILocation(line: 124, column: 55, scope: !508)
!520 = !DILocation(line: 124, column: 7, scope: !478)
!521 = !DILocation(line: 125, column: 4, scope: !508)
!522 = !DILocation(line: 131, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !478, file: !3, line: 131, column: 7)
!524 = !DILocation(line: 131, column: 14, scope: !523)
!525 = !DILocation(line: 131, column: 22, scope: !523)
!526 = !DILocation(line: 131, column: 19, scope: !523)
!527 = !DILocation(line: 131, column: 7, scope: !478)
!528 = !DILocation(line: 132, column: 12, scope: !523)
!529 = !DILocation(line: 132, column: 19, scope: !523)
!530 = !DILocation(line: 132, column: 26, scope: !523)
!531 = !DILocation(line: 132, column: 33, scope: !523)
!532 = !DILocation(line: 132, column: 24, scope: !523)
!533 = !DILocation(line: 132, column: 10, scope: !523)
!534 = !DILocation(line: 132, column: 4, scope: !523)
!535 = !DILocation(line: 138, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !478, file: !3, line: 138, column: 7)
!537 = !DILocation(line: 138, column: 16, scope: !536)
!538 = !DILocation(line: 138, column: 13, scope: !536)
!539 = !DILocation(line: 138, column: 7, scope: !478)
!540 = !DILocation(line: 139, column: 11, scope: !536)
!541 = !DILocation(line: 139, column: 4, scope: !536)
!542 = !DILocation(line: 140, column: 2, scope: !479)
!543 = !DILocation(line: 140, column: 2, scope: !478)
!544 = !DILocation(line: 117, column: 43, scope: !479)
!545 = !DILocation(line: 117, column: 2, scope: !479)
!546 = distinct !{!546, !492, !547, !438, !439}
!547 = !DILocation(line: 140, column: 2, scope: !480)
!548 = !DILocation(line: 142, column: 2, scope: !469)
!549 = !DILocation(line: 143, column: 1, scope: !469)
!550 = distinct !DISubprogram(name: "e820__get_entry_type", scope: !3, file: !3, line: 156, type: !551, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !553)
!551 = !DISubroutineType(types: !552)
!552 = !{!38, !61, !61}
!553 = !{!554, !555, !556}
!554 = !DILocalVariable(name: "start", arg: 1, scope: !550, file: !3, line: 156, type: !61)
!555 = !DILocalVariable(name: "end", arg: 2, scope: !550, file: !3, line: 156, type: !61)
!556 = !DILocalVariable(name: "entry", scope: !550, file: !3, line: 158, type: !239)
!557 = !DILocation(line: 156, column: 30, scope: !550)
!558 = !DILocation(line: 156, column: 41, scope: !550)
!559 = !DILocation(line: 158, column: 2, scope: !550)
!560 = !DILocation(line: 158, column: 21, scope: !550)
!561 = !DILocation(line: 158, column: 48, scope: !550)
!562 = !DILocation(line: 158, column: 55, scope: !550)
!563 = !DILocation(line: 158, column: 29, scope: !550)
!564 = !DILocation(line: 160, column: 9, scope: !550)
!565 = !DILocation(line: 160, column: 17, scope: !550)
!566 = !DILocation(line: 160, column: 24, scope: !550)
!567 = !DILocation(line: 161, column: 1, scope: !550)
!568 = !DILocation(line: 160, column: 2, scope: !550)
!569 = distinct !DISubprogram(name: "e820__range_add", scope: !3, file: !3, line: 182, type: !570, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !61, !61, !5}
!572 = !{!573, !574, !575}
!573 = !DILocalVariable(name: "start", arg: 1, scope: !569, file: !3, line: 182, type: !61)
!574 = !DILocalVariable(name: "size", arg: 2, scope: !569, file: !3, line: 182, type: !61)
!575 = !DILocalVariable(name: "type", arg: 3, scope: !569, file: !3, line: 182, type: !5)
!576 = !DILocation(line: 182, column: 33, scope: !569)
!577 = !DILocation(line: 182, column: 44, scope: !569)
!578 = !DILocation(line: 182, column: 65, scope: !569)
!579 = !DILocation(line: 184, column: 20, scope: !569)
!580 = !DILocation(line: 184, column: 32, scope: !569)
!581 = !DILocation(line: 184, column: 39, scope: !569)
!582 = !DILocation(line: 184, column: 45, scope: !569)
!583 = !DILocation(line: 184, column: 2, scope: !569)
!584 = !DILocation(line: 185, column: 1, scope: !569)
!585 = distinct !DISubprogram(name: "__e820__range_add", scope: !3, file: !3, line: 166, type: !586, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !69, !61, !61, !5}
!588 = !{!589, !590, !591, !592, !593}
!589 = !DILocalVariable(name: "table", arg: 1, scope: !585, file: !3, line: 166, type: !69)
!590 = !DILocalVariable(name: "start", arg: 2, scope: !585, file: !3, line: 166, type: !61)
!591 = !DILocalVariable(name: "size", arg: 3, scope: !585, file: !3, line: 166, type: !61)
!592 = !DILocalVariable(name: "type", arg: 4, scope: !585, file: !3, line: 166, type: !5)
!593 = !DILocalVariable(name: "x", scope: !585, file: !3, line: 168, type: !38)
!594 = !DILocation(line: 166, column: 57, scope: !585)
!595 = !DILocation(line: 166, column: 68, scope: !585)
!596 = !DILocation(line: 166, column: 79, scope: !585)
!597 = !DILocation(line: 166, column: 100, scope: !585)
!598 = !DILocation(line: 168, column: 2, scope: !585)
!599 = !DILocation(line: 168, column: 6, scope: !585)
!600 = !DILocation(line: 168, column: 10, scope: !585)
!601 = !DILocation(line: 168, column: 17, scope: !585)
!602 = !DILocation(line: 170, column: 6, scope: !603)
!603 = distinct !DILexicalBlock(scope: !585, file: !3, line: 170, column: 6)
!604 = !DILocation(line: 170, column: 8, scope: !603)
!605 = !DILocation(line: 170, column: 6, scope: !585)
!606 = !DILocation(line: 171, column: 3, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 171, column: 3)
!608 = distinct !DILexicalBlock(scope: !603, file: !3, line: 170, column: 39)
!609 = !DILocation(line: 171, column: 3, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !3, line: 171, column: 3)
!611 = !DILocation(line: 173, column: 3, scope: !608)
!612 = !DILocation(line: 176, column: 27, scope: !585)
!613 = !DILocation(line: 176, column: 2, scope: !585)
!614 = !DILocation(line: 176, column: 9, scope: !585)
!615 = !DILocation(line: 176, column: 17, scope: !585)
!616 = !DILocation(line: 176, column: 20, scope: !585)
!617 = !DILocation(line: 176, column: 25, scope: !585)
!618 = !DILocation(line: 177, column: 27, scope: !585)
!619 = !DILocation(line: 177, column: 2, scope: !585)
!620 = !DILocation(line: 177, column: 9, scope: !585)
!621 = !DILocation(line: 177, column: 17, scope: !585)
!622 = !DILocation(line: 177, column: 20, scope: !585)
!623 = !DILocation(line: 177, column: 25, scope: !585)
!624 = !DILocation(line: 178, column: 27, scope: !585)
!625 = !DILocation(line: 178, column: 2, scope: !585)
!626 = !DILocation(line: 178, column: 9, scope: !585)
!627 = !DILocation(line: 178, column: 17, scope: !585)
!628 = !DILocation(line: 178, column: 20, scope: !585)
!629 = !DILocation(line: 178, column: 25, scope: !585)
!630 = !DILocation(line: 179, column: 2, scope: !585)
!631 = !DILocation(line: 179, column: 9, scope: !585)
!632 = !DILocation(line: 179, column: 19, scope: !585)
!633 = !DILocation(line: 180, column: 1, scope: !585)
!634 = distinct !DISubprogram(name: "e820__print_table", scope: !3, file: !3, line: 203, type: !635, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !161}
!637 = !{!638, !639}
!638 = !DILocalVariable(name: "who", arg: 1, scope: !634, file: !3, line: 203, type: !161)
!639 = !DILocalVariable(name: "i", scope: !634, file: !3, line: 205, type: !38)
!640 = !DILocation(line: 203, column: 37, scope: !634)
!641 = !DILocation(line: 205, column: 2, scope: !634)
!642 = !DILocation(line: 205, column: 6, scope: !634)
!643 = !DILocation(line: 207, column: 9, scope: !644)
!644 = distinct !DILexicalBlock(scope: !634, file: !3, line: 207, column: 2)
!645 = !DILocation(line: 207, column: 7, scope: !644)
!646 = !DILocation(line: 207, column: 14, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !3, line: 207, column: 2)
!648 = !DILocation(line: 207, column: 18, scope: !647)
!649 = !DILocation(line: 207, column: 30, scope: !647)
!650 = !DILocation(line: 207, column: 16, scope: !647)
!651 = !DILocation(line: 207, column: 2, scope: !644)
!652 = !DILocation(line: 208, column: 3, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !3, line: 208, column: 3)
!654 = distinct !DILexicalBlock(scope: !647, file: !3, line: 207, column: 47)
!655 = !DILocation(line: 208, column: 3, scope: !656)
!656 = distinct !DILexicalBlock(scope: !653, file: !3, line: 208, column: 3)
!657 = !DILocation(line: 213, column: 19, scope: !654)
!658 = !DILocation(line: 213, column: 31, scope: !654)
!659 = !DILocation(line: 213, column: 39, scope: !654)
!660 = !DILocation(line: 213, column: 42, scope: !654)
!661 = !DILocation(line: 213, column: 3, scope: !654)
!662 = !DILocation(line: 214, column: 3, scope: !663)
!663 = distinct !DILexicalBlock(scope: !654, file: !3, line: 214, column: 3)
!664 = !DILocation(line: 214, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !663, file: !3, line: 214, column: 3)
!666 = !DILocation(line: 215, column: 2, scope: !654)
!667 = !DILocation(line: 207, column: 43, scope: !647)
!668 = !DILocation(line: 207, column: 2, scope: !647)
!669 = distinct !{!669, !651, !670, !438, !439}
!670 = !DILocation(line: 215, column: 2, scope: !644)
!671 = !DILocation(line: 216, column: 1, scope: !634)
!672 = !DISubprogram(name: "_printk", scope: !673, file: !673, line: 153, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!673 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!674 = !DISubroutineType(types: !675)
!675 = !{!38, !63, null}
!676 = distinct !DISubprogram(name: "e820_print_type", scope: !3, file: !3, line: 187, type: !677, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !5}
!679 = !{!680}
!680 = !DILocalVariable(name: "type", arg: 1, scope: !676, file: !3, line: 187, type: !5)
!681 = !DILocation(line: 187, column: 51, scope: !676)
!682 = !DILocation(line: 189, column: 10, scope: !676)
!683 = !DILocation(line: 189, column: 2, scope: !676)
!684 = !DILocation(line: 191, column: 32, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 191, column: 32)
!686 = distinct !DILexicalBlock(scope: !676, file: !3, line: 189, column: 16)
!687 = !DILocation(line: 191, column: 32, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !3, line: 191, column: 32)
!689 = !DILocation(line: 191, column: 53, scope: !686)
!690 = !DILocation(line: 192, column: 27, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !3, line: 192, column: 27)
!692 = !DILocation(line: 192, column: 27, scope: !693)
!693 = distinct !DILexicalBlock(scope: !691, file: !3, line: 192, column: 27)
!694 = !DILocation(line: 192, column: 50, scope: !686)
!695 = !DILocation(line: 193, column: 32, scope: !696)
!696 = distinct !DILexicalBlock(scope: !686, file: !3, line: 193, column: 32)
!697 = !DILocation(line: 193, column: 32, scope: !698)
!698 = distinct !DILexicalBlock(scope: !696, file: !3, line: 193, column: 32)
!699 = !DILocation(line: 193, column: 59, scope: !686)
!700 = !DILocation(line: 194, column: 24, scope: !701)
!701 = distinct !DILexicalBlock(scope: !686, file: !3, line: 194, column: 24)
!702 = !DILocation(line: 194, column: 24, scope: !703)
!703 = distinct !DILexicalBlock(scope: !701, file: !3, line: 194, column: 24)
!704 = !DILocation(line: 194, column: 48, scope: !686)
!705 = !DILocation(line: 195, column: 23, scope: !706)
!706 = distinct !DILexicalBlock(scope: !686, file: !3, line: 195, column: 23)
!707 = !DILocation(line: 195, column: 23, scope: !708)
!708 = distinct !DILexicalBlock(scope: !706, file: !3, line: 195, column: 23)
!709 = !DILocation(line: 195, column: 46, scope: !686)
!710 = !DILocation(line: 196, column: 27, scope: !711)
!711 = distinct !DILexicalBlock(scope: !686, file: !3, line: 196, column: 27)
!712 = !DILocation(line: 196, column: 27, scope: !713)
!713 = distinct !DILexicalBlock(scope: !711, file: !3, line: 196, column: 27)
!714 = !DILocation(line: 196, column: 50, scope: !686)
!715 = !DILocation(line: 198, column: 24, scope: !716)
!716 = distinct !DILexicalBlock(scope: !686, file: !3, line: 198, column: 24)
!717 = !DILocation(line: 198, column: 24, scope: !718)
!718 = distinct !DILexicalBlock(scope: !716, file: !3, line: 198, column: 24)
!719 = !DILocation(line: 198, column: 63, scope: !686)
!720 = !DILocation(line: 199, column: 13, scope: !721)
!721 = distinct !DILexicalBlock(scope: !686, file: !3, line: 199, column: 13)
!722 = !DILocation(line: 199, column: 13, scope: !723)
!723 = distinct !DILexicalBlock(scope: !721, file: !3, line: 199, column: 13)
!724 = !DILocation(line: 199, column: 40, scope: !686)
!725 = !DILocation(line: 201, column: 1, scope: !676)
!726 = distinct !DISubprogram(name: "e820__update_table", scope: !3, file: !3, line: 322, type: !727, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{!38, !69}
!729 = !{!730, !731, !732, !734, !735, !736, !737, !738, !739, !740, !741}
!730 = !DILocalVariable(name: "table", arg: 1, scope: !726, file: !3, line: 322, type: !69)
!731 = !DILocalVariable(name: "entries", scope: !726, file: !3, line: 324, type: !239)
!732 = !DILocalVariable(name: "max_nr_entries", scope: !726, file: !3, line: 325, type: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !62, line: 21, baseType: !51)
!734 = !DILocalVariable(name: "current_type", scope: !726, file: !3, line: 326, type: !5)
!735 = !DILocalVariable(name: "last_type", scope: !726, file: !3, line: 326, type: !5)
!736 = !DILocalVariable(name: "last_addr", scope: !726, file: !3, line: 327, type: !48)
!737 = !DILocalVariable(name: "new_nr_entries", scope: !726, file: !3, line: 328, type: !733)
!738 = !DILocalVariable(name: "overlap_entries", scope: !726, file: !3, line: 328, type: !733)
!739 = !DILocalVariable(name: "i", scope: !726, file: !3, line: 329, type: !733)
!740 = !DILocalVariable(name: "chg_idx", scope: !726, file: !3, line: 329, type: !733)
!741 = !DILocalVariable(name: "chg_nr", scope: !726, file: !3, line: 329, type: !733)
!742 = !DILocation(line: 322, column: 50, scope: !726)
!743 = !DILocation(line: 324, column: 2, scope: !726)
!744 = !DILocation(line: 324, column: 21, scope: !726)
!745 = !DILocation(line: 324, column: 31, scope: !726)
!746 = !DILocation(line: 324, column: 38, scope: !726)
!747 = !DILocation(line: 325, column: 2, scope: !726)
!748 = !DILocation(line: 325, column: 6, scope: !726)
!749 = !DILocation(line: 326, column: 2, scope: !726)
!750 = !DILocation(line: 326, column: 17, scope: !726)
!751 = !DILocation(line: 326, column: 31, scope: !726)
!752 = !DILocation(line: 327, column: 2, scope: !726)
!753 = !DILocation(line: 327, column: 21, scope: !726)
!754 = !DILocation(line: 328, column: 2, scope: !726)
!755 = !DILocation(line: 328, column: 6, scope: !726)
!756 = !DILocation(line: 328, column: 22, scope: !726)
!757 = !DILocation(line: 329, column: 2, scope: !726)
!758 = !DILocation(line: 329, column: 6, scope: !726)
!759 = !DILocation(line: 329, column: 9, scope: !726)
!760 = !DILocation(line: 329, column: 18, scope: !726)
!761 = !DILocation(line: 332, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !726, file: !3, line: 332, column: 6)
!763 = !DILocation(line: 332, column: 13, scope: !762)
!764 = !DILocation(line: 332, column: 24, scope: !762)
!765 = !DILocation(line: 332, column: 6, scope: !726)
!766 = !DILocation(line: 333, column: 3, scope: !762)
!767 = !DILocation(line: 335, column: 2, scope: !726)
!768 = !DILocation(line: 335, column: 2, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 335, column: 2)
!770 = distinct !DILexicalBlock(scope: !726, file: !3, line: 335, column: 2)
!771 = !DILocation(line: 335, column: 2, scope: !770)
!772 = !DILocation(line: 335, column: 2, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !3, line: 335, column: 2)
!774 = !DILocation(line: 335, column: 2, scope: !775)
!775 = distinct !DILexicalBlock(scope: !773, file: !3, line: 335, column: 2)
!776 = !DILocation(line: 335, column: 2, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !3, line: 335, column: 2)
!778 = !{i64 2156322521, i64 2156322550, i64 2156322596, i64 2156322654, i64 2156322708, i64 2156322762, i64 2156322817, i64 2156322848}
!779 = !DILocation(line: 338, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !726, file: !3, line: 338, column: 2)
!781 = !DILocation(line: 338, column: 7, scope: !780)
!782 = !DILocation(line: 338, column: 14, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !3, line: 338, column: 2)
!784 = !DILocation(line: 338, column: 18, scope: !783)
!785 = !DILocation(line: 338, column: 25, scope: !783)
!786 = !DILocation(line: 338, column: 16, scope: !783)
!787 = !DILocation(line: 338, column: 2, scope: !780)
!788 = !DILocation(line: 339, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 339, column: 7)
!790 = distinct !DILexicalBlock(scope: !783, file: !3, line: 338, column: 42)
!791 = !DILocation(line: 339, column: 15, scope: !789)
!792 = !DILocation(line: 339, column: 18, scope: !789)
!793 = !DILocation(line: 339, column: 25, scope: !789)
!794 = !DILocation(line: 339, column: 33, scope: !789)
!795 = !DILocation(line: 339, column: 36, scope: !789)
!796 = !DILocation(line: 339, column: 23, scope: !789)
!797 = !DILocation(line: 339, column: 43, scope: !789)
!798 = !DILocation(line: 339, column: 51, scope: !789)
!799 = !DILocation(line: 339, column: 54, scope: !789)
!800 = !DILocation(line: 339, column: 41, scope: !789)
!801 = !DILocation(line: 339, column: 7, scope: !790)
!802 = !DILocation(line: 340, column: 4, scope: !789)
!803 = !DILocation(line: 341, column: 2, scope: !790)
!804 = !DILocation(line: 338, column: 38, scope: !783)
!805 = !DILocation(line: 338, column: 2, scope: !783)
!806 = distinct !{!806, !787, !807, !438, !439}
!807 = !DILocation(line: 341, column: 2, scope: !780)
!808 = !DILocation(line: 344, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !726, file: !3, line: 344, column: 2)
!810 = !DILocation(line: 344, column: 7, scope: !809)
!811 = !DILocation(line: 344, column: 14, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !3, line: 344, column: 2)
!813 = !DILocation(line: 344, column: 22, scope: !812)
!814 = !DILocation(line: 344, column: 29, scope: !812)
!815 = !DILocation(line: 344, column: 20, scope: !812)
!816 = !DILocation(line: 344, column: 16, scope: !812)
!817 = !DILocation(line: 344, column: 2, scope: !809)
!818 = !DILocation(line: 345, column: 40, scope: !812)
!819 = !DILocation(line: 345, column: 22, scope: !812)
!820 = !DILocation(line: 345, column: 16, scope: !812)
!821 = !DILocation(line: 345, column: 3, scope: !812)
!822 = !DILocation(line: 345, column: 19, scope: !812)
!823 = !DILocation(line: 344, column: 42, scope: !812)
!824 = !DILocation(line: 344, column: 2, scope: !812)
!825 = distinct !{!825, !817, !826, !438, !439}
!826 = !DILocation(line: 345, column: 41, scope: !809)
!827 = !DILocation(line: 351, column: 10, scope: !726)
!828 = !DILocation(line: 352, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !726, file: !3, line: 352, column: 2)
!830 = !DILocation(line: 352, column: 7, scope: !829)
!831 = !DILocation(line: 352, column: 14, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !3, line: 352, column: 2)
!833 = !DILocation(line: 352, column: 18, scope: !832)
!834 = !DILocation(line: 352, column: 25, scope: !832)
!835 = !DILocation(line: 352, column: 16, scope: !832)
!836 = !DILocation(line: 352, column: 2, scope: !829)
!837 = !DILocation(line: 353, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 353, column: 7)
!839 = distinct !DILexicalBlock(scope: !832, file: !3, line: 352, column: 42)
!840 = !DILocation(line: 353, column: 15, scope: !838)
!841 = !DILocation(line: 353, column: 18, scope: !838)
!842 = !DILocation(line: 353, column: 23, scope: !838)
!843 = !DILocation(line: 353, column: 7, scope: !839)
!844 = !DILocation(line: 354, column: 34, scope: !845)
!845 = distinct !DILexicalBlock(scope: !838, file: !3, line: 353, column: 29)
!846 = !DILocation(line: 354, column: 42, scope: !845)
!847 = !DILocation(line: 354, column: 45, scope: !845)
!848 = !DILocation(line: 354, column: 17, scope: !845)
!849 = !DILocation(line: 354, column: 4, scope: !845)
!850 = !DILocation(line: 354, column: 27, scope: !845)
!851 = !DILocation(line: 354, column: 32, scope: !845)
!852 = !DILocation(line: 355, column: 38, scope: !845)
!853 = !DILocation(line: 355, column: 46, scope: !845)
!854 = !DILocation(line: 355, column: 24, scope: !845)
!855 = !DILocation(line: 355, column: 4, scope: !845)
!856 = !DILocation(line: 355, column: 29, scope: !845)
!857 = !DILocation(line: 355, column: 35, scope: !845)
!858 = !DILocation(line: 356, column: 34, scope: !845)
!859 = !DILocation(line: 356, column: 42, scope: !845)
!860 = !DILocation(line: 356, column: 45, scope: !845)
!861 = !DILocation(line: 356, column: 52, scope: !845)
!862 = !DILocation(line: 356, column: 60, scope: !845)
!863 = !DILocation(line: 356, column: 63, scope: !845)
!864 = !DILocation(line: 356, column: 50, scope: !845)
!865 = !DILocation(line: 356, column: 17, scope: !845)
!866 = !DILocation(line: 356, column: 4, scope: !845)
!867 = !DILocation(line: 356, column: 27, scope: !845)
!868 = !DILocation(line: 356, column: 32, scope: !845)
!869 = !DILocation(line: 357, column: 38, scope: !845)
!870 = !DILocation(line: 357, column: 46, scope: !845)
!871 = !DILocation(line: 357, column: 24, scope: !845)
!872 = !DILocation(line: 357, column: 4, scope: !845)
!873 = !DILocation(line: 357, column: 29, scope: !845)
!874 = !DILocation(line: 357, column: 35, scope: !845)
!875 = !DILocation(line: 358, column: 3, scope: !845)
!876 = !DILocation(line: 359, column: 2, scope: !839)
!877 = !DILocation(line: 352, column: 38, scope: !832)
!878 = !DILocation(line: 352, column: 2, scope: !832)
!879 = distinct !{!879, !836, !880, !438, !439}
!880 = !DILocation(line: 359, column: 2, scope: !829)
!881 = !DILocation(line: 360, column: 11, scope: !726)
!882 = !DILocation(line: 360, column: 9, scope: !726)
!883 = !DILocation(line: 363, column: 21, scope: !726)
!884 = !DILocation(line: 363, column: 2, scope: !726)
!885 = !DILocation(line: 366, column: 18, scope: !726)
!886 = !DILocation(line: 367, column: 17, scope: !726)
!887 = !DILocation(line: 368, column: 12, scope: !726)
!888 = !DILocation(line: 369, column: 12, scope: !726)
!889 = !DILocation(line: 372, column: 15, scope: !890)
!890 = distinct !DILexicalBlock(scope: !726, file: !3, line: 372, column: 2)
!891 = !DILocation(line: 372, column: 7, scope: !890)
!892 = !DILocation(line: 372, column: 20, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 372, column: 2)
!894 = !DILocation(line: 372, column: 30, scope: !893)
!895 = !DILocation(line: 372, column: 28, scope: !893)
!896 = !DILocation(line: 372, column: 2, scope: !890)
!897 = !DILocation(line: 374, column: 20, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 374, column: 7)
!899 = distinct !DILexicalBlock(scope: !893, file: !3, line: 372, column: 49)
!900 = !DILocation(line: 374, column: 7, scope: !898)
!901 = !DILocation(line: 374, column: 30, scope: !898)
!902 = !DILocation(line: 374, column: 51, scope: !898)
!903 = !DILocation(line: 374, column: 38, scope: !898)
!904 = !DILocation(line: 374, column: 61, scope: !898)
!905 = !DILocation(line: 374, column: 68, scope: !898)
!906 = !DILocation(line: 374, column: 35, scope: !898)
!907 = !DILocation(line: 374, column: 7, scope: !899)
!908 = !DILocation(line: 376, column: 51, scope: !909)
!909 = distinct !DILexicalBlock(scope: !898, file: !3, line: 374, column: 74)
!910 = !DILocation(line: 376, column: 38, scope: !909)
!911 = !DILocation(line: 376, column: 61, scope: !909)
!912 = !DILocation(line: 376, column: 32, scope: !909)
!913 = !DILocation(line: 376, column: 4, scope: !909)
!914 = !DILocation(line: 376, column: 36, scope: !909)
!915 = !DILocation(line: 377, column: 3, scope: !909)
!916 = !DILocation(line: 379, column: 11, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 379, column: 4)
!918 = distinct !DILexicalBlock(scope: !898, file: !3, line: 377, column: 10)
!919 = !DILocation(line: 379, column: 9, scope: !917)
!920 = !DILocation(line: 379, column: 16, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 379, column: 4)
!922 = !DILocation(line: 379, column: 20, scope: !921)
!923 = !DILocation(line: 379, column: 18, scope: !921)
!924 = !DILocation(line: 379, column: 4, scope: !917)
!925 = !DILocation(line: 380, column: 22, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 380, column: 9)
!927 = distinct !DILexicalBlock(scope: !921, file: !3, line: 379, column: 42)
!928 = !DILocation(line: 380, column: 9, scope: !926)
!929 = !DILocation(line: 380, column: 41, scope: !926)
!930 = !DILocation(line: 380, column: 28, scope: !926)
!931 = !DILocation(line: 380, column: 51, scope: !926)
!932 = !DILocation(line: 380, column: 25, scope: !926)
!933 = !DILocation(line: 380, column: 9, scope: !927)
!934 = !DILocation(line: 381, column: 37, scope: !926)
!935 = !DILocation(line: 381, column: 52, scope: !926)
!936 = !DILocation(line: 381, column: 24, scope: !926)
!937 = !DILocation(line: 381, column: 19, scope: !926)
!938 = !DILocation(line: 381, column: 6, scope: !926)
!939 = !DILocation(line: 381, column: 22, scope: !926)
!940 = !DILocation(line: 382, column: 4, scope: !927)
!941 = !DILocation(line: 379, column: 38, scope: !921)
!942 = !DILocation(line: 379, column: 4, scope: !921)
!943 = distinct !{!943, !924, !944, !438, !439}
!944 = !DILocation(line: 382, column: 4, scope: !917)
!945 = !DILocation(line: 383, column: 19, scope: !918)
!946 = !DILocation(line: 390, column: 16, scope: !899)
!947 = !DILocation(line: 391, column: 10, scope: !948)
!948 = distinct !DILexicalBlock(scope: !899, file: !3, line: 391, column: 3)
!949 = !DILocation(line: 391, column: 8, scope: !948)
!950 = !DILocation(line: 391, column: 15, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !3, line: 391, column: 3)
!952 = !DILocation(line: 391, column: 19, scope: !951)
!953 = !DILocation(line: 391, column: 17, scope: !951)
!954 = !DILocation(line: 391, column: 3, scope: !948)
!955 = !DILocation(line: 392, column: 21, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 392, column: 8)
!957 = distinct !DILexicalBlock(scope: !951, file: !3, line: 391, column: 41)
!958 = !DILocation(line: 392, column: 8, scope: !956)
!959 = !DILocation(line: 392, column: 25, scope: !956)
!960 = !DILocation(line: 392, column: 32, scope: !956)
!961 = !DILocation(line: 392, column: 30, scope: !956)
!962 = !DILocation(line: 392, column: 8, scope: !957)
!963 = !DILocation(line: 393, column: 33, scope: !956)
!964 = !DILocation(line: 393, column: 20, scope: !956)
!965 = !DILocation(line: 393, column: 37, scope: !956)
!966 = !DILocation(line: 393, column: 18, scope: !956)
!967 = !DILocation(line: 393, column: 5, scope: !956)
!968 = !DILocation(line: 394, column: 3, scope: !957)
!969 = !DILocation(line: 391, column: 37, scope: !951)
!970 = !DILocation(line: 391, column: 3, scope: !951)
!971 = distinct !{!971, !954, !972, !438, !439}
!972 = !DILocation(line: 394, column: 3, scope: !948)
!973 = !DILocation(line: 397, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !899, file: !3, line: 397, column: 7)
!975 = !DILocation(line: 397, column: 23, scope: !974)
!976 = !DILocation(line: 397, column: 20, scope: !974)
!977 = !DILocation(line: 397, column: 33, scope: !974)
!978 = !DILocation(line: 397, column: 49, scope: !974)
!979 = !DILocation(line: 397, column: 36, scope: !974)
!980 = !DILocation(line: 397, column: 7, scope: !899)
!981 = !DILocation(line: 398, column: 8, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 398, column: 8)
!983 = distinct !DILexicalBlock(scope: !974, file: !3, line: 397, column: 64)
!984 = !DILocation(line: 398, column: 8, scope: !983)
!985 = !DILocation(line: 399, column: 53, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !3, line: 398, column: 19)
!987 = !DILocation(line: 399, column: 40, scope: !986)
!988 = !DILocation(line: 399, column: 63, scope: !986)
!989 = !DILocation(line: 399, column: 70, scope: !986)
!990 = !DILocation(line: 399, column: 68, scope: !986)
!991 = !DILocation(line: 399, column: 17, scope: !986)
!992 = !DILocation(line: 399, column: 5, scope: !986)
!993 = !DILocation(line: 399, column: 33, scope: !986)
!994 = !DILocation(line: 399, column: 38, scope: !986)
!995 = !DILocation(line: 401, column: 21, scope: !996)
!996 = distinct !DILexicalBlock(scope: !986, file: !3, line: 401, column: 9)
!997 = !DILocation(line: 401, column: 9, scope: !996)
!998 = !DILocation(line: 401, column: 37, scope: !996)
!999 = !DILocation(line: 401, column: 42, scope: !996)
!1000 = !DILocation(line: 401, column: 9, scope: !986)
!1001 = !DILocation(line: 403, column: 10, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 403, column: 10)
!1003 = !DILocation(line: 403, column: 30, scope: !1002)
!1004 = !DILocation(line: 403, column: 27, scope: !1002)
!1005 = !DILocation(line: 403, column: 10, scope: !996)
!1006 = !DILocation(line: 404, column: 7, scope: !1002)
!1007 = !DILocation(line: 405, column: 4, scope: !986)
!1008 = !DILocation(line: 406, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !983, file: !3, line: 406, column: 8)
!1010 = !DILocation(line: 406, column: 8, scope: !983)
!1011 = !DILocation(line: 407, column: 53, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 406, column: 22)
!1013 = !DILocation(line: 407, column: 40, scope: !1012)
!1014 = !DILocation(line: 407, column: 63, scope: !1012)
!1015 = !DILocation(line: 407, column: 17, scope: !1012)
!1016 = !DILocation(line: 407, column: 5, scope: !1012)
!1017 = !DILocation(line: 407, column: 33, scope: !1012)
!1018 = !DILocation(line: 407, column: 38, scope: !1012)
!1019 = !DILocation(line: 408, column: 40, scope: !1012)
!1020 = !DILocation(line: 408, column: 17, scope: !1012)
!1021 = !DILocation(line: 408, column: 5, scope: !1012)
!1022 = !DILocation(line: 408, column: 33, scope: !1012)
!1023 = !DILocation(line: 408, column: 38, scope: !1012)
!1024 = !DILocation(line: 409, column: 30, scope: !1012)
!1025 = !DILocation(line: 409, column: 17, scope: !1012)
!1026 = !DILocation(line: 409, column: 40, scope: !1012)
!1027 = !DILocation(line: 409, column: 15, scope: !1012)
!1028 = !DILocation(line: 410, column: 4, scope: !1012)
!1029 = !DILocation(line: 411, column: 16, scope: !983)
!1030 = !DILocation(line: 411, column: 14, scope: !983)
!1031 = !DILocation(line: 412, column: 3, scope: !983)
!1032 = !DILocation(line: 413, column: 2, scope: !899)
!1033 = !DILocation(line: 372, column: 45, scope: !893)
!1034 = !DILocation(line: 372, column: 2, scope: !893)
!1035 = distinct !{!1035, !896, !1036, !438, !439}
!1036 = !DILocation(line: 413, column: 2, scope: !890)
!1037 = !DILocation(line: 416, column: 9, scope: !726)
!1038 = !DILocation(line: 416, column: 31, scope: !726)
!1039 = !DILocation(line: 416, column: 45, scope: !726)
!1040 = !DILocation(line: 416, column: 2, scope: !726)
!1041 = !DILocation(line: 417, column: 22, scope: !726)
!1042 = !DILocation(line: 417, column: 2, scope: !726)
!1043 = !DILocation(line: 417, column: 9, scope: !726)
!1044 = !DILocation(line: 417, column: 20, scope: !726)
!1045 = !DILocation(line: 419, column: 2, scope: !726)
!1046 = !DILocation(line: 420, column: 1, scope: !726)
!1047 = !DISubprogram(name: "sort", scope: !1048, file: !1048, line: 12, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1048 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !37, !1051, !1051, !1055, !1061}
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 61, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1053, line: 72, baseType: !1054)
!1053 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1053, line: 16, baseType: !88)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !40, line: 245, baseType: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!38, !1059, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !40, line: 242, baseType: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !37, !37, !38}
!1065 = distinct !DISubprogram(name: "cpcompare", scope: !3, file: !3, line: 291, type: !1057, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1066)
!1066 = !{!1067, !1068, !1069, !1072, !1073, !1076}
!1067 = !DILocalVariable(name: "a", arg: 1, scope: !1065, file: !3, line: 291, type: !1059)
!1068 = !DILocalVariable(name: "b", arg: 2, scope: !1065, file: !3, line: 291, type: !1059)
!1069 = !DILocalVariable(name: "app", scope: !1065, file: !3, line: 293, type: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!1072 = !DILocalVariable(name: "bpp", scope: !1065, file: !3, line: 293, type: !1070)
!1073 = !DILocalVariable(name: "ap", scope: !1065, file: !3, line: 294, type: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!1076 = !DILocalVariable(name: "bp", scope: !1065, file: !3, line: 294, type: !1074)
!1077 = !DILocation(line: 291, column: 41, scope: !1065)
!1078 = !DILocation(line: 291, column: 56, scope: !1065)
!1079 = !DILocation(line: 293, column: 2, scope: !1065)
!1080 = !DILocation(line: 293, column: 32, scope: !1065)
!1081 = !DILocation(line: 293, column: 38, scope: !1065)
!1082 = !DILocation(line: 293, column: 50, scope: !1065)
!1083 = !DILocation(line: 293, column: 56, scope: !1065)
!1084 = !DILocation(line: 294, column: 2, scope: !1065)
!1085 = !DILocation(line: 294, column: 30, scope: !1065)
!1086 = !DILocation(line: 294, column: 36, scope: !1065)
!1087 = !DILocation(line: 294, column: 35, scope: !1065)
!1088 = !DILocation(line: 294, column: 42, scope: !1065)
!1089 = !DILocation(line: 294, column: 48, scope: !1065)
!1090 = !DILocation(line: 294, column: 47, scope: !1065)
!1091 = !DILocation(line: 302, column: 6, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 302, column: 6)
!1093 = !DILocation(line: 302, column: 10, scope: !1092)
!1094 = !DILocation(line: 302, column: 18, scope: !1092)
!1095 = !DILocation(line: 302, column: 22, scope: !1092)
!1096 = !DILocation(line: 302, column: 15, scope: !1092)
!1097 = !DILocation(line: 302, column: 6, scope: !1065)
!1098 = !DILocation(line: 303, column: 10, scope: !1092)
!1099 = !DILocation(line: 303, column: 14, scope: !1092)
!1100 = !DILocation(line: 303, column: 21, scope: !1092)
!1101 = !DILocation(line: 303, column: 25, scope: !1092)
!1102 = !DILocation(line: 303, column: 19, scope: !1092)
!1103 = !DILocation(line: 303, column: 3, scope: !1092)
!1104 = !DILocation(line: 305, column: 10, scope: !1065)
!1105 = !DILocation(line: 305, column: 14, scope: !1065)
!1106 = !DILocation(line: 305, column: 22, scope: !1065)
!1107 = !DILocation(line: 305, column: 26, scope: !1065)
!1108 = !DILocation(line: 305, column: 33, scope: !1065)
!1109 = !DILocation(line: 305, column: 19, scope: !1065)
!1110 = !DILocation(line: 305, column: 42, scope: !1065)
!1111 = !DILocation(line: 305, column: 46, scope: !1065)
!1112 = !DILocation(line: 305, column: 54, scope: !1065)
!1113 = !DILocation(line: 305, column: 58, scope: !1065)
!1114 = !DILocation(line: 305, column: 65, scope: !1065)
!1115 = !DILocation(line: 305, column: 51, scope: !1065)
!1116 = !DILocation(line: 305, column: 39, scope: !1065)
!1117 = !DILocation(line: 305, column: 2, scope: !1065)
!1118 = !DILocation(line: 306, column: 1, scope: !1065)
!1119 = distinct !DISubprogram(name: "e820_nomerge", scope: !3, file: !3, line: 308, type: !1120, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!362, !5}
!1122 = !{!1123}
!1123 = !DILocalVariable(name: "type", arg: 1, scope: !1119, file: !3, line: 308, type: !5)
!1124 = !DILocation(line: 308, column: 41, scope: !1119)
!1125 = !DILocation(line: 315, column: 6, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 315, column: 6)
!1127 = !DILocation(line: 315, column: 11, scope: !1126)
!1128 = !DILocation(line: 315, column: 6, scope: !1119)
!1129 = !DILocation(line: 316, column: 3, scope: !1126)
!1130 = !DILocation(line: 317, column: 6, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 317, column: 6)
!1132 = !DILocation(line: 317, column: 11, scope: !1131)
!1133 = !DILocation(line: 317, column: 6, scope: !1119)
!1134 = !DILocation(line: 318, column: 3, scope: !1131)
!1135 = !DILocation(line: 319, column: 2, scope: !1119)
!1136 = !DILocation(line: 320, column: 1, scope: !1119)
!1137 = distinct !DISubprogram(name: "e820__range_update", scope: !3, file: !3, line: 530, type: !1138, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!61, !61, !61, !5, !5}
!1140 = !{!1141, !1142, !1143, !1144}
!1141 = !DILocalVariable(name: "start", arg: 1, scope: !1137, file: !3, line: 530, type: !61)
!1142 = !DILocalVariable(name: "size", arg: 2, scope: !1137, file: !3, line: 530, type: !61)
!1143 = !DILocalVariable(name: "old_type", arg: 3, scope: !1137, file: !3, line: 530, type: !5)
!1144 = !DILocalVariable(name: "new_type", arg: 4, scope: !1137, file: !3, line: 530, type: !5)
!1145 = !DILocation(line: 530, column: 35, scope: !1137)
!1146 = !DILocation(line: 530, column: 46, scope: !1137)
!1147 = !DILocation(line: 530, column: 67, scope: !1137)
!1148 = !DILocation(line: 530, column: 92, scope: !1137)
!1149 = !DILocation(line: 532, column: 30, scope: !1137)
!1150 = !DILocation(line: 532, column: 42, scope: !1137)
!1151 = !DILocation(line: 532, column: 49, scope: !1137)
!1152 = !DILocation(line: 532, column: 55, scope: !1137)
!1153 = !DILocation(line: 532, column: 65, scope: !1137)
!1154 = !DILocation(line: 532, column: 9, scope: !1137)
!1155 = !DILocation(line: 532, column: 2, scope: !1137)
!1156 = distinct !DISubprogram(name: "__e820__range_update", scope: !3, file: !3, line: 463, type: !1157, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!61, !69, !61, !61, !5, !5}
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1172, !1173, !1174, !1175, !1177, !1178, !1180}
!1160 = !DILocalVariable(name: "table", arg: 1, scope: !1156, file: !3, line: 463, type: !69)
!1161 = !DILocalVariable(name: "start", arg: 2, scope: !1156, file: !3, line: 463, type: !61)
!1162 = !DILocalVariable(name: "size", arg: 3, scope: !1156, file: !3, line: 463, type: !61)
!1163 = !DILocalVariable(name: "old_type", arg: 4, scope: !1156, file: !3, line: 463, type: !5)
!1164 = !DILocalVariable(name: "new_type", arg: 5, scope: !1156, file: !3, line: 463, type: !5)
!1165 = !DILocalVariable(name: "end", scope: !1156, file: !3, line: 465, type: !61)
!1166 = !DILocalVariable(name: "i", scope: !1156, file: !3, line: 466, type: !7)
!1167 = !DILocalVariable(name: "real_updated_size", scope: !1156, file: !3, line: 467, type: !61)
!1168 = !DILocalVariable(name: "entry", scope: !1169, file: !3, line: 482, type: !239)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 481, column: 42)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 481, column: 2)
!1171 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 481, column: 2)
!1172 = !DILocalVariable(name: "final_start", scope: !1169, file: !3, line: 483, type: !61)
!1173 = !DILocalVariable(name: "final_end", scope: !1169, file: !3, line: 483, type: !61)
!1174 = !DILocalVariable(name: "entry_end", scope: !1169, file: !3, line: 484, type: !61)
!1175 = !DILocalVariable(name: "__UNIQUE_ID___x343", scope: !1176, file: !3, line: 508, type: !61)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 508, column: 17)
!1177 = !DILocalVariable(name: "__UNIQUE_ID___y344", scope: !1176, file: !3, line: 508, type: !61)
!1178 = !DILocalVariable(name: "__UNIQUE_ID___x345", scope: !1179, file: !3, line: 509, type: !61)
!1179 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 509, column: 15)
!1180 = !DILocalVariable(name: "__UNIQUE_ID___y346", scope: !1179, file: !3, line: 509, type: !61)
!1181 = !DILocation(line: 463, column: 41, scope: !1156)
!1182 = !DILocation(line: 463, column: 52, scope: !1156)
!1183 = !DILocation(line: 463, column: 63, scope: !1156)
!1184 = !DILocation(line: 463, column: 84, scope: !1156)
!1185 = !DILocation(line: 463, column: 109, scope: !1156)
!1186 = !DILocation(line: 465, column: 2, scope: !1156)
!1187 = !DILocation(line: 465, column: 6, scope: !1156)
!1188 = !DILocation(line: 466, column: 2, scope: !1156)
!1189 = !DILocation(line: 466, column: 15, scope: !1156)
!1190 = !DILocation(line: 467, column: 2, scope: !1156)
!1191 = !DILocation(line: 467, column: 6, scope: !1156)
!1192 = !DILocation(line: 469, column: 2, scope: !1156)
!1193 = !DILocation(line: 469, column: 2, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 469, column: 2)
!1195 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 469, column: 2)
!1196 = !DILocation(line: 469, column: 2, scope: !1195)
!1197 = !DILocation(line: 469, column: 2, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 469, column: 2)
!1199 = !DILocation(line: 469, column: 2, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 469, column: 2)
!1201 = !DILocation(line: 469, column: 2, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 469, column: 2)
!1203 = !{i64 2156323998, i64 2156324027, i64 2156324073, i64 2156324131, i64 2156324185, i64 2156324239, i64 2156324294, i64 2156324325}
!1204 = !DILocation(line: 471, column: 6, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 471, column: 6)
!1206 = !DILocation(line: 471, column: 27, scope: !1205)
!1207 = !DILocation(line: 471, column: 25, scope: !1205)
!1208 = !DILocation(line: 471, column: 11, scope: !1205)
!1209 = !DILocation(line: 471, column: 6, scope: !1156)
!1210 = !DILocation(line: 472, column: 23, scope: !1205)
!1211 = !DILocation(line: 472, column: 21, scope: !1205)
!1212 = !DILocation(line: 472, column: 8, scope: !1205)
!1213 = !DILocation(line: 472, column: 3, scope: !1205)
!1214 = !DILocation(line: 474, column: 8, scope: !1156)
!1215 = !DILocation(line: 474, column: 16, scope: !1156)
!1216 = !DILocation(line: 474, column: 14, scope: !1156)
!1217 = !DILocation(line: 474, column: 6, scope: !1156)
!1218 = !DILocation(line: 475, column: 2, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 475, column: 2)
!1220 = !DILocation(line: 475, column: 2, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 475, column: 2)
!1222 = !DILocation(line: 476, column: 18, scope: !1156)
!1223 = !DILocation(line: 476, column: 2, scope: !1156)
!1224 = !DILocation(line: 477, column: 2, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 477, column: 2)
!1226 = !DILocation(line: 477, column: 2, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 477, column: 2)
!1228 = !DILocation(line: 478, column: 18, scope: !1156)
!1229 = !DILocation(line: 478, column: 2, scope: !1156)
!1230 = !DILocation(line: 479, column: 2, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 479, column: 2)
!1232 = !DILocation(line: 479, column: 2, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 479, column: 2)
!1234 = !DILocation(line: 481, column: 9, scope: !1171)
!1235 = !DILocation(line: 481, column: 7, scope: !1171)
!1236 = !DILocation(line: 481, column: 14, scope: !1170)
!1237 = !DILocation(line: 481, column: 18, scope: !1170)
!1238 = !DILocation(line: 481, column: 25, scope: !1170)
!1239 = !DILocation(line: 481, column: 16, scope: !1170)
!1240 = !DILocation(line: 481, column: 2, scope: !1171)
!1241 = !DILocation(line: 482, column: 3, scope: !1169)
!1242 = !DILocation(line: 482, column: 22, scope: !1169)
!1243 = !DILocation(line: 482, column: 31, scope: !1169)
!1244 = !DILocation(line: 482, column: 38, scope: !1169)
!1245 = !DILocation(line: 482, column: 46, scope: !1169)
!1246 = !DILocation(line: 483, column: 3, scope: !1169)
!1247 = !DILocation(line: 483, column: 7, scope: !1169)
!1248 = !DILocation(line: 483, column: 20, scope: !1169)
!1249 = !DILocation(line: 484, column: 3, scope: !1169)
!1250 = !DILocation(line: 484, column: 7, scope: !1169)
!1251 = !DILocation(line: 486, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 486, column: 7)
!1253 = !DILocation(line: 486, column: 14, scope: !1252)
!1254 = !DILocation(line: 486, column: 22, scope: !1252)
!1255 = !DILocation(line: 486, column: 19, scope: !1252)
!1256 = !DILocation(line: 486, column: 7, scope: !1169)
!1257 = !DILocation(line: 487, column: 4, scope: !1252)
!1258 = !DILocation(line: 489, column: 15, scope: !1169)
!1259 = !DILocation(line: 489, column: 22, scope: !1169)
!1260 = !DILocation(line: 489, column: 29, scope: !1169)
!1261 = !DILocation(line: 489, column: 36, scope: !1169)
!1262 = !DILocation(line: 489, column: 27, scope: !1169)
!1263 = !DILocation(line: 489, column: 13, scope: !1169)
!1264 = !DILocation(line: 492, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 492, column: 7)
!1266 = !DILocation(line: 492, column: 14, scope: !1265)
!1267 = !DILocation(line: 492, column: 22, scope: !1265)
!1268 = !DILocation(line: 492, column: 19, scope: !1265)
!1269 = !DILocation(line: 492, column: 28, scope: !1265)
!1270 = !DILocation(line: 492, column: 31, scope: !1265)
!1271 = !DILocation(line: 492, column: 44, scope: !1265)
!1272 = !DILocation(line: 492, column: 41, scope: !1265)
!1273 = !DILocation(line: 492, column: 7, scope: !1169)
!1274 = !DILocation(line: 493, column: 18, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 492, column: 49)
!1276 = !DILocation(line: 493, column: 4, scope: !1275)
!1277 = !DILocation(line: 493, column: 11, scope: !1275)
!1278 = !DILocation(line: 493, column: 16, scope: !1275)
!1279 = !DILocation(line: 494, column: 25, scope: !1275)
!1280 = !DILocation(line: 494, column: 32, scope: !1275)
!1281 = !DILocation(line: 494, column: 22, scope: !1275)
!1282 = !DILocation(line: 495, column: 4, scope: !1275)
!1283 = !DILocation(line: 499, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 499, column: 7)
!1285 = !DILocation(line: 499, column: 14, scope: !1284)
!1286 = !DILocation(line: 499, column: 21, scope: !1284)
!1287 = !DILocation(line: 499, column: 19, scope: !1284)
!1288 = !DILocation(line: 499, column: 27, scope: !1284)
!1289 = !DILocation(line: 499, column: 30, scope: !1284)
!1290 = !DILocation(line: 499, column: 42, scope: !1284)
!1291 = !DILocation(line: 499, column: 40, scope: !1284)
!1292 = !DILocation(line: 499, column: 7, scope: !1169)
!1293 = !DILocation(line: 500, column: 22, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 499, column: 47)
!1295 = !DILocation(line: 500, column: 29, scope: !1294)
!1296 = !DILocation(line: 500, column: 36, scope: !1294)
!1297 = !DILocation(line: 500, column: 42, scope: !1294)
!1298 = !DILocation(line: 500, column: 4, scope: !1294)
!1299 = !DILocation(line: 501, column: 22, scope: !1294)
!1300 = !DILocation(line: 501, column: 29, scope: !1294)
!1301 = !DILocation(line: 501, column: 34, scope: !1294)
!1302 = !DILocation(line: 501, column: 46, scope: !1294)
!1303 = !DILocation(line: 501, column: 44, scope: !1294)
!1304 = !DILocation(line: 501, column: 51, scope: !1294)
!1305 = !DILocation(line: 501, column: 58, scope: !1294)
!1306 = !DILocation(line: 501, column: 4, scope: !1294)
!1307 = !DILocation(line: 502, column: 18, scope: !1294)
!1308 = !DILocation(line: 502, column: 26, scope: !1294)
!1309 = !DILocation(line: 502, column: 33, scope: !1294)
!1310 = !DILocation(line: 502, column: 24, scope: !1294)
!1311 = !DILocation(line: 502, column: 4, scope: !1294)
!1312 = !DILocation(line: 502, column: 11, scope: !1294)
!1313 = !DILocation(line: 502, column: 16, scope: !1294)
!1314 = !DILocation(line: 503, column: 25, scope: !1294)
!1315 = !DILocation(line: 503, column: 22, scope: !1294)
!1316 = !DILocation(line: 504, column: 4, scope: !1294)
!1317 = !DILocation(line: 508, column: 17, scope: !1176)
!1318 = !DILocation(line: 508, column: 17, scope: !1169)
!1319 = !DILocation(line: 508, column: 15, scope: !1169)
!1320 = !DILocation(line: 509, column: 15, scope: !1179)
!1321 = !DILocation(line: 509, column: 15, scope: !1169)
!1322 = !DILocation(line: 509, column: 13, scope: !1169)
!1323 = !DILocation(line: 510, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 510, column: 7)
!1325 = !DILocation(line: 510, column: 22, scope: !1324)
!1326 = !DILocation(line: 510, column: 19, scope: !1324)
!1327 = !DILocation(line: 510, column: 7, scope: !1169)
!1328 = !DILocation(line: 511, column: 4, scope: !1324)
!1329 = !DILocation(line: 513, column: 21, scope: !1169)
!1330 = !DILocation(line: 513, column: 28, scope: !1169)
!1331 = !DILocation(line: 513, column: 41, scope: !1169)
!1332 = !DILocation(line: 513, column: 53, scope: !1169)
!1333 = !DILocation(line: 513, column: 51, scope: !1169)
!1334 = !DILocation(line: 513, column: 66, scope: !1169)
!1335 = !DILocation(line: 513, column: 3, scope: !1169)
!1336 = !DILocation(line: 515, column: 24, scope: !1169)
!1337 = !DILocation(line: 515, column: 36, scope: !1169)
!1338 = !DILocation(line: 515, column: 34, scope: !1169)
!1339 = !DILocation(line: 515, column: 21, scope: !1169)
!1340 = !DILocation(line: 521, column: 18, scope: !1169)
!1341 = !DILocation(line: 521, column: 30, scope: !1169)
!1342 = !DILocation(line: 521, column: 28, scope: !1169)
!1343 = !DILocation(line: 521, column: 3, scope: !1169)
!1344 = !DILocation(line: 521, column: 10, scope: !1169)
!1345 = !DILocation(line: 521, column: 15, scope: !1169)
!1346 = !DILocation(line: 522, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 522, column: 7)
!1348 = !DILocation(line: 522, column: 14, scope: !1347)
!1349 = !DILocation(line: 522, column: 21, scope: !1347)
!1350 = !DILocation(line: 522, column: 19, scope: !1347)
!1351 = !DILocation(line: 522, column: 7, scope: !1169)
!1352 = !DILocation(line: 523, column: 4, scope: !1347)
!1353 = !DILocation(line: 525, column: 17, scope: !1169)
!1354 = !DILocation(line: 525, column: 3, scope: !1169)
!1355 = !DILocation(line: 525, column: 10, scope: !1169)
!1356 = !DILocation(line: 525, column: 15, scope: !1169)
!1357 = !DILocation(line: 526, column: 2, scope: !1170)
!1358 = !DILocation(line: 526, column: 2, scope: !1169)
!1359 = !DILocation(line: 481, column: 38, scope: !1170)
!1360 = !DILocation(line: 481, column: 2, scope: !1170)
!1361 = distinct !{!1361, !1240, !1362, !438, !439}
!1362 = !DILocation(line: 526, column: 2, scope: !1171)
!1363 = !DILocation(line: 527, column: 9, scope: !1156)
!1364 = !DILocation(line: 528, column: 1, scope: !1156)
!1365 = !DILocation(line: 527, column: 2, scope: !1156)
!1366 = distinct !DISubprogram(name: "e820__range_remove", scope: !3, file: !3, line: 541, type: !1367, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1369)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!61, !61, !61, !5, !362}
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1381, !1382, !1383, !1384, !1386, !1387, !1389}
!1370 = !DILocalVariable(name: "start", arg: 1, scope: !1366, file: !3, line: 541, type: !61)
!1371 = !DILocalVariable(name: "size", arg: 2, scope: !1366, file: !3, line: 541, type: !61)
!1372 = !DILocalVariable(name: "old_type", arg: 3, scope: !1366, file: !3, line: 541, type: !5)
!1373 = !DILocalVariable(name: "check_type", arg: 4, scope: !1366, file: !3, line: 541, type: !362)
!1374 = !DILocalVariable(name: "i", scope: !1366, file: !3, line: 543, type: !38)
!1375 = !DILocalVariable(name: "end", scope: !1366, file: !3, line: 544, type: !61)
!1376 = !DILocalVariable(name: "real_removed_size", scope: !1366, file: !3, line: 545, type: !61)
!1377 = !DILocalVariable(name: "entry", scope: !1378, file: !3, line: 557, type: !239)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 556, column: 47)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 556, column: 2)
!1380 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 556, column: 2)
!1381 = !DILocalVariable(name: "final_start", scope: !1378, file: !3, line: 558, type: !61)
!1382 = !DILocalVariable(name: "final_end", scope: !1378, file: !3, line: 558, type: !61)
!1383 = !DILocalVariable(name: "entry_end", scope: !1378, file: !3, line: 559, type: !61)
!1384 = !DILocalVariable(name: "__UNIQUE_ID___x347", scope: !1385, file: !3, line: 582, type: !61)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 582, column: 17)
!1386 = !DILocalVariable(name: "__UNIQUE_ID___y348", scope: !1385, file: !3, line: 582, type: !61)
!1387 = !DILocalVariable(name: "__UNIQUE_ID___x349", scope: !1388, file: !3, line: 583, type: !61)
!1388 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 583, column: 15)
!1389 = !DILocalVariable(name: "__UNIQUE_ID___y350", scope: !1388, file: !3, line: 583, type: !61)
!1390 = !DILocation(line: 541, column: 35, scope: !1366)
!1391 = !DILocation(line: 541, column: 46, scope: !1366)
!1392 = !DILocation(line: 541, column: 67, scope: !1366)
!1393 = !DILocation(line: 541, column: 82, scope: !1366)
!1394 = !DILocation(line: 543, column: 2, scope: !1366)
!1395 = !DILocation(line: 543, column: 6, scope: !1366)
!1396 = !DILocation(line: 544, column: 2, scope: !1366)
!1397 = !DILocation(line: 544, column: 6, scope: !1366)
!1398 = !DILocation(line: 545, column: 2, scope: !1366)
!1399 = !DILocation(line: 545, column: 6, scope: !1366)
!1400 = !DILocation(line: 547, column: 6, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 547, column: 6)
!1402 = !DILocation(line: 547, column: 27, scope: !1401)
!1403 = !DILocation(line: 547, column: 25, scope: !1401)
!1404 = !DILocation(line: 547, column: 11, scope: !1401)
!1405 = !DILocation(line: 547, column: 6, scope: !1366)
!1406 = !DILocation(line: 548, column: 23, scope: !1401)
!1407 = !DILocation(line: 548, column: 21, scope: !1401)
!1408 = !DILocation(line: 548, column: 8, scope: !1401)
!1409 = !DILocation(line: 548, column: 3, scope: !1401)
!1410 = !DILocation(line: 550, column: 8, scope: !1366)
!1411 = !DILocation(line: 550, column: 16, scope: !1366)
!1412 = !DILocation(line: 550, column: 14, scope: !1366)
!1413 = !DILocation(line: 550, column: 6, scope: !1366)
!1414 = !DILocation(line: 551, column: 2, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 551, column: 2)
!1416 = !DILocation(line: 551, column: 2, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 551, column: 2)
!1418 = !DILocation(line: 552, column: 6, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 552, column: 6)
!1420 = !{i8 0, i8 2}
!1421 = !{}
!1422 = !DILocation(line: 552, column: 6, scope: !1366)
!1423 = !DILocation(line: 553, column: 19, scope: !1419)
!1424 = !DILocation(line: 553, column: 3, scope: !1419)
!1425 = !DILocation(line: 554, column: 2, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 554, column: 2)
!1427 = !DILocation(line: 554, column: 2, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 554, column: 2)
!1429 = !DILocation(line: 556, column: 9, scope: !1380)
!1430 = !DILocation(line: 556, column: 7, scope: !1380)
!1431 = !DILocation(line: 556, column: 14, scope: !1379)
!1432 = !DILocation(line: 556, column: 18, scope: !1379)
!1433 = !DILocation(line: 556, column: 30, scope: !1379)
!1434 = !DILocation(line: 556, column: 16, scope: !1379)
!1435 = !DILocation(line: 556, column: 2, scope: !1380)
!1436 = !DILocation(line: 557, column: 3, scope: !1378)
!1437 = !DILocation(line: 557, column: 22, scope: !1378)
!1438 = !DILocation(line: 557, column: 31, scope: !1378)
!1439 = !DILocation(line: 557, column: 43, scope: !1378)
!1440 = !DILocation(line: 557, column: 51, scope: !1378)
!1441 = !DILocation(line: 558, column: 3, scope: !1378)
!1442 = !DILocation(line: 558, column: 7, scope: !1378)
!1443 = !DILocation(line: 558, column: 20, scope: !1378)
!1444 = !DILocation(line: 559, column: 3, scope: !1378)
!1445 = !DILocation(line: 559, column: 7, scope: !1378)
!1446 = !DILocation(line: 561, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 561, column: 7)
!1448 = !DILocation(line: 561, column: 18, scope: !1447)
!1449 = !DILocation(line: 561, column: 21, scope: !1447)
!1450 = !DILocation(line: 561, column: 28, scope: !1447)
!1451 = !DILocation(line: 561, column: 36, scope: !1447)
!1452 = !DILocation(line: 561, column: 33, scope: !1447)
!1453 = !DILocation(line: 561, column: 7, scope: !1378)
!1454 = !DILocation(line: 562, column: 4, scope: !1447)
!1455 = !DILocation(line: 564, column: 15, scope: !1378)
!1456 = !DILocation(line: 564, column: 22, scope: !1378)
!1457 = !DILocation(line: 564, column: 29, scope: !1378)
!1458 = !DILocation(line: 564, column: 36, scope: !1378)
!1459 = !DILocation(line: 564, column: 27, scope: !1378)
!1460 = !DILocation(line: 564, column: 13, scope: !1378)
!1461 = !DILocation(line: 567, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 567, column: 7)
!1463 = !DILocation(line: 567, column: 14, scope: !1462)
!1464 = !DILocation(line: 567, column: 22, scope: !1462)
!1465 = !DILocation(line: 567, column: 19, scope: !1462)
!1466 = !DILocation(line: 567, column: 28, scope: !1462)
!1467 = !DILocation(line: 567, column: 31, scope: !1462)
!1468 = !DILocation(line: 567, column: 44, scope: !1462)
!1469 = !DILocation(line: 567, column: 41, scope: !1462)
!1470 = !DILocation(line: 567, column: 7, scope: !1378)
!1471 = !DILocation(line: 568, column: 25, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 567, column: 49)
!1473 = !DILocation(line: 568, column: 32, scope: !1472)
!1474 = !DILocation(line: 568, column: 22, scope: !1472)
!1475 = !DILocation(line: 569, column: 11, scope: !1472)
!1476 = !DILocation(line: 569, column: 4, scope: !1472)
!1477 = !DILocation(line: 570, column: 4, scope: !1472)
!1478 = !DILocation(line: 574, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 574, column: 7)
!1480 = !DILocation(line: 574, column: 14, scope: !1479)
!1481 = !DILocation(line: 574, column: 21, scope: !1479)
!1482 = !DILocation(line: 574, column: 19, scope: !1479)
!1483 = !DILocation(line: 574, column: 27, scope: !1479)
!1484 = !DILocation(line: 574, column: 30, scope: !1479)
!1485 = !DILocation(line: 574, column: 42, scope: !1479)
!1486 = !DILocation(line: 574, column: 40, scope: !1479)
!1487 = !DILocation(line: 574, column: 7, scope: !1378)
!1488 = !DILocation(line: 575, column: 20, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 574, column: 47)
!1490 = !DILocation(line: 575, column: 25, scope: !1489)
!1491 = !DILocation(line: 575, column: 37, scope: !1489)
!1492 = !DILocation(line: 575, column: 35, scope: !1489)
!1493 = !DILocation(line: 575, column: 42, scope: !1489)
!1494 = !DILocation(line: 575, column: 49, scope: !1489)
!1495 = !DILocation(line: 575, column: 4, scope: !1489)
!1496 = !DILocation(line: 576, column: 18, scope: !1489)
!1497 = !DILocation(line: 576, column: 26, scope: !1489)
!1498 = !DILocation(line: 576, column: 33, scope: !1489)
!1499 = !DILocation(line: 576, column: 24, scope: !1489)
!1500 = !DILocation(line: 576, column: 4, scope: !1489)
!1501 = !DILocation(line: 576, column: 11, scope: !1489)
!1502 = !DILocation(line: 576, column: 16, scope: !1489)
!1503 = !DILocation(line: 577, column: 25, scope: !1489)
!1504 = !DILocation(line: 577, column: 22, scope: !1489)
!1505 = !DILocation(line: 578, column: 4, scope: !1489)
!1506 = !DILocation(line: 582, column: 17, scope: !1385)
!1507 = !DILocation(line: 582, column: 17, scope: !1378)
!1508 = !DILocation(line: 582, column: 15, scope: !1378)
!1509 = !DILocation(line: 583, column: 15, scope: !1388)
!1510 = !DILocation(line: 583, column: 15, scope: !1378)
!1511 = !DILocation(line: 583, column: 13, scope: !1378)
!1512 = !DILocation(line: 584, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 584, column: 7)
!1514 = !DILocation(line: 584, column: 22, scope: !1513)
!1515 = !DILocation(line: 584, column: 19, scope: !1513)
!1516 = !DILocation(line: 584, column: 7, scope: !1378)
!1517 = !DILocation(line: 585, column: 4, scope: !1513)
!1518 = !DILocation(line: 587, column: 24, scope: !1378)
!1519 = !DILocation(line: 587, column: 36, scope: !1378)
!1520 = !DILocation(line: 587, column: 34, scope: !1378)
!1521 = !DILocation(line: 587, column: 21, scope: !1378)
!1522 = !DILocation(line: 593, column: 18, scope: !1378)
!1523 = !DILocation(line: 593, column: 30, scope: !1378)
!1524 = !DILocation(line: 593, column: 28, scope: !1378)
!1525 = !DILocation(line: 593, column: 3, scope: !1378)
!1526 = !DILocation(line: 593, column: 10, scope: !1378)
!1527 = !DILocation(line: 593, column: 15, scope: !1378)
!1528 = !DILocation(line: 594, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 594, column: 7)
!1530 = !DILocation(line: 594, column: 14, scope: !1529)
!1531 = !DILocation(line: 594, column: 21, scope: !1529)
!1532 = !DILocation(line: 594, column: 19, scope: !1529)
!1533 = !DILocation(line: 594, column: 7, scope: !1378)
!1534 = !DILocation(line: 595, column: 4, scope: !1529)
!1535 = !DILocation(line: 597, column: 17, scope: !1378)
!1536 = !DILocation(line: 597, column: 3, scope: !1378)
!1537 = !DILocation(line: 597, column: 10, scope: !1378)
!1538 = !DILocation(line: 597, column: 15, scope: !1378)
!1539 = !DILocation(line: 598, column: 2, scope: !1379)
!1540 = !DILocation(line: 598, column: 2, scope: !1378)
!1541 = !DILocation(line: 556, column: 43, scope: !1379)
!1542 = !DILocation(line: 556, column: 2, scope: !1379)
!1543 = distinct !{!1543, !1435, !1544, !438, !439}
!1544 = !DILocation(line: 598, column: 2, scope: !1380)
!1545 = !DILocation(line: 599, column: 9, scope: !1366)
!1546 = !DILocation(line: 600, column: 1, scope: !1366)
!1547 = !DILocation(line: 599, column: 2, scope: !1366)
!1548 = distinct !DISubprogram(name: "e820__update_table_print", scope: !3, file: !3, line: 602, type: !1549, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null}
!1551 = !DILocation(line: 604, column: 25, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 604, column: 6)
!1553 = !DILocation(line: 604, column: 6, scope: !1552)
!1554 = !DILocation(line: 604, column: 6, scope: !1548)
!1555 = !DILocation(line: 605, column: 3, scope: !1552)
!1556 = !DILocation(line: 607, column: 2, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 607, column: 2)
!1558 = !DILocation(line: 607, column: 2, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 607, column: 2)
!1560 = !DILocation(line: 608, column: 2, scope: !1548)
!1561 = !DILocation(line: 609, column: 1, scope: !1548)
!1562 = distinct !DISubprogram(name: "e820__setup_pci_gap", scope: !3, file: !3, line: 658, type: !1549, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DILocalVariable(name: "gapstart", scope: !1562, file: !3, line: 660, type: !88)
!1565 = !DILocalVariable(name: "gapsize", scope: !1562, file: !3, line: 660, type: !88)
!1566 = !DILocalVariable(name: "found", scope: !1562, file: !3, line: 661, type: !38)
!1567 = !DILocation(line: 660, column: 2, scope: !1562)
!1568 = !DILocation(line: 660, column: 16, scope: !1562)
!1569 = !DILocation(line: 660, column: 26, scope: !1562)
!1570 = !DILocation(line: 661, column: 2, scope: !1562)
!1571 = !DILocation(line: 661, column: 6, scope: !1562)
!1572 = !DILocation(line: 663, column: 10, scope: !1562)
!1573 = !DILocation(line: 664, column: 11, scope: !1562)
!1574 = !DILocation(line: 664, column: 9, scope: !1562)
!1575 = !DILocation(line: 666, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 666, column: 6)
!1577 = !DILocation(line: 666, column: 6, scope: !1562)
!1578 = !DILocation(line: 668, column: 15, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 666, column: 14)
!1580 = !DILocation(line: 668, column: 23, scope: !1579)
!1581 = !DILocation(line: 668, column: 38, scope: !1579)
!1582 = !DILocation(line: 668, column: 12, scope: !1579)
!1583 = !DILocation(line: 669, column: 3, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 669, column: 3)
!1585 = !DILocation(line: 669, column: 3, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 669, column: 3)
!1587 = !DILocation(line: 670, column: 3, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 670, column: 3)
!1589 = !DILocation(line: 670, column: 3, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 670, column: 3)
!1591 = !DILocation(line: 674, column: 2, scope: !1579)
!1592 = !DILocation(line: 679, column: 18, scope: !1562)
!1593 = !DILocation(line: 679, column: 16, scope: !1562)
!1594 = !DILocation(line: 681, column: 2, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 681, column: 2)
!1596 = !DILocation(line: 681, column: 2, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 681, column: 2)
!1598 = !DILocation(line: 683, column: 1, scope: !1562)
!1599 = distinct !DISubprogram(name: "e820_search_gap", scope: !3, file: !3, line: 621, type: !1600, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1603)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!38, !1602, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1609, !1611, !1612}
!1604 = !DILocalVariable(name: "gapstart", arg: 1, scope: !1599, file: !3, line: 621, type: !1602)
!1605 = !DILocalVariable(name: "gapsize", arg: 2, scope: !1599, file: !3, line: 621, type: !1602)
!1606 = !DILocalVariable(name: "last", scope: !1599, file: !3, line: 623, type: !48)
!1607 = !DILocalVariable(name: "i", scope: !1599, file: !3, line: 624, type: !38)
!1608 = !DILocalVariable(name: "found", scope: !1599, file: !3, line: 625, type: !38)
!1609 = !DILocalVariable(name: "start", scope: !1610, file: !3, line: 628, type: !48)
!1610 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 627, column: 19)
!1611 = !DILocalVariable(name: "end", scope: !1610, file: !3, line: 629, type: !48)
!1612 = !DILocalVariable(name: "gap", scope: !1613, file: !3, line: 636, type: !88)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 635, column: 19)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 635, column: 7)
!1615 = !DILocation(line: 621, column: 50, scope: !1599)
!1616 = !DILocation(line: 621, column: 75, scope: !1599)
!1617 = !DILocation(line: 623, column: 2, scope: !1599)
!1618 = !DILocation(line: 623, column: 21, scope: !1599)
!1619 = !DILocation(line: 624, column: 2, scope: !1599)
!1620 = !DILocation(line: 624, column: 6, scope: !1599)
!1621 = !DILocation(line: 624, column: 10, scope: !1599)
!1622 = !DILocation(line: 624, column: 22, scope: !1599)
!1623 = !DILocation(line: 625, column: 2, scope: !1599)
!1624 = !DILocation(line: 625, column: 6, scope: !1599)
!1625 = !DILocation(line: 627, column: 2, scope: !1599)
!1626 = !DILocation(line: 627, column: 9, scope: !1599)
!1627 = !DILocation(line: 627, column: 13, scope: !1599)
!1628 = !DILocation(line: 628, column: 3, scope: !1610)
!1629 = !DILocation(line: 628, column: 22, scope: !1610)
!1630 = !DILocation(line: 628, column: 30, scope: !1610)
!1631 = !DILocation(line: 628, column: 42, scope: !1610)
!1632 = !DILocation(line: 628, column: 50, scope: !1610)
!1633 = !DILocation(line: 628, column: 53, scope: !1610)
!1634 = !DILocation(line: 629, column: 3, scope: !1610)
!1635 = !DILocation(line: 629, column: 22, scope: !1610)
!1636 = !DILocation(line: 629, column: 28, scope: !1610)
!1637 = !DILocation(line: 629, column: 36, scope: !1610)
!1638 = !DILocation(line: 629, column: 48, scope: !1610)
!1639 = !DILocation(line: 629, column: 56, scope: !1610)
!1640 = !DILocation(line: 629, column: 59, scope: !1610)
!1641 = !DILocation(line: 629, column: 34, scope: !1610)
!1642 = !DILocation(line: 635, column: 7, scope: !1614)
!1643 = !DILocation(line: 635, column: 14, scope: !1614)
!1644 = !DILocation(line: 635, column: 12, scope: !1614)
!1645 = !DILocation(line: 635, column: 7, scope: !1610)
!1646 = !DILocation(line: 636, column: 4, scope: !1613)
!1647 = !DILocation(line: 636, column: 18, scope: !1613)
!1648 = !DILocation(line: 636, column: 24, scope: !1613)
!1649 = !DILocation(line: 636, column: 31, scope: !1613)
!1650 = !DILocation(line: 636, column: 29, scope: !1613)
!1651 = !DILocation(line: 638, column: 8, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 638, column: 8)
!1653 = !DILocation(line: 638, column: 16, scope: !1652)
!1654 = !DILocation(line: 638, column: 15, scope: !1652)
!1655 = !DILocation(line: 638, column: 12, scope: !1652)
!1656 = !DILocation(line: 638, column: 8, scope: !1613)
!1657 = !DILocation(line: 639, column: 16, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 638, column: 25)
!1659 = !DILocation(line: 639, column: 6, scope: !1658)
!1660 = !DILocation(line: 639, column: 14, scope: !1658)
!1661 = !DILocation(line: 640, column: 17, scope: !1658)
!1662 = !DILocation(line: 640, column: 6, scope: !1658)
!1663 = !DILocation(line: 640, column: 15, scope: !1658)
!1664 = !DILocation(line: 641, column: 11, scope: !1658)
!1665 = !DILocation(line: 642, column: 4, scope: !1658)
!1666 = !DILocation(line: 643, column: 3, scope: !1614)
!1667 = !DILocation(line: 643, column: 3, scope: !1613)
!1668 = !DILocation(line: 644, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 644, column: 7)
!1670 = !DILocation(line: 644, column: 15, scope: !1669)
!1671 = !DILocation(line: 644, column: 13, scope: !1669)
!1672 = !DILocation(line: 644, column: 7, scope: !1610)
!1673 = !DILocation(line: 645, column: 11, scope: !1669)
!1674 = !DILocation(line: 645, column: 9, scope: !1669)
!1675 = !DILocation(line: 645, column: 4, scope: !1669)
!1676 = !DILocation(line: 646, column: 2, scope: !1599)
!1677 = distinct !{!1677, !1625, !1676, !438, !439}
!1678 = !DILocation(line: 647, column: 9, scope: !1599)
!1679 = !DILocation(line: 648, column: 1, scope: !1599)
!1680 = !DILocation(line: 647, column: 2, scope: !1599)
!1681 = distinct !DISubprogram(name: "e820__reallocate_tables", scope: !3, file: !3, line: 697, type: !1549, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1682)
!1682 = !{!1683, !1684}
!1683 = !DILocalVariable(name: "n", scope: !1681, file: !3, line: 699, type: !69)
!1684 = !DILocalVariable(name: "size", scope: !1681, file: !3, line: 700, type: !38)
!1685 = !DILocation(line: 699, column: 2, scope: !1681)
!1686 = !DILocation(line: 699, column: 21, scope: !1681)
!1687 = !DILocation(line: 700, column: 2, scope: !1681)
!1688 = !DILocation(line: 700, column: 6, scope: !1681)
!1689 = !DILocation(line: 702, column: 74, scope: !1681)
!1690 = !DILocation(line: 702, column: 86, scope: !1681)
!1691 = !DILocation(line: 702, column: 73, scope: !1681)
!1692 = !DILocation(line: 702, column: 46, scope: !1681)
!1693 = !DILocation(line: 702, column: 9, scope: !1681)
!1694 = !DILocation(line: 702, column: 7, scope: !1681)
!1695 = !DILocation(line: 703, column: 14, scope: !1681)
!1696 = !DILocation(line: 703, column: 26, scope: !1681)
!1697 = !DILocation(line: 703, column: 6, scope: !1681)
!1698 = !DILocation(line: 703, column: 4, scope: !1681)
!1699 = !DILocation(line: 704, column: 2, scope: !1681)
!1700 = !DILocation(line: 704, column: 2, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 704, column: 2)
!1702 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 704, column: 2)
!1703 = !DILocation(line: 704, column: 2, scope: !1702)
!1704 = !DILocation(line: 704, column: 2, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 704, column: 2)
!1706 = !DILocation(line: 704, column: 2, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 704, column: 2)
!1708 = !DILocation(line: 704, column: 2, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 704, column: 2)
!1710 = !{i64 2156361433, i64 2156361462, i64 2156361508, i64 2156361566, i64 2156361620, i64 2156361674, i64 2156361729, i64 2156361760}
!1711 = !DILocation(line: 705, column: 15, scope: !1681)
!1712 = !DILocation(line: 705, column: 13, scope: !1681)
!1713 = !DILocation(line: 707, column: 74, scope: !1681)
!1714 = !DILocation(line: 707, column: 92, scope: !1681)
!1715 = !DILocation(line: 707, column: 73, scope: !1681)
!1716 = !DILocation(line: 707, column: 46, scope: !1681)
!1717 = !DILocation(line: 707, column: 9, scope: !1681)
!1718 = !DILocation(line: 707, column: 7, scope: !1681)
!1719 = !DILocation(line: 708, column: 14, scope: !1681)
!1720 = !DILocation(line: 708, column: 32, scope: !1681)
!1721 = !DILocation(line: 708, column: 6, scope: !1681)
!1722 = !DILocation(line: 708, column: 4, scope: !1681)
!1723 = !DILocation(line: 709, column: 2, scope: !1681)
!1724 = !DILocation(line: 709, column: 2, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 709, column: 2)
!1726 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 709, column: 2)
!1727 = !DILocation(line: 709, column: 2, scope: !1726)
!1728 = !DILocation(line: 709, column: 2, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 709, column: 2)
!1730 = !DILocation(line: 709, column: 2, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 709, column: 2)
!1732 = !DILocation(line: 709, column: 2, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 709, column: 2)
!1734 = !{i64 2156362638, i64 2156362667, i64 2156362713, i64 2156362771, i64 2156362825, i64 2156362879, i64 2156362934, i64 2156362965}
!1735 = !DILocation(line: 710, column: 21, scope: !1681)
!1736 = !DILocation(line: 710, column: 19, scope: !1681)
!1737 = !DILocation(line: 712, column: 74, scope: !1681)
!1738 = !DILocation(line: 712, column: 95, scope: !1681)
!1739 = !DILocation(line: 712, column: 73, scope: !1681)
!1740 = !DILocation(line: 712, column: 46, scope: !1681)
!1741 = !DILocation(line: 712, column: 9, scope: !1681)
!1742 = !DILocation(line: 712, column: 7, scope: !1681)
!1743 = !DILocation(line: 713, column: 14, scope: !1681)
!1744 = !DILocation(line: 713, column: 35, scope: !1681)
!1745 = !DILocation(line: 713, column: 6, scope: !1681)
!1746 = !DILocation(line: 713, column: 4, scope: !1681)
!1747 = !DILocation(line: 714, column: 2, scope: !1681)
!1748 = !DILocation(line: 714, column: 2, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 714, column: 2)
!1750 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 714, column: 2)
!1751 = !DILocation(line: 714, column: 2, scope: !1750)
!1752 = !DILocation(line: 714, column: 2, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 714, column: 2)
!1754 = !DILocation(line: 714, column: 2, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 714, column: 2)
!1756 = !DILocation(line: 714, column: 2, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 714, column: 2)
!1758 = !{i64 2156363843, i64 2156363872, i64 2156363918, i64 2156363976, i64 2156364030, i64 2156364084, i64 2156364139, i64 2156364170}
!1759 = !DILocation(line: 715, column: 24, scope: !1681)
!1760 = !DILocation(line: 715, column: 22, scope: !1681)
!1761 = !DILocation(line: 716, column: 1, scope: !1681)
!1762 = !DISubprogram(name: "kmemdup", scope: !1763, file: !1763, line: 219, type: !1764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1763 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!37, !1059, !1051, !39}
!1766 = distinct !DISubprogram(name: "e820__memory_setup_extended", scope: !3, file: !3, line: 724, type: !1767, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !61, !733}
!1769 = !{!1770, !1771, !1772, !1773, !1774}
!1770 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !1766, file: !3, line: 724, type: !61)
!1771 = !DILocalVariable(name: "data_len", arg: 2, scope: !1766, file: !3, line: 724, type: !733)
!1772 = !DILocalVariable(name: "entries", scope: !1766, file: !3, line: 726, type: !38)
!1773 = !DILocalVariable(name: "extmap", scope: !1766, file: !3, line: 727, type: !41)
!1774 = !DILocalVariable(name: "sdata", scope: !1766, file: !3, line: 728, type: !1775)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_data", file: !43, line: 53, size: 128, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1776, file: !43, line: 54, baseType: !46, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1776, file: !43, line: 55, baseType: !51, size: 32, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1776, file: !43, line: 56, baseType: !51, size: 32, offset: 96)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1776, file: !43, line: 57, baseType: !1782, offset: 128)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1783, elements: !1785)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !47, line: 21, baseType: !1784)
!1784 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1785 = !{!1786}
!1786 = !DISubrange(count: -1)
!1787 = !DILocation(line: 724, column: 45, scope: !1766)
!1788 = !DILocation(line: 724, column: 60, scope: !1766)
!1789 = !DILocation(line: 726, column: 2, scope: !1766)
!1790 = !DILocation(line: 726, column: 6, scope: !1766)
!1791 = !DILocation(line: 727, column: 2, scope: !1766)
!1792 = !DILocation(line: 727, column: 26, scope: !1766)
!1793 = !DILocation(line: 728, column: 2, scope: !1766)
!1794 = !DILocation(line: 728, column: 21, scope: !1766)
!1795 = !DILocation(line: 730, column: 25, scope: !1766)
!1796 = !DILocation(line: 730, column: 36, scope: !1766)
!1797 = !DILocation(line: 730, column: 10, scope: !1766)
!1798 = !DILocation(line: 730, column: 8, scope: !1766)
!1799 = !DILocation(line: 731, column: 12, scope: !1766)
!1800 = !DILocation(line: 731, column: 19, scope: !1766)
!1801 = !DILocation(line: 731, column: 23, scope: !1766)
!1802 = !DILocation(line: 731, column: 10, scope: !1766)
!1803 = !DILocation(line: 732, column: 38, scope: !1766)
!1804 = !DILocation(line: 732, column: 45, scope: !1766)
!1805 = !DILocation(line: 732, column: 37, scope: !1766)
!1806 = !DILocation(line: 732, column: 9, scope: !1766)
!1807 = !DILocation(line: 734, column: 22, scope: !1766)
!1808 = !DILocation(line: 734, column: 30, scope: !1766)
!1809 = !DILocation(line: 734, column: 2, scope: !1766)
!1810 = !DILocation(line: 735, column: 21, scope: !1766)
!1811 = !DILocation(line: 735, column: 2, scope: !1766)
!1812 = !DILocation(line: 737, column: 9, scope: !1766)
!1813 = !DILocation(line: 737, column: 27, scope: !1766)
!1814 = !DILocation(line: 737, column: 2, scope: !1766)
!1815 = !DILocation(line: 738, column: 9, scope: !1766)
!1816 = !DILocation(line: 738, column: 30, scope: !1766)
!1817 = !DILocation(line: 738, column: 2, scope: !1766)
!1818 = !DILocation(line: 740, column: 17, scope: !1766)
!1819 = !DILocation(line: 740, column: 24, scope: !1766)
!1820 = !DILocation(line: 740, column: 2, scope: !1766)
!1821 = !DILocation(line: 741, column: 2, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 741, column: 2)
!1823 = !DILocation(line: 741, column: 2, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 741, column: 2)
!1825 = !DILocation(line: 742, column: 2, scope: !1766)
!1826 = !DILocation(line: 743, column: 1, scope: !1766)
!1827 = !DISubprogram(name: "early_memremap", scope: !1828, file: !1828, line: 13, type: !1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1828 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!37, !59, !88}
!1831 = distinct !DISubprogram(name: "__append_e820_table", scope: !3, file: !3, line: 422, type: !1832, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1834)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!38, !41, !733}
!1834 = !{!1835, !1836, !1837, !1838, !1840, !1841, !1842}
!1835 = !DILocalVariable(name: "entries", arg: 1, scope: !1831, file: !3, line: 422, type: !41)
!1836 = !DILocalVariable(name: "nr_entries", arg: 2, scope: !1831, file: !3, line: 422, type: !733)
!1837 = !DILocalVariable(name: "entry", scope: !1831, file: !3, line: 424, type: !41)
!1838 = !DILocalVariable(name: "start", scope: !1839, file: !3, line: 427, type: !61)
!1839 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 426, column: 21)
!1840 = !DILocalVariable(name: "size", scope: !1839, file: !3, line: 428, type: !61)
!1841 = !DILocalVariable(name: "end", scope: !1839, file: !3, line: 429, type: !61)
!1842 = !DILocalVariable(name: "type", scope: !1839, file: !3, line: 430, type: !733)
!1843 = !DILocation(line: 422, column: 63, scope: !1831)
!1844 = !DILocation(line: 422, column: 76, scope: !1831)
!1845 = !DILocation(line: 424, column: 2, scope: !1831)
!1846 = !DILocation(line: 424, column: 26, scope: !1831)
!1847 = !DILocation(line: 424, column: 34, scope: !1831)
!1848 = !DILocation(line: 426, column: 2, scope: !1831)
!1849 = !DILocation(line: 426, column: 9, scope: !1831)
!1850 = !DILocation(line: 427, column: 3, scope: !1839)
!1851 = !DILocation(line: 427, column: 7, scope: !1839)
!1852 = !DILocation(line: 427, column: 15, scope: !1839)
!1853 = !DILocation(line: 427, column: 22, scope: !1839)
!1854 = !DILocation(line: 428, column: 3, scope: !1839)
!1855 = !DILocation(line: 428, column: 7, scope: !1839)
!1856 = !DILocation(line: 428, column: 14, scope: !1839)
!1857 = !DILocation(line: 428, column: 21, scope: !1839)
!1858 = !DILocation(line: 429, column: 3, scope: !1839)
!1859 = !DILocation(line: 429, column: 7, scope: !1839)
!1860 = !DILocation(line: 429, column: 13, scope: !1839)
!1861 = !DILocation(line: 429, column: 21, scope: !1839)
!1862 = !DILocation(line: 429, column: 19, scope: !1839)
!1863 = !DILocation(line: 429, column: 26, scope: !1839)
!1864 = !DILocation(line: 430, column: 3, scope: !1839)
!1865 = !DILocation(line: 430, column: 7, scope: !1839)
!1866 = !DILocation(line: 430, column: 14, scope: !1839)
!1867 = !DILocation(line: 430, column: 21, scope: !1839)
!1868 = !DILocation(line: 433, column: 7, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 433, column: 7)
!1870 = !DILocation(line: 433, column: 15, scope: !1869)
!1871 = !DILocation(line: 433, column: 13, scope: !1869)
!1872 = !DILocation(line: 433, column: 19, scope: !1869)
!1873 = !DILocation(line: 433, column: 22, scope: !1869)
!1874 = !DILocation(line: 433, column: 7, scope: !1839)
!1875 = !DILocation(line: 434, column: 4, scope: !1869)
!1876 = !DILocation(line: 436, column: 19, scope: !1839)
!1877 = !DILocation(line: 436, column: 26, scope: !1839)
!1878 = !DILocation(line: 436, column: 32, scope: !1839)
!1879 = !DILocation(line: 436, column: 3, scope: !1839)
!1880 = !DILocation(line: 438, column: 8, scope: !1839)
!1881 = !DILocation(line: 439, column: 13, scope: !1839)
!1882 = !DILocation(line: 440, column: 2, scope: !1831)
!1883 = distinct !{!1883, !1848, !1882, !438, !439}
!1884 = !DILocation(line: 441, column: 2, scope: !1831)
!1885 = !DILocation(line: 442, column: 1, scope: !1831)
!1886 = !DISubprogram(name: "early_memunmap", scope: !1828, file: !1828, line: 20, type: !1887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !37, !88}
!1889 = distinct !DISubprogram(name: "e820__register_nosave_regions", scope: !3, file: !3, line: 753, type: !1890, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !88}
!1892 = !{!1893, !1894, !1895, !1896}
!1893 = !DILocalVariable(name: "limit_pfn", arg: 1, scope: !1889, file: !3, line: 753, type: !88)
!1894 = !DILocalVariable(name: "i", scope: !1889, file: !3, line: 755, type: !38)
!1895 = !DILocalVariable(name: "pfn", scope: !1889, file: !3, line: 756, type: !88)
!1896 = !DILocalVariable(name: "entry", scope: !1897, file: !3, line: 759, type: !239)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 758, column: 47)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 758, column: 2)
!1899 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 758, column: 2)
!1900 = !DILocation(line: 753, column: 57, scope: !1889)
!1901 = !DILocation(line: 755, column: 2, scope: !1889)
!1902 = !DILocation(line: 755, column: 6, scope: !1889)
!1903 = !DILocation(line: 756, column: 2, scope: !1889)
!1904 = !DILocation(line: 756, column: 16, scope: !1889)
!1905 = !DILocation(line: 758, column: 9, scope: !1899)
!1906 = !DILocation(line: 758, column: 7, scope: !1899)
!1907 = !DILocation(line: 758, column: 14, scope: !1898)
!1908 = !DILocation(line: 758, column: 18, scope: !1898)
!1909 = !DILocation(line: 758, column: 30, scope: !1898)
!1910 = !DILocation(line: 758, column: 16, scope: !1898)
!1911 = !DILocation(line: 758, column: 2, scope: !1899)
!1912 = !DILocation(line: 759, column: 3, scope: !1897)
!1913 = !DILocation(line: 759, column: 22, scope: !1897)
!1914 = !DILocation(line: 759, column: 31, scope: !1897)
!1915 = !DILocation(line: 759, column: 43, scope: !1897)
!1916 = !DILocation(line: 759, column: 51, scope: !1897)
!1917 = !DILocation(line: 761, column: 7, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 761, column: 7)
!1919 = !DILocation(line: 761, column: 13, scope: !1918)
!1920 = !DILocation(line: 761, column: 11, scope: !1918)
!1921 = !DILocation(line: 761, column: 7, scope: !1897)
!1922 = !DILocation(line: 762, column: 27, scope: !1918)
!1923 = !DILocation(line: 762, column: 32, scope: !1918)
!1924 = !DILocation(line: 762, column: 4, scope: !1918)
!1925 = !DILocation(line: 764, column: 9, scope: !1897)
!1926 = !DILocation(line: 764, column: 7, scope: !1897)
!1927 = !DILocation(line: 766, column: 7, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 766, column: 7)
!1929 = !DILocation(line: 766, column: 14, scope: !1928)
!1930 = !DILocation(line: 766, column: 19, scope: !1928)
!1931 = !DILocation(line: 766, column: 36, scope: !1928)
!1932 = !DILocation(line: 766, column: 39, scope: !1928)
!1933 = !DILocation(line: 766, column: 46, scope: !1928)
!1934 = !DILocation(line: 766, column: 51, scope: !1928)
!1935 = !DILocation(line: 766, column: 7, scope: !1897)
!1936 = !DILocation(line: 767, column: 27, scope: !1928)
!1937 = !DILocation(line: 767, column: 48, scope: !1928)
!1938 = !DILocation(line: 767, column: 4, scope: !1928)
!1939 = !DILocation(line: 769, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 769, column: 7)
!1941 = !DILocation(line: 769, column: 14, scope: !1940)
!1942 = !DILocation(line: 769, column: 11, scope: !1940)
!1943 = !DILocation(line: 769, column: 7, scope: !1897)
!1944 = !DILocation(line: 770, column: 4, scope: !1940)
!1945 = !DILocation(line: 771, column: 2, scope: !1898)
!1946 = !DILocation(line: 771, column: 2, scope: !1897)
!1947 = !DILocation(line: 758, column: 43, scope: !1898)
!1948 = !DILocation(line: 758, column: 2, scope: !1898)
!1949 = distinct !{!1949, !1911, !1950, !438, !439}
!1950 = !DILocation(line: 771, column: 2, scope: !1899)
!1951 = !DILocation(line: 772, column: 1, scope: !1889)
!1952 = !DISubprogram(name: "register_nosave_region", scope: !1953, file: !1953, line: 437, type: !1954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1953 = !DIFile(filename: "./include/linux/suspend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bdf8a52b9a460775d8f457b5a21f557")
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !88, !88}
!1956 = distinct !DISubprogram(name: "__initstub__kmod_e820__351_792_e820__register_nvs_regions1", scope: !3, file: !3, line: 792, type: !1957, scopeLine: 792, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!38}
!1959 = !DILocation(line: 792, column: 1, scope: !1956)
!1960 = distinct !DISubprogram(name: "e820__register_nvs_regions", scope: !3, file: !3, line: 779, type: !1957, scopeLine: 780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1961)
!1961 = !{!1962, !1963}
!1962 = !DILocalVariable(name: "i", scope: !1960, file: !3, line: 781, type: !38)
!1963 = !DILocalVariable(name: "entry", scope: !1964, file: !3, line: 784, type: !239)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 783, column: 47)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 783, column: 2)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 783, column: 2)
!1967 = !DILocation(line: 781, column: 2, scope: !1960)
!1968 = !DILocation(line: 781, column: 6, scope: !1960)
!1969 = !DILocation(line: 783, column: 9, scope: !1966)
!1970 = !DILocation(line: 783, column: 7, scope: !1966)
!1971 = !DILocation(line: 783, column: 14, scope: !1965)
!1972 = !DILocation(line: 783, column: 18, scope: !1965)
!1973 = !DILocation(line: 783, column: 30, scope: !1965)
!1974 = !DILocation(line: 783, column: 16, scope: !1965)
!1975 = !DILocation(line: 783, column: 2, scope: !1966)
!1976 = !DILocation(line: 784, column: 3, scope: !1964)
!1977 = !DILocation(line: 784, column: 22, scope: !1964)
!1978 = !DILocation(line: 784, column: 31, scope: !1964)
!1979 = !DILocation(line: 784, column: 43, scope: !1964)
!1980 = !DILocation(line: 784, column: 51, scope: !1964)
!1981 = !DILocation(line: 786, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 786, column: 7)
!1983 = !DILocation(line: 786, column: 14, scope: !1982)
!1984 = !DILocation(line: 786, column: 19, scope: !1982)
!1985 = !DILocation(line: 786, column: 7, scope: !1964)
!1986 = !DILocation(line: 787, column: 22, scope: !1982)
!1987 = !DILocation(line: 787, column: 29, scope: !1982)
!1988 = !DILocation(line: 787, column: 35, scope: !1982)
!1989 = !DILocation(line: 787, column: 42, scope: !1982)
!1990 = !DILocation(line: 787, column: 4, scope: !1982)
!1991 = !DILocation(line: 788, column: 2, scope: !1965)
!1992 = !DILocation(line: 788, column: 2, scope: !1964)
!1993 = !DILocation(line: 783, column: 43, scope: !1965)
!1994 = !DILocation(line: 783, column: 2, scope: !1965)
!1995 = distinct !{!1995, !1975, !1996, !438, !439}
!1996 = !DILocation(line: 788, column: 2, scope: !1966)
!1997 = !DILocation(line: 791, column: 1, scope: !1960)
!1998 = !DILocation(line: 790, column: 2, scope: !1960)
!1999 = distinct !DISubprogram(name: "e820__memblock_alloc_reserved", scope: !3, file: !3, line: 803, type: !2000, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2002)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!61, !61, !61}
!2002 = !{!2003, !2004, !2005}
!2003 = !DILocalVariable(name: "size", arg: 1, scope: !1999, file: !3, line: 803, type: !61)
!2004 = !DILocalVariable(name: "align", arg: 2, scope: !1999, file: !3, line: 803, type: !61)
!2005 = !DILocalVariable(name: "addr", scope: !1999, file: !3, line: 805, type: !61)
!2006 = !DILocation(line: 803, column: 46, scope: !1999)
!2007 = !DILocation(line: 803, column: 56, scope: !1999)
!2008 = !DILocation(line: 805, column: 2, scope: !1999)
!2009 = !DILocation(line: 805, column: 6, scope: !1999)
!2010 = !DILocation(line: 807, column: 29, scope: !1999)
!2011 = !DILocation(line: 807, column: 35, scope: !1999)
!2012 = !DILocation(line: 807, column: 9, scope: !1999)
!2013 = !DILocation(line: 807, column: 7, scope: !1999)
!2014 = !DILocation(line: 808, column: 6, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 808, column: 6)
!2016 = !DILocation(line: 808, column: 6, scope: !1999)
!2017 = !DILocation(line: 809, column: 28, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 808, column: 12)
!2019 = !DILocation(line: 809, column: 34, scope: !2018)
!2020 = !DILocation(line: 809, column: 3, scope: !2018)
!2021 = !DILocation(line: 810, column: 3, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 810, column: 3)
!2023 = !DILocation(line: 810, column: 3, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 810, column: 3)
!2025 = !DILocation(line: 811, column: 3, scope: !2018)
!2026 = !DILocation(line: 812, column: 2, scope: !2018)
!2027 = !DILocation(line: 814, column: 9, scope: !1999)
!2028 = !DILocation(line: 815, column: 1, scope: !1999)
!2029 = !DILocation(line: 814, column: 2, scope: !1999)
!2030 = distinct !DISubprogram(name: "memblock_phys_alloc", scope: !2031, file: !2031, line: 409, type: !2032, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2034)
!2031 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!60, !60, !60}
!2034 = !{!2035, !2036}
!2035 = !DILocalVariable(name: "size", arg: 1, scope: !2030, file: !2031, line: 409, type: !60)
!2036 = !DILocalVariable(name: "align", arg: 2, scope: !2030, file: !2031, line: 410, type: !60)
!2037 = !DILocation(line: 409, column: 68, scope: !2030)
!2038 = !DILocation(line: 410, column: 26, scope: !2030)
!2039 = !DILocation(line: 412, column: 35, scope: !2030)
!2040 = !DILocation(line: 412, column: 41, scope: !2030)
!2041 = !DILocation(line: 412, column: 9, scope: !2030)
!2042 = !DILocation(line: 412, column: 2, scope: !2030)
!2043 = distinct !DISubprogram(name: "e820__range_update_kexec", scope: !3, file: !3, line: 535, type: !1138, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2044 = !{!2045, !2046, !2047, !2048}
!2045 = !DILocalVariable(name: "start", arg: 1, scope: !2043, file: !3, line: 535, type: !61)
!2046 = !DILocalVariable(name: "size", arg: 2, scope: !2043, file: !3, line: 535, type: !61)
!2047 = !DILocalVariable(name: "old_type", arg: 3, scope: !2043, file: !3, line: 535, type: !5)
!2048 = !DILocalVariable(name: "new_type", arg: 4, scope: !2043, file: !3, line: 535, type: !5)
!2049 = !DILocation(line: 535, column: 48, scope: !2043)
!2050 = !DILocation(line: 535, column: 59, scope: !2043)
!2051 = !DILocation(line: 535, column: 80, scope: !2043)
!2052 = !DILocation(line: 535, column: 106, scope: !2043)
!2053 = !DILocation(line: 537, column: 30, scope: !2043)
!2054 = !DILocation(line: 537, column: 48, scope: !2043)
!2055 = !DILocation(line: 537, column: 55, scope: !2043)
!2056 = !DILocation(line: 537, column: 61, scope: !2043)
!2057 = !DILocation(line: 537, column: 71, scope: !2043)
!2058 = !DILocation(line: 537, column: 9, scope: !2043)
!2059 = !DILocation(line: 537, column: 2, scope: !2043)
!2060 = distinct !DISubprogram(name: "e820__update_table_kexec", scope: !3, file: !3, line: 611, type: !1549, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2061 = !DILocation(line: 613, column: 21, scope: !2060)
!2062 = !DILocation(line: 613, column: 2, scope: !2060)
!2063 = !DILocation(line: 614, column: 1, scope: !2060)
!2064 = distinct !DISubprogram(name: "e820__end_of_ram_pfn", scope: !3, file: !3, line: 865, type: !2065, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!88}
!2067 = !DILocation(line: 867, column: 22, scope: !2064)
!2068 = !DILocation(line: 867, column: 9, scope: !2064)
!2069 = !DILocation(line: 867, column: 2, scope: !2064)
!2070 = distinct !DISubprogram(name: "e820_end_pfn", scope: !3, file: !3, line: 830, type: !2071, scopeLine: 831, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2073)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!88, !88, !5}
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079, !2083, !2084}
!2074 = !DILocalVariable(name: "limit_pfn", arg: 1, scope: !2070, file: !3, line: 830, type: !88)
!2075 = !DILocalVariable(name: "type", arg: 2, scope: !2070, file: !3, line: 830, type: !5)
!2076 = !DILocalVariable(name: "i", scope: !2070, file: !3, line: 832, type: !38)
!2077 = !DILocalVariable(name: "last_pfn", scope: !2070, file: !3, line: 833, type: !88)
!2078 = !DILocalVariable(name: "max_arch_pfn", scope: !2070, file: !3, line: 834, type: !88)
!2079 = !DILocalVariable(name: "entry", scope: !2080, file: !3, line: 837, type: !239)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 836, column: 47)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 836, column: 2)
!2082 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 836, column: 2)
!2083 = !DILocalVariable(name: "start_pfn", scope: !2080, file: !3, line: 838, type: !88)
!2084 = !DILocalVariable(name: "end_pfn", scope: !2080, file: !3, line: 839, type: !88)
!2085 = !DILocation(line: 830, column: 56, scope: !2070)
!2086 = !DILocation(line: 830, column: 82, scope: !2070)
!2087 = !DILocation(line: 832, column: 2, scope: !2070)
!2088 = !DILocation(line: 832, column: 6, scope: !2070)
!2089 = !DILocation(line: 833, column: 2, scope: !2070)
!2090 = !DILocation(line: 833, column: 16, scope: !2070)
!2091 = !DILocation(line: 834, column: 2, scope: !2070)
!2092 = !DILocation(line: 834, column: 16, scope: !2070)
!2093 = !DILocation(line: 834, column: 31, scope: !2070)
!2094 = !DILocation(line: 836, column: 9, scope: !2082)
!2095 = !DILocation(line: 836, column: 7, scope: !2082)
!2096 = !DILocation(line: 836, column: 14, scope: !2081)
!2097 = !DILocation(line: 836, column: 18, scope: !2081)
!2098 = !DILocation(line: 836, column: 30, scope: !2081)
!2099 = !DILocation(line: 836, column: 16, scope: !2081)
!2100 = !DILocation(line: 836, column: 2, scope: !2082)
!2101 = !DILocation(line: 837, column: 3, scope: !2080)
!2102 = !DILocation(line: 837, column: 22, scope: !2080)
!2103 = !DILocation(line: 837, column: 31, scope: !2080)
!2104 = !DILocation(line: 837, column: 43, scope: !2080)
!2105 = !DILocation(line: 837, column: 51, scope: !2080)
!2106 = !DILocation(line: 838, column: 3, scope: !2080)
!2107 = !DILocation(line: 838, column: 17, scope: !2080)
!2108 = !DILocation(line: 839, column: 3, scope: !2080)
!2109 = !DILocation(line: 839, column: 17, scope: !2080)
!2110 = !DILocation(line: 841, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 841, column: 7)
!2112 = !DILocation(line: 841, column: 14, scope: !2111)
!2113 = !DILocation(line: 841, column: 22, scope: !2111)
!2114 = !DILocation(line: 841, column: 19, scope: !2111)
!2115 = !DILocation(line: 841, column: 7, scope: !2080)
!2116 = !DILocation(line: 842, column: 4, scope: !2111)
!2117 = !DILocation(line: 844, column: 15, scope: !2080)
!2118 = !DILocation(line: 844, column: 22, scope: !2080)
!2119 = !DILocation(line: 844, column: 27, scope: !2080)
!2120 = !DILocation(line: 844, column: 13, scope: !2080)
!2121 = !DILocation(line: 845, column: 14, scope: !2080)
!2122 = !DILocation(line: 845, column: 21, scope: !2080)
!2123 = !DILocation(line: 845, column: 28, scope: !2080)
!2124 = !DILocation(line: 845, column: 35, scope: !2080)
!2125 = !DILocation(line: 845, column: 26, scope: !2080)
!2126 = !DILocation(line: 845, column: 41, scope: !2080)
!2127 = !DILocation(line: 845, column: 11, scope: !2080)
!2128 = !DILocation(line: 847, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 847, column: 7)
!2130 = !DILocation(line: 847, column: 20, scope: !2129)
!2131 = !DILocation(line: 847, column: 17, scope: !2129)
!2132 = !DILocation(line: 847, column: 7, scope: !2080)
!2133 = !DILocation(line: 848, column: 4, scope: !2129)
!2134 = !DILocation(line: 849, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 849, column: 7)
!2136 = !DILocation(line: 849, column: 17, scope: !2135)
!2137 = !DILocation(line: 849, column: 15, scope: !2135)
!2138 = !DILocation(line: 849, column: 7, scope: !2080)
!2139 = !DILocation(line: 850, column: 15, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 849, column: 28)
!2141 = !DILocation(line: 850, column: 13, scope: !2140)
!2142 = !DILocation(line: 851, column: 4, scope: !2140)
!2143 = !DILocation(line: 853, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 853, column: 7)
!2145 = !DILocation(line: 853, column: 17, scope: !2144)
!2146 = !DILocation(line: 853, column: 15, scope: !2144)
!2147 = !DILocation(line: 853, column: 7, scope: !2080)
!2148 = !DILocation(line: 854, column: 15, scope: !2144)
!2149 = !DILocation(line: 854, column: 13, scope: !2144)
!2150 = !DILocation(line: 854, column: 4, scope: !2144)
!2151 = !DILocation(line: 855, column: 2, scope: !2081)
!2152 = !DILocation(line: 855, column: 2, scope: !2080)
!2153 = !DILocation(line: 836, column: 43, scope: !2081)
!2154 = !DILocation(line: 836, column: 2, scope: !2081)
!2155 = distinct !{!2155, !2100, !2156, !438, !439}
!2156 = !DILocation(line: 855, column: 2, scope: !2082)
!2157 = !DILocation(line: 857, column: 6, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 857, column: 6)
!2159 = !DILocation(line: 857, column: 17, scope: !2158)
!2160 = !DILocation(line: 857, column: 15, scope: !2158)
!2161 = !DILocation(line: 857, column: 6, scope: !2070)
!2162 = !DILocation(line: 858, column: 14, scope: !2158)
!2163 = !DILocation(line: 858, column: 12, scope: !2158)
!2164 = !DILocation(line: 858, column: 3, scope: !2158)
!2165 = !DILocation(line: 860, column: 2, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 860, column: 2)
!2167 = !DILocation(line: 860, column: 2, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 860, column: 2)
!2169 = !DILocation(line: 862, column: 9, scope: !2070)
!2170 = !DILocation(line: 863, column: 1, scope: !2070)
!2171 = !DILocation(line: 862, column: 2, scope: !2070)
!2172 = distinct !DISubprogram(name: "_static_cpu_has", scope: !2173, file: !2173, line: 173, type: !2174, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2173 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!362, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !62, line: 19, baseType: !2177)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !47, line: 24, baseType: !2178)
!2178 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2179 = !{!2180, !2181, !2182}
!2180 = !DILocalVariable(name: "bit", arg: 1, scope: !2172, file: !2173, line: 173, type: !2176)
!2181 = !DILabel(scope: !2172, name: "t_yes", file: !2173, line: 187)
!2182 = !DILabel(scope: !2172, name: "t_no", file: !2173, line: 189)
!2183 = !DILocation(line: 173, column: 49, scope: !2172)
!2184 = !DILocation(line: 183, column: 24, scope: !2172)
!2185 = !DILocation(line: 184, column: 30, scope: !2172)
!2186 = !DILocation(line: 184, column: 34, scope: !2172)
!2187 = !DILocation(line: 184, column: 26, scope: !2172)
!2188 = !DILocation(line: 185, column: 70, scope: !2172)
!2189 = !DILocation(line: 185, column: 74, scope: !2172)
!2190 = !DILocation(line: 185, column: 25, scope: !2172)
!2191 = !DILocation(line: 175, column: 2, scope: !2172)
!2192 = !{i64 2149641260, i64 2149641293, i64 2149641299, i64 2149641315, i64 2149641334, i64 2149641365, i64 2149642318, i64 2149640907, i64 2149642324, i64 2149642372, i64 2149642436, i64 2149642500, i64 2149642557, i64 2149642764, i64 2149642812, i64 2149642876, i64 2149642940, i64 2149642997, i64 2149641025, i64 2149641050, i64 2149643207, i64 2149643335, i64 2149643268, i64 2149643349, i64 2149643363, i64 2149643479, i64 2149643424, i64 2149643493, i64 2149641184, i64 1768005, i64 1768045, i64 1768054, i64 1768104, i64 1768125, i64 1768145}
!2193 = !DILocation(line: 187, column: 1, scope: !2172)
!2194 = !DILocation(line: 188, column: 2, scope: !2172)
!2195 = !DILocation(line: 189, column: 1, scope: !2172)
!2196 = !DILocation(line: 190, column: 2, scope: !2172)
!2197 = !DILocation(line: 191, column: 1, scope: !2172)
!2198 = distinct !DISubprogram(name: "e820__end_of_low_ram_pfn", scope: !3, file: !3, line: 870, type: !2065, scopeLine: 871, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2199 = !DILocation(line: 872, column: 9, scope: !2198)
!2200 = !DILocation(line: 872, column: 2, scope: !2198)
!2201 = distinct !DISubprogram(name: "parse_memopt", scope: !3, file: !3, line: 884, type: !159, scopeLine: 885, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2202)
!2202 = !{!2203, !2204}
!2203 = !DILocalVariable(name: "p", arg: 1, scope: !2201, file: !3, line: 884, type: !161)
!2204 = !DILocalVariable(name: "mem_size", scope: !2201, file: !3, line: 886, type: !61)
!2205 = !DILocation(line: 884, column: 38, scope: !2201)
!2206 = !DILocation(line: 886, column: 2, scope: !2201)
!2207 = !DILocation(line: 886, column: 6, scope: !2201)
!2208 = !DILocation(line: 888, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 888, column: 6)
!2210 = !DILocation(line: 888, column: 6, scope: !2201)
!2211 = !DILocation(line: 889, column: 3, scope: !2209)
!2212 = !DILocation(line: 891, column: 14, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 891, column: 6)
!2214 = !DILocation(line: 891, column: 7, scope: !2213)
!2215 = !DILocation(line: 891, column: 6, scope: !2201)
!2216 = !DILocation(line: 896, column: 3, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 896, column: 3)
!2218 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 891, column: 31)
!2219 = !DILocation(line: 896, column: 3, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 896, column: 3)
!2221 = !DILocation(line: 897, column: 3, scope: !2218)
!2222 = !DILocation(line: 901, column: 10, scope: !2201)
!2223 = !DILocation(line: 902, column: 22, scope: !2201)
!2224 = !DILocation(line: 902, column: 13, scope: !2201)
!2225 = !DILocation(line: 902, column: 11, scope: !2201)
!2226 = !DILocation(line: 905, column: 6, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 905, column: 6)
!2228 = !DILocation(line: 905, column: 15, scope: !2227)
!2229 = !DILocation(line: 905, column: 6, scope: !2201)
!2230 = !DILocation(line: 906, column: 3, scope: !2227)
!2231 = !DILocation(line: 908, column: 21, scope: !2201)
!2232 = !DILocation(line: 908, column: 44, scope: !2201)
!2233 = !DILocation(line: 908, column: 42, scope: !2201)
!2234 = !DILocation(line: 908, column: 2, scope: !2201)
!2235 = !DILocation(line: 914, column: 2, scope: !2201)
!2236 = !DILocation(line: 915, column: 1, scope: !2201)
!2237 = distinct !DISubprogram(name: "parse_memmap_opt", scope: !3, file: !3, line: 975, type: !159, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2238)
!2238 = !{!2239, !2240}
!2239 = !DILocalVariable(name: "str", arg: 1, scope: !2237, file: !3, line: 975, type: !161)
!2240 = !DILocalVariable(name: "k", scope: !2241, file: !3, line: 978, type: !161)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 977, column: 14)
!2242 = !DILocation(line: 975, column: 42, scope: !2237)
!2243 = !DILocation(line: 977, column: 2, scope: !2237)
!2244 = !DILocation(line: 977, column: 9, scope: !2237)
!2245 = !DILocation(line: 978, column: 3, scope: !2241)
!2246 = !DILocation(line: 978, column: 9, scope: !2241)
!2247 = !DILocation(line: 978, column: 20, scope: !2241)
!2248 = !DILocation(line: 978, column: 13, scope: !2241)
!2249 = !DILocation(line: 980, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 980, column: 7)
!2251 = !DILocation(line: 980, column: 7, scope: !2241)
!2252 = !DILocation(line: 981, column: 6, scope: !2250)
!2253 = !DILocation(line: 981, column: 9, scope: !2250)
!2254 = !DILocation(line: 981, column: 4, scope: !2250)
!2255 = !DILocation(line: 983, column: 20, scope: !2241)
!2256 = !DILocation(line: 983, column: 3, scope: !2241)
!2257 = !DILocation(line: 984, column: 9, scope: !2241)
!2258 = !DILocation(line: 984, column: 7, scope: !2241)
!2259 = !DILocation(line: 985, column: 2, scope: !2237)
!2260 = distinct !{!2260, !2243, !2259, !438, !439}
!2261 = !DILocation(line: 987, column: 2, scope: !2237)
!2262 = distinct !DISubprogram(name: "e820__reserve_setup_data", scope: !3, file: !3, line: 996, type: !1549, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2263)
!2263 = !{!2264, !2265, !2266, !2267, !2268}
!2264 = !DILocalVariable(name: "indirect", scope: !2262, file: !3, line: 998, type: !52)
!2265 = !DILocalVariable(name: "data", scope: !2262, file: !3, line: 999, type: !1775)
!2266 = !DILocalVariable(name: "pa_data", scope: !2262, file: !3, line: 1000, type: !61)
!2267 = !DILocalVariable(name: "pa_next", scope: !2262, file: !3, line: 1000, type: !61)
!2268 = !DILocalVariable(name: "len", scope: !2262, file: !3, line: 1001, type: !733)
!2269 = !DILocation(line: 998, column: 2, scope: !2262)
!2270 = !DILocation(line: 998, column: 25, scope: !2262)
!2271 = !DILocation(line: 999, column: 2, scope: !2262)
!2272 = !DILocation(line: 999, column: 21, scope: !2262)
!2273 = !DILocation(line: 1000, column: 2, scope: !2262)
!2274 = !DILocation(line: 1000, column: 6, scope: !2262)
!2275 = !DILocation(line: 1000, column: 15, scope: !2262)
!2276 = !DILocation(line: 1001, column: 2, scope: !2262)
!2277 = !DILocation(line: 1001, column: 6, scope: !2262)
!2278 = !DILocation(line: 1003, column: 28, scope: !2262)
!2279 = !DILocation(line: 1003, column: 10, scope: !2262)
!2280 = !DILocation(line: 1004, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1004, column: 6)
!2282 = !DILocation(line: 1004, column: 6, scope: !2262)
!2283 = !DILocation(line: 1005, column: 3, scope: !2281)
!2284 = !DILocation(line: 1007, column: 2, scope: !2262)
!2285 = !DILocation(line: 1007, column: 9, scope: !2262)
!2286 = !DILocation(line: 1008, column: 25, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1007, column: 18)
!2288 = !DILocation(line: 1008, column: 10, scope: !2287)
!2289 = !DILocation(line: 1008, column: 8, scope: !2287)
!2290 = !DILocation(line: 1009, column: 8, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 1009, column: 7)
!2292 = !DILocation(line: 1009, column: 7, scope: !2287)
!2293 = !DILocation(line: 1010, column: 4, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 1010, column: 4)
!2295 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1009, column: 14)
!2296 = !DILocation(line: 1010, column: 4, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 1010, column: 4)
!2298 = !DILocation(line: 1011, column: 4, scope: !2295)
!2299 = !DILocation(line: 1014, column: 7, scope: !2287)
!2300 = !DILocation(line: 1015, column: 13, scope: !2287)
!2301 = !DILocation(line: 1015, column: 19, scope: !2287)
!2302 = !DILocation(line: 1015, column: 11, scope: !2287)
!2303 = !DILocation(line: 1017, column: 22, scope: !2287)
!2304 = !DILocation(line: 1017, column: 45, scope: !2287)
!2305 = !DILocation(line: 1017, column: 51, scope: !2287)
!2306 = !DILocation(line: 1017, column: 44, scope: !2287)
!2307 = !DILocation(line: 1017, column: 3, scope: !2287)
!2308 = !DILocation(line: 1023, column: 7, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 1023, column: 7)
!2310 = !DILocation(line: 1023, column: 13, scope: !2309)
!2311 = !DILocation(line: 1023, column: 18, scope: !2309)
!2312 = !DILocation(line: 1023, column: 31, scope: !2309)
!2313 = !DILocation(line: 1024, column: 7, scope: !2309)
!2314 = !DILocation(line: 1024, column: 13, scope: !2309)
!2315 = !DILocation(line: 1024, column: 18, scope: !2309)
!2316 = !DILocation(line: 1024, column: 31, scope: !2309)
!2317 = !DILocation(line: 1025, column: 7, scope: !2309)
!2318 = !DILocation(line: 1025, column: 13, scope: !2309)
!2319 = !DILocation(line: 1025, column: 18, scope: !2309)
!2320 = !DILocation(line: 1023, column: 7, scope: !2287)
!2321 = !DILocation(line: 1026, column: 29, scope: !2309)
!2322 = !DILocation(line: 1027, column: 24, scope: !2309)
!2323 = !DILocation(line: 1027, column: 30, scope: !2309)
!2324 = !DILocation(line: 1027, column: 22, scope: !2309)
!2325 = !DILocation(line: 1026, column: 4, scope: !2309)
!2326 = !DILocation(line: 1030, column: 7, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 1030, column: 7)
!2328 = !DILocation(line: 1030, column: 13, scope: !2327)
!2329 = !DILocation(line: 1030, column: 18, scope: !2327)
!2330 = !DILocation(line: 1030, column: 7, scope: !2287)
!2331 = !DILocation(line: 1031, column: 11, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 1030, column: 37)
!2333 = !DILocation(line: 1031, column: 17, scope: !2332)
!2334 = !DILocation(line: 1031, column: 8, scope: !2332)
!2335 = !DILocation(line: 1032, column: 19, scope: !2332)
!2336 = !DILocation(line: 1032, column: 4, scope: !2332)
!2337 = !DILocation(line: 1033, column: 26, scope: !2332)
!2338 = !DILocation(line: 1033, column: 35, scope: !2332)
!2339 = !DILocation(line: 1033, column: 11, scope: !2332)
!2340 = !DILocation(line: 1033, column: 9, scope: !2332)
!2341 = !DILocation(line: 1034, column: 9, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 1034, column: 8)
!2343 = !DILocation(line: 1034, column: 8, scope: !2332)
!2344 = !DILocation(line: 1035, column: 5, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1035, column: 5)
!2346 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 1034, column: 15)
!2347 = !DILocation(line: 1035, column: 5, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 1035, column: 5)
!2349 = !DILocation(line: 1036, column: 5, scope: !2346)
!2350 = !DILocation(line: 1039, column: 40, scope: !2332)
!2351 = !DILocation(line: 1039, column: 46, scope: !2332)
!2352 = !DILocation(line: 1039, column: 13, scope: !2332)
!2353 = !DILocation(line: 1041, column: 8, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 1041, column: 8)
!2355 = !DILocation(line: 1041, column: 18, scope: !2354)
!2356 = !DILocation(line: 1041, column: 23, scope: !2354)
!2357 = !DILocation(line: 1041, column: 8, scope: !2332)
!2358 = !DILocation(line: 1042, column: 24, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1041, column: 42)
!2360 = !DILocation(line: 1042, column: 34, scope: !2359)
!2361 = !DILocation(line: 1042, column: 40, scope: !2359)
!2362 = !DILocation(line: 1042, column: 50, scope: !2359)
!2363 = !DILocation(line: 1042, column: 5, scope: !2359)
!2364 = !DILocation(line: 1044, column: 30, scope: !2359)
!2365 = !DILocation(line: 1044, column: 40, scope: !2359)
!2366 = !DILocation(line: 1044, column: 46, scope: !2359)
!2367 = !DILocation(line: 1044, column: 56, scope: !2359)
!2368 = !DILocation(line: 1044, column: 5, scope: !2359)
!2369 = !DILocation(line: 1046, column: 4, scope: !2359)
!2370 = !DILocation(line: 1047, column: 3, scope: !2332)
!2371 = !DILocation(line: 1049, column: 13, scope: !2287)
!2372 = !DILocation(line: 1049, column: 11, scope: !2287)
!2373 = !DILocation(line: 1050, column: 18, scope: !2287)
!2374 = !DILocation(line: 1050, column: 24, scope: !2287)
!2375 = !DILocation(line: 1050, column: 3, scope: !2287)
!2376 = distinct !{!2376, !2284, !2377, !438, !439}
!2377 = !DILocation(line: 1051, column: 2, scope: !2262)
!2378 = !DILocation(line: 1053, column: 21, scope: !2262)
!2379 = !DILocation(line: 1053, column: 2, scope: !2262)
!2380 = !DILocation(line: 1054, column: 21, scope: !2262)
!2381 = !DILocation(line: 1054, column: 2, scope: !2262)
!2382 = !DILocation(line: 1056, column: 2, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1056, column: 2)
!2384 = !DILocation(line: 1056, column: 2, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 1056, column: 2)
!2386 = !DILocation(line: 1057, column: 2, scope: !2262)
!2387 = !DILocation(line: 1058, column: 1, scope: !2262)
!2388 = distinct !DISubprogram(name: "e820__finish_early_params", scope: !3, file: !3, line: 1065, type: !1549, scopeLine: 1066, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2389 = !DILocation(line: 1067, column: 6, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 1067, column: 6)
!2391 = !DILocation(line: 1067, column: 6, scope: !2388)
!2392 = !DILocation(line: 1068, column: 26, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1068, column: 7)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 1067, column: 15)
!2395 = !DILocation(line: 1068, column: 7, scope: !2393)
!2396 = !DILocation(line: 1068, column: 38, scope: !2393)
!2397 = !DILocation(line: 1068, column: 7, scope: !2394)
!2398 = !DILocation(line: 1069, column: 4, scope: !2393)
!2399 = !DILocation(line: 1071, column: 3, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1071, column: 3)
!2401 = !DILocation(line: 1071, column: 3, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 1071, column: 3)
!2403 = !DILocation(line: 1072, column: 3, scope: !2394)
!2404 = !DILocation(line: 1073, column: 2, scope: !2394)
!2405 = !DILocation(line: 1074, column: 1, scope: !2388)
!2406 = distinct !DISubprogram(name: "early_panic", scope: !3, file: !3, line: 875, type: !635, scopeLine: 876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2407)
!2407 = !{!2408}
!2408 = !DILocalVariable(name: "msg", arg: 1, scope: !2406, file: !3, line: 875, type: !161)
!2409 = !DILocation(line: 875, column: 38, scope: !2406)
!2410 = !DILocation(line: 877, column: 15, scope: !2406)
!2411 = !DILocation(line: 877, column: 2, scope: !2406)
!2412 = !DILocation(line: 878, column: 8, scope: !2406)
!2413 = !DILocation(line: 878, column: 2, scope: !2406)
!2414 = distinct !DISubprogram(name: "e820__reserve_resources", scope: !3, file: !3, line: 1156, type: !1549, scopeLine: 1157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2415)
!2415 = !{!2416, !2417, !2418, !2419, !2423}
!2416 = !DILocalVariable(name: "i", scope: !2414, file: !3, line: 1158, type: !38)
!2417 = !DILocalVariable(name: "res", scope: !2414, file: !3, line: 1159, type: !256)
!2418 = !DILocalVariable(name: "end", scope: !2414, file: !3, line: 1160, type: !61)
!2419 = !DILocalVariable(name: "entry", scope: !2420, file: !3, line: 1170, type: !239)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 1169, column: 47)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1169, column: 2)
!2422 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 1169, column: 2)
!2423 = !DILocalVariable(name: "entry", scope: !2424, file: !3, line: 1197, type: !239)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1196, column: 56)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1196, column: 2)
!2426 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 1196, column: 2)
!2427 = !DILocation(line: 1158, column: 2, scope: !2414)
!2428 = !DILocation(line: 1158, column: 6, scope: !2414)
!2429 = !DILocation(line: 1159, column: 2, scope: !2414)
!2430 = !DILocation(line: 1159, column: 19, scope: !2414)
!2431 = !DILocation(line: 1160, column: 2, scope: !2414)
!2432 = !DILocation(line: 1160, column: 6, scope: !2414)
!2433 = !DILocation(line: 1162, column: 38, scope: !2414)
!2434 = !DILocation(line: 1162, column: 50, scope: !2414)
!2435 = !DILocation(line: 1162, column: 36, scope: !2414)
!2436 = !DILocation(line: 1162, column: 8, scope: !2414)
!2437 = !DILocation(line: 1162, column: 6, scope: !2414)
!2438 = !DILocation(line: 1164, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 1164, column: 6)
!2440 = !DILocation(line: 1164, column: 6, scope: !2414)
!2441 = !DILocation(line: 1166, column: 24, scope: !2439)
!2442 = !DILocation(line: 1166, column: 36, scope: !2439)
!2443 = !DILocation(line: 1166, column: 22, scope: !2439)
!2444 = !DILocation(line: 1165, column: 3, scope: !2439)
!2445 = !DILocation(line: 1167, column: 13, scope: !2414)
!2446 = !DILocation(line: 1167, column: 11, scope: !2414)
!2447 = !DILocation(line: 1169, column: 9, scope: !2422)
!2448 = !DILocation(line: 1169, column: 7, scope: !2422)
!2449 = !DILocation(line: 1169, column: 14, scope: !2421)
!2450 = !DILocation(line: 1169, column: 18, scope: !2421)
!2451 = !DILocation(line: 1169, column: 30, scope: !2421)
!2452 = !DILocation(line: 1169, column: 16, scope: !2421)
!2453 = !DILocation(line: 1169, column: 2, scope: !2422)
!2454 = !DILocation(line: 1170, column: 3, scope: !2420)
!2455 = !DILocation(line: 1170, column: 22, scope: !2420)
!2456 = !DILocation(line: 1170, column: 30, scope: !2420)
!2457 = !DILocation(line: 1170, column: 42, scope: !2420)
!2458 = !DILocation(line: 1170, column: 52, scope: !2420)
!2459 = !DILocation(line: 1170, column: 50, scope: !2420)
!2460 = !DILocation(line: 1172, column: 9, scope: !2420)
!2461 = !DILocation(line: 1172, column: 16, scope: !2420)
!2462 = !DILocation(line: 1172, column: 23, scope: !2420)
!2463 = !DILocation(line: 1172, column: 30, scope: !2420)
!2464 = !DILocation(line: 1172, column: 21, scope: !2420)
!2465 = !DILocation(line: 1172, column: 35, scope: !2420)
!2466 = !DILocation(line: 1172, column: 7, scope: !2420)
!2467 = !DILocation(line: 1173, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1173, column: 7)
!2469 = !DILocation(line: 1173, column: 31, scope: !2468)
!2470 = !DILocation(line: 1173, column: 11, scope: !2468)
!2471 = !DILocation(line: 1173, column: 7, scope: !2420)
!2472 = !DILocation(line: 1174, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1173, column: 36)
!2474 = !DILocation(line: 1175, column: 4, scope: !2473)
!2475 = !DILocation(line: 1177, column: 16, scope: !2420)
!2476 = !DILocation(line: 1177, column: 23, scope: !2420)
!2477 = !DILocation(line: 1177, column: 3, scope: !2420)
!2478 = !DILocation(line: 1177, column: 8, scope: !2420)
!2479 = !DILocation(line: 1177, column: 14, scope: !2420)
!2480 = !DILocation(line: 1178, column: 16, scope: !2420)
!2481 = !DILocation(line: 1178, column: 3, scope: !2420)
!2482 = !DILocation(line: 1178, column: 8, scope: !2420)
!2483 = !DILocation(line: 1178, column: 14, scope: !2420)
!2484 = !DILocation(line: 1179, column: 36, scope: !2420)
!2485 = !DILocation(line: 1179, column: 16, scope: !2420)
!2486 = !DILocation(line: 1179, column: 3, scope: !2420)
!2487 = !DILocation(line: 1179, column: 8, scope: !2420)
!2488 = !DILocation(line: 1179, column: 14, scope: !2420)
!2489 = !DILocation(line: 1180, column: 40, scope: !2420)
!2490 = !DILocation(line: 1180, column: 16, scope: !2420)
!2491 = !DILocation(line: 1180, column: 3, scope: !2420)
!2492 = !DILocation(line: 1180, column: 8, scope: !2420)
!2493 = !DILocation(line: 1180, column: 14, scope: !2420)
!2494 = !DILocation(line: 1181, column: 40, scope: !2420)
!2495 = !DILocation(line: 1181, column: 16, scope: !2420)
!2496 = !DILocation(line: 1181, column: 3, scope: !2420)
!2497 = !DILocation(line: 1181, column: 8, scope: !2420)
!2498 = !DILocation(line: 1181, column: 14, scope: !2420)
!2499 = !DILocation(line: 1188, column: 20, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1188, column: 7)
!2501 = !DILocation(line: 1188, column: 27, scope: !2500)
!2502 = !DILocation(line: 1188, column: 33, scope: !2500)
!2503 = !DILocation(line: 1188, column: 7, scope: !2500)
!2504 = !DILocation(line: 1188, column: 7, scope: !2420)
!2505 = !DILocation(line: 1189, column: 4, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1188, column: 39)
!2507 = !DILocation(line: 1189, column: 9, scope: !2506)
!2508 = !DILocation(line: 1189, column: 15, scope: !2506)
!2509 = !DILocation(line: 1190, column: 37, scope: !2506)
!2510 = !DILocation(line: 1190, column: 4, scope: !2506)
!2511 = !DILocation(line: 1191, column: 3, scope: !2506)
!2512 = !DILocation(line: 1192, column: 6, scope: !2420)
!2513 = !DILocation(line: 1193, column: 2, scope: !2421)
!2514 = !DILocation(line: 1193, column: 2, scope: !2420)
!2515 = !DILocation(line: 1169, column: 43, scope: !2421)
!2516 = !DILocation(line: 1169, column: 2, scope: !2421)
!2517 = distinct !{!2517, !2453, !2518, !438, !439}
!2518 = !DILocation(line: 1193, column: 2, scope: !2422)
!2519 = !DILocation(line: 1196, column: 9, scope: !2426)
!2520 = !DILocation(line: 1196, column: 7, scope: !2426)
!2521 = !DILocation(line: 1196, column: 14, scope: !2425)
!2522 = !DILocation(line: 1196, column: 18, scope: !2425)
!2523 = !DILocation(line: 1196, column: 39, scope: !2425)
!2524 = !DILocation(line: 1196, column: 16, scope: !2425)
!2525 = !DILocation(line: 1196, column: 2, scope: !2426)
!2526 = !DILocation(line: 1197, column: 3, scope: !2424)
!2527 = !DILocation(line: 1197, column: 22, scope: !2424)
!2528 = !DILocation(line: 1197, column: 30, scope: !2424)
!2529 = !DILocation(line: 1197, column: 51, scope: !2424)
!2530 = !DILocation(line: 1197, column: 61, scope: !2424)
!2531 = !DILocation(line: 1197, column: 59, scope: !2424)
!2532 = !DILocation(line: 1199, column: 26, scope: !2424)
!2533 = !DILocation(line: 1199, column: 33, scope: !2424)
!2534 = !DILocation(line: 1199, column: 39, scope: !2424)
!2535 = !DILocation(line: 1199, column: 46, scope: !2424)
!2536 = !DILocation(line: 1199, column: 53, scope: !2424)
!2537 = !DILocation(line: 1199, column: 60, scope: !2424)
!2538 = !DILocation(line: 1199, column: 51, scope: !2424)
!2539 = !DILocation(line: 1199, column: 86, scope: !2424)
!2540 = !DILocation(line: 1199, column: 66, scope: !2424)
!2541 = !DILocation(line: 1199, column: 3, scope: !2424)
!2542 = !DILocation(line: 1200, column: 2, scope: !2425)
!2543 = !DILocation(line: 1200, column: 2, scope: !2424)
!2544 = !DILocation(line: 1196, column: 52, scope: !2425)
!2545 = !DILocation(line: 1196, column: 2, scope: !2425)
!2546 = distinct !{!2546, !2525, !2547, !438, !439}
!2547 = !DILocation(line: 1200, column: 2, scope: !2426)
!2548 = !DILocation(line: 1201, column: 1, scope: !2414)
!2549 = distinct !DISubprogram(name: "memblock_alloc", scope: !2031, file: !2031, line: 426, type: !2550, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!37, !60, !60}
!2552 = !{!2553, !2554}
!2553 = !DILocalVariable(name: "size", arg: 1, scope: !2549, file: !2031, line: 426, type: !60)
!2554 = !DILocalVariable(name: "align", arg: 2, scope: !2549, file: !2031, line: 426, type: !60)
!2555 = !DILocation(line: 426, column: 57, scope: !2549)
!2556 = !DILocation(line: 426, column: 75, scope: !2549)
!2557 = !DILocation(line: 428, column: 32, scope: !2549)
!2558 = !DILocation(line: 428, column: 38, scope: !2549)
!2559 = !DILocation(line: 428, column: 9, scope: !2549)
!2560 = !DILocation(line: 428, column: 2, scope: !2549)
!2561 = !DISubprogram(name: "panic", scope: !2562, file: !2562, line: 12, type: !2563, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2562 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !63, null}
!2565 = distinct !DISubprogram(name: "e820_type_to_string", scope: !3, file: !3, line: 1076, type: !2566, scopeLine: 1077, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!63, !239}
!2568 = !{!2569}
!2569 = !DILocalVariable(name: "entry", arg: 1, scope: !2565, file: !3, line: 1076, type: !239)
!2570 = !DILocation(line: 1076, column: 66, scope: !2565)
!2571 = !DILocation(line: 1078, column: 10, scope: !2565)
!2572 = !DILocation(line: 1078, column: 17, scope: !2565)
!2573 = !DILocation(line: 1078, column: 2, scope: !2565)
!2574 = !DILocation(line: 1080, column: 23, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1078, column: 23)
!2576 = !DILocation(line: 1081, column: 24, scope: !2575)
!2577 = !DILocation(line: 1082, column: 23, scope: !2575)
!2578 = !DILocation(line: 1083, column: 27, scope: !2575)
!2579 = !DILocation(line: 1084, column: 24, scope: !2575)
!2580 = !DILocation(line: 1085, column: 24, scope: !2575)
!2581 = !DILocation(line: 1086, column: 27, scope: !2575)
!2582 = !DILocation(line: 1087, column: 32, scope: !2575)
!2583 = !DILocation(line: 1088, column: 13, scope: !2575)
!2584 = !DILocation(line: 1090, column: 1, scope: !2565)
!2585 = distinct !DISubprogram(name: "e820_type_to_iomem_type", scope: !3, file: !3, line: 1092, type: !2586, scopeLine: 1093, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!88, !239}
!2588 = !{!2589}
!2589 = !DILocalVariable(name: "entry", arg: 1, scope: !2585, file: !3, line: 1092, type: !239)
!2590 = !DILocation(line: 1092, column: 72, scope: !2585)
!2591 = !DILocation(line: 1094, column: 10, scope: !2585)
!2592 = !DILocation(line: 1094, column: 17, scope: !2585)
!2593 = !DILocation(line: 1094, column: 2, scope: !2585)
!2594 = !DILocation(line: 1096, column: 23, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1094, column: 23)
!2596 = !DILocation(line: 1103, column: 2, scope: !2595)
!2597 = !DILocation(line: 1104, column: 13, scope: !2595)
!2598 = !DILocation(line: 1106, column: 1, scope: !2585)
!2599 = distinct !DISubprogram(name: "e820_type_to_iores_desc", scope: !3, file: !3, line: 1108, type: !2586, scopeLine: 1109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2600)
!2600 = !{!2601}
!2601 = !DILocalVariable(name: "entry", arg: 1, scope: !2599, file: !3, line: 1108, type: !239)
!2602 = !DILocation(line: 1108, column: 72, scope: !2599)
!2603 = !DILocation(line: 1110, column: 10, scope: !2599)
!2604 = !DILocation(line: 1110, column: 17, scope: !2599)
!2605 = !DILocation(line: 1110, column: 2, scope: !2599)
!2606 = !DILocation(line: 1111, column: 24, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 1110, column: 23)
!2608 = !DILocation(line: 1112, column: 23, scope: !2607)
!2609 = !DILocation(line: 1113, column: 24, scope: !2607)
!2610 = !DILocation(line: 1114, column: 24, scope: !2607)
!2611 = !DILocation(line: 1115, column: 27, scope: !2607)
!2612 = !DILocation(line: 1116, column: 32, scope: !2607)
!2613 = !DILocation(line: 1119, column: 2, scope: !2607)
!2614 = !DILocation(line: 1120, column: 13, scope: !2607)
!2615 = !DILocation(line: 1122, column: 1, scope: !2599)
!2616 = distinct !DISubprogram(name: "do_mark_busy", scope: !3, file: !3, line: 1124, type: !2617, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!362, !5, !256}
!2619 = !{!2620, !2621}
!2620 = !DILocalVariable(name: "type", arg: 1, scope: !2616, file: !3, line: 1124, type: !5)
!2621 = !DILocalVariable(name: "res", arg: 2, scope: !2616, file: !3, line: 1124, type: !256)
!2622 = !DILocation(line: 1124, column: 48, scope: !2616)
!2623 = !DILocation(line: 1124, column: 71, scope: !2616)
!2624 = !DILocation(line: 1127, column: 6, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1127, column: 6)
!2626 = !DILocation(line: 1127, column: 11, scope: !2625)
!2627 = !DILocation(line: 1127, column: 17, scope: !2625)
!2628 = !DILocation(line: 1127, column: 6, scope: !2616)
!2629 = !DILocation(line: 1128, column: 3, scope: !2625)
!2630 = !DILocation(line: 1134, column: 10, scope: !2616)
!2631 = !DILocation(line: 1134, column: 2, scope: !2616)
!2632 = !DILocation(line: 1139, column: 3, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1134, column: 16)
!2634 = !DILocation(line: 1144, column: 2, scope: !2633)
!2635 = !DILocation(line: 1146, column: 3, scope: !2633)
!2636 = !DILocation(line: 1148, column: 1, scope: !2616)
!2637 = !DISubprogram(name: "insert_resource", scope: !24, file: !24, line: 203, type: !2638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!38, !256, !256}
!2640 = !DISubprogram(name: "firmware_map_add_early", scope: !2641, file: !2641, line: 17, type: !2642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2641 = !DIFile(filename: "./include/linux/firmware-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c20d31026ccdcc5d45a0e48a50f6285b")
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!38, !61, !61, !63}
!2644 = distinct !DISubprogram(name: "e820__reserve_resources_late", scope: !3, file: !3, line: 1224, type: !1549, scopeLine: 1225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2645)
!2645 = !{!2646, !2647, !2648, !2652, !2653}
!2646 = !DILocalVariable(name: "i", scope: !2644, file: !3, line: 1226, type: !38)
!2647 = !DILocalVariable(name: "res", scope: !2644, file: !3, line: 1227, type: !256)
!2648 = !DILocalVariable(name: "entry", scope: !2649, file: !3, line: 1241, type: !239)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 1240, column: 47)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1240, column: 2)
!2651 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 1240, column: 2)
!2652 = !DILocalVariable(name: "start", scope: !2649, file: !3, line: 1242, type: !61)
!2653 = !DILocalVariable(name: "end", scope: !2649, file: !3, line: 1242, type: !61)
!2654 = !DILocation(line: 1226, column: 2, scope: !2644)
!2655 = !DILocation(line: 1226, column: 6, scope: !2644)
!2656 = !DILocation(line: 1227, column: 2, scope: !2644)
!2657 = !DILocation(line: 1227, column: 19, scope: !2644)
!2658 = !DILocation(line: 1229, column: 8, scope: !2644)
!2659 = !DILocation(line: 1229, column: 6, scope: !2644)
!2660 = !DILocation(line: 1230, column: 9, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 1230, column: 2)
!2662 = !DILocation(line: 1230, column: 7, scope: !2661)
!2663 = !DILocation(line: 1230, column: 14, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 1230, column: 2)
!2665 = !DILocation(line: 1230, column: 18, scope: !2664)
!2666 = !DILocation(line: 1230, column: 30, scope: !2664)
!2667 = !DILocation(line: 1230, column: 16, scope: !2664)
!2668 = !DILocation(line: 1230, column: 2, scope: !2661)
!2669 = !DILocation(line: 1231, column: 8, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1231, column: 7)
!2671 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1230, column: 47)
!2672 = !DILocation(line: 1231, column: 13, scope: !2670)
!2673 = !DILocation(line: 1231, column: 20, scope: !2670)
!2674 = !DILocation(line: 1231, column: 23, scope: !2670)
!2675 = !DILocation(line: 1231, column: 28, scope: !2670)
!2676 = !DILocation(line: 1231, column: 7, scope: !2671)
!2677 = !DILocation(line: 1232, column: 51, scope: !2670)
!2678 = !DILocation(line: 1232, column: 4, scope: !2670)
!2679 = !DILocation(line: 1233, column: 6, scope: !2671)
!2680 = !DILocation(line: 1234, column: 2, scope: !2671)
!2681 = !DILocation(line: 1230, column: 43, scope: !2664)
!2682 = !DILocation(line: 1230, column: 2, scope: !2664)
!2683 = distinct !{!2683, !2668, !2684, !438, !439}
!2684 = !DILocation(line: 1234, column: 2, scope: !2661)
!2685 = !DILocation(line: 1240, column: 9, scope: !2651)
!2686 = !DILocation(line: 1240, column: 7, scope: !2651)
!2687 = !DILocation(line: 1240, column: 14, scope: !2650)
!2688 = !DILocation(line: 1240, column: 18, scope: !2650)
!2689 = !DILocation(line: 1240, column: 30, scope: !2650)
!2690 = !DILocation(line: 1240, column: 16, scope: !2650)
!2691 = !DILocation(line: 1240, column: 2, scope: !2651)
!2692 = !DILocation(line: 1241, column: 3, scope: !2649)
!2693 = !DILocation(line: 1241, column: 22, scope: !2649)
!2694 = !DILocation(line: 1241, column: 31, scope: !2649)
!2695 = !DILocation(line: 1241, column: 43, scope: !2649)
!2696 = !DILocation(line: 1241, column: 51, scope: !2649)
!2697 = !DILocation(line: 1242, column: 3, scope: !2649)
!2698 = !DILocation(line: 1242, column: 7, scope: !2649)
!2699 = !DILocation(line: 1242, column: 14, scope: !2649)
!2700 = !DILocation(line: 1244, column: 7, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1244, column: 7)
!2702 = !DILocation(line: 1244, column: 14, scope: !2701)
!2703 = !DILocation(line: 1244, column: 19, scope: !2701)
!2704 = !DILocation(line: 1244, column: 7, scope: !2649)
!2705 = !DILocation(line: 1245, column: 4, scope: !2701)
!2706 = !DILocation(line: 1247, column: 11, scope: !2649)
!2707 = !DILocation(line: 1247, column: 18, scope: !2649)
!2708 = !DILocation(line: 1247, column: 25, scope: !2649)
!2709 = !DILocation(line: 1247, column: 32, scope: !2649)
!2710 = !DILocation(line: 1247, column: 23, scope: !2649)
!2711 = !DILocation(line: 1247, column: 9, scope: !2649)
!2712 = !DILocation(line: 1248, column: 9, scope: !2649)
!2713 = !DILocation(line: 1248, column: 47, scope: !2649)
!2714 = !DILocation(line: 1248, column: 7, scope: !2649)
!2715 = !DILocation(line: 1249, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1249, column: 7)
!2717 = !DILocation(line: 1249, column: 11, scope: !2716)
!2718 = !DILocation(line: 1249, column: 7, scope: !2649)
!2719 = !DILocation(line: 1250, column: 8, scope: !2716)
!2720 = !DILocation(line: 1250, column: 4, scope: !2716)
!2721 = !DILocation(line: 1251, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1251, column: 7)
!2723 = !DILocation(line: 1251, column: 16, scope: !2722)
!2724 = !DILocation(line: 1251, column: 13, scope: !2722)
!2725 = !DILocation(line: 1251, column: 7, scope: !2649)
!2726 = !DILocation(line: 1252, column: 4, scope: !2722)
!2727 = !DILocation(line: 1254, column: 3, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1254, column: 3)
!2729 = !DILocation(line: 1254, column: 3, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1254, column: 3)
!2731 = !DILocation(line: 1255, column: 46, scope: !2649)
!2732 = !DILocation(line: 1255, column: 53, scope: !2649)
!2733 = !DILocation(line: 1255, column: 3, scope: !2649)
!2734 = !DILocation(line: 1256, column: 2, scope: !2650)
!2735 = !DILocation(line: 1256, column: 2, scope: !2649)
!2736 = !DILocation(line: 1240, column: 43, scope: !2650)
!2737 = !DILocation(line: 1240, column: 2, scope: !2650)
!2738 = distinct !{!2738, !2691, !2739, !438, !439}
!2739 = !DILocation(line: 1256, column: 2, scope: !2651)
!2740 = !DILocation(line: 1257, column: 1, scope: !2644)
!2741 = !DISubprogram(name: "insert_resource_expand_to_fit", scope: !24, file: !24, line: 204, type: !2742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{null, !256, !256}
!2744 = distinct !DISubprogram(name: "ram_alignment", scope: !3, file: !3, line: 1206, type: !2745, scopeLine: 1207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2747)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!88, !59}
!2747 = !{!2748, !2749}
!2748 = !DILocalVariable(name: "pos", arg: 1, scope: !2744, file: !3, line: 1206, type: !59)
!2749 = !DILocalVariable(name: "mb", scope: !2744, file: !3, line: 1208, type: !88)
!2750 = !DILocation(line: 1206, column: 59, scope: !2744)
!2751 = !DILocation(line: 1208, column: 2, scope: !2744)
!2752 = !DILocation(line: 1208, column: 16, scope: !2744)
!2753 = !DILocation(line: 1208, column: 21, scope: !2744)
!2754 = !DILocation(line: 1208, column: 25, scope: !2744)
!2755 = !DILocation(line: 1211, column: 7, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1211, column: 6)
!2757 = !DILocation(line: 1211, column: 6, scope: !2744)
!2758 = !DILocation(line: 1212, column: 3, scope: !2756)
!2759 = !DILocation(line: 1215, column: 6, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1215, column: 6)
!2761 = !DILocation(line: 1215, column: 9, scope: !2760)
!2762 = !DILocation(line: 1215, column: 6, scope: !2744)
!2763 = !DILocation(line: 1216, column: 3, scope: !2760)
!2764 = !DILocation(line: 1219, column: 2, scope: !2744)
!2765 = !DILocation(line: 1220, column: 1, scope: !2744)
!2766 = !DISubprogram(name: "reserve_region_with_split", scope: !24, file: !24, line: 199, type: !2767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !256, !59, !59, !63}
!2769 = distinct !DISubprogram(name: "e820__memory_setup_default", scope: !3, file: !3, line: 1262, type: !2770, scopeLine: 1263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!161}
!2772 = !{!2773, !2774}
!2773 = !DILocalVariable(name: "who", scope: !2769, file: !3, line: 1264, type: !161)
!2774 = !DILocalVariable(name: "mem_size", scope: !2775, file: !3, line: 1273, type: !61)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1272, column: 79)
!2776 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1272, column: 6)
!2777 = !DILocation(line: 1264, column: 2, scope: !2769)
!2778 = !DILocation(line: 1264, column: 8, scope: !2769)
!2779 = !DILocation(line: 1272, column: 60, scope: !2776)
!2780 = !DILocation(line: 1272, column: 48, scope: !2776)
!2781 = !DILocation(line: 1272, column: 6, scope: !2776)
!2782 = !DILocation(line: 1272, column: 74, scope: !2776)
!2783 = !DILocation(line: 1272, column: 6, scope: !2769)
!2784 = !DILocation(line: 1273, column: 3, scope: !2775)
!2785 = !DILocation(line: 1273, column: 7, scope: !2775)
!2786 = !DILocation(line: 1276, column: 19, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 1276, column: 7)
!2788 = !DILocation(line: 1276, column: 55, scope: !2787)
!2789 = !DILocation(line: 1276, column: 31, scope: !2787)
!2790 = !DILocation(line: 1276, column: 29, scope: !2787)
!2791 = !DILocation(line: 1276, column: 7, scope: !2775)
!2792 = !DILocation(line: 1277, column: 39, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1276, column: 66)
!2794 = !DILocation(line: 1277, column: 15, scope: !2793)
!2795 = !DILocation(line: 1277, column: 13, scope: !2793)
!2796 = !DILocation(line: 1278, column: 8, scope: !2793)
!2797 = !DILocation(line: 1279, column: 3, scope: !2793)
!2798 = !DILocation(line: 1280, column: 27, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1279, column: 10)
!2800 = !DILocation(line: 1280, column: 15, scope: !2799)
!2801 = !DILocation(line: 1280, column: 13, scope: !2799)
!2802 = !DILocation(line: 1281, column: 8, scope: !2799)
!2803 = !DILocation(line: 1284, column: 3, scope: !2775)
!2804 = !DILocation(line: 1284, column: 15, scope: !2775)
!2805 = !DILocation(line: 1284, column: 26, scope: !2775)
!2806 = !DILocation(line: 1285, column: 3, scope: !2775)
!2807 = !DILocation(line: 1286, column: 32, scope: !2775)
!2808 = !DILocation(line: 1286, column: 41, scope: !2775)
!2809 = !DILocation(line: 1286, column: 3, scope: !2775)
!2810 = !DILocation(line: 1287, column: 2, scope: !2776)
!2811 = !DILocation(line: 1287, column: 2, scope: !2775)
!2812 = !DILocation(line: 1290, column: 21, scope: !2769)
!2813 = !DILocation(line: 1290, column: 2, scope: !2769)
!2814 = !DILocation(line: 1292, column: 9, scope: !2769)
!2815 = !DILocation(line: 1293, column: 1, scope: !2769)
!2816 = !DILocation(line: 1292, column: 2, scope: !2769)
!2817 = distinct !DISubprogram(name: "append_e820_table", scope: !3, file: !3, line: 453, type: !1832, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2818)
!2818 = !{!2819, !2820}
!2819 = !DILocalVariable(name: "entries", arg: 1, scope: !2817, file: !3, line: 453, type: !41)
!2820 = !DILocalVariable(name: "nr_entries", arg: 2, scope: !2817, file: !3, line: 453, type: !733)
!2821 = !DILocation(line: 453, column: 61, scope: !2817)
!2822 = !DILocation(line: 453, column: 74, scope: !2817)
!2823 = !DILocation(line: 456, column: 6, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 456, column: 6)
!2825 = !DILocation(line: 456, column: 17, scope: !2824)
!2826 = !DILocation(line: 456, column: 6, scope: !2817)
!2827 = !DILocation(line: 457, column: 3, scope: !2824)
!2828 = !DILocation(line: 459, column: 29, scope: !2817)
!2829 = !DILocation(line: 459, column: 38, scope: !2817)
!2830 = !DILocation(line: 459, column: 9, scope: !2817)
!2831 = !DILocation(line: 459, column: 2, scope: !2817)
!2832 = !DILocation(line: 460, column: 1, scope: !2817)
!2833 = distinct !DISubprogram(name: "e820__memory_setup", scope: !3, file: !3, line: 1300, type: !1549, scopeLine: 1301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2834)
!2834 = !{!2835}
!2835 = !DILocalVariable(name: "who", scope: !2833, file: !3, line: 1302, type: !161)
!2836 = !DILocation(line: 1302, column: 2, scope: !2833)
!2837 = !DILocation(line: 1302, column: 8, scope: !2833)
!2838 = !DILocation(line: 1305, column: 2, scope: !2833)
!2839 = !DILocation(line: 1305, column: 2, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 1305, column: 2)
!2841 = !DILocation(line: 1307, column: 27, scope: !2833)
!2842 = !DILocation(line: 1307, column: 8, scope: !2833)
!2843 = !DILocation(line: 1307, column: 6, scope: !2833)
!2844 = !DILocation(line: 1309, column: 9, scope: !2833)
!2845 = !DILocation(line: 1309, column: 27, scope: !2833)
!2846 = !DILocation(line: 1309, column: 2, scope: !2833)
!2847 = !DILocation(line: 1310, column: 9, scope: !2833)
!2848 = !DILocation(line: 1310, column: 30, scope: !2833)
!2849 = !DILocation(line: 1310, column: 2, scope: !2833)
!2850 = !DILocation(line: 1312, column: 2, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 1312, column: 2)
!2852 = !DILocation(line: 1312, column: 2, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 1312, column: 2)
!2854 = !DILocation(line: 1313, column: 20, scope: !2833)
!2855 = !DILocation(line: 1313, column: 2, scope: !2833)
!2856 = !DILocation(line: 1314, column: 1, scope: !2833)
!2857 = distinct !DISubprogram(name: "e820__memblock_setup", scope: !3, file: !3, line: 1316, type: !1549, scopeLine: 1317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2858)
!2858 = !{!2859, !2860, !2861}
!2859 = !DILocalVariable(name: "i", scope: !2857, file: !3, line: 1318, type: !38)
!2860 = !DILocalVariable(name: "end", scope: !2857, file: !3, line: 1319, type: !61)
!2861 = !DILocalVariable(name: "entry", scope: !2862, file: !3, line: 1333, type: !239)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 1332, column: 47)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 1332, column: 2)
!2864 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 1332, column: 2)
!2865 = !DILocation(line: 1318, column: 2, scope: !2857)
!2866 = !DILocation(line: 1318, column: 6, scope: !2857)
!2867 = !DILocation(line: 1319, column: 2, scope: !2857)
!2868 = !DILocation(line: 1319, column: 6, scope: !2857)
!2869 = !DILocation(line: 1330, column: 2, scope: !2857)
!2870 = !DILocation(line: 1332, column: 9, scope: !2864)
!2871 = !DILocation(line: 1332, column: 7, scope: !2864)
!2872 = !DILocation(line: 1332, column: 14, scope: !2863)
!2873 = !DILocation(line: 1332, column: 18, scope: !2863)
!2874 = !DILocation(line: 1332, column: 30, scope: !2863)
!2875 = !DILocation(line: 1332, column: 16, scope: !2863)
!2876 = !DILocation(line: 1332, column: 2, scope: !2864)
!2877 = !DILocation(line: 1333, column: 3, scope: !2862)
!2878 = !DILocation(line: 1333, column: 22, scope: !2862)
!2879 = !DILocation(line: 1333, column: 31, scope: !2862)
!2880 = !DILocation(line: 1333, column: 43, scope: !2862)
!2881 = !DILocation(line: 1333, column: 51, scope: !2862)
!2882 = !DILocation(line: 1335, column: 9, scope: !2862)
!2883 = !DILocation(line: 1335, column: 16, scope: !2862)
!2884 = !DILocation(line: 1335, column: 23, scope: !2862)
!2885 = !DILocation(line: 1335, column: 30, scope: !2862)
!2886 = !DILocation(line: 1335, column: 21, scope: !2862)
!2887 = !DILocation(line: 1335, column: 7, scope: !2862)
!2888 = !DILocation(line: 1336, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1336, column: 7)
!2890 = !DILocation(line: 1336, column: 31, scope: !2889)
!2891 = !DILocation(line: 1336, column: 11, scope: !2889)
!2892 = !DILocation(line: 1336, column: 7, scope: !2862)
!2893 = !DILocation(line: 1337, column: 4, scope: !2889)
!2894 = !DILocation(line: 1339, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1339, column: 7)
!2896 = !DILocation(line: 1339, column: 14, scope: !2895)
!2897 = !DILocation(line: 1339, column: 19, scope: !2895)
!2898 = !DILocation(line: 1339, column: 7, scope: !2862)
!2899 = !DILocation(line: 1340, column: 21, scope: !2895)
!2900 = !DILocation(line: 1340, column: 28, scope: !2895)
!2901 = !DILocation(line: 1340, column: 34, scope: !2895)
!2902 = !DILocation(line: 1340, column: 41, scope: !2895)
!2903 = !DILocation(line: 1340, column: 4, scope: !2895)
!2904 = !DILocation(line: 1342, column: 7, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1342, column: 7)
!2906 = !DILocation(line: 1342, column: 14, scope: !2905)
!2907 = !DILocation(line: 1342, column: 19, scope: !2905)
!2908 = !DILocation(line: 1342, column: 36, scope: !2905)
!2909 = !DILocation(line: 1342, column: 39, scope: !2905)
!2910 = !DILocation(line: 1342, column: 46, scope: !2905)
!2911 = !DILocation(line: 1342, column: 51, scope: !2905)
!2912 = !DILocation(line: 1342, column: 7, scope: !2862)
!2913 = !DILocation(line: 1343, column: 4, scope: !2905)
!2914 = !DILocation(line: 1345, column: 16, scope: !2862)
!2915 = !DILocation(line: 1345, column: 23, scope: !2862)
!2916 = !DILocation(line: 1345, column: 29, scope: !2862)
!2917 = !DILocation(line: 1345, column: 36, scope: !2862)
!2918 = !DILocation(line: 1345, column: 3, scope: !2862)
!2919 = !DILocation(line: 1346, column: 2, scope: !2863)
!2920 = !DILocation(line: 1346, column: 2, scope: !2862)
!2921 = !DILocation(line: 1332, column: 43, scope: !2863)
!2922 = !DILocation(line: 1332, column: 2, scope: !2863)
!2923 = distinct !{!2923, !2876, !2924, !438, !439}
!2924 = !DILocation(line: 1346, column: 2, scope: !2864)
!2925 = !DILocation(line: 1349, column: 2, scope: !2857)
!2926 = !DILocation(line: 1351, column: 2, scope: !2857)
!2927 = !DILocation(line: 1352, column: 1, scope: !2857)
!2928 = !DISubprogram(name: "memblock_allow_resize", scope: !2031, file: !2031, line: 110, type: !1549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2929 = !DISubprogram(name: "memblock_reserve", scope: !2031, file: !2031, line: 116, type: !2930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!38, !60, !60}
!2932 = !DISubprogram(name: "memblock_add", scope: !2031, file: !2031, line: 113, type: !2930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2933 = !DISubprogram(name: "memblock_trim_memory", scope: !2031, file: !2031, line: 120, type: !2934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{null, !60}
!2936 = !DISubprogram(name: "memblock_dump_all", scope: !2031, file: !2031, line: 493, type: !1549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2937 = !DISubprogram(name: "acpi_nvs_register", scope: !2938, file: !2938, line: 703, type: !2939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2938 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!38, !46, !46}
!2941 = !DISubprogram(name: "memblock_phys_alloc_range", scope: !2031, file: !2031, line: 402, type: !2942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!60, !60, !60, !60, !60}
!2944 = !DISubprogram(name: "strcmp", scope: !1763, file: !1763, line: 88, type: !2945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!38, !63, !63}
!2947 = !DISubprogram(name: "memparse", scope: !2948, file: !2948, line: 209, type: !2949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2948 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!48, !63, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!2952 = !DISubprogram(name: "strchr", scope: !1763, file: !1763, line: 100, type: !2953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!161, !63, !38}
!2955 = distinct !DISubprogram(name: "parse_memmap_one", scope: !3, file: !3, line: 918, type: !159, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2956)
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2968}
!2957 = !DILocalVariable(name: "p", arg: 1, scope: !2955, file: !3, line: 918, type: !161)
!2958 = !DILocalVariable(name: "oldp", scope: !2955, file: !3, line: 920, type: !161)
!2959 = !DILocalVariable(name: "start_at", scope: !2955, file: !3, line: 921, type: !61)
!2960 = !DILocalVariable(name: "mem_size", scope: !2955, file: !3, line: 921, type: !61)
!2961 = !DILocalVariable(name: "from", scope: !2962, file: !3, line: 951, type: !5)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 950, column: 24)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 950, column: 13)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 947, column: 13)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 944, column: 13)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 941, column: 13)
!2967 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 938, column: 6)
!2968 = !DILocalVariable(name: "to", scope: !2962, file: !3, line: 951, type: !5)
!2969 = !DILocation(line: 918, column: 42, scope: !2955)
!2970 = !DILocation(line: 920, column: 2, scope: !2955)
!2971 = !DILocation(line: 920, column: 8, scope: !2955)
!2972 = !DILocation(line: 921, column: 2, scope: !2955)
!2973 = !DILocation(line: 921, column: 6, scope: !2955)
!2974 = !DILocation(line: 921, column: 16, scope: !2955)
!2975 = !DILocation(line: 923, column: 7, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 923, column: 6)
!2977 = !DILocation(line: 923, column: 6, scope: !2955)
!2978 = !DILocation(line: 924, column: 3, scope: !2976)
!2979 = !DILocation(line: 926, column: 15, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 926, column: 6)
!2981 = !DILocation(line: 926, column: 7, scope: !2980)
!2982 = !DILocation(line: 926, column: 6, scope: !2955)
!2983 = !DILocation(line: 927, column: 3, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 926, column: 34)
!2985 = !DILocation(line: 927, column: 15, scope: !2984)
!2986 = !DILocation(line: 927, column: 26, scope: !2984)
!2987 = !DILocation(line: 928, column: 11, scope: !2984)
!2988 = !DILocation(line: 929, column: 3, scope: !2984)
!2989 = !DILocation(line: 932, column: 9, scope: !2955)
!2990 = !DILocation(line: 932, column: 7, scope: !2955)
!2991 = !DILocation(line: 933, column: 22, scope: !2955)
!2992 = !DILocation(line: 933, column: 13, scope: !2955)
!2993 = !DILocation(line: 933, column: 11, scope: !2955)
!2994 = !DILocation(line: 934, column: 6, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 934, column: 6)
!2996 = !DILocation(line: 934, column: 11, scope: !2995)
!2997 = !DILocation(line: 934, column: 8, scope: !2995)
!2998 = !DILocation(line: 934, column: 6, scope: !2955)
!2999 = !DILocation(line: 935, column: 3, scope: !2995)
!3000 = !DILocation(line: 937, column: 10, scope: !2955)
!3001 = !DILocation(line: 938, column: 7, scope: !2967)
!3002 = !DILocation(line: 938, column: 6, scope: !2967)
!3003 = !DILocation(line: 938, column: 9, scope: !2967)
!3004 = !DILocation(line: 938, column: 6, scope: !2955)
!3005 = !DILocation(line: 939, column: 23, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 938, column: 17)
!3007 = !DILocation(line: 939, column: 24, scope: !3006)
!3008 = !DILocation(line: 939, column: 14, scope: !3006)
!3009 = !DILocation(line: 939, column: 12, scope: !3006)
!3010 = !DILocation(line: 940, column: 19, scope: !3006)
!3011 = !DILocation(line: 940, column: 29, scope: !3006)
!3012 = !DILocation(line: 940, column: 3, scope: !3006)
!3013 = !DILocation(line: 941, column: 2, scope: !3006)
!3014 = !DILocation(line: 941, column: 14, scope: !2966)
!3015 = !DILocation(line: 941, column: 13, scope: !2966)
!3016 = !DILocation(line: 941, column: 16, scope: !2966)
!3017 = !DILocation(line: 941, column: 13, scope: !2967)
!3018 = !DILocation(line: 942, column: 23, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 941, column: 24)
!3020 = !DILocation(line: 942, column: 24, scope: !3019)
!3021 = !DILocation(line: 942, column: 14, scope: !3019)
!3022 = !DILocation(line: 942, column: 12, scope: !3019)
!3023 = !DILocation(line: 943, column: 19, scope: !3019)
!3024 = !DILocation(line: 943, column: 29, scope: !3019)
!3025 = !DILocation(line: 943, column: 3, scope: !3019)
!3026 = !DILocation(line: 944, column: 2, scope: !3019)
!3027 = !DILocation(line: 944, column: 14, scope: !2965)
!3028 = !DILocation(line: 944, column: 13, scope: !2965)
!3029 = !DILocation(line: 944, column: 16, scope: !2965)
!3030 = !DILocation(line: 944, column: 13, scope: !2966)
!3031 = !DILocation(line: 945, column: 23, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 944, column: 24)
!3033 = !DILocation(line: 945, column: 24, scope: !3032)
!3034 = !DILocation(line: 945, column: 14, scope: !3032)
!3035 = !DILocation(line: 945, column: 12, scope: !3032)
!3036 = !DILocation(line: 946, column: 19, scope: !3032)
!3037 = !DILocation(line: 946, column: 29, scope: !3032)
!3038 = !DILocation(line: 946, column: 3, scope: !3032)
!3039 = !DILocation(line: 947, column: 2, scope: !3032)
!3040 = !DILocation(line: 947, column: 14, scope: !2964)
!3041 = !DILocation(line: 947, column: 13, scope: !2964)
!3042 = !DILocation(line: 947, column: 16, scope: !2964)
!3043 = !DILocation(line: 947, column: 13, scope: !2965)
!3044 = !DILocation(line: 948, column: 23, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 947, column: 24)
!3046 = !DILocation(line: 948, column: 24, scope: !3045)
!3047 = !DILocation(line: 948, column: 14, scope: !3045)
!3048 = !DILocation(line: 948, column: 12, scope: !3045)
!3049 = !DILocation(line: 949, column: 19, scope: !3045)
!3050 = !DILocation(line: 949, column: 29, scope: !3045)
!3051 = !DILocation(line: 949, column: 3, scope: !3045)
!3052 = !DILocation(line: 950, column: 2, scope: !3045)
!3053 = !DILocation(line: 950, column: 14, scope: !2963)
!3054 = !DILocation(line: 950, column: 13, scope: !2963)
!3055 = !DILocation(line: 950, column: 16, scope: !2963)
!3056 = !DILocation(line: 950, column: 13, scope: !2964)
!3057 = !DILocation(line: 951, column: 3, scope: !2962)
!3058 = !DILocation(line: 951, column: 18, scope: !2962)
!3059 = !DILocation(line: 951, column: 28, scope: !2962)
!3060 = !DILocation(line: 953, column: 23, scope: !2962)
!3061 = !DILocation(line: 953, column: 25, scope: !2962)
!3062 = !DILocation(line: 953, column: 14, scope: !2962)
!3063 = !DILocation(line: 953, column: 12, scope: !2962)
!3064 = !DILocation(line: 954, column: 8, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 954, column: 7)
!3066 = !DILocation(line: 954, column: 7, scope: !3065)
!3067 = !DILocation(line: 954, column: 10, scope: !3065)
!3068 = !DILocation(line: 954, column: 7, scope: !2962)
!3069 = !DILocation(line: 955, column: 27, scope: !3065)
!3070 = !DILocation(line: 955, column: 29, scope: !3065)
!3071 = !DILocation(line: 955, column: 11, scope: !3065)
!3072 = !DILocation(line: 955, column: 9, scope: !3065)
!3073 = !DILocation(line: 955, column: 4, scope: !3065)
!3074 = !DILocation(line: 956, column: 8, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 956, column: 7)
!3076 = !DILocation(line: 956, column: 7, scope: !3075)
!3077 = !DILocation(line: 956, column: 10, scope: !3075)
!3078 = !DILocation(line: 956, column: 7, scope: !2962)
!3079 = !DILocation(line: 957, column: 25, scope: !3075)
!3080 = !DILocation(line: 957, column: 27, scope: !3075)
!3081 = !DILocation(line: 957, column: 9, scope: !3075)
!3082 = !DILocation(line: 957, column: 7, scope: !3075)
!3083 = !DILocation(line: 957, column: 4, scope: !3075)
!3084 = !DILocation(line: 958, column: 8, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 958, column: 7)
!3086 = !DILocation(line: 958, column: 7, scope: !3085)
!3087 = !DILocation(line: 958, column: 10, scope: !3085)
!3088 = !DILocation(line: 958, column: 7, scope: !2962)
!3089 = !DILocation(line: 959, column: 4, scope: !3085)
!3090 = !DILocation(line: 960, column: 7, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 960, column: 7)
!3092 = !DILocation(line: 960, column: 12, scope: !3091)
!3093 = !DILocation(line: 960, column: 15, scope: !3091)
!3094 = !DILocation(line: 960, column: 7, scope: !2962)
!3095 = !DILocation(line: 961, column: 23, scope: !3091)
!3096 = !DILocation(line: 961, column: 33, scope: !3091)
!3097 = !DILocation(line: 961, column: 43, scope: !3091)
!3098 = !DILocation(line: 961, column: 49, scope: !3091)
!3099 = !DILocation(line: 961, column: 4, scope: !3091)
!3100 = !DILocation(line: 962, column: 12, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 962, column: 12)
!3102 = !DILocation(line: 962, column: 12, scope: !3091)
!3103 = !DILocation(line: 963, column: 20, scope: !3101)
!3104 = !DILocation(line: 963, column: 30, scope: !3101)
!3105 = !DILocation(line: 963, column: 40, scope: !3101)
!3106 = !DILocation(line: 963, column: 4, scope: !3101)
!3107 = !DILocation(line: 964, column: 12, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 964, column: 12)
!3109 = !DILocation(line: 964, column: 12, scope: !3101)
!3110 = !DILocation(line: 965, column: 23, scope: !3108)
!3111 = !DILocation(line: 965, column: 33, scope: !3108)
!3112 = !DILocation(line: 965, column: 43, scope: !3108)
!3113 = !DILocation(line: 965, column: 4, scope: !3108)
!3114 = !DILocation(line: 967, column: 23, scope: !3108)
!3115 = !DILocation(line: 967, column: 33, scope: !3108)
!3116 = !DILocation(line: 967, column: 4, scope: !3108)
!3117 = !DILocation(line: 968, column: 2, scope: !2963)
!3118 = !DILocation(line: 968, column: 2, scope: !2962)
!3119 = !DILocation(line: 969, column: 22, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 968, column: 9)
!3121 = !DILocation(line: 969, column: 45, scope: !3120)
!3122 = !DILocation(line: 969, column: 43, scope: !3120)
!3123 = !DILocation(line: 969, column: 3, scope: !3120)
!3124 = !DILocation(line: 972, column: 10, scope: !2955)
!3125 = !DILocation(line: 972, column: 9, scope: !2955)
!3126 = !DILocation(line: 972, column: 12, scope: !2955)
!3127 = !DILocation(line: 972, column: 2, scope: !2955)
!3128 = !DILocation(line: 973, column: 1, scope: !2955)
!3129 = !DISubprogram(name: "strncmp", scope: !1763, file: !1763, line: 91, type: !3130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!38, !63, !63, !1052}
!3132 = !DISubprogram(name: "simple_strtoull", scope: !3133, file: !3133, line: 147, type: !3134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3133 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!48, !63, !2951, !7}
!3136 = !DISubprogram(name: "early_printk", scope: !673, file: !673, line: 135, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3137 = !DISubprogram(name: "memblock_alloc_try_nid", scope: !2031, file: !2031, line: 422, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!37, !60, !60, !60, !60, !38}
