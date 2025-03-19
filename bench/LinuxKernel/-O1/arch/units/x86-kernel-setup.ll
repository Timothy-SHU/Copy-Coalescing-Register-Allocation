; ModuleID = 'arch/x86/kernel/setup.c'
source_filename = "arch/x86/kernel/setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_boot_cpu_data: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad boot_cpu_data ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_screen_info: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad screen_info ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_edid_info: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad edid_info ; .previous"
module asm ".section\09\22.initcall6.init..kmod_setup__393_1348_register_kernel_offset_dumper\22, \22a\22\09\09"
module asm "__initcall__kmod_setup__393_1348_register_kernel_offset_dumper6:\09\09\09"
module asm ".long\09__initstub__kmod_setup__393_1348_register_kernel_offset_dumper6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.edid_info = type { [128 x i8] }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.1, %union.anon.8, i8, i8 }>
%union.anon.1 = type { %struct.anon.4 }
%struct.anon.4 = type { i64 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i8, i8, i16, i32, i64 }
%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
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
%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.consw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.setup_data = type { i64, i32, i32, [0 x i8] }
%struct.setup_indirect = type { i32, i32, i64, i64 }

@__brk_base = external dso_local global [0 x i8], align 1
@_brk_start = hidden global i64 ptrtoint (ptr @__brk_base to i64), align 8, !dbg !0
@_brk_end = hidden global i64 ptrtoint (ptr @__brk_base to i64), align 8, !dbg !67
@boot_cpu_data = hidden global %struct.cpuinfo_x86 zeroinitializer, section ".data..read_mostly", align 8, !dbg !451
@__UNIQUE_ID___addressable_boot_cpu_data386 = internal global ptr @boot_cpu_data, section ".discard.addressable", align 8, !dbg !69
@screen_info = hidden global %struct.screen_info zeroinitializer, align 1, !dbg !523
@__UNIQUE_ID___addressable_screen_info387 = internal global ptr @screen_info, section ".discard.addressable", align 8, !dbg !71
@edid_info = hidden global %struct.edid_info zeroinitializer, align 1, !dbg !525
@__UNIQUE_ID___addressable_edid_info388 = internal global ptr @edid_info, section ".discard.addressable", align 8, !dbg !73
@.str = private unnamed_addr constant [24 x i8] c"arch/x86/kernel/setup.c\00", align 1, !dbg !75
@__brk_limit = external dso_local global [0 x i8], align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@standard_io_resources = internal global [10 x %struct.resource] [%struct.resource { i64 0, i64 31, ptr @.str.7, i64 2147483904, i64 0, ptr null, ptr null, ptr null }, %struct.resource { i64 32, i64 33, ptr @.str.8, i64 2147483904, i64 0, ptr null, ptr null, ptr null }, %struct.resource { i64 64, i64 67, ptr @.str.9, i64 2147483904, i64 0, ptr null, ptr null, ptr null }, %struct.resource { i64 80, i64 83, ptr @.str.10, i64 2147483904, i64 0, ptr null, ptr null, ptr null }, %struct.resource { i64 96, i64 96, ptr @.str.11, i64 2147483904, i64 0, ptr null, ptr null, ptr null }, %struct.resource { i64 100, i64 100, ptr @.str.11, i64 2147483904, i64 0, ptr null, ptr null, ptr null }, %struct.resource { i64 128, i64 143, ptr @.str.12, i64 2147483904, i64 0, ptr null, ptr null, ptr null }, %struct.resource { i64 160, i64 161, ptr @.str.13, i64 2147483904, i64 0, ptr null, ptr null, ptr null }, %struct.resource { i64 192, i64 223, ptr @.str.14, i64 2147483904, i64 0, ptr null, ptr null, ptr null }, %struct.resource { i64 240, i64 255, ptr @.str.15, i64 2147483904, i64 0, ptr null, ptr null, ptr null }], align 16, !dbg !564
@__supported_pte_mask = external dso_local global i64, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"\016Command line: %s\0A\00", align 1, !dbg !80
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@boot_params = hidden global %struct.boot_params zeroinitializer, align 1, !dbg !115
@ROOT_DEV = external dso_local global i32, align 4
@saved_video_mode = hidden global i64 0, align 8, !dbg !527
@bootloader_type = hidden global i32 0, align 4, !dbg !519
@bootloader_version = hidden global i32 0, align 4, !dbg !521
@.str.2 = private unnamed_addr constant [5 x i8] c"EL32\00", align 1, !dbg !85
@efi = external dso_local global %struct.efi, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"EL64\00", align 1, !dbg !90
@x86_init = external dso_local global %struct.x86_init_ops, align 8
@iomem_resource = external dso_local global %struct.resource, align 8
@root_mountflags = external dso_local global i32, align 4
@_text = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@_edata = external dso_local global [0 x i8], align 1
@phys_base = external dso_local global i64, align 8
@code_resource = internal global %struct.resource { i64 0, i64 0, ptr @.str.21, i64 2164261376, i64 0, ptr null, ptr null, ptr null }, align 8, !dbg !631
@__start_rodata = external dso_local global [0 x i8], align 1
@rodata_resource = internal global %struct.resource { i64 0, i64 0, ptr @.str.22, i64 2164261376, i64 0, ptr null, ptr null, ptr null }, align 8, !dbg !636
@__end_rodata = external dso_local global [0 x i8], align 1
@_sdata = external dso_local global [0 x i8], align 1
@data_resource = internal global %struct.resource { i64 0, i64 0, ptr @.str.23, i64 2164261376, i64 0, ptr null, ptr null, ptr null }, align 8, !dbg !640
@__bss_start = external dso_local global [0 x i8], align 1
@bss_resource = internal global %struct.resource { i64 0, i64 0, ptr @.str.24, i64 2164261376, i64 0, ptr null, ptr null, ptr null }, align 8, !dbg !647
@__bss_stop = external dso_local global [0 x i8], align 1
@command_line = internal global [2048 x i8] zeroinitializer, section ".init.data", align 16, !dbg !529
@apic_is_disabled = external dso_local global i8, align 1
@max_pfn = external dso_local global i64, align 8
@max_possible_pfn = external dso_local global i64, align 8
@max_low_pfn = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@high_memory = external dso_local global ptr, align 8
@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@mmu_cr4_features = hidden global i64 0, section ".data..ro_after_init", align 8, !dbg !517
@init_ohci1394_dma_early = external dso_local global i32, section ".init.data", align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"\016Secure boot disabled\0A\00", align 1, !dbg !92
@.str.5 = private unnamed_addr constant [23 x i8] c"\016Secure boot enabled\0A\00", align 1, !dbg !94
@.str.6 = private unnamed_addr constant [39 x i8] c"\016Secure boot could not be determined\0A\00", align 1, !dbg !99
@max_pfn_mapped = hidden global i64 0, align 8, !dbg !108
@vga_con = external dso_local constant %struct.consw, align 8
@conswitchp = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable___initstub__kmod_setup__393_1348_register_kernel_offset_dumper6394 = internal global ptr @__initstub__kmod_setup__393_1348_register_kernel_offset_dumper6, section ".discard.addressable", align 8, !dbg !104
@max_low_pfn_mapped = hidden global i64 0, align 8, !dbg !106
@__brk_dmi_alloc = internal global [65536 x i8] zeroinitializer, section ".bss..brk", align 1, !dbg !110
@relocated_ramdisk = hidden global i64 0, align 8, !dbg !534
@.str.7 = private unnamed_addr constant [5 x i8] c"dma1\00", align 1, !dbg !536
@.str.8 = private unnamed_addr constant [5 x i8] c"pic1\00", align 1, !dbg !538
@.str.9 = private unnamed_addr constant [7 x i8] c"timer0\00", align 1, !dbg !540
@.str.10 = private unnamed_addr constant [7 x i8] c"timer1\00", align 1, !dbg !545
@.str.11 = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1, !dbg !547
@.str.12 = private unnamed_addr constant [13 x i8] c"dma page reg\00", align 1, !dbg !552
@.str.13 = private unnamed_addr constant [5 x i8] c"pic2\00", align 1, !dbg !557
@.str.14 = private unnamed_addr constant [5 x i8] c"dma2\00", align 1, !dbg !559
@.str.15 = private unnamed_addr constant [4 x i8] c"fpu\00", align 1, !dbg !561
@__end_of_kernel_reserve = external dso_local global [0 x i8], align 1
@phys_initrd_start = external dso_local global i64, align 8
@phys_initrd_size = external dso_local global i64, align 8
@.str.16 = private unnamed_addr constant [46 x i8] c"\014setup: failed to memremap setup_data entry\0A\00", align 1, !dbg !582
@.str.17 = private unnamed_addr constant [49 x i8] c"\014setup: failed to memremap indirect setup_data\0A\00", align 1, !dbg !587
@trim_snb_memory.bad_pages = internal constant [5 x i64] [i64 537198592, i64 537985024, i64 538116096, i64 538148864, i64 1073758208], section ".init.rodata", align 16, !dbg !592
@.str.18 = private unnamed_addr constant [40 x i8] c"\017reserving inaccessible SNB gfx pages\0A\00", align 1, !dbg !600
@.str.19 = private unnamed_addr constant [29 x i8] c"\014failed to reserve 0x%08lx\0A\00", align 1, !dbg !605
@snb_gfx_workaround_needed.snb_ids = internal constant [7 x i16] [i16 258, i16 274, i16 290, i16 262, i16 278, i16 294, i16 266], section ".init.rodata", align 2, !dbg !610
@.str.20 = private unnamed_addr constant [60 x i8] c"\014Passed IMA kexec data, but CONFIG_IMA not set. Ignoring.\0A\00", align 1, !dbg !621
@.str.21 = private unnamed_addr constant [12 x i8] c"Kernel code\00", align 1, !dbg !626
@.str.22 = private unnamed_addr constant [14 x i8] c"Kernel rodata\00", align 1, !dbg !633
@.str.23 = private unnamed_addr constant [12 x i8] c"Kernel data\00", align 1, !dbg !638
@.str.24 = private unnamed_addr constant [11 x i8] c"Kernel bss\00", align 1, !dbg !642
@.str.25 = private unnamed_addr constant [59 x i8] c"\015Notice: NX (Execute Disable) protection missing in CPU!\0A\00", align 1, !dbg !649
@.str.26 = private unnamed_addr constant [43 x i8] c"\016NX (Execute Disable) protection: active\0A\00", align 1, !dbg !654
@_end = external dso_local global [0 x i8], align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"\014.text .data .bss are not marked as E820_TYPE_RAM!\0A\00", align 1, !dbg !659
@e820_table = external dso_local global ptr, align 8
@initrd_start = external dso_local global i64, align 8
@.str.28 = private unnamed_addr constant [36 x i8] c"\016RAMDISK: [mem %#010llx-%#010llx]\0A\00", align 1, !dbg !664
@initrd_end = external dso_local global i64, align 8
@.str.29 = private unnamed_addr constant [48 x i8] c"Cannot find place for new RAMDISK of size %lld\0A\00", align 1, !dbg !667
@.str.30 = private unnamed_addr constant [50 x i8] c"\016Allocated new RAMDISK: [mem %#010llx-%#010llx]\0A\00", align 1, !dbg !670
@.str.31 = private unnamed_addr constant [72 x i8] c"\016Move RAMDISK from [mem %#010llx-%#010llx] to [mem %#010llx-%#010llx]\0A\00", align 1, !dbg !675
@.str.32 = private unnamed_addr constant [60 x i8] c"\016crashkernel reservation failed - No suitable area found.\0A\00", align 1, !dbg !680
@.str.33 = private unnamed_addr constant [54 x i8] c"\016crashkernel reservation failed - memory is in use.\0A\00", align 1, !dbg !682
@.str.34 = private unnamed_addr constant [74 x i8] c"\016Reserving %ldMB of memory at %ldMB for crashkernel (System RAM: %ldMB)\0A\00", align 1, !dbg !687
@crashk_res = external dso_local global %struct.resource, align 8
@.str.35 = private unnamed_addr constant [73 x i8] c"\013Cannot reserve %ldMB crashkernel low memory, please try smaller size.\0A\00", align 1, !dbg !692
@.str.36 = private unnamed_addr constant [81 x i8] c"\016Reserving %ldMB of low memory at %ldMB for crashkernel (low RAM limit: %ldMB)\0A\00", align 1, !dbg !697
@crashk_low_res = external dso_local global %struct.resource, align 8
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 8
@kernel_offset_notifier = internal global %struct.notifier_block { ptr @dump_kernel_offset, ptr null, i32 0 }, align 8, !dbg !702
@.str.37 = private unnamed_addr constant [67 x i8] c"\010Kernel Offset: 0x%lx from 0x%lx (relocation range: 0x%lx-0x%lx)\0A\00", align 1, !dbg !715
@.str.38 = private unnamed_addr constant [27 x i8] c"\010Kernel Offset: disabled\0A\00", align 1, !dbg !720
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_boot_cpu_data386, ptr @__UNIQUE_ID___addressable_screen_info387, ptr @__UNIQUE_ID___addressable_edid_info388, ptr @__UNIQUE_ID___addressable___initstub__kmod_setup__393_1348_register_kernel_offset_dumper6394, ptr @__brk_dmi_alloc], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @extend_brk(i64 noundef %size, i64 noundef %align) #0 section ".init.text" align 16 !dbg !734 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  %ret = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !742, metadata !DIExpression()), !dbg !746
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !743, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !744, metadata !DIExpression()), !dbg !749
  %0 = load i64, ptr %align.addr, align 8, !dbg !750
  %sub = sub i64 %0, 1, !dbg !751
  store i64 %sub, ptr %mask, align 8, !dbg !749
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !752
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !745, metadata !DIExpression()), !dbg !753
  br label %do.body, !dbg !754

do.body:                                          ; preds = %entry
  %1 = load i64, ptr @_brk_start, align 8, !dbg !755
  %cmp = icmp eq i64 %1, 0, !dbg !755
  %lnot = xor i1 %cmp, true, !dbg !755
  %lnot1 = xor i1 %lnot, true, !dbg !755
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !755
  %conv = sext i32 %lnot.ext to i64, !dbg !755
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !755
  %tobool = icmp ne i64 %expval, 0, !dbg !755
  br i1 %tobool, label %if.then, label %if.end, !dbg !758

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !755

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !759

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !761

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !761

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !759

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 198, i32 0, i64 12) #15, !dbg !763, !srcloc !765
  br label %do.cond5, !dbg !763

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !763

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !759

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !759

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !759

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !758

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !758

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !766

do.body11:                                        ; preds = %do.end10
  %2 = load i64, ptr %align.addr, align 8, !dbg !767
  %3 = load i64, ptr %mask, align 8, !dbg !767
  %and = and i64 %2, %3, !dbg !767
  %tobool12 = icmp ne i64 %and, 0, !dbg !767
  %lnot13 = xor i1 %tobool12, true, !dbg !767
  %lnot15 = xor i1 %lnot13, true, !dbg !767
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !767
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !767
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !767
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !767
  br i1 %tobool19, label %if.then20, label %if.end30, !dbg !770

if.then20:                                        ; preds = %do.body11
  br label %do.body21, !dbg !767

do.body21:                                        ; preds = %if.then20
  br label %do.body22, !dbg !771

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !773

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !773

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !771

do.body25:                                        ; preds = %do.end24
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 199, i32 0, i64 12) #15, !dbg !775, !srcloc !777
  br label %do.cond26, !dbg !775

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !775

do.end27:                                         ; preds = %do.cond26
  unreachable, !dbg !771

do.cond28:                                        ; No predecessors!
  br label %do.end29, !dbg !771

do.end29:                                         ; preds = %do.cond28
  br label %if.end30, !dbg !771

if.end30:                                         ; preds = %do.end29, %do.body11
  br label %do.cond31, !dbg !770

do.cond31:                                        ; preds = %if.end30
  br label %do.end32, !dbg !770

do.end32:                                         ; preds = %do.cond31
  %4 = load i64, ptr @_brk_end, align 8, !dbg !778
  %5 = load i64, ptr %mask, align 8, !dbg !779
  %add = add i64 %4, %5, !dbg !780
  %6 = load i64, ptr %mask, align 8, !dbg !781
  %not = xor i64 %6, -1, !dbg !782
  %and33 = and i64 %add, %not, !dbg !783
  store i64 %and33, ptr @_brk_end, align 8, !dbg !784
  br label %do.body34, !dbg !785

do.body34:                                        ; preds = %do.end32
  %7 = load i64, ptr @_brk_end, align 8, !dbg !786
  %8 = load i64, ptr %size.addr, align 8, !dbg !786
  %add35 = add i64 %7, %8, !dbg !786
  %9 = inttoptr i64 %add35 to ptr, !dbg !786
  %cmp36 = icmp ugt ptr %9, @__brk_limit, !dbg !786
  %lnot38 = xor i1 %cmp36, true, !dbg !786
  %lnot40 = xor i1 %lnot38, true, !dbg !786
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !786
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !786
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !786
  %tobool44 = icmp ne i64 %expval43, 0, !dbg !786
  br i1 %tobool44, label %if.then45, label %if.end55, !dbg !789

if.then45:                                        ; preds = %do.body34
  br label %do.body46, !dbg !786

do.body46:                                        ; preds = %if.then45
  br label %do.body47, !dbg !790

do.body47:                                        ; preds = %do.body46
  br label %do.cond48, !dbg !792

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !792

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !790

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 202, i32 0, i64 12) #15, !dbg !794, !srcloc !796
  br label %do.cond51, !dbg !794

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !794

do.end52:                                         ; preds = %do.cond51
  unreachable, !dbg !790

do.cond53:                                        ; No predecessors!
  br label %do.end54, !dbg !790

do.end54:                                         ; preds = %do.cond53
  br label %if.end55, !dbg !790

if.end55:                                         ; preds = %do.end54, %do.body34
  br label %do.cond56, !dbg !789

do.cond56:                                        ; preds = %if.end55
  br label %do.end57, !dbg !789

do.end57:                                         ; preds = %do.cond56
  %10 = load i64, ptr @_brk_end, align 8, !dbg !797
  %11 = inttoptr i64 %10 to ptr, !dbg !798
  store ptr %11, ptr %ret, align 8, !dbg !799
  %12 = load i64, ptr %size.addr, align 8, !dbg !800
  %13 = load i64, ptr @_brk_end, align 8, !dbg !801
  %add58 = add i64 %13, %12, !dbg !801
  store i64 %add58, ptr @_brk_end, align 8, !dbg !801
  %14 = load ptr, ptr %ret, align 8, !dbg !802
  %15 = load i64, ptr %size.addr, align 8, !dbg !803
  call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 %15, i1 false), !dbg !804
  %16 = load ptr, ptr %ret, align 8, !dbg !805
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !806
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !806
  ret ptr %16, !dbg !807
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @reserve_standard_io_resources() #0 section ".init.text" align 16 !dbg !808 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !811
  call void @llvm.dbg.declare(metadata ptr %i, metadata !810, metadata !DIExpression()), !dbg !812
  store i32 0, ptr %i, align 4, !dbg !813
  br label %for.cond, !dbg !815

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !816
  %conv = sext i32 %0 to i64, !dbg !816
  %cmp = icmp ult i64 %conv, 10, !dbg !818
  br i1 %cmp, label %for.body, label %for.end, !dbg !819

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !820
  %idxprom = sext i32 %1 to i64, !dbg !821
  %arrayidx = getelementptr [10 x %struct.resource], ptr @standard_io_resources, i64 0, i64 %idxprom, !dbg !821
  %call = call i32 @request_resource(ptr noundef @ioport_resource, ptr noundef %arrayidx) #16, !dbg !822
  br label %for.inc, !dbg !822

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !dbg !823
  %inc = add i32 %2, 1, !dbg !823
  store i32 %inc, ptr %i, align 4, !dbg !823
  br label %for.cond, !dbg !824, !llvm.loop !825

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !829
  ret void, !dbg !829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !830 dso_local i32 @request_resource(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @x86_configure_nx() #6 align 16 !dbg !833 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !834

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.else, !dbg !835

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 52, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #16, !dbg !835
  br i1 %call, label %if.then, label %if.else, !dbg !834

if.then:                                          ; preds = %cond.false, %cond.true
  %0 = load i64, ptr @__supported_pte_mask, align 8, !dbg !837
  %or = or i64 %0, -9223372036854775808, !dbg !837
  store i64 %or, ptr @__supported_pte_mask, align 8, !dbg !837
  br label %if.end, !dbg !838

if.else:                                          ; preds = %cond.false, %cond.true
  %1 = load i64, ptr @__supported_pte_mask, align 8, !dbg !839
  %and = and i64 %1, 9223372036854775807, !dbg !839
  store i64 %and, ptr @__supported_pte_mask, align 8, !dbg !839
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !840
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !841 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !849, metadata !DIExpression()), !dbg !851
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !850, metadata !DIExpression()), !dbg !852
  %0 = load i64, ptr %nr.addr, align 8, !dbg !853
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !854
  br i1 %1, label %cond.true, label %cond.false, !dbg !854

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !855
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !856
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !857
  %conv = zext i1 %call to i32, !dbg !857
  br label %cond.end, !dbg !854

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !858
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !859
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !860
  %conv2 = zext i1 %call1 to i32, !dbg !860
  br label %cond.end, !dbg !854

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !854
  %tobool = icmp ne i32 %cond, 0, !dbg !854
  ret i1 %tobool, !dbg !861
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @setup_arch(ptr noundef %cmdline_p) #0 section ".init.text" align 16 !dbg !862 {
entry:
  %cmdline_p.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp78 = alloca i32, align 4
  %tmp83 = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  store ptr %cmdline_p, ptr %cmdline_p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline_p.addr, metadata !867, metadata !DIExpression()), !dbg !868
  br label %do.body, !dbg !869

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !871

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef @boot_command_line) #17, !dbg !869
  store i32 %call, ptr %tmp, align 4, !dbg !871
  %0 = load i32, ptr %tmp, align 4, !dbg !869
  %call1 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #16, !dbg !873
  %1 = zext i1 %call1 to i64, !dbg !873
  %cond = select i1 %call1, i32 52, i32 46, !dbg !873
  %conv = trunc i32 %cond to i8, !dbg !873
  store i8 %conv, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 5), align 1, !dbg !874
  call void @olpc_ofw_detect() #16, !dbg !875
  call void @idt_setup_early_traps() #16, !dbg !876
  call void @early_cpu_init() #16, !dbg !877
  call void @jump_label_init() #16, !dbg !878
  %call2 = call i32 @static_call_init() #17, !dbg !879
  call void @early_ioremap_init() #16, !dbg !880
  call void @setup_olpc_ofw_pgd() #16, !dbg !881
  %2 = load i16, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 5), align 1, !dbg !882
  %call3 = call i32 @old_decode_dev(i16 noundef zeroext %2) #16, !dbg !883
  store i32 %call3, ptr @ROOT_DEV, align 4, !dbg !884
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @screen_info, ptr align 1 @boot_params, i64 64, i1 false), !dbg !885
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @edid_info, ptr align 1 getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 16), i64 128, i1 false), !dbg !886
  %3 = load i16, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 4), align 1, !dbg !887
  %conv4 = zext i16 %3 to i64, !dbg !888
  store i64 %conv4, ptr @saved_video_mode, align 8, !dbg !889
  %4 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 13), align 1, !dbg !890
  %conv5 = zext i8 %4 to i32, !dbg !891
  store i32 %conv5, ptr @bootloader_type, align 4, !dbg !892
  %5 = load i32, ptr @bootloader_type, align 4, !dbg !893
  %shr = ashr i32 %5, 4, !dbg !895
  %cmp = icmp eq i32 %shr, 14, !dbg !896
  br i1 %cmp, label %if.then, label %if.end, !dbg !897

if.then:                                          ; preds = %do.end
  %6 = load i32, ptr @bootloader_type, align 4, !dbg !898
  %and = and i32 %6, 15, !dbg !898
  store i32 %and, ptr @bootloader_type, align 4, !dbg !898
  %7 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 22), align 1, !dbg !900
  %conv7 = zext i8 %7 to i32, !dbg !901
  %add = add i32 %conv7, 16, !dbg !902
  %shl = shl i32 %add, 4, !dbg !903
  %8 = load i32, ptr @bootloader_type, align 4, !dbg !904
  %or = or i32 %8, %shl, !dbg !904
  store i32 %or, ptr @bootloader_type, align 4, !dbg !904
  br label %if.end, !dbg !905

if.end:                                           ; preds = %if.then, %do.end
  %9 = load i32, ptr @bootloader_type, align 4, !dbg !906
  %and8 = and i32 %9, 15, !dbg !907
  store i32 %and8, ptr @bootloader_version, align 4, !dbg !908
  %10 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 21), align 1, !dbg !909
  %conv9 = zext i8 %10 to i32, !dbg !910
  %shl10 = shl i32 %conv9, 4, !dbg !911
  %11 = load i32, ptr @bootloader_version, align 4, !dbg !912
  %or11 = or i32 %11, %shl10, !dbg !912
  store i32 %or11, ptr @bootloader_version, align 4, !dbg !912
  %call12 = call i32 @strncmp(ptr noundef getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 17), ptr noundef @.str.2, i64 noundef 4) #16, !dbg !913
  %tobool = icmp ne i32 %call12, 0, !dbg !913
  br i1 %tobool, label %if.else, label %if.then13, !dbg !915

if.then13:                                        ; preds = %if.end
  call void @set_bit(i64 noundef 0, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #16, !dbg !916
  br label %if.end18, !dbg !918

if.else:                                          ; preds = %if.end
  %call14 = call i32 @strncmp(ptr noundef getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 17), ptr noundef @.str.3, i64 noundef 4) #16, !dbg !919
  %tobool15 = icmp ne i32 %call14, 0, !dbg !919
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !921

if.then16:                                        ; preds = %if.else
  call void @set_bit(i64 noundef 0, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #16, !dbg !922
  call void @set_bit(i64 noundef 5, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #16, !dbg !924
  br label %if.end17, !dbg !925

if.end17:                                         ; preds = %if.then16, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then13
  %12 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 3), align 8, !dbg !926
  call void %12() #16, !dbg !927
  call void @early_reserve_memory() #17, !dbg !928
  %13 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 5), align 1, !dbg !929
  %conv19 = zext i8 %13 to i32, !dbg !930
  %sh_prom = zext i32 %conv19 to i64, !dbg !931
  %shl20 = shl i64 1, %sh_prom, !dbg !931
  %sub = sub i64 %shl20, 1, !dbg !932
  store i64 %sub, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 1), align 8, !dbg !933
  call void @e820__memory_setup() #16, !dbg !934
  call void @parse_setup_data() #17, !dbg !935
  call void @copy_edd() #17, !dbg !936
  %14 = load i16, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 1), align 1, !dbg !937
  %tobool21 = icmp ne i16 %14, 0, !dbg !939
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !940

if.then22:                                        ; preds = %if.end18
  %15 = load i32, ptr @root_mountflags, align 4, !dbg !941
  %and23 = and i32 %15, -2, !dbg !941
  store i32 %and23, ptr @root_mountflags, align 4, !dbg !941
  br label %if.end24, !dbg !942

if.end24:                                         ; preds = %if.then22, %if.end18
  %16 = load i64, ptr @_brk_end, align 8, !dbg !943
  %17 = inttoptr i64 %16 to ptr, !dbg !944
  call void @setup_initial_init_mm(ptr noundef @_text, ptr noundef @_etext, ptr noundef @_edata, ptr noundef %17) #16, !dbg !945
  %18 = load i64, ptr @phys_base, align 8, !dbg !946
  %add25 = add i64 sub (i64 ptrtoint (ptr @_text to i64), i64 -2147483648), %18, !dbg !946
  store i64 %add25, ptr @code_resource, align 8, !dbg !947
  %19 = load i64, ptr @phys_base, align 8, !dbg !948
  %add26 = add i64 sub (i64 ptrtoint (ptr @_etext to i64), i64 -2147483648), %19, !dbg !948
  %sub27 = sub i64 %add26, 1, !dbg !949
  store i64 %sub27, ptr getelementptr inbounds (%struct.resource, ptr @code_resource, i32 0, i32 1), align 8, !dbg !950
  %20 = load i64, ptr @phys_base, align 8, !dbg !951
  %add28 = add i64 sub (i64 ptrtoint (ptr @__start_rodata to i64), i64 -2147483648), %20, !dbg !951
  store i64 %add28, ptr @rodata_resource, align 8, !dbg !952
  %21 = load i64, ptr @phys_base, align 8, !dbg !953
  %add29 = add i64 sub (i64 ptrtoint (ptr @__end_rodata to i64), i64 -2147483648), %21, !dbg !953
  %sub30 = sub i64 %add29, 1, !dbg !954
  store i64 %sub30, ptr getelementptr inbounds (%struct.resource, ptr @rodata_resource, i32 0, i32 1), align 8, !dbg !955
  %22 = load i64, ptr @phys_base, align 8, !dbg !956
  %add31 = add i64 sub (i64 ptrtoint (ptr @_sdata to i64), i64 -2147483648), %22, !dbg !956
  store i64 %add31, ptr @data_resource, align 8, !dbg !957
  %23 = load i64, ptr @phys_base, align 8, !dbg !958
  %add32 = add i64 sub (i64 ptrtoint (ptr @_edata to i64), i64 -2147483648), %23, !dbg !958
  %sub33 = sub i64 %add32, 1, !dbg !959
  store i64 %sub33, ptr getelementptr inbounds (%struct.resource, ptr @data_resource, i32 0, i32 1), align 8, !dbg !960
  %24 = load i64, ptr @phys_base, align 8, !dbg !961
  %add34 = add i64 sub (i64 ptrtoint (ptr @__bss_start to i64), i64 -2147483648), %24, !dbg !961
  store i64 %add34, ptr @bss_resource, align 8, !dbg !962
  %25 = load i64, ptr @phys_base, align 8, !dbg !963
  %add35 = add i64 sub (i64 ptrtoint (ptr @__bss_stop to i64), i64 -2147483648), %25, !dbg !963
  %sub36 = sub i64 %add35, 1, !dbg !964
  store i64 %sub36, ptr getelementptr inbounds (%struct.resource, ptr @bss_resource, i32 0, i32 1), align 8, !dbg !965
  %call37 = call i64 @strscpy(ptr noundef @command_line, ptr noundef @boot_command_line, i64 noundef 2048) #16, !dbg !966
  %26 = load ptr, ptr %cmdline_p.addr, align 8, !dbg !967
  store ptr @command_line, ptr %26, align 8, !dbg !968
  call void @x86_configure_nx() #16, !dbg !969
  call void @parse_early_param() #17, !dbg !970
  %call38 = call zeroext i1 @efi_enabled(i32 noundef 0) #16, !dbg !971
  br i1 %call38, label %if.then39, label %if.end41, !dbg !973

if.then39:                                        ; preds = %if.end24
  %call40 = call i32 @efi_memblock_x86_reserve_range() #17, !dbg !974
  br label %if.end41, !dbg !974

if.end41:                                         ; preds = %if.then39, %if.end24
  call void @x86_report_nx() #17, !dbg !975
  call void @apic_setup_apic_calls() #17, !dbg !976
  %call42 = call i32 @acpi_mps_check() #16, !dbg !977
  %tobool43 = icmp ne i32 %call42, 0, !dbg !977
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !979

if.then44:                                        ; preds = %if.end41
  store i8 1, ptr @apic_is_disabled, align 1, !dbg !980
  call void @setup_clear_cpu_cap(i32 noundef 9) #16, !dbg !982
  br label %if.end45, !dbg !983

if.end45:                                         ; preds = %if.then44, %if.end41
  call void @e820__reserve_setup_data() #16, !dbg !984
  call void @e820__finish_early_params() #16, !dbg !985
  %call46 = call zeroext i1 @efi_enabled(i32 noundef 0) #16, !dbg !986
  br i1 %call46, label %if.then47, label %if.end48, !dbg !988

if.then47:                                        ; preds = %if.end45
  call void @efi_init() #16, !dbg !989
  br label %if.end48, !dbg !989

if.end48:                                         ; preds = %if.then47, %if.end45
  call void @reserve_ibft_region() #16, !dbg !990
  %27 = load ptr, ptr getelementptr inbounds (%struct.x86_init_resources, ptr @x86_init, i32 0, i32 3), align 8, !dbg !991
  call void %27() #16, !dbg !992
  call void @init_hypervisor_platform() #16, !dbg !993
  call void @tsc_early_init() #16, !dbg !994
  %28 = load ptr, ptr @x86_init, align 8, !dbg !995
  call void %28() #16, !dbg !996
  %call49 = call i32 @insert_resource(ptr noundef @iomem_resource, ptr noundef @code_resource) #16, !dbg !997
  %call50 = call i32 @insert_resource(ptr noundef @iomem_resource, ptr noundef @rodata_resource) #16, !dbg !998
  %call51 = call i32 @insert_resource(ptr noundef @iomem_resource, ptr noundef @data_resource) #16, !dbg !999
  %call52 = call i32 @insert_resource(ptr noundef @iomem_resource, ptr noundef @bss_resource) #16, !dbg !1000
  call void @e820_add_kernel_range() #17, !dbg !1001
  call void @trim_bios_range() #17, !dbg !1002
  call void @early_gart_iommu_check() #16, !dbg !1003
  %call53 = call i64 @e820__end_of_ram_pfn() #16, !dbg !1004
  store i64 %call53, ptr @max_pfn, align 8, !dbg !1005
  call void @cache_bp_init() #16, !dbg !1006
  %29 = load i64, ptr @max_pfn, align 8, !dbg !1007
  %call54 = call i32 @mtrr_trim_uncached_memory(i64 noundef %29) #16, !dbg !1009
  %tobool55 = icmp ne i32 %call54, 0, !dbg !1009
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !1010

if.then56:                                        ; preds = %if.end48
  %call57 = call i64 @e820__end_of_ram_pfn() #16, !dbg !1011
  store i64 %call57, ptr @max_pfn, align 8, !dbg !1012
  br label %if.end58, !dbg !1013

if.end58:                                         ; preds = %if.then56, %if.end48
  %30 = load i64, ptr @max_pfn, align 8, !dbg !1014
  store i64 %30, ptr @max_possible_pfn, align 8, !dbg !1015
  call void @kernel_randomize_memory() #16, !dbg !1016
  call void @check_x2apic() #17, !dbg !1017
  %31 = load i64, ptr @max_pfn, align 8, !dbg !1018
  %cmp59 = icmp ugt i64 %31, 1048576, !dbg !1020
  br i1 %cmp59, label %if.then61, label %if.else63, !dbg !1021

if.then61:                                        ; preds = %if.end58
  %call62 = call i64 @e820__end_of_low_ram_pfn() #16, !dbg !1022
  store i64 %call62, ptr @max_low_pfn, align 8, !dbg !1023
  br label %if.end64, !dbg !1024

if.else63:                                        ; preds = %if.end58
  %32 = load i64, ptr @max_pfn, align 8, !dbg !1025
  store i64 %32, ptr @max_low_pfn, align 8, !dbg !1026
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.then61
  %33 = load i64, ptr @max_pfn, align 8, !dbg !1027
  %mul = mul i64 %33, 4096, !dbg !1027
  %sub65 = sub i64 %mul, 1, !dbg !1027
  %34 = load i64, ptr @page_offset_base, align 8, !dbg !1027
  %add66 = add i64 %sub65, %34, !dbg !1027
  %35 = inttoptr i64 %add66 to ptr, !dbg !1027
  %add.ptr = getelementptr i8, ptr %35, i64 1, !dbg !1028
  store ptr %add.ptr, ptr @high_memory, align 8, !dbg !1029
  call void @find_smp_config() #16, !dbg !1030
  call void @early_alloc_pgt_buf() #16, !dbg !1031
  call void @reserve_brk() #17, !dbg !1032
  call void @cleanup_highmap() #16, !dbg !1033
  call void @memblock_set_current_limit(i64 noundef 1048576) #16, !dbg !1034
  call void @e820__memblock_setup() #16, !dbg !1035
  call void @sev_setup_arch() #17, !dbg !1036
  call void @cc_random_init() #16, !dbg !1037
  call void @efi_fake_memmap() #16, !dbg !1038
  call void @efi_find_mirror() #16, !dbg !1039
  call void @efi_esrt_init() #17, !dbg !1040
  call void @efi_mokvar_table_init() #16, !dbg !1041
  call void @efi_reserve_boot_services() #16, !dbg !1042
  call void @e820__memblock_alloc_reserved_mpc_new() #16, !dbg !1043
  call void @setup_bios_corruption_check() #16, !dbg !1044
  %36 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 13), align 8, !dbg !1045
  call void %36() #16, !dbg !1046
  call void @init_mem_mapping() #16, !dbg !1047
  call void @idt_setup_early_pf() #16, !dbg !1048
  %call67 = call i64 @__read_cr4() #16, !dbg !1049
  %and68 = and i64 %call67, -131073, !dbg !1050
  store i64 %and68, ptr @mmu_cr4_features, align 8, !dbg !1051
  %call69 = call i64 @get_max_mapped() #16, !dbg !1052
  call void @memblock_set_current_limit(i64 noundef %call69) #16, !dbg !1053
  %37 = load i32, ptr @init_ohci1394_dma_early, align 4, !dbg !1054
  %tobool70 = icmp ne i32 %37, 0, !dbg !1054
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !1056

if.then71:                                        ; preds = %if.end64
  call void @init_ohci1394_dma_on_all_controllers() #17, !dbg !1057
  br label %if.end72, !dbg !1057

if.end72:                                         ; preds = %if.then71, %if.end64
  call void @setup_log_buf(i32 noundef 1) #17, !dbg !1058
  %call73 = call zeroext i1 @efi_enabled(i32 noundef 0) #16, !dbg !1059
  br i1 %call73, label %if.then74, label %if.end89, !dbg !1061

if.then74:                                        ; preds = %if.end72
  %38 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 24), align 1, !dbg !1062
  %conv75 = zext i8 %38 to i32, !dbg !1064
  switch i32 %conv75, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb80
  ], !dbg !1065

sw.bb:                                            ; preds = %if.then74
  br label %do.body76, !dbg !1066

do.body76:                                        ; preds = %sw.bb
  br label %do.end77, !dbg !1069

do.end77:                                         ; preds = %do.body76
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #17, !dbg !1066
  store i32 %call79, ptr %tmp78, align 4, !dbg !1069
  %39 = load i32, ptr %tmp78, align 4, !dbg !1066
  br label %sw.epilog, !dbg !1071

sw.bb80:                                          ; preds = %if.then74
  br label %do.body81, !dbg !1072

do.body81:                                        ; preds = %sw.bb80
  br label %do.end82, !dbg !1074

do.end82:                                         ; preds = %do.body81
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #17, !dbg !1072
  store i32 %call84, ptr %tmp83, align 4, !dbg !1074
  %40 = load i32, ptr %tmp83, align 4, !dbg !1072
  br label %sw.epilog, !dbg !1076

sw.default:                                       ; preds = %if.then74
  br label %do.body85, !dbg !1077

do.body85:                                        ; preds = %sw.default
  br label %do.end86, !dbg !1079

do.end86:                                         ; preds = %do.body85
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #17, !dbg !1077
  store i32 %call88, ptr %tmp87, align 4, !dbg !1079
  %41 = load i32, ptr %tmp87, align 4, !dbg !1077
  br label %sw.epilog, !dbg !1081

sw.epilog:                                        ; preds = %do.end86, %do.end82, %do.end77
  br label %if.end89, !dbg !1082

if.end89:                                         ; preds = %sw.epilog, %if.end72
  call void @reserve_initrd() #17, !dbg !1083
  call void @acpi_table_upgrade() #16, !dbg !1084
  call void @acpi_boot_table_init() #16, !dbg !1085
  call void @vsmp_init() #16, !dbg !1086
  call void @io_delay_init() #16, !dbg !1087
  call void @early_platform_quirks() #16, !dbg !1088
  %call90 = call i32 @early_acpi_boot_init() #16, !dbg !1089
  call void @initmem_init() #16, !dbg !1090
  %42 = load i64, ptr @max_pfn_mapped, align 8, !dbg !1091
  %shl91 = shl i64 %42, 12, !dbg !1092
  call void @dma_contiguous_reserve(i64 noundef %shl91) #16, !dbg !1093
  br i1 false, label %cond.true, label %cond.false, !dbg !1094

cond.true:                                        ; preds = %if.end89
  br i1 true, label %if.then94, label %if.end95, !dbg !1095

cond.false:                                       ; preds = %if.end89
  %call92 = call zeroext i1 @arch_test_bit(i64 noundef 58, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #16, !dbg !1095
  br i1 %call92, label %if.then94, label %if.end95, !dbg !1094

if.then94:                                        ; preds = %cond.false, %cond.true
  call void @hugetlb_cma_reserve(i32 noundef 18) #17, !dbg !1097
  br label %if.end95, !dbg !1097

if.end95:                                         ; preds = %if.then94, %cond.false, %cond.true
  call void @reserve_crashkernel() #17, !dbg !1098
  call void @memblock_find_dma_reserve() #16, !dbg !1099
  %call96 = call i32 @early_xdbc_setup_hardware() #17, !dbg !1100
  %tobool97 = icmp ne i32 %call96, 0, !dbg !1100
  br i1 %tobool97, label %if.end99, label %if.then98, !dbg !1102

if.then98:                                        ; preds = %if.end95
  call void @early_xdbc_register_console() #17, !dbg !1103
  br label %if.end99, !dbg !1103

if.end99:                                         ; preds = %if.then98, %if.end95
  %43 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 4), align 8, !dbg !1104
  call void %43() #16, !dbg !1105
  call void @kasan_init() #16, !dbg !1106
  call void @sync_initial_page_table() #16, !dbg !1107
  br label %do.body100, !dbg !1108

do.body100:                                       ; preds = %if.end99
  br label %do.end101, !dbg !1109

do.end101:                                        ; preds = %do.body100
  call void @map_vsyscall() #16, !dbg !1111
  call void @x86_32_probe_apic() #16, !dbg !1112
  call void @early_quirks() #16, !dbg !1113
  %call102 = call i32 @acpi_boot_init() #16, !dbg !1114
  call void @x86_dtb_init() #16, !dbg !1115
  call void @get_smp_config() #16, !dbg !1116
  call void @init_apic_mappings() #16, !dbg !1117
  call void @prefill_possible_map() #16, !dbg !1118
  call void @init_cpu_to_node() #17, !dbg !1119
  call void @init_gi_nodes() #16, !dbg !1120
  call void @io_apic_init_mappings() #17, !dbg !1121
  %44 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 8, i32 1), align 8, !dbg !1122
  call void %44() #16, !dbg !1123
  call void @e820__reserve_resources() #16, !dbg !1124
  %45 = load i64, ptr @max_pfn, align 8, !dbg !1125
  call void @e820__register_nosave_regions(i64 noundef %45) #16, !dbg !1126
  %46 = load ptr, ptr getelementptr inbounds (%struct.x86_init_resources, ptr @x86_init, i32 0, i32 1), align 8, !dbg !1127
  call void %46() #16, !dbg !1128
  call void @e820__setup_pci_gap() #16, !dbg !1129
  %call103 = call zeroext i1 @efi_enabled(i32 noundef 0) #16, !dbg !1130
  br i1 %call103, label %lor.lhs.false, label %if.then107, !dbg !1132

lor.lhs.false:                                    ; preds = %do.end101
  %call104 = call i32 @efi_mem_type(i64 noundef 655360) #16, !dbg !1133
  %cmp105 = icmp ne i32 %call104, 7, !dbg !1134
  br i1 %cmp105, label %if.then107, label %if.end108, !dbg !1135

if.then107:                                       ; preds = %lor.lhs.false, %do.end101
  store ptr @vga_con, ptr @conswitchp, align 8, !dbg !1136
  br label %if.end108, !dbg !1137

if.end108:                                        ; preds = %if.then107, %lor.lhs.false
  %47 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 3, i32 1), align 8, !dbg !1138
  call void %47() #16, !dbg !1139
  %48 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 5, i32 2), align 8, !dbg !1140
  call void %48() #16, !dbg !1141
  call void @therm_lvt_init() #16, !dbg !1142
  %call109 = call i32 @mcheck_init() #16, !dbg !1143
  %call110 = call i32 @register_refined_jiffies(i64 noundef 1193182) #16, !dbg !1144
  %call111 = call zeroext i1 @efi_enabled(i32 noundef 0) #16, !dbg !1145
  br i1 %call111, label %if.then112, label %if.end113, !dbg !1147

if.then112:                                       ; preds = %if.end108
  call void @efi_apply_memmap_quirks() #17, !dbg !1148
  br label %if.end113, !dbg !1148

if.end113:                                        ; preds = %if.then112, %if.end108
  call void @unwind_init() #16, !dbg !1149
  ret void, !dbg !1150
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1151 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #7 align 16 !dbg !1155 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !1160, metadata !DIExpression()), !dbg !1163
  %0 = load i16, ptr %bit.addr, align 2, !dbg !1164
  %1 = load i16, ptr %bit.addr, align 2, !dbg !1165
  %conv = zext i16 %1 to i32, !dbg !1165
  %and = and i32 %conv, 7, !dbg !1166
  %shl = shl i32 1, %and, !dbg !1167
  %2 = load i16, ptr %bit.addr, align 2, !dbg !1168
  %conv1 = zext i16 %2 to i32, !dbg !1168
  %shr = ashr i32 %conv1, 3, !dbg !1169
  %idxprom = sext i32 %shr to i64, !dbg !1170
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !1170
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #15
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !1171, !srcloc !1172

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !1171

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !1161), !dbg !1173
  store i1 true, ptr %retval, align 1, !dbg !1174
  br label %return, !dbg !1174

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !1162), !dbg !1175
  store i1 false, ptr %retval, align 1, !dbg !1176
  br label %return, !dbg !1176

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !1177
  ret i1 %3, !dbg !1177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @olpc_ofw_detect() #9 align 16 !dbg !1178 {
entry:
  ret void, !dbg !1180
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1181 dso_local void @idt_setup_early_traps() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1183 dso_local void @early_cpu_init() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1184 dso_local void @jump_label_init() #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1186 dso_local i32 @static_call_init() #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1190 dso_local void @early_ioremap_init() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @setup_olpc_ofw_pgd() #9 align 16 !dbg !1192 {
entry:
  ret void, !dbg !1193
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @old_decode_dev(i16 noundef zeroext %val) #7 align 16 !dbg !1194 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1201, metadata !DIExpression()), !dbg !1202
  %0 = load i16, ptr %val.addr, align 2, !dbg !1203
  %conv = zext i16 %0 to i32, !dbg !1203
  %shr = ashr i32 %conv, 8, !dbg !1203
  %and = and i32 %shr, 255, !dbg !1203
  %shl = shl i32 %and, 20, !dbg !1203
  %1 = load i16, ptr %val.addr, align 2, !dbg !1203
  %conv1 = zext i16 %1 to i32, !dbg !1203
  %and2 = and i32 %conv1, 255, !dbg !1203
  %or = or i32 %shl, %and2, !dbg !1203
  ret i32 %or, !dbg !1204
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1205 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1209 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1215, metadata !DIExpression()), !dbg !1217
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1216, metadata !DIExpression()), !dbg !1218
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1219
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1220
  %div = sdiv i64 %1, 64, !dbg !1220
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1221
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !1222
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1223
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1224
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !1225
  ret void, !dbg !1226
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @early_reserve_memory() #0 section ".init.text" align 16 !dbg !1227 {
entry:
  %0 = load i64, ptr @phys_base, align 8, !dbg !1228
  %add = add i64 sub (i64 ptrtoint (ptr @_text to i64), i64 -2147483648), %0, !dbg !1228
  %call = call i32 @memblock_reserve(i64 noundef %add, i64 noundef sub (i64 ptrtoint (ptr @__end_of_kernel_reserve to i64), i64 ptrtoint (ptr @_text to i64))) #16, !dbg !1229
  %call1 = call i32 @memblock_reserve(i64 noundef 0, i64 noundef 65536) #16, !dbg !1230
  call void @early_reserve_initrd() #17, !dbg !1231
  call void @memblock_x86_reserve_range_setup_data() #17, !dbg !1232
  call void @reserve_bios_regions() #16, !dbg !1233
  call void @trim_snb_memory() #17, !dbg !1234
  ret void, !dbg !1235
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1236 dso_local void @e820__memory_setup() #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @parse_setup_data() #0 section ".init.text" align 16 !dbg !1238 {
entry:
  %data = alloca ptr, align 8
  %pa_data = alloca i64, align 8
  %pa_next = alloca i64, align 8
  %data_len = alloca i32, align 4
  %data_type = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !1256
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1240, metadata !DIExpression()), !dbg !1257
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_data) #15, !dbg !1258
  call void @llvm.dbg.declare(metadata ptr %pa_data, metadata !1251, metadata !DIExpression()), !dbg !1259
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_next) #15, !dbg !1258
  call void @llvm.dbg.declare(metadata ptr %pa_next, metadata !1252, metadata !DIExpression()), !dbg !1260
  %0 = load i64, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 34), align 1, !dbg !1261
  store i64 %0, ptr %pa_data, align 8, !dbg !1262
  br label %while.cond, !dbg !1263

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i64, ptr %pa_data, align 8, !dbg !1264
  %tobool = icmp ne i64 %1, 0, !dbg !1263
  br i1 %tobool, label %while.body, label %while.end, !dbg !1263

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %data_len) #15, !dbg !1265
  call void @llvm.dbg.declare(metadata ptr %data_len, metadata !1253, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 4, ptr %data_type) #15, !dbg !1265
  call void @llvm.dbg.declare(metadata ptr %data_type, metadata !1255, metadata !DIExpression()), !dbg !1267
  %2 = load i64, ptr %pa_data, align 8, !dbg !1268
  %call = call ptr @early_memremap(i64 noundef %2, i64 noundef 16) #16, !dbg !1269
  store ptr %call, ptr %data, align 8, !dbg !1270
  %3 = load ptr, ptr %data, align 8, !dbg !1271
  %len = getelementptr inbounds %struct.setup_data, ptr %3, i32 0, i32 2, !dbg !1272
  %4 = load i32, ptr %len, align 4, !dbg !1272
  %conv = zext i32 %4 to i64, !dbg !1271
  %add = add i64 %conv, 16, !dbg !1273
  %conv1 = trunc i64 %add to i32, !dbg !1271
  store i32 %conv1, ptr %data_len, align 4, !dbg !1274
  %5 = load ptr, ptr %data, align 8, !dbg !1275
  %type = getelementptr inbounds %struct.setup_data, ptr %5, i32 0, i32 1, !dbg !1276
  %6 = load i32, ptr %type, align 8, !dbg !1276
  store i32 %6, ptr %data_type, align 4, !dbg !1277
  %7 = load ptr, ptr %data, align 8, !dbg !1278
  %next = getelementptr inbounds %struct.setup_data, ptr %7, i32 0, i32 0, !dbg !1279
  %8 = load i64, ptr %next, align 8, !dbg !1279
  store i64 %8, ptr %pa_next, align 8, !dbg !1280
  %9 = load ptr, ptr %data, align 8, !dbg !1281
  call void @early_memunmap(ptr noundef %9, i64 noundef 16) #16, !dbg !1282
  %10 = load i32, ptr %data_type, align 4, !dbg !1283
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 8, label %sw.bb4
    i32 9, label %sw.bb5
  ], !dbg !1284

sw.bb:                                            ; preds = %while.body
  %11 = load i64, ptr %pa_data, align 8, !dbg !1285
  %12 = load i32, ptr %data_len, align 4, !dbg !1287
  call void @e820__memory_setup_extended(i64 noundef %11, i32 noundef %12) #16, !dbg !1288
  br label %sw.epilog, !dbg !1289

sw.bb2:                                           ; preds = %while.body
  %13 = load i64, ptr %pa_data, align 8, !dbg !1290
  call void @add_dtb(i64 noundef %13) #16, !dbg !1291
  br label %sw.epilog, !dbg !1292

sw.bb3:                                           ; preds = %while.body
  %14 = load i64, ptr %pa_data, align 8, !dbg !1293
  %15 = load i32, ptr %data_len, align 4, !dbg !1294
  call void @parse_efi_setup(i64 noundef %14, i32 noundef %15) #16, !dbg !1295
  br label %sw.epilog, !dbg !1296

sw.bb4:                                           ; preds = %while.body
  %16 = load i64, ptr %pa_data, align 8, !dbg !1297
  call void @add_early_ima_buffer(i64 noundef %16) #17, !dbg !1298
  br label %sw.epilog, !dbg !1299

sw.bb5:                                           ; preds = %while.body
  %17 = load i64, ptr %pa_data, align 8, !dbg !1300
  %18 = load i32, ptr %data_len, align 4, !dbg !1301
  %conv6 = zext i32 %18 to i64, !dbg !1301
  %call7 = call ptr @early_memremap(i64 noundef %17, i64 noundef %conv6) #16, !dbg !1302
  store ptr %call7, ptr %data, align 8, !dbg !1303
  %19 = load ptr, ptr %data, align 8, !dbg !1304
  %data8 = getelementptr inbounds %struct.setup_data, ptr %19, i32 0, i32 3, !dbg !1305
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data8, i64 0, i64 0, !dbg !1304
  %20 = load ptr, ptr %data, align 8, !dbg !1306
  %len9 = getelementptr inbounds %struct.setup_data, ptr %20, i32 0, i32 2, !dbg !1307
  %21 = load i32, ptr %len9, align 4, !dbg !1307
  %conv10 = zext i32 %21 to i64, !dbg !1306
  call void @add_bootloader_randomness(ptr noundef %arraydecay, i64 noundef %conv10) #17, !dbg !1308
  %22 = load ptr, ptr %data, align 8, !dbg !1309
  %data11 = getelementptr inbounds %struct.setup_data, ptr %22, i32 0, i32 3, !dbg !1310
  %arraydecay12 = getelementptr inbounds [0 x i8], ptr %data11, i64 0, i64 0, !dbg !1309
  %23 = load ptr, ptr %data, align 8, !dbg !1311
  %len13 = getelementptr inbounds %struct.setup_data, ptr %23, i32 0, i32 2, !dbg !1312
  %24 = load i32, ptr %len13, align 4, !dbg !1312
  %conv14 = zext i32 %24 to i64, !dbg !1311
  call void @memzero_explicit(ptr noundef %arraydecay12, i64 noundef %conv14) #16, !dbg !1313
  %25 = load ptr, ptr %data, align 8, !dbg !1314
  %len15 = getelementptr inbounds %struct.setup_data, ptr %25, i32 0, i32 2, !dbg !1315
  call void @memzero_explicit(ptr noundef %len15, i64 noundef 4) #16, !dbg !1316
  %26 = load ptr, ptr %data, align 8, !dbg !1317
  %27 = load i32, ptr %data_len, align 4, !dbg !1318
  %conv16 = zext i32 %27 to i64, !dbg !1318
  call void @early_memunmap(ptr noundef %26, i64 noundef %conv16) #16, !dbg !1319
  br label %sw.epilog, !dbg !1320

sw.default:                                       ; preds = %while.body
  br label %sw.epilog, !dbg !1321

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %28 = load i64, ptr %pa_next, align 8, !dbg !1322
  store i64 %28, ptr %pa_data, align 8, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 4, ptr %data_type) #15, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 4, ptr %data_len) #15, !dbg !1324
  br label %while.cond, !dbg !1263, !llvm.loop !1325

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_next) #15, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_data) #15, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !1326
  ret void, !dbg !1326
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @copy_edd() #11 section ".init.text" align 16 !dbg !1327 {
entry:
  ret void, !dbg !1328
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1329 dso_local void @setup_initial_init_mm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1333 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1339 dso_local void @parse_early_param() #8 section ".init.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_enabled(i32 noundef %feature) #9 align 16 !dbg !1341 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !1345, metadata !DIExpression()), !dbg !1346
  %0 = load i32, ptr %feature.addr, align 4, !dbg !1347
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1347
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1347

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0) to i32, !dbg !1347
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1347
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !1347

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !1347

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28), align 8, !dbg !1347
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !1347
  br i1 %4, label %cond.true, label %cond.false, !dbg !1347

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %feature.addr, align 4, !dbg !1347
  %conv4 = sext i32 %5 to i64, !dbg !1347
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #16, !dbg !1347
  %conv5 = zext i1 %call to i32, !dbg !1347
  br label %cond.end, !dbg !1347

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %feature.addr, align 4, !dbg !1347
  %conv6 = sext i32 %6 to i64, !dbg !1347
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #16, !dbg !1347
  %conv8 = zext i1 %call7 to i32, !dbg !1347
  br label %cond.end, !dbg !1347

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !1347
  %cmp = icmp ne i32 %cond, 0, !dbg !1348
  ret i1 %cmp, !dbg !1349
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1350 dso_local i32 @efi_memblock_x86_reserve_range() #8 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @x86_report_nx() #0 section ".init.text" align 16 !dbg !1352 {
entry:
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !1353

cond.true:                                        ; preds = %entry
  br i1 true, label %if.else, label %if.then, !dbg !1354

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 52, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #16, !dbg !1354
  br i1 %call, label %if.else, label %if.then, !dbg !1353

if.then:                                          ; preds = %cond.false, %cond.true
  br label %do.body, !dbg !1356

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !1359

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.25) #17, !dbg !1356
  store i32 %call1, ptr %tmp, align 4, !dbg !1359
  %0 = load i32, ptr %tmp, align 4, !dbg !1356
  br label %if.end, !dbg !1361

if.else:                                          ; preds = %cond.false, %cond.true
  br label %do.body2, !dbg !1362

do.body2:                                         ; preds = %if.else
  br label %do.end3, !dbg !1365

do.end3:                                          ; preds = %do.body2
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.26) #17, !dbg !1362
  store i32 %call5, ptr %tmp4, align 4, !dbg !1365
  %1 = load i32, ptr %tmp4, align 4, !dbg !1362
  br label %if.end

if.end:                                           ; preds = %do.end3, %do.end
  ret void, !dbg !1367
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1368 dso_local void @apic_setup_apic_calls() #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1370 dso_local i32 @acpi_mps_check() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1372 dso_local void @setup_clear_cpu_cap(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1375 dso_local void @e820__reserve_setup_data() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1376 dso_local void @e820__finish_early_params() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1377 dso_local void @efi_init() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reserve_ibft_region() #9 align 16 !dbg !1378 {
entry:
  ret void, !dbg !1380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1381 dso_local void @init_hypervisor_platform() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1383 dso_local void @tsc_early_init() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1385 dso_local i32 @insert_resource(ptr noundef, ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @e820_add_kernel_range() #0 section ".init.text" align 16 !dbg !1386 {
entry:
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #15, !dbg !1390
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1388, metadata !DIExpression()), !dbg !1391
  %0 = load i64, ptr @phys_base, align 8, !dbg !1392
  %add = add i64 sub (i64 ptrtoint (ptr @_text to i64), i64 -2147483648), %0, !dbg !1392
  store i64 %add, ptr %start, align 8, !dbg !1391
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #15, !dbg !1393
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1389, metadata !DIExpression()), !dbg !1394
  %1 = load i64, ptr @phys_base, align 8, !dbg !1395
  %add1 = add i64 sub (i64 ptrtoint (ptr @_end to i64), i64 -2147483648), %1, !dbg !1395
  %2 = load i64, ptr %start, align 8, !dbg !1396
  %sub = sub i64 %add1, %2, !dbg !1397
  store i64 %sub, ptr %size, align 8, !dbg !1394
  %3 = load i64, ptr %start, align 8, !dbg !1398
  %4 = load i64, ptr %start, align 8, !dbg !1400
  %5 = load i64, ptr %size, align 8, !dbg !1401
  %add2 = add i64 %4, %5, !dbg !1402
  %call = call zeroext i1 @e820__mapped_all(i64 noundef %3, i64 noundef %add2, i32 noundef 1) #16, !dbg !1403
  br i1 %call, label %if.then, label %if.end, !dbg !1404

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1405

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1406

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !1408

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1408

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.27) #17, !dbg !1406
  store i32 %call3, ptr %tmp, align 4, !dbg !1408
  %6 = load i32, ptr %tmp, align 4, !dbg !1406
  %7 = load i64, ptr %start, align 8, !dbg !1410
  %8 = load i64, ptr %size, align 8, !dbg !1411
  %call4 = call i64 @e820__range_remove(i64 noundef %7, i64 noundef %8, i32 noundef 1, i1 noundef zeroext false) #16, !dbg !1412
  %9 = load i64, ptr %start, align 8, !dbg !1413
  %10 = load i64, ptr %size, align 8, !dbg !1414
  call void @e820__range_add(i64 noundef %9, i64 noundef %10, i32 noundef 1) #16, !dbg !1415
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1416
  br label %cleanup, !dbg !1416

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #15, !dbg !1416
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #15, !dbg !1416
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1416

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @trim_bios_range() #0 section ".init.text" align 16 !dbg !1417 {
entry:
  %call = call i64 @e820__range_update(i64 noundef 0, i64 noundef 4096, i32 noundef 1, i32 noundef 2) #16, !dbg !1418
  %call1 = call i64 @e820__range_remove(i64 noundef 655360, i64 noundef 393216, i32 noundef 1, i1 noundef zeroext true) #16, !dbg !1419
  %0 = load ptr, ptr @e820_table, align 8, !dbg !1420
  %call2 = call i32 @e820__update_table(ptr noundef %0) #16, !dbg !1421
  ret void, !dbg !1422
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_gart_iommu_check() #9 align 16 !dbg !1423 {
entry:
  ret void, !dbg !1425
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1426 dso_local i64 @e820__end_of_ram_pfn() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1429 dso_local void @cache_bp_init() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1431 dso_local i32 @mtrr_trim_uncached_memory(i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1435 dso_local void @kernel_randomize_memory() #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1437 dso_local void @check_x2apic() #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1438 dso_local i64 @e820__end_of_low_ram_pfn() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @find_smp_config() #9 align 16 !dbg !1439 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 1, i32 1), align 8, !dbg !1441
  call void %0() #16, !dbg !1442
  ret void, !dbg !1443
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1444 dso_local void @early_alloc_pgt_buf() #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @reserve_brk() #0 section ".init.text" align 16 !dbg !1446 {
entry:
  %0 = load i64, ptr @_brk_end, align 8, !dbg !1447
  %1 = load i64, ptr @_brk_start, align 8, !dbg !1449
  %cmp = icmp ugt i64 %0, %1, !dbg !1450
  br i1 %cmp, label %if.then, label %if.end, !dbg !1451

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @_brk_start, align 8, !dbg !1452
  %sub = sub i64 %2, -2147483648, !dbg !1452
  %3 = load i64, ptr @phys_base, align 8, !dbg !1452
  %add = add i64 %sub, %3, !dbg !1452
  %4 = load i64, ptr @_brk_end, align 8, !dbg !1453
  %5 = load i64, ptr @_brk_start, align 8, !dbg !1454
  %sub1 = sub i64 %4, %5, !dbg !1455
  %call = call i32 @memblock_reserve(i64 noundef %add, i64 noundef %sub1) #16, !dbg !1456
  br label %if.end, !dbg !1456

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr @_brk_start, align 8, !dbg !1457
  ret void, !dbg !1458
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1459 dso_local void @cleanup_highmap() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1461 dso_local void @memblock_set_current_limit(i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1465 dso_local void @e820__memblock_setup() #5

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sev_setup_arch() #11 section ".init.text" align 16 !dbg !1466 {
entry:
  ret void, !dbg !1468
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cc_random_init() #9 align 16 !dbg !1469 {
entry:
  ret void, !dbg !1471
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @efi_fake_memmap() #9 align 16 !dbg !1472 {
entry:
  ret void, !dbg !1473
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1474 dso_local void @efi_find_mirror() #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1475 dso_local void @efi_esrt_init() #8 section ".init.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @efi_mokvar_table_init() #9 align 16 !dbg !1476 {
entry:
  ret void, !dbg !1477
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1478 dso_local void @efi_reserve_boot_services() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1479 dso_local void @e820__memblock_alloc_reserved_mpc_new() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1480 dso_local void @setup_bios_corruption_check() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1482 dso_local void @init_mem_mapping() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1483 dso_local void @idt_setup_early_pf() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__read_cr4() #9 align 16 !dbg !1484 {
entry:
  %call = call i64 @native_read_cr4() #16, !dbg !1486
  ret i64 %call, !dbg !1487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_max_mapped() #9 align 16 !dbg !1488 {
entry:
  %0 = load i64, ptr @max_pfn_mapped, align 8, !dbg !1492
  %shl = shl i64 %0, 12, !dbg !1493
  ret i64 %shl, !dbg !1494
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1495 dso_local void @init_ohci1394_dma_on_all_controllers() #8 section ".init.text"

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1497 dso_local void @setup_log_buf(i32 noundef) #8 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @reserve_initrd() #0 section ".init.text" align 16 !dbg !1500 {
entry:
  %ramdisk_image = alloca i64, align 8
  %ramdisk_size = alloca i64, align 8
  %ramdisk_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ramdisk_image) #15, !dbg !1505
  call void @llvm.dbg.declare(metadata ptr %ramdisk_image, metadata !1502, metadata !DIExpression()), !dbg !1506
  %call = call i64 @get_ramdisk_image() #17, !dbg !1507
  store i64 %call, ptr %ramdisk_image, align 8, !dbg !1506
  call void @llvm.lifetime.start.p0(i64 8, ptr %ramdisk_size) #15, !dbg !1508
  call void @llvm.dbg.declare(metadata ptr %ramdisk_size, metadata !1503, metadata !DIExpression()), !dbg !1509
  %call1 = call i64 @get_ramdisk_size() #17, !dbg !1510
  store i64 %call1, ptr %ramdisk_size, align 8, !dbg !1509
  call void @llvm.lifetime.start.p0(i64 8, ptr %ramdisk_end) #15, !dbg !1511
  call void @llvm.dbg.declare(metadata ptr %ramdisk_end, metadata !1504, metadata !DIExpression()), !dbg !1512
  %0 = load i64, ptr %ramdisk_image, align 8, !dbg !1513
  %1 = load i64, ptr %ramdisk_size, align 8, !dbg !1513
  %add = add i64 %0, %1, !dbg !1513
  %add2 = add i64 %add, 4095, !dbg !1513
  %and = and i64 %add2, -4096, !dbg !1513
  store i64 %and, ptr %ramdisk_end, align 8, !dbg !1512
  %2 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 13), align 1, !dbg !1514
  %tobool = icmp ne i8 %2, 0, !dbg !1516
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1517

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, ptr %ramdisk_image, align 8, !dbg !1518
  %tobool3 = icmp ne i64 %3, 0, !dbg !1518
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !1519

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i64, ptr %ramdisk_size, align 8, !dbg !1520
  %tobool5 = icmp ne i64 %4, 0, !dbg !1520
  br i1 %tobool5, label %if.end, label %if.then, !dbg !1521

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1522

if.end:                                           ; preds = %lor.lhs.false4
  store i64 0, ptr @initrd_start, align 8, !dbg !1523
  br label %do.body, !dbg !1524

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !1526

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1526

do.end:                                           ; preds = %do.cond
  %5 = load i64, ptr %ramdisk_image, align 8, !dbg !1524
  %6 = load i64, ptr %ramdisk_end, align 8, !dbg !1524
  %sub = sub i64 %6, 1, !dbg !1524
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.28, i64 noundef %5, i64 noundef %sub) #17, !dbg !1524
  store i32 %call6, ptr %tmp, align 4, !dbg !1526
  %7 = load i32, ptr %tmp, align 4, !dbg !1524
  %8 = load i64, ptr %ramdisk_image, align 8, !dbg !1528
  %shr = lshr i64 %8, 12, !dbg !1528
  %9 = load i64, ptr %ramdisk_end, align 8, !dbg !1530
  %shr7 = lshr i64 %9, 12, !dbg !1530
  %call8 = call zeroext i1 @pfn_range_is_mapped(i64 noundef %shr, i64 noundef %shr7) #16, !dbg !1531
  br i1 %call8, label %if.then9, label %if.end12, !dbg !1532

if.then9:                                         ; preds = %do.end
  %10 = load i64, ptr %ramdisk_image, align 8, !dbg !1533
  %11 = load i64, ptr @page_offset_base, align 8, !dbg !1535
  %add10 = add i64 %10, %11, !dbg !1536
  store i64 %add10, ptr @initrd_start, align 8, !dbg !1537
  %12 = load i64, ptr @initrd_start, align 8, !dbg !1538
  %13 = load i64, ptr %ramdisk_size, align 8, !dbg !1539
  %add11 = add i64 %12, %13, !dbg !1540
  store i64 %add11, ptr @initrd_end, align 8, !dbg !1541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1542

if.end12:                                         ; preds = %do.end
  call void @relocate_initrd() #17, !dbg !1543
  %14 = load i64, ptr %ramdisk_image, align 8, !dbg !1544
  %15 = load i64, ptr %ramdisk_end, align 8, !dbg !1545
  %16 = load i64, ptr %ramdisk_image, align 8, !dbg !1546
  %sub13 = sub i64 %15, %16, !dbg !1547
  %call14 = call i32 @memblock_phys_free(i64 noundef %14, i64 noundef %sub13) #16, !dbg !1548
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1549
  br label %cleanup, !dbg !1549

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ramdisk_end) #15, !dbg !1549
  call void @llvm.lifetime.end.p0(i64 8, ptr %ramdisk_size) #15, !dbg !1549
  call void @llvm.lifetime.end.p0(i64 8, ptr %ramdisk_image) #15, !dbg !1549
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1549

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1550 dso_local void @acpi_table_upgrade() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1551 dso_local void @acpi_boot_table_init() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1552 dso_local void @vsmp_init() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1553 dso_local void @io_delay_init() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1555 dso_local void @early_platform_quirks() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1556 dso_local i32 @early_acpi_boot_init() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1557 dso_local void @initmem_init() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_contiguous_reserve(i64 noundef %limit) #9 align 16 !dbg !1558 {
entry:
  %limit.addr = alloca i64, align 8
  store i64 %limit, ptr %limit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit.addr, metadata !1561, metadata !DIExpression()), !dbg !1562
  ret void, !dbg !1563
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @hugetlb_cma_reserve(i32 noundef %order) #11 section ".init.text" align 16 !dbg !1564 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, ptr %order.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !1567, metadata !DIExpression()), !dbg !1568
  ret void, !dbg !1569
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @reserve_crashkernel() #0 section ".init.text" align 16 !dbg !1570 {
entry:
  %crash_size = alloca i64, align 8
  %crash_base = alloca i64, align 8
  %total_mem = alloca i64, align 8
  %high = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %start = alloca i64, align 8
  %tmp28 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %crash_size) #15, !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %crash_size, metadata !1572, metadata !DIExpression()), !dbg !1581
  call void @llvm.lifetime.start.p0(i64 8, ptr %crash_base) #15, !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %crash_base, metadata !1573, metadata !DIExpression()), !dbg !1582
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_mem) #15, !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %total_mem, metadata !1574, metadata !DIExpression()), !dbg !1583
  call void @llvm.lifetime.start.p0(i64 1, ptr %high) #15, !dbg !1584
  call void @llvm.dbg.declare(metadata ptr %high, metadata !1575, metadata !DIExpression()), !dbg !1585
  store i8 0, ptr %high, align 1, !dbg !1585
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !1586
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1576, metadata !DIExpression()), !dbg !1587
  %call = call i64 @memblock_phys_mem_size() #16, !dbg !1588
  store i64 %call, ptr %total_mem, align 8, !dbg !1589
  %0 = load i64, ptr %total_mem, align 8, !dbg !1590
  %call1 = call i32 @parse_crashkernel(ptr noundef @boot_command_line, i64 noundef %0, ptr noundef %crash_size, ptr noundef %crash_base) #17, !dbg !1591
  store i32 %call1, ptr %ret, align 4, !dbg !1592
  %1 = load i32, ptr %ret, align 4, !dbg !1593
  %cmp = icmp ne i32 %1, 0, !dbg !1595
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1596

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %crash_size, align 8, !dbg !1597
  %cmp2 = icmp ule i64 %2, 0, !dbg !1598
  br i1 %cmp2, label %if.then, label %if.end8, !dbg !1599

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i64, ptr %total_mem, align 8, !dbg !1600
  %call3 = call i32 @parse_crashkernel_high(ptr noundef @boot_command_line, i64 noundef %3, ptr noundef %crash_size, ptr noundef %crash_base) #16, !dbg !1602
  store i32 %call3, ptr %ret, align 4, !dbg !1603
  %4 = load i32, ptr %ret, align 4, !dbg !1604
  %cmp4 = icmp ne i32 %4, 0, !dbg !1606
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !1607

lor.lhs.false5:                                   ; preds = %if.then
  %5 = load i64, ptr %crash_size, align 8, !dbg !1608
  %cmp6 = icmp ule i64 %5, 0, !dbg !1609
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !1610

if.then7:                                         ; preds = %lor.lhs.false5, %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !1611

if.end:                                           ; preds = %lor.lhs.false5
  store i8 1, ptr %high, align 1, !dbg !1612
  br label %if.end8, !dbg !1613

if.end8:                                          ; preds = %if.end, %lor.lhs.false
  %6 = load i64, ptr %crash_base, align 8, !dbg !1614
  %tobool = icmp ne i64 %6, 0, !dbg !1614
  br i1 %tobool, label %if.else, label %if.then9, !dbg !1615

if.then9:                                         ; preds = %if.end8
  %7 = load i8, ptr %high, align 1, !dbg !1616, !range !1619, !noundef !1620
  %tobool10 = trunc i8 %7 to i1, !dbg !1616
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !1621

if.then11:                                        ; preds = %if.then9
  %8 = load i64, ptr %crash_size, align 8, !dbg !1622
  %call12 = call i64 @memblock_phys_alloc_range(i64 noundef %8, i64 noundef 16777216, i64 noundef 16777216, i64 noundef 4294967296) #16, !dbg !1623
  store i64 %call12, ptr %crash_base, align 8, !dbg !1624
  br label %if.end13, !dbg !1625

if.end13:                                         ; preds = %if.then11, %if.then9
  %9 = load i64, ptr %crash_base, align 8, !dbg !1626
  %tobool14 = icmp ne i64 %9, 0, !dbg !1626
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !1628

if.then15:                                        ; preds = %if.end13
  %10 = load i64, ptr %crash_size, align 8, !dbg !1629
  %call16 = call i64 @memblock_phys_alloc_range(i64 noundef %10, i64 noundef 16777216, i64 noundef 16777216, i64 noundef 70368744177664) #16, !dbg !1630
  store i64 %call16, ptr %crash_base, align 8, !dbg !1631
  br label %if.end17, !dbg !1632

if.end17:                                         ; preds = %if.then15, %if.end13
  %11 = load i64, ptr %crash_base, align 8, !dbg !1633
  %tobool18 = icmp ne i64 %11, 0, !dbg !1633
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !1635

if.then19:                                        ; preds = %if.end17
  br label %do.body, !dbg !1636

do.body:                                          ; preds = %if.then19
  br label %do.cond, !dbg !1639

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1639

do.end:                                           ; preds = %do.cond
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.32) #17, !dbg !1636
  store i32 %call20, ptr %tmp, align 4, !dbg !1639
  %12 = load i32, ptr %tmp, align 4, !dbg !1636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !1641

if.end21:                                         ; preds = %if.end17
  br label %if.end31, !dbg !1642

if.else:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #15, !dbg !1643
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1577, metadata !DIExpression()), !dbg !1644
  %13 = load i64, ptr %crash_size, align 8, !dbg !1645
  %14 = load i64, ptr %crash_base, align 8, !dbg !1646
  %15 = load i64, ptr %crash_base, align 8, !dbg !1647
  %16 = load i64, ptr %crash_size, align 8, !dbg !1648
  %add = add i64 %15, %16, !dbg !1649
  %call22 = call i64 @memblock_phys_alloc_range(i64 noundef %13, i64 noundef 1048576, i64 noundef %14, i64 noundef %add) #16, !dbg !1650
  store i64 %call22, ptr %start, align 8, !dbg !1651
  %17 = load i64, ptr %start, align 8, !dbg !1652
  %18 = load i64, ptr %crash_base, align 8, !dbg !1654
  %cmp23 = icmp ne i64 %17, %18, !dbg !1655
  br i1 %cmp23, label %if.then24, label %if.end30, !dbg !1656

if.then24:                                        ; preds = %if.else
  br label %do.body25, !dbg !1657

do.body25:                                        ; preds = %if.then24
  br label %do.cond26, !dbg !1660

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !1660

do.end27:                                         ; preds = %do.cond26
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.33) #17, !dbg !1657
  store i32 %call29, ptr %tmp28, align 4, !dbg !1660
  %19 = load i32, ptr %tmp28, align 4, !dbg !1657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1662

if.end30:                                         ; preds = %if.else
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1663
  br label %cleanup, !dbg !1663

cleanup:                                          ; preds = %if.end30, %do.end27
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #15, !dbg !1663
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31

if.end31:                                         ; preds = %cleanup.cont, %if.end21
  %20 = load i64, ptr %crash_base, align 8, !dbg !1664
  %cmp32 = icmp uge i64 %20, 4294967296, !dbg !1666
  br i1 %cmp32, label %land.lhs.true, label %if.end37, !dbg !1667

land.lhs.true:                                    ; preds = %if.end31
  %call33 = call i32 @reserve_crashkernel_low() #17, !dbg !1668
  %tobool34 = icmp ne i32 %call33, 0, !dbg !1668
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !1669

if.then35:                                        ; preds = %land.lhs.true
  %21 = load i64, ptr %crash_base, align 8, !dbg !1670
  %22 = load i64, ptr %crash_size, align 8, !dbg !1672
  %call36 = call i32 @memblock_phys_free(i64 noundef %21, i64 noundef %22) #16, !dbg !1673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !1674

if.end37:                                         ; preds = %land.lhs.true, %if.end31
  br label %do.body38, !dbg !1675

do.body38:                                        ; preds = %if.end37
  br label %do.cond39, !dbg !1677

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !1677

do.end40:                                         ; preds = %do.cond39
  %23 = load i64, ptr %crash_size, align 8, !dbg !1675
  %shr = lshr i64 %23, 20, !dbg !1675
  %24 = load i64, ptr %crash_base, align 8, !dbg !1675
  %shr42 = lshr i64 %24, 20, !dbg !1675
  %25 = load i64, ptr %total_mem, align 8, !dbg !1675
  %shr43 = lshr i64 %25, 20, !dbg !1675
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef @.str.34, i64 noundef %shr, i64 noundef %shr42, i64 noundef %shr43) #17, !dbg !1675
  store i32 %call44, ptr %tmp41, align 4, !dbg !1677
  %26 = load i32, ptr %tmp41, align 4, !dbg !1675
  %27 = load i64, ptr %crash_base, align 8, !dbg !1679
  store i64 %27, ptr @crashk_res, align 8, !dbg !1680
  %28 = load i64, ptr %crash_base, align 8, !dbg !1681
  %29 = load i64, ptr %crash_size, align 8, !dbg !1682
  %add45 = add i64 %28, %29, !dbg !1683
  %sub = sub i64 %add45, 1, !dbg !1684
  store i64 %sub, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 8, !dbg !1685
  %call46 = call i32 @insert_resource(ptr noundef @iomem_resource, ptr noundef @crashk_res) #16, !dbg !1686
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1687
  br label %cleanup47, !dbg !1687

cleanup47:                                        ; preds = %do.end40, %if.then35, %cleanup, %do.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !1687
  call void @llvm.lifetime.end.p0(i64 1, ptr %high) #15, !dbg !1687
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_mem) #15, !dbg !1687
  call void @llvm.lifetime.end.p0(i64 8, ptr %crash_base) #15, !dbg !1687
  call void @llvm.lifetime.end.p0(i64 8, ptr %crash_size) #15, !dbg !1687
  %cleanup.dest52 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest52, label %unreachable [
    i32 0, label %cleanup.cont53
    i32 1, label %cleanup.cont53
  ]

cleanup.cont53:                                   ; preds = %cleanup47, %cleanup47
  ret void, !dbg !1687

unreachable:                                      ; preds = %cleanup47
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1688 dso_local void @memblock_find_dma_reserve() #5

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @early_xdbc_setup_hardware() #11 section ".init.text" align 16 !dbg !1689 {
entry:
  ret i32 -19, !dbg !1691
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @early_xdbc_register_console() #11 section ".init.text" align 16 !dbg !1692 {
entry:
  ret void, !dbg !1693
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_init() #9 align 16 !dbg !1694 {
entry:
  ret void, !dbg !1696
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sync_initial_page_table() #9 align 16 !dbg !1697 {
entry:
  ret void, !dbg !1698
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1699 dso_local void @map_vsyscall() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @x86_32_probe_apic() #9 align 16 !dbg !1701 {
entry:
  ret void, !dbg !1702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1703 dso_local void @early_quirks() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1705 dso_local i32 @acpi_boot_init() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @x86_dtb_init() #9 align 16 !dbg !1706 {
entry:
  ret void, !dbg !1708
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_smp_config() #9 align 16 !dbg !1709 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 1, i32 2), align 8, !dbg !1710
  call void %0(i32 noundef 0) #16, !dbg !1711
  ret void, !dbg !1712
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1713 dso_local void @init_apic_mappings() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1714 dso_local void @prefill_possible_map() #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1716 dso_local void @init_cpu_to_node() #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1718 dso_local void @init_gi_nodes() #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1719 dso_local void @io_apic_init_mappings() #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1721 dso_local void @e820__reserve_resources() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1722 dso_local void @e820__register_nosave_regions(i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1725 dso_local void @e820__setup_pci_gap() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1726 dso_local i32 @efi_mem_type(i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1727 dso_local void @therm_lvt_init() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1729 dso_local i32 @mcheck_init() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1731 dso_local i32 @register_refined_jiffies(i64 noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1735 dso_local void @efi_apply_memmap_quirks() #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1736 dso_local void @unwind_init() #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_setup__393_1348_register_kernel_offset_dumper6() #0 section ".init.text" align 16 !dbg !1738 {
entry:
  %call = call i32 @register_kernel_offset_dumper() #17, !dbg !1739
  ret i32 %call, !dbg !1739
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @register_kernel_offset_dumper() #0 section ".init.text" align 16 !dbg !1740 {
entry:
  %call = call i32 @atomic_notifier_chain_register(ptr noundef @panic_notifier_list, ptr noundef @kernel_offset_notifier) #16, !dbg !1741
  ret i32 0, !dbg !1742
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1743 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1747, metadata !DIExpression()), !dbg !1749
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1748, metadata !DIExpression()), !dbg !1750
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1751
  %and = and i64 %0, 63, !dbg !1752
  %shl = shl i64 1, %and, !dbg !1753
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1754
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1755
  %shr = ashr i64 %2, 6, !dbg !1756
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1754
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1754
  %and1 = and i64 %shl, %3, !dbg !1757
  %cmp = icmp ne i64 %and1, 0, !dbg !1758
  ret i1 %cmp, !dbg !1759
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1760 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1762, metadata !DIExpression()), !dbg !1765
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1763, metadata !DIExpression()), !dbg !1766
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1764, metadata !DIExpression()), !dbg !1768
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1769
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1770
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !1771, !srcloc !1772
  %3 = icmp ult i8 %2, 2, !dbg !1771
  call void @llvm.assume(i1 %3), !dbg !1771
  store i8 %2, ptr %oldbit, align 1, !dbg !1771
  %4 = load i8, ptr %oldbit, align 1, !dbg !1773, !range !1619, !noundef !1620
  %tobool = trunc i8 %4 to i1, !dbg !1773
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !1774
  ret i1 %tobool, !dbg !1775
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !1776 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1784, metadata !DIExpression()), !dbg !1786
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1785, metadata !DIExpression()), !dbg !1787
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1788
  %1 = load i64, ptr %size.addr, align 8, !dbg !1789
  %conv = trunc i64 %1 to i32, !dbg !1789
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !1790
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1791
  %3 = load i64, ptr %size.addr, align 8, !dbg !1791
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #16, !dbg !1791
  ret void, !dbg !1792
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1793 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1795, metadata !DIExpression()), !dbg !1797
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1796, metadata !DIExpression()), !dbg !1798
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1799
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1801
  br i1 %1, label %if.then, label %if.else, !dbg !1802

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1803
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1803
  %shr = ashr i64 %3, 3, !dbg !1803
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1803
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1805
  %and = and i64 %4, 7, !dbg !1805
  %sh_prom = trunc i64 %and to i32, !dbg !1805
  %shl = shl i32 1, %sh_prom, !dbg !1805
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #15, !dbg !1806, !srcloc !1807
  br label %if.end, !dbg !1808

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1809
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1811
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #15, !dbg !1812, !srcloc !1813
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1814
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #9 align 16 !dbg !1815 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1820, metadata !DIExpression()), !dbg !1822
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1821, metadata !DIExpression()), !dbg !1823
  ret i1 true, !dbg !1824
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #9 align 16 !dbg !1825 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1830, metadata !DIExpression()), !dbg !1833
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1831, metadata !DIExpression()), !dbg !1834
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1832, metadata !DIExpression()), !dbg !1835
  ret void, !dbg !1836
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1837 dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @early_reserve_initrd() #0 section ".init.text" align 16 !dbg !1840 {
entry:
  %ramdisk_image = alloca i64, align 8
  %ramdisk_size = alloca i64, align 8
  %ramdisk_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ramdisk_image) #15, !dbg !1845
  call void @llvm.dbg.declare(metadata ptr %ramdisk_image, metadata !1842, metadata !DIExpression()), !dbg !1846
  %call = call i64 @get_ramdisk_image() #17, !dbg !1847
  store i64 %call, ptr %ramdisk_image, align 8, !dbg !1846
  call void @llvm.lifetime.start.p0(i64 8, ptr %ramdisk_size) #15, !dbg !1848
  call void @llvm.dbg.declare(metadata ptr %ramdisk_size, metadata !1843, metadata !DIExpression()), !dbg !1849
  %call1 = call i64 @get_ramdisk_size() #17, !dbg !1850
  store i64 %call1, ptr %ramdisk_size, align 8, !dbg !1849
  call void @llvm.lifetime.start.p0(i64 8, ptr %ramdisk_end) #15, !dbg !1851
  call void @llvm.dbg.declare(metadata ptr %ramdisk_end, metadata !1844, metadata !DIExpression()), !dbg !1852
  %0 = load i64, ptr %ramdisk_image, align 8, !dbg !1853
  %1 = load i64, ptr %ramdisk_size, align 8, !dbg !1853
  %add = add i64 %0, %1, !dbg !1853
  %add2 = add i64 %add, 4095, !dbg !1853
  %and = and i64 %add2, -4096, !dbg !1853
  store i64 %and, ptr %ramdisk_end, align 8, !dbg !1852
  %2 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 13), align 1, !dbg !1854
  %tobool = icmp ne i8 %2, 0, !dbg !1856
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1857

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, ptr %ramdisk_image, align 8, !dbg !1858
  %tobool3 = icmp ne i64 %3, 0, !dbg !1858
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !1859

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i64, ptr %ramdisk_size, align 8, !dbg !1860
  %tobool5 = icmp ne i64 %4, 0, !dbg !1860
  br i1 %tobool5, label %if.end, label %if.then, !dbg !1861

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1862

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load i64, ptr %ramdisk_image, align 8, !dbg !1863
  %6 = load i64, ptr %ramdisk_end, align 8, !dbg !1864
  %7 = load i64, ptr %ramdisk_image, align 8, !dbg !1865
  %sub = sub i64 %6, %7, !dbg !1866
  %call6 = call i32 @memblock_reserve(i64 noundef %5, i64 noundef %sub) #16, !dbg !1867
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1868
  br label %cleanup, !dbg !1868

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ramdisk_end) #15, !dbg !1868
  call void @llvm.lifetime.end.p0(i64 8, ptr %ramdisk_size) #15, !dbg !1868
  call void @llvm.lifetime.end.p0(i64 8, ptr %ramdisk_image) #15, !dbg !1868
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1868

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @memblock_x86_reserve_range_setup_data() #0 section ".init.text" align 16 !dbg !1869 {
entry:
  %indirect = alloca ptr, align 8
  %data = alloca ptr, align 8
  %pa_data = alloca i64, align 8
  %pa_next = alloca i64, align 8
  %len = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %indirect) #15, !dbg !1876
  call void @llvm.dbg.declare(metadata ptr %indirect, metadata !1871, metadata !DIExpression()), !dbg !1877
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !1878
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1872, metadata !DIExpression()), !dbg !1879
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_data) #15, !dbg !1880
  call void @llvm.dbg.declare(metadata ptr %pa_data, metadata !1873, metadata !DIExpression()), !dbg !1881
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_next) #15, !dbg !1880
  call void @llvm.dbg.declare(metadata ptr %pa_next, metadata !1874, metadata !DIExpression()), !dbg !1882
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !1883
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1875, metadata !DIExpression()), !dbg !1884
  %0 = load i64, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 34), align 1, !dbg !1885
  store i64 %0, ptr %pa_data, align 8, !dbg !1886
  br label %while.cond, !dbg !1887

while.cond:                                       ; preds = %if.end27, %entry
  %1 = load i64, ptr %pa_data, align 8, !dbg !1888
  %tobool = icmp ne i64 %1, 0, !dbg !1887
  br i1 %tobool, label %while.body, label %while.end, !dbg !1887

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %pa_data, align 8, !dbg !1889
  %call = call ptr @early_memremap(i64 noundef %2, i64 noundef 16) #16, !dbg !1891
  store ptr %call, ptr %data, align 8, !dbg !1892
  %3 = load ptr, ptr %data, align 8, !dbg !1893
  %tobool1 = icmp ne ptr %3, null, !dbg !1893
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1895

if.then:                                          ; preds = %while.body
  br label %do.body, !dbg !1896

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1899

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1899

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16) #17, !dbg !1896
  store i32 %call2, ptr %tmp, align 4, !dbg !1899
  %4 = load i32, ptr %tmp, align 4, !dbg !1896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1901

if.end:                                           ; preds = %while.body
  store i32 16, ptr %len, align 4, !dbg !1902
  %5 = load ptr, ptr %data, align 8, !dbg !1903
  %next = getelementptr inbounds %struct.setup_data, ptr %5, i32 0, i32 0, !dbg !1904
  %6 = load i64, ptr %next, align 8, !dbg !1904
  store i64 %6, ptr %pa_next, align 8, !dbg !1905
  %7 = load i64, ptr %pa_data, align 8, !dbg !1906
  %8 = load ptr, ptr %data, align 8, !dbg !1907
  %len3 = getelementptr inbounds %struct.setup_data, ptr %8, i32 0, i32 2, !dbg !1908
  %9 = load i32, ptr %len3, align 4, !dbg !1908
  %conv = zext i32 %9 to i64, !dbg !1907
  %add = add i64 16, %conv, !dbg !1909
  %call4 = call i32 @memblock_reserve(i64 noundef %7, i64 noundef %add) #16, !dbg !1910
  %10 = load ptr, ptr %data, align 8, !dbg !1911
  %type = getelementptr inbounds %struct.setup_data, ptr %10, i32 0, i32 1, !dbg !1913
  %11 = load i32, ptr %type, align 8, !dbg !1913
  %cmp = icmp eq i32 %11, -2147483648, !dbg !1914
  br i1 %cmp, label %if.then6, label %if.end27, !dbg !1915

if.then6:                                         ; preds = %if.end
  %12 = load ptr, ptr %data, align 8, !dbg !1916
  %len7 = getelementptr inbounds %struct.setup_data, ptr %12, i32 0, i32 2, !dbg !1918
  %13 = load i32, ptr %len7, align 4, !dbg !1918
  %14 = load i32, ptr %len, align 4, !dbg !1919
  %add8 = add i32 %14, %13, !dbg !1919
  store i32 %add8, ptr %len, align 4, !dbg !1919
  %15 = load ptr, ptr %data, align 8, !dbg !1920
  call void @early_memunmap(ptr noundef %15, i64 noundef 16) #16, !dbg !1921
  %16 = load i64, ptr %pa_data, align 8, !dbg !1922
  %17 = load i32, ptr %len, align 4, !dbg !1923
  %conv9 = zext i32 %17 to i64, !dbg !1923
  %call10 = call ptr @early_memremap(i64 noundef %16, i64 noundef %conv9) #16, !dbg !1924
  store ptr %call10, ptr %data, align 8, !dbg !1925
  %18 = load ptr, ptr %data, align 8, !dbg !1926
  %tobool11 = icmp ne ptr %18, null, !dbg !1926
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !1928

if.then12:                                        ; preds = %if.then6
  br label %do.body13, !dbg !1929

do.body13:                                        ; preds = %if.then12
  br label %do.cond14, !dbg !1932

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1932

do.end15:                                         ; preds = %do.cond14
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.17) #17, !dbg !1929
  store i32 %call17, ptr %tmp16, align 4, !dbg !1932
  %19 = load i32, ptr %tmp16, align 4, !dbg !1929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1934

if.end18:                                         ; preds = %if.then6
  %20 = load ptr, ptr %data, align 8, !dbg !1935
  %data19 = getelementptr inbounds %struct.setup_data, ptr %20, i32 0, i32 3, !dbg !1936
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data19, i64 0, i64 0, !dbg !1935
  store ptr %arraydecay, ptr %indirect, align 8, !dbg !1937
  %21 = load ptr, ptr %indirect, align 8, !dbg !1938
  %type20 = getelementptr inbounds %struct.setup_indirect, ptr %21, i32 0, i32 0, !dbg !1940
  %22 = load i32, ptr %type20, align 8, !dbg !1940
  %cmp21 = icmp ne i32 %22, -2147483648, !dbg !1941
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !1942

if.then23:                                        ; preds = %if.end18
  %23 = load ptr, ptr %indirect, align 8, !dbg !1943
  %addr = getelementptr inbounds %struct.setup_indirect, ptr %23, i32 0, i32 3, !dbg !1944
  %24 = load i64, ptr %addr, align 8, !dbg !1944
  %25 = load ptr, ptr %indirect, align 8, !dbg !1945
  %len24 = getelementptr inbounds %struct.setup_indirect, ptr %25, i32 0, i32 2, !dbg !1946
  %26 = load i64, ptr %len24, align 8, !dbg !1946
  %call25 = call i32 @memblock_reserve(i64 noundef %24, i64 noundef %26) #16, !dbg !1947
  br label %if.end26, !dbg !1947

if.end26:                                         ; preds = %if.then23, %if.end18
  br label %if.end27, !dbg !1948

if.end27:                                         ; preds = %if.end26, %if.end
  %27 = load i64, ptr %pa_next, align 8, !dbg !1949
  store i64 %27, ptr %pa_data, align 8, !dbg !1950
  %28 = load ptr, ptr %data, align 8, !dbg !1951
  %29 = load i32, ptr %len, align 4, !dbg !1952
  %conv28 = zext i32 %29 to i64, !dbg !1952
  call void @early_memunmap(ptr noundef %28, i64 noundef %conv28) #16, !dbg !1953
  br label %while.cond, !dbg !1887, !llvm.loop !1954

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1956
  br label %cleanup, !dbg !1956

cleanup:                                          ; preds = %while.end, %do.end15, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_next) #15, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_data) #15, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr %indirect) #15, !dbg !1956
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1956

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1957 dso_local void @reserve_bios_regions() #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @trim_snb_memory() #0 section ".init.text" align 16 !dbg !594 {
entry:
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1959
  call void @llvm.dbg.declare(metadata ptr %i, metadata !598, metadata !DIExpression()), !dbg !1960
  %call = call zeroext i1 @snb_gfx_workaround_needed() #17, !dbg !1961
  br i1 %call, label %if.end, label %if.then, !dbg !1963

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1964

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1965

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !1967

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1967

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18) #17, !dbg !1965
  store i32 %call1, ptr %tmp, align 4, !dbg !1967
  %0 = load i32, ptr %tmp, align 4, !dbg !1965
  store i32 0, ptr %i, align 4, !dbg !1969
  br label %for.cond, !dbg !1971

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, ptr %i, align 4, !dbg !1972
  %conv = sext i32 %1 to i64, !dbg !1972
  %cmp = icmp ult i64 %conv, 5, !dbg !1974
  br i1 %cmp, label %for.body, label %for.end, !dbg !1975

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !1976
  %idxprom = sext i32 %2 to i64, !dbg !1979
  %arrayidx = getelementptr [5 x i64], ptr @trim_snb_memory.bad_pages, i64 0, i64 %idxprom, !dbg !1979
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1979
  %call3 = call i32 @memblock_reserve(i64 noundef %3, i64 noundef 4096) #16, !dbg !1980
  %tobool = icmp ne i32 %call3, 0, !dbg !1980
  br i1 %tobool, label %if.then4, label %if.end12, !dbg !1981

if.then4:                                         ; preds = %for.body
  br label %do.body5, !dbg !1982

do.body5:                                         ; preds = %if.then4
  br label %do.cond6, !dbg !1984

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1984

do.end7:                                          ; preds = %do.cond6
  %4 = load i32, ptr %i, align 4, !dbg !1982
  %idxprom9 = sext i32 %4 to i64, !dbg !1982
  %arrayidx10 = getelementptr [5 x i64], ptr @trim_snb_memory.bad_pages, i64 0, i64 %idxprom9, !dbg !1982
  %5 = load i64, ptr %arrayidx10, align 8, !dbg !1982
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, i64 noundef %5) #17, !dbg !1982
  store i32 %call11, ptr %tmp8, align 4, !dbg !1984
  %6 = load i32, ptr %tmp8, align 4, !dbg !1982
  br label %if.end12, !dbg !1986

if.end12:                                         ; preds = %do.end7, %for.body
  br label %for.inc, !dbg !1987

for.inc:                                          ; preds = %if.end12
  %7 = load i32, ptr %i, align 4, !dbg !1988
  %inc = add i32 %7, 1, !dbg !1988
  store i32 %inc, ptr %i, align 4, !dbg !1988
  br label %for.cond, !dbg !1989, !llvm.loop !1990

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1992
  br label %cleanup, !dbg !1992

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !1992
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1992

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @get_ramdisk_image() #0 section ".init.text" align 16 !dbg !1993 {
entry:
  %ramdisk_image = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ramdisk_image) #15, !dbg !1998
  call void @llvm.dbg.declare(metadata ptr %ramdisk_image, metadata !1997, metadata !DIExpression()), !dbg !1999
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 17), align 1, !dbg !2000
  %conv = zext i32 %0 to i64, !dbg !2001
  store i64 %conv, ptr %ramdisk_image, align 8, !dbg !1999
  %1 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 11), align 1, !dbg !2002
  %conv1 = zext i32 %1 to i64, !dbg !2003
  %shl = shl i64 %conv1, 32, !dbg !2004
  %2 = load i64, ptr %ramdisk_image, align 8, !dbg !2005
  %or = or i64 %2, %shl, !dbg !2005
  store i64 %or, ptr %ramdisk_image, align 8, !dbg !2005
  %3 = load i64, ptr %ramdisk_image, align 8, !dbg !2006
  %cmp = icmp eq i64 %3, 0, !dbg !2008
  br i1 %cmp, label %if.then, label %if.end, !dbg !2009

if.then:                                          ; preds = %entry
  %4 = load i64, ptr @phys_initrd_start, align 8, !dbg !2010
  store i64 %4, ptr %ramdisk_image, align 8, !dbg !2011
  br label %if.end, !dbg !2012

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %ramdisk_image, align 8, !dbg !2013
  call void @llvm.lifetime.end.p0(i64 8, ptr %ramdisk_image) #15, !dbg !2014
  ret i64 %5, !dbg !2015
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @get_ramdisk_size() #0 section ".init.text" align 16 !dbg !2016 {
entry:
  %ramdisk_size = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ramdisk_size) #15, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %ramdisk_size, metadata !2018, metadata !DIExpression()), !dbg !2020
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 18), align 1, !dbg !2021
  %conv = zext i32 %0 to i64, !dbg !2022
  store i64 %conv, ptr %ramdisk_size, align 8, !dbg !2020
  %1 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 12), align 1, !dbg !2023
  %conv1 = zext i32 %1 to i64, !dbg !2024
  %shl = shl i64 %conv1, 32, !dbg !2025
  %2 = load i64, ptr %ramdisk_size, align 8, !dbg !2026
  %or = or i64 %2, %shl, !dbg !2026
  store i64 %or, ptr %ramdisk_size, align 8, !dbg !2026
  %3 = load i64, ptr %ramdisk_size, align 8, !dbg !2027
  %cmp = icmp eq i64 %3, 0, !dbg !2029
  br i1 %cmp, label %if.then, label %if.end, !dbg !2030

if.then:                                          ; preds = %entry
  %4 = load i64, ptr @phys_initrd_size, align 8, !dbg !2031
  store i64 %4, ptr %ramdisk_size, align 8, !dbg !2032
  br label %if.end, !dbg !2033

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %ramdisk_size, align 8, !dbg !2034
  call void @llvm.lifetime.end.p0(i64 8, ptr %ramdisk_size) #15, !dbg !2035
  ret i64 %5, !dbg !2036
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2037 dso_local ptr @early_memremap(i64 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2040 dso_local void @early_memunmap(ptr noundef, i64 noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @snb_gfx_workaround_needed() #0 section ".init.text" align 16 !dbg !612 {
entry:
  %retval = alloca i1, align 1
  %i = alloca i32, align 4
  %vendor = alloca i16, align 2
  %devid = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %i, metadata !616, metadata !DIExpression()), !dbg !2044
  call void @llvm.lifetime.start.p0(i64 2, ptr %vendor) #15, !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !617, metadata !DIExpression()), !dbg !2046
  call void @llvm.lifetime.start.p0(i64 2, ptr %devid) #15, !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %devid, metadata !618, metadata !DIExpression()), !dbg !2047
  %call = call i32 @early_pci_allowed() #16, !dbg !2048
  %tobool = icmp ne i32 %call, 0, !dbg !2048
  br i1 %tobool, label %if.end, label %if.then, !dbg !2050

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2051

if.end:                                           ; preds = %entry
  %call1 = call zeroext i16 @read_pci_config_16(i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0) #16, !dbg !2052
  store i16 %call1, ptr %vendor, align 2, !dbg !2053
  %0 = load i16, ptr %vendor, align 2, !dbg !2054
  %conv = zext i16 %0 to i32, !dbg !2054
  %cmp = icmp ne i32 %conv, 32902, !dbg !2056
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !2057

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !2058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2058

if.end4:                                          ; preds = %if.end
  %call5 = call zeroext i16 @read_pci_config_16(i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 2) #16, !dbg !2059
  store i16 %call5, ptr %devid, align 2, !dbg !2060
  store i32 0, ptr %i, align 4, !dbg !2061
  br label %for.cond, !dbg !2063

for.cond:                                         ; preds = %for.inc, %if.end4
  %1 = load i32, ptr %i, align 4, !dbg !2064
  %conv6 = sext i32 %1 to i64, !dbg !2064
  %cmp7 = icmp ult i64 %conv6, 7, !dbg !2066
  br i1 %cmp7, label %for.body, label %for.end, !dbg !2067

for.body:                                         ; preds = %for.cond
  %2 = load i16, ptr %devid, align 2, !dbg !2068
  %conv9 = zext i16 %2 to i32, !dbg !2068
  %3 = load i32, ptr %i, align 4, !dbg !2070
  %idxprom = sext i32 %3 to i64, !dbg !2071
  %arrayidx = getelementptr [7 x i16], ptr @snb_gfx_workaround_needed.snb_ids, i64 0, i64 %idxprom, !dbg !2071
  %4 = load i16, ptr %arrayidx, align 2, !dbg !2071
  %conv10 = zext i16 %4 to i32, !dbg !2071
  %cmp11 = icmp eq i32 %conv9, %conv10, !dbg !2072
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !2073

if.then13:                                        ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !2074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2074

if.end14:                                         ; preds = %for.body
  br label %for.inc, !dbg !2075

for.inc:                                          ; preds = %if.end14
  %5 = load i32, ptr %i, align 4, !dbg !2076
  %inc = add i32 %5, 1, !dbg !2076
  store i32 %inc, ptr %i, align 4, !dbg !2076
  br label %for.cond, !dbg !2077, !llvm.loop !2078

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !2080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2080

cleanup:                                          ; preds = %for.end, %if.then13, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %devid) #15, !dbg !2081
  call void @llvm.lifetime.end.p0(i64 2, ptr %vendor) #15, !dbg !2081
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2081
  %6 = load i1, ptr %retval, align 1, !dbg !2081
  ret i1 %6, !dbg !2081
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2082 dso_local i32 @early_pci_allowed() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2084 dso_local zeroext i16 @read_pci_config_16(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2087 dso_local void @e820__memory_setup_extended(i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_dtb(i64 noundef %data) #9 align 16 !dbg !2090 {
entry:
  %data.addr = alloca i64, align 8
  store i64 %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2094, metadata !DIExpression()), !dbg !2095
  ret void, !dbg !2096
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2097 dso_local void @parse_efi_setup(i64 noundef, i32 noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @add_early_ima_buffer(i64 noundef %phys_addr) #0 section ".init.text" align 16 !dbg !2098 {
entry:
  %phys_addr.addr = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i64 %phys_addr, ptr %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys_addr.addr, metadata !2100, metadata !DIExpression()), !dbg !2101
  br label %do.body, !dbg !2102

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2104

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.20) #17, !dbg !2102
  store i32 %call, ptr %tmp, align 4, !dbg !2104
  %0 = load i32, ptr %tmp, align 4, !dbg !2102
  ret void, !dbg !2106
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2107 dso_local void @add_bootloader_randomness(ptr noundef, i64 noundef) #8 section ".init.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #9 align 16 !dbg !2113 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2117, metadata !DIExpression()), !dbg !2119
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2118, metadata !DIExpression()), !dbg !2120
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2121
  %1 = load i64, ptr %count.addr, align 8, !dbg !2122
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false), !dbg !2123
  %2 = load ptr, ptr %s.addr, align 8, !dbg !2124
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #15, !dbg !2124, !srcloc !2125
  ret void, !dbg !2126
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2127 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2130, metadata !DIExpression()), !dbg !2135
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2131, metadata !DIExpression()), !dbg !2136
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !2137
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2132, metadata !DIExpression()), !dbg !2138
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2139
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2140
  %div = udiv i64 %1, 64, !dbg !2140
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2141
  store ptr %add.ptr, ptr %p, align 8, !dbg !2138
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !2142
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2133, metadata !DIExpression()), !dbg !2143
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2144
  %rem = urem i64 %2, 64, !dbg !2144
  %shl = shl i64 1, %rem, !dbg !2144
  store i64 %shl, ptr %mask, align 8, !dbg !2143
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !2145
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2134, metadata !DIExpression()), !dbg !2146
  %3 = load ptr, ptr %p, align 8, !dbg !2147
  %4 = load i64, ptr %3, align 8, !dbg !2148
  store i64 %4, ptr %val, align 8, !dbg !2146
  %5 = load i64, ptr %val, align 8, !dbg !2149
  %6 = load i64, ptr %mask, align 8, !dbg !2150
  %and = and i64 %5, %6, !dbg !2151
  %tobool = icmp ne i64 %and, 0, !dbg !2152
  %lnot = xor i1 %tobool, true, !dbg !2152
  %lnot1 = xor i1 %lnot, true, !dbg !2153
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !2154
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !2154
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !2154
  ret i1 %lnot1, !dbg !2155
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !2156 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2159, metadata !DIExpression()), !dbg !2161
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2160, metadata !DIExpression()), !dbg !2162
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2163
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2164
  %div = udiv i64 %1, 64, !dbg !2164
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2165
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !2166
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2167
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2168
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !2169
  ret i1 %call, !dbg !2170
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !2171 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2173, metadata !DIExpression()), !dbg !2175
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2174, metadata !DIExpression()), !dbg !2176
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2177
  %1 = load i64, ptr %size.addr, align 8, !dbg !2178
  %conv = trunc i64 %1 to i32, !dbg !2178
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !2179
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2180
  %3 = load i64, ptr %size.addr, align 8, !dbg !2180
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !2180
  ret void, !dbg !2181
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #9 align 16 !dbg !2182 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2184, metadata !DIExpression()), !dbg !2186
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2185, metadata !DIExpression()), !dbg !2187
  ret i1 true, !dbg !2188
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2189 dso_local zeroext i1 @e820__mapped_all(i64 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2192 dso_local i64 @e820__range_remove(i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2195 dso_local void @e820__range_add(i64 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2198 dso_local i64 @e820__range_update(i64 noundef, i64 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2201 dso_local i32 @e820__update_table(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_cr4() #9 align 16 !dbg !2217 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !2220
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2219, metadata !DIExpression()), !dbg !2221
  %0 = call i64 asm sideeffect "mov %cr4,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #15, !dbg !2222, !srcloc !2223
  store i64 %0, ptr %val, align 8, !dbg !2222
  %1 = load i64, ptr %val, align 8, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !2225
  ret i64 %1, !dbg !2226
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2227 dso_local zeroext i1 @pfn_range_is_mapped(i64 noundef, i64 noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @relocate_initrd() #0 section ".init.text" align 16 !dbg !2230 {
entry:
  %ramdisk_image = alloca i64, align 8
  %ramdisk_size = alloca i64, align 8
  %area_size = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ramdisk_image) #15, !dbg !2235
  call void @llvm.dbg.declare(metadata ptr %ramdisk_image, metadata !2232, metadata !DIExpression()), !dbg !2236
  %call = call i64 @get_ramdisk_image() #17, !dbg !2237
  store i64 %call, ptr %ramdisk_image, align 8, !dbg !2236
  call void @llvm.lifetime.start.p0(i64 8, ptr %ramdisk_size) #15, !dbg !2238
  call void @llvm.dbg.declare(metadata ptr %ramdisk_size, metadata !2233, metadata !DIExpression()), !dbg !2239
  %call1 = call i64 @get_ramdisk_size() #17, !dbg !2240
  store i64 %call1, ptr %ramdisk_size, align 8, !dbg !2239
  call void @llvm.lifetime.start.p0(i64 8, ptr %area_size) #15, !dbg !2241
  call void @llvm.dbg.declare(metadata ptr %area_size, metadata !2234, metadata !DIExpression()), !dbg !2242
  %0 = load i64, ptr %ramdisk_size, align 8, !dbg !2243
  %add = add i64 %0, 4095, !dbg !2243
  %and = and i64 %add, -4096, !dbg !2243
  store i64 %and, ptr %area_size, align 8, !dbg !2242
  %1 = load i64, ptr %area_size, align 8, !dbg !2244
  %2 = load i64, ptr @max_pfn_mapped, align 8, !dbg !2245
  %shl = shl i64 %2, 12, !dbg !2245
  %call2 = call i64 @memblock_phys_alloc_range(i64 noundef %1, i64 noundef 4096, i64 noundef 0, i64 noundef %shl) #16, !dbg !2246
  store i64 %call2, ptr @relocated_ramdisk, align 8, !dbg !2247
  %3 = load i64, ptr @relocated_ramdisk, align 8, !dbg !2248
  %tobool = icmp ne i64 %3, 0, !dbg !2248
  br i1 %tobool, label %if.end, label %if.then, !dbg !2250

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %ramdisk_size, align 8, !dbg !2251
  call void (ptr, ...) @panic(ptr noundef @.str.29, i64 noundef %4) #18, !dbg !2252
  unreachable, !dbg !2252

if.end:                                           ; preds = %entry
  %5 = load i64, ptr @relocated_ramdisk, align 8, !dbg !2253
  %6 = load i64, ptr @page_offset_base, align 8, !dbg !2254
  %add3 = add i64 %5, %6, !dbg !2255
  store i64 %add3, ptr @initrd_start, align 8, !dbg !2256
  %7 = load i64, ptr @initrd_start, align 8, !dbg !2257
  %8 = load i64, ptr %ramdisk_size, align 8, !dbg !2258
  %add4 = add i64 %7, %8, !dbg !2259
  store i64 %add4, ptr @initrd_end, align 8, !dbg !2260
  br label %do.body, !dbg !2261

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !2263

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2263

do.end:                                           ; preds = %do.cond
  %9 = load i64, ptr @relocated_ramdisk, align 8, !dbg !2261
  %10 = load i64, ptr @relocated_ramdisk, align 8, !dbg !2261
  %11 = load i64, ptr %ramdisk_size, align 8, !dbg !2261
  %add5 = add i64 %10, %11, !dbg !2261
  %sub = sub i64 %add5, 1, !dbg !2261
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.30, i64 noundef %9, i64 noundef %sub) #17, !dbg !2261
  store i32 %call6, ptr %tmp, align 4, !dbg !2263
  %12 = load i32, ptr %tmp, align 4, !dbg !2261
  %13 = load i64, ptr @initrd_start, align 8, !dbg !2265
  %14 = inttoptr i64 %13 to ptr, !dbg !2266
  %15 = load i64, ptr %ramdisk_image, align 8, !dbg !2267
  %16 = load i64, ptr %ramdisk_size, align 8, !dbg !2268
  call void @copy_from_early_mem(ptr noundef %14, i64 noundef %15, i64 noundef %16) #16, !dbg !2269
  br label %do.body7, !dbg !2270

do.body7:                                         ; preds = %do.end
  br label %do.cond8, !dbg !2272

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2272

do.end9:                                          ; preds = %do.cond8
  %17 = load i64, ptr %ramdisk_image, align 8, !dbg !2270
  %18 = load i64, ptr %ramdisk_image, align 8, !dbg !2270
  %19 = load i64, ptr %ramdisk_size, align 8, !dbg !2270
  %add11 = add i64 %18, %19, !dbg !2270
  %sub12 = sub i64 %add11, 1, !dbg !2270
  %20 = load i64, ptr @relocated_ramdisk, align 8, !dbg !2270
  %21 = load i64, ptr @relocated_ramdisk, align 8, !dbg !2270
  %22 = load i64, ptr %ramdisk_size, align 8, !dbg !2270
  %add13 = add i64 %21, %22, !dbg !2270
  %sub14 = sub i64 %add13, 1, !dbg !2270
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.31, i64 noundef %17, i64 noundef %sub12, i64 noundef %20, i64 noundef %sub14) #17, !dbg !2270
  store i32 %call15, ptr %tmp10, align 4, !dbg !2272
  %23 = load i32, ptr %tmp10, align 4, !dbg !2270
  call void @llvm.lifetime.end.p0(i64 8, ptr %area_size) #15, !dbg !2274
  call void @llvm.lifetime.end.p0(i64 8, ptr %ramdisk_size) #15, !dbg !2274
  call void @llvm.lifetime.end.p0(i64 8, ptr %ramdisk_image) #15, !dbg !2274
  ret void, !dbg !2274
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2275 dso_local i32 @memblock_phys_free(i64 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2276 dso_local i64 @memblock_phys_alloc_range(i64 noundef, i64 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !2279 dso_local void @panic(ptr noundef, ...) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2283 dso_local void @copy_from_early_mem(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2286 dso_local i64 @memblock_phys_mem_size() #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2287 dso_local i32 @parse_crashkernel(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #8 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2292 dso_local i32 @parse_crashkernel_high(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @reserve_crashkernel_low() #0 section ".init.text" align 16 !dbg !2293 {
entry:
  %retval = alloca i32, align 4
  %base = alloca i64, align 8
  %low_base = alloca i64, align 8
  %low_size = alloca i64, align 8
  %low_mem_limit = alloca i64, align 8
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x389 = alloca i64, align 8
  %__UNIQUE_ID___y390 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x391 = alloca i64, align 8
  %__UNIQUE_ID___y392 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #15, !dbg !2308
  call void @llvm.dbg.declare(metadata ptr %base, metadata !2295, metadata !DIExpression()), !dbg !2309
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_base) #15, !dbg !2308
  call void @llvm.dbg.declare(metadata ptr %low_base, metadata !2296, metadata !DIExpression()), !dbg !2310
  store i64 0, ptr %low_base, align 8, !dbg !2310
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_size) #15, !dbg !2308
  call void @llvm.dbg.declare(metadata ptr %low_size, metadata !2297, metadata !DIExpression()), !dbg !2311
  store i64 0, ptr %low_size, align 8, !dbg !2311
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_mem_limit) #15, !dbg !2312
  call void @llvm.dbg.declare(metadata ptr %low_mem_limit, metadata !2298, metadata !DIExpression()), !dbg !2313
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2314
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2299, metadata !DIExpression()), !dbg !2315
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x389) #15, !dbg !2316
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x389, metadata !2300, metadata !DIExpression()), !dbg !2316
  %call = call i64 @memblock_phys_mem_size() #16, !dbg !2316
  store i64 %call, ptr %__UNIQUE_ID___x389, align 8, !dbg !2316
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y390) #15, !dbg !2316
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y390, metadata !2302, metadata !DIExpression()), !dbg !2316
  store i64 4294967296, ptr %__UNIQUE_ID___y390, align 8, !dbg !2316
  %0 = load i64, ptr %__UNIQUE_ID___x389, align 8, !dbg !2316
  %1 = load i64, ptr %__UNIQUE_ID___y390, align 8, !dbg !2316
  %cmp = icmp ult i64 %0, %1, !dbg !2316
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2316

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %__UNIQUE_ID___x389, align 8, !dbg !2316
  br label %cond.end, !dbg !2316

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___y390, align 8, !dbg !2316
  br label %cond.end, !dbg !2316

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ], !dbg !2316
  store i64 %cond, ptr %tmp, align 8, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y390) #15, !dbg !2317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x389) #15, !dbg !2317
  %4 = load i64, ptr %tmp, align 8, !dbg !2316
  store i64 %4, ptr %low_mem_limit, align 8, !dbg !2318
  %5 = load i64, ptr %low_mem_limit, align 8, !dbg !2319
  %call1 = call i32 @parse_crashkernel_low(ptr noundef @boot_command_line, i64 noundef %5, ptr noundef %low_size, ptr noundef %base) #16, !dbg !2320
  store i32 %call1, ptr %ret, align 4, !dbg !2321
  %6 = load i32, ptr %ret, align 4, !dbg !2322
  %tobool = icmp ne i32 %6, 0, !dbg !2322
  br i1 %tobool, label %if.then, label %if.else, !dbg !2323

if.then:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x391) #15, !dbg !2324
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x391, metadata !2303, metadata !DIExpression()), !dbg !2324
  %call2 = call i64 @swiotlb_size_or_default() #16, !dbg !2324
  %add = add i64 %call2, 8388608, !dbg !2324
  store i64 %add, ptr %__UNIQUE_ID___x391, align 8, !dbg !2324
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y392) #15, !dbg !2324
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y392, metadata !2307, metadata !DIExpression()), !dbg !2324
  store i64 268435456, ptr %__UNIQUE_ID___y392, align 8, !dbg !2324
  %7 = load i64, ptr %__UNIQUE_ID___x391, align 8, !dbg !2324
  %8 = load i64, ptr %__UNIQUE_ID___y392, align 8, !dbg !2324
  %cmp4 = icmp ugt i64 %7, %8, !dbg !2324
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !2324

cond.true5:                                       ; preds = %if.then
  %9 = load i64, ptr %__UNIQUE_ID___x391, align 8, !dbg !2324
  br label %cond.end7, !dbg !2324

cond.false6:                                      ; preds = %if.then
  %10 = load i64, ptr %__UNIQUE_ID___y392, align 8, !dbg !2324
  br label %cond.end7, !dbg !2324

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i64 [ %9, %cond.true5 ], [ %10, %cond.false6 ], !dbg !2324
  store i64 %cond8, ptr %tmp3, align 8, !dbg !2324
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y392) #15, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x391) #15, !dbg !2325
  %11 = load i64, ptr %tmp3, align 8, !dbg !2324
  store i64 %11, ptr %low_size, align 8, !dbg !2326
  br label %if.end11, !dbg !2327

if.else:                                          ; preds = %cond.end
  %12 = load i64, ptr %low_size, align 8, !dbg !2328
  %tobool9 = icmp ne i64 %12, 0, !dbg !2328
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !2331

if.then10:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !2332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2332

if.end:                                           ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %cond.end7
  %13 = load i64, ptr %low_size, align 8, !dbg !2333
  %call12 = call i64 @memblock_phys_alloc_range(i64 noundef %13, i64 noundef 16777216, i64 noundef 0, i64 noundef 4294967296) #16, !dbg !2334
  store i64 %call12, ptr %low_base, align 8, !dbg !2335
  %14 = load i64, ptr %low_base, align 8, !dbg !2336
  %tobool13 = icmp ne i64 %14, 0, !dbg !2336
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !2338

if.then14:                                        ; preds = %if.end11
  br label %do.body, !dbg !2339

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !2342

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2342

do.end:                                           ; preds = %do.cond
  %15 = load i64, ptr %low_size, align 8, !dbg !2339
  %shr = lshr i64 %15, 20, !dbg !2339
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.35, i64 noundef %shr) #17, !dbg !2339
  store i32 %call16, ptr %tmp15, align 4, !dbg !2342
  %16 = load i32, ptr %tmp15, align 4, !dbg !2339
  store i32 -12, ptr %retval, align 4, !dbg !2344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2344

if.end17:                                         ; preds = %if.end11
  br label %do.body18, !dbg !2345

do.body18:                                        ; preds = %if.end17
  br label %do.cond19, !dbg !2347

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !2347

do.end20:                                         ; preds = %do.cond19
  %17 = load i64, ptr %low_size, align 8, !dbg !2345
  %shr22 = lshr i64 %17, 20, !dbg !2345
  %18 = load i64, ptr %low_base, align 8, !dbg !2345
  %shr23 = lshr i64 %18, 20, !dbg !2345
  %19 = load i64, ptr %low_mem_limit, align 8, !dbg !2345
  %shr24 = lshr i64 %19, 20, !dbg !2345
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.36, i64 noundef %shr22, i64 noundef %shr23, i64 noundef %shr24) #17, !dbg !2345
  store i32 %call25, ptr %tmp21, align 4, !dbg !2347
  %20 = load i32, ptr %tmp21, align 4, !dbg !2345
  %21 = load i64, ptr %low_base, align 8, !dbg !2349
  store i64 %21, ptr @crashk_low_res, align 8, !dbg !2350
  %22 = load i64, ptr %low_base, align 8, !dbg !2351
  %23 = load i64, ptr %low_size, align 8, !dbg !2352
  %add26 = add i64 %22, %23, !dbg !2353
  %sub = sub i64 %add26, 1, !dbg !2354
  store i64 %sub, ptr getelementptr inbounds (%struct.resource, ptr @crashk_low_res, i32 0, i32 1), align 8, !dbg !2355
  %call27 = call i32 @insert_resource(ptr noundef @iomem_resource, ptr noundef @crashk_low_res) #16, !dbg !2356
  store i32 0, ptr %retval, align 4, !dbg !2357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2357

cleanup:                                          ; preds = %do.end20, %do.end, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2358
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_mem_limit) #15, !dbg !2358
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_size) #15, !dbg !2358
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_base) #15, !dbg !2358
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #15, !dbg !2358
  %24 = load i32, ptr %retval, align 4, !dbg !2358
  ret i32 %24, !dbg !2358
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2359 dso_local i32 @parse_crashkernel_low(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2360 dso_local i64 @swiotlb_size_or_default() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2362 dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dump_kernel_offset(ptr noundef %self, i64 noundef %v, ptr noundef %p) #6 align 16 !dbg !2404 {
entry:
  %self.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !2406, metadata !DIExpression()), !dbg !2409
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2407, metadata !DIExpression()), !dbg !2410
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2408, metadata !DIExpression()), !dbg !2411
  %call = call zeroext i1 @kaslr_enabled() #16, !dbg !2412
  br i1 %call, label %if.then, label %if.else, !dbg !2414

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2415

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2418

do.end:                                           ; preds = %do.body
  %call1 = call i64 @kaslr_offset() #16, !dbg !2415
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.37, i64 noundef %call1, i64 noundef -2130706432, i64 noundef -2147483648, i64 noundef -1073741825) #17, !dbg !2415
  store i32 %call2, ptr %tmp, align 4, !dbg !2418
  %0 = load i32, ptr %tmp, align 4, !dbg !2415
  br label %if.end, !dbg !2420

if.else:                                          ; preds = %entry
  br label %do.body3, !dbg !2421

do.body3:                                         ; preds = %if.else
  br label %do.end4, !dbg !2424

do.end4:                                          ; preds = %do.body3
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.38) #17, !dbg !2421
  store i32 %call6, ptr %tmp5, align 4, !dbg !2424
  %1 = load i32, ptr %tmp5, align 4, !dbg !2421
  br label %if.end

if.end:                                           ; preds = %do.end4, %do.end
  ret i32 0, !dbg !2426
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kaslr_enabled() #9 align 16 !dbg !2427 {
entry:
  %0 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 14), align 1, !dbg !2428
  %conv = zext i8 %0 to i32, !dbg !2429
  %and = and i32 %conv, 2, !dbg !2430
  %tobool = icmp ne i32 %and, 0, !dbg !2431
  %lnot = xor i1 %tobool, true, !dbg !2431
  %lnot1 = xor i1 %lnot, true, !dbg !2432
  ret i1 %lnot1, !dbg !2433
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kaslr_offset() #9 align 16 !dbg !2434 {
entry:
  ret i64 sub (i64 ptrtoint (ptr @_text to i64), i64 -2130706432), !dbg !2435
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!725, !726, !727, !728, !729, !730, !731, !732}
!llvm.ident = !{!733}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_brk_start", scope: !2, file: !3, line: 74, type: !31, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.setup.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/setup\22 -D KBUILD_BASENAME=\22setup\22 -D KBUILD_MODNAME=\22setup\22 -D __KBUILD_MODNAME=kmod_setup -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/setup.ll arch/x86/kernel/setup.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/setup.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "25c03266778fb0d567160e57ebb510b5")
!4 = !{!5, !11, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "efi_secureboot_mode", file: !12, line: 1137, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "efi_secureboot_mode_unset", value: 0)
!15 = !DIEnumerator(name: "efi_secureboot_mode_unknown", value: 1)
!16 = !DIEnumerator(name: "efi_secureboot_mode_disabled", value: 2)
!17 = !DIEnumerator(name: "efi_secureboot_mode_enabled", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !19, line: 10, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29}
!21 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!22 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!23 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!24 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!25 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!26 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!27 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!28 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!29 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!30 = !{!31, !32, !33, !35, !36, !37, !39, !41, !43, !46, !51, !60, !62, !64, !65}
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !38, line: 14, baseType: !31)
!38 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!45 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !47, line: 23, baseType: !48)
!47 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !49, line: 31, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_indirect", file: !53, line: 61, size: 192, elements: !54)
!53 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!54 = !{!55, !57, !58, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !53, line: 62, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !49, line: 27, baseType: !7)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !52, file: !53, line: 63, baseType: !56, size: 32, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !52, file: !53, line: 64, baseType: !48, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !52, file: !53, line: 65, baseType: !48, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !61, line: 42, baseType: !31)
!61 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !61, line: 159, baseType: !46)
!66 = !{!0, !67, !69, !71, !73, !75, !80, !85, !90, !92, !94, !99, !104, !106, !108, !110, !115, !451, !517, !519, !521, !523, !525, !527, !529, !534, !536, !538, !540, !545, !547, !552, !557, !559, !561, !564, !582, !587, !592, !600, !605, !610, !621, !626, !631, !633, !636, !638, !640, !642, !647, !649, !654, !659, !664, !667, !670, !675, !680, !682, !687, !692, !697, !702, !715, !720}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "_brk_end", scope: !2, file: !3, line: 75, type: !31, isLocal: false, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_boot_cpu_data386", scope: !2, file: !3, line: 132, type: !32, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_screen_info387", scope: !2, file: !3, line: 152, type: !32, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_edid_info388", scope: !2, file: !3, line: 154, type: !32, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 192, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 24)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 879, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 20)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 918, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 40, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 5)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 921, type: !87, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1196, type: !77, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1199, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 184, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 23)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1202, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 312, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 39)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_setup__393_1348_register_kernel_offset_dumper6394", scope: !2, file: !3, line: 1348, type: !32, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "max_low_pfn_mapped", scope: !2, file: !3, line: 66, type: !31, isLocal: false, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "max_pfn_mapped", scope: !2, file: !3, line: 67, type: !31, isLocal: false, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "__brk_dmi_alloc", scope: !2, file: !3, line: 70, type: !112, isLocal: true, isDefinition: true, align: 8)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 524288, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 65536)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "boot_params", scope: !2, file: !3, line: 77, type: !117, isLocal: false, isDefinition: true)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params", file: !53, line: 186, size: 32768, elements: !118)
!118 = !{!119, !166, !179, !183, !184, !192, !193, !197, !201, !202, !210, !217, !218, !219, !220, !224, !225, !233, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !257, !299, !303, !305, !312, !316, !447}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "screen_info", scope: !117, file: !53, line: 187, baseType: !120, size: 512)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "screen_info", file: !121, line: 11, size: 512, elements: !122)
!121 = !DIFile(filename: "./include/uapi/linux/screen_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "395c08eb846a258de3277732fcbc2819")
!122 = !{!123, !126, !127, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "orig_x", scope: !120, file: !121, line: 12, baseType: !124, size: 8)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !49, line: 21, baseType: !125)
!125 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "orig_y", scope: !120, file: !121, line: 13, baseType: !124, size: 8, offset: 8)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ext_mem_k", scope: !120, file: !121, line: 14, baseType: !128, size: 16, offset: 16)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !49, line: 24, baseType: !129)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_page", scope: !120, file: !121, line: 15, baseType: !128, size: 16, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_mode", scope: !120, file: !121, line: 16, baseType: !124, size: 8, offset: 48)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_cols", scope: !120, file: !121, line: 17, baseType: !124, size: 8, offset: 56)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !121, line: 18, baseType: !124, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !120, file: !121, line: 19, baseType: !124, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_ega_bx", scope: !120, file: !121, line: 20, baseType: !128, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !120, file: !121, line: 21, baseType: !128, size: 16, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_lines", scope: !120, file: !121, line: 22, baseType: !124, size: 8, offset: 112)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_isVGA", scope: !120, file: !121, line: 23, baseType: !124, size: 8, offset: 120)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_points", scope: !120, file: !121, line: 24, baseType: !128, size: 16, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_width", scope: !120, file: !121, line: 27, baseType: !128, size: 16, offset: 144)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_height", scope: !120, file: !121, line: 28, baseType: !128, size: 16, offset: 160)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_depth", scope: !120, file: !121, line: 29, baseType: !128, size: 16, offset: 176)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_base", scope: !120, file: !121, line: 30, baseType: !56, size: 32, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_size", scope: !120, file: !121, line: 31, baseType: !56, size: 32, offset: 224)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "cl_magic", scope: !120, file: !121, line: 32, baseType: !128, size: 16, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cl_offset", scope: !120, file: !121, line: 32, baseType: !128, size: 16, offset: 272)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_linelength", scope: !120, file: !121, line: 33, baseType: !128, size: 16, offset: 288)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "red_size", scope: !120, file: !121, line: 34, baseType: !124, size: 8, offset: 304)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "red_pos", scope: !120, file: !121, line: 35, baseType: !124, size: 8, offset: 312)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "green_size", scope: !120, file: !121, line: 36, baseType: !124, size: 8, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "green_pos", scope: !120, file: !121, line: 37, baseType: !124, size: 8, offset: 328)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "blue_size", scope: !120, file: !121, line: 38, baseType: !124, size: 8, offset: 336)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "blue_pos", scope: !120, file: !121, line: 39, baseType: !124, size: 8, offset: 344)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_size", scope: !120, file: !121, line: 40, baseType: !124, size: 8, offset: 352)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_pos", scope: !120, file: !121, line: 41, baseType: !124, size: 8, offset: 360)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_seg", scope: !120, file: !121, line: 42, baseType: !128, size: 16, offset: 368)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_off", scope: !120, file: !121, line: 43, baseType: !128, size: 16, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !120, file: !121, line: 44, baseType: !128, size: 16, offset: 400)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "vesa_attributes", scope: !120, file: !121, line: 45, baseType: !128, size: 16, offset: 416)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !120, file: !121, line: 46, baseType: !56, size: 32, offset: 432)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ext_lfb_base", scope: !120, file: !121, line: 47, baseType: !56, size: 32, offset: 464)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !120, file: !121, line: 48, baseType: !163, size: 16, offset: 496)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 16, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 2)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "apm_bios_info", scope: !117, file: !53, line: 188, baseType: !167, size: 160, offset: 512)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apm_bios_info", file: !168, line: 25, size: 160, elements: !169)
!168 = !DIFile(filename: "./include/uapi/linux/apm_bios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2faf7b1bd7c92e79370dc4887ba91d3")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !167, file: !168, line: 26, baseType: !128, size: 16)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "cseg", scope: !167, file: !168, line: 27, baseType: !128, size: 16, offset: 16)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !167, file: !168, line: 28, baseType: !56, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16", scope: !167, file: !168, line: 29, baseType: !128, size: 16, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dseg", scope: !167, file: !168, line: 30, baseType: !128, size: 16, offset: 80)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !168, line: 31, baseType: !128, size: 16, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_len", scope: !167, file: !168, line: 32, baseType: !128, size: 16, offset: 112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16_len", scope: !167, file: !168, line: 33, baseType: !128, size: 16, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dseg_len", scope: !167, file: !168, line: 34, baseType: !128, size: 16, offset: 144)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2", scope: !117, file: !53, line: 189, baseType: !180, size: 32, offset: 672)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 32, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 4)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tboot_addr", scope: !117, file: !53, line: 190, baseType: !48, size: 64, offset: 704)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ist_info", scope: !117, file: !53, line: 191, baseType: !185, size: 128, offset: 768)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ist_info", file: !186, line: 23, size: 128, elements: !187)
!186 = !DIFile(filename: "./arch/x86/include/uapi/asm/ist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3966eee4102636d4a6a170719935cbb6")
!187 = !{!188, !189, !190, !191}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !185, file: !186, line: 24, baseType: !56, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !185, file: !186, line: 25, baseType: !56, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !185, file: !186, line: 26, baseType: !56, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "perf_level", scope: !185, file: !186, line: 27, baseType: !56, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_rsdp_addr", scope: !117, file: !53, line: 192, baseType: !48, size: 64, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3", scope: !117, file: !53, line: 193, baseType: !194, size: 64, offset: 960)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 8)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "hd0_info", scope: !117, file: !53, line: 194, baseType: !198, size: 128, offset: 1024)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "hd1_info", scope: !117, file: !53, line: 195, baseType: !198, size: 128, offset: 1152)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sys_desc_table", scope: !117, file: !53, line: 196, baseType: !203, size: 128, offset: 1280)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_desc_table", file: !53, line: 110, size: 128, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !203, file: !53, line: 111, baseType: !128, size: 16)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !203, file: !53, line: 112, baseType: !207, size: 112, offset: 16)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 112, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 14)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "olpc_ofw_header", scope: !117, file: !53, line: 197, baseType: !211, size: 128, offset: 1408)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "olpc_ofw_header", file: !53, line: 116, size: 128, elements: !212)
!212 = !{!213, !214, !215, !216}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_magic", scope: !211, file: !53, line: 117, baseType: !56, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_version", scope: !211, file: !53, line: 118, baseType: !56, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "cif_handler", scope: !211, file: !53, line: 119, baseType: !56, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "irq_desc_table", scope: !211, file: !53, line: 120, baseType: !56, size: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_image", scope: !117, file: !53, line: 198, baseType: !56, size: 32, offset: 1536)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_size", scope: !117, file: !53, line: 199, baseType: !56, size: 32, offset: 1568)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cmd_line_ptr", scope: !117, file: !53, line: 200, baseType: !56, size: 32, offset: 1600)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_pad4", scope: !117, file: !53, line: 201, baseType: !221, size: 896, offset: 1632)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 896, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 112)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cc_blob_address", scope: !117, file: !53, line: 202, baseType: !56, size: 32, offset: 2528)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "edid_info", scope: !117, file: !53, line: 203, baseType: !226, size: 1024, offset: 2560)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edid_info", file: !227, line: 5, size: 1024, elements: !228)
!227 = !DIFile(filename: "./include/uapi/video/edid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a36c5e7269b764712ba1a5dc2e5eb27d")
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !226, file: !227, line: 6, baseType: !230, size: 1024)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1024, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "efi_info", scope: !117, file: !53, line: 204, baseType: !234, size: 256, offset: 3584)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_info", file: !53, line: 123, size: 256, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "efi_loader_signature", scope: !234, file: !53, line: 124, baseType: !56, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab", scope: !234, file: !53, line: 125, baseType: !56, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_size", scope: !234, file: !53, line: 126, baseType: !56, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_version", scope: !234, file: !53, line: 127, baseType: !56, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap", scope: !234, file: !53, line: 128, baseType: !56, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_size", scope: !234, file: !53, line: 129, baseType: !56, size: 32, offset: 160)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab_hi", scope: !234, file: !53, line: 130, baseType: !56, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_hi", scope: !234, file: !53, line: 131, baseType: !56, size: 32, offset: 224)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "alt_mem_k", scope: !117, file: !53, line: 205, baseType: !56, size: 32, offset: 3840)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !117, file: !53, line: 206, baseType: !56, size: 32, offset: 3872)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "e820_entries", scope: !117, file: !53, line: 207, baseType: !124, size: 8, offset: 3904)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf_entries", scope: !117, file: !53, line: 208, baseType: !124, size: 8, offset: 3912)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buf_entries", scope: !117, file: !53, line: 209, baseType: !124, size: 8, offset: 3920)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "kbd_status", scope: !117, file: !53, line: 210, baseType: !124, size: 8, offset: 3928)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "secure_boot", scope: !117, file: !53, line: 211, baseType: !124, size: 8, offset: 3936)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_pad5", scope: !117, file: !53, line: 212, baseType: !163, size: 16, offset: 3944)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !117, file: !53, line: 224, baseType: !124, size: 8, offset: 3960)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_pad6", scope: !117, file: !53, line: 225, baseType: !254, size: 8, offset: 3968)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 8, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 1)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !117, file: !53, line: 226, baseType: !258, size: 984, offset: 3976)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_header", file: !53, line: 68, size: 984, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "setup_sects", scope: !258, file: !53, line: 69, baseType: !124, size: 8)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "root_flags", scope: !258, file: !53, line: 70, baseType: !128, size: 16, offset: 8)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "syssize", scope: !258, file: !53, line: 71, baseType: !56, size: 32, offset: 24)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ram_size", scope: !258, file: !53, line: 72, baseType: !128, size: 16, offset: 56)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vid_mode", scope: !258, file: !53, line: 73, baseType: !128, size: 16, offset: 72)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "root_dev", scope: !258, file: !53, line: 74, baseType: !128, size: 16, offset: 88)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "boot_flag", scope: !258, file: !53, line: 75, baseType: !128, size: 16, offset: 104)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !258, file: !53, line: 76, baseType: !128, size: 16, offset: 120)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !258, file: !53, line: 77, baseType: !56, size: 32, offset: 136)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !258, file: !53, line: 78, baseType: !128, size: 16, offset: 168)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "realmode_swtch", scope: !258, file: !53, line: 79, baseType: !56, size: 32, offset: 184)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "start_sys_seg", scope: !258, file: !53, line: 80, baseType: !128, size: 16, offset: 216)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_version", scope: !258, file: !53, line: 81, baseType: !128, size: 16, offset: 232)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "type_of_loader", scope: !258, file: !53, line: 82, baseType: !124, size: 8, offset: 248)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "loadflags", scope: !258, file: !53, line: 83, baseType: !124, size: 8, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "setup_move_size", scope: !258, file: !53, line: 84, baseType: !128, size: 16, offset: 264)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "code32_start", scope: !258, file: !53, line: 85, baseType: !56, size: 32, offset: 280)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_image", scope: !258, file: !53, line: 86, baseType: !56, size: 32, offset: 312)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_size", scope: !258, file: !53, line: 87, baseType: !56, size: 32, offset: 344)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "bootsect_kludge", scope: !258, file: !53, line: 88, baseType: !56, size: 32, offset: 376)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "heap_end_ptr", scope: !258, file: !53, line: 89, baseType: !128, size: 16, offset: 408)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_ver", scope: !258, file: !53, line: 90, baseType: !124, size: 8, offset: 424)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_type", scope: !258, file: !53, line: 91, baseType: !124, size: 8, offset: 432)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_line_ptr", scope: !258, file: !53, line: 92, baseType: !56, size: 32, offset: 440)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "initrd_addr_max", scope: !258, file: !53, line: 93, baseType: !56, size: 32, offset: 472)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_alignment", scope: !258, file: !53, line: 94, baseType: !56, size: 32, offset: 504)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "relocatable_kernel", scope: !258, file: !53, line: 95, baseType: !124, size: 8, offset: 536)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "min_alignment", scope: !258, file: !53, line: 96, baseType: !124, size: 8, offset: 544)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "xloadflags", scope: !258, file: !53, line: 97, baseType: !128, size: 16, offset: 552)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_size", scope: !258, file: !53, line: 98, baseType: !56, size: 32, offset: 568)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch", scope: !258, file: !53, line: 99, baseType: !56, size: 32, offset: 600)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch_data", scope: !258, file: !53, line: 100, baseType: !48, size: 64, offset: 632)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "payload_offset", scope: !258, file: !53, line: 101, baseType: !56, size: 32, offset: 696)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !258, file: !53, line: 102, baseType: !56, size: 32, offset: 728)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "setup_data", scope: !258, file: !53, line: 103, baseType: !48, size: 64, offset: 760)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pref_address", scope: !258, file: !53, line: 104, baseType: !48, size: 64, offset: 824)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "init_size", scope: !258, file: !53, line: 105, baseType: !56, size: 32, offset: 888)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "handover_offset", scope: !258, file: !53, line: 106, baseType: !56, size: 32, offset: 920)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_info_offset", scope: !258, file: !53, line: 107, baseType: !56, size: 32, offset: 952)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_pad7", scope: !117, file: !53, line: 227, baseType: !300, size: 288, offset: 4960)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 288, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 36)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buffer", scope: !117, file: !53, line: 228, baseType: !304, size: 512, offset: 5248)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 512, elements: !199)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "e820_table", scope: !117, file: !53, line: 229, baseType: !306, size: 20480, offset: 5760)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 20480, elements: !231)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !53, line: 143, size: 160, elements: !308)
!308 = !{!309, !310, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !307, file: !53, line: 144, baseType: !48, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !307, file: !53, line: 145, baseType: !48, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !307, file: !53, line: 146, baseType: !56, size: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_pad8", scope: !117, file: !53, line: 230, baseType: !313, size: 384, offset: 26240)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 384, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 48)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf", scope: !117, file: !53, line: 231, baseType: !317, size: 3936, offset: 26624)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 3936, elements: !445)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_info", file: !319, line: 173, size: 656, elements: !320)
!319 = !DIFile(filename: "./include/uapi/linux/edd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6546916b3caeeabef2983c5e06678df")
!320 = !{!321, !322, !323, !324, !325, !326, !327}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !318, file: !319, line: 174, baseType: !124, size: 8)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !318, file: !319, line: 175, baseType: !124, size: 8, offset: 8)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "interface_support", scope: !318, file: !319, line: 176, baseType: !128, size: 16, offset: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_cylinder", scope: !318, file: !319, line: 177, baseType: !128, size: 16, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_head", scope: !318, file: !319, line: 178, baseType: !124, size: 8, offset: 48)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_sectors_per_track", scope: !318, file: !319, line: 179, baseType: !124, size: 8, offset: 56)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !318, file: !319, line: 180, baseType: !328, size: 592, offset: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_device_params", file: !319, line: 72, size: 592, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !377, !443, !444}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !328, file: !319, line: 73, baseType: !128, size: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !328, file: !319, line: 74, baseType: !128, size: 16, offset: 16)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_cylinders", scope: !328, file: !319, line: 75, baseType: !56, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_heads", scope: !328, file: !319, line: 76, baseType: !56, size: 32, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_track", scope: !328, file: !319, line: 77, baseType: !56, size: 32, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_sectors", scope: !328, file: !319, line: 78, baseType: !48, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_sector", scope: !328, file: !319, line: 79, baseType: !128, size: 16, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dpte_ptr", scope: !328, file: !319, line: 80, baseType: !56, size: 32, offset: 208)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !328, file: !319, line: 81, baseType: !128, size: 16, offset: 240)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "device_path_info_length", scope: !328, file: !319, line: 82, baseType: !124, size: 8, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !328, file: !319, line: 83, baseType: !124, size: 8, offset: 264)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !328, file: !319, line: 84, baseType: !128, size: 16, offset: 272)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "host_bus_type", scope: !328, file: !319, line: 85, baseType: !180, size: 32, offset: 288)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "interface_type", scope: !328, file: !319, line: 86, baseType: !194, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "interface_path", scope: !328, file: !319, line: 113, baseType: !345, size: 64, offset: 384)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !319, line: 87, size: 64, elements: !346)
!346 = !{!347, !353, !361, !365, !369, !373}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !345, file: !319, line: 92, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !319, line: 88, size: 64, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !348, file: !319, line: 89, baseType: !128, size: 16)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !348, file: !319, line: 90, baseType: !128, size: 16, offset: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !348, file: !319, line: 91, baseType: !56, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !345, file: !319, line: 99, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !319, line: 93, size: 64, elements: !355)
!355 = !{!356, !357, !358, !359, !360}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !354, file: !319, line: 94, baseType: !124, size: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !354, file: !319, line: 95, baseType: !124, size: 8, offset: 8)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !354, file: !319, line: 96, baseType: !124, size: 8, offset: 16)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !354, file: !319, line: 97, baseType: !124, size: 8, offset: 24)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !354, file: !319, line: 98, baseType: !56, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ibnd", scope: !345, file: !319, line: 103, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !319, line: 101, size: 64, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !362, file: !319, line: 102, baseType: !48, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "xprs", scope: !345, file: !319, line: 106, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !319, line: 104, size: 64, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !366, file: !319, line: 105, baseType: !48, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "htpt", scope: !345, file: !319, line: 109, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !319, line: 107, size: 64, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !370, file: !319, line: 108, baseType: !48, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !345, file: !319, line: 112, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !319, line: 110, size: 64, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !374, file: !319, line: 111, baseType: !48, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "device_path", scope: !328, file: !319, line: 168, baseType: !378, size: 128, offset: 448)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !319, line: 114, size: 128, elements: !379)
!379 = !{!380, !388, !397, !404, !409, !414, !419, !424, !430, !438}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ata", scope: !378, file: !319, line: 121, baseType: !381, size: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !319, line: 115, size: 128, elements: !382)
!382 = !{!383, !384, !385, !386, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !381, file: !319, line: 116, baseType: !124, size: 8)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !381, file: !319, line: 117, baseType: !124, size: 8, offset: 8)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !381, file: !319, line: 118, baseType: !128, size: 16, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !381, file: !319, line: 119, baseType: !56, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !381, file: !319, line: 120, baseType: !48, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "atapi", scope: !378, file: !319, line: 129, baseType: !389, size: 128)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !319, line: 122, size: 128, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !389, file: !319, line: 123, baseType: !124, size: 8)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !389, file: !319, line: 124, baseType: !124, size: 8, offset: 8)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !389, file: !319, line: 125, baseType: !124, size: 8, offset: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !389, file: !319, line: 126, baseType: !124, size: 8, offset: 24)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !389, file: !319, line: 127, baseType: !56, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !389, file: !319, line: 128, baseType: !48, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "scsi", scope: !378, file: !319, line: 135, baseType: !398, size: 128)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !319, line: 130, size: 128, elements: !399)
!399 = !{!400, !401, !402, !403}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !398, file: !319, line: 131, baseType: !128, size: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !398, file: !319, line: 132, baseType: !48, size: 64, offset: 16)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !398, file: !319, line: 133, baseType: !128, size: 16, offset: 80)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !398, file: !319, line: 134, baseType: !56, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "usb", scope: !378, file: !319, line: 139, baseType: !405, size: 128)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !319, line: 136, size: 128, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !405, file: !319, line: 137, baseType: !48, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !405, file: !319, line: 138, baseType: !48, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i1394", scope: !378, file: !319, line: 143, baseType: !410, size: 128)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !319, line: 140, size: 128, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "eui", scope: !410, file: !319, line: 141, baseType: !48, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !410, file: !319, line: 142, baseType: !48, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "fibre", scope: !378, file: !319, line: 147, baseType: !415, size: 128)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !319, line: 144, size: 128, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wwid", scope: !415, file: !319, line: 145, baseType: !48, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !415, file: !319, line: 146, baseType: !48, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i2o", scope: !378, file: !319, line: 151, baseType: !420, size: 128)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !319, line: 148, size: 128, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "identity_tag", scope: !420, file: !319, line: 149, baseType: !48, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !420, file: !319, line: 150, baseType: !48, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "raid", scope: !378, file: !319, line: 156, baseType: !425, size: 128)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !319, line: 152, size: 128, elements: !426)
!426 = !{!427, !428, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "array_number", scope: !425, file: !319, line: 153, baseType: !56, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !425, file: !319, line: 154, baseType: !56, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !425, file: !319, line: 155, baseType: !48, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sata", scope: !378, file: !319, line: 163, baseType: !431, size: 128)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !319, line: 157, size: 128, elements: !432)
!432 = !{!433, !434, !435, !436, !437}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !431, file: !319, line: 158, baseType: !124, size: 8)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !431, file: !319, line: 159, baseType: !124, size: 8, offset: 8)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !431, file: !319, line: 160, baseType: !128, size: 16, offset: 16)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !431, file: !319, line: 161, baseType: !56, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !431, file: !319, line: 162, baseType: !48, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !378, file: !319, line: 167, baseType: !439, size: 128)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !319, line: 164, size: 128, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !439, file: !319, line: 165, baseType: !48, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !439, file: !319, line: 166, baseType: !48, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !328, file: !319, line: 169, baseType: !124, size: 8, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !328, file: !319, line: 170, baseType: !124, size: 8, offset: 584)
!445 = !{!446}
!446 = !DISubrange(count: 6)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_pad9", scope: !117, file: !53, line: 232, baseType: !448, size: 2208, offset: 30560)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 2208, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 276)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "boot_cpu_data", scope: !2, file: !3, line: 131, type: !453, isLocal: false, isDefinition: true)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !454, line: 83, size: 2368, elements: !455)
!454 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!455 = !{!456, !467, !468, !469, !471, !472, !473, !474, !475, !476, !477, !483, !485, !489, !490, !491, !492, !493, !494, !495, !496, !497, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !512, !514, !516}
!456 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !454, line: 84, baseType: !457, size: 32)
!457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !454, line: 84, size: 32, elements: !458)
!458 = !{!459, !466}
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !457, file: !454, line: 90, baseType: !460, size: 32)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !457, file: !454, line: 90, size: 32, elements: !461)
!461 = !{!462, !463, !464, !465}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !460, file: !454, line: 91, baseType: !124, size: 8)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !460, file: !454, line: 93, baseType: !124, size: 8, offset: 8)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !460, file: !454, line: 95, baseType: !124, size: 8, offset: 16)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !460, file: !454, line: 96, baseType: !124, size: 8, offset: 24)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !457, file: !454, line: 99, baseType: !56, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !453, file: !454, line: 101, baseType: !124, size: 8, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !453, file: !454, line: 104, baseType: !35, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !453, file: !454, line: 107, baseType: !470, size: 160, offset: 96)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, elements: !88)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !453, file: !454, line: 109, baseType: !124, size: 8, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !453, file: !454, line: 110, baseType: !124, size: 8, offset: 264)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !453, file: !454, line: 112, baseType: !124, size: 8, offset: 272)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !453, file: !454, line: 113, baseType: !124, size: 8, offset: 280)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !453, file: !454, line: 115, baseType: !56, size: 32, offset: 288)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !453, file: !454, line: 117, baseType: !35, size: 32, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !454, line: 123, baseType: !478, size: 768, offset: 384)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !454, line: 123, size: 768, elements: !479)
!479 = !{!480, !482}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !478, file: !454, line: 124, baseType: !481, size: 768)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 768, elements: !78)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !478, file: !454, line: 125, baseType: !31, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !453, file: !454, line: 127, baseType: !484, size: 128, offset: 1152)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, elements: !199)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !453, file: !454, line: 128, baseType: !486, size: 512, offset: 1280)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !453, file: !454, line: 130, baseType: !7, size: 32, offset: 1792)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !453, file: !454, line: 131, baseType: !35, size: 32, offset: 1824)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !453, file: !454, line: 133, baseType: !35, size: 32, offset: 1856)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !453, file: !454, line: 134, baseType: !35, size: 32, offset: 1888)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !453, file: !454, line: 135, baseType: !35, size: 32, offset: 1920)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !453, file: !454, line: 136, baseType: !35, size: 32, offset: 1952)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !453, file: !454, line: 137, baseType: !31, size: 64, offset: 1984)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !453, file: !454, line: 139, baseType: !46, size: 64, offset: 2048)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !453, file: !454, line: 141, baseType: !498, size: 16, offset: 2112)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !47, line: 19, baseType: !128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !453, file: !454, line: 142, baseType: !498, size: 16, offset: 2128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !453, file: !454, line: 143, baseType: !498, size: 16, offset: 2144)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !453, file: !454, line: 144, baseType: !498, size: 16, offset: 2160)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !453, file: !454, line: 146, baseType: !498, size: 16, offset: 2176)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !453, file: !454, line: 148, baseType: !498, size: 16, offset: 2192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !453, file: !454, line: 150, baseType: !498, size: 16, offset: 2208)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !453, file: !454, line: 152, baseType: !498, size: 16, offset: 2224)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !453, file: !454, line: 153, baseType: !498, size: 16, offset: 2240)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !453, file: !454, line: 154, baseType: !498, size: 16, offset: 2256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !453, file: !454, line: 156, baseType: !498, size: 16, offset: 2272)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !453, file: !454, line: 158, baseType: !510, size: 8, offset: 2288)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !61, line: 35, baseType: !511)
!511 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !453, file: !454, line: 159, baseType: !513, size: 32, offset: 2304)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !47, line: 21, baseType: !56)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !453, file: !454, line: 161, baseType: !515, size: 8, offset: 2336)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !47, line: 17, baseType: !124)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !453, file: !454, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "mmu_cr4_features", scope: !2, file: !3, line: 135, type: !31, isLocal: false, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "bootloader_type", scope: !2, file: !3, line: 146, type: !35, isLocal: false, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "bootloader_version", scope: !2, file: !3, line: 146, type: !35, isLocal: false, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "screen_info", scope: !2, file: !3, line: 151, type: !120, isLocal: false, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "edid_info", scope: !2, file: !3, line: 153, type: !226, isLocal: false, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "saved_video_mode", scope: !2, file: !3, line: 158, type: !31, isLocal: false, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "command_line", scope: !2, file: !3, line: 164, type: !531, isLocal: true, isDefinition: true)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16384, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 2048)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "relocated_ramdisk", scope: !2, file: !3, line: 229, type: !46, isLocal: false, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !3, line: 620, type: !87, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !3, line: 622, type: !87, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !3, line: 624, type: !542, isLocal: true, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 56, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 7)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !3, line: 626, type: !542, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !3, line: 628, type: !549, isLocal: true, isDefinition: true)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 72, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 9)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !3, line: 632, type: !554, isLocal: true, isDefinition: true)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 104, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 13)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !3, line: 634, type: !87, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !3, line: 636, type: !87, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !3, line: 638, type: !563, isLocal: true, isDefinition: true)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !181)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "standard_io_resources", scope: !2, file: !3, line: 619, type: !566, isLocal: true, isDefinition: true)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 5120, elements: !580)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !568, line: 21, size: 512, elements: !569)
!568 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!569 = !{!570, !572, !573, !574, !575, !576, !578, !579}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !567, file: !568, line: 22, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !61, line: 164, baseType: !65)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !567, file: !568, line: 23, baseType: !571, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !567, file: !568, line: 24, baseType: !39, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !568, line: 25, baseType: !31, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !567, file: !568, line: 26, baseType: !31, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !567, file: !568, line: 27, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !567, file: !568, line: 27, baseType: !577, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !567, file: !568, line: 27, baseType: !577, size: 64, offset: 448)
!580 = !{!581}
!581 = !DISubrange(count: 10)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !584, isLocal: true, isDefinition: true)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 368, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 46)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !589, isLocal: true, isDefinition: true)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 392, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 49)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "bad_pages", scope: !594, file: !3, line: 690, type: !599, isLocal: true, isDefinition: true)
!594 = distinct !DISubprogram(name: "trim_snb_memory", scope: !3, file: !3, line: 688, type: !595, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{null}
!597 = !{!598}
!598 = !DILocalVariable(name: "i", scope: !594, file: !3, line: 697, type: !35)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 320, elements: !88)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !3, line: 702, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 320, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 40)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !3, line: 717, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 232, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 29)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "snb_ids", scope: !612, file: !3, line: 657, type: !619, isLocal: true, isDefinition: true)
!612 = distinct !DISubprogram(name: "snb_gfx_workaround_needed", scope: !3, file: !3, line: 652, type: !613, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{!510}
!615 = !{!616, !617, !618}
!616 = !DILocalVariable(name: "i", scope: !612, file: !3, line: 655, type: !35)
!617 = !DILocalVariable(name: "vendor", scope: !612, file: !3, line: 656, type: !498)
!618 = !DILocalVariable(name: "devid", scope: !612, file: !3, line: 656, type: !498)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 112, elements: !543)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 480, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 60)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 96, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 12)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "code_resource", scope: !2, file: !3, line: 99, type: !567, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !635, isLocal: true, isDefinition: true)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 112, elements: !208)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "rodata_resource", scope: !2, file: !3, line: 85, type: !567, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !628, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "data_resource", scope: !2, file: !3, line: 92, type: !567, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 88, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 11)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(name: "bss_resource", scope: !2, file: !3, line: 106, type: !567, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !3, line: 828, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 472, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 59)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !3, line: 832, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 344, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 43)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !3, line: 761, type: !661, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 424, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 53)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !3, line: 310, type: !666, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 288, elements: !301)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !669, isLocal: true, isDefinition: true)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 384, elements: !314)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !3, line: 272, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 400, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 50)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 576, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 72)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !3, line: 590, type: !623, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !3, line: 599, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 432, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 54)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !3, line: 609, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 592, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 74)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !3, line: 527, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 584, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 73)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !3, line: 532, type: !699, isLocal: true, isDefinition: true)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 648, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 81)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(name: "kernel_offset_notifier", scope: !2, file: !3, line: 1338, type: !704, isLocal: true, isDefinition: true)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !705, line: 54, size: 192, elements: !706)
!705 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!706 = !{!707, !713, !714}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !704, file: !705, line: 55, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !705, line: 51, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!35, !712, !31, !32}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !705, line: 56, baseType: !712, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !704, file: !705, line: 57, baseType: !35, size: 32, offset: 128)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !3, line: 805, type: !717, isLocal: true, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 536, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 67)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !3, line: 811, type: !722, isLocal: true, isDefinition: true)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 216, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 27)
!725 = !{i32 7, !"Dwarf Version", i32 5}
!726 = !{i32 2, !"Debug Info Version", i32 3}
!727 = !{i32 1, !"wchar_size", i32 2}
!728 = !{i32 8, !"cf-protection-branch", i32 1}
!729 = !{i32 4, !"function_return_thunk_extern", i32 1}
!730 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!731 = !{i32 1, !"Code Model", i32 2}
!732 = !{i32 1, !"override-stack-alignment", i32 8}
!733 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!734 = distinct !DISubprogram(name: "extend_brk", scope: !3, file: !3, line: 193, type: !735, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !741)
!735 = !DISubroutineType(types: !736)
!736 = !{!32, !737, !737}
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 61, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !739, line: 72, baseType: !740)
!739 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !739, line: 16, baseType: !31)
!741 = !{!742, !743, !744, !745}
!742 = !DILocalVariable(name: "size", arg: 1, scope: !734, file: !3, line: 193, type: !737)
!743 = !DILocalVariable(name: "align", arg: 2, scope: !734, file: !3, line: 193, type: !737)
!744 = !DILocalVariable(name: "mask", scope: !734, file: !3, line: 195, type: !737)
!745 = !DILocalVariable(name: "ret", scope: !734, file: !3, line: 196, type: !32)
!746 = !DILocation(line: 193, column: 33, scope: !734)
!747 = !DILocation(line: 193, column: 46, scope: !734)
!748 = !DILocation(line: 195, column: 2, scope: !734)
!749 = !DILocation(line: 195, column: 9, scope: !734)
!750 = !DILocation(line: 195, column: 16, scope: !734)
!751 = !DILocation(line: 195, column: 22, scope: !734)
!752 = !DILocation(line: 196, column: 2, scope: !734)
!753 = !DILocation(line: 196, column: 8, scope: !734)
!754 = !DILocation(line: 198, column: 2, scope: !734)
!755 = !DILocation(line: 198, column: 2, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 198, column: 2)
!757 = distinct !DILexicalBlock(scope: !734, file: !3, line: 198, column: 2)
!758 = !DILocation(line: 198, column: 2, scope: !757)
!759 = !DILocation(line: 198, column: 2, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !3, line: 198, column: 2)
!761 = !DILocation(line: 198, column: 2, scope: !762)
!762 = distinct !DILexicalBlock(scope: !760, file: !3, line: 198, column: 2)
!763 = !DILocation(line: 198, column: 2, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !3, line: 198, column: 2)
!765 = !{i64 2158279760, i64 2158279789, i64 2158279835, i64 2158279893, i64 2158279947, i64 2158280001, i64 2158280056, i64 2158280087}
!766 = !DILocation(line: 199, column: 2, scope: !734)
!767 = !DILocation(line: 199, column: 2, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 199, column: 2)
!769 = distinct !DILexicalBlock(scope: !734, file: !3, line: 199, column: 2)
!770 = !DILocation(line: 199, column: 2, scope: !769)
!771 = !DILocation(line: 199, column: 2, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !3, line: 199, column: 2)
!773 = !DILocation(line: 199, column: 2, scope: !774)
!774 = distinct !DILexicalBlock(scope: !772, file: !3, line: 199, column: 2)
!775 = !DILocation(line: 199, column: 2, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !3, line: 199, column: 2)
!777 = !{i64 2158280746, i64 2158280775, i64 2158280821, i64 2158280879, i64 2158280933, i64 2158280987, i64 2158281042, i64 2158281073}
!778 = !DILocation(line: 201, column: 14, scope: !734)
!779 = !DILocation(line: 201, column: 25, scope: !734)
!780 = !DILocation(line: 201, column: 23, scope: !734)
!781 = !DILocation(line: 201, column: 34, scope: !734)
!782 = !DILocation(line: 201, column: 33, scope: !734)
!783 = !DILocation(line: 201, column: 31, scope: !734)
!784 = !DILocation(line: 201, column: 11, scope: !734)
!785 = !DILocation(line: 202, column: 2, scope: !734)
!786 = !DILocation(line: 202, column: 2, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 202, column: 2)
!788 = distinct !DILexicalBlock(scope: !734, file: !3, line: 202, column: 2)
!789 = !DILocation(line: 202, column: 2, scope: !788)
!790 = !DILocation(line: 202, column: 2, scope: !791)
!791 = distinct !DILexicalBlock(scope: !787, file: !3, line: 202, column: 2)
!792 = !DILocation(line: 202, column: 2, scope: !793)
!793 = distinct !DILexicalBlock(scope: !791, file: !3, line: 202, column: 2)
!794 = !DILocation(line: 202, column: 2, scope: !795)
!795 = distinct !DILexicalBlock(scope: !791, file: !3, line: 202, column: 2)
!796 = !{i64 2158281786, i64 2158281815, i64 2158281861, i64 2158281919, i64 2158281973, i64 2158282027, i64 2158282082, i64 2158282113}
!797 = !DILocation(line: 204, column: 16, scope: !734)
!798 = !DILocation(line: 204, column: 8, scope: !734)
!799 = !DILocation(line: 204, column: 6, scope: !734)
!800 = !DILocation(line: 205, column: 14, scope: !734)
!801 = !DILocation(line: 205, column: 11, scope: !734)
!802 = !DILocation(line: 207, column: 9, scope: !734)
!803 = !DILocation(line: 207, column: 17, scope: !734)
!804 = !DILocation(line: 207, column: 2, scope: !734)
!805 = !DILocation(line: 209, column: 9, scope: !734)
!806 = !DILocation(line: 210, column: 1, scope: !734)
!807 = !DILocation(line: 209, column: 2, scope: !734)
!808 = distinct !DISubprogram(name: "reserve_standard_io_resources", scope: !3, file: !3, line: 642, type: !595, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!809 = !{!810}
!810 = !DILocalVariable(name: "i", scope: !808, file: !3, line: 644, type: !35)
!811 = !DILocation(line: 644, column: 2, scope: !808)
!812 = !DILocation(line: 644, column: 6, scope: !808)
!813 = !DILocation(line: 647, column: 9, scope: !814)
!814 = distinct !DILexicalBlock(scope: !808, file: !3, line: 647, column: 2)
!815 = !DILocation(line: 647, column: 7, scope: !814)
!816 = !DILocation(line: 647, column: 14, scope: !817)
!817 = distinct !DILexicalBlock(scope: !814, file: !3, line: 647, column: 2)
!818 = !DILocation(line: 647, column: 16, scope: !817)
!819 = !DILocation(line: 647, column: 2, scope: !814)
!820 = !DILocation(line: 648, column: 61, scope: !817)
!821 = !DILocation(line: 648, column: 39, scope: !817)
!822 = !DILocation(line: 648, column: 3, scope: !817)
!823 = !DILocation(line: 647, column: 54, scope: !817)
!824 = !DILocation(line: 647, column: 2, scope: !817)
!825 = distinct !{!825, !819, !826, !827, !828}
!826 = !DILocation(line: 648, column: 63, scope: !814)
!827 = !{!"llvm.loop.mustprogress"}
!828 = !{!"llvm.loop.unroll.disable"}
!829 = !DILocation(line: 650, column: 1, scope: !808)
!830 = !DISubprogram(name: "request_resource", scope: !568, file: !568, line: 196, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!831 = !DISubroutineType(types: !832)
!832 = !{!35, !577, !577}
!833 = distinct !DISubprogram(name: "x86_configure_nx", scope: !3, file: !3, line: 817, type: !595, scopeLine: 818, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!834 = !DILocation(line: 819, column: 6, scope: !833)
!835 = !DILocation(line: 819, column: 6, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !3, line: 819, column: 6)
!837 = !DILocation(line: 820, column: 24, scope: !836)
!838 = !DILocation(line: 820, column: 3, scope: !836)
!839 = !DILocation(line: 822, column: 24, scope: !836)
!840 = !DILocation(line: 823, column: 1, scope: !833)
!841 = distinct !DISubprogram(name: "arch_test_bit", scope: !842, file: !842, line: 237, type: !843, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !848)
!842 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!843 = !DISubroutineType(types: !844)
!844 = !{!510, !31, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!848 = !{!849, !850}
!849 = !DILocalVariable(name: "nr", arg: 1, scope: !841, file: !842, line: 237, type: !31)
!850 = !DILocalVariable(name: "addr", arg: 2, scope: !841, file: !842, line: 237, type: !845)
!851 = !DILocation(line: 237, column: 29, scope: !841)
!852 = !DILocation(line: 237, column: 63, scope: !841)
!853 = !DILocation(line: 239, column: 30, scope: !841)
!854 = !DILocation(line: 239, column: 9, scope: !841)
!855 = !DILocation(line: 239, column: 54, scope: !841)
!856 = !DILocation(line: 239, column: 58, scope: !841)
!857 = !DILocation(line: 239, column: 36, scope: !841)
!858 = !DILocation(line: 240, column: 26, scope: !841)
!859 = !DILocation(line: 240, column: 30, scope: !841)
!860 = !DILocation(line: 240, column: 8, scope: !841)
!861 = !DILocation(line: 239, column: 2, scope: !841)
!862 = distinct !DISubprogram(name: "setup_arch", scope: !3, file: !3, line: 854, type: !863, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !866)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!866 = !{!867}
!867 = !DILocalVariable(name: "cmdline_p", arg: 1, scope: !862, file: !3, line: 854, type: !865)
!868 = !DILocation(line: 854, column: 31, scope: !862)
!869 = !DILocation(line: 879, column: 2, scope: !870)
!870 = distinct !DILexicalBlock(scope: !862, file: !3, line: 879, column: 2)
!871 = !DILocation(line: 879, column: 2, scope: !872)
!872 = distinct !DILexicalBlock(scope: !870, file: !3, line: 879, column: 2)
!873 = !DILocation(line: 880, column: 32, scope: !862)
!874 = !DILocation(line: 880, column: 30, scope: !862)
!875 = !DILocation(line: 887, column: 2, scope: !862)
!876 = !DILocation(line: 889, column: 2, scope: !862)
!877 = !DILocation(line: 890, column: 2, scope: !862)
!878 = !DILocation(line: 891, column: 2, scope: !862)
!879 = !DILocation(line: 892, column: 2, scope: !862)
!880 = !DILocation(line: 893, column: 2, scope: !862)
!881 = !DILocation(line: 895, column: 2, scope: !862)
!882 = !DILocation(line: 897, column: 44, scope: !862)
!883 = !DILocation(line: 897, column: 13, scope: !862)
!884 = !DILocation(line: 897, column: 11, scope: !862)
!885 = !DILocation(line: 898, column: 28, scope: !862)
!886 = !DILocation(line: 899, column: 26, scope: !862)
!887 = !DILocation(line: 904, column: 37, scope: !862)
!888 = !DILocation(line: 904, column: 21, scope: !862)
!889 = !DILocation(line: 904, column: 19, scope: !862)
!890 = !DILocation(line: 905, column: 36, scope: !862)
!891 = !DILocation(line: 905, column: 20, scope: !862)
!892 = !DILocation(line: 905, column: 18, scope: !862)
!893 = !DILocation(line: 906, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !862, file: !3, line: 906, column: 6)
!895 = !DILocation(line: 906, column: 23, scope: !894)
!896 = !DILocation(line: 906, column: 29, scope: !894)
!897 = !DILocation(line: 906, column: 6, scope: !862)
!898 = !DILocation(line: 907, column: 19, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !3, line: 906, column: 37)
!900 = !DILocation(line: 908, column: 39, scope: !899)
!901 = !DILocation(line: 908, column: 23, scope: !899)
!902 = !DILocation(line: 908, column: 54, scope: !899)
!903 = !DILocation(line: 908, column: 61, scope: !899)
!904 = !DILocation(line: 908, column: 19, scope: !899)
!905 = !DILocation(line: 909, column: 2, scope: !899)
!906 = !DILocation(line: 910, column: 24, scope: !862)
!907 = !DILocation(line: 910, column: 40, scope: !862)
!908 = !DILocation(line: 910, column: 22, scope: !862)
!909 = !DILocation(line: 911, column: 40, scope: !862)
!910 = !DILocation(line: 911, column: 24, scope: !862)
!911 = !DILocation(line: 911, column: 55, scope: !862)
!912 = !DILocation(line: 911, column: 21, scope: !862)
!913 = !DILocation(line: 917, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !862, file: !3, line: 917, column: 6)
!915 = !DILocation(line: 917, column: 6, scope: !862)
!916 = !DILocation(line: 919, column: 3, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !3, line: 918, column: 36)
!918 = !DILocation(line: 920, column: 2, scope: !917)
!919 = !DILocation(line: 920, column: 14, scope: !920)
!920 = distinct !DILexicalBlock(scope: !914, file: !3, line: 920, column: 13)
!921 = !DILocation(line: 920, column: 13, scope: !914)
!922 = !DILocation(line: 922, column: 3, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 921, column: 36)
!924 = !DILocation(line: 923, column: 3, scope: !923)
!925 = !DILocation(line: 924, column: 2, scope: !923)
!926 = !DILocation(line: 927, column: 15, scope: !862)
!927 = !DILocation(line: 927, column: 2, scope: !862)
!928 = !DILocation(line: 941, column: 2, scope: !862)
!929 = !DILocation(line: 943, column: 46, scope: !862)
!930 = !DILocation(line: 943, column: 32, scope: !862)
!931 = !DILocation(line: 943, column: 29, scope: !862)
!932 = !DILocation(line: 943, column: 61, scope: !862)
!933 = !DILocation(line: 943, column: 21, scope: !862)
!934 = !DILocation(line: 944, column: 2, scope: !862)
!935 = !DILocation(line: 945, column: 2, scope: !862)
!936 = !DILocation(line: 947, column: 2, scope: !862)
!937 = !DILocation(line: 949, column: 23, scope: !938)
!938 = distinct !DILexicalBlock(scope: !862, file: !3, line: 949, column: 6)
!939 = !DILocation(line: 949, column: 7, scope: !938)
!940 = !DILocation(line: 949, column: 6, scope: !862)
!941 = !DILocation(line: 950, column: 19, scope: !938)
!942 = !DILocation(line: 950, column: 3, scope: !938)
!943 = !DILocation(line: 951, column: 55, scope: !862)
!944 = !DILocation(line: 951, column: 47, scope: !862)
!945 = !DILocation(line: 951, column: 2, scope: !862)
!946 = !DILocation(line: 953, column: 24, scope: !862)
!947 = !DILocation(line: 953, column: 22, scope: !862)
!948 = !DILocation(line: 954, column: 22, scope: !862)
!949 = !DILocation(line: 954, column: 41, scope: !862)
!950 = !DILocation(line: 954, column: 20, scope: !862)
!951 = !DILocation(line: 955, column: 26, scope: !862)
!952 = !DILocation(line: 955, column: 24, scope: !862)
!953 = !DILocation(line: 956, column: 24, scope: !862)
!954 = !DILocation(line: 956, column: 49, scope: !862)
!955 = !DILocation(line: 956, column: 22, scope: !862)
!956 = !DILocation(line: 957, column: 24, scope: !862)
!957 = !DILocation(line: 957, column: 22, scope: !862)
!958 = !DILocation(line: 958, column: 22, scope: !862)
!959 = !DILocation(line: 958, column: 41, scope: !862)
!960 = !DILocation(line: 958, column: 20, scope: !862)
!961 = !DILocation(line: 959, column: 23, scope: !862)
!962 = !DILocation(line: 959, column: 21, scope: !862)
!963 = !DILocation(line: 960, column: 21, scope: !862)
!964 = !DILocation(line: 960, column: 44, scope: !862)
!965 = !DILocation(line: 960, column: 19, scope: !862)
!966 = !DILocation(line: 975, column: 2, scope: !862)
!967 = !DILocation(line: 976, column: 3, scope: !862)
!968 = !DILocation(line: 976, column: 13, scope: !862)
!969 = !DILocation(line: 983, column: 2, scope: !862)
!970 = !DILocation(line: 985, column: 2, scope: !862)
!971 = !DILocation(line: 987, column: 6, scope: !972)
!972 = distinct !DILexicalBlock(scope: !862, file: !3, line: 987, column: 6)
!973 = !DILocation(line: 987, column: 6, scope: !862)
!974 = !DILocation(line: 988, column: 3, scope: !972)
!975 = !DILocation(line: 1014, column: 2, scope: !862)
!976 = !DILocation(line: 1016, column: 2, scope: !862)
!977 = !DILocation(line: 1018, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1018, column: 6)
!979 = !DILocation(line: 1018, column: 6, scope: !862)
!980 = !DILocation(line: 1020, column: 20, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 1018, column: 24)
!982 = !DILocation(line: 1022, column: 3, scope: !981)
!983 = !DILocation(line: 1023, column: 2, scope: !981)
!984 = !DILocation(line: 1025, column: 2, scope: !862)
!985 = !DILocation(line: 1026, column: 2, scope: !862)
!986 = !DILocation(line: 1028, column: 6, scope: !987)
!987 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1028, column: 6)
!988 = !DILocation(line: 1028, column: 6, scope: !862)
!989 = !DILocation(line: 1029, column: 3, scope: !987)
!990 = !DILocation(line: 1031, column: 2, scope: !862)
!991 = !DILocation(line: 1032, column: 21, scope: !862)
!992 = !DILocation(line: 1032, column: 2, scope: !862)
!993 = !DILocation(line: 1040, column: 2, scope: !862)
!994 = !DILocation(line: 1042, column: 2, scope: !862)
!995 = !DILocation(line: 1043, column: 21, scope: !862)
!996 = !DILocation(line: 1043, column: 2, scope: !862)
!997 = !DILocation(line: 1046, column: 2, scope: !862)
!998 = !DILocation(line: 1047, column: 2, scope: !862)
!999 = !DILocation(line: 1048, column: 2, scope: !862)
!1000 = !DILocation(line: 1049, column: 2, scope: !862)
!1001 = !DILocation(line: 1051, column: 2, scope: !862)
!1002 = !DILocation(line: 1052, column: 2, scope: !862)
!1003 = !DILocation(line: 1062, column: 2, scope: !862)
!1004 = !DILocation(line: 1069, column: 12, scope: !862)
!1005 = !DILocation(line: 1069, column: 10, scope: !862)
!1006 = !DILocation(line: 1072, column: 2, scope: !862)
!1007 = !DILocation(line: 1073, column: 32, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1073, column: 6)
!1009 = !DILocation(line: 1073, column: 6, scope: !1008)
!1010 = !DILocation(line: 1073, column: 6, scope: !862)
!1011 = !DILocation(line: 1074, column: 13, scope: !1008)
!1012 = !DILocation(line: 1074, column: 11, scope: !1008)
!1013 = !DILocation(line: 1074, column: 3, scope: !1008)
!1014 = !DILocation(line: 1076, column: 21, scope: !862)
!1015 = !DILocation(line: 1076, column: 19, scope: !862)
!1016 = !DILocation(line: 1082, column: 2, scope: !862)
!1017 = !DILocation(line: 1088, column: 2, scope: !862)
!1018 = !DILocation(line: 1092, column: 6, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1092, column: 6)
!1020 = !DILocation(line: 1092, column: 14, scope: !1019)
!1021 = !DILocation(line: 1092, column: 6, scope: !862)
!1022 = !DILocation(line: 1093, column: 17, scope: !1019)
!1023 = !DILocation(line: 1093, column: 15, scope: !1019)
!1024 = !DILocation(line: 1093, column: 3, scope: !1019)
!1025 = !DILocation(line: 1095, column: 17, scope: !1019)
!1026 = !DILocation(line: 1095, column: 15, scope: !1019)
!1027 = !DILocation(line: 1097, column: 24, scope: !862)
!1028 = !DILocation(line: 1097, column: 54, scope: !862)
!1029 = !DILocation(line: 1097, column: 14, scope: !862)
!1030 = !DILocation(line: 1103, column: 2, scope: !862)
!1031 = !DILocation(line: 1105, column: 2, scope: !862)
!1032 = !DILocation(line: 1112, column: 2, scope: !862)
!1033 = !DILocation(line: 1114, column: 2, scope: !862)
!1034 = !DILocation(line: 1116, column: 2, scope: !862)
!1035 = !DILocation(line: 1117, column: 2, scope: !862)
!1036 = !DILocation(line: 1123, column: 2, scope: !862)
!1037 = !DILocation(line: 1124, column: 2, scope: !862)
!1038 = !DILocation(line: 1126, column: 2, scope: !862)
!1039 = !DILocation(line: 1127, column: 2, scope: !862)
!1040 = !DILocation(line: 1128, column: 2, scope: !862)
!1041 = !DILocation(line: 1129, column: 2, scope: !862)
!1042 = !DILocation(line: 1135, column: 2, scope: !862)
!1043 = !DILocation(line: 1138, column: 2, scope: !862)
!1044 = !DILocation(line: 1141, column: 2, scope: !862)
!1045 = !DILocation(line: 1163, column: 15, scope: !862)
!1046 = !DILocation(line: 1163, column: 2, scope: !862)
!1047 = !DILocation(line: 1165, column: 2, scope: !862)
!1048 = !DILocation(line: 1167, column: 2, scope: !862)
!1049 = !DILocation(line: 1178, column: 21, scope: !862)
!1050 = !DILocation(line: 1178, column: 34, scope: !862)
!1051 = !DILocation(line: 1178, column: 19, scope: !862)
!1052 = !DILocation(line: 1180, column: 29, scope: !862)
!1053 = !DILocation(line: 1180, column: 2, scope: !862)
!1054 = !DILocation(line: 1187, column: 6, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1187, column: 6)
!1056 = !DILocation(line: 1187, column: 6, scope: !862)
!1057 = !DILocation(line: 1188, column: 3, scope: !1055)
!1058 = !DILocation(line: 1191, column: 2, scope: !862)
!1059 = !DILocation(line: 1193, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1193, column: 6)
!1061 = !DILocation(line: 1193, column: 6, scope: !862)
!1062 = !DILocation(line: 1194, column: 23, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 1193, column: 29)
!1064 = !DILocation(line: 1194, column: 11, scope: !1063)
!1065 = !DILocation(line: 1194, column: 3, scope: !1063)
!1066 = !DILocation(line: 1196, column: 4, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 1196, column: 4)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 1194, column: 36)
!1069 = !DILocation(line: 1196, column: 4, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 1196, column: 4)
!1071 = !DILocation(line: 1197, column: 4, scope: !1068)
!1072 = !DILocation(line: 1199, column: 4, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 1199, column: 4)
!1074 = !DILocation(line: 1199, column: 4, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 1199, column: 4)
!1076 = !DILocation(line: 1200, column: 4, scope: !1068)
!1077 = !DILocation(line: 1202, column: 4, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 1202, column: 4)
!1079 = !DILocation(line: 1202, column: 4, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 1202, column: 4)
!1081 = !DILocation(line: 1203, column: 4, scope: !1068)
!1082 = !DILocation(line: 1205, column: 2, scope: !1063)
!1083 = !DILocation(line: 1207, column: 2, scope: !862)
!1084 = !DILocation(line: 1209, column: 2, scope: !862)
!1085 = !DILocation(line: 1211, column: 2, scope: !862)
!1086 = !DILocation(line: 1213, column: 2, scope: !862)
!1087 = !DILocation(line: 1215, column: 2, scope: !862)
!1088 = !DILocation(line: 1217, column: 2, scope: !862)
!1089 = !DILocation(line: 1219, column: 2, scope: !862)
!1090 = !DILocation(line: 1221, column: 2, scope: !862)
!1091 = !DILocation(line: 1222, column: 25, scope: !862)
!1092 = !DILocation(line: 1222, column: 40, scope: !862)
!1093 = !DILocation(line: 1222, column: 2, scope: !862)
!1094 = !DILocation(line: 1224, column: 6, scope: !862)
!1095 = !DILocation(line: 1224, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1224, column: 6)
!1097 = !DILocation(line: 1225, column: 3, scope: !1096)
!1098 = !DILocation(line: 1231, column: 2, scope: !862)
!1099 = !DILocation(line: 1233, column: 2, scope: !862)
!1100 = !DILocation(line: 1235, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1235, column: 6)
!1102 = !DILocation(line: 1235, column: 6, scope: !862)
!1103 = !DILocation(line: 1236, column: 3, scope: !1101)
!1104 = !DILocation(line: 1238, column: 18, scope: !862)
!1105 = !DILocation(line: 1238, column: 2, scope: !862)
!1106 = !DILocation(line: 1240, column: 2, scope: !862)
!1107 = !DILocation(line: 1248, column: 2, scope: !862)
!1108 = !DILocation(line: 1250, column: 2, scope: !862)
!1109 = !DILocation(line: 1250, column: 2, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1250, column: 2)
!1111 = !DILocation(line: 1252, column: 2, scope: !862)
!1112 = !DILocation(line: 1254, column: 2, scope: !862)
!1113 = !DILocation(line: 1256, column: 2, scope: !862)
!1114 = !DILocation(line: 1261, column: 2, scope: !862)
!1115 = !DILocation(line: 1262, column: 2, scope: !862)
!1116 = !DILocation(line: 1267, column: 2, scope: !862)
!1117 = !DILocation(line: 1273, column: 2, scope: !862)
!1118 = !DILocation(line: 1275, column: 2, scope: !862)
!1119 = !DILocation(line: 1277, column: 2, scope: !862)
!1120 = !DILocation(line: 1278, column: 2, scope: !862)
!1121 = !DILocation(line: 1280, column: 2, scope: !862)
!1122 = !DILocation(line: 1282, column: 17, scope: !862)
!1123 = !DILocation(line: 1282, column: 2, scope: !862)
!1124 = !DILocation(line: 1284, column: 2, scope: !862)
!1125 = !DILocation(line: 1285, column: 32, scope: !862)
!1126 = !DILocation(line: 1285, column: 2, scope: !862)
!1127 = !DILocation(line: 1287, column: 21, scope: !862)
!1128 = !DILocation(line: 1287, column: 2, scope: !862)
!1129 = !DILocation(line: 1289, column: 2, scope: !862)
!1130 = !DILocation(line: 1293, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1293, column: 6)
!1132 = !DILocation(line: 1293, column: 29, scope: !1131)
!1133 = !DILocation(line: 1293, column: 33, scope: !1131)
!1134 = !DILocation(line: 1293, column: 55, scope: !1131)
!1135 = !DILocation(line: 1293, column: 6, scope: !862)
!1136 = !DILocation(line: 1294, column: 14, scope: !1131)
!1137 = !DILocation(line: 1294, column: 3, scope: !1131)
!1138 = !DILocation(line: 1297, column: 15, scope: !862)
!1139 = !DILocation(line: 1297, column: 2, scope: !862)
!1140 = !DILocation(line: 1299, column: 18, scope: !862)
!1141 = !DILocation(line: 1299, column: 2, scope: !862)
!1142 = !DILocation(line: 1307, column: 2, scope: !862)
!1143 = !DILocation(line: 1309, column: 2, scope: !862)
!1144 = !DILocation(line: 1311, column: 2, scope: !862)
!1145 = !DILocation(line: 1314, column: 6, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1314, column: 6)
!1147 = !DILocation(line: 1314, column: 6, scope: !862)
!1148 = !DILocation(line: 1315, column: 3, scope: !1146)
!1149 = !DILocation(line: 1318, column: 2, scope: !862)
!1150 = !DILocation(line: 1319, column: 1, scope: !862)
!1151 = !DISubprogram(name: "_printk", scope: !1152, file: !1152, line: 153, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1152 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!35, !39, null}
!1155 = distinct !DISubprogram(name: "_static_cpu_has", scope: !1156, file: !1156, line: 173, type: !1157, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1156 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!510, !498}
!1159 = !{!1160, !1161, !1162}
!1160 = !DILocalVariable(name: "bit", arg: 1, scope: !1155, file: !1156, line: 173, type: !498)
!1161 = !DILabel(scope: !1155, name: "t_yes", file: !1156, line: 187)
!1162 = !DILabel(scope: !1155, name: "t_no", file: !1156, line: 189)
!1163 = !DILocation(line: 173, column: 49, scope: !1155)
!1164 = !DILocation(line: 183, column: 24, scope: !1155)
!1165 = !DILocation(line: 184, column: 30, scope: !1155)
!1166 = !DILocation(line: 184, column: 34, scope: !1155)
!1167 = !DILocation(line: 184, column: 26, scope: !1155)
!1168 = !DILocation(line: 185, column: 70, scope: !1155)
!1169 = !DILocation(line: 185, column: 74, scope: !1155)
!1170 = !DILocation(line: 185, column: 25, scope: !1155)
!1171 = !DILocation(line: 175, column: 2, scope: !1155)
!1172 = !{i64 2149663494, i64 2149663527, i64 2149663533, i64 2149663549, i64 2149663568, i64 2149663599, i64 2149664552, i64 2149663141, i64 2149664558, i64 2149664606, i64 2149664670, i64 2149664734, i64 2149664791, i64 2149664998, i64 2149665046, i64 2149665110, i64 2149665174, i64 2149665231, i64 2149663259, i64 2149663284, i64 2149665441, i64 2149665569, i64 2149665502, i64 2149665583, i64 2149665597, i64 2149665713, i64 2149665658, i64 2149665727, i64 2149663418, i64 1138270, i64 1138310, i64 1138319, i64 1138369, i64 1138390, i64 1138410}
!1173 = !DILocation(line: 187, column: 1, scope: !1155)
!1174 = !DILocation(line: 188, column: 2, scope: !1155)
!1175 = !DILocation(line: 189, column: 1, scope: !1155)
!1176 = !DILocation(line: 190, column: 2, scope: !1155)
!1177 = !DILocation(line: 191, column: 1, scope: !1155)
!1178 = distinct !DISubprogram(name: "olpc_ofw_detect", scope: !1179, file: !1179, line: 33, type: !595, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1179 = !DIFile(filename: "./arch/x86/include/asm/olpc_ofw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19b31af626d640362c99fbb3e5be6d6e")
!1180 = !DILocation(line: 33, column: 44, scope: !1178)
!1181 = !DISubprogram(name: "idt_setup_early_traps", scope: !1182, file: !1182, line: 438, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1182 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!1183 = !DISubprogram(name: "early_cpu_init", scope: !454, file: !454, line: 209, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DISubprogram(name: "jump_label_init", scope: !1185, file: !1185, line: 218, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1185 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1186 = !DISubprogram(name: "static_call_init", scope: !1187, file: !1187, line: 165, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1187 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!35}
!1190 = !DISubprogram(name: "early_ioremap_init", scope: !1191, file: !1191, line: 24, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1191 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!1192 = distinct !DISubprogram(name: "setup_olpc_ofw_pgd", scope: !1179, file: !1179, line: 34, type: !595, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1193 = !DILocation(line: 34, column: 47, scope: !1192)
!1194 = distinct !DISubprogram(name: "old_decode_dev", scope: !1195, file: !1195, line: 34, type: !1196, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1200)
!1195 = !DIFile(filename: "./include/linux/kdev_t.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4069c7bb69bcdf1e01b1b06b87483f5")
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!1198, !498}
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !61, line: 21, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !61, line: 18, baseType: !513)
!1200 = !{!1201}
!1201 = !DILocalVariable(name: "val", arg: 1, scope: !1194, file: !1195, line: 34, type: !498)
!1202 = !DILocation(line: 34, column: 49, scope: !1194)
!1203 = !DILocation(line: 36, column: 9, scope: !1194)
!1204 = !DILocation(line: 36, column: 2, scope: !1194)
!1205 = !DISubprogram(name: "strncmp", scope: !1206, file: !1206, line: 91, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1206 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!35, !39, !39, !738}
!1209 = distinct !DISubprogram(name: "set_bit", scope: !1210, file: !1210, line: 26, type: !1211, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1214)
!1210 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !45, !1213}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!1214 = !{!1215, !1216}
!1215 = !DILocalVariable(name: "nr", arg: 1, scope: !1209, file: !1210, line: 26, type: !45)
!1216 = !DILocalVariable(name: "addr", arg: 2, scope: !1209, file: !1210, line: 26, type: !1213)
!1217 = !DILocation(line: 26, column: 42, scope: !1209)
!1218 = !DILocation(line: 26, column: 70, scope: !1209)
!1219 = !DILocation(line: 28, column: 26, scope: !1209)
!1220 = !DILocation(line: 28, column: 33, scope: !1209)
!1221 = !DILocation(line: 28, column: 31, scope: !1209)
!1222 = !DILocation(line: 28, column: 2, scope: !1209)
!1223 = !DILocation(line: 29, column: 15, scope: !1209)
!1224 = !DILocation(line: 29, column: 19, scope: !1209)
!1225 = !DILocation(line: 29, column: 2, scope: !1209)
!1226 = !DILocation(line: 30, column: 1, scope: !1209)
!1227 = distinct !DISubprogram(name: "early_reserve_memory", scope: !3, file: !3, line: 766, type: !595, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1228 = !DILocation(line: 774, column: 19, scope: !1227)
!1229 = !DILocation(line: 774, column: 2, scope: !1227)
!1230 = !DILocation(line: 788, column: 2, scope: !1227)
!1231 = !DILocation(line: 790, column: 2, scope: !1227)
!1232 = !DILocation(line: 792, column: 2, scope: !1227)
!1233 = !DILocation(line: 794, column: 2, scope: !1227)
!1234 = !DILocation(line: 795, column: 2, scope: !1227)
!1235 = !DILocation(line: 796, column: 1, scope: !1227)
!1236 = !DISubprogram(name: "e820__memory_setup", scope: !1237, file: !1237, line: 36, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1237 = !DIFile(filename: "./arch/x86/include/asm/e820/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65a6719b6cd64e8daf1f569367f0fcc3")
!1238 = distinct !DISubprogram(name: "parse_setup_data", scope: !3, file: !3, line: 385, type: !595, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1239 = !{!1240, !1251, !1252, !1253, !1255}
!1240 = !DILocalVariable(name: "data", scope: !1238, file: !3, line: 387, type: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_data", file: !53, line: 53, size: 128, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1242, file: !53, line: 54, baseType: !48, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1242, file: !53, line: 55, baseType: !56, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1242, file: !53, line: 56, baseType: !56, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1242, file: !53, line: 57, baseType: !1248, offset: 128)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, elements: !1249)
!1249 = !{!1250}
!1250 = !DISubrange(count: -1)
!1251 = !DILocalVariable(name: "pa_data", scope: !1238, file: !3, line: 388, type: !46)
!1252 = !DILocalVariable(name: "pa_next", scope: !1238, file: !3, line: 388, type: !46)
!1253 = !DILocalVariable(name: "data_len", scope: !1254, file: !3, line: 392, type: !513)
!1254 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 391, column: 18)
!1255 = !DILocalVariable(name: "data_type", scope: !1254, file: !3, line: 392, type: !513)
!1256 = !DILocation(line: 387, column: 2, scope: !1238)
!1257 = !DILocation(line: 387, column: 21, scope: !1238)
!1258 = !DILocation(line: 388, column: 2, scope: !1238)
!1259 = !DILocation(line: 388, column: 6, scope: !1238)
!1260 = !DILocation(line: 388, column: 15, scope: !1238)
!1261 = !DILocation(line: 390, column: 28, scope: !1238)
!1262 = !DILocation(line: 390, column: 10, scope: !1238)
!1263 = !DILocation(line: 391, column: 2, scope: !1238)
!1264 = !DILocation(line: 391, column: 9, scope: !1238)
!1265 = !DILocation(line: 392, column: 3, scope: !1254)
!1266 = !DILocation(line: 392, column: 7, scope: !1254)
!1267 = !DILocation(line: 392, column: 17, scope: !1254)
!1268 = !DILocation(line: 394, column: 25, scope: !1254)
!1269 = !DILocation(line: 394, column: 10, scope: !1254)
!1270 = !DILocation(line: 394, column: 8, scope: !1254)
!1271 = !DILocation(line: 395, column: 14, scope: !1254)
!1272 = !DILocation(line: 395, column: 20, scope: !1254)
!1273 = !DILocation(line: 395, column: 24, scope: !1254)
!1274 = !DILocation(line: 395, column: 12, scope: !1254)
!1275 = !DILocation(line: 396, column: 15, scope: !1254)
!1276 = !DILocation(line: 396, column: 21, scope: !1254)
!1277 = !DILocation(line: 396, column: 13, scope: !1254)
!1278 = !DILocation(line: 397, column: 13, scope: !1254)
!1279 = !DILocation(line: 397, column: 19, scope: !1254)
!1280 = !DILocation(line: 397, column: 11, scope: !1254)
!1281 = !DILocation(line: 398, column: 18, scope: !1254)
!1282 = !DILocation(line: 398, column: 3, scope: !1254)
!1283 = !DILocation(line: 400, column: 11, scope: !1254)
!1284 = !DILocation(line: 400, column: 3, scope: !1254)
!1285 = !DILocation(line: 402, column: 32, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 400, column: 22)
!1287 = !DILocation(line: 402, column: 41, scope: !1286)
!1288 = !DILocation(line: 402, column: 4, scope: !1286)
!1289 = !DILocation(line: 403, column: 4, scope: !1286)
!1290 = !DILocation(line: 405, column: 12, scope: !1286)
!1291 = !DILocation(line: 405, column: 4, scope: !1286)
!1292 = !DILocation(line: 406, column: 4, scope: !1286)
!1293 = !DILocation(line: 408, column: 20, scope: !1286)
!1294 = !DILocation(line: 408, column: 29, scope: !1286)
!1295 = !DILocation(line: 408, column: 4, scope: !1286)
!1296 = !DILocation(line: 409, column: 4, scope: !1286)
!1297 = !DILocation(line: 411, column: 25, scope: !1286)
!1298 = !DILocation(line: 411, column: 4, scope: !1286)
!1299 = !DILocation(line: 412, column: 4, scope: !1286)
!1300 = !DILocation(line: 414, column: 26, scope: !1286)
!1301 = !DILocation(line: 414, column: 35, scope: !1286)
!1302 = !DILocation(line: 414, column: 11, scope: !1286)
!1303 = !DILocation(line: 414, column: 9, scope: !1286)
!1304 = !DILocation(line: 415, column: 30, scope: !1286)
!1305 = !DILocation(line: 415, column: 36, scope: !1286)
!1306 = !DILocation(line: 415, column: 42, scope: !1286)
!1307 = !DILocation(line: 415, column: 48, scope: !1286)
!1308 = !DILocation(line: 415, column: 4, scope: !1286)
!1309 = !DILocation(line: 417, column: 21, scope: !1286)
!1310 = !DILocation(line: 417, column: 27, scope: !1286)
!1311 = !DILocation(line: 417, column: 33, scope: !1286)
!1312 = !DILocation(line: 417, column: 39, scope: !1286)
!1313 = !DILocation(line: 417, column: 4, scope: !1286)
!1314 = !DILocation(line: 419, column: 22, scope: !1286)
!1315 = !DILocation(line: 419, column: 28, scope: !1286)
!1316 = !DILocation(line: 419, column: 4, scope: !1286)
!1317 = !DILocation(line: 420, column: 19, scope: !1286)
!1318 = !DILocation(line: 420, column: 25, scope: !1286)
!1319 = !DILocation(line: 420, column: 4, scope: !1286)
!1320 = !DILocation(line: 421, column: 4, scope: !1286)
!1321 = !DILocation(line: 423, column: 4, scope: !1286)
!1322 = !DILocation(line: 425, column: 13, scope: !1254)
!1323 = !DILocation(line: 425, column: 11, scope: !1254)
!1324 = !DILocation(line: 426, column: 2, scope: !1238)
!1325 = distinct !{!1325, !1263, !1324, !827, !828}
!1326 = !DILocation(line: 427, column: 1, scope: !1238)
!1327 = distinct !DISubprogram(name: "copy_edd", scope: !3, file: !3, line: 188, type: !595, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1328 = !DILocation(line: 190, column: 1, scope: !1327)
!1329 = !DISubprogram(name: "setup_initial_init_mm", scope: !1330, file: !1330, line: 239, type: !1331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1330 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !32, !32, !32, !32}
!1333 = !DISubprogram(name: "strscpy", scope: !1206, file: !1206, line: 72, type: !1334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1336, !33, !39, !737}
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !61, line: 66, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !739, line: 73, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !739, line: 15, baseType: !45)
!1339 = !DISubprogram(name: "parse_early_param", scope: !1340, file: !1340, line: 382, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1340 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1341 = distinct !DISubprogram(name: "efi_enabled", scope: !12, file: !12, line: 880, type: !1342, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!510, !35}
!1344 = !{!1345}
!1345 = !DILocalVariable(name: "feature", arg: 1, scope: !1341, file: !12, line: 880, type: !35)
!1346 = !DILocation(line: 880, column: 36, scope: !1341)
!1347 = !DILocation(line: 882, column: 9, scope: !1341)
!1348 = !DILocation(line: 882, column: 39, scope: !1341)
!1349 = !DILocation(line: 882, column: 2, scope: !1341)
!1350 = !DISubprogram(name: "efi_memblock_x86_reserve_range", scope: !1351, file: !1351, line: 128, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1351 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!1352 = distinct !DISubprogram(name: "x86_report_nx", scope: !3, file: !3, line: 825, type: !595, scopeLine: 826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1353 = !DILocation(line: 827, column: 6, scope: !1352)
!1354 = !DILocation(line: 827, column: 7, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 827, column: 6)
!1356 = !DILocation(line: 828, column: 3, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 828, column: 3)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 827, column: 37)
!1359 = !DILocation(line: 828, column: 3, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 828, column: 3)
!1361 = !DILocation(line: 830, column: 2, scope: !1358)
!1362 = !DILocation(line: 832, column: 3, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 832, column: 3)
!1364 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 830, column: 9)
!1365 = !DILocation(line: 832, column: 3, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 832, column: 3)
!1367 = !DILocation(line: 839, column: 1, scope: !1352)
!1368 = !DISubprogram(name: "apic_setup_apic_calls", scope: !1369, file: !1369, line: 368, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1369 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!1370 = !DISubprogram(name: "acpi_mps_check", scope: !1371, file: !1371, line: 224, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1371 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!1372 = !DISubprogram(name: "setup_clear_cpu_cap", scope: !1156, file: !1156, line: 150, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !7}
!1375 = !DISubprogram(name: "e820__reserve_setup_data", scope: !1237, file: !1237, line: 31, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DISubprogram(name: "e820__finish_early_params", scope: !1237, file: !1237, line: 32, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1377 = !DISubprogram(name: "efi_init", scope: !12, file: !12, line: 711, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1378 = distinct !DISubprogram(name: "reserve_ibft_region", scope: !1379, file: !1379, line: 39, type: !595, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1379 = !DIFile(filename: "./include/linux/iscsi_ibft.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0621c833ac0b7be3675b0f6edb249705")
!1380 = !DILocation(line: 39, column: 47, scope: !1378)
!1381 = !DISubprogram(name: "init_hypervisor_platform", scope: !1382, file: !1382, line: 71, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DIFile(filename: "./arch/x86/include/asm/hypervisor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c3d187261c297a091f71fc8abfac2f1")
!1383 = !DISubprogram(name: "tsc_early_init", scope: !1384, file: !1384, line: 33, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1384 = !DIFile(filename: "./arch/x86/include/asm/tsc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c263a7d672afe42de3ea9a5e4b53aa46")
!1385 = !DISubprogram(name: "insert_resource", scope: !568, file: !568, line: 203, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1386 = distinct !DISubprogram(name: "e820_add_kernel_range", scope: !3, file: !3, line: 746, type: !595, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1387)
!1387 = !{!1388, !1389}
!1388 = !DILocalVariable(name: "start", scope: !1386, file: !3, line: 748, type: !46)
!1389 = !DILocalVariable(name: "size", scope: !1386, file: !3, line: 749, type: !46)
!1390 = !DILocation(line: 748, column: 2, scope: !1386)
!1391 = !DILocation(line: 748, column: 6, scope: !1386)
!1392 = !DILocation(line: 748, column: 14, scope: !1386)
!1393 = !DILocation(line: 749, column: 2, scope: !1386)
!1394 = !DILocation(line: 749, column: 6, scope: !1386)
!1395 = !DILocation(line: 749, column: 13, scope: !1386)
!1396 = !DILocation(line: 749, column: 33, scope: !1386)
!1397 = !DILocation(line: 749, column: 31, scope: !1386)
!1398 = !DILocation(line: 758, column: 23, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 758, column: 6)
!1400 = !DILocation(line: 758, column: 30, scope: !1399)
!1401 = !DILocation(line: 758, column: 38, scope: !1399)
!1402 = !DILocation(line: 758, column: 36, scope: !1399)
!1403 = !DILocation(line: 758, column: 6, scope: !1399)
!1404 = !DILocation(line: 758, column: 6, scope: !1386)
!1405 = !DILocation(line: 759, column: 3, scope: !1399)
!1406 = !DILocation(line: 761, column: 2, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 761, column: 2)
!1408 = !DILocation(line: 761, column: 2, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 761, column: 2)
!1410 = !DILocation(line: 762, column: 21, scope: !1386)
!1411 = !DILocation(line: 762, column: 28, scope: !1386)
!1412 = !DILocation(line: 762, column: 2, scope: !1386)
!1413 = !DILocation(line: 763, column: 18, scope: !1386)
!1414 = !DILocation(line: 763, column: 25, scope: !1386)
!1415 = !DILocation(line: 763, column: 2, scope: !1386)
!1416 = !DILocation(line: 764, column: 1, scope: !1386)
!1417 = distinct !DISubprogram(name: "trim_bios_range", scope: !3, file: !3, line: 722, type: !595, scopeLine: 723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1418 = !DILocation(line: 733, column: 2, scope: !1417)
!1419 = !DILocation(line: 740, column: 2, scope: !1417)
!1420 = !DILocation(line: 742, column: 21, scope: !1417)
!1421 = !DILocation(line: 742, column: 2, scope: !1417)
!1422 = !DILocation(line: 743, column: 1, scope: !1417)
!1423 = distinct !DISubprogram(name: "early_gart_iommu_check", scope: !1424, file: !1424, line: 48, type: !595, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1424 = !DIFile(filename: "./arch/x86/include/asm/gart.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1dd59d0a2145069d88b0fbaeb10fe847")
!1425 = !DILocation(line: 50, column: 1, scope: !1423)
!1426 = !DISubprogram(name: "e820__end_of_ram_pfn", scope: !1237, file: !1237, line: 25, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!31}
!1429 = !DISubprogram(name: "cache_bp_init", scope: !1430, file: !1430, line: 17, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1430 = !DIFile(filename: "./arch/x86/include/asm/cacheinfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72510c6c59c3c1d875de31fb2baaf624")
!1431 = !DISubprogram(name: "mtrr_trim_uncached_memory", scope: !1432, file: !1432, line: 73, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1432 = !DIFile(filename: "./arch/x86/include/asm/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7c890308cdc14a3bfc2cc2c920505da")
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!35, !31}
!1435 = !DISubprogram(name: "kernel_randomize_memory", scope: !1436, file: !1436, line: 8, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1436 = !DIFile(filename: "./arch/x86/include/asm/kaslr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bde560627748bf8418f9ac53248d5409")
!1437 = !DISubprogram(name: "check_x2apic", scope: !1369, file: !1369, line: 245, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1438 = !DISubprogram(name: "e820__end_of_low_ram_pfn", scope: !1237, file: !1237, line: 26, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1439 = distinct !DISubprogram(name: "find_smp_config", scope: !1440, file: !1440, line: 59, type: !595, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1440 = !DIFile(filename: "./arch/x86/include/asm/mpspec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c121953d7eb2fe88838a269afe2127b")
!1441 = !DILocation(line: 61, column: 19, scope: !1439)
!1442 = !DILocation(line: 61, column: 2, scope: !1439)
!1443 = !DILocation(line: 62, column: 1, scope: !1439)
!1444 = !DISubprogram(name: "early_alloc_pgt_buf", scope: !1445, file: !1445, line: 1192, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1445 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!1446 = distinct !DISubprogram(name: "reserve_brk", scope: !3, file: !3, line: 218, type: !595, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1447 = !DILocation(line: 220, column: 6, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 220, column: 6)
!1449 = !DILocation(line: 220, column: 17, scope: !1448)
!1450 = !DILocation(line: 220, column: 15, scope: !1448)
!1451 = !DILocation(line: 220, column: 6, scope: !1446)
!1452 = !DILocation(line: 221, column: 20, scope: !1448)
!1453 = !DILocation(line: 222, column: 6, scope: !1448)
!1454 = !DILocation(line: 222, column: 17, scope: !1448)
!1455 = !DILocation(line: 222, column: 15, scope: !1448)
!1456 = !DILocation(line: 221, column: 3, scope: !1448)
!1457 = !DILocation(line: 226, column: 13, scope: !1446)
!1458 = !DILocation(line: 227, column: 1, scope: !1446)
!1459 = !DISubprogram(name: "cleanup_highmap", scope: !1460, file: !1460, line: 243, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1460 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!1461 = !DISubprogram(name: "memblock_set_current_limit", scope: !1462, file: !1462, line: 501, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1462 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !65}
!1465 = !DISubprogram(name: "e820__memblock_setup", scope: !1237, file: !1237, line: 29, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1466 = distinct !DISubprogram(name: "sev_setup_arch", scope: !1467, file: !1467, line: 82, type: !595, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1467 = !DIFile(filename: "./arch/x86/include/asm/mem_encrypt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8334153096538ce6ea0af4e5c8c3a998")
!1468 = !DILocation(line: 82, column: 50, scope: !1466)
!1469 = distinct !DISubprogram(name: "cc_random_init", scope: !1470, file: !1470, line: 39, type: !595, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1470 = !DIFile(filename: "./arch/x86/include/asm/coco.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86b21b242eb5d608419a067ab7dfc6d8")
!1471 = !DILocation(line: 39, column: 43, scope: !1469)
!1472 = distinct !DISubprogram(name: "efi_fake_memmap", scope: !1351, file: !1351, line: 404, type: !595, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1473 = !DILocation(line: 406, column: 1, scope: !1472)
!1474 = !DISubprogram(name: "efi_find_mirror", scope: !12, file: !12, line: 898, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1475 = !DISubprogram(name: "efi_esrt_init", scope: !12, file: !12, line: 738, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1476 = distinct !DISubprogram(name: "efi_mokvar_table_init", scope: !12, file: !12, line: 1319, type: !595, scopeLine: 1319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1477 = !DILocation(line: 1319, column: 50, scope: !1476)
!1478 = !DISubprogram(name: "efi_reserve_boot_services", scope: !1351, file: !1351, line: 380, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1479 = !DISubprogram(name: "e820__memblock_alloc_reserved_mpc_new", scope: !1440, file: !1440, line: 65, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1480 = !DISubprogram(name: "setup_bios_corruption_check", scope: !1481, file: !1481, line: 45, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1481 = !DIFile(filename: "./arch/x86/include/asm/setup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70163219e3d956dec6d0e7b32cf67c8b")
!1482 = !DISubprogram(name: "init_mem_mapping", scope: !1445, file: !1445, line: 1191, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1483 = !DISubprogram(name: "idt_setup_early_pf", scope: !1182, file: !1182, line: 444, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1484 = distinct !DISubprogram(name: "__read_cr4", scope: !1485, file: !1485, line: 123, type: !1427, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1485 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!1486 = !DILocation(line: 125, column: 9, scope: !1484)
!1487 = !DILocation(line: 125, column: 2, scope: !1484)
!1488 = distinct !DISubprogram(name: "get_max_mapped", scope: !1489, file: !1489, line: 61, type: !1490, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1489 = !DIFile(filename: "./arch/x86/include/asm/page_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9a0c1d620e7960c75b7cb88ec0ed65a5")
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!65}
!1492 = !DILocation(line: 63, column: 22, scope: !1488)
!1493 = !DILocation(line: 63, column: 37, scope: !1488)
!1494 = !DILocation(line: 63, column: 2, scope: !1488)
!1495 = !DISubprogram(name: "init_ohci1394_dma_on_all_controllers", scope: !1496, file: !1496, line: 4, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1496 = !DIFile(filename: "./include/linux/init_ohci1394_dma.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a36a63472c0f1069a36db881e49f4fb")
!1497 = !DISubprogram(name: "setup_log_buf", scope: !1152, file: !1152, line: 188, type: !1498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !35}
!1500 = distinct !DISubprogram(name: "reserve_initrd", scope: !3, file: !3, line: 297, type: !595, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1501)
!1501 = !{!1502, !1503, !1504}
!1502 = !DILocalVariable(name: "ramdisk_image", scope: !1500, file: !3, line: 300, type: !46)
!1503 = !DILocalVariable(name: "ramdisk_size", scope: !1500, file: !3, line: 301, type: !46)
!1504 = !DILocalVariable(name: "ramdisk_end", scope: !1500, file: !3, line: 302, type: !46)
!1505 = !DILocation(line: 300, column: 2, scope: !1500)
!1506 = !DILocation(line: 300, column: 6, scope: !1500)
!1507 = !DILocation(line: 300, column: 22, scope: !1500)
!1508 = !DILocation(line: 301, column: 2, scope: !1500)
!1509 = !DILocation(line: 301, column: 6, scope: !1500)
!1510 = !DILocation(line: 301, column: 22, scope: !1500)
!1511 = !DILocation(line: 302, column: 2, scope: !1500)
!1512 = !DILocation(line: 302, column: 6, scope: !1500)
!1513 = !DILocation(line: 302, column: 22, scope: !1500)
!1514 = !DILocation(line: 304, column: 23, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 304, column: 6)
!1516 = !DILocation(line: 304, column: 7, scope: !1515)
!1517 = !DILocation(line: 304, column: 38, scope: !1515)
!1518 = !DILocation(line: 305, column: 7, scope: !1515)
!1519 = !DILocation(line: 305, column: 21, scope: !1515)
!1520 = !DILocation(line: 305, column: 25, scope: !1515)
!1521 = !DILocation(line: 304, column: 6, scope: !1500)
!1522 = !DILocation(line: 306, column: 3, scope: !1515)
!1523 = !DILocation(line: 308, column: 15, scope: !1500)
!1524 = !DILocation(line: 310, column: 2, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 310, column: 2)
!1526 = !DILocation(line: 310, column: 2, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 310, column: 2)
!1528 = !DILocation(line: 313, column: 26, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 313, column: 6)
!1530 = !DILocation(line: 314, column: 5, scope: !1529)
!1531 = !DILocation(line: 313, column: 6, scope: !1529)
!1532 = !DILocation(line: 313, column: 6, scope: !1500)
!1533 = !DILocation(line: 316, column: 18, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 314, column: 29)
!1535 = !DILocation(line: 316, column: 34, scope: !1534)
!1536 = !DILocation(line: 316, column: 32, scope: !1534)
!1537 = !DILocation(line: 316, column: 16, scope: !1534)
!1538 = !DILocation(line: 317, column: 16, scope: !1534)
!1539 = !DILocation(line: 317, column: 31, scope: !1534)
!1540 = !DILocation(line: 317, column: 29, scope: !1534)
!1541 = !DILocation(line: 317, column: 14, scope: !1534)
!1542 = !DILocation(line: 318, column: 3, scope: !1534)
!1543 = !DILocation(line: 321, column: 2, scope: !1500)
!1544 = !DILocation(line: 323, column: 21, scope: !1500)
!1545 = !DILocation(line: 323, column: 36, scope: !1500)
!1546 = !DILocation(line: 323, column: 50, scope: !1500)
!1547 = !DILocation(line: 323, column: 48, scope: !1500)
!1548 = !DILocation(line: 323, column: 2, scope: !1500)
!1549 = !DILocation(line: 324, column: 1, scope: !1500)
!1550 = !DISubprogram(name: "acpi_table_upgrade", scope: !1371, file: !1371, line: 1443, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1551 = !DISubprogram(name: "acpi_boot_table_init", scope: !1371, file: !1371, line: 223, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1552 = !DISubprogram(name: "vsmp_init", scope: !1481, file: !1481, line: 38, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1553 = !DISubprogram(name: "io_delay_init", scope: !1554, file: !1554, line: 227, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1554 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!1555 = !DISubprogram(name: "early_platform_quirks", scope: !1481, file: !1481, line: 46, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1556 = !DISubprogram(name: "early_acpi_boot_init", scope: !1371, file: !1371, line: 220, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1557 = !DISubprogram(name: "initmem_init", scope: !1489, file: !1489, line: 68, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1558 = distinct !DISubprogram(name: "dma_contiguous_reserve", scope: !1559, file: !1559, line: 140, type: !1463, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1560)
!1559 = !DIFile(filename: "./include/linux/dma-map-ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4d66bec2a94b0bd77a1dc531a459703")
!1560 = !{!1561}
!1561 = !DILocalVariable(name: "limit", arg: 1, scope: !1558, file: !1559, line: 140, type: !65)
!1562 = !DILocation(line: 140, column: 55, scope: !1558)
!1563 = !DILocation(line: 142, column: 1, scope: !1558)
!1564 = distinct !DISubprogram(name: "hugetlb_cma_reserve", scope: !1565, file: !1565, line: 1239, type: !1498, scopeLine: 1240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1566)
!1565 = !DIFile(filename: "./include/linux/hugetlb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb3875c3ba49a7a26cb8998ef59b94dc")
!1566 = !{!1567}
!1567 = !DILocalVariable(name: "order", arg: 1, scope: !1564, file: !1565, line: 1239, type: !35)
!1568 = !DILocation(line: 1239, column: 51, scope: !1564)
!1569 = !DILocation(line: 1241, column: 1, scope: !1564)
!1570 = distinct !DISubprogram(name: "reserve_crashkernel", scope: !3, file: !3, line: 544, type: !595, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1571)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577}
!1572 = !DILocalVariable(name: "crash_size", scope: !1570, file: !3, line: 546, type: !50)
!1573 = !DILocalVariable(name: "crash_base", scope: !1570, file: !3, line: 546, type: !50)
!1574 = !DILocalVariable(name: "total_mem", scope: !1570, file: !3, line: 546, type: !50)
!1575 = !DILocalVariable(name: "high", scope: !1570, file: !3, line: 547, type: !510)
!1576 = !DILocalVariable(name: "ret", scope: !1570, file: !3, line: 548, type: !35)
!1577 = !DILocalVariable(name: "start", scope: !1578, file: !3, line: 594, type: !50)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 593, column: 9)
!1579 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 572, column: 6)
!1580 = !DILocation(line: 546, column: 2, scope: !1570)
!1581 = !DILocation(line: 546, column: 21, scope: !1570)
!1582 = !DILocation(line: 546, column: 33, scope: !1570)
!1583 = !DILocation(line: 546, column: 45, scope: !1570)
!1584 = !DILocation(line: 547, column: 2, scope: !1570)
!1585 = !DILocation(line: 547, column: 7, scope: !1570)
!1586 = !DILocation(line: 548, column: 2, scope: !1570)
!1587 = !DILocation(line: 548, column: 6, scope: !1570)
!1588 = !DILocation(line: 553, column: 14, scope: !1570)
!1589 = !DILocation(line: 553, column: 12, scope: !1570)
!1590 = !DILocation(line: 556, column: 45, scope: !1570)
!1591 = !DILocation(line: 556, column: 8, scope: !1570)
!1592 = !DILocation(line: 556, column: 6, scope: !1570)
!1593 = !DILocation(line: 557, column: 6, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 557, column: 6)
!1595 = !DILocation(line: 557, column: 10, scope: !1594)
!1596 = !DILocation(line: 557, column: 15, scope: !1594)
!1597 = !DILocation(line: 557, column: 18, scope: !1594)
!1598 = !DILocation(line: 557, column: 29, scope: !1594)
!1599 = !DILocation(line: 557, column: 6, scope: !1570)
!1600 = !DILocation(line: 559, column: 51, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 557, column: 35)
!1602 = !DILocation(line: 559, column: 9, scope: !1601)
!1603 = !DILocation(line: 559, column: 7, scope: !1601)
!1604 = !DILocation(line: 561, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 561, column: 7)
!1606 = !DILocation(line: 561, column: 11, scope: !1605)
!1607 = !DILocation(line: 561, column: 16, scope: !1605)
!1608 = !DILocation(line: 561, column: 19, scope: !1605)
!1609 = !DILocation(line: 561, column: 30, scope: !1605)
!1610 = !DILocation(line: 561, column: 7, scope: !1601)
!1611 = !DILocation(line: 562, column: 4, scope: !1605)
!1612 = !DILocation(line: 563, column: 8, scope: !1601)
!1613 = !DILocation(line: 564, column: 2, scope: !1601)
!1614 = !DILocation(line: 572, column: 7, scope: !1579)
!1615 = !DILocation(line: 572, column: 6, scope: !1570)
!1616 = !DILocation(line: 581, column: 8, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 581, column: 7)
!1618 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 572, column: 19)
!1619 = !{i8 0, i8 2}
!1620 = !{}
!1621 = !DILocation(line: 581, column: 7, scope: !1618)
!1622 = !DILocation(line: 582, column: 43, scope: !1617)
!1623 = !DILocation(line: 582, column: 17, scope: !1617)
!1624 = !DILocation(line: 582, column: 15, scope: !1617)
!1625 = !DILocation(line: 582, column: 4, scope: !1617)
!1626 = !DILocation(line: 585, column: 8, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 585, column: 7)
!1628 = !DILocation(line: 585, column: 7, scope: !1618)
!1629 = !DILocation(line: 586, column: 43, scope: !1627)
!1630 = !DILocation(line: 586, column: 17, scope: !1627)
!1631 = !DILocation(line: 586, column: 15, scope: !1627)
!1632 = !DILocation(line: 586, column: 4, scope: !1627)
!1633 = !DILocation(line: 589, column: 8, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 589, column: 7)
!1635 = !DILocation(line: 589, column: 7, scope: !1618)
!1636 = !DILocation(line: 590, column: 4, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 590, column: 4)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 589, column: 20)
!1639 = !DILocation(line: 590, column: 4, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 590, column: 4)
!1641 = !DILocation(line: 591, column: 4, scope: !1638)
!1642 = !DILocation(line: 593, column: 2, scope: !1618)
!1643 = !DILocation(line: 594, column: 3, scope: !1578)
!1644 = !DILocation(line: 594, column: 22, scope: !1578)
!1645 = !DILocation(line: 596, column: 37, scope: !1578)
!1646 = !DILocation(line: 596, column: 56, scope: !1578)
!1647 = !DILocation(line: 597, column: 9, scope: !1578)
!1648 = !DILocation(line: 597, column: 22, scope: !1578)
!1649 = !DILocation(line: 597, column: 20, scope: !1578)
!1650 = !DILocation(line: 596, column: 11, scope: !1578)
!1651 = !DILocation(line: 596, column: 9, scope: !1578)
!1652 = !DILocation(line: 598, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 598, column: 7)
!1654 = !DILocation(line: 598, column: 16, scope: !1653)
!1655 = !DILocation(line: 598, column: 13, scope: !1653)
!1656 = !DILocation(line: 598, column: 7, scope: !1578)
!1657 = !DILocation(line: 599, column: 4, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 599, column: 4)
!1659 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 598, column: 28)
!1660 = !DILocation(line: 599, column: 4, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 599, column: 4)
!1662 = !DILocation(line: 600, column: 4, scope: !1659)
!1663 = !DILocation(line: 602, column: 2, scope: !1579)
!1664 = !DILocation(line: 604, column: 6, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 604, column: 6)
!1666 = !DILocation(line: 604, column: 17, scope: !1665)
!1667 = !DILocation(line: 604, column: 33, scope: !1665)
!1668 = !DILocation(line: 604, column: 36, scope: !1665)
!1669 = !DILocation(line: 604, column: 6, scope: !1570)
!1670 = !DILocation(line: 605, column: 22, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 604, column: 63)
!1672 = !DILocation(line: 605, column: 34, scope: !1671)
!1673 = !DILocation(line: 605, column: 3, scope: !1671)
!1674 = !DILocation(line: 606, column: 3, scope: !1671)
!1675 = !DILocation(line: 609, column: 2, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 609, column: 2)
!1677 = !DILocation(line: 609, column: 2, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 609, column: 2)
!1679 = !DILocation(line: 614, column: 21, scope: !1570)
!1680 = !DILocation(line: 614, column: 19, scope: !1570)
!1681 = !DILocation(line: 615, column: 21, scope: !1570)
!1682 = !DILocation(line: 615, column: 34, scope: !1570)
!1683 = !DILocation(line: 615, column: 32, scope: !1570)
!1684 = !DILocation(line: 615, column: 45, scope: !1570)
!1685 = !DILocation(line: 615, column: 19, scope: !1570)
!1686 = !DILocation(line: 616, column: 2, scope: !1570)
!1687 = !DILocation(line: 617, column: 1, scope: !1570)
!1688 = !DISubprogram(name: "memblock_find_dma_reserve", scope: !1445, file: !1445, line: 1193, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1689 = distinct !DISubprogram(name: "early_xdbc_setup_hardware", scope: !1690, file: !1690, line: 18, type: !1188, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1690 = !DIFile(filename: "./include/linux/usb/xhci-dbgp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4c3ac743ec70f68a225f222541e87fe")
!1691 = !DILocation(line: 20, column: 2, scope: !1689)
!1692 = distinct !DISubprogram(name: "early_xdbc_register_console", scope: !1690, file: !1690, line: 22, type: !595, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1693 = !DILocation(line: 24, column: 1, scope: !1692)
!1694 = distinct !DISubprogram(name: "kasan_init", scope: !1695, file: !1695, line: 34, type: !595, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1695 = !DIFile(filename: "./arch/x86/include/asm/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e116551707995402c86c1fcc41b571fd")
!1696 = !DILocation(line: 34, column: 39, scope: !1694)
!1697 = distinct !DISubprogram(name: "sync_initial_page_table", scope: !1460, file: !1460, line: 32, type: !595, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1698 = !DILocation(line: 32, column: 52, scope: !1697)
!1699 = !DISubprogram(name: "map_vsyscall", scope: !1700, file: !1700, line: 10, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1700 = !DIFile(filename: "./arch/x86/include/asm/vsyscall.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b053b7e2f15fe85fedc46775209d8f75")
!1701 = distinct !DISubprogram(name: "x86_32_probe_apic", scope: !1369, file: !1369, line: 47, type: !595, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1702 = !DILocation(line: 47, column: 46, scope: !1701)
!1703 = !DISubprogram(name: "early_quirks", scope: !1704, file: !1704, line: 102, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1704 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!1705 = !DISubprogram(name: "acpi_boot_init", scope: !1371, file: !1371, line: 221, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1706 = distinct !DISubprogram(name: "x86_dtb_init", scope: !1707, file: !1707, line: 30, type: !595, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1707 = !DIFile(filename: "./arch/x86/include/asm/prom.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e2877a81b2a67de5aaa9f155fb6e744")
!1708 = !DILocation(line: 30, column: 41, scope: !1706)
!1709 = distinct !DISubprogram(name: "get_smp_config", scope: !1440, file: !1440, line: 49, type: !595, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1710 = !DILocation(line: 51, column: 19, scope: !1709)
!1711 = !DILocation(line: 51, column: 2, scope: !1709)
!1712 = !DILocation(line: 52, column: 1, scope: !1709)
!1713 = !DISubprogram(name: "init_apic_mappings", scope: !1369, file: !1369, line: 134, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1714 = !DISubprogram(name: "prefill_possible_map", scope: !1715, file: !1715, line: 14, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1715 = !DIFile(filename: "./arch/x86/include/asm/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7621f2ef482a6250db9c8e206e21622e")
!1716 = !DISubprogram(name: "init_cpu_to_node", scope: !1717, file: !1717, line: 56, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1717 = !DIFile(filename: "./arch/x86/include/asm/numa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd854ea31756e2db308aa8bc404b389b")
!1718 = !DISubprogram(name: "init_gi_nodes", scope: !1717, file: !1717, line: 59, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1719 = !DISubprogram(name: "io_apic_init_mappings", scope: !1720, file: !1720, line: 162, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1720 = !DIFile(filename: "./arch/x86/include/asm/io_apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c646052d57aa5ccfb364bced6a46c18")
!1721 = !DISubprogram(name: "e820__reserve_resources", scope: !1237, file: !1237, line: 33, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1722 = !DISubprogram(name: "e820__register_nosave_regions", scope: !1237, file: !1237, line: 42, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !31}
!1725 = !DISubprogram(name: "e820__setup_pci_gap", scope: !1237, file: !1237, line: 39, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1726 = !DISubprogram(name: "efi_mem_type", scope: !12, file: !12, line: 749, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1727 = !DISubprogram(name: "therm_lvt_init", scope: !1728, file: !1728, line: 6, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1728 = !DIFile(filename: "./arch/x86/include/asm/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f5f4e862efac465b2ae2cdc5889677a9")
!1729 = !DISubprogram(name: "mcheck_init", scope: !1730, file: !1730, line: 209, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1730 = !DIFile(filename: "./arch/x86/include/asm/mce.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03bdd31ab67561f34e6be65b5717c529")
!1731 = !DISubprogram(name: "register_refined_jiffies", scope: !1732, file: !1732, line: 62, type: !1733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1732 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!35, !45}
!1735 = !DISubprogram(name: "efi_apply_memmap_quirks", scope: !1351, file: !1351, line: 137, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1736 = !DISubprogram(name: "unwind_init", scope: !1737, file: !1737, line: 96, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1737 = !DIFile(filename: "./arch/x86/include/asm/unwind.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3235c5cc80be598600446a4d6bd7e4")
!1738 = distinct !DISubprogram(name: "__initstub__kmod_setup__393_1348_register_kernel_offset_dumper6", scope: !3, file: !3, line: 1348, type: !1188, scopeLine: 1348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1739 = !DILocation(line: 1348, column: 1, scope: !1738)
!1740 = distinct !DISubprogram(name: "register_kernel_offset_dumper", scope: !3, file: !3, line: 1342, type: !1188, scopeLine: 1343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1741 = !DILocation(line: 1344, column: 2, scope: !1740)
!1742 = !DILocation(line: 1346, column: 2, scope: !1740)
!1743 = distinct !DISubprogram(name: "constant_test_bit", scope: !842, file: !842, line: 204, type: !1744, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!510, !45, !845}
!1746 = !{!1747, !1748}
!1747 = !DILocalVariable(name: "nr", arg: 1, scope: !1743, file: !842, line: 204, type: !45)
!1748 = !DILocalVariable(name: "addr", arg: 2, scope: !1743, file: !842, line: 204, type: !845)
!1749 = !DILocation(line: 204, column: 52, scope: !1743)
!1750 = !DILocation(line: 204, column: 86, scope: !1743)
!1751 = !DILocation(line: 206, column: 19, scope: !1743)
!1752 = !DILocation(line: 206, column: 22, scope: !1743)
!1753 = !DILocation(line: 206, column: 15, scope: !1743)
!1754 = !DILocation(line: 207, column: 4, scope: !1743)
!1755 = !DILocation(line: 207, column: 9, scope: !1743)
!1756 = !DILocation(line: 207, column: 12, scope: !1743)
!1757 = !DILocation(line: 206, column: 44, scope: !1743)
!1758 = !DILocation(line: 207, column: 37, scope: !1743)
!1759 = !DILocation(line: 206, column: 2, scope: !1743)
!1760 = distinct !DISubprogram(name: "variable_test_bit", scope: !842, file: !842, line: 224, type: !1744, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1761)
!1761 = !{!1762, !1763, !1764}
!1762 = !DILocalVariable(name: "nr", arg: 1, scope: !1760, file: !842, line: 224, type: !45)
!1763 = !DILocalVariable(name: "addr", arg: 2, scope: !1760, file: !842, line: 224, type: !845)
!1764 = !DILocalVariable(name: "oldbit", scope: !1760, file: !842, line: 226, type: !510)
!1765 = !DILocation(line: 224, column: 52, scope: !1760)
!1766 = !DILocation(line: 224, column: 86, scope: !1760)
!1767 = !DILocation(line: 226, column: 2, scope: !1760)
!1768 = !DILocation(line: 226, column: 7, scope: !1760)
!1769 = !DILocation(line: 231, column: 33, scope: !1760)
!1770 = !DILocation(line: 231, column: 46, scope: !1760)
!1771 = !DILocation(line: 228, column: 2, scope: !1760)
!1772 = !{i64 2148232836, i64 2148232910}
!1773 = !DILocation(line: 233, column: 9, scope: !1760)
!1774 = !DILocation(line: 234, column: 1, scope: !1760)
!1775 = !DILocation(line: 233, column: 2, scope: !1760)
!1776 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1777, file: !1777, line: 80, type: !1778, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1783)
!1777 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !1780, !737}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1783 = !{!1784, !1785}
!1784 = !DILocalVariable(name: "v", arg: 1, scope: !1776, file: !1777, line: 80, type: !1780)
!1785 = !DILocalVariable(name: "size", arg: 2, scope: !1776, file: !1777, line: 80, type: !737)
!1786 = !DILocation(line: 80, column: 74, scope: !1776)
!1787 = !DILocation(line: 80, column: 84, scope: !1776)
!1788 = !DILocation(line: 82, column: 20, scope: !1776)
!1789 = !DILocation(line: 82, column: 23, scope: !1776)
!1790 = !DILocation(line: 82, column: 2, scope: !1776)
!1791 = !DILocation(line: 83, column: 2, scope: !1776)
!1792 = !DILocation(line: 84, column: 1, scope: !1776)
!1793 = distinct !DISubprogram(name: "arch_set_bit", scope: !842, file: !842, line: 52, type: !1211, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1794)
!1794 = !{!1795, !1796}
!1795 = !DILocalVariable(name: "nr", arg: 1, scope: !1793, file: !842, line: 52, type: !45)
!1796 = !DILocalVariable(name: "addr", arg: 2, scope: !1793, file: !842, line: 52, type: !1213)
!1797 = !DILocation(line: 52, column: 19, scope: !1793)
!1798 = !DILocation(line: 52, column: 47, scope: !1793)
!1799 = !DILocation(line: 54, column: 27, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1793, file: !842, line: 54, column: 6)
!1801 = !DILocation(line: 54, column: 6, scope: !1800)
!1802 = !DILocation(line: 54, column: 6, scope: !1793)
!1803 = !DILocation(line: 56, column: 6, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !842, line: 54, column: 32)
!1805 = !DILocation(line: 57, column: 12, scope: !1804)
!1806 = !DILocation(line: 55, column: 3, scope: !1804)
!1807 = !{i64 2148219224, i64 2148219263, i64 2148219284, i64 2148219321, i64 2148219344, i64 2148219214}
!1808 = !DILocation(line: 59, column: 2, scope: !1804)
!1809 = !DILocation(line: 61, column: 8, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1800, file: !842, line: 59, column: 9)
!1811 = !DILocation(line: 61, column: 32, scope: !1810)
!1812 = !DILocation(line: 60, column: 3, scope: !1810)
!1813 = !{i64 2148219509, i64 2148219548, i64 2148219569, i64 2148219606, i64 2148219629, i64 2148219499}
!1814 = !DILocation(line: 63, column: 1, scope: !1793)
!1815 = distinct !DISubprogram(name: "kasan_check_write", scope: !1816, file: !1816, line: 44, type: !1817, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1819)
!1816 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!510, !1780, !7}
!1819 = !{!1820, !1821}
!1820 = !DILocalVariable(name: "p", arg: 1, scope: !1815, file: !1816, line: 44, type: !1780)
!1821 = !DILocalVariable(name: "size", arg: 2, scope: !1815, file: !1816, line: 44, type: !7)
!1822 = !DILocation(line: 44, column: 59, scope: !1815)
!1823 = !DILocation(line: 44, column: 75, scope: !1815)
!1824 = !DILocation(line: 46, column: 2, scope: !1815)
!1825 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1826, file: !1826, line: 229, type: !1827, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!1826 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !1780, !737, !35}
!1829 = !{!1830, !1831, !1832}
!1830 = !DILocalVariable(name: "ptr", arg: 1, scope: !1825, file: !1826, line: 229, type: !1780)
!1831 = !DILocalVariable(name: "size", arg: 2, scope: !1825, file: !1826, line: 229, type: !737)
!1832 = !DILocalVariable(name: "type", arg: 3, scope: !1825, file: !1826, line: 230, type: !35)
!1833 = !DILocation(line: 229, column: 60, scope: !1825)
!1834 = !DILocation(line: 229, column: 72, scope: !1825)
!1835 = !DILocation(line: 230, column: 15, scope: !1825)
!1836 = !DILocation(line: 230, column: 23, scope: !1825)
!1837 = !DISubprogram(name: "memblock_reserve", scope: !1462, file: !1462, line: 116, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!35, !65, !65}
!1840 = distinct !DISubprogram(name: "early_reserve_initrd", scope: !3, file: !3, line: 283, type: !595, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1841)
!1841 = !{!1842, !1843, !1844}
!1842 = !DILocalVariable(name: "ramdisk_image", scope: !1840, file: !3, line: 286, type: !46)
!1843 = !DILocalVariable(name: "ramdisk_size", scope: !1840, file: !3, line: 287, type: !46)
!1844 = !DILocalVariable(name: "ramdisk_end", scope: !1840, file: !3, line: 288, type: !46)
!1845 = !DILocation(line: 286, column: 2, scope: !1840)
!1846 = !DILocation(line: 286, column: 6, scope: !1840)
!1847 = !DILocation(line: 286, column: 22, scope: !1840)
!1848 = !DILocation(line: 287, column: 2, scope: !1840)
!1849 = !DILocation(line: 287, column: 6, scope: !1840)
!1850 = !DILocation(line: 287, column: 22, scope: !1840)
!1851 = !DILocation(line: 288, column: 2, scope: !1840)
!1852 = !DILocation(line: 288, column: 6, scope: !1840)
!1853 = !DILocation(line: 288, column: 22, scope: !1840)
!1854 = !DILocation(line: 290, column: 23, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 290, column: 6)
!1856 = !DILocation(line: 290, column: 7, scope: !1855)
!1857 = !DILocation(line: 290, column: 38, scope: !1855)
!1858 = !DILocation(line: 291, column: 7, scope: !1855)
!1859 = !DILocation(line: 291, column: 21, scope: !1855)
!1860 = !DILocation(line: 291, column: 25, scope: !1855)
!1861 = !DILocation(line: 290, column: 6, scope: !1840)
!1862 = !DILocation(line: 292, column: 3, scope: !1855)
!1863 = !DILocation(line: 294, column: 19, scope: !1840)
!1864 = !DILocation(line: 294, column: 34, scope: !1840)
!1865 = !DILocation(line: 294, column: 48, scope: !1840)
!1866 = !DILocation(line: 294, column: 46, scope: !1840)
!1867 = !DILocation(line: 294, column: 2, scope: !1840)
!1868 = !DILocation(line: 295, column: 1, scope: !1840)
!1869 = distinct !DISubprogram(name: "memblock_x86_reserve_range_setup_data", scope: !3, file: !3, line: 429, type: !595, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875}
!1871 = !DILocalVariable(name: "indirect", scope: !1869, file: !3, line: 431, type: !51)
!1872 = !DILocalVariable(name: "data", scope: !1869, file: !3, line: 432, type: !1241)
!1873 = !DILocalVariable(name: "pa_data", scope: !1869, file: !3, line: 433, type: !46)
!1874 = !DILocalVariable(name: "pa_next", scope: !1869, file: !3, line: 433, type: !46)
!1875 = !DILocalVariable(name: "len", scope: !1869, file: !3, line: 434, type: !513)
!1876 = !DILocation(line: 431, column: 2, scope: !1869)
!1877 = !DILocation(line: 431, column: 25, scope: !1869)
!1878 = !DILocation(line: 432, column: 2, scope: !1869)
!1879 = !DILocation(line: 432, column: 21, scope: !1869)
!1880 = !DILocation(line: 433, column: 2, scope: !1869)
!1881 = !DILocation(line: 433, column: 6, scope: !1869)
!1882 = !DILocation(line: 433, column: 15, scope: !1869)
!1883 = !DILocation(line: 434, column: 2, scope: !1869)
!1884 = !DILocation(line: 434, column: 6, scope: !1869)
!1885 = !DILocation(line: 436, column: 28, scope: !1869)
!1886 = !DILocation(line: 436, column: 10, scope: !1869)
!1887 = !DILocation(line: 437, column: 2, scope: !1869)
!1888 = !DILocation(line: 437, column: 9, scope: !1869)
!1889 = !DILocation(line: 438, column: 25, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 437, column: 18)
!1891 = !DILocation(line: 438, column: 10, scope: !1890)
!1892 = !DILocation(line: 438, column: 8, scope: !1890)
!1893 = !DILocation(line: 439, column: 8, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 439, column: 7)
!1895 = !DILocation(line: 439, column: 7, scope: !1890)
!1896 = !DILocation(line: 440, column: 4, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 440, column: 4)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 439, column: 14)
!1899 = !DILocation(line: 440, column: 4, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 440, column: 4)
!1901 = !DILocation(line: 441, column: 4, scope: !1898)
!1902 = !DILocation(line: 444, column: 7, scope: !1890)
!1903 = !DILocation(line: 445, column: 13, scope: !1890)
!1904 = !DILocation(line: 445, column: 19, scope: !1890)
!1905 = !DILocation(line: 445, column: 11, scope: !1890)
!1906 = !DILocation(line: 447, column: 20, scope: !1890)
!1907 = !DILocation(line: 447, column: 45, scope: !1890)
!1908 = !DILocation(line: 447, column: 51, scope: !1890)
!1909 = !DILocation(line: 447, column: 43, scope: !1890)
!1910 = !DILocation(line: 447, column: 3, scope: !1890)
!1911 = !DILocation(line: 449, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 449, column: 7)
!1913 = !DILocation(line: 449, column: 13, scope: !1912)
!1914 = !DILocation(line: 449, column: 18, scope: !1912)
!1915 = !DILocation(line: 449, column: 7, scope: !1890)
!1916 = !DILocation(line: 450, column: 11, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 449, column: 37)
!1918 = !DILocation(line: 450, column: 17, scope: !1917)
!1919 = !DILocation(line: 450, column: 8, scope: !1917)
!1920 = !DILocation(line: 451, column: 19, scope: !1917)
!1921 = !DILocation(line: 451, column: 4, scope: !1917)
!1922 = !DILocation(line: 452, column: 26, scope: !1917)
!1923 = !DILocation(line: 452, column: 35, scope: !1917)
!1924 = !DILocation(line: 452, column: 11, scope: !1917)
!1925 = !DILocation(line: 452, column: 9, scope: !1917)
!1926 = !DILocation(line: 453, column: 9, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 453, column: 8)
!1928 = !DILocation(line: 453, column: 8, scope: !1917)
!1929 = !DILocation(line: 454, column: 5, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 454, column: 5)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 453, column: 15)
!1932 = !DILocation(line: 454, column: 5, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 454, column: 5)
!1934 = !DILocation(line: 455, column: 5, scope: !1931)
!1935 = !DILocation(line: 458, column: 40, scope: !1917)
!1936 = !DILocation(line: 458, column: 46, scope: !1917)
!1937 = !DILocation(line: 458, column: 13, scope: !1917)
!1938 = !DILocation(line: 460, column: 8, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 460, column: 8)
!1940 = !DILocation(line: 460, column: 18, scope: !1939)
!1941 = !DILocation(line: 460, column: 23, scope: !1939)
!1942 = !DILocation(line: 460, column: 8, scope: !1917)
!1943 = !DILocation(line: 461, column: 22, scope: !1939)
!1944 = !DILocation(line: 461, column: 32, scope: !1939)
!1945 = !DILocation(line: 461, column: 38, scope: !1939)
!1946 = !DILocation(line: 461, column: 48, scope: !1939)
!1947 = !DILocation(line: 461, column: 5, scope: !1939)
!1948 = !DILocation(line: 462, column: 3, scope: !1917)
!1949 = !DILocation(line: 464, column: 13, scope: !1890)
!1950 = !DILocation(line: 464, column: 11, scope: !1890)
!1951 = !DILocation(line: 465, column: 18, scope: !1890)
!1952 = !DILocation(line: 465, column: 24, scope: !1890)
!1953 = !DILocation(line: 465, column: 3, scope: !1890)
!1954 = distinct !{!1954, !1887, !1955, !827, !828}
!1955 = !DILocation(line: 466, column: 2, scope: !1869)
!1956 = !DILocation(line: 467, column: 1, scope: !1869)
!1957 = !DISubprogram(name: "reserve_bios_regions", scope: !1958, file: !1958, line: 21, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1958 = !DIFile(filename: "./arch/x86/include/asm/bios_ebda.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5bad262402ea3230888712025074e72a")
!1959 = !DILocation(line: 697, column: 2, scope: !594)
!1960 = !DILocation(line: 697, column: 6, scope: !594)
!1961 = !DILocation(line: 699, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !594, file: !3, line: 699, column: 6)
!1963 = !DILocation(line: 699, column: 6, scope: !594)
!1964 = !DILocation(line: 700, column: 3, scope: !1962)
!1965 = !DILocation(line: 702, column: 2, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !594, file: !3, line: 702, column: 2)
!1967 = !DILocation(line: 702, column: 2, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 702, column: 2)
!1969 = !DILocation(line: 715, column: 9, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !594, file: !3, line: 715, column: 2)
!1971 = !DILocation(line: 715, column: 7, scope: !1970)
!1972 = !DILocation(line: 715, column: 14, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 715, column: 2)
!1974 = !DILocation(line: 715, column: 16, scope: !1973)
!1975 = !DILocation(line: 715, column: 2, scope: !1970)
!1976 = !DILocation(line: 716, column: 34, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 716, column: 7)
!1978 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 715, column: 46)
!1979 = !DILocation(line: 716, column: 24, scope: !1977)
!1980 = !DILocation(line: 716, column: 7, scope: !1977)
!1981 = !DILocation(line: 716, column: 7, scope: !1978)
!1982 = !DILocation(line: 717, column: 4, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 717, column: 4)
!1984 = !DILocation(line: 717, column: 4, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 717, column: 4)
!1986 = !DILocation(line: 717, column: 4, scope: !1977)
!1987 = !DILocation(line: 719, column: 2, scope: !1978)
!1988 = !DILocation(line: 715, column: 42, scope: !1973)
!1989 = !DILocation(line: 715, column: 2, scope: !1973)
!1990 = distinct !{!1990, !1975, !1991, !827, !828}
!1991 = !DILocation(line: 719, column: 2, scope: !1970)
!1992 = !DILocation(line: 720, column: 1, scope: !594)
!1993 = distinct !DISubprogram(name: "get_ramdisk_image", scope: !3, file: !3, line: 233, type: !1994, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!46}
!1996 = !{!1997}
!1997 = !DILocalVariable(name: "ramdisk_image", scope: !1993, file: !3, line: 235, type: !46)
!1998 = !DILocation(line: 235, column: 2, scope: !1993)
!1999 = !DILocation(line: 235, column: 6, scope: !1993)
!2000 = !DILocation(line: 235, column: 38, scope: !1993)
!2001 = !DILocation(line: 235, column: 22, scope: !1993)
!2002 = !DILocation(line: 237, column: 36, scope: !1993)
!2003 = !DILocation(line: 237, column: 19, scope: !1993)
!2004 = !DILocation(line: 237, column: 54, scope: !1993)
!2005 = !DILocation(line: 237, column: 16, scope: !1993)
!2006 = !DILocation(line: 239, column: 6, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 239, column: 6)
!2008 = !DILocation(line: 239, column: 20, scope: !2007)
!2009 = !DILocation(line: 239, column: 6, scope: !1993)
!2010 = !DILocation(line: 240, column: 19, scope: !2007)
!2011 = !DILocation(line: 240, column: 17, scope: !2007)
!2012 = !DILocation(line: 240, column: 3, scope: !2007)
!2013 = !DILocation(line: 242, column: 9, scope: !1993)
!2014 = !DILocation(line: 243, column: 1, scope: !1993)
!2015 = !DILocation(line: 242, column: 2, scope: !1993)
!2016 = distinct !DISubprogram(name: "get_ramdisk_size", scope: !3, file: !3, line: 244, type: !1994, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2017 = !{!2018}
!2018 = !DILocalVariable(name: "ramdisk_size", scope: !2016, file: !3, line: 246, type: !46)
!2019 = !DILocation(line: 246, column: 2, scope: !2016)
!2020 = !DILocation(line: 246, column: 6, scope: !2016)
!2021 = !DILocation(line: 246, column: 37, scope: !2016)
!2022 = !DILocation(line: 246, column: 21, scope: !2016)
!2023 = !DILocation(line: 248, column: 35, scope: !2016)
!2024 = !DILocation(line: 248, column: 18, scope: !2016)
!2025 = !DILocation(line: 248, column: 52, scope: !2016)
!2026 = !DILocation(line: 248, column: 15, scope: !2016)
!2027 = !DILocation(line: 250, column: 6, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 250, column: 6)
!2029 = !DILocation(line: 250, column: 19, scope: !2028)
!2030 = !DILocation(line: 250, column: 6, scope: !2016)
!2031 = !DILocation(line: 251, column: 18, scope: !2028)
!2032 = !DILocation(line: 251, column: 16, scope: !2028)
!2033 = !DILocation(line: 251, column: 3, scope: !2028)
!2034 = !DILocation(line: 253, column: 9, scope: !2016)
!2035 = !DILocation(line: 254, column: 1, scope: !2016)
!2036 = !DILocation(line: 253, column: 2, scope: !2016)
!2037 = !DISubprogram(name: "early_memremap", scope: !1191, file: !1191, line: 13, type: !2038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!32, !571, !31}
!2040 = !DISubprogram(name: "early_memunmap", scope: !1191, file: !1191, line: 20, type: !2041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !32, !31}
!2043 = !DILocation(line: 655, column: 2, scope: !612)
!2044 = !DILocation(line: 655, column: 6, scope: !612)
!2045 = !DILocation(line: 656, column: 2, scope: !612)
!2046 = !DILocation(line: 656, column: 6, scope: !612)
!2047 = !DILocation(line: 656, column: 14, scope: !612)
!2048 = !DILocation(line: 668, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !612, file: !3, line: 668, column: 6)
!2050 = !DILocation(line: 668, column: 6, scope: !612)
!2051 = !DILocation(line: 669, column: 3, scope: !2049)
!2052 = !DILocation(line: 671, column: 11, scope: !612)
!2053 = !DILocation(line: 671, column: 9, scope: !612)
!2054 = !DILocation(line: 672, column: 6, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !612, file: !3, line: 672, column: 6)
!2056 = !DILocation(line: 672, column: 13, scope: !2055)
!2057 = !DILocation(line: 672, column: 6, scope: !612)
!2058 = !DILocation(line: 673, column: 3, scope: !2055)
!2059 = !DILocation(line: 675, column: 10, scope: !612)
!2060 = !DILocation(line: 675, column: 8, scope: !612)
!2061 = !DILocation(line: 676, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !612, file: !3, line: 676, column: 2)
!2063 = !DILocation(line: 676, column: 7, scope: !2062)
!2064 = !DILocation(line: 676, column: 14, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 676, column: 2)
!2066 = !DILocation(line: 676, column: 16, scope: !2065)
!2067 = !DILocation(line: 676, column: 2, scope: !2062)
!2068 = !DILocation(line: 677, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 677, column: 7)
!2070 = !DILocation(line: 677, column: 24, scope: !2069)
!2071 = !DILocation(line: 677, column: 16, scope: !2069)
!2072 = !DILocation(line: 677, column: 13, scope: !2069)
!2073 = !DILocation(line: 677, column: 7, scope: !2065)
!2074 = !DILocation(line: 678, column: 4, scope: !2069)
!2075 = !DILocation(line: 677, column: 25, scope: !2069)
!2076 = !DILocation(line: 676, column: 40, scope: !2065)
!2077 = !DILocation(line: 676, column: 2, scope: !2065)
!2078 = distinct !{!2078, !2067, !2079, !827, !828}
!2079 = !DILocation(line: 678, column: 11, scope: !2062)
!2080 = !DILocation(line: 681, column: 2, scope: !612)
!2081 = !DILocation(line: 682, column: 1, scope: !612)
!2082 = !DISubprogram(name: "early_pci_allowed", scope: !2083, file: !2083, line: 17, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2083 = !DIFile(filename: "./arch/x86/include/asm/pci-direct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09799ff96bfe39e3d200f5cb3dffbc74")
!2084 = !DISubprogram(name: "read_pci_config_16", scope: !2083, file: !2083, line: 12, type: !2085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!498, !515, !515, !515, !515}
!2087 = !DISubprogram(name: "e820__memory_setup_extended", scope: !1237, file: !1237, line: 37, type: !2088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !46, !513}
!2090 = distinct !DISubprogram(name: "add_dtb", scope: !1707, file: !1707, line: 28, type: !2091, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !46}
!2093 = !{!2094}
!2094 = !DILocalVariable(name: "data", arg: 1, scope: !2090, file: !1707, line: 28, type: !46)
!2095 = !DILocation(line: 28, column: 32, scope: !2090)
!2096 = !DILocation(line: 28, column: 40, scope: !2090)
!2097 = !DISubprogram(name: "parse_efi_setup", scope: !1351, file: !1351, line: 181, type: !2088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2098 = distinct !DISubprogram(name: "add_early_ima_buffer", scope: !3, file: !3, line: 335, type: !2091, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2099 = !{!2100}
!2100 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !2098, file: !3, line: 335, type: !46)
!2101 = !DILocation(line: 335, column: 45, scope: !2098)
!2102 = !DILocation(line: 354, column: 2, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 354, column: 2)
!2104 = !DILocation(line: 354, column: 2, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 354, column: 2)
!2106 = !DILocation(line: 356, column: 1, scope: !2098)
!2107 = !DISubprogram(name: "add_bootloader_randomness", scope: !2108, file: !2108, line: 15, type: !2109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2108 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!2109 = !DISubroutineType(types: !2110)
!2110 = !{null, !2111, !737}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2113 = distinct !DISubprogram(name: "memzero_explicit", scope: !1206, file: !1206, line: 276, type: !2114, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !32, !737}
!2116 = !{!2117, !2118}
!2117 = !DILocalVariable(name: "s", arg: 1, scope: !2113, file: !1206, line: 276, type: !32)
!2118 = !DILocalVariable(name: "count", arg: 2, scope: !2113, file: !1206, line: 276, type: !737)
!2119 = !DILocation(line: 276, column: 43, scope: !2113)
!2120 = !DILocation(line: 276, column: 53, scope: !2113)
!2121 = !DILocation(line: 278, column: 9, scope: !2113)
!2122 = !DILocation(line: 278, column: 15, scope: !2113)
!2123 = !DILocation(line: 278, column: 2, scope: !2113)
!2124 = !DILocation(line: 279, column: 2, scope: !2113)
!2125 = !{i64 2149008673}
!2126 = !DILocation(line: 280, column: 1, scope: !2113)
!2127 = distinct !DISubprogram(name: "const_test_bit", scope: !2128, file: !2128, line: 166, type: !843, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2129)
!2128 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2129 = !{!2130, !2131, !2132, !2133, !2134}
!2130 = !DILocalVariable(name: "nr", arg: 1, scope: !2127, file: !2128, line: 166, type: !31)
!2131 = !DILocalVariable(name: "addr", arg: 2, scope: !2127, file: !2128, line: 166, type: !845)
!2132 = !DILocalVariable(name: "p", scope: !2127, file: !2128, line: 168, type: !62)
!2133 = !DILocalVariable(name: "mask", scope: !2127, file: !2128, line: 169, type: !31)
!2134 = !DILocalVariable(name: "val", scope: !2127, file: !2128, line: 170, type: !31)
!2135 = !DILocation(line: 166, column: 30, scope: !2127)
!2136 = !DILocation(line: 166, column: 64, scope: !2127)
!2137 = !DILocation(line: 168, column: 2, scope: !2127)
!2138 = !DILocation(line: 168, column: 23, scope: !2127)
!2139 = !DILocation(line: 168, column: 50, scope: !2127)
!2140 = !DILocation(line: 168, column: 57, scope: !2127)
!2141 = !DILocation(line: 168, column: 55, scope: !2127)
!2142 = !DILocation(line: 169, column: 2, scope: !2127)
!2143 = !DILocation(line: 169, column: 16, scope: !2127)
!2144 = !DILocation(line: 169, column: 23, scope: !2127)
!2145 = !DILocation(line: 170, column: 2, scope: !2127)
!2146 = !DILocation(line: 170, column: 16, scope: !2127)
!2147 = !DILocation(line: 170, column: 23, scope: !2127)
!2148 = !DILocation(line: 170, column: 22, scope: !2127)
!2149 = !DILocation(line: 172, column: 12, scope: !2127)
!2150 = !DILocation(line: 172, column: 18, scope: !2127)
!2151 = !DILocation(line: 172, column: 16, scope: !2127)
!2152 = !DILocation(line: 172, column: 10, scope: !2127)
!2153 = !DILocation(line: 172, column: 9, scope: !2127)
!2154 = !DILocation(line: 173, column: 1, scope: !2127)
!2155 = !DILocation(line: 172, column: 2, scope: !2127)
!2156 = distinct !DISubprogram(name: "_test_bit", scope: !2157, file: !2157, line: 139, type: !843, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2158)
!2157 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2158 = !{!2159, !2160}
!2159 = !DILocalVariable(name: "nr", arg: 1, scope: !2156, file: !2157, line: 139, type: !31)
!2160 = !DILocalVariable(name: "addr", arg: 2, scope: !2156, file: !2157, line: 139, type: !845)
!2161 = !DILocation(line: 139, column: 25, scope: !2156)
!2162 = !DILocation(line: 139, column: 59, scope: !2156)
!2163 = !DILocation(line: 141, column: 25, scope: !2156)
!2164 = !DILocation(line: 141, column: 32, scope: !2156)
!2165 = !DILocation(line: 141, column: 30, scope: !2156)
!2166 = !DILocation(line: 141, column: 2, scope: !2156)
!2167 = !DILocation(line: 142, column: 23, scope: !2156)
!2168 = !DILocation(line: 142, column: 27, scope: !2156)
!2169 = !DILocation(line: 142, column: 9, scope: !2156)
!2170 = !DILocation(line: 142, column: 2, scope: !2156)
!2171 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1777, file: !1777, line: 66, type: !1778, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2172 = !{!2173, !2174}
!2173 = !DILocalVariable(name: "v", arg: 1, scope: !2171, file: !1777, line: 66, type: !1780)
!2174 = !DILocalVariable(name: "size", arg: 2, scope: !2171, file: !1777, line: 66, type: !737)
!2175 = !DILocation(line: 66, column: 73, scope: !2171)
!2176 = !DILocation(line: 66, column: 83, scope: !2171)
!2177 = !DILocation(line: 68, column: 19, scope: !2171)
!2178 = !DILocation(line: 68, column: 22, scope: !2171)
!2179 = !DILocation(line: 68, column: 2, scope: !2171)
!2180 = !DILocation(line: 69, column: 2, scope: !2171)
!2181 = !DILocation(line: 70, column: 1, scope: !2171)
!2182 = distinct !DISubprogram(name: "kasan_check_read", scope: !1816, file: !1816, line: 40, type: !1817, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2183)
!2183 = !{!2184, !2185}
!2184 = !DILocalVariable(name: "p", arg: 1, scope: !2182, file: !1816, line: 40, type: !1780)
!2185 = !DILocalVariable(name: "size", arg: 2, scope: !2182, file: !1816, line: 40, type: !7)
!2186 = !DILocation(line: 40, column: 58, scope: !2182)
!2187 = !DILocation(line: 40, column: 74, scope: !2182)
!2188 = !DILocation(line: 42, column: 2, scope: !2182)
!2189 = !DISubprogram(name: "e820__mapped_all", scope: !1237, file: !1237, line: 15, type: !2190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!510, !46, !46, !18}
!2192 = !DISubprogram(name: "e820__range_remove", scope: !1237, file: !1237, line: 19, type: !2193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!46, !46, !46, !18, !510}
!2195 = !DISubprogram(name: "e820__range_add", scope: !1237, file: !1237, line: 17, type: !2196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !46, !46, !18}
!2198 = !DISubprogram(name: "e820__range_update", scope: !1237, file: !1237, line: 18, type: !2199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!46, !46, !46, !18, !18}
!2201 = !DISubprogram(name: "e820__update_table", scope: !1237, file: !1237, line: 22, type: !2202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!35, !2204}
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_table", file: !19, line: 94, size: 51232, elements: !2206)
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !2205, file: !19, line: 95, baseType: !56, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2205, file: !19, line: 96, baseType: !2209, size: 51200, offset: 32)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2210, size: 51200, elements: !2215)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_entry", file: !19, line: 55, size: 160, elements: !2211)
!2211 = !{!2212, !2213, !2214}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2210, file: !19, line: 56, baseType: !46, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2210, file: !19, line: 57, baseType: !46, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2210, file: !19, line: 58, baseType: !18, size: 32, offset: 128)
!2215 = !{!2216}
!2216 = !DISubrange(count: 320)
!2217 = distinct !DISubprogram(name: "native_read_cr4", scope: !1485, file: !1485, line: 57, type: !1427, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2218 = !{!2219}
!2219 = !DILocalVariable(name: "val", scope: !2217, file: !1485, line: 59, type: !31)
!2220 = !DILocation(line: 59, column: 2, scope: !2217)
!2221 = !DILocation(line: 59, column: 16, scope: !2217)
!2222 = !DILocation(line: 72, column: 2, scope: !2217)
!2223 = !{i64 2093145, i64 2093160}
!2224 = !DILocation(line: 74, column: 9, scope: !2217)
!2225 = !DILocation(line: 75, column: 1, scope: !2217)
!2226 = !DILocation(line: 74, column: 2, scope: !2217)
!2227 = !DISubprogram(name: "pfn_range_is_mapped", scope: !1489, file: !1489, line: 66, type: !2228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!510, !31, !31}
!2230 = distinct !DISubprogram(name: "relocate_initrd", scope: !3, file: !3, line: 256, type: !595, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2231)
!2231 = !{!2232, !2233, !2234}
!2232 = !DILocalVariable(name: "ramdisk_image", scope: !2230, file: !3, line: 259, type: !46)
!2233 = !DILocalVariable(name: "ramdisk_size", scope: !2230, file: !3, line: 260, type: !46)
!2234 = !DILocalVariable(name: "area_size", scope: !2230, file: !3, line: 261, type: !46)
!2235 = !DILocation(line: 259, column: 2, scope: !2230)
!2236 = !DILocation(line: 259, column: 6, scope: !2230)
!2237 = !DILocation(line: 259, column: 22, scope: !2230)
!2238 = !DILocation(line: 260, column: 2, scope: !2230)
!2239 = !DILocation(line: 260, column: 6, scope: !2230)
!2240 = !DILocation(line: 260, column: 22, scope: !2230)
!2241 = !DILocation(line: 261, column: 2, scope: !2230)
!2242 = !DILocation(line: 261, column: 6, scope: !2230)
!2243 = !DILocation(line: 261, column: 22, scope: !2230)
!2244 = !DILocation(line: 264, column: 48, scope: !2230)
!2245 = !DILocation(line: 265, column: 13, scope: !2230)
!2246 = !DILocation(line: 264, column: 22, scope: !2230)
!2247 = !DILocation(line: 264, column: 20, scope: !2230)
!2248 = !DILocation(line: 266, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 266, column: 6)
!2250 = !DILocation(line: 266, column: 6, scope: !2230)
!2251 = !DILocation(line: 268, column: 9, scope: !2249)
!2252 = !DILocation(line: 267, column: 3, scope: !2249)
!2253 = !DILocation(line: 270, column: 17, scope: !2230)
!2254 = !DILocation(line: 270, column: 37, scope: !2230)
!2255 = !DILocation(line: 270, column: 35, scope: !2230)
!2256 = !DILocation(line: 270, column: 15, scope: !2230)
!2257 = !DILocation(line: 271, column: 17, scope: !2230)
!2258 = !DILocation(line: 271, column: 32, scope: !2230)
!2259 = !DILocation(line: 271, column: 30, scope: !2230)
!2260 = !DILocation(line: 271, column: 15, scope: !2230)
!2261 = !DILocation(line: 272, column: 2, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 272, column: 2)
!2263 = !DILocation(line: 272, column: 2, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 272, column: 2)
!2265 = !DILocation(line: 275, column: 30, scope: !2230)
!2266 = !DILocation(line: 275, column: 22, scope: !2230)
!2267 = !DILocation(line: 275, column: 44, scope: !2230)
!2268 = !DILocation(line: 275, column: 59, scope: !2230)
!2269 = !DILocation(line: 275, column: 2, scope: !2230)
!2270 = !DILocation(line: 277, column: 2, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 277, column: 2)
!2272 = !DILocation(line: 277, column: 2, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 277, column: 2)
!2274 = !DILocation(line: 281, column: 1, scope: !2230)
!2275 = !DISubprogram(name: "memblock_phys_free", scope: !1462, file: !1462, line: 115, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2276 = !DISubprogram(name: "memblock_phys_alloc_range", scope: !1462, file: !1462, line: 402, type: !2277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!65, !65, !65, !65, !65}
!2279 = !DISubprogram(name: "panic", scope: !2280, file: !2280, line: 12, type: !2281, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2280 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !39, null}
!2283 = !DISubprogram(name: "copy_from_early_mem", scope: !1191, file: !1191, line: 38, type: !2284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !32, !65, !31}
!2286 = !DISubprogram(name: "memblock_phys_mem_size", scope: !1462, file: !1462, line: 480, type: !1490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2287 = !DISubprogram(name: "parse_crashkernel", scope: !2288, file: !2288, line: 82, type: !2289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2288 = !DIFile(filename: "./include/linux/crash_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd649c63340ff894fc599265eb4c65d6")
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!35, !33, !50, !2291, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!2292 = !DISubprogram(name: "parse_crashkernel_high", scope: !2288, file: !2288, line: 84, type: !2289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2293 = distinct !DISubprogram(name: "reserve_crashkernel_low", scope: !3, file: !3, line: 497, type: !1188, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300, !2302, !2303, !2307}
!2295 = !DILocalVariable(name: "base", scope: !2293, file: !3, line: 500, type: !50)
!2296 = !DILocalVariable(name: "low_base", scope: !2293, file: !3, line: 500, type: !50)
!2297 = !DILocalVariable(name: "low_size", scope: !2293, file: !3, line: 500, type: !50)
!2298 = !DILocalVariable(name: "low_mem_limit", scope: !2293, file: !3, line: 501, type: !31)
!2299 = !DILocalVariable(name: "ret", scope: !2293, file: !3, line: 502, type: !35)
!2300 = !DILocalVariable(name: "__UNIQUE_ID___x389", scope: !2301, file: !3, line: 504, type: !65)
!2301 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 504, column: 18)
!2302 = !DILocalVariable(name: "__UNIQUE_ID___y390", scope: !2301, file: !3, line: 504, type: !50)
!2303 = !DILocalVariable(name: "__UNIQUE_ID___x391", scope: !2304, file: !3, line: 518, type: !31)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 518, column: 14)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 508, column: 11)
!2306 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 508, column: 6)
!2307 = !DILocalVariable(name: "__UNIQUE_ID___y392", scope: !2304, file: !3, line: 518, type: !31)
!2308 = !DILocation(line: 500, column: 2, scope: !2293)
!2309 = !DILocation(line: 500, column: 21, scope: !2293)
!2310 = !DILocation(line: 500, column: 27, scope: !2293)
!2311 = !DILocation(line: 500, column: 41, scope: !2293)
!2312 = !DILocation(line: 501, column: 2, scope: !2293)
!2313 = !DILocation(line: 501, column: 16, scope: !2293)
!2314 = !DILocation(line: 502, column: 2, scope: !2293)
!2315 = !DILocation(line: 502, column: 6, scope: !2293)
!2316 = !DILocation(line: 504, column: 18, scope: !2301)
!2317 = !DILocation(line: 504, column: 18, scope: !2293)
!2318 = !DILocation(line: 504, column: 16, scope: !2293)
!2319 = !DILocation(line: 507, column: 49, scope: !2293)
!2320 = !DILocation(line: 507, column: 8, scope: !2293)
!2321 = !DILocation(line: 507, column: 6, scope: !2293)
!2322 = !DILocation(line: 508, column: 6, scope: !2306)
!2323 = !DILocation(line: 508, column: 6, scope: !2293)
!2324 = !DILocation(line: 518, column: 14, scope: !2304)
!2325 = !DILocation(line: 518, column: 14, scope: !2305)
!2326 = !DILocation(line: 518, column: 12, scope: !2305)
!2327 = !DILocation(line: 519, column: 2, scope: !2305)
!2328 = !DILocation(line: 521, column: 8, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 521, column: 7)
!2330 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 519, column: 9)
!2331 = !DILocation(line: 521, column: 7, scope: !2330)
!2332 = !DILocation(line: 522, column: 4, scope: !2329)
!2333 = !DILocation(line: 525, column: 39, scope: !2293)
!2334 = !DILocation(line: 525, column: 13, scope: !2293)
!2335 = !DILocation(line: 525, column: 11, scope: !2293)
!2336 = !DILocation(line: 526, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 526, column: 6)
!2338 = !DILocation(line: 526, column: 6, scope: !2293)
!2339 = !DILocation(line: 527, column: 3, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 527, column: 3)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 526, column: 17)
!2342 = !DILocation(line: 527, column: 3, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 527, column: 3)
!2344 = !DILocation(line: 529, column: 3, scope: !2341)
!2345 = !DILocation(line: 532, column: 2, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 532, column: 2)
!2347 = !DILocation(line: 532, column: 2, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 532, column: 2)
!2349 = !DILocation(line: 537, column: 25, scope: !2293)
!2350 = !DILocation(line: 537, column: 23, scope: !2293)
!2351 = !DILocation(line: 538, column: 25, scope: !2293)
!2352 = !DILocation(line: 538, column: 36, scope: !2293)
!2353 = !DILocation(line: 538, column: 34, scope: !2293)
!2354 = !DILocation(line: 538, column: 45, scope: !2293)
!2355 = !DILocation(line: 538, column: 23, scope: !2293)
!2356 = !DILocation(line: 539, column: 2, scope: !2293)
!2357 = !DILocation(line: 541, column: 2, scope: !2293)
!2358 = !DILocation(line: 542, column: 1, scope: !2293)
!2359 = !DISubprogram(name: "parse_crashkernel_low", scope: !2288, file: !2288, line: 86, type: !2289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2360 = !DISubprogram(name: "swiotlb_size_or_default", scope: !2361, file: !2361, line: 38, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2361 = !DIFile(filename: "./include/linux/swiotlb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e3aebb9c93f301a4836cda298f8e86")
!2362 = !DISubprogram(name: "atomic_notifier_chain_register", scope: !705, file: !705, line: 146, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!35, !2365, !712}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_notifier_head", file: !705, line: 60, size: 128, elements: !2367)
!2367 = !{!2368, !2403}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2366, file: !705, line: 61, baseType: !2369, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !2370, line: 29, baseType: !2371)
!2370 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !2370, line: 17, size: 32, elements: !2372)
!2372 = !{!2373}
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !2370, line: 18, baseType: !2374, size: 32)
!2374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !2370, line: 18, size: 32, elements: !2375)
!2375 = !{!2376}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !2374, file: !2370, line: 19, baseType: !2377, size: 32)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !2378, line: 14, size: 32, elements: !2379)
!2378 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!2379 = !{!2380}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2377, file: !2378, line: 15, baseType: !2381, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !2382, line: 44, baseType: !2383)
!2382 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !2382, line: 14, size: 32, elements: !2384)
!2384 = !{!2385}
!2385 = !DIDerivedType(tag: DW_TAG_member, scope: !2383, file: !2382, line: 15, baseType: !2386, size: 32)
!2386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2383, file: !2382, line: 15, size: 32, elements: !2387)
!2387 = !{!2388, !2393, !2398}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2386, file: !2382, line: 16, baseType: !2389, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !61, line: 174, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 172, size: 32, elements: !2391)
!2391 = !{!2392}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !2390, file: !61, line: 173, baseType: !35, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2386, file: !2382, line: 24, baseType: !2394, size: 16)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2386, file: !2382, line: 24, size: 16, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !2394, file: !2382, line: 25, baseType: !515, size: 8)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2394, file: !2382, line: 26, baseType: !515, size: 8, offset: 8)
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !2386, file: !2382, line: 28, baseType: !2399, size: 32)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2386, file: !2382, line: 28, size: 32, elements: !2400)
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !2399, file: !2382, line: 29, baseType: !498, size: 16)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2399, file: !2382, line: 30, baseType: !498, size: 16, offset: 16)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2366, file: !705, line: 62, baseType: !712, size: 64, offset: 64)
!2404 = distinct !DISubprogram(name: "dump_kernel_offset", scope: !3, file: !3, line: 802, type: !710, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2405)
!2405 = !{!2406, !2407, !2408}
!2406 = !DILocalVariable(name: "self", arg: 1, scope: !2404, file: !3, line: 802, type: !712)
!2407 = !DILocalVariable(name: "v", arg: 2, scope: !2404, file: !3, line: 802, type: !31)
!2408 = !DILocalVariable(name: "p", arg: 3, scope: !2404, file: !3, line: 802, type: !32)
!2409 = !DILocation(line: 802, column: 43, scope: !2404)
!2410 = !DILocation(line: 802, column: 63, scope: !2404)
!2411 = !DILocation(line: 802, column: 72, scope: !2404)
!2412 = !DILocation(line: 804, column: 6, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 804, column: 6)
!2414 = !DILocation(line: 804, column: 6, scope: !2404)
!2415 = !DILocation(line: 805, column: 3, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 805, column: 3)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 804, column: 23)
!2418 = !DILocation(line: 805, column: 3, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 805, column: 3)
!2420 = !DILocation(line: 810, column: 2, scope: !2417)
!2421 = !DILocation(line: 811, column: 3, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 811, column: 3)
!2423 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 810, column: 9)
!2424 = !DILocation(line: 811, column: 3, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 811, column: 3)
!2426 = !DILocation(line: 814, column: 2, scope: !2404)
!2427 = distinct !DISubprogram(name: "kaslr_enabled", scope: !1481, file: !1481, line: 80, type: !613, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2428 = !DILocation(line: 83, column: 22, scope: !2427)
!2429 = !DILocation(line: 83, column: 6, scope: !2427)
!2430 = !DILocation(line: 83, column: 32, scope: !2427)
!2431 = !DILocation(line: 83, column: 4, scope: !2427)
!2432 = !DILocation(line: 83, column: 3, scope: !2427)
!2433 = !DILocation(line: 82, column: 2, scope: !2427)
!2434 = distinct !DISubprogram(name: "kaslr_offset", scope: !1481, file: !1481, line: 95, type: !1427, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2435 = !DILocation(line: 97, column: 2, scope: !2434)
