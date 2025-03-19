; ModuleID = 'drivers/usb/host/pci-quirks.c'
source_filename = "drivers/usb/host/pci-quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sb800_prefetch: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sb800_prefetch ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_hcd_amd_remote_wakeup_quirk: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_hcd_amd_remote_wakeup_quirk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_amd_hang_symptom_quirk: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_amd_hang_symptom_quirk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_amd_prefetch_quirk: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_amd_prefetch_quirk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_amd_quirk_pll_check: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_amd_quirk_pll_check ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_amd_quirk_pll_disable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_amd_quirk_pll_disable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_asmedia_modifyflowcontrol: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_asmedia_modifyflowcontrol ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_amd_quirk_pll_enable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_amd_quirk_pll_enable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_amd_dev_put: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_amd_dev_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_amd_pt_check_port: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_amd_pt_check_port ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_uhci_reset_hc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad uhci_reset_hc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_uhci_check_and_reset_hc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad uhci_check_and_reset_hc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_enable_intel_xhci_ports: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_enable_intel_xhci_ports ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_disable_xhci_ports: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_disable_xhci_ports ; .previous"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short (~0), (~0)\09\09\09"
module asm ".long 0x0c03, 8\09\09"
module asm ".long __UNIQUE_ID_quirk_usb_early_handoff306 - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"

%struct.amd_chipset_info = type { ptr, ptr, i32, %struct.amd_chipset_type, i32, i32, i8 }
%struct.amd_chipset_type = type { i32, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.paravirt_patch_template = type { %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_cpu_ops = type { ptr }
%struct.pv_irq_ops = type {}
%struct.pv_mmu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pv_lock_ops = type { ptr, %struct.paravirt_callee_save, ptr, ptr, %struct.paravirt_callee_save }
%struct.paravirt_callee_save = type { ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__UNIQUE_ID___addressable_sb800_prefetch292 = internal global ptr @sb800_prefetch, section ".discard.addressable", align 8, !dbg !0
@amd_chipset = internal global %struct.amd_chipset_info zeroinitializer, align 8, !dbg !4935
@__UNIQUE_ID___addressable_usb_hcd_amd_remote_wakeup_quirk293 = internal global ptr @usb_hcd_amd_remote_wakeup_quirk, section ".discard.addressable", align 8, !dbg !4902
@__UNIQUE_ID___addressable_usb_amd_hang_symptom_quirk294 = internal global ptr @usb_amd_hang_symptom_quirk, section ".discard.addressable", align 8, !dbg !4904
@__UNIQUE_ID___addressable_usb_amd_prefetch_quirk295 = internal global ptr @usb_amd_prefetch_quirk, section ".discard.addressable", align 8, !dbg !4906
@__UNIQUE_ID___addressable_usb_amd_quirk_pll_check296 = internal global ptr @usb_amd_quirk_pll_check, section ".discard.addressable", align 8, !dbg !4908
@__UNIQUE_ID___addressable_usb_amd_quirk_pll_disable297 = internal global ptr @usb_amd_quirk_pll_disable, section ".discard.addressable", align 8, !dbg !4910
@__UNIQUE_ID___addressable_usb_asmedia_modifyflowcontrol298 = internal global ptr @usb_asmedia_modifyflowcontrol, section ".discard.addressable", align 8, !dbg !4912
@__UNIQUE_ID___addressable_usb_amd_quirk_pll_enable299 = internal global ptr @usb_amd_quirk_pll_enable, section ".discard.addressable", align 8, !dbg !4914
@amd_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4970
@__UNIQUE_ID___addressable_usb_amd_dev_put300 = internal global ptr @usb_amd_dev_put, section ".discard.addressable", align 8, !dbg !4916
@__UNIQUE_ID___addressable_usb_amd_pt_check_port301 = internal global ptr @usb_amd_pt_check_port, section ".discard.addressable", align 8, !dbg !4918
@.str = private unnamed_addr constant [28 x i8] c"HCRESET not completed yet!\0A\00", align 1, !dbg !4920
@__UNIQUE_ID___addressable_uhci_reset_hc302 = internal global ptr @uhci_reset_hc, section ".discard.addressable", align 8, !dbg !4925
@__UNIQUE_ID___addressable_uhci_check_and_reset_hc303 = internal global ptr @uhci_check_and_reset_hc, section ".discard.addressable", align 8, !dbg !4927
@__UNIQUE_ID___addressable_usb_enable_intel_xhci_ports304 = internal global ptr @usb_enable_intel_xhci_ports, section ".discard.addressable", align 8, !dbg !4929
@__UNIQUE_ID___addressable_usb_disable_xhci_ports305 = internal global ptr @usb_disable_xhci_ports, section ".discard.addressable", align 8, !dbg !4931
@__UNIQUE_ID___addressable___UNIQUE_ID_quirk_usb_early_handoff306307 = internal global ptr @__UNIQUE_ID_quirk_usb_early_handoff306, section ".discard.addressable", align 8, !dbg !4933
@.str.1 = private unnamed_addr constant [29 x i8] c"\017QUIRK: Enable AMD PLL fix\0A\00", align 1, !dbg !4950
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: check_ready ERROR\00", align 1, !dbg !4955
@__func__.usb_asmedia_wait_write = private unnamed_addr constant [23 x i8] c"usb_asmedia_wait_write\00", align 1, !dbg !4960
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: check_write_ready timeout\00", align 1, !dbg !4965
@.str.4 = private unnamed_addr constant [18 x i8] c"brcm,bcm2711-pcie\00", align 1, !dbg !4972
@.str.5 = private unnamed_addr constant [47 x i8] c"Can't enable PCI device, BIOS handoff failed.\0A\00", align 1, !dbg !4977
@.str.6 = private unnamed_addr constant [44 x i8] c"OHCI: BIOS handoff failed (BIOS bug?) %08x\0A\00", align 1, !dbg !4982
@.str.7 = private unnamed_addr constant [36 x i8] c"EHCI: unrecognized capability %02x\0A\00", align 1, !dbg !4987
@.str.8 = private unnamed_addr constant [3 x i8] c"\017\00", align 1, !dbg !4992
@.str.9 = private unnamed_addr constant [24 x i8] c"EHCI: capability loop?\0A\00", align 1, !dbg !4995
@ehci_dmi_nohandoff_table = internal constant [5 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"EXOPG06411\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"Lucid-CE-133\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"M11JB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"Lucid-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"Ordissimo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"Lucid-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"HASEE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"E210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"6.00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !5002
@.str.10 = private unnamed_addr constant [44 x i8] c"EHCI: BIOS handoff failed (BIOS bug?) %08x\0A\00", align 1, !dbg !5000
@.str.11 = private unnamed_addr constant [35 x i8] c"xHCI controller failing to respond\00", align 1, !dbg !5027
@.str.12 = private unnamed_addr constant [44 x i8] c"xHCI BIOS handoff failed (BIOS bug ?) %08x\0A\00", align 1, !dbg !5032
@.str.13 = private unnamed_addr constant [55 x i8] c"xHCI HW not ready after 5 sec (HC bug?) status = 0x%x\0A\00", align 1, !dbg !5034
@.str.14 = private unnamed_addr constant [51 x i8] c"xHCI HW did not halt within %d usec status = 0x%x\0A\00", align 1, !dbg !5039
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID___addressable_sb800_prefetch292, ptr @__UNIQUE_ID___addressable_usb_hcd_amd_remote_wakeup_quirk293, ptr @__UNIQUE_ID___addressable_usb_amd_hang_symptom_quirk294, ptr @__UNIQUE_ID___addressable_usb_amd_prefetch_quirk295, ptr @__UNIQUE_ID___addressable_usb_amd_quirk_pll_check296, ptr @__UNIQUE_ID___addressable_usb_amd_quirk_pll_disable297, ptr @__UNIQUE_ID___addressable_usb_asmedia_modifyflowcontrol298, ptr @__UNIQUE_ID___addressable_usb_amd_quirk_pll_enable299, ptr @__UNIQUE_ID___addressable_usb_amd_dev_put300, ptr @__UNIQUE_ID___addressable_usb_amd_pt_check_port301, ptr @__UNIQUE_ID___addressable_uhci_reset_hc302, ptr @__UNIQUE_ID___addressable_uhci_check_and_reset_hc303, ptr @__UNIQUE_ID___addressable_usb_enable_intel_xhci_ports304, ptr @__UNIQUE_ID___addressable_usb_disable_xhci_ports305, ptr @__UNIQUE_ID___addressable___UNIQUE_ID_quirk_usb_early_handoff306307], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sb800_prefetch(ptr noundef %dev, i32 noundef %on) #0 align 16 !dbg !5054 {
entry:
  %dev.addr = alloca ptr, align 8
  %on.addr = alloca i32, align 4
  %misc = alloca i16, align 2
  %pdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5058, metadata !DIExpression()), !dbg !5064
  store i32 %on, ptr %on.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %on.addr, metadata !5059, metadata !DIExpression()), !dbg !5065
  call void @llvm.lifetime.start.p0(i64 2, ptr %misc) #12, !dbg !5066
  call void @llvm.dbg.declare(metadata ptr %misc, metadata !5060, metadata !DIExpression()), !dbg !5067
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #12, !dbg !5068
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !5061, metadata !DIExpression()), !dbg !5069
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !5070
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5062, metadata !DIExpression()), !dbg !5070
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5070
  store ptr %0, ptr %__mptr, align 8, !dbg !5070
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5070
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !5070
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5070
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !5071
  %2 = load ptr, ptr %tmp, align 8, !dbg !5070
  store ptr %2, ptr %pdev, align 8, !dbg !5069
  %3 = load ptr, ptr %pdev, align 8, !dbg !5072
  %call = call i32 @pci_read_config_word(ptr noundef %3, i32 noundef 80, ptr noundef %misc) #13, !dbg !5073
  %4 = load i32, ptr %on.addr, align 4, !dbg !5074
  %cmp = icmp eq i32 %4, 0, !dbg !5076
  br i1 %cmp, label %if.then, label %if.else, !dbg !5077

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pdev, align 8, !dbg !5078
  %6 = load i16, ptr %misc, align 2, !dbg !5079
  %conv = zext i16 %6 to i32, !dbg !5079
  %and = and i32 %conv, 64767, !dbg !5080
  %conv1 = trunc i32 %and to i16, !dbg !5079
  %call2 = call i32 @pci_write_config_word(ptr noundef %5, i32 noundef 80, i16 noundef zeroext %conv1) #13, !dbg !5081
  br label %if.end, !dbg !5081

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pdev, align 8, !dbg !5082
  %8 = load i16, ptr %misc, align 2, !dbg !5083
  %conv3 = zext i16 %8 to i32, !dbg !5083
  %or = or i32 %conv3, 768, !dbg !5084
  %conv4 = trunc i32 %or to i16, !dbg !5083
  %call5 = call i32 @pci_write_config_word(ptr noundef %7, i32 noundef 80, i16 noundef zeroext %conv4) #13, !dbg !5085
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #12, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 2, ptr %misc) #12, !dbg !5086
  ret void, !dbg !5086
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5087 dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5093 dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @usb_hcd_amd_remote_wakeup_quirk(ptr noundef %pdev) #0 align 16 !dbg !5096 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5098, metadata !DIExpression()), !dbg !5099
  call void @usb_amd_find_chipset_info() #13, !dbg !5100
  %0 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4, !dbg !5101
  %cmp = icmp eq i32 %0, 6, !dbg !5103
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5104

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4, !dbg !5105
  %cmp1 = icmp eq i32 %1, 7, !dbg !5106
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5107

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4, !dbg !5108
  br label %return, !dbg !5108

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5111
  ret i32 %2, !dbg !5111
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_amd_find_chipset_info() #0 align 16 !dbg !5112 {
entry:
  %flags = alloca i64, align 8
  %info = alloca %struct.amd_chipset_info, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %__dummy53 = alloca i64, align 8
  %__dummy254 = alloca i64, align 8
  %tmp57 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !5127
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5114, metadata !DIExpression()), !dbg !5128
  call void @llvm.lifetime.start.p0(i64 40, ptr %info) #12, !dbg !5129
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5115, metadata !DIExpression()), !dbg !5130
  call void @llvm.memset.p0.i64(ptr align 8 %info, i8 0, i64 40, i1 false), !dbg !5130
  br label %do.body, !dbg !5131

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5132

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !5133
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5116, metadata !DIExpression()), !dbg !5133
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !5133
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5120, metadata !DIExpression()), !dbg !5133
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5133
  %conv = zext i1 %cmp to i32, !dbg !5133
  store i32 1, ptr %tmp, align 4, !dbg !5133
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !5134
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !5134
  %0 = load i32, ptr %tmp, align 4, !dbg !5133
  %call = call ptr @spinlock_check(ptr noundef @amd_lock) #13, !dbg !5134
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #13, !dbg !5134
  store i64 %call2, ptr %flags, align 8, !dbg !5134
  br label %do.cond, !dbg !5134

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5134

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5132

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5132

do.end4:                                          ; preds = %do.cond3
  %1 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 8, !dbg !5135
  %cmp5 = icmp sgt i32 %1, 0, !dbg !5137
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5138

if.then:                                          ; preds = %do.end4
  %2 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 8, !dbg !5139
  %inc = add i32 %2, 1, !dbg !5139
  store i32 %inc, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 8, !dbg !5139
  %3 = load i64, ptr %flags, align 8, !dbg !5141
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %3) #13, !dbg !5142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5143

if.end:                                           ; preds = %do.end4
  %4 = load i64, ptr %flags, align 8, !dbg !5144
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %4) #13, !dbg !5145
  %call7 = call i32 @amd_chipset_sb_type_init(ptr noundef %info) #13, !dbg !5146
  %tobool = icmp ne i32 %call7, 0, !dbg !5146
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !5148

if.then8:                                         ; preds = %if.end
  br label %commit, !dbg !5149

if.end9:                                          ; preds = %if.end
  %sb_type = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 3, !dbg !5151
  %gen = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type, i32 0, i32 0, !dbg !5152
  %5 = load i32, ptr %gen, align 4, !dbg !5152
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb14
    i32 4, label %sw.bb14
    i32 5, label %sw.bb14
  ], !dbg !5153

sw.bb:                                            ; preds = %if.end9
  %sb_type10 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 3, !dbg !5154
  %rev = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type10, i32 0, i32 1, !dbg !5156
  %6 = load i8, ptr %rev, align 4, !dbg !5156
  %conv11 = zext i8 %6 to i32, !dbg !5157
  %cmp12 = icmp sle i32 %conv11, 59, !dbg !5158
  %need_pll_quirk = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 6, !dbg !5159
  %frombool = zext i1 %cmp12 to i8, !dbg !5160
  store i8 %frombool, ptr %need_pll_quirk, align 4, !dbg !5160
  br label %sw.epilog, !dbg !5161

sw.bb14:                                          ; preds = %if.end9, %if.end9, %if.end9
  %need_pll_quirk15 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 6, !dbg !5162
  store i8 1, ptr %need_pll_quirk15, align 4, !dbg !5163
  br label %sw.epilog, !dbg !5164

sw.default:                                       ; preds = %if.end9
  %need_pll_quirk16 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 6, !dbg !5165
  store i8 0, ptr %need_pll_quirk16, align 4, !dbg !5166
  br label %sw.epilog, !dbg !5167

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb
  %need_pll_quirk17 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 6, !dbg !5168
  %7 = load i8, ptr %need_pll_quirk17, align 4, !dbg !5168, !range !5170, !noundef !966
  %tobool18 = trunc i8 %7 to i1, !dbg !5168
  br i1 %tobool18, label %if.end25, label %if.then19, !dbg !5171

if.then19:                                        ; preds = %sw.epilog
  %smbus_dev = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 1, !dbg !5172
  %8 = load ptr, ptr %smbus_dev, align 8, !dbg !5172
  %tobool20 = icmp ne ptr %8, null, !dbg !5175
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !5176

if.then21:                                        ; preds = %if.then19
  %smbus_dev22 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 1, !dbg !5177
  %9 = load ptr, ptr %smbus_dev22, align 8, !dbg !5177
  call void @pci_dev_put(ptr noundef %9) #13, !dbg !5179
  %smbus_dev23 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 1, !dbg !5180
  store ptr null, ptr %smbus_dev23, align 8, !dbg !5181
  br label %if.end24, !dbg !5182

if.end24:                                         ; preds = %if.then21, %if.then19
  br label %commit, !dbg !5183

if.end25:                                         ; preds = %sw.epilog
  %call26 = call ptr @pci_get_device(i32 noundef 4130, i32 noundef 38401, ptr noundef null) #13, !dbg !5184
  %nb_dev = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 0, !dbg !5185
  store ptr %call26, ptr %nb_dev, align 8, !dbg !5186
  %nb_dev27 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 0, !dbg !5187
  %10 = load ptr, ptr %nb_dev27, align 8, !dbg !5187
  %tobool28 = icmp ne ptr %10, null, !dbg !5189
  br i1 %tobool28, label %if.then29, label %if.else, !dbg !5190

if.then29:                                        ; preds = %if.end25
  %nb_type = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 2, !dbg !5191
  store i32 1, ptr %nb_type, align 8, !dbg !5193
  br label %if.end45, !dbg !5194

if.else:                                          ; preds = %if.end25
  %call30 = call ptr @pci_get_device(i32 noundef 4130, i32 noundef 5392, ptr noundef null) #13, !dbg !5195
  %nb_dev31 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 0, !dbg !5197
  store ptr %call30, ptr %nb_dev31, align 8, !dbg !5198
  %nb_dev32 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 0, !dbg !5199
  %11 = load ptr, ptr %nb_dev32, align 8, !dbg !5199
  %tobool33 = icmp ne ptr %11, null, !dbg !5201
  br i1 %tobool33, label %if.then34, label %if.else36, !dbg !5202

if.then34:                                        ; preds = %if.else
  %nb_type35 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 2, !dbg !5203
  store i32 2, ptr %nb_type35, align 8, !dbg !5205
  br label %if.end44, !dbg !5206

if.else36:                                        ; preds = %if.else
  %call37 = call ptr @pci_get_device(i32 noundef 4130, i32 noundef 38400, ptr noundef null) #13, !dbg !5207
  %nb_dev38 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 0, !dbg !5209
  store ptr %call37, ptr %nb_dev38, align 8, !dbg !5210
  %nb_dev39 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 0, !dbg !5211
  %12 = load ptr, ptr %nb_dev39, align 8, !dbg !5211
  %tobool40 = icmp ne ptr %12, null, !dbg !5213
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !5214

if.then41:                                        ; preds = %if.else36
  %nb_type42 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 2, !dbg !5215
  store i32 3, ptr %nb_type42, align 8, !dbg !5216
  br label %if.end43, !dbg !5217

if.end43:                                         ; preds = %if.then41, %if.else36
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then34
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then29
  br label %do.body46, !dbg !5218

do.body46:                                        ; preds = %if.end45
  br label %do.cond47, !dbg !5220

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !5220

do.end48:                                         ; preds = %do.cond47
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #14, !dbg !5218
  store i32 %call50, ptr %tmp49, align 4, !dbg !5220
  %13 = load i32, ptr %tmp49, align 4, !dbg !5218
  br label %commit, !dbg !5222

commit:                                           ; preds = %do.end48, %if.end24, %if.then8
  call void @llvm.dbg.label(metadata !5121), !dbg !5223
  br label %do.body51, !dbg !5224

do.body51:                                        ; preds = %commit
  br label %do.body52, !dbg !5225

do.body52:                                        ; preds = %do.body51
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy53) #12, !dbg !5226
  call void @llvm.dbg.declare(metadata ptr %__dummy53, metadata !5122, metadata !DIExpression()), !dbg !5226
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy254) #12, !dbg !5226
  call void @llvm.dbg.declare(metadata ptr %__dummy254, metadata !5126, metadata !DIExpression()), !dbg !5226
  %cmp55 = icmp eq ptr %__dummy53, %__dummy254, !dbg !5226
  %conv56 = zext i1 %cmp55 to i32, !dbg !5226
  store i32 1, ptr %tmp57, align 4, !dbg !5226
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy254) #12, !dbg !5227
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy53) #12, !dbg !5227
  %14 = load i32, ptr %tmp57, align 4, !dbg !5226
  %call58 = call ptr @spinlock_check(ptr noundef @amd_lock) #13, !dbg !5227
  %call59 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call58) #13, !dbg !5227
  store i64 %call59, ptr %flags, align 8, !dbg !5227
  br label %do.cond60, !dbg !5227

do.cond60:                                        ; preds = %do.body52
  br label %do.end61, !dbg !5227

do.end61:                                         ; preds = %do.cond60
  br label %do.cond62, !dbg !5225

do.cond62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !5225

do.end63:                                         ; preds = %do.cond62
  %15 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 8, !dbg !5228
  %cmp64 = icmp sgt i32 %15, 0, !dbg !5230
  br i1 %cmp64, label %if.then66, label %if.else70, !dbg !5231

if.then66:                                        ; preds = %do.end63
  %16 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 8, !dbg !5232
  %inc67 = add i32 %16, 1, !dbg !5232
  store i32 %inc67, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 8, !dbg !5232
  %17 = load i64, ptr %flags, align 8, !dbg !5234
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %17) #13, !dbg !5235
  %nb_dev68 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 0, !dbg !5236
  %18 = load ptr, ptr %nb_dev68, align 8, !dbg !5236
  call void @pci_dev_put(ptr noundef %18) #13, !dbg !5237
  %smbus_dev69 = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 1, !dbg !5238
  %19 = load ptr, ptr %smbus_dev69, align 8, !dbg !5238
  call void @pci_dev_put(ptr noundef %19) #13, !dbg !5239
  br label %if.end72, !dbg !5240

if.else70:                                        ; preds = %do.end63
  %probe_count = getelementptr inbounds %struct.amd_chipset_info, ptr %info, i32 0, i32 5, !dbg !5241
  %20 = load i32, ptr %probe_count, align 8, !dbg !5243
  %inc71 = add i32 %20, 1, !dbg !5243
  store i32 %inc71, ptr %probe_count, align 8, !dbg !5243
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @amd_chipset, ptr align 8 %info, i64 40, i1 false), !dbg !5244
  %21 = load i64, ptr %flags, align 8, !dbg !5245
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %21) #13, !dbg !5246
  br label %if.end72

if.end72:                                         ; preds = %if.else70, %if.then66
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5247
  br label %cleanup, !dbg !5247

cleanup:                                          ; preds = %if.end72, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %info) #12, !dbg !5247
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !5247
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5247

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @usb_amd_hang_symptom_quirk() #0 align 16 !dbg !5248 {
entry:
  %rev = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %rev) #12, !dbg !5251
  call void @llvm.dbg.declare(metadata ptr %rev, metadata !5250, metadata !DIExpression()), !dbg !5252
  call void @usb_amd_find_chipset_info() #13, !dbg !5253
  %0 = load i8, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3, i32 1), align 4, !dbg !5254
  store i8 %0, ptr %rev, align 1, !dbg !5255
  %1 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4, !dbg !5256
  %cmp = icmp eq i32 %1, 1, !dbg !5257
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5258

lor.rhs:                                          ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4, !dbg !5259
  %cmp1 = icmp eq i32 %2, 2, !dbg !5260
  br i1 %cmp1, label %land.lhs.true, label %land.end, !dbg !5261

land.lhs.true:                                    ; preds = %lor.rhs
  %3 = load i8, ptr %rev, align 1, !dbg !5262
  %conv = zext i8 %3 to i32, !dbg !5262
  %cmp2 = icmp sge i32 %conv, 58, !dbg !5263
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !5264

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i8, ptr %rev, align 1, !dbg !5265
  %conv4 = zext i8 %4 to i32, !dbg !5265
  %cmp5 = icmp sle i32 %conv4, 59, !dbg !5266
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp5, %land.rhs ], !dbg !5267
  br label %lor.end, !dbg !5258

lor.end:                                          ; preds = %land.end, %entry
  %6 = phi i1 [ true, %entry ], [ %5, %land.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr %rev) #12, !dbg !5268
  ret i1 %6, !dbg !5269
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @usb_amd_prefetch_quirk() #0 align 16 !dbg !5270 {
entry:
  call void @usb_amd_find_chipset_info() #13, !dbg !5271
  %0 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4, !dbg !5272
  %cmp = icmp eq i32 %0, 3, !dbg !5273
  ret i1 %cmp, !dbg !5274
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @usb_amd_quirk_pll_check() #0 align 16 !dbg !5275 {
entry:
  call void @usb_amd_find_chipset_info() #13, !dbg !5276
  %0 = load i8, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 6), align 4, !dbg !5277, !range !5170, !noundef !966
  %tobool = trunc i8 %0 to i1, !dbg !5277
  ret i1 %tobool, !dbg !5278
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_amd_quirk_pll_disable() #0 align 16 !dbg !5279 {
entry:
  call void @usb_amd_quirk_pll(i32 noundef 1) #13, !dbg !5280
  ret void, !dbg !5281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_amd_quirk_pll(i32 noundef %disable) #0 align 16 !dbg !5282 {
entry:
  %disable.addr = alloca i32, align 4
  %addr = alloca i32, align 4
  %addr_low = alloca i32, align 4
  %addr_high = alloca i32, align 4
  %val = alloca i32, align 4
  %bit = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %disable, ptr %disable.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %disable.addr, metadata !5284, metadata !DIExpression()), !dbg !5296
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr) #12, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5285, metadata !DIExpression()), !dbg !5298
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr_low) #12, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %addr_low, metadata !5286, metadata !DIExpression()), !dbg !5299
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr_high) #12, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %addr_high, metadata !5287, metadata !DIExpression()), !dbg !5300
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #12, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5288, metadata !DIExpression()), !dbg !5301
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #12, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !5289, metadata !DIExpression()), !dbg !5303
  %0 = load i32, ptr %disable.addr, align 4, !dbg !5304
  %tobool = icmp ne i32 %0, 0, !dbg !5304
  %1 = zext i1 %tobool to i64, !dbg !5304
  %cond = select i1 %tobool, i32 0, i32 1, !dbg !5304
  store i32 %cond, ptr %bit, align 4, !dbg !5303
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !5305
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5290, metadata !DIExpression()), !dbg !5306
  br label %do.body, !dbg !5307

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5308

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !5309
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5291, metadata !DIExpression()), !dbg !5309
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !5309
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5295, metadata !DIExpression()), !dbg !5309
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5309
  %conv = zext i1 %cmp to i32, !dbg !5309
  store i32 1, ptr %tmp, align 4, !dbg !5309
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !5310
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !5310
  %2 = load i32, ptr %tmp, align 4, !dbg !5309
  %call = call ptr @spinlock_check(ptr noundef @amd_lock) #13, !dbg !5310
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #13, !dbg !5310
  store i64 %call2, ptr %flags, align 8, !dbg !5310
  br label %do.cond, !dbg !5310

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5310

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5308

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5308

do.end4:                                          ; preds = %do.cond3
  %3 = load i32, ptr %disable.addr, align 4, !dbg !5311
  %tobool5 = icmp ne i32 %3, 0, !dbg !5311
  br i1 %tobool5, label %if.then, label %if.else, !dbg !5313

if.then:                                          ; preds = %do.end4
  %4 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 4), align 4, !dbg !5314
  %inc = add i32 %4, 1, !dbg !5314
  store i32 %inc, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 4), align 4, !dbg !5314
  %5 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 4), align 4, !dbg !5316
  %cmp6 = icmp sgt i32 %5, 1, !dbg !5318
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !5319

if.then8:                                         ; preds = %if.then
  %6 = load i64, ptr %flags, align 8, !dbg !5320
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %6) #13, !dbg !5322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5323

if.end:                                           ; preds = %if.then
  br label %if.end13, !dbg !5324

if.else:                                          ; preds = %do.end4
  %7 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 4), align 4, !dbg !5325
  %dec = add i32 %7, -1, !dbg !5325
  store i32 %dec, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 4), align 4, !dbg !5325
  %8 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 4), align 4, !dbg !5327
  %cmp9 = icmp sgt i32 %8, 0, !dbg !5329
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5330

if.then11:                                        ; preds = %if.else
  %9 = load i64, ptr %flags, align 8, !dbg !5331
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %9) #13, !dbg !5333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5334

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %10 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4, !dbg !5335
  %cmp14 = icmp eq i32 %10, 3, !dbg !5337
  br i1 %cmp14, label %if.then21, label %lor.lhs.false, !dbg !5338

lor.lhs.false:                                    ; preds = %if.end13
  %11 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4, !dbg !5339
  %cmp16 = icmp eq i32 %11, 4, !dbg !5340
  br i1 %cmp16, label %if.then21, label %lor.lhs.false18, !dbg !5341

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %12 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4, !dbg !5342
  %cmp19 = icmp eq i32 %12, 5, !dbg !5343
  br i1 %cmp19, label %if.then21, label %if.else34, !dbg !5344

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false, %if.end13
  call void @outb_p(i8 noundef zeroext -32, i16 noundef zeroext 3286) #13, !dbg !5345
  %call22 = call zeroext i8 @inb_p(i16 noundef zeroext 3287) #13, !dbg !5347
  %conv23 = zext i8 %call22 to i32, !dbg !5347
  store i32 %conv23, ptr %addr_low, align 4, !dbg !5348
  call void @outb_p(i8 noundef zeroext -31, i16 noundef zeroext 3286) #13, !dbg !5349
  %call24 = call zeroext i8 @inb_p(i16 noundef zeroext 3287) #13, !dbg !5350
  %conv25 = zext i8 %call24 to i32, !dbg !5350
  store i32 %conv25, ptr %addr_high, align 4, !dbg !5351
  %13 = load i32, ptr %addr_high, align 4, !dbg !5352
  %shl = shl i32 %13, 8, !dbg !5353
  %14 = load i32, ptr %addr_low, align 4, !dbg !5354
  %or = or i32 %shl, %14, !dbg !5355
  store i32 %or, ptr %addr, align 4, !dbg !5356
  %15 = load i32, ptr %addr, align 4, !dbg !5357
  %add = add i32 %15, 0, !dbg !5357
  %conv26 = trunc i32 %add to i16, !dbg !5357
  call void @outl_p(i32 noundef 48, i16 noundef zeroext %conv26) #13, !dbg !5358
  %16 = load i32, ptr %addr, align 4, !dbg !5359
  %add27 = add i32 %16, 4, !dbg !5359
  %conv28 = trunc i32 %add27 to i16, !dbg !5359
  call void @outl_p(i32 noundef 64, i16 noundef zeroext %conv28) #13, !dbg !5360
  %17 = load i32, ptr %addr, align 4, !dbg !5361
  %add29 = add i32 %17, 0, !dbg !5361
  %conv30 = trunc i32 %add29 to i16, !dbg !5361
  call void @outl_p(i32 noundef 52, i16 noundef zeroext %conv30) #13, !dbg !5362
  %18 = load i32, ptr %addr, align 4, !dbg !5363
  %add31 = add i32 %18, 4, !dbg !5363
  %conv32 = trunc i32 %add31 to i16, !dbg !5363
  %call33 = call i32 @inl_p(i16 noundef zeroext %conv32) #13, !dbg !5364
  store i32 %call33, ptr %val, align 4, !dbg !5365
  br label %if.end53, !dbg !5366

if.else34:                                        ; preds = %lor.lhs.false18
  %19 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4, !dbg !5367
  %cmp35 = icmp eq i32 %19, 2, !dbg !5369
  br i1 %cmp35, label %land.lhs.true, label %if.else51, !dbg !5370

land.lhs.true:                                    ; preds = %if.else34
  %20 = load i8, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3, i32 1), align 4, !dbg !5371
  %conv37 = zext i8 %20 to i32, !dbg !5372
  %cmp38 = icmp sle i32 %conv37, 59, !dbg !5373
  br i1 %cmp38, label %if.then40, label %if.else51, !dbg !5374

if.then40:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 1), align 8, !dbg !5375
  %call41 = call i32 @pci_read_config_dword(ptr noundef %21, i32 noundef 240, ptr noundef %addr) #13, !dbg !5377
  %22 = load i32, ptr %addr, align 4, !dbg !5378
  %add42 = add i32 %22, 0, !dbg !5378
  %conv43 = trunc i32 %add42 to i16, !dbg !5378
  call void @__outl(i32 noundef 48, i16 noundef zeroext %conv43) #13, !dbg !5379
  %23 = load i32, ptr %addr, align 4, !dbg !5380
  %add44 = add i32 %23, 4, !dbg !5380
  %conv45 = trunc i32 %add44 to i16, !dbg !5380
  call void @__outl(i32 noundef 64, i16 noundef zeroext %conv45) #13, !dbg !5381
  %24 = load i32, ptr %addr, align 4, !dbg !5382
  %add46 = add i32 %24, 0, !dbg !5382
  %conv47 = trunc i32 %add46 to i16, !dbg !5382
  call void @__outl(i32 noundef 52, i16 noundef zeroext %conv47) #13, !dbg !5383
  %25 = load i32, ptr %addr, align 4, !dbg !5384
  %add48 = add i32 %25, 4, !dbg !5384
  %conv49 = trunc i32 %add48 to i16, !dbg !5384
  %call50 = call i32 @__inl(i16 noundef zeroext %conv49) #13, !dbg !5385
  store i32 %call50, ptr %val, align 4, !dbg !5386
  br label %if.end52, !dbg !5387

if.else51:                                        ; preds = %land.lhs.true, %if.else34
  %26 = load i64, ptr %flags, align 8, !dbg !5388
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %26) #13, !dbg !5390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5391

if.end52:                                         ; preds = %if.then40
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then21
  %27 = load i32, ptr %disable.addr, align 4, !dbg !5392
  %tobool54 = icmp ne i32 %27, 0, !dbg !5392
  br i1 %tobool54, label %if.then55, label %if.else57, !dbg !5394

if.then55:                                        ; preds = %if.end53
  %28 = load i32, ptr %val, align 4, !dbg !5395
  %and = and i32 %28, -9, !dbg !5395
  store i32 %and, ptr %val, align 4, !dbg !5395
  %29 = load i32, ptr %val, align 4, !dbg !5397
  %or56 = or i32 %29, 528, !dbg !5397
  store i32 %or56, ptr %val, align 4, !dbg !5397
  br label %if.end60, !dbg !5398

if.else57:                                        ; preds = %if.end53
  %30 = load i32, ptr %val, align 4, !dbg !5399
  %or58 = or i32 %30, 8, !dbg !5399
  store i32 %or58, ptr %val, align 4, !dbg !5399
  %31 = load i32, ptr %val, align 4, !dbg !5401
  %and59 = and i32 %31, -529, !dbg !5401
  store i32 %and59, ptr %val, align 4, !dbg !5401
  br label %if.end60

if.end60:                                         ; preds = %if.else57, %if.then55
  %32 = load i32, ptr %val, align 4, !dbg !5402
  %33 = load i32, ptr %addr, align 4, !dbg !5403
  %add61 = add i32 %33, 4, !dbg !5403
  %conv62 = trunc i32 %add61 to i16, !dbg !5403
  call void @outl_p(i32 noundef %32, i16 noundef zeroext %conv62) #13, !dbg !5404
  %34 = load ptr, ptr @amd_chipset, align 8, !dbg !5405
  %tobool63 = icmp ne ptr %34, null, !dbg !5407
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !5408

if.then64:                                        ; preds = %if.end60
  %35 = load i64, ptr %flags, align 8, !dbg !5409
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %35) #13, !dbg !5411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5412

if.end65:                                         ; preds = %if.end60
  %36 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 2), align 8, !dbg !5413
  %cmp66 = icmp eq i32 %36, 1, !dbg !5415
  br i1 %cmp66, label %if.then71, label %lor.lhs.false68, !dbg !5416

lor.lhs.false68:                                  ; preds = %if.end65
  %37 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 2), align 8, !dbg !5417
  %cmp69 = icmp eq i32 %37, 3, !dbg !5418
  br i1 %cmp69, label %if.then71, label %if.else95, !dbg !5419

if.then71:                                        ; preds = %lor.lhs.false68, %if.end65
  store i32 65600, ptr %addr, align 4, !dbg !5420
  %38 = load ptr, ptr @amd_chipset, align 8, !dbg !5422
  %39 = load i32, ptr %addr, align 4, !dbg !5423
  %call72 = call i32 @pci_write_config_dword(ptr noundef %38, i32 noundef 224, i32 noundef %39) #13, !dbg !5424
  %40 = load ptr, ptr @amd_chipset, align 8, !dbg !5425
  %call73 = call i32 @pci_read_config_dword(ptr noundef %40, i32 noundef 228, ptr noundef %val) #13, !dbg !5426
  %41 = load i32, ptr %val, align 4, !dbg !5427
  %and74 = and i32 %41, -4634, !dbg !5427
  store i32 %and74, ptr %val, align 4, !dbg !5427
  %42 = load i32, ptr %bit, align 4, !dbg !5428
  %43 = load i32, ptr %bit, align 4, !dbg !5429
  %shl75 = shl i32 %43, 3, !dbg !5430
  %or76 = or i32 %42, %shl75, !dbg !5431
  %44 = load i32, ptr %bit, align 4, !dbg !5432
  %shl77 = shl i32 %44, 12, !dbg !5433
  %or78 = or i32 %or76, %shl77, !dbg !5434
  %45 = load i32, ptr %val, align 4, !dbg !5435
  %or79 = or i32 %45, %or78, !dbg !5435
  store i32 %or79, ptr %val, align 4, !dbg !5435
  %46 = load i32, ptr %bit, align 4, !dbg !5436
  %tobool80 = icmp ne i32 %46, 0, !dbg !5437
  %lnot = xor i1 %tobool80, true, !dbg !5437
  %lnot.ext = zext i1 %lnot to i32, !dbg !5437
  %shl81 = shl i32 %lnot.ext, 4, !dbg !5438
  %47 = load i32, ptr %bit, align 4, !dbg !5439
  %tobool82 = icmp ne i32 %47, 0, !dbg !5440
  %lnot83 = xor i1 %tobool82, true, !dbg !5440
  %lnot.ext84 = zext i1 %lnot83 to i32, !dbg !5440
  %shl85 = shl i32 %lnot.ext84, 9, !dbg !5441
  %or86 = or i32 %shl81, %shl85, !dbg !5442
  %48 = load i32, ptr %val, align 4, !dbg !5443
  %or87 = or i32 %48, %or86, !dbg !5443
  store i32 %or87, ptr %val, align 4, !dbg !5443
  %49 = load ptr, ptr @amd_chipset, align 8, !dbg !5444
  %50 = load i32, ptr %val, align 4, !dbg !5445
  %call88 = call i32 @pci_write_config_dword(ptr noundef %49, i32 noundef 228, i32 noundef %50) #13, !dbg !5446
  store i32 65538, ptr %addr, align 4, !dbg !5447
  %51 = load ptr, ptr @amd_chipset, align 8, !dbg !5448
  %52 = load i32, ptr %addr, align 4, !dbg !5449
  %call89 = call i32 @pci_write_config_dword(ptr noundef %51, i32 noundef 224, i32 noundef %52) #13, !dbg !5450
  %53 = load ptr, ptr @amd_chipset, align 8, !dbg !5451
  %call90 = call i32 @pci_read_config_dword(ptr noundef %53, i32 noundef 228, ptr noundef %val) #13, !dbg !5452
  %54 = load i32, ptr %val, align 4, !dbg !5453
  %and91 = and i32 %54, -257, !dbg !5453
  store i32 %and91, ptr %val, align 4, !dbg !5453
  %55 = load i32, ptr %bit, align 4, !dbg !5454
  %shl92 = shl i32 %55, 8, !dbg !5455
  %56 = load i32, ptr %val, align 4, !dbg !5456
  %or93 = or i32 %56, %shl92, !dbg !5456
  store i32 %or93, ptr %val, align 4, !dbg !5456
  %57 = load ptr, ptr @amd_chipset, align 8, !dbg !5457
  %58 = load i32, ptr %val, align 4, !dbg !5458
  %call94 = call i32 @pci_write_config_dword(ptr noundef %57, i32 noundef 228, i32 noundef %58) #13, !dbg !5459
  br label %if.end118, !dbg !5460

if.else95:                                        ; preds = %lor.lhs.false68
  %59 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 2), align 8, !dbg !5461
  %cmp96 = icmp eq i32 %59, 2, !dbg !5463
  br i1 %cmp96, label %if.then98, label %if.end117, !dbg !5464

if.then98:                                        ; preds = %if.else95
  store i32 17825810, ptr %addr, align 4, !dbg !5465
  %60 = load ptr, ptr @amd_chipset, align 8, !dbg !5467
  %61 = load i32, ptr %addr, align 4, !dbg !5468
  %call99 = call i32 @pci_write_config_dword(ptr noundef %60, i32 noundef 224, i32 noundef %61) #13, !dbg !5469
  %62 = load ptr, ptr @amd_chipset, align 8, !dbg !5470
  %call100 = call i32 @pci_read_config_dword(ptr noundef %62, i32 noundef 228, ptr noundef %val) #13, !dbg !5471
  %63 = load i32, ptr %disable.addr, align 4, !dbg !5472
  %tobool101 = icmp ne i32 %63, 0, !dbg !5472
  br i1 %tobool101, label %if.then102, label %if.else104, !dbg !5474

if.then102:                                       ; preds = %if.then98
  %64 = load i32, ptr %val, align 4, !dbg !5475
  %and103 = and i32 %64, -8065, !dbg !5475
  store i32 %and103, ptr %val, align 4, !dbg !5475
  br label %if.end106, !dbg !5476

if.else104:                                       ; preds = %if.then98
  %65 = load i32, ptr %val, align 4, !dbg !5477
  %or105 = or i32 %65, 8064, !dbg !5477
  store i32 %or105, ptr %val, align 4, !dbg !5477
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %if.then102
  %66 = load ptr, ptr @amd_chipset, align 8, !dbg !5478
  %67 = load i32, ptr %val, align 4, !dbg !5479
  %call107 = call i32 @pci_write_config_dword(ptr noundef %66, i32 noundef 228, i32 noundef %67) #13, !dbg !5480
  store i32 17825811, ptr %addr, align 4, !dbg !5481
  %68 = load ptr, ptr @amd_chipset, align 8, !dbg !5482
  %69 = load i32, ptr %addr, align 4, !dbg !5483
  %call108 = call i32 @pci_write_config_dword(ptr noundef %68, i32 noundef 224, i32 noundef %69) #13, !dbg !5484
  %70 = load ptr, ptr @amd_chipset, align 8, !dbg !5485
  %call109 = call i32 @pci_read_config_dword(ptr noundef %70, i32 noundef 228, ptr noundef %val) #13, !dbg !5486
  %71 = load i32, ptr %disable.addr, align 4, !dbg !5487
  %tobool110 = icmp ne i32 %71, 0, !dbg !5487
  br i1 %tobool110, label %if.then111, label %if.else113, !dbg !5489

if.then111:                                       ; preds = %if.end106
  %72 = load i32, ptr %val, align 4, !dbg !5490
  %and112 = and i32 %72, -8065, !dbg !5490
  store i32 %and112, ptr %val, align 4, !dbg !5490
  br label %if.end115, !dbg !5491

if.else113:                                       ; preds = %if.end106
  %73 = load i32, ptr %val, align 4, !dbg !5492
  %or114 = or i32 %73, 8064, !dbg !5492
  store i32 %or114, ptr %val, align 4, !dbg !5492
  br label %if.end115

if.end115:                                        ; preds = %if.else113, %if.then111
  %74 = load ptr, ptr @amd_chipset, align 8, !dbg !5493
  %75 = load i32, ptr %val, align 4, !dbg !5494
  %call116 = call i32 @pci_write_config_dword(ptr noundef %74, i32 noundef 228, i32 noundef %75) #13, !dbg !5495
  br label %if.end117, !dbg !5496

if.end117:                                        ; preds = %if.end115, %if.else95
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then71
  %76 = load i64, ptr %flags, align 8, !dbg !5497
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %76) #13, !dbg !5498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5499

cleanup:                                          ; preds = %if.end118, %if.then64, %if.else51, %if.then11, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !5500
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #12, !dbg !5500
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #12, !dbg !5500
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr_high) #12, !dbg !5500
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr_low) #12, !dbg !5500
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr) #12, !dbg !5500
  ret void, !dbg !5500
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_asmedia_modifyflowcontrol(ptr noundef %pdev) #0 align 16 !dbg !5501 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5505
  %call = call i32 @usb_asmedia_wait_write(ptr noundef %0) #13, !dbg !5507
  %cmp = icmp ne i32 %call, 0, !dbg !5508
  br i1 %cmp, label %if.then, label %if.end, !dbg !5509

if.then:                                          ; preds = %entry
  br label %return, !dbg !5510

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5511
  %call1 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 248, i32 noundef 66595) #13, !dbg !5512
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5513
  %call2 = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 252, i32 noundef 64048) #13, !dbg !5514
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5515
  %call3 = call i32 @pci_write_config_byte(ptr noundef %3, i32 noundef 224, i8 noundef zeroext 2) #13, !dbg !5516
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !5517
  %call4 = call i32 @usb_asmedia_wait_write(ptr noundef %4) #13, !dbg !5519
  %cmp5 = icmp ne i32 %call4, 0, !dbg !5520
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5521

if.then6:                                         ; preds = %if.end
  br label %return, !dbg !5522

if.end7:                                          ; preds = %if.end
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5523
  %call8 = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 248, i32 noundef 186) #13, !dbg !5524
  %6 = load ptr, ptr %pdev.addr, align 8, !dbg !5525
  %call9 = call i32 @pci_write_config_dword(ptr noundef %6, i32 noundef 252, i32 noundef 0) #13, !dbg !5526
  %7 = load ptr, ptr %pdev.addr, align 8, !dbg !5527
  %call10 = call i32 @pci_write_config_byte(ptr noundef %7, i32 noundef 224, i8 noundef zeroext 2) #13, !dbg !5528
  br label %return, !dbg !5529

return:                                           ; preds = %if.end7, %if.then6, %if.then
  ret void, !dbg !5529
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @usb_asmedia_wait_write(ptr noundef %pdev) #0 align 16 !dbg !5530 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %retry_count = alloca i64, align 8
  %value = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5532, metadata !DIExpression()), !dbg !5535
  call void @llvm.lifetime.start.p0(i64 8, ptr %retry_count) #12, !dbg !5536
  call void @llvm.dbg.declare(metadata ptr %retry_count, metadata !5533, metadata !DIExpression()), !dbg !5537
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #12, !dbg !5538
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5534, metadata !DIExpression()), !dbg !5539
  store i64 1000, ptr %retry_count, align 8, !dbg !5540
  br label %for.cond, !dbg !5542

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %retry_count, align 8, !dbg !5543
  %cmp = icmp ugt i64 %0, 0, !dbg !5545
  br i1 %cmp, label %for.body, label %for.end, !dbg !5546

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5547
  %call = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef 224, ptr noundef %value) #13, !dbg !5549
  %2 = load i8, ptr %value, align 1, !dbg !5550
  %conv = zext i8 %2 to i32, !dbg !5550
  %cmp1 = icmp eq i32 %conv, 255, !dbg !5552
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5553

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !5554

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5557

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5557

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5554
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5554
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.2, ptr noundef @__func__.usb_asmedia_wait_write) #14, !dbg !5554
  store i32 -5, ptr %retval, align 4, !dbg !5559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5559

if.end:                                           ; preds = %for.body
  %4 = load i8, ptr %value, align 1, !dbg !5560
  %conv3 = zext i8 %4 to i32, !dbg !5560
  %and = and i32 %conv3, 2, !dbg !5562
  %cmp4 = icmp eq i32 %and, 0, !dbg !5563
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !5564

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5565

if.end7:                                          ; preds = %if.end
  call void @__const_udelay(i64 noundef 214750) #13, !dbg !5566
  br label %for.inc, !dbg !5571

for.inc:                                          ; preds = %if.end7
  %5 = load i64, ptr %retry_count, align 8, !dbg !5572
  %dec = add i64 %5, -1, !dbg !5572
  store i64 %dec, ptr %retry_count, align 8, !dbg !5572
  br label %for.cond, !dbg !5573, !llvm.loop !5574

for.end:                                          ; preds = %for.cond
  br label %do.body8, !dbg !5578

do.body8:                                         ; preds = %for.end
  br label %do.cond9, !dbg !5580

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5580

do.end10:                                         ; preds = %do.cond9
  %6 = load ptr, ptr %pdev.addr, align 8, !dbg !5578
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 37, !dbg !5578
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef @.str.3, ptr noundef @__func__.usb_asmedia_wait_write) #14, !dbg !5578
  store i32 -110, ptr %retval, align 4, !dbg !5582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5582

cleanup:                                          ; preds = %do.end10, %if.then6, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #12, !dbg !5583
  call void @llvm.lifetime.end.p0(i64 8, ptr %retry_count) #12, !dbg !5583
  %7 = load i32, ptr %retval, align 4, !dbg !5583
  ret i32 %7, !dbg !5583
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5584 dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5587 dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_amd_quirk_pll_enable() #0 align 16 !dbg !5590 {
entry:
  call void @usb_amd_quirk_pll(i32 noundef 0) #13, !dbg !5591
  ret void, !dbg !5592
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_amd_dev_put() #0 align 16 !dbg !5593 {
entry:
  %nb = alloca ptr, align 8
  %smbus = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nb) #12, !dbg !5603
  call void @llvm.dbg.declare(metadata ptr %nb, metadata !5595, metadata !DIExpression()), !dbg !5604
  call void @llvm.lifetime.start.p0(i64 8, ptr %smbus) #12, !dbg !5603
  call void @llvm.dbg.declare(metadata ptr %smbus, metadata !5596, metadata !DIExpression()), !dbg !5605
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !5606
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5597, metadata !DIExpression()), !dbg !5607
  br label %do.body, !dbg !5608

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5609

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !5610
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5598, metadata !DIExpression()), !dbg !5610
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !5610
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5602, metadata !DIExpression()), !dbg !5610
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5610
  %conv = zext i1 %cmp to i32, !dbg !5610
  store i32 1, ptr %tmp, align 4, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !5611
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !5611
  %0 = load i32, ptr %tmp, align 4, !dbg !5610
  %call = call ptr @spinlock_check(ptr noundef @amd_lock) #13, !dbg !5611
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #13, !dbg !5611
  store i64 %call2, ptr %flags, align 8, !dbg !5611
  br label %do.cond, !dbg !5611

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5611

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5609

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5609

do.end4:                                          ; preds = %do.cond3
  %1 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 8, !dbg !5612
  %dec = add i32 %1, -1, !dbg !5612
  store i32 %dec, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 8, !dbg !5612
  %2 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 8, !dbg !5613
  %cmp5 = icmp sgt i32 %2, 0, !dbg !5615
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5616

if.then:                                          ; preds = %do.end4
  %3 = load i64, ptr %flags, align 8, !dbg !5617
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %3) #13, !dbg !5619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5620

if.end:                                           ; preds = %do.end4
  %4 = load ptr, ptr @amd_chipset, align 8, !dbg !5621
  store ptr %4, ptr %nb, align 8, !dbg !5622
  %5 = load ptr, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 1), align 8, !dbg !5623
  store ptr %5, ptr %smbus, align 8, !dbg !5624
  store ptr null, ptr @amd_chipset, align 8, !dbg !5625
  store ptr null, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 1), align 8, !dbg !5626
  store i32 0, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 2), align 8, !dbg !5627
  call void @llvm.memset.p0.i64(ptr align 4 getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), i8 0, i64 8, i1 false), !dbg !5628
  store i32 0, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 4), align 4, !dbg !5629
  store i8 0, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 6), align 4, !dbg !5630
  %6 = load i64, ptr %flags, align 8, !dbg !5631
  call void @spin_unlock_irqrestore(ptr noundef @amd_lock, i64 noundef %6) #13, !dbg !5632
  %7 = load ptr, ptr %nb, align 8, !dbg !5633
  call void @pci_dev_put(ptr noundef %7) #13, !dbg !5634
  %8 = load ptr, ptr %smbus, align 8, !dbg !5635
  call void @pci_dev_put(ptr noundef %8) #13, !dbg !5636
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5637
  br label %cleanup, !dbg !5637

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !5637
  call void @llvm.lifetime.end.p0(i64 8, ptr %smbus) #12, !dbg !5637
  call void @llvm.lifetime.end.p0(i64 8, ptr %nb) #12, !dbg !5637
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5637

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5638 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !5643 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5648, metadata !DIExpression()), !dbg !5649
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5650
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5651
  ret ptr %1, !dbg !5652
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !5653 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5657, metadata !DIExpression()), !dbg !5663
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5658, metadata !DIExpression()), !dbg !5664
  br label %do.body, !dbg !5665

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5659, metadata !DIExpression()), !dbg !5666
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5662, metadata !DIExpression()), !dbg !5666
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5666
  %conv = zext i1 %cmp to i32, !dbg !5666
  store i32 1, ptr %tmp, align 4, !dbg !5666
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !5667
  %0 = load i32, ptr %tmp, align 4, !dbg !5666
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5667
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5667
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5667
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #13, !dbg !5667
  br label %do.end, !dbg !5667

do.end:                                           ; preds = %do.body
  ret void, !dbg !5668
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5669 dso_local void @pci_dev_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @usb_amd_pt_check_port(ptr noundef %device, i32 noundef %port) #0 align 16 !dbg !5670 {
entry:
  %retval = alloca i1, align 1
  %device.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  %port_shift = alloca i8, align 1
  %pdev = alloca ptr, align 8
  %reg = alloca i16, align 2
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5674, metadata !DIExpression()), !dbg !5682
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5675, metadata !DIExpression()), !dbg !5683
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #12, !dbg !5684
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5676, metadata !DIExpression()), !dbg !5685
  call void @llvm.lifetime.start.p0(i64 1, ptr %port_shift) #12, !dbg !5684
  call void @llvm.dbg.declare(metadata ptr %port_shift, metadata !5677, metadata !DIExpression()), !dbg !5686
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #12, !dbg !5687
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !5678, metadata !DIExpression()), !dbg !5688
  call void @llvm.lifetime.start.p0(i64 2, ptr %reg) #12, !dbg !5689
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !5679, metadata !DIExpression()), !dbg !5690
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !5691
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5680, metadata !DIExpression()), !dbg !5691
  %0 = load ptr, ptr %device.addr, align 8, !dbg !5691
  store ptr %0, ptr %__mptr, align 8, !dbg !5691
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5691
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !5691
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5691
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !5692
  %2 = load ptr, ptr %tmp, align 8, !dbg !5691
  store ptr %2, ptr %pdev, align 8, !dbg !5693
  %3 = load ptr, ptr %pdev, align 8, !dbg !5694
  %call = call i32 @pci_write_config_word(ptr noundef %3, i32 noundef 232, i16 noundef zeroext -23264) #13, !dbg !5695
  %4 = load ptr, ptr %pdev, align 8, !dbg !5696
  %call1 = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef 228, ptr noundef %value) #13, !dbg !5697
  %5 = load i8, ptr %value, align 1, !dbg !5698
  %conv = zext i8 %5 to i32, !dbg !5698
  %cmp = icmp ne i32 %conv, 120, !dbg !5700
  br i1 %cmp, label %if.then, label %if.end, !dbg !5701

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5702
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5702

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pdev, align 8, !dbg !5703
  %call3 = call i32 @pci_write_config_word(ptr noundef %6, i32 noundef 232, i16 noundef zeroext -23263) #13, !dbg !5704
  %7 = load ptr, ptr %pdev, align 8, !dbg !5705
  %call4 = call i32 @pci_read_config_byte(ptr noundef %7, i32 noundef 228, ptr noundef %value) #13, !dbg !5706
  %8 = load i8, ptr %value, align 1, !dbg !5707
  %conv5 = zext i8 %8 to i32, !dbg !5707
  %cmp6 = icmp ne i32 %conv5, 86, !dbg !5709
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5710

if.then8:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5711

if.end9:                                          ; preds = %if.end
  %9 = load ptr, ptr %pdev, align 8, !dbg !5712
  %call10 = call i32 @pci_write_config_word(ptr noundef %9, i32 noundef 232, i16 noundef zeroext -23262) #13, !dbg !5713
  %10 = load ptr, ptr %pdev, align 8, !dbg !5714
  %call11 = call i32 @pci_read_config_byte(ptr noundef %10, i32 noundef 228, ptr noundef %value) #13, !dbg !5715
  %11 = load i8, ptr %value, align 1, !dbg !5716
  %conv12 = zext i8 %11 to i32, !dbg !5716
  %cmp13 = icmp ne i32 %conv12, 52, !dbg !5718
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5719

if.then15:                                        ; preds = %if.end9
  store i1 false, ptr %retval, align 1, !dbg !5720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5720

if.end16:                                         ; preds = %if.end9
  %12 = load ptr, ptr %pdev, align 8, !dbg !5721
  %call17 = call i32 @pci_write_config_word(ptr noundef %12, i32 noundef 232, i16 noundef zeroext -23261) #13, !dbg !5722
  %13 = load ptr, ptr %pdev, align 8, !dbg !5723
  %call18 = call i32 @pci_read_config_byte(ptr noundef %13, i32 noundef 228, ptr noundef %value) #13, !dbg !5724
  %14 = load i8, ptr %value, align 1, !dbg !5725
  %conv19 = zext i8 %14 to i32, !dbg !5725
  %cmp20 = icmp ne i32 %conv19, 18, !dbg !5727
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5728

if.then22:                                        ; preds = %if.end16
  store i1 false, ptr %retval, align 1, !dbg !5729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5729

if.end23:                                         ; preds = %if.end16
  %15 = load ptr, ptr %pdev, align 8, !dbg !5730
  %device24 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 8, !dbg !5731
  %16 = load i16, ptr %device24, align 2, !dbg !5731
  %conv25 = zext i16 %16 to i32, !dbg !5730
  switch i32 %conv25, label %sw.default [
    i32 17337, label %sw.bb
    i32 17338, label %sw.bb
    i32 17339, label %sw.bb32
    i32 17340, label %sw.bb42
  ], !dbg !5732

sw.bb:                                            ; preds = %if.end23, %if.end23
  %17 = load i32, ptr %port.addr, align 4, !dbg !5733
  %cmp26 = icmp sgt i32 %17, 6, !dbg !5736
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !5737

if.then28:                                        ; preds = %sw.bb
  store i16 -19166, ptr %reg, align 2, !dbg !5738
  %18 = load i32, ptr %port.addr, align 4, !dbg !5740
  %sub = sub i32 %18, 7, !dbg !5741
  %conv29 = trunc i32 %sub to i8, !dbg !5740
  store i8 %conv29, ptr %port_shift, align 1, !dbg !5742
  br label %if.end31, !dbg !5743

if.else:                                          ; preds = %sw.bb
  store i16 -19167, ptr %reg, align 2, !dbg !5744
  %19 = load i32, ptr %port.addr, align 4, !dbg !5746
  %add = add i32 %19, 1, !dbg !5747
  %conv30 = trunc i32 %add to i8, !dbg !5746
  store i8 %conv30, ptr %port_shift, align 1, !dbg !5748
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  br label %sw.epilog, !dbg !5749

sw.bb32:                                          ; preds = %if.end23
  %20 = load i32, ptr %port.addr, align 4, !dbg !5750
  %cmp33 = icmp sgt i32 %20, 2, !dbg !5752
  br i1 %cmp33, label %if.then35, label %if.else38, !dbg !5753

if.then35:                                        ; preds = %sw.bb32
  store i16 -10975, ptr %reg, align 2, !dbg !5754
  %21 = load i32, ptr %port.addr, align 4, !dbg !5756
  %sub36 = sub i32 %21, 3, !dbg !5757
  %conv37 = trunc i32 %sub36 to i8, !dbg !5756
  store i8 %conv37, ptr %port_shift, align 1, !dbg !5758
  br label %if.end41, !dbg !5759

if.else38:                                        ; preds = %sw.bb32
  store i16 -10976, ptr %reg, align 2, !dbg !5760
  %22 = load i32, ptr %port.addr, align 4, !dbg !5762
  %add39 = add i32 %22, 5, !dbg !5763
  %conv40 = trunc i32 %add39 to i8, !dbg !5762
  store i8 %conv40, ptr %port_shift, align 1, !dbg !5764
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then35
  br label %sw.epilog, !dbg !5765

sw.bb42:                                          ; preds = %if.end23
  %23 = load i32, ptr %port.addr, align 4, !dbg !5766
  %cmp43 = icmp sgt i32 %23, 3, !dbg !5768
  br i1 %cmp43, label %if.then45, label %if.else48, !dbg !5769

if.then45:                                        ; preds = %sw.bb42
  store i16 -10973, ptr %reg, align 2, !dbg !5770
  %24 = load i32, ptr %port.addr, align 4, !dbg !5772
  %sub46 = sub i32 %24, 4, !dbg !5773
  %conv47 = trunc i32 %sub46 to i8, !dbg !5772
  store i8 %conv47, ptr %port_shift, align 1, !dbg !5774
  br label %if.end51, !dbg !5775

if.else48:                                        ; preds = %sw.bb42
  store i16 -10974, ptr %reg, align 2, !dbg !5776
  %25 = load i32, ptr %port.addr, align 4, !dbg !5778
  %add49 = add i32 %25, 4, !dbg !5779
  %conv50 = trunc i32 %add49 to i8, !dbg !5778
  store i8 %conv50, ptr %port_shift, align 1, !dbg !5780
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then45
  br label %sw.epilog, !dbg !5781

sw.default:                                       ; preds = %if.end23
  store i1 false, ptr %retval, align 1, !dbg !5782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5782

sw.epilog:                                        ; preds = %if.end51, %if.end41, %if.end31
  %26 = load ptr, ptr %pdev, align 8, !dbg !5783
  %27 = load i16, ptr %reg, align 2, !dbg !5784
  %call52 = call i32 @pci_write_config_word(ptr noundef %26, i32 noundef 232, i16 noundef zeroext %27) #13, !dbg !5785
  %28 = load ptr, ptr %pdev, align 8, !dbg !5786
  %call53 = call i32 @pci_read_config_byte(ptr noundef %28, i32 noundef 228, ptr noundef %value) #13, !dbg !5787
  %29 = load i8, ptr %value, align 1, !dbg !5788
  %conv54 = zext i8 %29 to i64, !dbg !5788
  %30 = load i8, ptr %port_shift, align 1, !dbg !5789
  %conv55 = zext i8 %30 to i32, !dbg !5789
  %sh_prom = zext i32 %conv55 to i64, !dbg !5789
  %shl = shl i64 1, %sh_prom, !dbg !5789
  %and = and i64 %conv54, %shl, !dbg !5790
  %tobool = icmp ne i64 %and, 0, !dbg !5791
  %lnot = xor i1 %tobool, true, !dbg !5791
  store i1 %lnot, ptr %retval, align 1, !dbg !5792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5792

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then22, %if.then15, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %reg) #12, !dbg !5793
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #12, !dbg !5793
  call void @llvm.lifetime.end.p0(i64 1, ptr %port_shift) #12, !dbg !5793
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #12, !dbg !5793
  %31 = load i1, ptr %retval, align 1, !dbg !5793
  ret i1 %31, !dbg !5793
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5794 dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @uhci_reset_hc(ptr noundef %pdev, i64 noundef %base) #0 align 16 !dbg !5798 {
entry:
  %pdev.addr = alloca ptr, align 8
  %base.addr = alloca i64, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5802, metadata !DIExpression()), !dbg !5804
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5803, metadata !DIExpression()), !dbg !5805
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5806
  %call = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 192, i16 noundef zeroext -28928) #13, !dbg !5807
  %1 = load i64, ptr %base.addr, align 8, !dbg !5808
  %add = add i64 %1, 0, !dbg !5809
  %conv = trunc i64 %add to i16, !dbg !5808
  call void @__outw(i16 noundef zeroext 2, i16 noundef zeroext %conv) #13, !dbg !5810
  br label %do.body, !dbg !5811

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5812

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5814

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5812, !srcloc !5816
  br label %do.end2, !dbg !5812

do.end2:                                          ; preds = %do.end
  call void @__const_udelay(i64 noundef 21475) #13, !dbg !5817
  %2 = load i64, ptr %base.addr, align 8, !dbg !5822
  %add3 = add i64 %2, 0, !dbg !5824
  %conv4 = trunc i64 %add3 to i16, !dbg !5822
  %call5 = call zeroext i16 @__inw(i16 noundef zeroext %conv4) #13, !dbg !5825
  %conv6 = zext i16 %call5 to i32, !dbg !5825
  %and = and i32 %conv6, 2, !dbg !5826
  %tobool = icmp ne i32 %and, 0, !dbg !5826
  br i1 %tobool, label %if.then, label %if.end, !dbg !5827

if.then:                                          ; preds = %do.end2
  br label %do.body7, !dbg !5828

do.body7:                                         ; preds = %if.then
  br label %do.end8, !dbg !5830

do.end8:                                          ; preds = %do.body7
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5828
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5828
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str) #14, !dbg !5828
  br label %if.end, !dbg !5832

if.end:                                           ; preds = %do.end8, %do.end2
  %4 = load i64, ptr %base.addr, align 8, !dbg !5833
  %add9 = add i64 %4, 4, !dbg !5834
  %conv10 = trunc i64 %add9 to i16, !dbg !5833
  call void @__outw(i16 noundef zeroext 0, i16 noundef zeroext %conv10) #13, !dbg !5835
  %5 = load i64, ptr %base.addr, align 8, !dbg !5836
  %add11 = add i64 %5, 0, !dbg !5837
  %conv12 = trunc i64 %add11 to i16, !dbg !5836
  call void @__outw(i16 noundef zeroext 0, i16 noundef zeroext %conv12) #13, !dbg !5838
  ret void, !dbg !5839
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outw(i16 noundef zeroext %value, i16 noundef zeroext %port) #4 align 16 !dbg !5840 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i16, align 2
  store i16 %value, ptr %value.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5845, metadata !DIExpression()), !dbg !5847
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5846, metadata !DIExpression()), !dbg !5847
  %0 = load i16, ptr %value.addr, align 2, !dbg !5847
  %1 = load i16, ptr %port.addr, align 2, !dbg !5847
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16 %1) #12, !dbg !5847, !srcloc !5848
  ret void, !dbg !5847
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5849 dso_local void @__const_udelay(i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @__inw(i16 noundef zeroext %port) #4 align 16 !dbg !5853 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i16, align 2
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5857, metadata !DIExpression()), !dbg !5859
  call void @llvm.lifetime.start.p0(i64 2, ptr %value) #12, !dbg !5859
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5858, metadata !DIExpression()), !dbg !5859
  %0 = load i16, ptr %port.addr, align 2, !dbg !5859
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #12, !dbg !5859, !srcloc !5860
  store i16 %1, ptr %value, align 2, !dbg !5859
  %2 = load i16, ptr %value, align 2, !dbg !5859
  call void @llvm.lifetime.end.p0(i64 2, ptr %value) #12, !dbg !5859
  ret i16 %2, !dbg !5859
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5861 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @uhci_check_and_reset_hc(ptr noundef %pdev, i64 noundef %base) #0 align 16 !dbg !5865 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %base.addr = alloca i64, align 8
  %legsup = alloca i16, align 2
  %cmd = alloca i32, align 4
  %intr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5869, metadata !DIExpression()), !dbg !5875
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5870, metadata !DIExpression()), !dbg !5876
  call void @llvm.lifetime.start.p0(i64 2, ptr %legsup) #12, !dbg !5877
  call void @llvm.dbg.declare(metadata ptr %legsup, metadata !5871, metadata !DIExpression()), !dbg !5878
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd) #12, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !5872, metadata !DIExpression()), !dbg !5880
  call void @llvm.lifetime.start.p0(i64 4, ptr %intr) #12, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %intr, metadata !5873, metadata !DIExpression()), !dbg !5881
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5882
  %call = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 192, ptr noundef %legsup) #13, !dbg !5883
  %1 = load i16, ptr %legsup, align 2, !dbg !5884
  %conv = zext i16 %1 to i32, !dbg !5884
  %and = and i32 %conv, -57153, !dbg !5886
  %tobool = icmp ne i32 %and, 0, !dbg !5886
  br i1 %tobool, label %if.then, label %if.end, !dbg !5887

if.then:                                          ; preds = %entry
  br label %reset_needed, !dbg !5888

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %base.addr, align 8, !dbg !5890
  %add = add i64 %2, 0, !dbg !5891
  %conv1 = trunc i64 %add to i16, !dbg !5890
  %call2 = call zeroext i16 @__inw(i16 noundef zeroext %conv1) #13, !dbg !5892
  %conv3 = zext i16 %call2 to i32, !dbg !5892
  store i32 %conv3, ptr %cmd, align 4, !dbg !5893
  %3 = load i32, ptr %cmd, align 4, !dbg !5894
  %and4 = and i32 %3, 1, !dbg !5896
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5896
  br i1 %tobool5, label %if.then11, label %lor.lhs.false, !dbg !5897

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %cmd, align 4, !dbg !5898
  %and6 = and i32 %4, 64, !dbg !5899
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5899
  br i1 %tobool7, label %lor.lhs.false8, label %if.then11, !dbg !5900

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %5 = load i32, ptr %cmd, align 4, !dbg !5901
  %and9 = and i32 %5, 8, !dbg !5902
  %tobool10 = icmp ne i32 %and9, 0, !dbg !5902
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5903

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %if.end
  br label %reset_needed, !dbg !5904

if.end12:                                         ; preds = %lor.lhs.false8
  %6 = load i64, ptr %base.addr, align 8, !dbg !5906
  %add13 = add i64 %6, 4, !dbg !5907
  %conv14 = trunc i64 %add13 to i16, !dbg !5906
  %call15 = call zeroext i16 @__inw(i16 noundef zeroext %conv14) #13, !dbg !5908
  %conv16 = zext i16 %call15 to i32, !dbg !5908
  store i32 %conv16, ptr %intr, align 4, !dbg !5909
  %7 = load i32, ptr %intr, align 4, !dbg !5910
  %and17 = and i32 %7, -3, !dbg !5912
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5912
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5913

if.then19:                                        ; preds = %if.end12
  br label %reset_needed, !dbg !5914

if.end20:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !5916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5916

reset_needed:                                     ; preds = %if.then19, %if.then11, %if.then
  call void @llvm.dbg.label(metadata !5874), !dbg !5917
  %8 = load ptr, ptr %pdev.addr, align 8, !dbg !5918
  %9 = load i64, ptr %base.addr, align 8, !dbg !5919
  call void @uhci_reset_hc(ptr noundef %8, i64 noundef %9) #13, !dbg !5920
  store i32 1, ptr %retval, align 4, !dbg !5921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5921

cleanup:                                          ; preds = %reset_needed, %if.end20
  call void @llvm.lifetime.end.p0(i64 4, ptr %intr) #12, !dbg !5922
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd) #12, !dbg !5922
  call void @llvm.lifetime.end.p0(i64 2, ptr %legsup) #12, !dbg !5922
  %10 = load i32, ptr %retval, align 4, !dbg !5922
  ret i32 %10, !dbg !5922
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_enable_intel_xhci_ports(ptr noundef %xhci_pdev) #0 align 16 !dbg !5923 {
entry:
  %xhci_pdev.addr = alloca ptr, align 8
  %ports_available = alloca i32, align 4
  %ehci_found = alloca i8, align 1
  %companion = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %xhci_pdev, ptr %xhci_pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xhci_pdev.addr, metadata !5925, metadata !DIExpression()), !dbg !5929
  call void @llvm.lifetime.start.p0(i64 4, ptr %ports_available) #12, !dbg !5930
  call void @llvm.dbg.declare(metadata ptr %ports_available, metadata !5926, metadata !DIExpression()), !dbg !5931
  call void @llvm.lifetime.start.p0(i64 1, ptr %ehci_found) #12, !dbg !5932
  call void @llvm.dbg.declare(metadata ptr %ehci_found, metadata !5927, metadata !DIExpression()), !dbg !5933
  store i8 0, ptr %ehci_found, align 1, !dbg !5933
  call void @llvm.lifetime.start.p0(i64 8, ptr %companion) #12, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %companion, metadata !5928, metadata !DIExpression()), !dbg !5935
  store ptr null, ptr %companion, align 8, !dbg !5935
  %0 = load ptr, ptr %xhci_pdev.addr, align 8, !dbg !5936
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9, !dbg !5938
  %1 = load i16, ptr %subsystem_vendor, align 8, !dbg !5938
  %conv = zext i16 %1 to i32, !dbg !5936
  %cmp = icmp eq i32 %conv, 4173, !dbg !5939
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5940

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %xhci_pdev.addr, align 8, !dbg !5941
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 10, !dbg !5942
  %3 = load i16, ptr %subsystem_device, align 2, !dbg !5942
  %conv2 = zext i16 %3 to i32, !dbg !5941
  %cmp3 = icmp eq i32 %conv2, 37032, !dbg !5943
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5944

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5945

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond, !dbg !5946

while.cond:                                       ; preds = %if.end14, %if.end
  %4 = load ptr, ptr %companion, align 8, !dbg !5946
  %call = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %4) #13, !dbg !5946
  store ptr %call, ptr %companion, align 8, !dbg !5946
  %cmp5 = icmp ne ptr %call, null, !dbg !5946
  br i1 %cmp5, label %while.body, label %while.end, !dbg !5946

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %companion, align 8, !dbg !5947
  %class = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 11, !dbg !5950
  %6 = load i32, ptr %class, align 4, !dbg !5950
  %cmp7 = icmp eq i32 %6, 787232, !dbg !5951
  br i1 %cmp7, label %land.lhs.true9, label %if.end14, !dbg !5952

land.lhs.true9:                                   ; preds = %while.body
  %7 = load ptr, ptr %companion, align 8, !dbg !5953
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 7, !dbg !5954
  %8 = load i16, ptr %vendor, align 4, !dbg !5954
  %conv10 = zext i16 %8 to i32, !dbg !5953
  %cmp11 = icmp eq i32 %conv10, 32902, !dbg !5955
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5956

if.then13:                                        ; preds = %land.lhs.true9
  store i8 1, ptr %ehci_found, align 1, !dbg !5957
  br label %while.end, !dbg !5959

if.end14:                                         ; preds = %land.lhs.true9, %while.body
  br label %while.cond, !dbg !5946, !llvm.loop !5960

while.end:                                        ; preds = %if.then13, %while.cond
  %9 = load i8, ptr %ehci_found, align 1, !dbg !5962, !range !5170, !noundef !966
  %tobool = trunc i8 %9 to i1, !dbg !5962
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !5964

if.then15:                                        ; preds = %while.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5965

if.end16:                                         ; preds = %while.end
  %10 = load ptr, ptr %xhci_pdev.addr, align 8, !dbg !5966
  %call17 = call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef 220, ptr noundef %ports_available) #13, !dbg !5967
  %11 = load ptr, ptr %xhci_pdev.addr, align 8, !dbg !5968
  %12 = load i32, ptr %ports_available, align 4, !dbg !5969
  %call18 = call i32 @pci_write_config_dword(ptr noundef %11, i32 noundef 216, i32 noundef %12) #13, !dbg !5970
  %13 = load ptr, ptr %xhci_pdev.addr, align 8, !dbg !5971
  %call19 = call i32 @pci_read_config_dword(ptr noundef %13, i32 noundef 216, ptr noundef %ports_available) #13, !dbg !5972
  %14 = load ptr, ptr %xhci_pdev.addr, align 8, !dbg !5973
  %call20 = call i32 @pci_read_config_dword(ptr noundef %14, i32 noundef 212, ptr noundef %ports_available) #13, !dbg !5974
  %15 = load ptr, ptr %xhci_pdev.addr, align 8, !dbg !5975
  %16 = load i32, ptr %ports_available, align 4, !dbg !5976
  %call21 = call i32 @pci_write_config_dword(ptr noundef %15, i32 noundef 208, i32 noundef %16) #13, !dbg !5977
  %17 = load ptr, ptr %xhci_pdev.addr, align 8, !dbg !5978
  %call22 = call i32 @pci_read_config_dword(ptr noundef %17, i32 noundef 208, ptr noundef %ports_available) #13, !dbg !5979
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5980
  br label %cleanup, !dbg !5980

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %companion) #12, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 1, ptr %ehci_found) #12, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 4, ptr %ports_available) #12, !dbg !5980
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5980

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5981 dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5984 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_disable_xhci_ports(ptr noundef %xhci_pdev) #0 align 16 !dbg !5987 {
entry:
  %xhci_pdev.addr = alloca ptr, align 8
  store ptr %xhci_pdev, ptr %xhci_pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xhci_pdev.addr, metadata !5989, metadata !DIExpression()), !dbg !5990
  %0 = load ptr, ptr %xhci_pdev.addr, align 8, !dbg !5991
  %call = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 216, i32 noundef 0) #13, !dbg !5992
  %1 = load ptr, ptr %xhci_pdev.addr, align 8, !dbg !5993
  %call1 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 208, i32 noundef 0) #13, !dbg !5994
  ret void, !dbg !5995
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__UNIQUE_ID_quirk_usb_early_handoff306(ptr noundef %dev) #0 align 16 !dbg !5996 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5998, metadata !DIExpression()), !dbg !5999
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5999
  call void @quirk_usb_early_handoff(ptr noundef %0) #13, !dbg !5999
  ret void, !dbg !5999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_usb_early_handoff(ptr noundef %pdev) #0 align 16 !dbg !6000 {
entry:
  %pdev.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %is_rpi = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6002, metadata !DIExpression()), !dbg !6005
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #12, !dbg !6006
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6003, metadata !DIExpression()), !dbg !6007
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_rpi) #12, !dbg !6008
  call void @llvm.dbg.declare(metadata ptr %is_rpi, metadata !6004, metadata !DIExpression()), !dbg !6009
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6010
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7, !dbg !6012
  %1 = load i16, ptr %vendor, align 4, !dbg !6012
  %conv = zext i16 %1 to i32, !dbg !6010
  %cmp = icmp eq i32 %conv, 6222, !dbg !6013
  br i1 %cmp, label %if.then, label %if.end, !dbg !6014

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6015

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !6016
  %vendor2 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 7, !dbg !6018
  %3 = load i16, ptr %vendor2, align 4, !dbg !6018
  %conv3 = zext i16 %3 to i32, !dbg !6016
  %cmp4 = icmp eq i32 %conv3, 4358, !dbg !6019
  br i1 %cmp4, label %land.lhs.true, label %if.end14, !dbg !6020

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !6021
  %device = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8, !dbg !6022
  %5 = load i16, ptr %device, align 2, !dbg !6022
  %conv6 = zext i16 %5 to i32, !dbg !6021
  %cmp7 = icmp eq i32 %conv6, 13443, !dbg !6023
  br i1 %cmp7, label %if.then9, label %if.end14, !dbg !6024

if.then9:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %pdev.addr, align 8, !dbg !6025
  %bus = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 1, !dbg !6027
  %7 = load ptr, ptr %bus, align 8, !dbg !6027
  %dev = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 20, !dbg !6028
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 23, !dbg !6029
  %8 = load ptr, ptr %of_node, align 8, !dbg !6029
  %call = call ptr @of_get_parent(ptr noundef %8) #13, !dbg !6030
  store ptr %call, ptr %parent, align 8, !dbg !6031
  %9 = load ptr, ptr %parent, align 8, !dbg !6032
  %call10 = call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef @.str.4) #13, !dbg !6033
  %tobool = icmp ne i32 %call10, 0, !dbg !6033
  %frombool = zext i1 %tobool to i8, !dbg !6034
  store i8 %frombool, ptr %is_rpi, align 1, !dbg !6034
  %10 = load ptr, ptr %parent, align 8, !dbg !6035
  call void @of_node_put(ptr noundef %10) #13, !dbg !6036
  %11 = load i8, ptr %is_rpi, align 1, !dbg !6037, !range !5170, !noundef !966
  %tobool11 = trunc i8 %11 to i1, !dbg !6037
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6039

if.then12:                                        ; preds = %if.then9
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6040

if.end13:                                         ; preds = %if.then9
  br label %if.end14, !dbg !6041

if.end14:                                         ; preds = %if.end13, %land.lhs.true, %if.end
  %12 = load ptr, ptr %pdev.addr, align 8, !dbg !6042
  %class = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 11, !dbg !6044
  %13 = load i32, ptr %class, align 4, !dbg !6044
  %cmp15 = icmp ne i32 %13, 787200, !dbg !6045
  br i1 %cmp15, label %land.lhs.true17, label %if.end30, !dbg !6046

land.lhs.true17:                                  ; preds = %if.end14
  %14 = load ptr, ptr %pdev.addr, align 8, !dbg !6047
  %class18 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 11, !dbg !6048
  %15 = load i32, ptr %class18, align 4, !dbg !6048
  %cmp19 = icmp ne i32 %15, 787216, !dbg !6049
  br i1 %cmp19, label %land.lhs.true21, label %if.end30, !dbg !6050

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %16 = load ptr, ptr %pdev.addr, align 8, !dbg !6051
  %class22 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 11, !dbg !6052
  %17 = load i32, ptr %class22, align 4, !dbg !6052
  %cmp23 = icmp ne i32 %17, 787232, !dbg !6053
  br i1 %cmp23, label %land.lhs.true25, label %if.end30, !dbg !6054

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %18 = load ptr, ptr %pdev.addr, align 8, !dbg !6055
  %class26 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 11, !dbg !6056
  %19 = load i32, ptr %class26, align 4, !dbg !6056
  %cmp27 = icmp ne i32 %19, 787248, !dbg !6057
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !6058

if.then29:                                        ; preds = %land.lhs.true25
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6059

if.end30:                                         ; preds = %land.lhs.true25, %land.lhs.true21, %land.lhs.true17, %if.end14
  %20 = load ptr, ptr %pdev.addr, align 8, !dbg !6060
  %call31 = call i32 @pci_enable_device(ptr noundef %20) #13, !dbg !6062
  %cmp32 = icmp slt i32 %call31, 0, !dbg !6063
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !6064

if.then34:                                        ; preds = %if.end30
  br label %do.body, !dbg !6065

do.body:                                          ; preds = %if.then34
  br label %do.cond, !dbg !6068

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6068

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %pdev.addr, align 8, !dbg !6065
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 37, !dbg !6065
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev35, ptr noundef @.str.5) #14, !dbg !6065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6070

if.end36:                                         ; preds = %if.end30
  %22 = load ptr, ptr %pdev.addr, align 8, !dbg !6071
  %class37 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 11, !dbg !6073
  %23 = load i32, ptr %class37, align 4, !dbg !6073
  %cmp38 = icmp eq i32 %23, 787200, !dbg !6074
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !6075

if.then40:                                        ; preds = %if.end36
  %24 = load ptr, ptr %pdev.addr, align 8, !dbg !6076
  call void @quirk_usb_handoff_uhci(ptr noundef %24) #13, !dbg !6077
  br label %if.end58, !dbg !6077

if.else:                                          ; preds = %if.end36
  %25 = load ptr, ptr %pdev.addr, align 8, !dbg !6078
  %class41 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 11, !dbg !6080
  %26 = load i32, ptr %class41, align 4, !dbg !6080
  %cmp42 = icmp eq i32 %26, 787216, !dbg !6081
  br i1 %cmp42, label %if.then44, label %if.else45, !dbg !6082

if.then44:                                        ; preds = %if.else
  %27 = load ptr, ptr %pdev.addr, align 8, !dbg !6083
  call void @quirk_usb_handoff_ohci(ptr noundef %27) #13, !dbg !6084
  br label %if.end57, !dbg !6084

if.else45:                                        ; preds = %if.else
  %28 = load ptr, ptr %pdev.addr, align 8, !dbg !6085
  %class46 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 11, !dbg !6087
  %29 = load i32, ptr %class46, align 4, !dbg !6087
  %cmp47 = icmp eq i32 %29, 787232, !dbg !6088
  br i1 %cmp47, label %if.then49, label %if.else50, !dbg !6089

if.then49:                                        ; preds = %if.else45
  %30 = load ptr, ptr %pdev.addr, align 8, !dbg !6090
  call void @quirk_usb_disable_ehci(ptr noundef %30) #13, !dbg !6091
  br label %if.end56, !dbg !6091

if.else50:                                        ; preds = %if.else45
  %31 = load ptr, ptr %pdev.addr, align 8, !dbg !6092
  %class51 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 11, !dbg !6094
  %32 = load i32, ptr %class51, align 4, !dbg !6094
  %cmp52 = icmp eq i32 %32, 787248, !dbg !6095
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !6096

if.then54:                                        ; preds = %if.else50
  %33 = load ptr, ptr %pdev.addr, align 8, !dbg !6097
  call void @quirk_usb_handoff_xhci(ptr noundef %33) #13, !dbg !6098
  br label %if.end55, !dbg !6098

if.end55:                                         ; preds = %if.then54, %if.else50
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then49
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then44
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then40
  %34 = load ptr, ptr %pdev.addr, align 8, !dbg !6099
  call void @pci_disable_device(ptr noundef %34) #13, !dbg !6100
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6101
  br label %cleanup, !dbg !6101

cleanup:                                          ; preds = %if.end58, %do.end, %if.then29, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_rpi) #12, !dbg !6101
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #12, !dbg !6101
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6101

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd_chipset_sb_type_init(ptr noundef %pinfo) #0 align 16 !dbg !6102 {
entry:
  %retval = alloca i32, align 4
  %pinfo.addr = alloca ptr, align 8
  %rev = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pinfo, ptr %pinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pinfo.addr, metadata !6107, metadata !DIExpression()), !dbg !6109
  call void @llvm.lifetime.start.p0(i64 1, ptr %rev) #12, !dbg !6110
  call void @llvm.dbg.declare(metadata ptr %rev, metadata !6108, metadata !DIExpression()), !dbg !6111
  store i8 0, ptr %rev, align 1, !dbg !6111
  %0 = load ptr, ptr %pinfo.addr, align 8, !dbg !6112
  %sb_type = getelementptr inbounds %struct.amd_chipset_info, ptr %0, i32 0, i32 3, !dbg !6113
  %gen = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type, i32 0, i32 0, !dbg !6114
  store i32 8, ptr %gen, align 4, !dbg !6115
  %call = call ptr @pci_get_device(i32 noundef 4098, i32 noundef 17285, ptr noundef null) #13, !dbg !6116
  %1 = load ptr, ptr %pinfo.addr, align 8, !dbg !6117
  %smbus_dev = getelementptr inbounds %struct.amd_chipset_info, ptr %1, i32 0, i32 1, !dbg !6118
  store ptr %call, ptr %smbus_dev, align 8, !dbg !6119
  %2 = load ptr, ptr %pinfo.addr, align 8, !dbg !6120
  %smbus_dev1 = getelementptr inbounds %struct.amd_chipset_info, ptr %2, i32 0, i32 1, !dbg !6122
  %3 = load ptr, ptr %smbus_dev1, align 8, !dbg !6122
  %tobool = icmp ne ptr %3, null, !dbg !6120
  br i1 %tobool, label %if.then, label %if.else33, !dbg !6123

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pinfo.addr, align 8, !dbg !6124
  %smbus_dev2 = getelementptr inbounds %struct.amd_chipset_info, ptr %4, i32 0, i32 1, !dbg !6126
  %5 = load ptr, ptr %smbus_dev2, align 8, !dbg !6126
  %revision = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 12, !dbg !6127
  %6 = load i8, ptr %revision, align 8, !dbg !6127
  store i8 %6, ptr %rev, align 1, !dbg !6128
  %7 = load i8, ptr %rev, align 1, !dbg !6129
  %conv = zext i8 %7 to i32, !dbg !6129
  %cmp = icmp sge i32 %conv, 16, !dbg !6131
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !6132

land.lhs.true:                                    ; preds = %if.then
  %8 = load i8, ptr %rev, align 1, !dbg !6133
  %conv4 = zext i8 %8 to i32, !dbg !6133
  %cmp5 = icmp sle i32 %conv4, 31, !dbg !6134
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !6135

if.then7:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %pinfo.addr, align 8, !dbg !6136
  %sb_type8 = getelementptr inbounds %struct.amd_chipset_info, ptr %9, i32 0, i32 3, !dbg !6137
  %gen9 = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type8, i32 0, i32 0, !dbg !6138
  store i32 1, ptr %gen9, align 4, !dbg !6139
  br label %if.end32, !dbg !6136

if.else:                                          ; preds = %land.lhs.true, %if.then
  %10 = load i8, ptr %rev, align 1, !dbg !6140
  %conv10 = zext i8 %10 to i32, !dbg !6140
  %cmp11 = icmp sge i32 %conv10, 48, !dbg !6142
  br i1 %cmp11, label %land.lhs.true13, label %if.else20, !dbg !6143

land.lhs.true13:                                  ; preds = %if.else
  %11 = load i8, ptr %rev, align 1, !dbg !6144
  %conv14 = zext i8 %11 to i32, !dbg !6144
  %cmp15 = icmp sle i32 %conv14, 63, !dbg !6145
  br i1 %cmp15, label %if.then17, label %if.else20, !dbg !6146

if.then17:                                        ; preds = %land.lhs.true13
  %12 = load ptr, ptr %pinfo.addr, align 8, !dbg !6147
  %sb_type18 = getelementptr inbounds %struct.amd_chipset_info, ptr %12, i32 0, i32 3, !dbg !6148
  %gen19 = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type18, i32 0, i32 0, !dbg !6149
  store i32 2, ptr %gen19, align 4, !dbg !6150
  br label %if.end31, !dbg !6147

if.else20:                                        ; preds = %land.lhs.true13, %if.else
  %13 = load i8, ptr %rev, align 1, !dbg !6151
  %conv21 = zext i8 %13 to i32, !dbg !6151
  %cmp22 = icmp sge i32 %conv21, 64, !dbg !6153
  br i1 %cmp22, label %land.lhs.true24, label %if.end, !dbg !6154

land.lhs.true24:                                  ; preds = %if.else20
  %14 = load i8, ptr %rev, align 1, !dbg !6155
  %conv25 = zext i8 %14 to i32, !dbg !6155
  %cmp26 = icmp sle i32 %conv25, 79, !dbg !6156
  br i1 %cmp26, label %if.then28, label %if.end, !dbg !6157

if.then28:                                        ; preds = %land.lhs.true24
  %15 = load ptr, ptr %pinfo.addr, align 8, !dbg !6158
  %sb_type29 = getelementptr inbounds %struct.amd_chipset_info, ptr %15, i32 0, i32 3, !dbg !6159
  %gen30 = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type29, i32 0, i32 0, !dbg !6160
  store i32 3, ptr %gen30, align 4, !dbg !6161
  br label %if.end, !dbg !6158

if.end:                                           ; preds = %if.then28, %land.lhs.true24, %if.else20
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then17
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then7
  br label %if.end91, !dbg !6162

if.else33:                                        ; preds = %entry
  %call34 = call ptr @pci_get_device(i32 noundef 4130, i32 noundef 30731, ptr noundef null) #13, !dbg !6163
  %16 = load ptr, ptr %pinfo.addr, align 8, !dbg !6165
  %smbus_dev35 = getelementptr inbounds %struct.amd_chipset_info, ptr %16, i32 0, i32 1, !dbg !6166
  store ptr %call34, ptr %smbus_dev35, align 8, !dbg !6167
  %17 = load ptr, ptr %pinfo.addr, align 8, !dbg !6168
  %smbus_dev36 = getelementptr inbounds %struct.amd_chipset_info, ptr %17, i32 0, i32 1, !dbg !6170
  %18 = load ptr, ptr %smbus_dev36, align 8, !dbg !6170
  %tobool37 = icmp ne ptr %18, null, !dbg !6168
  br i1 %tobool37, label %if.then38, label %if.else76, !dbg !6171

if.then38:                                        ; preds = %if.else33
  %19 = load ptr, ptr %pinfo.addr, align 8, !dbg !6172
  %smbus_dev39 = getelementptr inbounds %struct.amd_chipset_info, ptr %19, i32 0, i32 1, !dbg !6174
  %20 = load ptr, ptr %smbus_dev39, align 8, !dbg !6174
  %revision40 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 12, !dbg !6175
  %21 = load i8, ptr %revision40, align 8, !dbg !6175
  store i8 %21, ptr %rev, align 1, !dbg !6176
  %22 = load i8, ptr %rev, align 1, !dbg !6177
  %conv41 = zext i8 %22 to i32, !dbg !6177
  %cmp42 = icmp sge i32 %conv41, 17, !dbg !6179
  br i1 %cmp42, label %land.lhs.true44, label %if.else51, !dbg !6180

land.lhs.true44:                                  ; preds = %if.then38
  %23 = load i8, ptr %rev, align 1, !dbg !6181
  %conv45 = zext i8 %23 to i32, !dbg !6181
  %cmp46 = icmp sle i32 %conv45, 20, !dbg !6182
  br i1 %cmp46, label %if.then48, label %if.else51, !dbg !6183

if.then48:                                        ; preds = %land.lhs.true44
  %24 = load ptr, ptr %pinfo.addr, align 8, !dbg !6184
  %sb_type49 = getelementptr inbounds %struct.amd_chipset_info, ptr %24, i32 0, i32 3, !dbg !6185
  %gen50 = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type49, i32 0, i32 0, !dbg !6186
  store i32 4, ptr %gen50, align 4, !dbg !6187
  br label %if.end75, !dbg !6184

if.else51:                                        ; preds = %land.lhs.true44, %if.then38
  %25 = load i8, ptr %rev, align 1, !dbg !6188
  %conv52 = zext i8 %25 to i32, !dbg !6188
  %cmp53 = icmp sge i32 %conv52, 21, !dbg !6190
  br i1 %cmp53, label %land.lhs.true55, label %if.else62, !dbg !6191

land.lhs.true55:                                  ; preds = %if.else51
  %26 = load i8, ptr %rev, align 1, !dbg !6192
  %conv56 = zext i8 %26 to i32, !dbg !6192
  %cmp57 = icmp sle i32 %conv56, 24, !dbg !6193
  br i1 %cmp57, label %if.then59, label %if.else62, !dbg !6194

if.then59:                                        ; preds = %land.lhs.true55
  %27 = load ptr, ptr %pinfo.addr, align 8, !dbg !6195
  %sb_type60 = getelementptr inbounds %struct.amd_chipset_info, ptr %27, i32 0, i32 3, !dbg !6196
  %gen61 = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type60, i32 0, i32 0, !dbg !6197
  store i32 5, ptr %gen61, align 4, !dbg !6198
  br label %if.end74, !dbg !6195

if.else62:                                        ; preds = %land.lhs.true55, %if.else51
  %28 = load i8, ptr %rev, align 1, !dbg !6199
  %conv63 = zext i8 %28 to i32, !dbg !6199
  %cmp64 = icmp sge i32 %conv63, 57, !dbg !6201
  br i1 %cmp64, label %land.lhs.true66, label %if.end73, !dbg !6202

land.lhs.true66:                                  ; preds = %if.else62
  %29 = load i8, ptr %rev, align 1, !dbg !6203
  %conv67 = zext i8 %29 to i32, !dbg !6203
  %cmp68 = icmp sle i32 %conv67, 58, !dbg !6204
  br i1 %cmp68, label %if.then70, label %if.end73, !dbg !6205

if.then70:                                        ; preds = %land.lhs.true66
  %30 = load ptr, ptr %pinfo.addr, align 8, !dbg !6206
  %sb_type71 = getelementptr inbounds %struct.amd_chipset_info, ptr %30, i32 0, i32 3, !dbg !6207
  %gen72 = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type71, i32 0, i32 0, !dbg !6208
  store i32 6, ptr %gen72, align 4, !dbg !6209
  br label %if.end73, !dbg !6206

if.end73:                                         ; preds = %if.then70, %land.lhs.true66, %if.else62
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then59
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then48
  br label %if.end90, !dbg !6210

if.else76:                                        ; preds = %if.else33
  %call77 = call ptr @pci_get_device(i32 noundef 4130, i32 noundef 5212, ptr noundef null) #13, !dbg !6211
  %31 = load ptr, ptr %pinfo.addr, align 8, !dbg !6213
  %smbus_dev78 = getelementptr inbounds %struct.amd_chipset_info, ptr %31, i32 0, i32 1, !dbg !6214
  store ptr %call77, ptr %smbus_dev78, align 8, !dbg !6215
  %32 = load ptr, ptr %pinfo.addr, align 8, !dbg !6216
  %smbus_dev79 = getelementptr inbounds %struct.amd_chipset_info, ptr %32, i32 0, i32 1, !dbg !6218
  %33 = load ptr, ptr %smbus_dev79, align 8, !dbg !6218
  %tobool80 = icmp ne ptr %33, null, !dbg !6216
  br i1 %tobool80, label %if.then81, label %if.else86, !dbg !6219

if.then81:                                        ; preds = %if.else76
  %34 = load ptr, ptr %pinfo.addr, align 8, !dbg !6220
  %smbus_dev82 = getelementptr inbounds %struct.amd_chipset_info, ptr %34, i32 0, i32 1, !dbg !6222
  %35 = load ptr, ptr %smbus_dev82, align 8, !dbg !6222
  %revision83 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 12, !dbg !6223
  %36 = load i8, ptr %revision83, align 8, !dbg !6223
  store i8 %36, ptr %rev, align 1, !dbg !6224
  %37 = load ptr, ptr %pinfo.addr, align 8, !dbg !6225
  %sb_type84 = getelementptr inbounds %struct.amd_chipset_info, ptr %37, i32 0, i32 3, !dbg !6226
  %gen85 = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type84, i32 0, i32 0, !dbg !6227
  store i32 7, ptr %gen85, align 4, !dbg !6228
  br label %if.end89, !dbg !6229

if.else86:                                        ; preds = %if.else76
  %38 = load ptr, ptr %pinfo.addr, align 8, !dbg !6230
  %sb_type87 = getelementptr inbounds %struct.amd_chipset_info, ptr %38, i32 0, i32 3, !dbg !6232
  %gen88 = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type87, i32 0, i32 0, !dbg !6233
  store i32 0, ptr %gen88, align 4, !dbg !6234
  store i32 0, ptr %retval, align 4, !dbg !6235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6235

if.end89:                                         ; preds = %if.then81
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end75
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end32
  %39 = load i8, ptr %rev, align 1, !dbg !6236
  %40 = load ptr, ptr %pinfo.addr, align 8, !dbg !6237
  %sb_type92 = getelementptr inbounds %struct.amd_chipset_info, ptr %40, i32 0, i32 3, !dbg !6238
  %rev93 = getelementptr inbounds %struct.amd_chipset_type, ptr %sb_type92, i32 0, i32 1, !dbg !6239
  store i8 %39, ptr %rev93, align 4, !dbg !6240
  store i32 1, ptr %retval, align 4, !dbg !6241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6241

cleanup:                                          ; preds = %if.end91, %if.else86
  call void @llvm.lifetime.end.p0(i64 1, ptr %rev) #12, !dbg !6242
  %41 = load i32, ptr %retval, align 4, !dbg !6242
  ret i32 %41, !dbg !6242
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6243 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @outb_p(i8 noundef zeroext %value, i16 noundef zeroext %port) #8 align 16 !dbg !6247 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6252, metadata !DIExpression()), !dbg !6254
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6253, metadata !DIExpression()), !dbg !6254
  %0 = load i8, ptr %value.addr, align 1, !dbg !6254
  %1 = load i16, ptr %port.addr, align 2, !dbg !6254
  call void @__outb(i8 noundef zeroext %0, i16 noundef zeroext %1) #13, !dbg !6254
  call void @slow_down_io() #13, !dbg !6254
  ret void, !dbg !6254
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @inb_p(i16 noundef zeroext %port) #8 align 16 !dbg !6255 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6259, metadata !DIExpression()), !dbg !6261
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #12, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6260, metadata !DIExpression()), !dbg !6261
  %0 = load i16, ptr %port.addr, align 2, !dbg !6261
  %call = call zeroext i8 @__inb(i16 noundef zeroext %0) #13, !dbg !6261
  store i8 %call, ptr %value, align 1, !dbg !6261
  call void @slow_down_io() #13, !dbg !6261
  %1 = load i8, ptr %value, align 1, !dbg !6261
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #12, !dbg !6261
  ret i8 %1, !dbg !6261
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @outl_p(i32 noundef %value, i16 noundef zeroext %port) #8 align 16 !dbg !6262 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i16, align 2
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6266, metadata !DIExpression()), !dbg !6268
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6267, metadata !DIExpression()), !dbg !6268
  %0 = load i32, ptr %value.addr, align 4, !dbg !6268
  %1 = load i16, ptr %port.addr, align 2, !dbg !6268
  call void @__outl(i32 noundef %0, i16 noundef zeroext %1) #13, !dbg !6268
  call void @slow_down_io() #13, !dbg !6268
  ret void, !dbg !6268
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inl_p(i16 noundef zeroext %port) #8 align 16 !dbg !6269 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i32, align 4
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6273, metadata !DIExpression()), !dbg !6275
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #12, !dbg !6275
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6274, metadata !DIExpression()), !dbg !6275
  %0 = load i16, ptr %port.addr, align 2, !dbg !6275
  %call = call i32 @__inl(i16 noundef zeroext %0) #13, !dbg !6275
  store i32 %call, ptr %value, align 4, !dbg !6275
  call void @slow_down_io() #13, !dbg !6275
  %1 = load i32, ptr %value, align 4, !dbg !6275
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #12, !dbg !6275
  ret i32 %1, !dbg !6275
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outl(i32 noundef %value, i16 noundef zeroext %port) #4 align 16 !dbg !6276 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i16, align 2
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6278, metadata !DIExpression()), !dbg !6280
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6279, metadata !DIExpression()), !dbg !6280
  %0 = load i32, ptr %value.addr, align 4, !dbg !6280
  %1 = load i16, ptr %port.addr, align 2, !dbg !6280
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i16 %1) #12, !dbg !6280, !srcloc !6281
  ret void, !dbg !6280
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__inl(i16 noundef zeroext %port) #4 align 16 !dbg !6282 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i32, align 4
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6284, metadata !DIExpression()), !dbg !6286
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #12, !dbg !6286
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6285, metadata !DIExpression()), !dbg !6286
  %0 = load i16, ptr %port.addr, align 2, !dbg !6286
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #12, !dbg !6286, !srcloc !6287
  store i32 %1, ptr %value, align 4, !dbg !6286
  %2 = load i32, ptr %value, align 4, !dbg !6286
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #12, !dbg !6286
  ret i32 %2, !dbg !6286
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #4 align 16 !dbg !6288 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6290, metadata !DIExpression()), !dbg !6292
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6291, metadata !DIExpression()), !dbg !6292
  %0 = load i8, ptr %value.addr, align 1, !dbg !6292
  %1 = load i16, ptr %port.addr, align 2, !dbg !6292
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #12, !dbg !6292, !srcloc !6293
  ret void, !dbg !6292
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @slow_down_io() #8 align 16 !dbg !6294 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__edi) #12, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %__edi, metadata !6297, metadata !DIExpression()), !dbg !6303
  %0 = load i64, ptr %__edi, align 8, !dbg !6303
  store i64 %0, ptr %__edi, align 8, !dbg !6303
  call void @llvm.lifetime.start.p0(i64 8, ptr %__esi) #12, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %__esi, metadata !6299, metadata !DIExpression()), !dbg !6303
  %1 = load i64, ptr %__esi, align 8, !dbg !6303
  store i64 %1, ptr %__esi, align 8, !dbg !6303
  call void @llvm.lifetime.start.p0(i64 8, ptr %__edx) #12, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %__edx, metadata !6300, metadata !DIExpression()), !dbg !6303
  %2 = load i64, ptr %__edx, align 8, !dbg !6303
  store i64 %2, ptr %__edx, align 8, !dbg !6303
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ecx) #12, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %__ecx, metadata !6301, metadata !DIExpression()), !dbg !6303
  %3 = load i64, ptr %__ecx, align 8, !dbg !6303
  store i64 %3, ptr %__ecx, align 8, !dbg !6303
  call void @llvm.lifetime.start.p0(i64 8, ptr %__eax) #12, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %__eax, metadata !6302, metadata !DIExpression()), !dbg !6303
  %4 = load i64, ptr %__eax, align 8, !dbg !6303
  store i64 %4, ptr %__eax, align 8, !dbg !6303
  %5 = load ptr, ptr @pv_ops, align 8, !dbg !6303
  %6 = call i64 @llvm.read_register.i64(metadata !5044), !dbg !6303
  %7 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09.long 999b\0A\09.popsection\0A\09call *$6;\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A .balign 8 \0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,*m,{rsp},~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 0, ptr elementtype(ptr) @pv_ops, i64 %6) #12, !dbg !6303, !srcloc !6304
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %7, 0, !dbg !6303
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %7, 1, !dbg !6303
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %7, 2, !dbg !6303
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %7, 3, !dbg !6303
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %7, 4, !dbg !6303
  store i64 %asmresult, ptr %__edi, align 8, !dbg !6303
  store i64 %asmresult1, ptr %__esi, align 8, !dbg !6303
  store i64 %asmresult2, ptr %__edx, align 8, !dbg !6303
  store i64 %asmresult3, ptr %__ecx, align 8, !dbg !6303
  call void @llvm.write_register.i64(metadata !5044, i64 %asmresult4), !dbg !6303
  call void @llvm.lifetime.end.p0(i64 8, ptr %__eax) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ecx) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %__edx) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %__esi) #12, !dbg !6305
  call void @llvm.lifetime.end.p0(i64 8, ptr %__edi) #12, !dbg !6305
  ret void, !dbg !6306
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #4 align 16 !dbg !6307 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6309, metadata !DIExpression()), !dbg !6311
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #12, !dbg !6311
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6310, metadata !DIExpression()), !dbg !6311
  %0 = load i16, ptr %port.addr, align 2, !dbg !6311
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #12, !dbg !6311, !srcloc !6312
  store i8 %1, ptr %value, align 1, !dbg !6311
  %2 = load i8, ptr %value, align 1, !dbg !6311
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #12, !dbg !6311
  ret i8 %2, !dbg !6311
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6313 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6314 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_get_parent(ptr noundef %node) #8 align 16 !dbg !6317 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6323, metadata !DIExpression()), !dbg !6324
  ret ptr null, !dbg !6325
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @of_device_is_compatible(ptr noundef %device, ptr noundef %name) #8 align 16 !dbg !6326 {
entry:
  %device.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !6330, metadata !DIExpression()), !dbg !6332
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6331, metadata !DIExpression()), !dbg !6333
  ret i32 0, !dbg !6334
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @of_node_put(ptr noundef %node) #8 align 16 !dbg !6335 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6339, metadata !DIExpression()), !dbg !6340
  ret void, !dbg !6341
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6342 dso_local i32 @pci_enable_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_usb_handoff_uhci(ptr noundef %pdev) #0 align 16 !dbg !6343 {
entry:
  %pdev.addr = alloca ptr, align 8
  %base = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6345, metadata !DIExpression()), !dbg !6348
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #12, !dbg !6349
  call void @llvm.dbg.declare(metadata ptr %base, metadata !6346, metadata !DIExpression()), !dbg !6350
  store i64 0, ptr %base, align 8, !dbg !6350
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6351
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6347, metadata !DIExpression()), !dbg !6352
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6353
  %call = call i32 @io_type_enabled(ptr noundef %0, i32 noundef 1) #13, !dbg !6353
  %tobool = icmp ne i32 %call, 0, !dbg !6353
  br i1 %tobool, label %if.end, label %if.then, !dbg !6355

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6356

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !6357
  br label %for.cond, !dbg !6359

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !6360
  %cmp = icmp slt i32 %1, 6, !dbg !6362
  br i1 %cmp, label %for.body, label %for.end, !dbg !6363

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !6364
  %resource = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 40, !dbg !6364
  %3 = load i32, ptr %i, align 4, !dbg !6364
  %idxprom = sext i32 %3 to i64, !dbg !6364
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !6364
  %flags = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 3, !dbg !6364
  %4 = load i64, ptr %flags, align 8, !dbg !6364
  %and = and i64 %4, 256, !dbg !6366
  %tobool1 = icmp ne i64 %and, 0, !dbg !6366
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !6367

if.then2:                                         ; preds = %for.body
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !6368
  %resource3 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 40, !dbg !6368
  %6 = load i32, ptr %i, align 4, !dbg !6368
  %idxprom4 = sext i32 %6 to i64, !dbg !6368
  %arrayidx5 = getelementptr [11 x %struct.resource], ptr %resource3, i64 0, i64 %idxprom4, !dbg !6368
  %start = getelementptr inbounds %struct.resource, ptr %arrayidx5, i32 0, i32 0, !dbg !6368
  %7 = load i64, ptr %start, align 8, !dbg !6368
  store i64 %7, ptr %base, align 8, !dbg !6370
  br label %for.end, !dbg !6371

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !6372

for.inc:                                          ; preds = %if.end6
  %8 = load i32, ptr %i, align 4, !dbg !6373
  %inc = add i32 %8, 1, !dbg !6373
  store i32 %inc, ptr %i, align 4, !dbg !6373
  br label %for.cond, !dbg !6374, !llvm.loop !6375

for.end:                                          ; preds = %if.then2, %for.cond
  %9 = load i64, ptr %base, align 8, !dbg !6377
  %tobool7 = icmp ne i64 %9, 0, !dbg !6377
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6379

if.then8:                                         ; preds = %for.end
  %10 = load ptr, ptr %pdev.addr, align 8, !dbg !6380
  %11 = load i64, ptr %base, align 8, !dbg !6381
  %call9 = call i32 @uhci_check_and_reset_hc(ptr noundef %10, i64 noundef %11) #13, !dbg !6382
  br label %if.end10, !dbg !6382

if.end10:                                         ; preds = %if.then8, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6383
  br label %cleanup, !dbg !6383

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6383
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #12, !dbg !6383
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6383

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_usb_handoff_ohci(ptr noundef %pdev) #0 align 16 !dbg !6384 {
entry:
  %pdev.addr = alloca ptr, align 8
  %base = alloca ptr, align 8
  %control = alloca i32, align 4
  %fminterval = alloca i32, align 4
  %no_fminterval = alloca i8, align 1
  %cnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %wait_time = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6386, metadata !DIExpression()), !dbg !6395
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #12, !dbg !6396
  call void @llvm.dbg.declare(metadata ptr %base, metadata !6387, metadata !DIExpression()), !dbg !6397
  call void @llvm.lifetime.start.p0(i64 4, ptr %control) #12, !dbg !6398
  call void @llvm.dbg.declare(metadata ptr %control, metadata !6388, metadata !DIExpression()), !dbg !6399
  call void @llvm.lifetime.start.p0(i64 4, ptr %fminterval) #12, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %fminterval, metadata !6389, metadata !DIExpression()), !dbg !6401
  store i32 0, ptr %fminterval, align 4, !dbg !6401
  call void @llvm.lifetime.start.p0(i64 1, ptr %no_fminterval) #12, !dbg !6402
  call void @llvm.dbg.declare(metadata ptr %no_fminterval, metadata !6390, metadata !DIExpression()), !dbg !6403
  store i8 0, ptr %no_fminterval, align 1, !dbg !6403
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #12, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !6391, metadata !DIExpression()), !dbg !6405
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6406
  %call = call i32 @mmio_resource_enabled(ptr noundef %0, i32 noundef 0) #13, !dbg !6408
  %tobool = icmp ne i32 %call, 0, !dbg !6408
  br i1 %tobool, label %if.end, label %if.then, !dbg !6409

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6410

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !6411
  %call1 = call ptr @pci_ioremap_bar(ptr noundef %1, i32 noundef 0) #13, !dbg !6412
  store ptr %call1, ptr %base, align 8, !dbg !6413
  %2 = load ptr, ptr %base, align 8, !dbg !6414
  %cmp = icmp eq ptr %2, null, !dbg !6416
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6417

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6418

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !6419
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7, !dbg !6421
  %4 = load i16, ptr %vendor, align 4, !dbg !6421
  %conv = zext i16 %4 to i32, !dbg !6419
  %cmp4 = icmp eq i32 %conv, 4281, !dbg !6422
  br i1 %cmp4, label %land.lhs.true, label %if.end10, !dbg !6423

land.lhs.true:                                    ; preds = %if.end3
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !6424
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8, !dbg !6425
  %6 = load i16, ptr %device, align 2, !dbg !6425
  %conv6 = zext i16 %6 to i32, !dbg !6424
  %cmp7 = icmp eq i32 %conv6, 21047, !dbg !6426
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6427

if.then9:                                         ; preds = %land.lhs.true
  store i8 1, ptr %no_fminterval, align 1, !dbg !6428
  br label %if.end10, !dbg !6429

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.end3
  %7 = load ptr, ptr %base, align 8, !dbg !6430
  %add.ptr = getelementptr i8, ptr %7, i64 4, !dbg !6431
  %call11 = call i32 @readl(ptr noundef %add.ptr) #13, !dbg !6432
  store i32 %call11, ptr %control, align 4, !dbg !6433
  %8 = load i32, ptr %control, align 4, !dbg !6434
  %and = and i32 %8, 256, !dbg !6435
  %tobool12 = icmp ne i32 %and, 0, !dbg !6435
  br i1 %tobool12, label %if.then13, label %if.end28, !dbg !6436

if.then13:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr %wait_time) #12, !dbg !6437
  call void @llvm.dbg.declare(metadata ptr %wait_time, metadata !6392, metadata !DIExpression()), !dbg !6438
  store i32 500, ptr %wait_time, align 4, !dbg !6438
  %9 = load ptr, ptr %base, align 8, !dbg !6439
  %add.ptr14 = getelementptr i8, ptr %9, i64 16, !dbg !6440
  call void @writel(i32 noundef 1073741824, ptr noundef %add.ptr14) #13, !dbg !6441
  %10 = load ptr, ptr %base, align 8, !dbg !6442
  %add.ptr15 = getelementptr i8, ptr %10, i64 8, !dbg !6443
  call void @writel(i32 noundef 8, ptr noundef %add.ptr15) #13, !dbg !6444
  br label %while.cond, !dbg !6445

while.cond:                                       ; preds = %while.body, %if.then13
  %11 = load i32, ptr %wait_time, align 4, !dbg !6446
  %cmp16 = icmp sgt i32 %11, 0, !dbg !6447
  br i1 %cmp16, label %land.rhs, label %land.end, !dbg !6448

land.rhs:                                         ; preds = %while.cond
  %12 = load ptr, ptr %base, align 8, !dbg !6449
  %add.ptr18 = getelementptr i8, ptr %12, i64 4, !dbg !6450
  %call19 = call i32 @readl(ptr noundef %add.ptr18) #13, !dbg !6451
  %and20 = and i32 %call19, 256, !dbg !6452
  %tobool21 = icmp ne i32 %and20, 0, !dbg !6448
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %tobool21, %land.rhs ], !dbg !6453
  br i1 %13, label %while.body, label %while.end, !dbg !6445

while.body:                                       ; preds = %land.end
  %14 = load i32, ptr %wait_time, align 4, !dbg !6454
  %sub = sub i32 %14, 10, !dbg !6454
  store i32 %sub, ptr %wait_time, align 4, !dbg !6454
  call void @msleep(i32 noundef 10) #13, !dbg !6456
  br label %while.cond, !dbg !6445, !llvm.loop !6457

while.end:                                        ; preds = %land.end
  %15 = load i32, ptr %wait_time, align 4, !dbg !6459
  %cmp22 = icmp sle i32 %15, 0, !dbg !6461
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !6462

if.then24:                                        ; preds = %while.end
  br label %do.body, !dbg !6463

do.body:                                          ; preds = %if.then24
  br label %do.cond, !dbg !6465

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6465

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %pdev.addr, align 8, !dbg !6463
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 37, !dbg !6463
  %17 = load ptr, ptr %base, align 8, !dbg !6463
  %add.ptr25 = getelementptr i8, ptr %17, i64 4, !dbg !6463
  %call26 = call i32 @readl(ptr noundef %add.ptr25) #13, !dbg !6463
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.6, i32 noundef %call26) #14, !dbg !6463
  br label %if.end27, !dbg !6467

if.end27:                                         ; preds = %do.end, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %wait_time) #12, !dbg !6468
  br label %if.end28, !dbg !6469

if.end28:                                         ; preds = %if.end27, %if.end10
  %18 = load ptr, ptr %base, align 8, !dbg !6470
  %add.ptr29 = getelementptr i8, ptr %18, i64 20, !dbg !6471
  call void @writel(i32 noundef -1, ptr noundef %add.ptr29) #13, !dbg !6472
  %19 = load i32, ptr %control, align 4, !dbg !6473
  %and30 = and i32 %19, 512, !dbg !6474
  %20 = load ptr, ptr %base, align 8, !dbg !6475
  %add.ptr31 = getelementptr i8, ptr %20, i64 4, !dbg !6476
  call void @writel(i32 noundef %and30, ptr noundef %add.ptr31) #13, !dbg !6477
  %21 = load ptr, ptr %base, align 8, !dbg !6478
  %add.ptr32 = getelementptr i8, ptr %21, i64 4, !dbg !6479
  %call33 = call i32 @readl(ptr noundef %add.ptr32) #13, !dbg !6480
  %22 = load i8, ptr %no_fminterval, align 1, !dbg !6481, !range !5170, !noundef !966
  %tobool34 = trunc i8 %22 to i1, !dbg !6481
  br i1 %tobool34, label %if.end38, label %if.then35, !dbg !6483

if.then35:                                        ; preds = %if.end28
  %23 = load ptr, ptr %base, align 8, !dbg !6484
  %add.ptr36 = getelementptr i8, ptr %23, i64 52, !dbg !6485
  %call37 = call i32 @readl(ptr noundef %add.ptr36) #13, !dbg !6486
  store i32 %call37, ptr %fminterval, align 4, !dbg !6487
  br label %if.end38, !dbg !6488

if.end38:                                         ; preds = %if.then35, %if.end28
  %24 = load ptr, ptr %base, align 8, !dbg !6489
  %add.ptr39 = getelementptr i8, ptr %24, i64 8, !dbg !6490
  call void @writel(i32 noundef 1, ptr noundef %add.ptr39) #13, !dbg !6491
  store i32 30, ptr %cnt, align 4, !dbg !6492
  br label %for.cond, !dbg !6494

for.cond:                                         ; preds = %for.inc, %if.end38
  %25 = load i32, ptr %cnt, align 4, !dbg !6495
  %cmp40 = icmp sgt i32 %25, 0, !dbg !6497
  br i1 %cmp40, label %for.body, label %for.end, !dbg !6498

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %base, align 8, !dbg !6499
  %add.ptr42 = getelementptr i8, ptr %26, i64 8, !dbg !6502
  %call43 = call i32 @readl(ptr noundef %add.ptr42) #13, !dbg !6503
  %and44 = and i32 %call43, 1, !dbg !6504
  %cmp45 = icmp eq i32 %and44, 0, !dbg !6505
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !6506

if.then47:                                        ; preds = %for.body
  br label %for.end, !dbg !6507

if.end48:                                         ; preds = %for.body
  call void @__const_udelay(i64 noundef 4295) #13, !dbg !6508
  br label %for.inc, !dbg !6513

for.inc:                                          ; preds = %if.end48
  %27 = load i32, ptr %cnt, align 4, !dbg !6514
  %dec = add i32 %27, -1, !dbg !6514
  store i32 %dec, ptr %cnt, align 4, !dbg !6514
  br label %for.cond, !dbg !6515, !llvm.loop !6516

for.end:                                          ; preds = %if.then47, %for.cond
  %28 = load i8, ptr %no_fminterval, align 1, !dbg !6518, !range !5170, !noundef !966
  %tobool49 = trunc i8 %28 to i1, !dbg !6518
  br i1 %tobool49, label %if.end52, label %if.then50, !dbg !6520

if.then50:                                        ; preds = %for.end
  %29 = load i32, ptr %fminterval, align 4, !dbg !6521
  %30 = load ptr, ptr %base, align 8, !dbg !6522
  %add.ptr51 = getelementptr i8, ptr %30, i64 52, !dbg !6523
  call void @writel(i32 noundef %29, ptr noundef %add.ptr51) #13, !dbg !6524
  br label %if.end52, !dbg !6524

if.end52:                                         ; preds = %if.then50, %for.end
  %31 = load ptr, ptr %base, align 8, !dbg !6525
  call void @iounmap(ptr noundef %31) #13, !dbg !6526
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6527
  br label %cleanup, !dbg !6527

cleanup:                                          ; preds = %if.end52, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #12, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 1, ptr %no_fminterval) #12, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 4, ptr %fminterval) #12, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 4, ptr %control) #12, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #12, !dbg !6527
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6527

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_usb_disable_ehci(ptr noundef %pdev) #0 align 16 !dbg !6528 {
entry:
  %pdev.addr = alloca ptr, align 8
  %base = alloca ptr, align 8
  %op_reg_base = alloca ptr, align 8
  %hcc_params = alloca i32, align 4
  %cap = alloca i32, align 4
  %val = alloca i32, align 4
  %offset = alloca i8, align 1
  %cap_length = alloca i8, align 1
  %wait_time = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6530, metadata !DIExpression()), !dbg !6540
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #12, !dbg !6541
  call void @llvm.dbg.declare(metadata ptr %base, metadata !6531, metadata !DIExpression()), !dbg !6542
  call void @llvm.lifetime.start.p0(i64 8, ptr %op_reg_base) #12, !dbg !6541
  call void @llvm.dbg.declare(metadata ptr %op_reg_base, metadata !6532, metadata !DIExpression()), !dbg !6543
  call void @llvm.lifetime.start.p0(i64 4, ptr %hcc_params) #12, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %hcc_params, metadata !6533, metadata !DIExpression()), !dbg !6545
  call void @llvm.lifetime.start.p0(i64 4, ptr %cap) #12, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %cap, metadata !6534, metadata !DIExpression()), !dbg !6546
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #12, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6535, metadata !DIExpression()), !dbg !6547
  call void @llvm.lifetime.start.p0(i64 1, ptr %offset) #12, !dbg !6548
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6536, metadata !DIExpression()), !dbg !6549
  call void @llvm.lifetime.start.p0(i64 1, ptr %cap_length) #12, !dbg !6548
  call void @llvm.dbg.declare(metadata ptr %cap_length, metadata !6537, metadata !DIExpression()), !dbg !6550
  call void @llvm.lifetime.start.p0(i64 4, ptr %wait_time) #12, !dbg !6551
  call void @llvm.dbg.declare(metadata ptr %wait_time, metadata !6538, metadata !DIExpression()), !dbg !6552
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !6551
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6539, metadata !DIExpression()), !dbg !6553
  store i32 64, ptr %count, align 4, !dbg !6553
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6554
  %call = call i32 @mmio_resource_enabled(ptr noundef %0, i32 noundef 0) #13, !dbg !6556
  %tobool = icmp ne i32 %call, 0, !dbg !6556
  br i1 %tobool, label %if.end, label %if.then, !dbg !6557

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6558

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !6559
  %call1 = call ptr @pci_ioremap_bar(ptr noundef %1, i32 noundef 0) #13, !dbg !6560
  store ptr %call1, ptr %base, align 8, !dbg !6561
  %2 = load ptr, ptr %base, align 8, !dbg !6562
  %cmp = icmp eq ptr %2, null, !dbg !6564
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6565

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6566

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %base, align 8, !dbg !6567
  %call4 = call zeroext i8 @readb(ptr noundef %3) #13, !dbg !6568
  store i8 %call4, ptr %cap_length, align 1, !dbg !6569
  %4 = load ptr, ptr %base, align 8, !dbg !6570
  %5 = load i8, ptr %cap_length, align 1, !dbg !6571
  %conv = zext i8 %5 to i32, !dbg !6571
  %idx.ext = sext i32 %conv to i64, !dbg !6572
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !6572
  store ptr %add.ptr, ptr %op_reg_base, align 8, !dbg !6573
  %6 = load ptr, ptr %base, align 8, !dbg !6574
  %add.ptr5 = getelementptr i8, ptr %6, i64 8, !dbg !6575
  %call6 = call i32 @readl(ptr noundef %add.ptr5) #13, !dbg !6576
  store i32 %call6, ptr %hcc_params, align 4, !dbg !6577
  %7 = load ptr, ptr %pdev.addr, align 8, !dbg !6578
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 7, !dbg !6580
  %8 = load i16, ptr %vendor, align 4, !dbg !6580
  %conv7 = zext i16 %8 to i32, !dbg !6578
  %cmp8 = icmp eq i32 %conv7, 20, !dbg !6581
  br i1 %cmp8, label %land.lhs.true, label %if.end16, !dbg !6582

land.lhs.true:                                    ; preds = %if.end3
  %9 = load ptr, ptr %pdev.addr, align 8, !dbg !6583
  %device = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8, !dbg !6584
  %10 = load i16, ptr %device, align 2, !dbg !6584
  %conv10 = zext i16 %10 to i32, !dbg !6583
  %cmp11 = icmp eq i32 %conv10, 31252, !dbg !6585
  br i1 %cmp11, label %if.then13, label %if.end16, !dbg !6586

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i32, ptr %hcc_params, align 4, !dbg !6587
  %conv14 = zext i32 %11 to i64, !dbg !6587
  %and = and i64 %conv14, -65281, !dbg !6587
  %conv15 = trunc i64 %and to i32, !dbg !6587
  store i32 %conv15, ptr %hcc_params, align 4, !dbg !6587
  br label %if.end16, !dbg !6588

if.end16:                                         ; preds = %if.then13, %land.lhs.true, %if.end3
  %12 = load i32, ptr %hcc_params, align 4, !dbg !6589
  %shr = lshr i32 %12, 8, !dbg !6590
  %and17 = and i32 %shr, 255, !dbg !6591
  %conv18 = trunc i32 %and17 to i8, !dbg !6592
  store i8 %conv18, ptr %offset, align 1, !dbg !6593
  br label %while.cond, !dbg !6594

while.cond:                                       ; preds = %sw.epilog, %if.end16
  %13 = load i8, ptr %offset, align 1, !dbg !6595
  %conv19 = zext i8 %13 to i32, !dbg !6595
  %tobool20 = icmp ne i32 %conv19, 0, !dbg !6595
  br i1 %tobool20, label %land.rhs, label %land.end, !dbg !6596

land.rhs:                                         ; preds = %while.cond
  %14 = load i32, ptr %count, align 4, !dbg !6597
  %dec = add i32 %14, -1, !dbg !6597
  store i32 %dec, ptr %count, align 4, !dbg !6597
  %tobool21 = icmp ne i32 %dec, 0, !dbg !6596
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %tobool21, %land.rhs ], !dbg !6598
  br i1 %15, label %while.body, label %while.end, !dbg !6594

while.body:                                       ; preds = %land.end
  %16 = load ptr, ptr %pdev.addr, align 8, !dbg !6599
  %17 = load i8, ptr %offset, align 1, !dbg !6601
  %conv22 = zext i8 %17 to i32, !dbg !6601
  %call23 = call i32 @pci_read_config_dword(ptr noundef %16, i32 noundef %conv22, ptr noundef %cap) #13, !dbg !6602
  %18 = load i32, ptr %cap, align 4, !dbg !6603
  %and24 = and i32 %18, 255, !dbg !6604
  switch i32 %and24, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb25
  ], !dbg !6605

sw.bb:                                            ; preds = %while.body
  %19 = load ptr, ptr %pdev.addr, align 8, !dbg !6606
  %20 = load ptr, ptr %op_reg_base, align 8, !dbg !6608
  %21 = load i32, ptr %cap, align 4, !dbg !6609
  %22 = load i8, ptr %offset, align 1, !dbg !6610
  call void @ehci_bios_handoff(ptr noundef %19, ptr noundef %20, i32 noundef %21, i8 noundef zeroext %22) #13, !dbg !6611
  br label %sw.epilog, !dbg !6612

sw.bb25:                                          ; preds = %while.body
  store i32 0, ptr %cap, align 4, !dbg !6613
  br label %sw.default, !dbg !6614

sw.default:                                       ; preds = %while.body, %sw.bb25
  br label %do.body, !dbg !6615

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !6617

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6617

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %pdev.addr, align 8, !dbg !6615
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 37, !dbg !6615
  %24 = load i32, ptr %cap, align 4, !dbg !6615
  %and26 = and i32 %24, 255, !dbg !6615
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.7, i32 noundef %and26) #14, !dbg !6615
  br label %sw.epilog, !dbg !6619

sw.epilog:                                        ; preds = %do.end, %sw.bb
  %25 = load i32, ptr %cap, align 4, !dbg !6620
  %shr27 = lshr i32 %25, 8, !dbg !6621
  %and28 = and i32 %shr27, 255, !dbg !6622
  %conv29 = trunc i32 %and28 to i8, !dbg !6623
  store i8 %conv29, ptr %offset, align 1, !dbg !6624
  br label %while.cond, !dbg !6594, !llvm.loop !6625

while.end:                                        ; preds = %land.end
  %26 = load i32, ptr %count, align 4, !dbg !6627
  %tobool30 = icmp ne i32 %26, 0, !dbg !6627
  br i1 %tobool30, label %if.end36, label %if.then31, !dbg !6629

if.then31:                                        ; preds = %while.end
  br label %do.body32, !dbg !6630

do.body32:                                        ; preds = %if.then31
  br label %do.cond33, !dbg !6632

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6632

do.end34:                                         ; preds = %do.cond33
  %27 = load ptr, ptr %pdev.addr, align 8, !dbg !6630
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 37, !dbg !6630
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.8, ptr noundef %dev35, ptr noundef @.str.9) #14, !dbg !6630
  br label %if.end36, !dbg !6634

if.end36:                                         ; preds = %do.end34, %while.end
  %28 = load ptr, ptr %op_reg_base, align 8, !dbg !6635
  %add.ptr37 = getelementptr i8, ptr %28, i64 4, !dbg !6636
  %call38 = call i32 @readl(ptr noundef %add.ptr37) #13, !dbg !6637
  store i32 %call38, ptr %val, align 4, !dbg !6638
  %29 = load i32, ptr %val, align 4, !dbg !6639
  %and39 = and i32 %29, 4096, !dbg !6641
  %cmp40 = icmp eq i32 %and39, 0, !dbg !6642
  br i1 %cmp40, label %if.then42, label %if.end61, !dbg !6643

if.then42:                                        ; preds = %if.end36
  %30 = load ptr, ptr %op_reg_base, align 8, !dbg !6644
  %add.ptr43 = getelementptr i8, ptr %30, i64 0, !dbg !6646
  %call44 = call i32 @readl(ptr noundef %add.ptr43) #13, !dbg !6647
  store i32 %call44, ptr %val, align 4, !dbg !6648
  %31 = load i32, ptr %val, align 4, !dbg !6649
  %and45 = and i32 %31, -2, !dbg !6649
  store i32 %and45, ptr %val, align 4, !dbg !6649
  %32 = load i32, ptr %val, align 4, !dbg !6650
  %33 = load ptr, ptr %op_reg_base, align 8, !dbg !6651
  %add.ptr46 = getelementptr i8, ptr %33, i64 0, !dbg !6652
  call void @writel(i32 noundef %32, ptr noundef %add.ptr46) #13, !dbg !6653
  store i32 2000, ptr %wait_time, align 4, !dbg !6654
  br label %do.body47, !dbg !6655

do.body47:                                        ; preds = %do.cond57, %if.then42
  %34 = load ptr, ptr %op_reg_base, align 8, !dbg !6656
  %add.ptr48 = getelementptr i8, ptr %34, i64 4, !dbg !6658
  call void @writel(i32 noundef 63, ptr noundef %add.ptr48) #13, !dbg !6659
  call void @__const_udelay(i64 noundef 429500) #13, !dbg !6660
  %35 = load i32, ptr %wait_time, align 4, !dbg !6665
  %sub = sub i32 %35, 100, !dbg !6665
  store i32 %sub, ptr %wait_time, align 4, !dbg !6665
  %36 = load ptr, ptr %op_reg_base, align 8, !dbg !6666
  %add.ptr49 = getelementptr i8, ptr %36, i64 4, !dbg !6667
  %call50 = call i32 @readl(ptr noundef %add.ptr49) #13, !dbg !6668
  store i32 %call50, ptr %val, align 4, !dbg !6669
  %37 = load i32, ptr %val, align 4, !dbg !6670
  %cmp51 = icmp eq i32 %37, -1, !dbg !6672
  br i1 %cmp51, label %if.then55, label %lor.lhs.false, !dbg !6673

lor.lhs.false:                                    ; preds = %do.body47
  %38 = load i32, ptr %val, align 4, !dbg !6674
  %and53 = and i32 %38, 4096, !dbg !6675
  %tobool54 = icmp ne i32 %and53, 0, !dbg !6675
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !6676

if.then55:                                        ; preds = %lor.lhs.false, %do.body47
  br label %do.end60, !dbg !6677

if.end56:                                         ; preds = %lor.lhs.false
  br label %do.cond57, !dbg !6679

do.cond57:                                        ; preds = %if.end56
  %39 = load i32, ptr %wait_time, align 4, !dbg !6680
  %cmp58 = icmp sgt i32 %39, 0, !dbg !6681
  br i1 %cmp58, label %do.body47, label %do.end60, !dbg !6679, !llvm.loop !6682

do.end60:                                         ; preds = %do.cond57, %if.then55
  br label %if.end61, !dbg !6684

if.end61:                                         ; preds = %do.end60, %if.end36
  %40 = load ptr, ptr %op_reg_base, align 8, !dbg !6685
  %add.ptr62 = getelementptr i8, ptr %40, i64 8, !dbg !6686
  call void @writel(i32 noundef 0, ptr noundef %add.ptr62) #13, !dbg !6687
  %41 = load ptr, ptr %op_reg_base, align 8, !dbg !6688
  %add.ptr63 = getelementptr i8, ptr %41, i64 4, !dbg !6689
  call void @writel(i32 noundef 63, ptr noundef %add.ptr63) #13, !dbg !6690
  %42 = load ptr, ptr %base, align 8, !dbg !6691
  call void @iounmap(ptr noundef %42) #13, !dbg !6692
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6693
  br label %cleanup, !dbg !6693

cleanup:                                          ; preds = %if.end61, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !6693
  call void @llvm.lifetime.end.p0(i64 4, ptr %wait_time) #12, !dbg !6693
  call void @llvm.lifetime.end.p0(i64 1, ptr %cap_length) #12, !dbg !6693
  call void @llvm.lifetime.end.p0(i64 1, ptr %offset) #12, !dbg !6693
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #12, !dbg !6693
  call void @llvm.lifetime.end.p0(i64 4, ptr %cap) #12, !dbg !6693
  call void @llvm.lifetime.end.p0(i64 4, ptr %hcc_params) #12, !dbg !6693
  call void @llvm.lifetime.end.p0(i64 8, ptr %op_reg_base) #12, !dbg !6693
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #12, !dbg !6693
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6693

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @quirk_usb_handoff_xhci(ptr noundef %pdev) #0 align 16 !dbg !6694 {
entry:
  %pdev.addr = alloca ptr, align 8
  %base = alloca ptr, align 8
  %ext_cap_offset = alloca i32, align 4
  %op_reg_base = alloca ptr, align 8
  %val = alloca i32, align 4
  %timeout = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6696, metadata !DIExpression()), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #12, !dbg !6706
  call void @llvm.dbg.declare(metadata ptr %base, metadata !6697, metadata !DIExpression()), !dbg !6707
  call void @llvm.lifetime.start.p0(i64 4, ptr %ext_cap_offset) #12, !dbg !6708
  call void @llvm.dbg.declare(metadata ptr %ext_cap_offset, metadata !6698, metadata !DIExpression()), !dbg !6709
  call void @llvm.lifetime.start.p0(i64 8, ptr %op_reg_base) #12, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %op_reg_base, metadata !6699, metadata !DIExpression()), !dbg !6711
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #12, !dbg !6712
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6700, metadata !DIExpression()), !dbg !6713
  call void @llvm.lifetime.start.p0(i64 4, ptr %timeout) #12, !dbg !6714
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !6701, metadata !DIExpression()), !dbg !6715
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #12, !dbg !6716
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6702, metadata !DIExpression()), !dbg !6717
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6718
  %resource = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !6718
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 0, !dbg !6718
  %end = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 1, !dbg !6718
  %1 = load i64, ptr %end, align 8, !dbg !6718
  %tobool = icmp ne i64 %1, 0, !dbg !6718
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6718

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !6718
  %resource1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 40, !dbg !6718
  %arrayidx2 = getelementptr [11 x %struct.resource], ptr %resource1, i64 0, i64 0, !dbg !6718
  %call = call i64 @resource_size(ptr noundef %arrayidx2) #13, !dbg !6718
  br label %cond.end, !dbg !6718

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6718

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ], !dbg !6718
  %conv = trunc i64 %cond to i32, !dbg !6718
  store i32 %conv, ptr %len, align 4, !dbg !6717
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !6719
  %call3 = call i32 @mmio_resource_enabled(ptr noundef %3, i32 noundef 0) #13, !dbg !6721
  %tobool4 = icmp ne i32 %call3, 0, !dbg !6721
  br i1 %tobool4, label %if.end, label %if.then, !dbg !6722

if.then:                                          ; preds = %cond.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6723

if.end:                                           ; preds = %cond.end
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !6724
  %resource5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 40, !dbg !6724
  %arrayidx6 = getelementptr [11 x %struct.resource], ptr %resource5, i64 0, i64 0, !dbg !6724
  %start = getelementptr inbounds %struct.resource, ptr %arrayidx6, i32 0, i32 0, !dbg !6724
  %5 = load i64, ptr %start, align 8, !dbg !6724
  %6 = load i32, ptr %len, align 4, !dbg !6725
  %conv7 = sext i32 %6 to i64, !dbg !6725
  %call8 = call ptr @ioremap(i64 noundef %5, i64 noundef %conv7) #13, !dbg !6726
  store ptr %call8, ptr %base, align 8, !dbg !6727
  %7 = load ptr, ptr %base, align 8, !dbg !6728
  %cmp = icmp eq ptr %7, null, !dbg !6730
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !6731

if.then10:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6732

if.end11:                                         ; preds = %if.end
  %8 = load ptr, ptr %base, align 8, !dbg !6733
  %call12 = call i32 @xhci_find_next_ext_cap(ptr noundef %8, i32 noundef 0, i32 noundef 1) #13, !dbg !6734
  store i32 %call12, ptr %ext_cap_offset, align 4, !dbg !6735
  %9 = load i32, ptr %ext_cap_offset, align 4, !dbg !6736
  %tobool13 = icmp ne i32 %9, 0, !dbg !6736
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !6738

if.then14:                                        ; preds = %if.end11
  br label %hc_init, !dbg !6739

if.end15:                                         ; preds = %if.end11
  %10 = load i32, ptr %ext_cap_offset, align 4, !dbg !6740
  %conv16 = sext i32 %10 to i64, !dbg !6740
  %add = add i64 %conv16, 4, !dbg !6742
  %11 = load i32, ptr %len, align 4, !dbg !6743
  %conv17 = sext i32 %11 to i64, !dbg !6743
  %cmp18 = icmp ugt i64 %add, %conv17, !dbg !6744
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !6745

if.then20:                                        ; preds = %if.end15
  br label %do.body, !dbg !6746

do.body:                                          ; preds = %if.then20
  br label %do.cond, !dbg !6749

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6749

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %pdev.addr, align 8, !dbg !6746
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37, !dbg !6746
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.11) #14, !dbg !6746
  br label %iounmap, !dbg !6751

if.end21:                                         ; preds = %if.end15
  %13 = load ptr, ptr %base, align 8, !dbg !6752
  %14 = load i32, ptr %ext_cap_offset, align 4, !dbg !6753
  %idx.ext = sext i32 %14 to i64, !dbg !6754
  %add.ptr = getelementptr i8, ptr %13, i64 %idx.ext, !dbg !6754
  %call22 = call i32 @readl(ptr noundef %add.ptr) #13, !dbg !6755
  store i32 %call22, ptr %val, align 4, !dbg !6756
  %15 = load ptr, ptr %pdev.addr, align 8, !dbg !6757
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 7, !dbg !6759
  %16 = load i16, ptr %vendor, align 4, !dbg !6759
  %conv23 = zext i16 %16 to i32, !dbg !6757
  %cmp24 = icmp eq i32 %conv23, 4172, !dbg !6760
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false, !dbg !6761

land.lhs.true:                                    ; preds = %if.end21
  %17 = load ptr, ptr %pdev.addr, align 8, !dbg !6762
  %device = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 8, !dbg !6763
  %18 = load i16, ptr %device, align 2, !dbg !6763
  %conv26 = zext i16 %18 to i32, !dbg !6762
  %cmp27 = icmp eq i32 %conv26, 33345, !dbg !6764
  br i1 %cmp27, label %if.then38, label %lor.lhs.false, !dbg !6765

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end21
  %19 = load ptr, ptr %pdev.addr, align 8, !dbg !6766
  %vendor29 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 7, !dbg !6767
  %20 = load i16, ptr %vendor29, align 4, !dbg !6767
  %conv30 = zext i16 %20 to i32, !dbg !6766
  %cmp31 = icmp eq i32 %conv30, 6418, !dbg !6768
  br i1 %cmp31, label %land.lhs.true33, label %if.end41, !dbg !6769

land.lhs.true33:                                  ; preds = %lor.lhs.false
  %21 = load ptr, ptr %pdev.addr, align 8, !dbg !6770
  %device34 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 8, !dbg !6771
  %22 = load i16, ptr %device34, align 2, !dbg !6771
  %conv35 = zext i16 %22 to i32, !dbg !6770
  %cmp36 = icmp eq i32 %conv35, 20, !dbg !6772
  br i1 %cmp36, label %if.then38, label %if.end41, !dbg !6773

if.then38:                                        ; preds = %land.lhs.true33, %land.lhs.true
  %23 = load i32, ptr %val, align 4, !dbg !6774
  %or = or i32 %23, 16777216, !dbg !6776
  %and = and i32 %or, -65537, !dbg !6777
  store i32 %and, ptr %val, align 4, !dbg !6778
  %24 = load i32, ptr %val, align 4, !dbg !6779
  %25 = load ptr, ptr %base, align 8, !dbg !6780
  %26 = load i32, ptr %ext_cap_offset, align 4, !dbg !6781
  %idx.ext39 = sext i32 %26 to i64, !dbg !6782
  %add.ptr40 = getelementptr i8, ptr %25, i64 %idx.ext39, !dbg !6782
  call void @writel(i32 noundef %24, ptr noundef %add.ptr40) #13, !dbg !6783
  br label %if.end41, !dbg !6784

if.end41:                                         ; preds = %if.then38, %land.lhs.true33, %lor.lhs.false
  %27 = load i32, ptr %val, align 4, !dbg !6785
  %and42 = and i32 %27, 65536, !dbg !6787
  %tobool43 = icmp ne i32 %and42, 0, !dbg !6787
  br i1 %tobool43, label %if.then44, label %if.end61, !dbg !6788

if.then44:                                        ; preds = %if.end41
  %28 = load i32, ptr %val, align 4, !dbg !6789
  %or45 = or i32 %28, 16777216, !dbg !6791
  %29 = load ptr, ptr %base, align 8, !dbg !6792
  %30 = load i32, ptr %ext_cap_offset, align 4, !dbg !6793
  %idx.ext46 = sext i32 %30 to i64, !dbg !6794
  %add.ptr47 = getelementptr i8, ptr %29, i64 %idx.ext46, !dbg !6794
  call void @writel(i32 noundef %or45, ptr noundef %add.ptr47) #13, !dbg !6795
  %31 = load ptr, ptr %base, align 8, !dbg !6796
  %32 = load i32, ptr %ext_cap_offset, align 4, !dbg !6797
  %idx.ext48 = sext i32 %32 to i64, !dbg !6798
  %add.ptr49 = getelementptr i8, ptr %31, i64 %idx.ext48, !dbg !6798
  %call50 = call i32 @handshake(ptr noundef %add.ptr49, i32 noundef 65536, i32 noundef 0, i32 noundef 1000000, i32 noundef 10) #13, !dbg !6799
  store i32 %call50, ptr %timeout, align 4, !dbg !6800
  %33 = load i32, ptr %timeout, align 4, !dbg !6801
  %tobool51 = icmp ne i32 %33, 0, !dbg !6801
  br i1 %tobool51, label %if.then52, label %if.end60, !dbg !6803

if.then52:                                        ; preds = %if.then44
  br label %do.body53, !dbg !6804

do.body53:                                        ; preds = %if.then52
  br label %do.cond54, !dbg !6807

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !6807

do.end55:                                         ; preds = %do.cond54
  %34 = load ptr, ptr %pdev.addr, align 8, !dbg !6804
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 37, !dbg !6804
  %35 = load i32, ptr %val, align 4, !dbg !6804
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev56, ptr noundef @.str.12, i32 noundef %35) #14, !dbg !6804
  %36 = load i32, ptr %val, align 4, !dbg !6809
  %and57 = and i32 %36, -65537, !dbg !6810
  %37 = load ptr, ptr %base, align 8, !dbg !6811
  %38 = load i32, ptr %ext_cap_offset, align 4, !dbg !6812
  %idx.ext58 = sext i32 %38 to i64, !dbg !6813
  %add.ptr59 = getelementptr i8, ptr %37, i64 %idx.ext58, !dbg !6813
  call void @writel(i32 noundef %and57, ptr noundef %add.ptr59) #13, !dbg !6814
  br label %if.end60, !dbg !6815

if.end60:                                         ; preds = %do.end55, %if.then44
  br label %if.end61, !dbg !6816

if.end61:                                         ; preds = %if.end60, %if.end41
  %39 = load ptr, ptr %base, align 8, !dbg !6817
  %40 = load i32, ptr %ext_cap_offset, align 4, !dbg !6818
  %idx.ext62 = sext i32 %40 to i64, !dbg !6819
  %add.ptr63 = getelementptr i8, ptr %39, i64 %idx.ext62, !dbg !6819
  %add.ptr64 = getelementptr i8, ptr %add.ptr63, i64 4, !dbg !6820
  %call65 = call i32 @readl(ptr noundef %add.ptr64) #13, !dbg !6821
  store i32 %call65, ptr %val, align 4, !dbg !6822
  %41 = load i32, ptr %val, align 4, !dbg !6823
  %and66 = and i32 %41, 925678, !dbg !6823
  store i32 %and66, ptr %val, align 4, !dbg !6823
  %42 = load i32, ptr %val, align 4, !dbg !6824
  %or67 = or i32 %42, -536870912, !dbg !6824
  store i32 %or67, ptr %val, align 4, !dbg !6824
  %43 = load i32, ptr %val, align 4, !dbg !6825
  %44 = load ptr, ptr %base, align 8, !dbg !6826
  %45 = load i32, ptr %ext_cap_offset, align 4, !dbg !6827
  %idx.ext68 = sext i32 %45 to i64, !dbg !6828
  %add.ptr69 = getelementptr i8, ptr %44, i64 %idx.ext68, !dbg !6828
  %add.ptr70 = getelementptr i8, ptr %add.ptr69, i64 4, !dbg !6829
  call void @writel(i32 noundef %43, ptr noundef %add.ptr70) #13, !dbg !6830
  br label %hc_init, !dbg !6830

hc_init:                                          ; preds = %if.end61, %if.then14
  call void @llvm.dbg.label(metadata !6703), !dbg !6831
  %46 = load ptr, ptr %pdev.addr, align 8, !dbg !6832
  %vendor71 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 7, !dbg !6834
  %47 = load i16, ptr %vendor71, align 4, !dbg !6834
  %conv72 = zext i16 %47 to i32, !dbg !6832
  %cmp73 = icmp eq i32 %conv72, 32902, !dbg !6835
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !6836

if.then75:                                        ; preds = %hc_init
  %48 = load ptr, ptr %pdev.addr, align 8, !dbg !6837
  call void @usb_enable_intel_xhci_ports(ptr noundef %48) #13, !dbg !6838
  br label %if.end76, !dbg !6838

if.end76:                                         ; preds = %if.then75, %hc_init
  %49 = load ptr, ptr %base, align 8, !dbg !6839
  %50 = load ptr, ptr %base, align 8, !dbg !6840
  %call77 = call i32 @readl(ptr noundef %50) #13, !dbg !6840
  %shr = lshr i32 %call77, 0, !dbg !6840
  %and78 = and i32 %shr, 255, !dbg !6840
  %idx.ext79 = zext i32 %and78 to i64, !dbg !6841
  %add.ptr80 = getelementptr i8, ptr %49, i64 %idx.ext79, !dbg !6841
  store ptr %add.ptr80, ptr %op_reg_base, align 8, !dbg !6842
  %51 = load ptr, ptr %op_reg_base, align 8, !dbg !6843
  %add.ptr81 = getelementptr i8, ptr %51, i64 4, !dbg !6844
  %call82 = call i32 @handshake(ptr noundef %add.ptr81, i32 noundef 2048, i32 noundef 0, i32 noundef 5000000, i32 noundef 10) #13, !dbg !6845
  store i32 %call82, ptr %timeout, align 4, !dbg !6846
  %52 = load i32, ptr %timeout, align 4, !dbg !6847
  %tobool83 = icmp ne i32 %52, 0, !dbg !6847
  br i1 %tobool83, label %if.then84, label %if.end91, !dbg !6849

if.then84:                                        ; preds = %if.end76
  %53 = load ptr, ptr %op_reg_base, align 8, !dbg !6850
  %add.ptr85 = getelementptr i8, ptr %53, i64 4, !dbg !6852
  %call86 = call i32 @readl(ptr noundef %add.ptr85) #13, !dbg !6853
  store i32 %call86, ptr %val, align 4, !dbg !6854
  br label %do.body87, !dbg !6855

do.body87:                                        ; preds = %if.then84
  br label %do.cond88, !dbg !6857

do.cond88:                                        ; preds = %do.body87
  br label %do.end89, !dbg !6857

do.end89:                                         ; preds = %do.cond88
  %54 = load ptr, ptr %pdev.addr, align 8, !dbg !6855
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 37, !dbg !6855
  %55 = load i32, ptr %val, align 4, !dbg !6855
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev90, ptr noundef @.str.13, i32 noundef %55) #14, !dbg !6855
  br label %if.end91, !dbg !6859

if.end91:                                         ; preds = %do.end89, %if.end76
  %56 = load ptr, ptr %op_reg_base, align 8, !dbg !6860
  %add.ptr92 = getelementptr i8, ptr %56, i64 0, !dbg !6861
  %call93 = call i32 @readl(ptr noundef %add.ptr92) #13, !dbg !6862
  store i32 %call93, ptr %val, align 4, !dbg !6863
  %57 = load i32, ptr %val, align 4, !dbg !6864
  %and94 = and i32 %57, -1038, !dbg !6864
  store i32 %and94, ptr %val, align 4, !dbg !6864
  %58 = load i32, ptr %val, align 4, !dbg !6865
  %59 = load ptr, ptr %op_reg_base, align 8, !dbg !6866
  %add.ptr95 = getelementptr i8, ptr %59, i64 0, !dbg !6867
  call void @writel(i32 noundef %58, ptr noundef %add.ptr95) #13, !dbg !6868
  %60 = load ptr, ptr %op_reg_base, align 8, !dbg !6869
  %add.ptr96 = getelementptr i8, ptr %60, i64 4, !dbg !6870
  %call97 = call i32 @handshake(ptr noundef %add.ptr96, i32 noundef 1, i32 noundef 1, i32 noundef 32000, i32 noundef 125) #13, !dbg !6871
  store i32 %call97, ptr %timeout, align 4, !dbg !6872
  %61 = load i32, ptr %timeout, align 4, !dbg !6873
  %tobool98 = icmp ne i32 %61, 0, !dbg !6873
  br i1 %tobool98, label %if.then99, label %if.end106, !dbg !6875

if.then99:                                        ; preds = %if.end91
  %62 = load ptr, ptr %op_reg_base, align 8, !dbg !6876
  %add.ptr100 = getelementptr i8, ptr %62, i64 4, !dbg !6878
  %call101 = call i32 @readl(ptr noundef %add.ptr100) #13, !dbg !6879
  store i32 %call101, ptr %val, align 4, !dbg !6880
  br label %do.body102, !dbg !6881

do.body102:                                       ; preds = %if.then99
  br label %do.cond103, !dbg !6883

do.cond103:                                       ; preds = %do.body102
  br label %do.end104, !dbg !6883

do.end104:                                        ; preds = %do.cond103
  %63 = load ptr, ptr %pdev.addr, align 8, !dbg !6881
  %dev105 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 37, !dbg !6881
  %64 = load i32, ptr %val, align 4, !dbg !6881
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev105, ptr noundef @.str.14, i32 noundef 32000, i32 noundef %64) #14, !dbg !6881
  br label %if.end106, !dbg !6885

if.end106:                                        ; preds = %do.end104, %if.end91
  br label %iounmap, !dbg !6873

iounmap:                                          ; preds = %if.end106, %do.end
  call void @llvm.dbg.label(metadata !6704), !dbg !6886
  %65 = load ptr, ptr %base, align 8, !dbg !6887
  call void @iounmap(ptr noundef %65) #13, !dbg !6888
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6889
  br label %cleanup, !dbg !6889

cleanup:                                          ; preds = %iounmap, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #12, !dbg !6889
  call void @llvm.lifetime.end.p0(i64 4, ptr %timeout) #12, !dbg !6889
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #12, !dbg !6889
  call void @llvm.lifetime.end.p0(i64 8, ptr %op_reg_base) #12, !dbg !6889
  call void @llvm.lifetime.end.p0(i64 4, ptr %ext_cap_offset) #12, !dbg !6889
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #12, !dbg !6889
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6889

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6890 dso_local void @pci_disable_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @io_type_enabled(ptr noundef %pdev, i32 noundef %mask) #8 align 16 !dbg !6891 {
entry:
  %pdev.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %cmd = alloca i16, align 2
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6895, metadata !DIExpression()), !dbg !6898
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6896, metadata !DIExpression()), !dbg !6899
  call void @llvm.lifetime.start.p0(i64 2, ptr %cmd) #12, !dbg !6900
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !6897, metadata !DIExpression()), !dbg !6901
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6902
  %call = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef %cmd) #13, !dbg !6903
  %tobool = icmp ne i32 %call, 0, !dbg !6903
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !6904

land.rhs:                                         ; preds = %entry
  %1 = load i16, ptr %cmd, align 2, !dbg !6905
  %conv = zext i16 %1 to i32, !dbg !6905
  %2 = load i32, ptr %mask.addr, align 4, !dbg !6906
  %and = and i32 %conv, %2, !dbg !6907
  %tobool1 = icmp ne i32 %and, 0, !dbg !6904
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6908
  %land.ext = zext i1 %3 to i32, !dbg !6904
  call void @llvm.lifetime.end.p0(i64 2, ptr %cmd) #12, !dbg !6909
  ret i32 %land.ext, !dbg !6910
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mmio_resource_enabled(ptr noundef %pdev, i32 noundef %idx) #0 align 16 !dbg !6911 {
entry:
  %pdev.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6913, metadata !DIExpression()), !dbg !6915
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6914, metadata !DIExpression()), !dbg !6916
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6917
  %resource = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !6917
  %1 = load i32, ptr %idx.addr, align 4, !dbg !6917
  %idxprom = sext i32 %1 to i64, !dbg !6917
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !6917
  %start = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 0, !dbg !6917
  %2 = load i64, ptr %start, align 8, !dbg !6917
  %tobool = icmp ne i64 %2, 0, !dbg !6917
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6918

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !6919
  %call = call i32 @io_type_enabled(ptr noundef %3, i32 noundef 2) #13, !dbg !6919
  %tobool1 = icmp ne i32 %call, 0, !dbg !6918
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6920
  %land.ext = zext i1 %4 to i32, !dbg !6918
  ret i32 %land.ext, !dbg !6921
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6922 dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #8 align 16 !dbg !6925 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6932, metadata !DIExpression()), !dbg !6934
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !6934
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6933, metadata !DIExpression()), !dbg !6934
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6934
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #12, !dbg !6934, !srcloc !6935
  store i32 %1, ptr %ret, align 4, !dbg !6934
  %2 = load i32, ptr %ret, align 4, !dbg !6934
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !6934
  ret i32 %2, !dbg !6934
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #8 align 16 !dbg !6936 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6941, metadata !DIExpression()), !dbg !6943
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6942, metadata !DIExpression()), !dbg !6943
  %0 = load i32, ptr %val.addr, align 4, !dbg !6943
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6943
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #12, !dbg !6943, !srcloc !6944
  ret void, !dbg !6943
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6945 dso_local void @msleep(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6949 dso_local void @iounmap(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @readb(ptr noundef %addr) #8 align 16 !dbg !6952 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6956, metadata !DIExpression()), !dbg !6958
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #12, !dbg !6958
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6957, metadata !DIExpression()), !dbg !6958
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6958
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0) #12, !dbg !6958, !srcloc !6959
  store i8 %1, ptr %ret, align 1, !dbg !6958
  %2 = load i8, ptr %ret, align 1, !dbg !6958
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #12, !dbg !6958
  ret i8 %2, !dbg !6958
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ehci_bios_handoff(ptr noundef %pdev, ptr noundef %op_reg_base, i32 noundef %cap, i8 noundef zeroext %offset) #0 align 16 !dbg !6960 {
entry:
  %pdev.addr = alloca ptr, align 8
  %op_reg_base.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  %offset.addr = alloca i8, align 1
  %try_handoff = alloca i32, align 4
  %tried_handoff = alloca i32, align 4
  %msec = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6964, metadata !DIExpression()), !dbg !6973
  store ptr %op_reg_base, ptr %op_reg_base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op_reg_base.addr, metadata !6965, metadata !DIExpression()), !dbg !6974
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6966, metadata !DIExpression()), !dbg !6975
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6967, metadata !DIExpression()), !dbg !6976
  call void @llvm.lifetime.start.p0(i64 4, ptr %try_handoff) #12, !dbg !6977
  call void @llvm.dbg.declare(metadata ptr %try_handoff, metadata !6968, metadata !DIExpression()), !dbg !6978
  store i32 1, ptr %try_handoff, align 4, !dbg !6978
  call void @llvm.lifetime.start.p0(i64 4, ptr %tried_handoff) #12, !dbg !6977
  call void @llvm.dbg.declare(metadata ptr %tried_handoff, metadata !6969, metadata !DIExpression()), !dbg !6979
  store i32 0, ptr %tried_handoff, align 4, !dbg !6979
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6980
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7, !dbg !6982
  %1 = load i16, ptr %vendor, align 4, !dbg !6982
  %conv = zext i16 %1 to i32, !dbg !6980
  %cmp = icmp eq i32 %conv, 32902, !dbg !6983
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !6984

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !6985
  %device = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8, !dbg !6986
  %3 = load i16, ptr %device, align 2, !dbg !6986
  %conv2 = zext i16 %3 to i32, !dbg !6985
  %cmp3 = icmp eq i32 %conv2, 10298, !dbg !6987
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !6988

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !6989
  %device5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8, !dbg !6990
  %5 = load i16, ptr %device5, align 2, !dbg !6990
  %conv6 = zext i16 %5 to i32, !dbg !6989
  %cmp7 = icmp eq i32 %conv6, 10188, !dbg !6991
  br i1 %cmp7, label %if.then, label %if.end10, !dbg !6992

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call = call i32 @dmi_check_system(ptr noundef @ehci_dmi_nohandoff_table) #13, !dbg !6993
  %tobool = icmp ne i32 %call, 0, !dbg !6993
  br i1 %tobool, label %if.then9, label %if.end, !dbg !6996

if.then9:                                         ; preds = %if.then
  store i32 0, ptr %try_handoff, align 4, !dbg !6997
  br label %if.end, !dbg !6998

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end10, !dbg !6999

if.end10:                                         ; preds = %if.end, %lor.lhs.false, %entry
  %6 = load i32, ptr %try_handoff, align 4, !dbg !7000
  %tobool11 = icmp ne i32 %6, 0, !dbg !7000
  br i1 %tobool11, label %land.lhs.true12, label %if.end17, !dbg !7002

land.lhs.true12:                                  ; preds = %if.end10
  %7 = load i32, ptr %cap.addr, align 4, !dbg !7003
  %and = and i32 %7, 65536, !dbg !7004
  %tobool13 = icmp ne i32 %and, 0, !dbg !7004
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !7005

if.then14:                                        ; preds = %land.lhs.true12
  %8 = load ptr, ptr %pdev.addr, align 8, !dbg !7006
  %9 = load i8, ptr %offset.addr, align 1, !dbg !7008
  %conv15 = zext i8 %9 to i32, !dbg !7008
  %add = add i32 %conv15, 3, !dbg !7009
  %call16 = call i32 @pci_write_config_byte(ptr noundef %8, i32 noundef %add, i8 noundef zeroext 1) #13, !dbg !7010
  br label %if.end17, !dbg !7011

if.end17:                                         ; preds = %if.then14, %land.lhs.true12, %if.end10
  %10 = load i32, ptr %try_handoff, align 4, !dbg !7012
  %tobool18 = icmp ne i32 %10, 0, !dbg !7012
  br i1 %tobool18, label %if.then19, label %if.end26, !dbg !7013

if.then19:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr %msec) #12, !dbg !7014
  call void @llvm.dbg.declare(metadata ptr %msec, metadata !6970, metadata !DIExpression()), !dbg !7015
  store i32 1000, ptr %msec, align 4, !dbg !7015
  br label %while.cond, !dbg !7016

while.cond:                                       ; preds = %while.body, %if.then19
  %11 = load i32, ptr %cap.addr, align 4, !dbg !7017
  %and20 = and i32 %11, 65536, !dbg !7018
  %tobool21 = icmp ne i32 %and20, 0, !dbg !7018
  br i1 %tobool21, label %land.rhs, label %land.end, !dbg !7019

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, ptr %msec, align 4, !dbg !7020
  %cmp22 = icmp sgt i32 %12, 0, !dbg !7021
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ], !dbg !7022
  br i1 %13, label %while.body, label %while.end, !dbg !7016

while.body:                                       ; preds = %land.end
  store i32 1, ptr %tried_handoff, align 4, !dbg !7023
  call void @msleep(i32 noundef 10) #13, !dbg !7025
  %14 = load i32, ptr %msec, align 4, !dbg !7026
  %sub = sub i32 %14, 10, !dbg !7026
  store i32 %sub, ptr %msec, align 4, !dbg !7026
  %15 = load ptr, ptr %pdev.addr, align 8, !dbg !7027
  %16 = load i8, ptr %offset.addr, align 1, !dbg !7028
  %conv24 = zext i8 %16 to i32, !dbg !7028
  %call25 = call i32 @pci_read_config_dword(ptr noundef %15, i32 noundef %conv24, ptr noundef %cap.addr) #13, !dbg !7029
  br label %while.cond, !dbg !7016, !llvm.loop !7030

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %msec) #12, !dbg !7032
  br label %if.end26, !dbg !7033

if.end26:                                         ; preds = %while.end, %if.end17
  %17 = load i32, ptr %cap.addr, align 4, !dbg !7034
  %and27 = and i32 %17, 65536, !dbg !7036
  %tobool28 = icmp ne i32 %and27, 0, !dbg !7036
  br i1 %tobool28, label %if.then29, label %if.end36, !dbg !7037

if.then29:                                        ; preds = %if.end26
  %18 = load i32, ptr %try_handoff, align 4, !dbg !7038
  %tobool30 = icmp ne i32 %18, 0, !dbg !7038
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !7041

if.then31:                                        ; preds = %if.then29
  br label %do.body, !dbg !7042

do.body:                                          ; preds = %if.then31
  br label %do.cond, !dbg !7044

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7044

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %pdev.addr, align 8, !dbg !7042
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 37, !dbg !7042
  %20 = load i32, ptr %cap.addr, align 4, !dbg !7042
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.10, i32 noundef %20) #14, !dbg !7042
  br label %if.end32, !dbg !7046

if.end32:                                         ; preds = %do.end, %if.then29
  %21 = load ptr, ptr %pdev.addr, align 8, !dbg !7047
  %22 = load i8, ptr %offset.addr, align 1, !dbg !7048
  %conv33 = zext i8 %22 to i32, !dbg !7048
  %add34 = add i32 %conv33, 2, !dbg !7049
  %call35 = call i32 @pci_write_config_byte(ptr noundef %21, i32 noundef %add34, i8 noundef zeroext 0) #13, !dbg !7050
  br label %if.end36, !dbg !7051

if.end36:                                         ; preds = %if.end32, %if.end26
  %23 = load ptr, ptr %pdev.addr, align 8, !dbg !7052
  %24 = load i8, ptr %offset.addr, align 1, !dbg !7053
  %conv37 = zext i8 %24 to i32, !dbg !7053
  %add38 = add i32 %conv37, 4, !dbg !7054
  %call39 = call i32 @pci_write_config_dword(ptr noundef %23, i32 noundef %add38, i32 noundef 0) #13, !dbg !7055
  %25 = load i32, ptr %tried_handoff, align 4, !dbg !7056
  %tobool40 = icmp ne i32 %25, 0, !dbg !7056
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !7058

if.then41:                                        ; preds = %if.end36
  %26 = load ptr, ptr %op_reg_base.addr, align 8, !dbg !7059
  %add.ptr = getelementptr i8, ptr %26, i64 64, !dbg !7060
  call void @writel(i32 noundef 0, ptr noundef %add.ptr) #13, !dbg !7061
  br label %if.end42, !dbg !7061

if.end42:                                         ; preds = %if.then41, %if.end36
  call void @llvm.lifetime.end.p0(i64 4, ptr %tried_handoff) #12, !dbg !7062
  call void @llvm.lifetime.end.p0(i64 4, ptr %try_handoff) #12, !dbg !7062
  ret void, !dbg !7062
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7063 dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7066 dso_local i32 @dmi_check_system(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #8 align 16 !dbg !7068 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !7074, metadata !DIExpression()), !dbg !7075
  %0 = load ptr, ptr %res.addr, align 8, !dbg !7076
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !7077
  %1 = load i64, ptr %end, align 8, !dbg !7077
  %2 = load ptr, ptr %res.addr, align 8, !dbg !7078
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !7079
  %3 = load i64, ptr %start, align 8, !dbg !7079
  %sub = sub i64 %1, %3, !dbg !7080
  %add = add i64 %sub, 1, !dbg !7081
  ret i64 %add, !dbg !7082
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7083 dso_local ptr @ioremap(i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xhci_find_next_ext_cap(ptr noundef %base, i32 noundef %start, i32 noundef %id) #8 align 16 !dbg !7086 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %next = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !7091, metadata !DIExpression()), !dbg !7097
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !7092, metadata !DIExpression()), !dbg !7098
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !7093, metadata !DIExpression()), !dbg !7099
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #12, !dbg !7100
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7094, metadata !DIExpression()), !dbg !7101
  call void @llvm.lifetime.start.p0(i64 4, ptr %next) #12, !dbg !7102
  call void @llvm.dbg.declare(metadata ptr %next, metadata !7095, metadata !DIExpression()), !dbg !7103
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #12, !dbg !7104
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !7096, metadata !DIExpression()), !dbg !7105
  %0 = load i32, ptr %start.addr, align 4, !dbg !7106
  store i32 %0, ptr %offset, align 4, !dbg !7107
  %1 = load i32, ptr %start.addr, align 4, !dbg !7108
  %tobool = icmp ne i32 %1, 0, !dbg !7108
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !7110

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %start.addr, align 4, !dbg !7111
  %cmp = icmp eq i32 %2, 16, !dbg !7112
  br i1 %cmp, label %if.then, label %if.end6, !dbg !7113

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %base.addr, align 8, !dbg !7114
  %add.ptr = getelementptr i8, ptr %3, i64 16, !dbg !7116
  %call = call i32 @readl(ptr noundef %add.ptr) #13, !dbg !7117
  store i32 %call, ptr %val, align 4, !dbg !7118
  %4 = load i32, ptr %val, align 4, !dbg !7119
  %cmp1 = icmp eq i32 %4, -1, !dbg !7121
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !7122

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !7123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7123

if.end:                                           ; preds = %if.then
  %5 = load i32, ptr %val, align 4, !dbg !7124
  %shr = lshr i32 %5, 16, !dbg !7124
  %and = and i32 %shr, 65535, !dbg !7124
  %shl = shl i32 %and, 2, !dbg !7125
  store i32 %shl, ptr %offset, align 4, !dbg !7126
  %6 = load i32, ptr %offset, align 4, !dbg !7127
  %tobool3 = icmp ne i32 %6, 0, !dbg !7127
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !7129

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !7130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7130

if.end5:                                          ; preds = %if.end
  br label %if.end6, !dbg !7131

if.end6:                                          ; preds = %if.end5, %lor.lhs.false
  br label %do.body, !dbg !7132

do.body:                                          ; preds = %do.cond, %if.end6
  %7 = load ptr, ptr %base.addr, align 8, !dbg !7133
  %8 = load i32, ptr %offset, align 4, !dbg !7135
  %idx.ext = zext i32 %8 to i64, !dbg !7136
  %add.ptr7 = getelementptr i8, ptr %7, i64 %idx.ext, !dbg !7136
  %call8 = call i32 @readl(ptr noundef %add.ptr7) #13, !dbg !7137
  store i32 %call8, ptr %val, align 4, !dbg !7138
  %9 = load i32, ptr %val, align 4, !dbg !7139
  %cmp9 = icmp eq i32 %9, -1, !dbg !7141
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7142

if.then10:                                        ; preds = %do.body
  store i32 0, ptr %retval, align 4, !dbg !7143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7143

if.end11:                                         ; preds = %do.body
  %10 = load i32, ptr %offset, align 4, !dbg !7144
  %11 = load i32, ptr %start.addr, align 4, !dbg !7146
  %cmp12 = icmp ne i32 %10, %11, !dbg !7147
  br i1 %cmp12, label %land.lhs.true, label %if.end19, !dbg !7148

land.lhs.true:                                    ; preds = %if.end11
  %12 = load i32, ptr %id.addr, align 4, !dbg !7149
  %cmp13 = icmp eq i32 %12, 0, !dbg !7150
  br i1 %cmp13, label %if.then18, label %lor.lhs.false14, !dbg !7151

lor.lhs.false14:                                  ; preds = %land.lhs.true
  %13 = load i32, ptr %val, align 4, !dbg !7152
  %shr15 = lshr i32 %13, 0, !dbg !7152
  %and16 = and i32 %shr15, 255, !dbg !7152
  %14 = load i32, ptr %id.addr, align 4, !dbg !7153
  %cmp17 = icmp eq i32 %and16, %14, !dbg !7154
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !7155

if.then18:                                        ; preds = %lor.lhs.false14, %land.lhs.true
  %15 = load i32, ptr %offset, align 4, !dbg !7156
  store i32 %15, ptr %retval, align 4, !dbg !7157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7157

if.end19:                                         ; preds = %lor.lhs.false14, %if.end11
  %16 = load i32, ptr %val, align 4, !dbg !7158
  %shr20 = lshr i32 %16, 8, !dbg !7158
  %and21 = and i32 %shr20, 255, !dbg !7158
  store i32 %and21, ptr %next, align 4, !dbg !7159
  %17 = load i32, ptr %next, align 4, !dbg !7160
  %shl22 = shl i32 %17, 2, !dbg !7161
  %18 = load i32, ptr %offset, align 4, !dbg !7162
  %add = add i32 %18, %shl22, !dbg !7162
  store i32 %add, ptr %offset, align 4, !dbg !7162
  br label %do.cond, !dbg !7163

do.cond:                                          ; preds = %if.end19
  %19 = load i32, ptr %next, align 4, !dbg !7164
  %tobool23 = icmp ne i32 %19, 0, !dbg !7163
  br i1 %tobool23, label %do.body, label %do.end, !dbg !7163, !llvm.loop !7165

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !7167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7167

cleanup:                                          ; preds = %do.end, %if.then18, %if.then10, %if.then4, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #12, !dbg !7168
  call void @llvm.lifetime.end.p0(i64 4, ptr %next) #12, !dbg !7168
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #12, !dbg !7168
  %20 = load i32, ptr %retval, align 4, !dbg !7168
  ret i32 %20, !dbg !7168
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @handshake(ptr noundef %ptr, i32 noundef %mask, i32 noundef %done, i32 noundef %wait_usec, i32 noundef %delay_usec) #0 align 16 !dbg !7169 {
entry:
  %ptr.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %done.addr = alloca i32, align 4
  %wait_usec.addr = alloca i32, align 4
  %delay_usec.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__left_ns = alloca i64, align 8
  %__delay_us = alloca i64, align 8
  %__delay_ns = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7173, metadata !DIExpression()), !dbg !7184
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7174, metadata !DIExpression()), !dbg !7185
  store i32 %done, ptr %done.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !7175, metadata !DIExpression()), !dbg !7186
  store i32 %wait_usec, ptr %wait_usec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait_usec.addr, metadata !7176, metadata !DIExpression()), !dbg !7187
  store i32 %delay_usec, ptr %delay_usec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %delay_usec.addr, metadata !7177, metadata !DIExpression()), !dbg !7188
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #12, !dbg !7189
  call void @llvm.dbg.declare(metadata ptr %result, metadata !7178, metadata !DIExpression()), !dbg !7190
  call void @llvm.lifetime.start.p0(i64 8, ptr %__timeout_us) #12, !dbg !7191
  call void @llvm.dbg.declare(metadata ptr %__timeout_us, metadata !7179, metadata !DIExpression()), !dbg !7191
  %0 = load i32, ptr %wait_usec.addr, align 4, !dbg !7191
  %conv = sext i32 %0 to i64, !dbg !7191
  store i64 %conv, ptr %__timeout_us, align 8, !dbg !7191
  call void @llvm.lifetime.start.p0(i64 8, ptr %__left_ns) #12, !dbg !7191
  call void @llvm.dbg.declare(metadata ptr %__left_ns, metadata !7181, metadata !DIExpression()), !dbg !7191
  %1 = load i64, ptr %__timeout_us, align 8, !dbg !7191
  %mul = mul i64 %1, 1000, !dbg !7191
  store i64 %mul, ptr %__left_ns, align 8, !dbg !7191
  call void @llvm.lifetime.start.p0(i64 8, ptr %__delay_us) #12, !dbg !7191
  call void @llvm.dbg.declare(metadata ptr %__delay_us, metadata !7182, metadata !DIExpression()), !dbg !7191
  %2 = load i32, ptr %delay_usec.addr, align 4, !dbg !7191
  %conv1 = sext i32 %2 to i64, !dbg !7191
  store i64 %conv1, ptr %__delay_us, align 8, !dbg !7191
  call void @llvm.lifetime.start.p0(i64 8, ptr %__delay_ns) #12, !dbg !7191
  call void @llvm.dbg.declare(metadata ptr %__delay_ns, metadata !7183, metadata !DIExpression()), !dbg !7191
  %3 = load i64, ptr %__delay_us, align 8, !dbg !7191
  %mul2 = mul i64 %3, 1000, !dbg !7191
  store i64 %mul2, ptr %__delay_ns, align 8, !dbg !7191
  br label %for.cond, !dbg !7191

for.cond:                                         ; preds = %if.end25, %entry
  %4 = load ptr, ptr %ptr.addr, align 8, !dbg !7192
  %call = call i32 @readl(ptr noundef %4) #13, !dbg !7192
  store i32 %call, ptr %result, align 4, !dbg !7192
  %5 = load i32, ptr %result, align 4, !dbg !7196
  %6 = load i32, ptr %mask.addr, align 4, !dbg !7196
  %and = and i32 %5, %6, !dbg !7196
  %7 = load i32, ptr %done.addr, align 4, !dbg !7196
  %cmp = icmp eq i32 %and, %7, !dbg !7196
  br i1 %cmp, label %if.then, label %if.end, !dbg !7192

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !7196

if.end:                                           ; preds = %for.cond
  %8 = load i64, ptr %__timeout_us, align 8, !dbg !7198
  %tobool = icmp ne i64 %8, 0, !dbg !7198
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !7198

land.lhs.true:                                    ; preds = %if.end
  %9 = load i64, ptr %__left_ns, align 8, !dbg !7198
  %cmp4 = icmp slt i64 %9, 0, !dbg !7198
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !7192

if.then6:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !7200
  %call7 = call i32 @readl(ptr noundef %10) #13, !dbg !7200
  store i32 %call7, ptr %result, align 4, !dbg !7200
  br label %for.end, !dbg !7200

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %__delay_us, align 8, !dbg !7202
  %tobool9 = icmp ne i64 %11, 0, !dbg !7202
  br i1 %tobool9, label %if.then10, label %if.end22, !dbg !7192

if.then10:                                        ; preds = %if.end8
  %12 = load i64, ptr %__delay_us, align 8, !dbg !7204
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !7204
  br i1 %13, label %if.then11, label %if.else17, !dbg !7208

if.then11:                                        ; preds = %if.then10
  %14 = load i64, ptr %__delay_us, align 8, !dbg !7209
  %div = udiv i64 %14, 20000, !dbg !7209
  %cmp12 = icmp uge i64 %div, 1, !dbg !7209
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !7212

if.then14:                                        ; preds = %if.then11
  call void @__bad_udelay() #13, !dbg !7209
  br label %if.end16, !dbg !7209

if.else:                                          ; preds = %if.then11
  %15 = load i64, ptr %__delay_us, align 8, !dbg !7209
  %mul15 = mul i64 %15, 4295, !dbg !7209
  call void @__const_udelay(i64 noundef %mul15) #13, !dbg !7209
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  br label %if.end18, !dbg !7212

if.else17:                                        ; preds = %if.then10
  %16 = load i64, ptr %__delay_us, align 8, !dbg !7213
  call void @__udelay(i64 noundef %16) #13, !dbg !7213
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.end16
  %17 = load i64, ptr %__timeout_us, align 8, !dbg !7215
  %tobool19 = icmp ne i64 %17, 0, !dbg !7215
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !7217

if.then20:                                        ; preds = %if.end18
  %18 = load i64, ptr %__delay_ns, align 8, !dbg !7215
  %19 = load i64, ptr %__left_ns, align 8, !dbg !7215
  %sub = sub i64 %19, %18, !dbg !7215
  store i64 %sub, ptr %__left_ns, align 8, !dbg !7215
  br label %if.end21, !dbg !7215

if.end21:                                         ; preds = %if.then20, %if.end18
  br label %if.end22, !dbg !7217

if.end22:                                         ; preds = %if.end21, %if.end8
  call void @cpu_relax() #13, !dbg !7192
  %20 = load i64, ptr %__timeout_us, align 8, !dbg !7218
  %tobool23 = icmp ne i64 %20, 0, !dbg !7218
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !7192

if.then24:                                        ; preds = %if.end22
  %21 = load i64, ptr %__left_ns, align 8, !dbg !7218
  %dec = add i64 %21, -1, !dbg !7218
  store i64 %dec, ptr %__left_ns, align 8, !dbg !7218
  br label %if.end25, !dbg !7218

if.end25:                                         ; preds = %if.then24, %if.end22
  br label %for.cond, !dbg !7220, !llvm.loop !7221

for.end:                                          ; preds = %if.then6, %if.then
  %22 = load i32, ptr %result, align 4, !dbg !7191
  %23 = load i32, ptr %mask.addr, align 4, !dbg !7191
  %and26 = and i32 %22, %23, !dbg !7191
  %24 = load i32, ptr %done.addr, align 4, !dbg !7191
  %cmp27 = icmp eq i32 %and26, %24, !dbg !7191
  %25 = zext i1 %cmp27 to i64, !dbg !7191
  %cond = select i1 %cmp27, i32 0, i32 -110, !dbg !7191
  store i32 %cond, ptr %tmp, align 4, !dbg !7222
  call void @llvm.lifetime.end.p0(i64 8, ptr %__delay_ns) #12, !dbg !7223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__delay_us) #12, !dbg !7223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__left_ns) #12, !dbg !7223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__timeout_us) #12, !dbg !7223
  %26 = load i32, ptr %tmp, align 4, !dbg !7191
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #12, !dbg !7224
  ret i32 %26, !dbg !7225
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7226 dso_local void @__bad_udelay() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7227 dso_local void @__udelay(i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #4 align 16 !dbg !7228 {
entry:
  call void @rep_nop() #13, !dbg !7230
  ret void, !dbg !7231
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #4 align 16 !dbg !7232 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !7233, !srcloc !7234
  ret void, !dbg !7235
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5044}
!llvm.module.flags = !{!5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052}
!llvm.ident = !{!5053}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sb800_prefetch292", scope: !2, file: !3, line: 205, type: !164, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/usb/host/.pci-quirks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/usb/host/pci-quirks\22 -D KBUILD_BASENAME=\22pci_quirks\22 -D KBUILD_MODNAME=\22pci_quirks\22 -D __KBUILD_MODNAME=kmod_pci_quirks -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/usb/host/pci-quirks.ll drivers/usb/host/pci-quirks.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !163, globals: !4901, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/host/pci-quirks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7cab451bed4d0efb72ae230b3f70882f")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !131, !136, !141, !147, !158}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !117, line: 30, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!120 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!121 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "amd_chipset_gen", file: !3, line: 114, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!149 = !DIEnumerator(name: "NOT_AMD_CHIPSET", value: 0)
!150 = !DIEnumerator(name: "AMD_CHIPSET_SB600", value: 1)
!151 = !DIEnumerator(name: "AMD_CHIPSET_SB700", value: 2)
!152 = !DIEnumerator(name: "AMD_CHIPSET_SB800", value: 3)
!153 = !DIEnumerator(name: "AMD_CHIPSET_HUDSON2", value: 4)
!154 = !DIEnumerator(name: "AMD_CHIPSET_BOLTON", value: 5)
!155 = !DIEnumerator(name: "AMD_CHIPSET_YANGTZE", value: 6)
!156 = !DIEnumerator(name: "AMD_CHIPSET_TAISHAN", value: 7)
!157 = !DIEnumerator(name: "AMD_CHIPSET_UNKNOWN", value: 8)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 10, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "false", value: 0)
!162 = !DIEnumerator(name: "true", value: 1)
!163 = !{!164, !165, !236, !4897, !4899}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !167, line: 322, size: 16640, elements: !168)
!167 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!168 = !{!169, !176, !4672, !4673, !4674, !4675, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4781, !4782, !4783, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4860, !4861, !4862, !4864, !4865, !4867, !4868, !4869, !4870, !4876, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !166, file: !167, line: 323, baseType: !170, size: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !171, line: 190, size: 128, elements: !172)
!171 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!172 = !{!173, !175}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !171, line: 191, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !170, file: !171, line: 191, baseType: !174, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !166, file: !167, line: 324, baseType: !177, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !167, line: 647, size: 8256, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !213, !214, !215, !242, !243, !247, !249, !250, !251, !252, !256, !258, !260, !4667, !4668, !4669, !4670, !4671}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !178, file: !167, line: 648, baseType: !170, size: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !178, file: !167, line: 649, baseType: !177, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !178, file: !167, line: 650, baseType: !170, size: 128, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !178, file: !167, line: 651, baseType: !170, size: 128, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !178, file: !167, line: 652, baseType: !165, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !178, file: !167, line: 653, baseType: !170, size: 128, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !178, file: !167, line: 655, baseType: !187, size: 256, offset: 640)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 256, elements: !211)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !190, line: 21, size: 512, elements: !191)
!190 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!191 = !{!192, !200, !201, !205, !207, !208, !209, !210}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !189, file: !190, line: 22, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !171, line: 164, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !171, line: 159, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !196, line: 23, baseType: !197)
!196 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !198, line: 31, baseType: !199)
!198 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!199 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !189, file: !190, line: 23, baseType: !193, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !190, line: 24, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !190, line: 25, baseType: !206, size: 64, offset: 192)
!206 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !189, file: !190, line: 26, baseType: !206, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !189, file: !190, line: 27, baseType: !188, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !189, file: !190, line: 27, baseType: !188, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !189, file: !190, line: 27, baseType: !188, size: 64, offset: 448)
!211 = !{!212}
!212 = !DISubrange(count: 4)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !178, file: !167, line: 656, baseType: !170, size: 128, offset: 896)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !178, file: !167, line: 657, baseType: !189, size: 512, offset: 1024)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !178, file: !167, line: 659, baseType: !216, size: 64, offset: 1536)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !167, line: 773, size: 320, elements: !218)
!218 = !{!219, !223, !227, !231, !238}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !217, file: !167, line: 774, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!109, !177}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !217, file: !167, line: 775, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !177}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !217, file: !167, line: 776, baseType: !228, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!164, !177, !7, !109}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !217, file: !167, line: 777, baseType: !232, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!109, !177, !7, !109, !109, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !196, line: 21, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !198, line: 27, baseType: !7)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !217, file: !167, line: 778, baseType: !239, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!109, !177, !7, !109, !109, !236}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !178, file: !167, line: 660, baseType: !164, size: 64, offset: 1600)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !178, file: !167, line: 661, baseType: !244, size: 64, offset: 1664)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !246, line: 131, flags: DIFlagFwdDecl)
!246 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!247 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !178, file: !167, line: 663, baseType: !248, size: 8, offset: 1728)
!248 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !178, file: !167, line: 664, baseType: !248, size: 8, offset: 1736)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !178, file: !167, line: 665, baseType: !248, size: 8, offset: 1744)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !178, file: !167, line: 666, baseType: !248, size: 8, offset: 1752)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !167, line: 671, baseType: !253, size: 384, offset: 1760)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 384, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 48)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !178, file: !167, line: 673, baseType: !257, size: 16, offset: 2144)
!257 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !178, file: !167, line: 674, baseType: !259, size: 16, offset: 2160)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !167, line: 255, baseType: !257)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !178, file: !167, line: 675, baseType: !261, size: 64, offset: 2176)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !263)
!263 = !{!264, !4187, !4188, !4191, !4192, !4245, !4330, !4331, !4332, !4333, !4334, !4341, !4433, !4446, !4456, !4460, !4462, !4463, !4464, !4468, !4475, !4476, !4479, !4482, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4644, !4645, !4646, !4649, !4652, !4661, !4662, !4663, !4664, !4665, !4666}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !262, file: !94, line: 706, baseType: !265, size: 512)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !266, line: 64, size: 512, elements: !267)
!266 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!267 = !{!268, !269, !270, !272, !357, !4074, !4177, !4182, !4183, !4184, !4185, !4186}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !266, line: 65, baseType: !202, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !265, file: !266, line: 66, baseType: !170, size: 128, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !266, line: 67, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !265, file: !266, line: 68, baseType: !273, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !266, line: 168, size: 768, elements: !275)
!275 = !{!276, !277, !316, !317}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !274, file: !266, line: 169, baseType: !170, size: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !274, file: !266, line: 170, baseType: !278, size: 32, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !279, line: 29, baseType: !280)
!279 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !279, line: 17, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !279, line: 18, baseType: !283, size: 32)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !279, line: 18, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !283, file: !279, line: 19, baseType: !286, size: 32)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !287, line: 14, size: 32, elements: !288)
!287 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !286, file: !287, line: 15, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !291, line: 44, baseType: !292)
!291 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !291, line: 14, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !291, line: 15, baseType: !295, size: 32)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !291, line: 15, size: 32, elements: !296)
!296 = !{!297, !302, !309}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !295, file: !291, line: 16, baseType: !298, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !171, line: 174, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 172, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !299, file: !171, line: 173, baseType: !109, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !291, line: 24, baseType: !303, size: 16)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !295, file: !291, line: 24, size: 16, elements: !304)
!304 = !{!305, !308}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !303, file: !291, line: 25, baseType: !306, size: 8)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !196, line: 17, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !198, line: 21, baseType: !248)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !303, file: !291, line: 26, baseType: !306, size: 8, offset: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !291, line: 28, baseType: !310, size: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !295, file: !291, line: 28, size: 32, elements: !311)
!311 = !{!312, !315}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !310, file: !291, line: 29, baseType: !313, size: 16)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !196, line: 19, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !198, line: 24, baseType: !257)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !310, file: !291, line: 30, baseType: !313, size: 16, offset: 16)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !274, file: !266, line: 171, baseType: !265, size: 512, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !274, file: !266, line: 172, baseType: !318, size: 64, offset: 704)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !266, line: 133, size: 192, elements: !321)
!321 = !{!322, !329, !334}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !320, file: !266, line: 134, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!109, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !266, line: 135, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!202, !327}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !320, file: !266, line: 136, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!109, !327, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !266, line: 125, size: 20736, elements: !341)
!341 = !{!342, !347, !351, !352, !356}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !340, file: !266, line: 126, baseType: !343, size: 192)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 192, elements: !345)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!345 = !{!346}
!346 = !DISubrange(count: 3)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !340, file: !266, line: 127, baseType: !348, size: 4096, offset: 192)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 4096, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !340, file: !266, line: 128, baseType: !109, size: 32, offset: 4288)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !340, file: !266, line: 129, baseType: !353, size: 16384, offset: 4320)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 16384, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 2048)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !340, file: !266, line: 130, baseType: !109, size: 32, offset: 20704)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !265, file: !266, line: 69, baseType: !358, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !266, line: 116, size: 384, elements: !361)
!361 = !{!362, !366, !394, !4036, !4064, !4068}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !360, file: !266, line: 117, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !271}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !360, file: !266, line: 118, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !370, line: 254, size: 128, elements: !371)
!370 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!371 = !{!372, !387}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !369, file: !370, line: 255, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!376, !271, !381, !344}
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !171, line: 66, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !378, line: 73, baseType: !379)
!378 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !378, line: 15, baseType: !380)
!380 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !370, line: 30, size: 128, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !370, line: 31, baseType: !202, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !382, file: !370, line: 32, baseType: !386, size: 16, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !171, line: 24, baseType: !257)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !369, file: !370, line: 256, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!376, !271, !381, !202, !391}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !171, line: 61, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !378, line: 72, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !378, line: 16, baseType: !206)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !360, file: !266, line: 119, baseType: !395, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !370, line: 84, size: 320, elements: !399)
!399 = !{!400, !401, !405, !4032, !4034}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !370, line: 85, baseType: !202, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !398, file: !370, line: 86, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!386, !271, !381, !109}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !398, file: !370, line: 88, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!386, !271, !409, !109}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !370, line: 175, size: 512, elements: !411)
!411 = !{!412, !413, !414, !415, !4023, !4027, !4028}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !410, file: !370, line: 176, baseType: !382, size: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !410, file: !370, line: 177, baseType: !391, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !410, file: !370, line: 178, baseType: !164, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !410, file: !370, line: 179, baseType: !416, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !421)
!421 = !{!422, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !4017, !4018, !4019, !4020, !4021, !4022}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !420, file: !14, line: 473, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !425)
!425 = !{!426, !427, !428, !436, !437, !444, !445, !448, !449, !3796, !3797, !3798, !3799, !3800, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3840, !3843, !3844, !3845, !3854, !3855, !3856, !3857}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !424, file: !14, line: 642, baseType: !386, size: 16)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !424, file: !14, line: 643, baseType: !257, size: 16, offset: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !424, file: !14, line: 644, baseType: !429, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !430, line: 23, baseType: !431)
!430 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 21, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !431, file: !430, line: 22, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !171, line: 37, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !378, line: 49, baseType: !7)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !424, file: !14, line: 645, baseType: !170, size: 128, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !424, file: !14, line: 646, baseType: !438, size: 32, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !430, line: 28, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 26, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !439, file: !430, line: 27, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !171, line: 38, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !378, line: 50, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !424, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !424, file: !14, line: 650, baseType: !446, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !424, file: !14, line: 651, baseType: !446, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !424, file: !14, line: 654, baseType: !450, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !453)
!453 = !{!454, !3624, !3634, !3638, !3642, !3646, !3650, !3654, !3658, !3662, !3666, !3667, !3671, !3675, !3712, !3741, !3745, !3751, !3755, !3759, !3763, !3767, !3771, !3777, !3781}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !452, file: !14, line: 1967, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!458, !423, !458, !7}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !460, line: 82, size: 1536, elements: !461)
!460 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!461 = !{!462, !463, !473, !481, !482, !497, !498, !502, !515, !3607, !3608, !3609, !3610, !3616, !3617, !3618}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !459, file: !460, line: 84, baseType: !7, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !459, file: !460, line: 85, baseType: !464, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !465, line: 275, baseType: !466)
!465 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !465, line: 275, size: 32, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !466, file: !465, line: 275, baseType: !469, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !465, line: 69, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !465, line: 64, size: 32, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !470, file: !465, line: 65, baseType: !7, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !459, file: !460, line: 86, baseType: !474, size: 128, offset: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !475, line: 38, size: 128, elements: !476)
!475 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!476 = !{!477, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !474, file: !475, line: 39, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !474, file: !475, line: 39, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !459, file: !460, line: 87, baseType: !458, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !459, file: !460, line: 88, baseType: !483, size: 128, offset: 256)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !460, line: 49, size: 128, elements: !484)
!484 = !{!485, !494}
!485 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !460, line: 50, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !460, line: 50, size: 64, elements: !487)
!487 = !{!488, !493}
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !460, line: 51, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !486, file: !460, line: 51, size: 64, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !489, file: !460, line: 52, baseType: !236, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !489, file: !460, line: 52, baseType: !236, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !486, file: !460, line: 54, baseType: !195, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !483, file: !460, line: 56, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !459, file: !460, line: 89, baseType: !423, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !459, file: !460, line: 91, baseType: !499, size: 256, offset: 448)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 256, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !459, file: !460, line: 94, baseType: !503, size: 64, offset: 704)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !504, line: 25, size: 64, elements: !505)
!504 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !504, line: 26, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !504, line: 26, size: 64, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !507, file: !504, line: 28, baseType: !197, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !504, line: 30, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !507, file: !504, line: 30, size: 64, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !511, file: !504, line: 31, baseType: !278, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !511, file: !504, line: 32, baseType: !109, size: 32, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !459, file: !460, line: 95, baseType: !516, size: 64, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !460, line: 128, size: 1024, align: 512, elements: !519)
!519 = !{!520, !524, !525, !532, !538, !542, !546, !550, !551, !555, !559, !3597, !3601}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !518, file: !460, line: 129, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!109, !458, !7}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !518, file: !460, line: 130, baseType: !521, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !518, file: !460, line: 131, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!109, !529, !531}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !518, file: !460, line: 132, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!109, !529, !7, !202, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !518, file: !460, line: 134, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!109, !529}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !518, file: !460, line: 135, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!109, !458}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !518, file: !460, line: 136, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !458}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !518, file: !460, line: 137, baseType: !547, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !518, file: !460, line: 138, baseType: !552, size: 64, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !458, !423}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !518, file: !460, line: 139, baseType: !556, size: 64, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!344, !458, !344, !109}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !518, file: !460, line: 140, baseType: !560, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!563, !3596}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !565, line: 70, size: 256, elements: !566)
!565 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!566 = !{!567, !568, !3592, !3593}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !564, file: !565, line: 71, baseType: !458, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !564, file: !565, line: 72, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !571)
!571 = !{!572, !573, !576, !577, !578, !582, !1060, !1200, !1240, !1330, !1334, !1335, !1336, !1337, !1338, !1347, !1348, !1349, !1350, !1355, !1359, !1360, !1363, !1366, !1369, !1372, !1373, !1374, !1415, !3525, !3526, !3527, !3528, !3529, !3530, !3533, !3535, !3542, !3543, !3544, !3545, !3546, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !570, file: !14, line: 1191, baseType: !170, size: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !570, file: !14, line: 1192, baseType: !574, size: 32, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !171, line: 21, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !171, line: 18, baseType: !236)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !570, file: !14, line: 1193, baseType: !248, size: 8, offset: 160)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !570, file: !14, line: 1194, baseType: !206, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !570, file: !14, line: 1195, baseType: !579, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !171, line: 52, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !378, line: 88, baseType: !581)
!581 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !570, file: !14, line: 1196, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !585)
!585 = !{!586, !587, !588, !595, !599, !603, !607, !1045, !1046, !1050, !1052, !1053, !1054, !1056, !1057, !1058, !1059}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !584, file: !14, line: 2367, baseType: !202, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !584, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !584, file: !14, line: 2376, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!109, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !594, line: 32, flags: DIFlagFwdDecl)
!594 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !584, file: !14, line: 2377, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !584, file: !14, line: 2378, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!458, !583, !109, !202, !164}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !584, file: !14, line: 2380, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !569}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !584, file: !14, line: 2381, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !610)
!610 = !{!611, !612, !613, !617, !639, !665, !666, !667, !668, !672, !677, !678, !698, !754, !755, !756, !757, !758, !761, !762, !763, !771, !775, !802, !823, !824, !825, !826, !835, !858, !859, !862, !865, !866, !867, !868, !869, !870, !871, !876, !877, !1003, !1011, !1012, !1013, !1015, !1019, !1020, !1024, !1025, !1026, !1027, !1029, !1030, !1031, !1038, !1039, !1040, !1044}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !609, file: !6, line: 403, baseType: !5, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !609, file: !6, line: 406, baseType: !170, size: 128, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !609, file: !6, line: 409, baseType: !614, size: 448, offset: 192)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 448, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 56)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !609, file: !6, line: 417, baseType: !618, size: 768, offset: 640)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !619)
!619 = !{!620, !621, !622, !623, !626}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !618, file: !6, line: 46, baseType: !265, size: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !618, file: !6, line: 47, baseType: !608, size: 64, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !618, file: !6, line: 48, baseType: !271, size: 64, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !618, file: !6, line: 49, baseType: !624, size: 64, offset: 640)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !618, file: !6, line: 50, baseType: !627, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !629, line: 26, size: 256, elements: !630)
!629 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !628, file: !629, line: 27, baseType: !7, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !628, file: !629, line: 28, baseType: !633, size: 192, offset: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !634, line: 43, size: 192, elements: !635)
!634 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!635 = !{!636, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !633, file: !634, line: 44, baseType: !637, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !287, line: 23, baseType: !286)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !633, file: !634, line: 45, baseType: !170, size: 128, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !609, file: !6, line: 418, baseType: !640, size: 64, offset: 1408)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !642)
!642 = !{!643, !644, !649, !653, !657, !661}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !641, file: !6, line: 54, baseType: !382, size: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !641, file: !6, line: 55, baseType: !645, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!376, !640, !648, !344}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !641, file: !6, line: 57, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!376, !640, !648, !202, !391}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !641, file: !6, line: 59, baseType: !654, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !608, !202}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !641, file: !6, line: 60, baseType: !658, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!109, !608}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !641, file: !6, line: 61, baseType: !662, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !608}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !609, file: !6, line: 419, baseType: !202, size: 64, offset: 1472)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !609, file: !6, line: 420, baseType: !202, size: 64, offset: 1536)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !609, file: !6, line: 421, baseType: !271, size: 64, offset: 1600)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !609, file: !6, line: 424, baseType: !669, size: 64, offset: 1664)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !609, file: !6, line: 425, baseType: !673, size: 64, offset: 1728)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !196, line: 20, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !198, line: 26, baseType: !109)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !609, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !609, file: !6, line: 435, baseType: !679, size: 256, offset: 1856)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !680, line: 66, size: 256, elements: !681)
!680 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!681 = !{!682, !691, !692, !697}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !679, file: !680, line: 67, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !684, line: 13, baseType: !685)
!684 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !171, line: 181, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 179, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !686, file: !171, line: 180, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !196, line: 22, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !198, line: 30, baseType: !581)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !679, file: !680, line: 68, baseType: !637, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !679, file: !680, line: 70, baseType: !693, size: 32, offset: 96)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !694, line: 15, size: 32, elements: !695)
!694 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !693, file: !694, line: 20, baseType: !298, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !679, file: !680, line: 72, baseType: !170, size: 128, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !609, file: !6, line: 437, baseType: !699, size: 64, offset: 2112)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !701, line: 69, size: 320, elements: !702)
!701 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!702 = !{!703, !704, !705, !725, !727, !731, !732}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !700, file: !701, line: 70, baseType: !202, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !700, file: !701, line: 71, baseType: !608, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !700, file: !701, line: 72, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !701, line: 47, size: 256, elements: !709)
!709 = !{!710, !711, !717, !721}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !701, line: 49, baseType: !7, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !708, file: !701, line: 51, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!109, !202, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !708, file: !701, line: 53, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!109, !344, !715}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !708, file: !701, line: 55, baseType: !722, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !164}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !700, file: !701, line: 73, baseType: !726, size: 16, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !700, file: !701, line: 74, baseType: !728, size: 8, offset: 208)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !196, line: 16, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !198, line: 20, baseType: !730)
!730 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !701, line: 75, baseType: !306, size: 8, offset: 216)
!732 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 76, baseType: !733, size: 64, offset: 256)
!733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 76, size: 64, elements: !734)
!734 = !{!735, !736, !743}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !733, file: !701, line: 77, baseType: !164, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !733, file: !701, line: 78, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !701, line: 86, size: 128, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !739, file: !701, line: 87, baseType: !7, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !739, file: !701, line: 88, baseType: !344, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !733, file: !701, line: 79, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !701, line: 92, size: 256, elements: !747)
!747 = !{!748, !749, !750, !752, !753}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !746, file: !701, line: 94, baseType: !7, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !746, file: !701, line: 95, baseType: !7, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !746, file: !701, line: 96, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !746, file: !701, line: 97, baseType: !706, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !746, file: !701, line: 98, baseType: !164, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !609, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !609, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !609, file: !6, line: 442, baseType: !669, size: 64, offset: 2240)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !609, file: !6, line: 443, baseType: !673, size: 64, offset: 2304)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !609, file: !6, line: 444, baseType: !759, size: 8, offset: 2368)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !171, line: 35, baseType: !760)
!760 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !609, file: !6, line: 451, baseType: !759, size: 8, offset: 2376)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !609, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !609, file: !6, line: 455, baseType: !764, size: 64, offset: 2432)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !766, line: 23, size: 96, elements: !767)
!766 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!767 = !{!768, !769, !770}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !765, file: !766, line: 24, baseType: !109, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !765, file: !766, line: 24, baseType: !109, size: 32, offset: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !765, file: !766, line: 24, baseType: !109, size: 32, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !609, file: !6, line: 458, baseType: !772, size: 64, offset: 2496)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!109}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !609, file: !6, line: 460, baseType: !776, size: 4032, align: 512, offset: 2560)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 4032, elements: !800)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !778)
!778 = !{!779, !780, !781}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !777, file: !6, line: 363, baseType: !164, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !777, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !777, file: !6, line: 367, baseType: !782, size: 448, offset: 128)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !782, file: !6, line: 320, baseType: !608, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !782, file: !6, line: 321, baseType: !786, size: 384, offset: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !787, line: 40, size: 384, elements: !788)
!787 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !786, file: !787, line: 41, baseType: !790, size: 384, align: 64)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 384, align: 64, elements: !798)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !792, line: 5, size: 192, align: 64, elements: !793)
!792 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!793 = !{!794, !795, !797}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !791, file: !792, line: 6, baseType: !206, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !791, file: !792, line: 7, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !791, file: !792, line: 8, baseType: !796, size: 64, offset: 128)
!798 = !{!799}
!799 = !DISubrange(count: 2)
!800 = !{!801}
!801 = !DISubrange(count: 7)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !609, file: !6, line: 463, baseType: !803, size: 192, offset: 6592)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !804, line: 8, size: 192, elements: !805)
!804 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!805 = !{!806, !807, !809}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !803, file: !804, line: 10, baseType: !7, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !803, file: !804, line: 11, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !803, file: !804, line: 12, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !812, line: 59, size: 48, elements: !813)
!812 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!813 = !{!814, !818, !819, !820, !821, !822}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !811, file: !812, line: 60, baseType: !815, size: 16)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !196, line: 18, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !198, line: 23, baseType: !817)
!817 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !811, file: !812, line: 61, baseType: !815, size: 16, offset: 16)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !811, file: !812, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !811, file: !812, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !811, file: !812, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !811, file: !812, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !609, file: !6, line: 465, baseType: !206, size: 64, offset: 6784)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !609, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !609, file: !6, line: 470, baseType: !170, size: 128, offset: 6912)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !609, file: !6, line: 471, baseType: !827, size: 64, offset: 7040)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !829, line: 33, size: 96, elements: !830)
!829 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!830 = !{!831, !832, !833, !834}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !828, file: !829, line: 37, baseType: !109, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !828, file: !829, line: 43, baseType: !109, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !828, file: !829, line: 45, baseType: !257, size: 16, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !828, file: !829, line: 47, baseType: !257, size: 16, offset: 80)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !609, file: !6, line: 476, baseType: !836, size: 64, offset: 7104)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !838)
!838 = !{!839, !855, !856, !857}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !837, file: !6, line: 379, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !842, line: 204, baseType: !843)
!842 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !842, line: 197, size: 192, elements: !844)
!844 = !{!845, !847, !848, !849, !851, !853}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !843, file: !842, line: 198, baseType: !846, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !842, line: 21, baseType: !237)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !843, file: !842, line: 199, baseType: !248, size: 8, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !843, file: !842, line: 200, baseType: !248, size: 8, offset: 40)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !843, file: !842, line: 201, baseType: !850, size: 16, offset: 48)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !842, line: 17, baseType: !314)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !843, file: !842, line: 202, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !842, line: 16, baseType: !197)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !843, file: !842, line: 203, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !842, line: 22, baseType: !197)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !837, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !837, file: !6, line: 381, baseType: !344, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !837, file: !6, line: 382, baseType: !344, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !609, file: !6, line: 477, baseType: !837, size: 256, offset: 7168)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !609, file: !6, line: 480, baseType: !860, size: 64, offset: 7424)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !609, file: !6, line: 483, baseType: !863, size: 64, offset: 7488)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !609, file: !6, line: 488, baseType: !344, size: 64, offset: 7552)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !609, file: !6, line: 492, baseType: !164, size: 64, offset: 7616)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !609, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !609, file: !6, line: 495, baseType: !164, size: 64, offset: 7744)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !609, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !609, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !609, file: !6, line: 500, baseType: !872, size: 64, offset: 7872)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !874, line: 45, baseType: !875)
!874 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !609, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !609, file: !6, line: 504, baseType: !878, size: 64, offset: 8000)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !881, line: 96, size: 192, elements: !882)
!881 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!882 = !{!883, !884, !963, !967}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !880, file: !881, line: 97, baseType: !7, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !880, file: !881, line: 98, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !881, line: 24, size: 3072, elements: !887)
!887 = !{!888, !890, !891, !892, !893, !915, !916, !917, !918, !936, !948, !949, !960, !961, !962}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !886, file: !881, line: 26, baseType: !889, size: 128)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 128, elements: !798)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !886, file: !881, line: 27, baseType: !889, size: 128, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !886, file: !881, line: 28, baseType: !109, size: 32, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !886, file: !881, line: 31, baseType: !278, size: 32, align: 512, offset: 512)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !886, file: !881, line: 32, baseType: !894, size: 960, offset: 576)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !895, line: 206, size: 960, elements: !896)
!895 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!896 = !{!897, !906, !909, !911, !912, !914}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !894, file: !895, line: 207, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !171, line: 232, size: 128, align: 64, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !899, file: !171, line: 233, baseType: !898, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !899, file: !171, line: 234, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !898}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !894, file: !895, line: 208, baseType: !907, size: 256, offset: 64)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 256, elements: !211)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !894, file: !895, line: 209, baseType: !910, size: 256, offset: 320)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 256, elements: !211)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !894, file: !895, line: 213, baseType: !380, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !894, file: !895, line: 215, baseType: !913, size: 256, offset: 640)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 256, elements: !211)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !894, file: !895, line: 216, baseType: !306, size: 8, offset: 896)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !886, file: !881, line: 33, baseType: !206, size: 64, offset: 1536)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !886, file: !881, line: 34, baseType: !206, size: 64, offset: 1600)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !886, file: !881, line: 35, baseType: !759, size: 8, offset: 1664)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !886, file: !881, line: 36, baseType: !919, size: 320, offset: 1728)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !920, line: 11, size: 320, elements: !921)
!920 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!921 = !{!922, !929, !930, !935}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !919, file: !920, line: 16, baseType: !923, size: 128)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !171, line: 198, size: 128, elements: !924)
!924 = !{!925, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !923, file: !171, line: 199, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !923, file: !171, line: 199, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !919, file: !920, line: 17, baseType: !206, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !919, file: !920, line: 18, baseType: !931, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !934}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !919, file: !920, line: 19, baseType: !236, size: 32, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !886, file: !881, line: 37, baseType: !937, size: 256, offset: 2048)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !938, line: 98, size: 256, elements: !939)
!938 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !937, file: !938, line: 99, baseType: !683, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !937, file: !938, line: 100, baseType: !170, size: 128, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !937, file: !938, line: 101, baseType: !943, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !938, line: 21, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !886, file: !881, line: 38, baseType: !899, size: 128, align: 64, offset: 2304)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !886, file: !881, line: 39, baseType: !950, size: 64, offset: 2432)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !881, line: 49, size: 768, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !951, file: !881, line: 50, baseType: !278, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !951, file: !881, line: 51, baseType: !910, size: 256, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !951, file: !881, line: 53, baseType: !910, size: 256, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !951, file: !881, line: 54, baseType: !206, size: 64, offset: 576)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !951, file: !881, line: 55, baseType: !950, size: 64, offset: 640)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !951, file: !881, line: 56, baseType: !109, size: 32, offset: 704)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !951, file: !881, line: 57, baseType: !109, size: 32, offset: 736)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !886, file: !881, line: 40, baseType: !206, size: 64, offset: 2496)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !886, file: !881, line: 42, baseType: !109, size: 32, offset: 2560)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !886, file: !881, line: 43, baseType: !879, size: 64, offset: 2624)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !880, file: !881, line: 99, baseType: !964, offset: 128)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !965, line: 211, elements: !966)
!965 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!966 = !{}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !880, file: !881, line: 100, baseType: !968, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !881, line: 63, size: 3008, elements: !970)
!970 = !{!971, !972, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !1002}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !969, file: !881, line: 64, baseType: !950, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !969, file: !881, line: 65, baseType: !973, size: 192, offset: 64)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 192, elements: !345)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !969, file: !881, line: 67, baseType: !109, size: 32, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !969, file: !881, line: 68, baseType: !679, size: 256, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !969, file: !881, line: 69, baseType: !278, size: 32, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !969, file: !881, line: 70, baseType: !679, size: 256, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !969, file: !881, line: 71, baseType: !206, size: 64, offset: 896)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !969, file: !881, line: 72, baseType: !206, size: 64, offset: 960)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !969, file: !881, line: 73, baseType: !206, size: 64, offset: 1024)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !969, file: !881, line: 74, baseType: !206, size: 64, offset: 1088)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !969, file: !881, line: 75, baseType: !206, size: 64, offset: 1152)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !969, file: !881, line: 76, baseType: !206, size: 64, offset: 1216)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !969, file: !881, line: 77, baseType: !206, size: 64, offset: 1280)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !969, file: !881, line: 78, baseType: !206, size: 64, offset: 1344)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !969, file: !881, line: 79, baseType: !759, size: 8, offset: 1408)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !969, file: !881, line: 80, baseType: !206, size: 64, offset: 1472)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !969, file: !881, line: 81, baseType: !679, size: 256, offset: 1536)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !969, file: !881, line: 82, baseType: !628, size: 256, offset: 1792)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !969, file: !881, line: 84, baseType: !298, size: 32, offset: 2048)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !969, file: !881, line: 87, baseType: !206, size: 64, offset: 2112)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !969, file: !881, line: 88, baseType: !206, size: 64, offset: 2176)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !969, file: !881, line: 89, baseType: !994, size: 704, offset: 2240)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !938, line: 111, size: 704, elements: !995)
!995 = !{!996, !997, !998, !1001}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !994, file: !938, line: 112, baseType: !937, size: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !994, file: !938, line: 113, baseType: !919, size: 320, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !994, file: !938, line: 116, baseType: !999, size: 64, offset: 576)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !938, line: 18, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !994, file: !938, line: 117, baseType: !109, size: 32, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !969, file: !881, line: 90, baseType: !879, size: 64, offset: 2944)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !609, file: !6, line: 515, baseType: !1004, size: 64, offset: 8064)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1006, line: 117, size: 128, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1007 = !{!1008, !1009, !1010}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1005, file: !1006, line: 118, baseType: !675, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1005, file: !1006, line: 119, baseType: !675, size: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1005, file: !1006, line: 120, baseType: !380, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !609, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !609, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !609, file: !6, line: 520, baseType: !1014, size: 64, offset: 8192)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !609, file: !6, line: 523, baseType: !1016, size: 64, offset: 8256)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !609, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !609, file: !6, line: 525, baseType: !1021, size: 64, offset: 8384)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !609, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !609, file: !6, line: 533, baseType: !164, size: 64, offset: 8512)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !609, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !609, file: !6, line: 535, baseType: !1028, size: 64, offset: 8640)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !609, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !609, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !609, file: !6, line: 540, baseType: !1032, size: 64, offset: 8768)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1034, line: 32, size: 64, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1033, file: !1034, line: 33, baseType: !675, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1033, file: !1034, line: 34, baseType: !675, size: 32, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !609, file: !6, line: 563, baseType: !170, size: 128, offset: 8832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !609, file: !6, line: 565, baseType: !170, size: 128, offset: 8960)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !609, file: !6, line: 568, baseType: !1041, size: 64, offset: 9088)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !609, file: !6, line: 570, baseType: !298, size: 32, offset: 9152)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !584, file: !14, line: 2382, baseType: !583, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !584, file: !14, line: 2383, baseType: !1047, size: 64, offset: 512)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !171, line: 194, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1047, file: !171, line: 195, baseType: !926, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !584, file: !14, line: 2385, baseType: !1051, offset: 576)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !965, line: 206, elements: !966)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !584, file: !14, line: 2386, baseType: !1051, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !584, file: !14, line: 2387, baseType: !1051, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !584, file: !14, line: 2388, baseType: !1055, offset: 576)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, elements: !345)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !584, file: !14, line: 2390, baseType: !1051, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !584, file: !14, line: 2391, baseType: !1051, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !584, file: !14, line: 2392, baseType: !1051, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !584, file: !14, line: 2393, baseType: !1051, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !570, file: !14, line: 1197, baseType: !1061, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1064)
!1064 = !{!1065, !1069, !1073, !1074, !1078, !1084, !1088, !1089, !1090, !1094, !1098, !1102, !1103, !1104, !1110, !1114, !1115, !1122, !1123, !1124, !1125, !1129, !1133, !1182, !1198, !1199}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1063, file: !14, line: 2058, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!423, !569}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1063, file: !14, line: 2059, baseType: !1070, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !423}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1063, file: !14, line: 2060, baseType: !1070, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1063, file: !14, line: 2062, baseType: !1075, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !423, !109}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1063, file: !14, line: 2063, baseType: !1079, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!109, !423, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1063, file: !14, line: 2064, baseType: !1085, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!109, !423}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1063, file: !14, line: 2065, baseType: !1070, size: 64, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1063, file: !14, line: 2066, baseType: !604, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1063, file: !14, line: 2067, baseType: !1091, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!109, !569, !109}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1063, file: !14, line: 2068, baseType: !1095, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!109, !569, !13}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1063, file: !14, line: 2069, baseType: !1099, size: 64, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!109, !569}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1063, file: !14, line: 2070, baseType: !1095, size: 64, offset: 704)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1063, file: !14, line: 2071, baseType: !1099, size: 64, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1063, file: !14, line: 2072, baseType: !1105, size: 64, offset: 832)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!109, !458, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1063, file: !14, line: 2073, baseType: !1111, size: 64, offset: 896)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!109, !569, !808, !344}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1063, file: !14, line: 2074, baseType: !604, size: 64, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1063, file: !14, line: 2076, baseType: !1116, size: 64, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!109, !1119, !458}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1121, line: 66, flags: DIFlagFwdDecl)
!1121 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1063, file: !14, line: 2077, baseType: !1116, size: 64, offset: 1088)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1063, file: !14, line: 2078, baseType: !1116, size: 64, offset: 1152)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1063, file: !14, line: 2079, baseType: !1116, size: 64, offset: 1216)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1063, file: !14, line: 2081, baseType: !1126, size: 64, offset: 1280)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!376, !569, !109, !344, !391, !579}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1063, file: !14, line: 2082, baseType: !1130, size: 64, offset: 1344)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!376, !569, !109, !202, !391, !579}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1063, file: !14, line: 2083, baseType: !1134, size: 64, offset: 1408)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!1137, !423}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1165, !1166, !1167}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1139, file: !19, line: 297, baseType: !923, size: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1139, file: !19, line: 298, baseType: !170, size: 128, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1139, file: !19, line: 299, baseType: !170, size: 128, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1139, file: !19, line: 300, baseType: !170, size: 128, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1139, file: !19, line: 301, baseType: !679, size: 256, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1139, file: !19, line: 302, baseType: !278, size: 32, offset: 768)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1139, file: !19, line: 303, baseType: !298, size: 32, offset: 800)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1139, file: !19, line: 304, baseType: !569, size: 64, offset: 832)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1139, file: !19, line: 305, baseType: !1150, size: 64, offset: 896)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1151)
!1151 = !{!1152, !1164}
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !19, line: 69, baseType: !1153, size: 32)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !19, line: 69, size: 32, elements: !1154)
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1153, file: !19, line: 70, baseType: !429, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1153, file: !19, line: 71, baseType: !438, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1153, file: !19, line: 72, baseType: !1158, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1159, line: 24, baseType: !1160)
!1159 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1159, line: 22, size: 32, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1160, file: !1159, line: 23, baseType: !1163, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1159, line: 20, baseType: !435)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1150, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1139, file: !19, line: 306, baseType: !579, size: 64, offset: 960)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1139, file: !19, line: 307, baseType: !206, size: 64, offset: 1024)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1139, file: !19, line: 308, baseType: !1168, size: 576, offset: 1088)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1169)
!1169 = !{!1170, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1181}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1168, file: !19, line: 206, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !581)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1168, file: !19, line: 207, baseType: !1171, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1168, file: !19, line: 208, baseType: !1171, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1168, file: !19, line: 209, baseType: !1171, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1168, file: !19, line: 210, baseType: !1171, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1168, file: !19, line: 211, baseType: !1171, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1168, file: !19, line: 212, baseType: !1171, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1168, file: !19, line: 213, baseType: !1179, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1180, line: 8, baseType: !690)
!1180 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1168, file: !19, line: 214, baseType: !1179, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1063, file: !14, line: 2085, baseType: !1183, size: 64, offset: 1472)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!380, !569, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1188, line: 15, size: 256, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1189 = !{!1190, !1192, !1193, !1194, !1195}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1187, file: !1188, line: 16, baseType: !1191, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !171, line: 154, baseType: !7)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1187, file: !1188, line: 19, baseType: !109, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1187, file: !1188, line: 26, baseType: !206, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1187, file: !1188, line: 33, baseType: !206, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1187, file: !1188, line: 36, baseType: !1196, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1063, file: !14, line: 2087, baseType: !1183, size: 64, offset: 1536)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1063, file: !14, line: 2089, baseType: !604, size: 64, offset: 1600)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !570, file: !14, line: 1198, baseType: !1201, size: 64, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1204)
!1204 = !{!1205, !1209, !1213, !1217, !1218, !1219, !1220, !1221, !1226, !1231, !1235}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1203, file: !19, line: 325, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!109, !1138}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1203, file: !19, line: 326, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1138, !569, !109}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1203, file: !19, line: 327, baseType: !1214, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !1138}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1203, file: !19, line: 328, baseType: !1206, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1203, file: !19, line: 329, baseType: !1206, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1203, file: !19, line: 330, baseType: !1206, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1203, file: !19, line: 331, baseType: !1091, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1203, file: !19, line: 334, baseType: !1222, size: 64, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1225, !423}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1203, file: !19, line: 335, baseType: !1227, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!109, !423, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1203, file: !19, line: 337, baseType: !1232, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!109, !423, !1225}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1203, file: !19, line: 339, baseType: !1236, size: 64, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!109, !569, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !570, file: !14, line: 1199, baseType: !1241, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1244)
!1244 = !{!1245, !1256, !1257, !1261, !1262, !1263, !1278, !1301, !1305, !1306, !1329}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1243, file: !19, line: 431, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!109, !569, !109, !109, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1252, line: 8, size: 128, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1251, file: !1252, line: 9, baseType: !563, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1251, file: !1252, line: 10, baseType: !458, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1243, file: !19, line: 432, baseType: !1091, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1243, file: !19, line: 433, baseType: !1258, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!109, !569, !7}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1243, file: !19, line: 434, baseType: !1258, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1243, file: !19, line: 435, baseType: !1091, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1243, file: !19, line: 436, baseType: !1264, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!109, !569, !109, !1267}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1268, file: !19, line: 418, baseType: !109, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1268, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1268, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1268, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1268, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1268, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1268, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1268, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1243, file: !19, line: 437, baseType: !1279, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!109, !569, !1150, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1283, file: !19, line: 346, baseType: !109, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1283, file: !19, line: 347, baseType: !195, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1283, file: !19, line: 348, baseType: !195, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1283, file: !19, line: 349, baseType: !195, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1283, file: !19, line: 350, baseType: !195, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1283, file: !19, line: 351, baseType: !195, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1283, file: !19, line: 352, baseType: !195, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1283, file: !19, line: 353, baseType: !689, size: 64, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1283, file: !19, line: 355, baseType: !689, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1283, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1283, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1283, file: !19, line: 358, baseType: !195, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1283, file: !19, line: 359, baseType: !195, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1283, file: !19, line: 360, baseType: !195, size: 64, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1283, file: !19, line: 361, baseType: !689, size: 64, offset: 832)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1283, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1243, file: !19, line: 438, baseType: !1302, size: 64, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!109, !569, !1239, !1282}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1243, file: !19, line: 440, baseType: !1279, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1243, file: !19, line: 441, baseType: !1307, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!109, !569, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1311, file: !19, line: 412, baseType: !7, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1311, file: !19, line: 413, baseType: !1315, size: 1344, offset: 64)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 1344, elements: !345)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1328}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !19, line: 398, baseType: !7, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1316, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1316, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1316, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1316, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1316, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1316, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1316, file: !19, line: 406, baseType: !199, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1316, file: !19, line: 407, baseType: !1327, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !171, line: 132, baseType: !195)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1316, file: !19, line: 408, baseType: !1327, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1243, file: !19, line: 442, baseType: !1258, size: 64, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !570, file: !14, line: 1200, baseType: !1331, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !570, file: !14, line: 1201, baseType: !206, size: 64, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !570, file: !14, line: 1202, baseType: !206, size: 64, offset: 704)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !570, file: !14, line: 1203, baseType: !206, size: 64, offset: 768)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !570, file: !14, line: 1204, baseType: !458, size: 64, offset: 832)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !570, file: !14, line: 1205, baseType: !1339, size: 320, offset: 896)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1340, line: 48, size: 320, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1341 = !{!1342, !1343, !1344, !1345, !1346}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1339, file: !1340, line: 49, baseType: !683, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1339, file: !1340, line: 55, baseType: !683, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1339, file: !1340, line: 57, baseType: !693, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1339, file: !1340, line: 59, baseType: !637, size: 32, offset: 160)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1339, file: !1340, line: 60, baseType: !170, size: 128, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !570, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !570, file: !14, line: 1207, baseType: !298, size: 32, offset: 1248)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !570, file: !14, line: 1209, baseType: !164, size: 64, offset: 1280)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !570, file: !14, line: 1211, baseType: !1351, size: 64, offset: 1344)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !570, file: !14, line: 1223, baseType: !1356, size: 64, offset: 1408)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !475, line: 34, size: 64, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1356, file: !475, line: 35, baseType: !478, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !570, file: !14, line: 1224, baseType: !170, size: 128, offset: 1472)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !570, file: !14, line: 1225, baseType: !1361, size: 64, offset: 1600)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !570, file: !14, line: 1226, baseType: !1364, size: 64, offset: 1664)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !570, file: !14, line: 1227, baseType: !1367, size: 64, offset: 1728)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !570, file: !14, line: 1228, baseType: !1370, size: 64, offset: 1792)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !570, file: !14, line: 1229, baseType: !923, size: 128, offset: 1856)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !570, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !570, file: !14, line: 1231, baseType: !1375, size: 2496, offset: 2048)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1381, !1413}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1375, file: !19, line: 522, baseType: !7, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1375, file: !19, line: 523, baseType: !1339, size: 320, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1375, file: !19, line: 524, baseType: !1380, size: 192, offset: 384)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 192, elements: !345)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1375, file: !19, line: 525, baseType: !1382, size: 1728, offset: 576)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1383, size: 1728, elements: !345)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1384)
!1384 = !{!1385, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1383, file: !19, line: 223, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1388)
!1388 = !{!1389, !1390, !1403, !1404}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1387, file: !19, line: 446, baseType: !109, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1387, file: !19, line: 447, baseType: !1391, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1393, file: !19, line: 313, baseType: !1091, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1393, file: !19, line: 314, baseType: !1091, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1393, file: !19, line: 315, baseType: !1091, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1393, file: !19, line: 316, baseType: !1091, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1393, file: !19, line: 317, baseType: !1206, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1393, file: !19, line: 318, baseType: !1206, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1393, file: !19, line: 319, baseType: !1206, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1393, file: !19, line: 320, baseType: !1236, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1387, file: !19, line: 448, baseType: !608, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1387, file: !19, line: 449, baseType: !1386, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1383, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1383, file: !19, line: 226, baseType: !170, size: 128, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1383, file: !19, line: 227, baseType: !206, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1383, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1383, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1383, file: !19, line: 230, baseType: !1171, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1383, file: !19, line: 231, baseType: !1171, size: 64, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1383, file: !19, line: 232, baseType: !164, size: 64, offset: 512)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1375, file: !19, line: 526, baseType: !1414, size: 192, offset: 2304)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 192, elements: !345)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !570, file: !14, line: 1233, baseType: !1416, size: 2368, offset: 4544)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1416, file: !14, line: 1185, baseType: !257, size: 16)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1416, file: !14, line: 1186, baseType: !257, size: 16, offset: 16)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1416, file: !14, line: 1187, baseType: !1421, size: 2304, offset: 64)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 2304, elements: !345)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1423, line: 12, size: 768, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1424 = !{!1425, !1439, !1440, !3523, !3524}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1422, file: !1423, line: 13, baseType: !1426, size: 384)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1427, line: 17, size: 384, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1428 = !{!1429, !1430, !1431, !1438}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1426, file: !1427, line: 18, baseType: !109, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1426, file: !1427, line: 19, baseType: !109, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1426, file: !1427, line: 20, baseType: !1432, size: 192, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1433, line: 41, baseType: !1434)
!1433 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1433, line: 37, size: 192, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1434, file: !1433, line: 38, baseType: !278, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1434, file: !1433, line: 39, baseType: !170, size: 128, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1426, file: !1427, line: 22, baseType: !899, size: 128, align: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1422, file: !1423, line: 14, baseType: !751, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1422, file: !1423, line: 15, baseType: !1441, size: 64, offset: 448)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1442, line: 16, size: 64, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1441, file: !1442, line: 17, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1121, line: 746, size: 58368, elements: !1447)
!1447 = !{!1448, !1456, !1457, !1458, !1464, !1465, !1466, !1467, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1538, !1549, !1644, !1648, !1651, !1682, !1683, !1684, !1685, !1696, !1698, !1699, !1700, !1701, !1702, !1703, !1714, !1715, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1732, !1733, !1740, !1741, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2699, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2747, !2753, !2754, !2755, !2756, !2757, !2761, !2764, !2771, !2776, !2779, !2782, !2785, !2788, !2926, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2964, !2965, !2966, !2975, !2983, !2984, !2985, !2986, !2987, !2992, !2993, !2994, !2997, !2998, !3001, !3004, !3007, !3015, !3018, !3019, !3105, !3106, !3107, !3108, !3109, !3115, !3116, !3117, !3118, !3121, !3122, !3125, !3128, !3129, !3132, !3133, !3134, !3137, !3138, !3139, !3140, !3141, !3142, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3174, !3175, !3181, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3193, !3265, !3267, !3268, !3269, !3270, !3271, !3272, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3300, !3301, !3302}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1446, file: !1121, line: 752, baseType: !1449, size: 192)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1450, line: 56, size: 192, elements: !1451)
!1450 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1451 = !{!1452, !1453, !1454, !1455}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1449, file: !1450, line: 57, baseType: !206, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1449, file: !1450, line: 58, baseType: !206, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1449, file: !1450, line: 59, baseType: !236, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1449, file: !1450, line: 61, baseType: !236, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1446, file: !1121, line: 754, baseType: !7, size: 32, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1446, file: !1121, line: 767, baseType: !164, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1446, file: !1121, line: 768, baseType: !1459, size: 32, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1460, line: 113, baseType: !1461)
!1460 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1460, line: 111, size: 32, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1461, file: !1460, line: 112, baseType: !298, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !1121, line: 770, baseType: !7, size: 32, offset: 352)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1446, file: !1121, line: 771, baseType: !7, size: 32, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1446, file: !1121, line: 774, baseType: !109, size: 32, offset: 416)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1446, file: !1121, line: 775, baseType: !1468, size: 128, offset: 448)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1469, line: 58, size: 128, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1470 = !{!1471, !1477, !1482, !1483}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1468, file: !1469, line: 59, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1473, line: 60, size: 64, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1472, file: !1473, line: 61, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1469, line: 60, baseType: !1478, size: 32, offset: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1469, line: 60, size: 32, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1478, file: !1469, line: 61, baseType: !7, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1478, file: !1469, line: 62, baseType: !298, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1468, file: !1469, line: 65, baseType: !313, size: 16, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1468, file: !1469, line: 65, baseType: !313, size: 16, offset: 112)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1446, file: !1121, line: 776, baseType: !7, size: 32, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1446, file: !1121, line: 777, baseType: !206, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1446, file: !1121, line: 778, baseType: !1445, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1446, file: !1121, line: 787, baseType: !109, size: 32, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1446, file: !1121, line: 788, baseType: !109, size: 32, offset: 800)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1446, file: !1121, line: 790, baseType: !109, size: 32, offset: 832)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1446, file: !1121, line: 792, baseType: !109, size: 32, offset: 864)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1446, file: !1121, line: 793, baseType: !109, size: 32, offset: 896)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1446, file: !1121, line: 794, baseType: !109, size: 32, offset: 928)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1446, file: !1121, line: 795, baseType: !7, size: 32, offset: 960)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1446, file: !1121, line: 797, baseType: !1495, size: 2048, offset: 1024)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1121, line: 551, size: 2048, elements: !1496)
!1496 = !{!1497, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1517, !1520, !1521, !1522}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1495, file: !1121, line: 553, baseType: !1498, size: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1121, line: 411, size: 128, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1498, file: !1121, line: 412, baseType: !206, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1498, file: !1121, line: 413, baseType: !236, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1495, file: !1121, line: 554, baseType: !791, size: 192, align: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1495, file: !1121, line: 555, baseType: !195, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1495, file: !1121, line: 556, baseType: !195, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1495, file: !1121, line: 558, baseType: !170, size: 128, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1495, file: !1121, line: 559, baseType: !7, size: 32, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1495, file: !1121, line: 561, baseType: !195, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1495, file: !1121, line: 562, baseType: !195, size: 64, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1495, file: !1121, line: 563, baseType: !195, size: 64, offset: 768)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1495, file: !1121, line: 564, baseType: !195, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1495, file: !1121, line: 565, baseType: !689, size: 64, offset: 896)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1495, file: !1121, line: 566, baseType: !195, size: 64, offset: 960)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1495, file: !1121, line: 568, baseType: !195, size: 64, offset: 1024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1495, file: !1121, line: 571, baseType: !109, size: 32, offset: 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1495, file: !1121, line: 572, baseType: !1516, size: 64, offset: 1152)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1495, file: !1121, line: 574, baseType: !1518, size: 64, offset: 1216)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1121, line: 49, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1495, file: !1121, line: 576, baseType: !1518, size: 64, offset: 1280)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1495, file: !1121, line: 578, baseType: !206, size: 64, offset: 1344)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1495, file: !1121, line: 588, baseType: !1523, size: 512, align: 512, offset: 1536)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1121, line: 497, size: 512, align: 512, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1523, file: !1121, line: 498, baseType: !195, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1523, file: !1121, line: 499, baseType: !195, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1523, file: !1121, line: 500, baseType: !195, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1523, file: !1121, line: 501, baseType: !236, size: 32, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1523, file: !1121, line: 502, baseType: !236, size: 32, offset: 224)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1523, file: !1121, line: 503, baseType: !206, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1523, file: !1121, line: 504, baseType: !206, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1523, file: !1121, line: 505, baseType: !206, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1523, file: !1121, line: 506, baseType: !1534, size: 64, align: 64, offset: 448)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1121, line: 445, size: 64, align: 64, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1534, file: !1121, line: 446, baseType: !7, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1534, file: !1121, line: 447, baseType: !7, size: 32, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1446, file: !1121, line: 798, baseType: !1539, size: 384, offset: 3072)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1121, line: 592, size: 384, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1539, file: !1121, line: 593, baseType: !170, size: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1539, file: !1121, line: 594, baseType: !206, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1539, file: !1121, line: 595, baseType: !206, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1539, file: !1121, line: 596, baseType: !7, size: 32, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1539, file: !1121, line: 597, baseType: !257, size: 16, offset: 288)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1539, file: !1121, line: 598, baseType: !257, size: 16, offset: 304)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1539, file: !1121, line: 600, baseType: !1548, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1446, file: !1121, line: 799, baseType: !1550, size: 1792, offset: 3456)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1121, line: 610, size: 1792, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1641, !1642}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1550, file: !1121, line: 611, baseType: !791, size: 192, align: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1550, file: !1121, line: 618, baseType: !195, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1550, file: !1121, line: 619, baseType: !195, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1550, file: !1121, line: 620, baseType: !195, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1550, file: !1121, line: 621, baseType: !195, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1550, file: !1121, line: 622, baseType: !195, size: 64, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1550, file: !1121, line: 629, baseType: !689, size: 64, offset: 512)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1550, file: !1121, line: 630, baseType: !195, size: 64, offset: 576)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1550, file: !1121, line: 631, baseType: !7, size: 32, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1550, file: !1121, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1550, file: !1121, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1550, file: !1121, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1550, file: !1121, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1550, file: !1121, line: 662, baseType: !1566, size: 512, offset: 704)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1567)
!1567 = !{!1568, !1576, !1577, !1582, !1637, !1638, !1639, !1640}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1566, file: !25, line: 119, baseType: !1569, size: 256)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1570, line: 9, size: 256, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1569, file: !1570, line: 10, baseType: !791, size: 192, align: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1569, file: !1570, line: 11, baseType: !1574, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1575, line: 29, baseType: !689)
!1575 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1566, file: !25, line: 120, baseType: !1574, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1566, file: !25, line: 121, baseType: !1578, size: 64, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!24, !1581}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1566, file: !25, line: 122, baseType: !1583, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1585)
!1585 = !{!1586, !1611, !1612, !1615, !1620, !1621, !1632, !1636}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1584, file: !25, line: 160, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1588, file: !25, line: 216, baseType: !637, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1588, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1588, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1588, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1588, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1588, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1588, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1588, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1588, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1588, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1588, file: !25, line: 227, baseType: !257, size: 16, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1588, file: !25, line: 228, baseType: !257, size: 16, offset: 208)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1588, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1588, file: !25, line: 235, baseType: !1574, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1588, file: !25, line: 236, baseType: !1581, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1588, file: !25, line: 237, baseType: !1574, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1588, file: !25, line: 238, baseType: !1581, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1588, file: !25, line: 239, baseType: !1608, size: 4096, align: 512, offset: 512)
!1608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1584, size: 4096, align: 512, elements: !1609)
!1609 = !{!1610}
!1610 = !DISubrange(count: 8)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1584, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1584, file: !25, line: 162, baseType: !1613, size: 32, offset: 96)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !171, line: 32, baseType: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !378, line: 96, baseType: !109)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1584, file: !25, line: 163, baseType: !1616, size: 32, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !465, line: 274, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !465, line: 274, size: 32, elements: !1618)
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1617, file: !465, line: 274, baseType: !469, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1584, file: !25, line: 164, baseType: !1581, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1584, file: !25, line: 165, baseType: !1622, size: 128, offset: 256)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1570, line: 14, size: 128, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1622, file: !1570, line: 15, baseType: !1625, size: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !792, line: 26, size: 128, elements: !1626)
!1626 = !{!1627, !1631}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1625, file: !792, line: 27, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !792, line: 12, size: 64, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1628, file: !792, line: 13, baseType: !796, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1625, file: !792, line: 28, baseType: !796, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1584, file: !25, line: 166, baseType: !1633, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1574}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1584, file: !25, line: 167, baseType: !1574, size: 64, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1566, file: !25, line: 123, baseType: !306, size: 8, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1566, file: !25, line: 124, baseType: !306, size: 8, offset: 456)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1566, file: !25, line: 125, baseType: !306, size: 8, offset: 464)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1566, file: !25, line: 126, baseType: !306, size: 8, offset: 472)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1550, file: !1121, line: 671, baseType: !1566, size: 512, offset: 1216)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1550, file: !1121, line: 679, baseType: !1643, size: 64, offset: 1728)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1446, file: !1121, line: 800, baseType: !1645, size: 64, offset: 5248)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1647)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1121, line: 800, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1446, file: !1121, line: 809, baseType: !1649, size: 64, offset: 5312)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1121, line: 70, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1446, file: !1121, line: 825, baseType: !1652, size: 2048, align: 512, offset: 5632)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1121, line: 509, size: 2048, align: 512, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1652, file: !1121, line: 511, baseType: !195, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1652, file: !1121, line: 512, baseType: !195, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1652, file: !1121, line: 513, baseType: !195, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1652, file: !1121, line: 514, baseType: !195, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1652, file: !1121, line: 515, baseType: !195, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1652, file: !1121, line: 516, baseType: !195, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1652, file: !1121, line: 518, baseType: !195, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1652, file: !1121, line: 519, baseType: !195, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1652, file: !1121, line: 520, baseType: !689, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1652, file: !1121, line: 522, baseType: !195, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1652, file: !1121, line: 523, baseType: !195, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1652, file: !1121, line: 524, baseType: !689, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1652, file: !1121, line: 526, baseType: !689, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1652, file: !1121, line: 527, baseType: !195, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1652, file: !1121, line: 529, baseType: !195, size: 64, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1652, file: !1121, line: 530, baseType: !195, size: 64, offset: 960)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1652, file: !1121, line: 531, baseType: !195, size: 64, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1652, file: !1121, line: 532, baseType: !195, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1652, file: !1121, line: 533, baseType: !195, size: 64, offset: 1152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1652, file: !1121, line: 535, baseType: !195, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1652, file: !1121, line: 536, baseType: !195, size: 64, offset: 1280)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1652, file: !1121, line: 537, baseType: !195, size: 64, offset: 1344)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1652, file: !1121, line: 538, baseType: !195, size: 64, offset: 1408)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1652, file: !1121, line: 539, baseType: !195, size: 64, offset: 1472)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1652, file: !1121, line: 540, baseType: !195, size: 64, offset: 1536)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1652, file: !1121, line: 541, baseType: !195, size: 64, offset: 1600)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1652, file: !1121, line: 542, baseType: !195, size: 64, offset: 1664)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1652, file: !1121, line: 543, baseType: !195, size: 64, offset: 1728)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1446, file: !1121, line: 833, baseType: !7, size: 32, offset: 7680)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1446, file: !1121, line: 836, baseType: !7, size: 32, offset: 7712)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1446, file: !1121, line: 837, baseType: !109, size: 32, offset: 7744)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1446, file: !1121, line: 838, baseType: !1686, size: 64, offset: 7808)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1689, line: 19, baseType: !1690)
!1689 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1689, line: 19, size: 64, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1690, file: !1689, line: 19, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 64, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 1)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1446, file: !1121, line: 839, baseType: !1697, size: 64, offset: 7872)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1446, file: !1121, line: 840, baseType: !1688, size: 64, offset: 7936)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1446, file: !1121, line: 841, baseType: !164, size: 64, offset: 8000)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1446, file: !1121, line: 843, baseType: !257, size: 16, offset: 8064)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1446, file: !1121, line: 845, baseType: !257, size: 16, offset: 8080)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1446, file: !1121, line: 848, baseType: !109, size: 32, offset: 8096)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1446, file: !1121, line: 849, baseType: !1704, size: 32, offset: 8128)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1121, line: 718, size: 32, elements: !1705)
!1705 = !{!1706, !1713}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1704, file: !1121, line: 724, baseType: !1707, size: 32)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !1121, line: 719, size: 32, elements: !1708)
!1708 = !{!1709, !1710, !1711, !1712}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1707, file: !1121, line: 720, baseType: !306, size: 8)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1707, file: !1121, line: 721, baseType: !306, size: 8, offset: 8)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1707, file: !1121, line: 722, baseType: !306, size: 8, offset: 16)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1707, file: !1121, line: 723, baseType: !306, size: 8, offset: 24)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1704, file: !1121, line: 725, baseType: !236, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1446, file: !1121, line: 850, baseType: !170, size: 128, offset: 8192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1446, file: !1121, line: 851, baseType: !1716, size: 64, offset: 8320)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1121, line: 60, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1446, file: !1121, line: 855, baseType: !206, size: 64, offset: 8384)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1446, file: !1121, line: 856, baseType: !306, size: 8, offset: 8448)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1446, file: !1121, line: 857, baseType: !306, size: 8, offset: 8456)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1446, file: !1121, line: 858, baseType: !109, size: 32, offset: 8480)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1446, file: !1121, line: 859, baseType: !170, size: 128, offset: 8512)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1446, file: !1121, line: 860, baseType: !109, size: 32, offset: 8640)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1446, file: !1121, line: 861, baseType: !170, size: 128, offset: 8704)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1446, file: !1121, line: 873, baseType: !1726, size: 256, offset: 8832)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1121, line: 376, size: 256, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1731}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1726, file: !1121, line: 381, baseType: !206, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1726, file: !1121, line: 384, baseType: !199, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1726, file: !1121, line: 389, baseType: !199, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1726, file: !1121, line: 392, baseType: !199, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1446, file: !1121, line: 875, baseType: !170, size: 128, offset: 9088)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1446, file: !1121, line: 877, baseType: !1734, size: 320, offset: 9216)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1735, line: 86, size: 320, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1736 = !{!1737, !1738, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1734, file: !1735, line: 87, baseType: !109, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1734, file: !1735, line: 88, baseType: !170, size: 128, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1734, file: !1735, line: 89, baseType: !170, size: 128, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1446, file: !1121, line: 878, baseType: !791, size: 192, align: 64, offset: 9536)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1446, file: !1121, line: 881, baseType: !1742, size: 64, offset: 9728)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1744)
!1744 = !{!1745, !2619}
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !38, line: 734, baseType: !1746, size: 10240)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !38, line: 734, size: 10240, elements: !1747)
!1747 = !{!1748, !1752, !1765, !2496, !2497, !2498, !2499, !2500, !2501, !2508, !2509, !2510, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2549, !2551, !2554, !2599, !2600, !2601, !2604, !2605, !2606, !2609, !2610, !2611, !2617, !2618}
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !38, line: 739, baseType: !1749, size: 512, align: 512)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !38, line: 739, size: 512, align: 512, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1749, file: !38, line: 747, baseType: !298, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1746, file: !38, line: 750, baseType: !1753, size: 128, offset: 512)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1754, line: 218, size: 128, elements: !1755)
!1754 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1755 = !{!1756, !1763, !1764}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !1754, line: 219, baseType: !1757, size: 32)
!1757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1753, file: !1754, line: 219, size: 32, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1757, file: !1754, line: 220, baseType: !278, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1757, file: !1754, line: 221, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1754, line: 197, baseType: !1762)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1754, line: 197, elements: !966)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1753, file: !1754, line: 223, baseType: !7, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1753, file: !1754, line: 224, baseType: !164, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1746, file: !38, line: 752, baseType: !1766, size: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!206, !1769, !206, !206, !206, !206}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1771)
!1771 = !{!1772, !1778, !1779, !1781, !1782, !1783, !1784, !1785, !1835, !2025, !2034, !2035, !2036, !2486, !2487, !2488, !2489, !2491, !2492, !2495}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !14, line: 995, baseType: !1773, size: 128)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !14, line: 995, size: 128, elements: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1773, file: !14, line: 996, baseType: !1472, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1773, file: !14, line: 997, baseType: !899, size: 128, align: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1773, file: !14, line: 998, baseType: !7, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1770, file: !14, line: 1005, baseType: !278, size: 32, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1770, file: !14, line: 1006, baseType: !1780, size: 32, offset: 160)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !171, line: 156, baseType: !7)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1770, file: !14, line: 1007, baseType: !683, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1770, file: !14, line: 1008, baseType: !679, size: 256, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1770, file: !14, line: 1009, baseType: !579, size: 64, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1770, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1770, file: !14, line: 1011, baseType: !1786, size: 256, offset: 640)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1787)
!1787 = !{!1788, !1809, !1831, !1832, !1833, !1834}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1786, file: !14, line: 949, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1790, line: 34, baseType: !1791)
!1790 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1790, line: 25, size: 64, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1791, file: !1790, line: 26, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1795, line: 27, baseType: !1796)
!1795 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1795, line: 13, size: 64, elements: !1797)
!1797 = !{!1798, !1808}
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1796, file: !1795, line: 14, baseType: !1799, size: 32)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1796, file: !1795, line: 14, size: 32, elements: !1800)
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1799, file: !1795, line: 15, baseType: !298, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1795, line: 16, baseType: !1803, size: 32)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !1795, line: 16, size: 32, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1803, file: !1795, line: 18, baseType: !306, size: 8)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1803, file: !1795, line: 19, baseType: !1807, size: 24, offset: 8)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 24, elements: !345)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1796, file: !1795, line: 26, baseType: !290, size: 32, offset: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1786, file: !14, line: 950, baseType: !1810, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1818, !1819, !1820, !1821}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1811, file: !30, line: 61, baseType: !1459, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1811, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1811, file: !30, line: 63, baseType: !278, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1811, file: !30, line: 65, baseType: !1817, size: 256, offset: 128)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1047, size: 256, elements: !211)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1811, file: !30, line: 66, baseType: !1047, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1811, file: !30, line: 68, baseType: !1432, size: 192, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1811, file: !30, line: 69, baseType: !899, size: 128, align: 64, offset: 640)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1811, file: !30, line: 70, baseType: !1822, offset: 768)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1823, elements: !1829)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1823, file: !30, line: 55, baseType: !109, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1823, file: !30, line: 56, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1829 = !{!1830}
!1830 = !DISubrange(count: -1)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1786, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1786, file: !14, line: 952, baseType: !429, size: 32, offset: 160)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1786, file: !14, line: 952, baseType: !429, size: 32, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1786, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1770, file: !14, line: 1012, baseType: !1836, size: 64, offset: 896)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1839, line: 110, size: 1472, elements: !1840)
!1839 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1857, !1858, !1859, !1860, !1861, !1862, !1970, !1971, !1972, !1973, !1974, !2005, !2008, !2012, !2020}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1838, file: !1839, line: 111, baseType: !683, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1838, file: !1839, line: 112, baseType: !429, size: 32, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1838, file: !1839, line: 113, baseType: !438, size: 32, offset: 96)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1838, file: !1839, line: 114, baseType: !429, size: 32, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1838, file: !1839, line: 115, baseType: !438, size: 32, offset: 160)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1838, file: !1839, line: 116, baseType: !429, size: 32, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1838, file: !1839, line: 117, baseType: !438, size: 32, offset: 224)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1838, file: !1839, line: 118, baseType: !429, size: 32, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1838, file: !1839, line: 119, baseType: !438, size: 32, offset: 288)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1838, file: !1839, line: 120, baseType: !7, size: 32, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1838, file: !1839, line: 121, baseType: !1852, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1853, line: 24, baseType: !1854)
!1853 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1853, line: 24, size: 64, elements: !1855)
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1854, file: !1853, line: 24, baseType: !195, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1838, file: !1839, line: 122, baseType: !1852, size: 64, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1838, file: !1839, line: 123, baseType: !1852, size: 64, offset: 512)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1838, file: !1839, line: 124, baseType: !1852, size: 64, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1838, file: !1839, line: 125, baseType: !1852, size: 64, offset: 640)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1838, file: !1839, line: 127, baseType: !248, size: 8, offset: 704)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1838, file: !1839, line: 129, baseType: !1863, size: 64, offset: 768)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1865, line: 195, size: 1728, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1866 = !{!1867, !1868, !1871, !1876, !1877, !1880, !1881, !1886, !1887, !1888, !1889, !1892, !1893, !1894, !1895, !1896, !1934, !1955}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1864, file: !1865, line: 196, baseType: !1459, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1864, file: !1865, line: 197, baseType: !1869, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1865, line: 28, baseType: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !171, line: 104, baseType: !675)
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 198, baseType: !1872, size: 192, offset: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 198, size: 192, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1872, file: !1865, line: 199, baseType: !170, size: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1872, file: !1865, line: 200, baseType: !791, size: 192, align: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1864, file: !1865, line: 205, baseType: !1339, size: 320, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1864, file: !1865, line: 206, baseType: !1878, size: 64, offset: 576)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1865, line: 206, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1864, file: !1865, line: 207, baseType: !164, size: 64, offset: 640)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 208, baseType: !1882, size: 64, offset: 704)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 208, size: 64, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1882, file: !1865, line: 209, baseType: !1179, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1882, file: !1865, line: 210, baseType: !1179, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1864, file: !1865, line: 212, baseType: !1179, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1864, file: !1865, line: 213, baseType: !429, size: 32, offset: 832)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1864, file: !1865, line: 214, baseType: !438, size: 32, offset: 864)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1864, file: !1865, line: 215, baseType: !1890, size: 32, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1865, line: 31, baseType: !1891)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !171, line: 110, baseType: !236)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1864, file: !1865, line: 216, baseType: !257, size: 16, offset: 928)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1864, file: !1865, line: 217, baseType: !257, size: 16, offset: 944)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1864, file: !1865, line: 221, baseType: !817, size: 16, offset: 960)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1864, file: !1865, line: 228, baseType: !206, size: 64, offset: 1024)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 245, baseType: !1897, size: 320, offset: 1088)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 245, size: 320, elements: !1898)
!1898 = !{!1899, !1926}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1897, file: !1865, line: 246, baseType: !1900, size: 320)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1865, line: 114, size: 320, elements: !1901)
!1901 = !{!1902, !1903, !1915, !1918, !1925}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1900, file: !1865, line: 116, baseType: !206, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !1865, line: 117, baseType: !1904, size: 64, offset: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !1865, line: 117, size: 64, elements: !1905)
!1905 = !{!1906, !1914}
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1904, file: !1865, line: 118, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1865, line: 118, size: 64, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1907, file: !1865, line: 120, baseType: !313, size: 16)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1907, file: !1865, line: 121, baseType: !1911, size: 48, offset: 16)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 48, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 6)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1904, file: !1865, line: 127, baseType: !206, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1900, file: !1865, line: 129, baseType: !1916, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1865, line: 102, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1900, file: !1865, line: 130, baseType: !1919, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1865, line: 108, size: 192, elements: !1921)
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1920, file: !1865, line: 109, baseType: !899, size: 128, align: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1920, file: !1865, line: 110, baseType: !1459, size: 32, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1920, file: !1865, line: 111, baseType: !759, size: 8, offset: 160)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1900, file: !1865, line: 131, baseType: !202, size: 64, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !1865, line: 247, baseType: !1927, size: 320)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1897, file: !1865, line: 247, size: 320, elements: !1928)
!1928 = !{!1929, !1930, !1931, !1932, !1933}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1927, file: !1865, line: 248, baseType: !206, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1927, file: !1865, line: 249, baseType: !206, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1927, file: !1865, line: 250, baseType: !1916, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1927, file: !1865, line: 251, baseType: !1919, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1927, file: !1865, line: 252, baseType: !344, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 260, baseType: !1935, size: 256, offset: 1408)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 260, size: 256, elements: !1936)
!1936 = !{!1937, !1943}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1935, file: !1865, line: 261, baseType: !1938, size: 256)
!1938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1865, line: 134, size: 256, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1938, file: !1865, line: 135, baseType: !164, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1938, file: !1865, line: 136, baseType: !1942, size: 256)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !211)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1865, line: 262, baseType: !1944, size: 256)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1865, line: 262, size: 256, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1944, file: !1865, line: 264, baseType: !170, size: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1944, file: !1865, line: 265, baseType: !1948, size: 128, offset: 128)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1949, line: 22, size: 128, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1950 = !{!1951, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1948, file: !1949, line: 23, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1949, line: 23, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1948, file: !1949, line: 24, baseType: !206, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1864, file: !1865, line: 280, baseType: !1956, size: 64, offset: 1664)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1865, line: 176, size: 192, elements: !1958)
!1958 = !{!1959, !1968, !1969}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1957, file: !1865, line: 177, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1865, line: 171, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!109, !1863, !1964, !1966, !1863}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1917)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1938)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1957, file: !1865, line: 178, baseType: !1863, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1957, file: !1865, line: 179, baseType: !1916, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1838, file: !1839, line: 130, baseType: !1863, size: 64, offset: 832)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1838, file: !1839, line: 131, baseType: !1863, size: 64, offset: 896)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1838, file: !1839, line: 132, baseType: !1863, size: 64, offset: 960)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1838, file: !1839, line: 135, baseType: !164, size: 64, offset: 1024)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1838, file: !1839, line: 137, baseType: !1975, size: 64, offset: 1088)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1977, line: 14, size: 1088, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1978 = !{!1979, !1980, !1989, !1990, !1991, !1992, !1993, !1994}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1976, file: !1977, line: 15, baseType: !1459, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1976, file: !1977, line: 17, baseType: !1981, size: 320, offset: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1982, line: 22, size: 320, elements: !1983)
!1982 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1983 = !{!1984, !1985, !1986, !1987}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1981, file: !1982, line: 23, baseType: !637, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1981, file: !1982, line: 24, baseType: !689, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1981, file: !1982, line: 26, baseType: !170, size: 128, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1981, file: !1982, line: 28, baseType: !1988, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1976, file: !1977, line: 19, baseType: !206, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1976, file: !1977, line: 20, baseType: !683, size: 64, offset: 448)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1976, file: !1977, line: 23, baseType: !923, size: 128, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1976, file: !1977, line: 24, baseType: !429, size: 32, offset: 640)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1976, file: !1977, line: 29, baseType: !683, size: 64, offset: 704)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1976, file: !1977, line: 36, baseType: !1995, size: 320, offset: 768)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1996, line: 15, size: 320, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1995, file: !1996, line: 16, baseType: !637, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1995, file: !1996, line: 18, baseType: !109, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1995, file: !1996, line: 19, baseType: !109, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1995, file: !1996, line: 20, baseType: !109, size: 32, offset: 96)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1995, file: !1996, line: 21, baseType: !109, size: 32, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1995, file: !1996, line: 22, baseType: !206, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1995, file: !1996, line: 23, baseType: !206, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1838, file: !1839, line: 138, baseType: !2006, size: 64, offset: 1152)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1838, file: !1839, line: 139, baseType: !2009, size: 64, offset: 1216)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2011, line: 16, flags: DIFlagFwdDecl)
!2011 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1838, file: !1839, line: 140, baseType: !2013, size: 64, offset: 1280)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1839, line: 25, size: 64, elements: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2014, file: !1839, line: 26, baseType: !298, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2014, file: !1839, line: 27, baseType: !109, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2014, file: !1839, line: 28, baseType: !2019, offset: 64)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, elements: !1829)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !1838, file: !1839, line: 142, baseType: !2021, size: 128, offset: 1344)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1838, file: !1839, line: 142, size: 128, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2021, file: !1839, line: 143, baseType: !109, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2021, file: !1839, line: 144, baseType: !899, size: 128, align: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1770, file: !14, line: 1013, baseType: !2026, size: 256, offset: 960)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2031, !2032, !2033}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2026, file: !14, line: 971, baseType: !206, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2026, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2026, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2026, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2026, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2026, file: !14, line: 976, baseType: !579, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1770, file: !14, line: 1014, baseType: !1251, size: 128, offset: 1216)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1770, file: !14, line: 1015, baseType: !423, size: 64, offset: 1344)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1770, file: !14, line: 1016, baseType: !2037, size: 64, offset: 1408)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2039)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2040)
!2040 = !{!2041, !2042, !2046, !2051, !2055, !2084, !2085, !2091, !2104, !2112, !2116, !2117, !2408, !2409, !2413, !2418, !2419, !2423, !2427, !2433, !2434, !2438, !2439, !2445, !2449, !2453, !2459, !2463, !2467, !2471, !2475, !2476, !2482}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2039, file: !14, line: 1915, baseType: !608, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2039, file: !14, line: 1916, baseType: !2043, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!579, !1769, !579, !109}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2039, file: !14, line: 1917, baseType: !2047, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!376, !1769, !344, !391, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2039, file: !14, line: 1918, baseType: !2052, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!376, !1769, !202, !391, !2050}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2039, file: !14, line: 1919, baseType: !2056, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!376, !2059, !2081}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2061)
!2061 = !{!2062, !2063, !2064, !2068, !2069, !2070, !2071}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2060, file: !14, line: 374, baseType: !1769, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2060, file: !14, line: 375, baseType: !579, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2060, file: !14, line: 376, baseType: !2065, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !2059, !380}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2060, file: !14, line: 377, baseType: !164, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2060, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2060, file: !14, line: 379, baseType: !313, size: 16, offset: 288)
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !14, line: 380, baseType: !2072, size: 64, offset: 320)
!2072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !14, line: 380, size: 64, elements: !2073)
!2073 = !{!2074, !2077}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2072, file: !14, line: 386, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2072, file: !14, line: 395, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!376, !164}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2083, line: 17, flags: DIFlagFwdDecl)
!2083 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2039, file: !14, line: 1920, baseType: !2056, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2039, file: !14, line: 1921, baseType: !2086, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!109, !2059, !2089, !7}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2039, file: !14, line: 1923, baseType: !2092, size: 64, offset: 448)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!109, !1769, !2095}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2097)
!2097 = !{!2098, !2103}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2096, file: !14, line: 1859, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2100)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!759, !2095, !202, !109, !579, !195, !7}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2096, file: !14, line: 1860, baseType: !579, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2039, file: !14, line: 1924, baseType: !2105, size: 64, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!2108, !1769, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2109, line: 59, baseType: !7)
!2109 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !594, line: 31, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2039, file: !14, line: 1925, baseType: !2113, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!380, !1769, !7, !206}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2039, file: !14, line: 1926, baseType: !2113, size: 64, offset: 640)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2039, file: !14, line: 1927, baseType: !2118, size: 64, offset: 704)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!109, !1769, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2123)
!2123 = !{!2124, !2133, !2134, !2142, !2149, !2150, !2155, !2156, !2161, !2162, !2165, !2401, !2402, !2403, !2404, !2405, !2406}
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !38, line: 628, baseType: !2125, size: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !38, line: 628, size: 128, elements: !2126)
!2126 = !{!2127, !2132}
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !38, line: 629, baseType: !2128, size: 128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !38, line: 629, size: 128, elements: !2129)
!2129 = !{!2130, !2131}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2128, file: !38, line: 631, baseType: !206, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2128, file: !38, line: 632, baseType: !206, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2125, file: !38, line: 635, baseType: !899, size: 128, align: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2122, file: !38, line: 639, baseType: !1742, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2122, file: !38, line: 640, baseType: !2135, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2136, line: 297, baseType: !2137)
!2136 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2136, line: 297, size: 64, elements: !2138)
!2138 = !{!2139}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2137, file: !2136, line: 297, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2141, line: 19, baseType: !206)
!2141 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !38, line: 646, baseType: !2143, size: 64, offset: 256)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !38, line: 646, size: 64, elements: !2144)
!2144 = !{!2145, !2148}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2143, file: !38, line: 647, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2147)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !206)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2143, file: !38, line: 648, baseType: !2147, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2122, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2122, file: !38, line: 667, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2153)
!2153 = !{!2154}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2152, file: !38, line: 580, baseType: !1339, size: 320)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2122, file: !38, line: 670, baseType: !759, size: 8, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2122, file: !38, line: 681, baseType: !2157, size: 256, offset: 512)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !38, line: 678, size: 256, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2157, file: !38, line: 679, baseType: !791, size: 192, align: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2157, file: !38, line: 680, baseType: !206, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2122, file: !38, line: 689, baseType: !170, size: 128, offset: 768)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2122, file: !38, line: 691, baseType: !2163, size: 64, offset: 896)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2122, file: !38, line: 694, baseType: !2166, size: 64, offset: 960)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2168)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2169, line: 563, size: 1024, elements: !2170)
!2169 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2170 = !{!2171, !2175, !2176, !2180, !2184, !2188, !2365, !2369, !2373, !2377, !2378, !2379, !2383, !2387, !2393, !2397}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2168, file: !2169, line: 564, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2121}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2168, file: !2169, line: 569, baseType: !2172, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2168, file: !2169, line: 571, baseType: !2177, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!109, !2121, !206}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2168, file: !2169, line: 572, baseType: !2181, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!109, !2121}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2168, file: !2169, line: 578, baseType: !2185, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!109, !2121, !206, !206, !206}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2168, file: !2169, line: 580, baseType: !2189, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2169, line: 512, size: 896, elements: !2195)
!2195 = !{!2196, !2204, !2205, !2212, !2219, !2229, !2358, !2359, !2361, !2363}
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2169, line: 513, baseType: !2197, size: 320)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2194, file: !2169, line: 513, size: 320, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2197, file: !2169, line: 514, baseType: !2121, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2197, file: !2169, line: 515, baseType: !1191, size: 32, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2197, file: !2169, line: 516, baseType: !206, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2197, file: !2169, line: 517, baseType: !206, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2197, file: !2169, line: 518, baseType: !206, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2194, file: !2169, line: 520, baseType: !37, size: 32, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2194, file: !2169, line: 522, baseType: !2206, size: 64, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2141, line: 22, baseType: !2208)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2141, line: 22, size: 64, elements: !2209)
!2209 = !{!2210}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2208, file: !2141, line: 22, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2141, line: 15, baseType: !206)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2194, file: !2169, line: 524, baseType: !2213, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2136, line: 372, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2136, line: 372, size: 64, elements: !2216)
!2216 = !{!2217}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2215, file: !2136, line: 372, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2141, line: 16, baseType: !206)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2169, line: 527, baseType: !2220, size: 64, offset: 512)
!2220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2194, file: !2169, line: 527, size: 64, elements: !2221)
!2221 = !{!2222, !2228}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2220, file: !2169, line: 528, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2141, line: 21, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2141, line: 21, size: 64, elements: !2225)
!2225 = !{!2226}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2224, file: !2141, line: 21, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2141, line: 14, baseType: !206)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2220, file: !2169, line: 529, baseType: !2207, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2194, file: !2169, line: 534, baseType: !2230, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2232)
!2232 = !{!2233, !2234, !2352, !2357}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !38, line: 75, baseType: !206, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !38, line: 83, baseType: !2235, size: 320, offset: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !38, line: 83, size: 320, elements: !2236)
!2236 = !{!2237, !2258, !2272, !2276, !2351}
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 84, baseType: !2238, size: 320)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 84, size: 320, elements: !2239)
!2239 = !{!2240, !2251, !2252, !2257}
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !38, line: 90, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !38, line: 90, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2249, !2250}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2241, file: !38, line: 91, baseType: !170, size: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !38, line: 94, baseType: !2245, size: 128)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !38, line: 94, size: 128, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2245, file: !38, line: 96, baseType: !164, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2245, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2241, file: !38, line: 102, baseType: !170, size: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2241, file: !38, line: 103, baseType: !170, size: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2238, file: !38, line: 106, baseType: !419, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !38, line: 107, baseType: !2253, size: 64, offset: 192)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !38, line: 107, size: 64, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2253, file: !38, line: 108, baseType: !206, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2253, file: !38, line: 109, baseType: !206, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2238, file: !38, line: 117, baseType: !206, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 119, baseType: !2259, size: 320)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 119, size: 320, elements: !2260)
!2260 = !{!2261, !2262, !2265, !2266, !2267}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2259, file: !38, line: 124, baseType: !206, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2259, file: !38, line: 125, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2259, file: !38, line: 126, baseType: !206, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2259, file: !38, line: 127, baseType: !206, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !38, line: 128, baseType: !2268, size: 64, offset: 256)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2259, file: !38, line: 128, size: 64, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2268, file: !38, line: 133, baseType: !206, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2268, file: !38, line: 138, baseType: !683, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 141, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 141, size: 64, elements: !2274)
!2274 = !{!2275}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2273, file: !38, line: 142, baseType: !206, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 144, baseType: !2277, size: 128)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 144, size: 128, elements: !2278)
!2278 = !{!2279, !2350}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2277, file: !38, line: 146, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2282)
!2282 = !{!2283, !2293, !2314, !2315, !2316, !2317, !2318, !2332, !2333, !2334}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2281, file: !54, line: 127, baseType: !2284, size: 384)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2285)
!2285 = !{!2286, !2287, !2289, !2290, !2291, !2292}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2284, file: !54, line: 22, baseType: !206, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2284, file: !54, line: 23, baseType: !2288, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2284, file: !54, line: 24, baseType: !2288, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2284, file: !54, line: 25, baseType: !206, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2284, file: !54, line: 26, baseType: !206, size: 64, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2284, file: !54, line: 27, baseType: !206, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2281, file: !54, line: 128, baseType: !2294, size: 128, offset: 384)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2295, line: 105, size: 128, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2294, file: !2295, line: 110, baseType: !206, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2294, file: !2295, line: 118, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2295, line: 95, size: 448, elements: !2301)
!2301 = !{!2302, !2303, !2309, !2310, !2311, !2312, !2313}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2300, file: !2295, line: 96, baseType: !683, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2300, file: !2295, line: 97, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2295, line: 60, baseType: !2306)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2300, file: !2295, line: 98, baseType: !2304, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2300, file: !2295, line: 99, baseType: !759, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2300, file: !2295, line: 100, baseType: !759, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2300, file: !2295, line: 101, baseType: !899, size: 128, align: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2300, file: !2295, line: 102, baseType: !2308, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2281, file: !54, line: 129, baseType: !628, size: 256, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2281, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2281, file: !54, line: 132, baseType: !206, size: 64, offset: 832)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2281, file: !54, line: 133, baseType: !2319, size: 64, offset: 896)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2321)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2322)
!2322 = !{!2323, !2327, !2328}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2321, file: !54, line: 83, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2230}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2321, file: !54, line: 89, baseType: !2189, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2321, file: !54, line: 100, baseType: !2329, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!109, !2280, !206, !206, !109}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2281, file: !54, line: 134, baseType: !164, size: 64, offset: 960)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2281, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !54, line: 136, baseType: !2335, size: 128, offset: 1088)
!2335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !54, line: 136, size: 128, elements: !2336)
!2336 = !{!2337, !2343}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2335, file: !54, line: 137, baseType: !2338, size: 128)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2339, line: 6, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2340 = !{!2341, !2342}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2338, file: !2339, line: 7, baseType: !195, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2338, file: !2339, line: 8, baseType: !195, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !54, line: 138, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2335, file: !54, line: 138, elements: !2345)
!2345 = !{!2346, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2344, file: !54, line: 138, baseType: !2347)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !54, line: 138, elements: !966)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2344, file: !54, line: 138, baseType: !2349)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, elements: !1829)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2277, file: !38, line: 147, baseType: !164, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2235, file: !38, line: 161, baseType: !899, size: 128, align: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !38, line: 164, baseType: !2353, size: 32, offset: 384)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !38, line: 164, size: 32, elements: !2354)
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2353, file: !38, line: 169, baseType: !298, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2353, file: !38, line: 177, baseType: !7, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2231, file: !38, line: 181, baseType: !298, size: 32, offset: 416)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2194, file: !2169, line: 535, baseType: !2230, size: 64, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2194, file: !2169, line: 541, baseType: !2360, size: 64, offset: 704)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2194, file: !2169, line: 545, baseType: !2362, size: 64, offset: 768)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2194, file: !2169, line: 549, baseType: !2364, size: 64, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2136, line: 520, baseType: !2230)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2168, file: !2169, line: 581, baseType: !2366, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!2192, !2193, !7}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2168, file: !2169, line: 582, baseType: !2370, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!2192, !2193, !206, !206}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2168, file: !2169, line: 584, baseType: !2374, size: 64, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!206, !2121}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2168, file: !2169, line: 588, baseType: !2189, size: 64, offset: 576)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2168, file: !2169, line: 591, baseType: !2189, size: 64, offset: 640)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2168, file: !2169, line: 597, baseType: !2380, size: 64, offset: 704)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!109, !2121, !206, !164, !109, !109}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2168, file: !2169, line: 603, baseType: !2384, size: 64, offset: 768)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!202, !2121}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2168, file: !2169, line: 613, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!109, !2121, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2168, file: !2169, line: 625, baseType: !2394, size: 64, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!2391, !2121, !206}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2168, file: !2169, line: 633, baseType: !2398, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!2230, !2121, !206}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2122, file: !38, line: 697, baseType: !206, size: 64, offset: 1024)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2122, file: !38, line: 699, baseType: !1769, size: 64, offset: 1088)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2122, file: !38, line: 700, baseType: !164, size: 64, offset: 1152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2122, file: !38, line: 711, baseType: !683, size: 64, offset: 1216)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2122, file: !38, line: 717, baseType: !2391, size: 64, offset: 1280)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2122, file: !38, line: 722, baseType: !2407, offset: 1344)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !966)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2039, file: !14, line: 1928, baseType: !206, size: 64, offset: 768)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2039, file: !14, line: 1929, baseType: !2410, size: 64, offset: 832)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!109, !423, !1769}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2039, file: !14, line: 1930, baseType: !2414, size: 64, offset: 896)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!109, !1769, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !164)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2039, file: !14, line: 1931, baseType: !2410, size: 64, offset: 960)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2039, file: !14, line: 1932, baseType: !2420, size: 64, offset: 1024)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!109, !1769, !579, !579, !109}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2039, file: !14, line: 1933, baseType: !2424, size: 64, offset: 1088)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!109, !109, !1769, !109}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2039, file: !14, line: 1934, baseType: !2428, size: 64, offset: 1152)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!109, !1769, !109, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2039, file: !14, line: 1935, baseType: !1766, size: 64, offset: 1216)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2039, file: !14, line: 1936, baseType: !2435, size: 64, offset: 1280)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!109, !109}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2039, file: !14, line: 1937, baseType: !2428, size: 64, offset: 1344)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2039, file: !14, line: 1938, baseType: !2440, size: 64, offset: 1408)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!376, !2443, !1769, !2050, !391, !7}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1121, line: 59, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2039, file: !14, line: 1939, baseType: !2446, size: 64, offset: 1472)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!376, !1769, !2050, !2443, !391, !7}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2039, file: !14, line: 1940, baseType: !2450, size: 64, offset: 1536)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !1769}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2039, file: !14, line: 1941, baseType: !2454, size: 64, offset: 1600)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!109, !1769, !109, !2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2039, file: !14, line: 1942, baseType: !2460, size: 64, offset: 1664)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!380, !1769, !109, !579, !579}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2039, file: !14, line: 1944, baseType: !2464, size: 64, offset: 1728)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !1119, !1769}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2039, file: !14, line: 1948, baseType: !2468, size: 64, offset: 1792)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!376, !1769, !579, !1769, !579, !391, !7}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2039, file: !14, line: 1950, baseType: !2472, size: 64, offset: 1856)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!579, !1769, !579, !1769, !579, !579, !7}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2039, file: !14, line: 1953, baseType: !2420, size: 64, offset: 1920)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2039, file: !14, line: 1954, baseType: !2477, size: 64, offset: 1984)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!109, !2480, !7}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2039, file: !14, line: 1955, baseType: !2483, size: 64, offset: 2048)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!109, !2480, !2089, !7}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1770, file: !14, line: 1018, baseType: !195, size: 64, offset: 1472)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1770, file: !14, line: 1020, baseType: !164, size: 64, offset: 1536)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1770, file: !14, line: 1023, baseType: !164, size: 64, offset: 1600)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1770, file: !14, line: 1027, baseType: !2490, size: 64, offset: 1664)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1770, file: !14, line: 1029, baseType: !419, size: 64, offset: 1728)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1770, file: !14, line: 1030, baseType: !2493, size: 32, offset: 1792)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2494, line: 8, baseType: !236)
!2494 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1770, file: !14, line: 1031, baseType: !2493, size: 32, offset: 1824)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1746, file: !38, line: 756, baseType: !206, size: 64, offset: 704)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1746, file: !38, line: 757, baseType: !206, size: 64, offset: 768)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1746, file: !38, line: 760, baseType: !206, size: 64, offset: 832)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1746, file: !38, line: 761, baseType: !206, size: 64, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1746, file: !38, line: 763, baseType: !206, size: 64, offset: 960)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1746, file: !38, line: 764, baseType: !2502, size: 64, offset: 1024)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2136, line: 299, baseType: !2504)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2136, line: 299, size: 64, elements: !2505)
!2505 = !{!2506}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2504, file: !2136, line: 299, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2141, line: 18, baseType: !206)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1746, file: !38, line: 773, baseType: !298, size: 32, offset: 1088)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1746, file: !38, line: 785, baseType: !298, size: 32, offset: 1120)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1746, file: !38, line: 795, baseType: !2511, size: 64, offset: 1152)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2513)
!2513 = !{!2514, !2515}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2512, file: !38, line: 727, baseType: !195, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2512, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1746, file: !38, line: 801, baseType: !206, size: 64, offset: 1216)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1746, file: !38, line: 804, baseType: !683, size: 64, offset: 1280)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1746, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1746, file: !38, line: 808, baseType: !278, size: 32, offset: 1376)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1746, file: !38, line: 823, baseType: !1339, size: 320, offset: 1408)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1746, file: !38, line: 825, baseType: !170, size: 128, offset: 1728)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1746, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1746, file: !38, line: 849, baseType: !206, size: 64, offset: 1920)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1746, file: !38, line: 850, baseType: !206, size: 64, offset: 1984)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1746, file: !38, line: 852, baseType: !206, size: 64, offset: 2048)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1746, file: !38, line: 853, baseType: !206, size: 64, offset: 2112)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1746, file: !38, line: 854, baseType: !685, size: 64, offset: 2176)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1746, file: !38, line: 855, baseType: !206, size: 64, offset: 2240)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1746, file: !38, line: 856, baseType: !206, size: 64, offset: 2304)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1746, file: !38, line: 857, baseType: !206, size: 64, offset: 2368)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1746, file: !38, line: 858, baseType: !206, size: 64, offset: 2432)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1746, file: !38, line: 865, baseType: !469, size: 32, offset: 2496)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1746, file: !38, line: 867, baseType: !278, size: 32, offset: 2528)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1746, file: !38, line: 869, baseType: !206, size: 64, offset: 2560)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1746, file: !38, line: 869, baseType: !206, size: 64, offset: 2624)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1746, file: !38, line: 869, baseType: !206, size: 64, offset: 2688)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1746, file: !38, line: 869, baseType: !206, size: 64, offset: 2752)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1746, file: !38, line: 870, baseType: !206, size: 64, offset: 2816)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1746, file: !38, line: 870, baseType: !206, size: 64, offset: 2880)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1746, file: !38, line: 870, baseType: !206, size: 64, offset: 2944)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1746, file: !38, line: 871, baseType: !206, size: 64, offset: 3008)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1746, file: !38, line: 871, baseType: !206, size: 64, offset: 3072)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1746, file: !38, line: 871, baseType: !206, size: 64, offset: 3136)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1746, file: !38, line: 871, baseType: !206, size: 64, offset: 3200)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1746, file: !38, line: 873, baseType: !2546, size: 3328, offset: 3264)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 3328, elements: !2547)
!2547 = !{!2548}
!2548 = !DISubrange(count: 52)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1746, file: !38, line: 875, baseType: !2550, size: 1280, offset: 6592)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1981, size: 1280, elements: !211)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1746, file: !38, line: 877, baseType: !2552, size: 64, offset: 7872)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1746, file: !38, line: 880, baseType: !2555, size: 1088, offset: 7936)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2556, line: 72, baseType: !2557)
!2556 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2556, line: 23, size: 1088, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562, !2563, !2566, !2567, !2568, !2569, !2596, !2597, !2598}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2557, file: !2556, line: 28, baseType: !195, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2557, file: !2556, line: 38, baseType: !685, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2557, file: !2556, line: 40, baseType: !206, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2557, file: !2556, line: 43, baseType: !1339, size: 320, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2557, file: !2556, line: 44, baseType: !2564, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2556, line: 44, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2557, file: !2556, line: 48, baseType: !206, size: 64, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2557, file: !2556, line: 59, baseType: !679, size: 256, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2557, file: !2556, line: 60, baseType: !164, size: 64, offset: 896)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2557, file: !2556, line: 61, baseType: !2570, size: 64, offset: 960)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2572)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2573, line: 13, size: 1216, elements: !2574)
!2573 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2572, file: !2573, line: 14, baseType: !164, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2572, file: !2573, line: 15, baseType: !206, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2572, file: !2573, line: 17, baseType: !206, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2572, file: !2573, line: 17, baseType: !206, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2572, file: !2573, line: 18, baseType: !206, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2572, file: !2573, line: 18, baseType: !206, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2572, file: !2573, line: 19, baseType: !2582, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2572, file: !2573, line: 21, baseType: !380, size: 64, offset: 448)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2572, file: !2573, line: 23, baseType: !380, size: 64, offset: 512)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2572, file: !2573, line: 24, baseType: !380, size: 64, offset: 576)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2572, file: !2573, line: 25, baseType: !380, size: 64, offset: 640)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2572, file: !2573, line: 26, baseType: !380, size: 64, offset: 704)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2572, file: !2573, line: 27, baseType: !380, size: 64, offset: 768)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2572, file: !2573, line: 28, baseType: !380, size: 64, offset: 832)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2572, file: !2573, line: 29, baseType: !380, size: 64, offset: 896)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2572, file: !2573, line: 30, baseType: !380, size: 64, offset: 960)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2572, file: !2573, line: 31, baseType: !380, size: 64, offset: 1024)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2572, file: !2573, line: 32, baseType: !380, size: 64, offset: 1088)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2572, file: !2573, line: 33, baseType: !380, size: 64, offset: 1152)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2557, file: !2556, line: 63, baseType: !298, size: 32, offset: 1024)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2557, file: !2556, line: 69, baseType: !313, size: 16, offset: 1056)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2557, file: !2556, line: 70, baseType: !815, size: 16, offset: 1072)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1746, file: !38, line: 882, baseType: !206, size: 64, offset: 9024)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1746, file: !38, line: 885, baseType: !278, size: 32, offset: 9088)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1746, file: !38, line: 886, baseType: !2602, size: 64, offset: 9152)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1746, file: !38, line: 901, baseType: !2006, size: 64, offset: 9216)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1746, file: !38, line: 904, baseType: !1769, size: 64, offset: 9280)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1746, file: !38, line: 906, baseType: !2607, size: 64, offset: 9344)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1746, file: !38, line: 930, baseType: !298, size: 32, offset: 9408)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1746, file: !38, line: 933, baseType: !298, size: 32, offset: 9440)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1746, file: !38, line: 935, baseType: !2612, size: 64, offset: 9472)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2613)
!2613 = !{!2614}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2612, file: !68, line: 104, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1746, file: !38, line: 940, baseType: !683, size: 64, offset: 9536)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1746, file: !38, line: 942, baseType: !937, size: 256, offset: 9600)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1743, file: !38, line: 986, baseType: !2620, offset: 10240)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, elements: !1829)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1446, file: !1121, line: 882, baseType: !1742, size: 64, offset: 9792)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1446, file: !1121, line: 884, baseType: !109, size: 32, offset: 9856)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1446, file: !1121, line: 885, baseType: !109, size: 32, offset: 9888)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1446, file: !1121, line: 886, baseType: !109, size: 32, offset: 9920)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1446, file: !1121, line: 888, baseType: !109, size: 32, offset: 9952)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1446, file: !1121, line: 890, baseType: !206, size: 64, offset: 9984)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1446, file: !1121, line: 893, baseType: !7, size: 32, offset: 10048)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1446, file: !1121, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1446, file: !1121, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1446, file: !1121, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1446, file: !1121, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1446, file: !1121, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1446, file: !1121, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1446, file: !1121, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1446, file: !1121, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1446, file: !1121, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1446, file: !1121, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1446, file: !1121, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1446, file: !1121, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1446, file: !1121, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1446, file: !1121, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1446, file: !1121, line: 969, baseType: !206, size: 64, offset: 10176)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1446, file: !1121, line: 971, baseType: !2644, size: 448, offset: 10240)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2645)
!2645 = !{!2646, !2647, !2652}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2644, file: !62, line: 26, baseType: !206, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2644, file: !62, line: 27, baseType: !2648, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!380, !2651}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !62, line: 28, baseType: !2653, size: 320, offset: 128)
!2653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2644, file: !62, line: 28, size: 320, elements: !2654)
!2654 = !{!2655, !2664, !2689}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2653, file: !62, line: 37, baseType: !2656, size: 320)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2653, file: !62, line: 30, size: 320, elements: !2657)
!2657 = !{!2658, !2659, !2660, !2661, !2662, !2663}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2656, file: !62, line: 31, baseType: !235, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2656, file: !62, line: 32, baseType: !236, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2656, file: !62, line: 33, baseType: !236, size: 32, offset: 96)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2656, file: !62, line: 34, baseType: !236, size: 32, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2656, file: !62, line: 35, baseType: !195, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2656, file: !62, line: 36, baseType: !235, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2653, file: !62, line: 47, baseType: !2665, size: 192)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2653, file: !62, line: 39, size: 192, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2688}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2665, file: !62, line: 40, baseType: !1613, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2665, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, scope: !2665, file: !62, line: 42, baseType: !2670, size: 64, offset: 64)
!2670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2665, file: !62, line: 42, size: 64, elements: !2671)
!2671 = !{!2672, !2680}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2670, file: !62, line: 43, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2675, line: 7, size: 128, elements: !2676)
!2675 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2676 = !{!2677, !2679}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2674, file: !2675, line: 8, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !378, line: 93, baseType: !581)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2674, file: !2675, line: 9, baseType: !581, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2670, file: !62, line: 44, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2683, line: 7, size: 64, elements: !2684)
!2683 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2684 = !{!2685, !2687}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2682, file: !2683, line: 8, baseType: !2686, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2683, line: 5, baseType: !675)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2682, file: !2683, line: 9, baseType: !675, size: 32, offset: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2665, file: !62, line: 46, baseType: !195, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2653, file: !62, line: 55, baseType: !2690, size: 256)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2653, file: !62, line: 49, size: 256, elements: !2691)
!2691 = !{!2692, !2695, !2696, !2697, !2698}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2690, file: !62, line: 50, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2690, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2690, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2690, file: !62, line: 53, baseType: !206, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2690, file: !62, line: 54, baseType: !206, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1446, file: !1121, line: 973, baseType: !2700, size: 32, offset: 10688)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !171, line: 27, baseType: !2701)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !378, line: 28, baseType: !109)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1446, file: !1121, line: 974, baseType: !2700, size: 32, offset: 10720)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1446, file: !1121, line: 978, baseType: !206, size: 64, offset: 10752)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1446, file: !1121, line: 987, baseType: !1445, size: 64, offset: 10816)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1446, file: !1121, line: 990, baseType: !1445, size: 64, offset: 10880)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1446, file: !1121, line: 995, baseType: !170, size: 128, offset: 10944)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1446, file: !1121, line: 996, baseType: !170, size: 128, offset: 11072)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1446, file: !1121, line: 997, baseType: !1445, size: 64, offset: 11200)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1446, file: !1121, line: 1005, baseType: !170, size: 128, offset: 11264)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1446, file: !1121, line: 1006, baseType: !170, size: 128, offset: 11392)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1446, file: !1121, line: 1009, baseType: !1810, size: 64, offset: 11520)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1446, file: !1121, line: 1010, baseType: !2713, size: 512, offset: 11584)
!2713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 512, elements: !211)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1446, file: !1121, line: 1011, baseType: !170, size: 128, offset: 12096)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1446, file: !1121, line: 1012, baseType: !170, size: 128, offset: 12224)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1446, file: !1121, line: 1014, baseType: !627, size: 64, offset: 12352)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1446, file: !1121, line: 1017, baseType: !808, size: 64, offset: 12416)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1446, file: !1121, line: 1020, baseType: !808, size: 64, offset: 12480)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1446, file: !1121, line: 1023, baseType: !164, size: 64, offset: 12544)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1446, file: !1121, line: 1025, baseType: !195, size: 64, offset: 12608)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1446, file: !1121, line: 1026, baseType: !195, size: 64, offset: 12672)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1446, file: !1121, line: 1031, baseType: !195, size: 64, offset: 12736)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1446, file: !1121, line: 1032, baseType: !2724, size: 192, offset: 12800)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1121, line: 324, size: 192, elements: !2725)
!2725 = !{!2726, !2727, !2728}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2724, file: !1121, line: 326, baseType: !195, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2724, file: !1121, line: 327, baseType: !195, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2724, file: !1121, line: 328, baseType: !637, size: 32, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1446, file: !1121, line: 1041, baseType: !206, size: 64, offset: 12992)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1446, file: !1121, line: 1042, baseType: !206, size: 64, offset: 13056)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1446, file: !1121, line: 1045, baseType: !195, size: 64, offset: 13120)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1446, file: !1121, line: 1048, baseType: !195, size: 64, offset: 13184)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1446, file: !1121, line: 1051, baseType: !206, size: 64, offset: 13248)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1446, file: !1121, line: 1052, baseType: !206, size: 64, offset: 13312)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1446, file: !1121, line: 1055, baseType: !2736, size: 640, offset: 13376)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2737, line: 132, size: 640, elements: !2738)
!2737 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2738 = !{!2739, !2745, !2746}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2736, file: !2737, line: 133, baseType: !2740, size: 576)
!2740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2741, size: 576, elements: !345)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2737, line: 117, size: 192, elements: !2742)
!2742 = !{!2743, !2744}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2741, file: !2737, line: 118, baseType: !195, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2741, file: !2737, line: 119, baseType: !1622, size: 128, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2736, file: !2737, line: 134, baseType: !7, size: 32, offset: 576)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2736, file: !2737, line: 135, baseType: !7, size: 32, offset: 608)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1446, file: !1121, line: 1058, baseType: !2748, size: 448, offset: 14016)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2737, line: 144, size: 448, elements: !2749)
!2749 = !{!2750, !2751, !2752}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2748, file: !2737, line: 145, baseType: !899, size: 128, align: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2748, file: !2737, line: 146, baseType: !679, size: 256, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2748, file: !2737, line: 147, baseType: !7, size: 32, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1446, file: !1121, line: 1064, baseType: !1836, size: 64, offset: 14464)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1446, file: !1121, line: 1067, baseType: !1836, size: 64, offset: 14528)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1446, file: !1121, line: 1070, baseType: !1836, size: 64, offset: 14592)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1446, file: !1121, line: 1074, baseType: !1863, size: 64, offset: 14656)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1446, file: !1121, line: 1084, baseType: !2758, size: 128, offset: 14720)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 128, elements: !2759)
!2759 = !{!2760}
!2760 = !DISubrange(count: 16)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1446, file: !1121, line: 1086, baseType: !2762, size: 64, offset: 14848)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1121, line: 55, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1446, file: !1121, line: 1089, baseType: !2765, size: 64, offset: 14912)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2766, line: 12, size: 64, elements: !2767)
!2766 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2767 = !{!2768}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2765, file: !2766, line: 13, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2766, line: 8, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1446, file: !1121, line: 1090, baseType: !2772, size: 128, offset: 14976)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2773, line: 13, size: 128, elements: !2774)
!2773 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2772, file: !2773, line: 14, baseType: !170, size: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1446, file: !1121, line: 1097, baseType: !2777, size: 64, offset: 15104)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1121, line: 50, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1446, file: !1121, line: 1100, baseType: !2780, size: 64, offset: 15168)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1121, line: 1100, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1446, file: !1121, line: 1103, baseType: !2783, size: 64, offset: 15232)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1121, line: 53, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1446, file: !1121, line: 1107, baseType: !2786, size: 64, offset: 15296)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1121, line: 56, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1446, file: !1121, line: 1110, baseType: !2789, size: 64, offset: 15360)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2791, line: 93, size: 8768, elements: !2792)
!2791 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2840, !2849, !2850, !2852, !2853, !2854, !2857, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2895, !2896, !2903, !2913, !2916, !2917, !2920, !2921, !2922, !2923, !2924, !2925}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2790, file: !2791, line: 94, baseType: !1459, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2790, file: !2791, line: 95, baseType: !298, size: 32, offset: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2790, file: !2791, line: 96, baseType: !109, size: 32, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2790, file: !2791, line: 97, baseType: !109, size: 32, offset: 96)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2790, file: !2791, line: 98, baseType: !170, size: 128, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2790, file: !2791, line: 100, baseType: !1432, size: 192, offset: 256)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2790, file: !2791, line: 103, baseType: !1445, size: 64, offset: 448)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2790, file: !2791, line: 106, baseType: !2801, size: 192, offset: 512)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2011, line: 32, size: 192, elements: !2802)
!2802 = !{!2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2801, file: !2011, line: 33, baseType: !170, size: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2801, file: !2011, line: 34, baseType: !2805, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2806, line: 25, baseType: !2807)
!2806 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2806, line: 23, size: 64, elements: !2808)
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2807, file: !2806, line: 24, baseType: !1693, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2790, file: !2791, line: 109, baseType: !1047, size: 64, offset: 704)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2790, file: !2791, line: 112, baseType: !109, size: 32, offset: 768)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2790, file: !2791, line: 114, baseType: !109, size: 32, offset: 800)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2790, file: !2791, line: 115, baseType: !1445, size: 64, offset: 832)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2790, file: !2791, line: 118, baseType: !109, size: 32, offset: 896)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2790, file: !2791, line: 119, baseType: !7, size: 32, offset: 928)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2790, file: !2791, line: 121, baseType: !2817, size: 64, offset: 960)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2791, line: 80, size: 448, elements: !2819)
!2819 = !{!2820, !2821, !2827}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2818, file: !2791, line: 81, baseType: !298, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2818, file: !2791, line: 82, baseType: !2822, size: 128, offset: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2791, line: 75, size: 128, elements: !2823)
!2823 = !{!2824, !2825}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2822, file: !2791, line: 76, baseType: !1445, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2822, file: !2791, line: 77, baseType: !2826, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2818, file: !2791, line: 83, baseType: !628, size: 256, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2790, file: !2791, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2790, file: !2791, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2790, file: !2791, line: 138, baseType: !7, size: 32, offset: 1056)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2790, file: !2791, line: 139, baseType: !170, size: 128, offset: 1088)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2790, file: !2791, line: 142, baseType: !1566, size: 512, offset: 1216)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2790, file: !2791, line: 143, baseType: !1574, size: 64, offset: 1728)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2790, file: !2791, line: 150, baseType: !2835, size: 256, offset: 1792)
!2835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2836, size: 256, elements: !798)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2791, line: 38, size: 128, elements: !2837)
!2837 = !{!2838, !2839}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2836, file: !2791, line: 39, baseType: !195, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2836, file: !2791, line: 40, baseType: !195, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2790, file: !2791, line: 156, baseType: !2841, size: 192, offset: 2048)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2791, line: 66, size: 192, elements: !2842)
!2842 = !{!2843}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2841, file: !2791, line: 67, baseType: !2844, size: 192)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2791, line: 47, size: 192, elements: !2845)
!2845 = !{!2846, !2847, !2848}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2844, file: !2791, line: 48, baseType: !685, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2844, file: !2791, line: 49, baseType: !685, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2844, file: !2791, line: 50, baseType: !685, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2790, file: !2791, line: 160, baseType: !2736, size: 640, offset: 2240)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2790, file: !2791, line: 163, baseType: !2851, size: 256, offset: 2880)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1810, size: 256, elements: !211)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2790, file: !2791, line: 169, baseType: !1810, size: 64, offset: 3136)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2790, file: !2791, line: 172, baseType: !109, size: 32, offset: 3200)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2790, file: !2791, line: 174, baseType: !2855, size: 64, offset: 3264)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2791, line: 174, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2790, file: !2791, line: 185, baseType: !2858, size: 64, offset: 3328)
!2858 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !465, line: 860, baseType: !2859)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 853, size: 64, elements: !2860)
!2860 = !{!2861, !2862}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2859, file: !465, line: 858, baseType: !464, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2859, file: !465, line: 859, baseType: !278, size: 32, offset: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2790, file: !2791, line: 186, baseType: !195, size: 64, offset: 3392)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2790, file: !2791, line: 186, baseType: !195, size: 64, offset: 3456)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2790, file: !2791, line: 186, baseType: !195, size: 64, offset: 3520)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2790, file: !2791, line: 186, baseType: !195, size: 64, offset: 3584)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2790, file: !2791, line: 187, baseType: !195, size: 64, offset: 3648)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2790, file: !2791, line: 188, baseType: !195, size: 64, offset: 3712)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2790, file: !2791, line: 189, baseType: !2724, size: 192, offset: 3776)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2790, file: !2791, line: 190, baseType: !206, size: 64, offset: 3968)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2790, file: !2791, line: 190, baseType: !206, size: 64, offset: 4032)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2790, file: !2791, line: 190, baseType: !206, size: 64, offset: 4096)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2790, file: !2791, line: 190, baseType: !206, size: 64, offset: 4160)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2790, file: !2791, line: 191, baseType: !206, size: 64, offset: 4224)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2790, file: !2791, line: 191, baseType: !206, size: 64, offset: 4288)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2790, file: !2791, line: 191, baseType: !206, size: 64, offset: 4352)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2790, file: !2791, line: 191, baseType: !206, size: 64, offset: 4416)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2790, file: !2791, line: 192, baseType: !206, size: 64, offset: 4480)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2790, file: !2791, line: 192, baseType: !206, size: 64, offset: 4544)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2790, file: !2791, line: 192, baseType: !206, size: 64, offset: 4608)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2790, file: !2791, line: 192, baseType: !206, size: 64, offset: 4672)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2790, file: !2791, line: 193, baseType: !206, size: 64, offset: 4736)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2790, file: !2791, line: 193, baseType: !206, size: 64, offset: 4800)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2790, file: !2791, line: 194, baseType: !2885, size: 448, offset: 4864)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2886, line: 12, size: 448, elements: !2887)
!2886 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893, !2894}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2885, file: !2886, line: 15, baseType: !195, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2885, file: !2886, line: 17, baseType: !195, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2885, file: !2886, line: 19, baseType: !195, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2885, file: !2886, line: 21, baseType: !195, size: 64, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2885, file: !2886, line: 29, baseType: !195, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2885, file: !2886, line: 35, baseType: !195, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2885, file: !2886, line: 44, baseType: !195, size: 64, offset: 384)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2790, file: !2791, line: 202, baseType: !199, size: 64, offset: 5312)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2790, file: !2791, line: 213, baseType: !2897, size: 2048, offset: 5376)
!2897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2898, size: 2048, elements: !2759)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2899, line: 43, size: 128, elements: !2900)
!2899 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2900 = !{!2901, !2902}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2898, file: !2899, line: 44, baseType: !393, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2898, file: !2899, line: 45, baseType: !393, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2790, file: !2791, line: 216, baseType: !2904, size: 448, offset: 7424)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2791, line: 30, size: 448, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2904, file: !2791, line: 31, baseType: !109, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2904, file: !2791, line: 32, baseType: !380, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2904, file: !2791, line: 33, baseType: !206, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2904, file: !2791, line: 34, baseType: !195, size: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2904, file: !2791, line: 34, baseType: !195, size: 64, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2904, file: !2791, line: 35, baseType: !206, size: 64, offset: 320)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2904, file: !2791, line: 35, baseType: !206, size: 64, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2790, file: !2791, line: 219, baseType: !2914, size: 64, offset: 7872)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2791, line: 219, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2790, file: !2791, line: 222, baseType: !7, size: 32, offset: 7936)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2790, file: !2791, line: 223, baseType: !2918, size: 64, offset: 8000)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2791, line: 223, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2790, file: !2791, line: 230, baseType: !759, size: 8, offset: 8064)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2790, file: !2791, line: 231, baseType: !817, size: 16, offset: 8080)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2790, file: !2791, line: 232, baseType: !817, size: 16, offset: 8096)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2790, file: !2791, line: 234, baseType: !1742, size: 64, offset: 8128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2790, file: !2791, line: 237, baseType: !679, size: 256, offset: 8192)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2790, file: !2791, line: 243, baseType: !1339, size: 320, offset: 8448)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1446, file: !1121, line: 1111, baseType: !2927, size: 64, offset: 15424)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2791, line: 20, size: 16640, elements: !2929)
!2929 = !{!2930, !2931, !2932, !2933}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2928, file: !2791, line: 21, baseType: !278, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2928, file: !2791, line: 22, baseType: !1459, size: 32, offset: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2928, file: !2791, line: 23, baseType: !1432, size: 192, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2928, file: !2791, line: 24, baseType: !2934, size: 16384, offset: 256)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2935, size: 16384, elements: !349)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2011, line: 51, size: 256, elements: !2936)
!2936 = !{!2937}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2935, file: !2011, line: 52, baseType: !2938, size: 256)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2011, line: 37, size: 256, elements: !2939)
!2939 = !{!2940, !2947, !2948, !2952}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2938, file: !2011, line: 39, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2942, line: 83, baseType: !2943)
!2942 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2942, line: 82, baseType: !2945)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{null, !109}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2938, file: !2011, line: 40, baseType: !206, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2938, file: !2011, line: 46, baseType: !2949, size: 64, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2942, line: 86, baseType: !2950)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2942, line: 85, baseType: !1042)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2938, file: !2011, line: 48, baseType: !2805, size: 64, offset: 192)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1446, file: !1121, line: 1112, baseType: !2805, size: 64, offset: 15488)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1446, file: !1121, line: 1113, baseType: !2805, size: 64, offset: 15552)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1446, file: !1121, line: 1115, baseType: !2805, size: 64, offset: 15616)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1446, file: !1121, line: 1116, baseType: !2801, size: 192, offset: 15680)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1446, file: !1121, line: 1117, baseType: !206, size: 64, offset: 15872)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1446, file: !1121, line: 1118, baseType: !391, size: 64, offset: 15936)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1446, file: !1121, line: 1119, baseType: !7, size: 32, offset: 16000)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1446, file: !1121, line: 1121, baseType: !898, size: 64, offset: 16064)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1446, file: !1121, line: 1125, baseType: !2962, size: 64, offset: 16128)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1121, line: 43, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1446, file: !1121, line: 1127, baseType: !429, size: 32, offset: 16192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1446, file: !1121, line: 1128, baseType: !7, size: 32, offset: 16224)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1446, file: !1121, line: 1130, baseType: !2967, size: 128, offset: 16256)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2968, line: 37, size: 128, elements: !2969)
!2968 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2969 = !{!2970, !2971, !2972}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2967, file: !2968, line: 38, baseType: !109, size: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2967, file: !2968, line: 39, baseType: !298, size: 32, offset: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2967, file: !2968, line: 40, baseType: !2973, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2968, line: 24, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1446, file: !1121, line: 1131, baseType: !2976, size: 256, offset: 16384)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2977, line: 12, size: 256, elements: !2978)
!2977 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2978 = !{!2979, !2980, !2981, !2982}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2976, file: !2977, line: 13, baseType: !344, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2976, file: !2977, line: 14, baseType: !206, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2976, file: !2977, line: 15, baseType: !206, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2976, file: !2977, line: 16, baseType: !759, size: 8, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1446, file: !1121, line: 1134, baseType: !195, size: 64, offset: 16640)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1446, file: !1121, line: 1135, baseType: !195, size: 64, offset: 16704)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1446, file: !1121, line: 1138, baseType: !278, size: 32, offset: 16768)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1446, file: !1121, line: 1141, baseType: !637, size: 32, offset: 16800)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1446, file: !1121, line: 1143, baseType: !2988, size: 64, offset: 16832)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1121, line: 735, size: 64, elements: !2989)
!2989 = !{!2990}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2988, file: !1121, line: 736, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1446, file: !1121, line: 1147, baseType: !1625, size: 128, offset: 16896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1446, file: !1121, line: 1149, baseType: !1445, size: 64, offset: 17024)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1446, file: !1121, line: 1151, baseType: !2995, size: 64, offset: 17088)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1121, line: 1151, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1446, file: !1121, line: 1188, baseType: !164, size: 64, offset: 17152)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1446, file: !1121, line: 1191, baseType: !2999, size: 64, offset: 17216)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1121, line: 44, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1446, file: !1121, line: 1194, baseType: !3002, size: 64, offset: 17280)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1121, line: 45, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1446, file: !1121, line: 1197, baseType: !3005, size: 64, offset: 17344)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1121, line: 61, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1446, file: !1121, line: 1199, baseType: !3008, size: 64, offset: 17408)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3010, line: 99, size: 128, elements: !3011)
!3010 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3011 = !{!3012, !3013, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3009, file: !3010, line: 100, baseType: !683, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3009, file: !3010, line: 101, baseType: !298, size: 32, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3009, file: !3010, line: 103, baseType: !257, size: 16, offset: 96)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1446, file: !1121, line: 1202, baseType: !3016, size: 64, offset: 17472)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1121, line: 48, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1446, file: !1121, line: 1205, baseType: !206, size: 64, offset: 17536)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1446, file: !1121, line: 1206, baseType: !3020, size: 64, offset: 17600)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2011, line: 14, baseType: !3022)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2011, line: 12, size: 384, elements: !3023)
!3023 = !{!3024}
!3024 = !DIDerivedType(tag: DW_TAG_member, scope: !3022, file: !2011, line: 13, baseType: !3025, size: 384)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3022, file: !2011, line: 13, size: 384, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3025, file: !2011, line: 13, baseType: !109, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3025, file: !2011, line: 13, baseType: !109, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3025, file: !2011, line: 13, baseType: !109, size: 32, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3025, file: !2011, line: 13, baseType: !3031, size: 256, offset: 128)
!3031 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3032, line: 37, size: 256, elements: !3033)
!3032 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3033 = !{!3034, !3039, !3052, !3058, !3067, !3094, !3099}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3031, file: !3032, line: 42, baseType: !3035, size: 64)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3031, file: !3032, line: 39, size: 64, elements: !3036)
!3036 = !{!3037, !3038}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3035, file: !3032, line: 40, baseType: !2701, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3035, file: !3032, line: 41, baseType: !435, size: 32, offset: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3031, file: !3032, line: 50, baseType: !3040, size: 192)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3031, file: !3032, line: 45, size: 192, elements: !3041)
!3041 = !{!3042, !3044, !3045, !3051}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3040, file: !3032, line: 46, baseType: !3043, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !378, line: 95, baseType: !109)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3040, file: !3032, line: 47, baseType: !109, size: 32, offset: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3040, file: !3032, line: 48, baseType: !3046, size: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3032, line: 11, baseType: !3047)
!3047 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3032, line: 8, size: 64, elements: !3048)
!3048 = !{!3049, !3050}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3047, file: !3032, line: 9, baseType: !109, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3047, file: !3032, line: 10, baseType: !164, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3040, file: !3032, line: 49, baseType: !109, size: 32, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3031, file: !3032, line: 57, baseType: !3053, size: 128)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3031, file: !3032, line: 53, size: 128, elements: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3053, file: !3032, line: 54, baseType: !2701, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3053, file: !3032, line: 55, baseType: !435, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3053, file: !3032, line: 56, baseType: !3046, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3031, file: !3032, line: 66, baseType: !3059, size: 256)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3031, file: !3032, line: 60, size: 256, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064, !3066}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3059, file: !3032, line: 61, baseType: !2701, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3059, file: !3032, line: 62, baseType: !435, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3059, file: !3032, line: 63, baseType: !109, size: 32, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3059, file: !3032, line: 64, baseType: !3065, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !378, line: 94, baseType: !379)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3059, file: !3032, line: 65, baseType: !3065, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3031, file: !3032, line: 105, baseType: !3068, size: 256)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3031, file: !3032, line: 69, size: 256, elements: !3069)
!3069 = !{!3070, !3071}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3068, file: !3032, line: 70, baseType: !164, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !3068, file: !3032, line: 79, baseType: !3072, size: 192, offset: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3068, file: !3032, line: 79, size: 192, elements: !3073)
!3073 = !{!3074, !3075, !3076, !3083, !3088}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3072, file: !3032, line: 81, baseType: !109, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3072, file: !3032, line: 86, baseType: !817, size: 16)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3072, file: !3032, line: 92, baseType: !3077, size: 192)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3032, line: 88, size: 192, elements: !3078)
!3078 = !{!3079, !3081, !3082}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3077, file: !3032, line: 89, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 64, elements: !1609)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3077, file: !3032, line: 90, baseType: !164, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3077, file: !3032, line: 91, baseType: !164, size: 64, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3072, file: !3032, line: 97, baseType: !3084, size: 96)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3032, line: 94, size: 96, elements: !3085)
!3085 = !{!3086, !3087}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3084, file: !3032, line: 95, baseType: !3080, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3084, file: !3032, line: 96, baseType: !237, size: 32, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3072, file: !3032, line: 103, baseType: !3089, size: 128)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3072, file: !3032, line: 99, size: 128, elements: !3090)
!3090 = !{!3091, !3092, !3093}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3089, file: !3032, line: 100, baseType: !206, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3089, file: !3032, line: 101, baseType: !237, size: 32, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3089, file: !3032, line: 102, baseType: !237, size: 32, offset: 96)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3031, file: !3032, line: 111, baseType: !3095, size: 128)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3031, file: !3032, line: 108, size: 128, elements: !3096)
!3096 = !{!3097, !3098}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3095, file: !3032, line: 109, baseType: !380, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3095, file: !3032, line: 110, baseType: !109, size: 32, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3031, file: !3032, line: 118, baseType: !3100, size: 128)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3031, file: !3032, line: 114, size: 128, elements: !3101)
!3101 = !{!3102, !3103, !3104}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3100, file: !3032, line: 115, baseType: !164, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3100, file: !3032, line: 116, baseType: !109, size: 32, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3100, file: !3032, line: 117, baseType: !7, size: 32, offset: 96)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1446, file: !1121, line: 1208, baseType: !2885, size: 448, offset: 17664)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1446, file: !1121, line: 1215, baseType: !195, size: 64, offset: 18112)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1446, file: !1121, line: 1217, baseType: !195, size: 64, offset: 18176)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1446, file: !1121, line: 1219, baseType: !195, size: 64, offset: 18240)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1446, file: !1121, line: 1223, baseType: !3110, size: 64, offset: 18304)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3111, line: 99, baseType: !3112)
!3111 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3111, line: 99, size: 64, elements: !3113)
!3113 = !{!3114}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3112, file: !3111, line: 99, baseType: !1693, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1446, file: !1121, line: 1225, baseType: !464, size: 32, offset: 18368)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1446, file: !1121, line: 1226, baseType: !109, size: 32, offset: 18400)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1446, file: !1121, line: 1227, baseType: !109, size: 32, offset: 18432)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1446, file: !1121, line: 1231, baseType: !3119, size: 64, offset: 18496)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1121, line: 1231, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1446, file: !1121, line: 1233, baseType: !170, size: 128, offset: 18560)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1446, file: !1121, line: 1240, baseType: !3123, size: 64, offset: 18688)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1121, line: 62, flags: DIFlagFwdDecl)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1446, file: !1121, line: 1242, baseType: !3126, size: 64, offset: 18752)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1121, line: 1242, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1446, file: !1121, line: 1244, baseType: !170, size: 128, offset: 18816)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1446, file: !1121, line: 1245, baseType: !3130, size: 64, offset: 18944)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1121, line: 51, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1446, file: !1121, line: 1246, baseType: !679, size: 256, offset: 19008)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1446, file: !1121, line: 1247, baseType: !7, size: 32, offset: 19264)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1446, file: !1121, line: 1250, baseType: !3135, size: 64, offset: 19328)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1121, line: 57, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1446, file: !1121, line: 1251, baseType: !679, size: 256, offset: 19392)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1446, file: !1121, line: 1252, baseType: !170, size: 128, offset: 19648)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1446, file: !1121, line: 1259, baseType: !2391, size: 64, offset: 19776)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1446, file: !1121, line: 1260, baseType: !817, size: 16, offset: 19840)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1446, file: !1121, line: 1261, baseType: !817, size: 16, offset: 19856)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1446, file: !1121, line: 1314, baseType: !3143, size: 64, offset: 19904)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3145, line: 62, size: 256, align: 256, elements: !3146)
!3145 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152, !3153}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3144, file: !3145, line: 75, baseType: !237, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3144, file: !3145, line: 90, baseType: !237, size: 32, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3144, file: !3145, line: 112, baseType: !197, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3144, file: !3145, line: 132, baseType: !237, size: 32, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3144, file: !3145, line: 140, baseType: !237, size: 32, offset: 160)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3144, file: !3145, line: 149, baseType: !237, size: 32, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3144, file: !3145, line: 154, baseType: !3154, offset: 224)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, elements: !1829)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1446, file: !1121, line: 1315, baseType: !236, size: 32, offset: 19968)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1446, file: !1121, line: 1316, baseType: !236, size: 32, offset: 20000)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1446, file: !1121, line: 1321, baseType: !206, size: 64, offset: 20032)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1446, file: !1121, line: 1325, baseType: !109, size: 32, offset: 20096)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1446, file: !1121, line: 1326, baseType: !109, size: 32, offset: 20128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1446, file: !1121, line: 1327, baseType: !109, size: 32, offset: 20160)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1446, file: !1121, line: 1328, baseType: !109, size: 32, offset: 20192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1446, file: !1121, line: 1329, baseType: !899, size: 128, align: 64, offset: 20224)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1446, file: !1121, line: 1332, baseType: !3164, size: 128, offset: 20352)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3165, line: 51, size: 128, elements: !3166)
!3165 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3166 = !{!3167, !3172, !3173}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3164, file: !3165, line: 60, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3169, line: 7, size: 64, elements: !3170)
!3169 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3168, file: !3169, line: 12, baseType: !1690, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3164, file: !3165, line: 63, baseType: !759, size: 8, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3164, file: !3165, line: 70, baseType: !759, size: 8, offset: 72)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1446, file: !1121, line: 1335, baseType: !2443, size: 64, offset: 20480)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1446, file: !1121, line: 1337, baseType: !3176, size: 128, offset: 20544)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3165, line: 39, size: 128, elements: !3177)
!3177 = !{!3178, !3179, !3180}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3176, file: !3165, line: 40, baseType: !2230, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3176, file: !3165, line: 42, baseType: !237, size: 32, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3176, file: !3165, line: 43, baseType: !237, size: 32, offset: 96)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1446, file: !1121, line: 1340, baseType: !3182, size: 64, offset: 20672)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1121, line: 69, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1446, file: !1121, line: 1351, baseType: !109, size: 32, offset: 20736)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1446, file: !1121, line: 1352, baseType: !109, size: 32, offset: 20768)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1446, file: !1121, line: 1354, baseType: !206, size: 64, offset: 20800)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1446, file: !1121, line: 1364, baseType: !195, size: 64, offset: 20864)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1446, file: !1121, line: 1365, baseType: !195, size: 64, offset: 20928)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1446, file: !1121, line: 1412, baseType: !206, size: 64, offset: 20992)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1446, file: !1121, line: 1453, baseType: !3191, size: 64, offset: 21056)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1121, line: 1453, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1446, file: !1121, line: 1457, baseType: !3194, size: 64, offset: 21120)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3196)
!3196 = !{!3197, !3198, !3217, !3220, !3221, !3254, !3264}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3195, file: !68, line: 62, baseType: !67, size: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, scope: !3195, file: !68, line: 64, baseType: !3199, size: 192, offset: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3195, file: !68, line: 64, size: 192, elements: !3200)
!3200 = !{!3201, !3212}
!3201 = !DIDerivedType(tag: DW_TAG_member, scope: !3199, file: !68, line: 65, baseType: !3202, size: 192)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3199, file: !68, line: 65, size: 192, elements: !3203)
!3203 = !{!3204, !3211}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3202, file: !68, line: 66, baseType: !3205, size: 128)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3206, line: 50, size: 128, elements: !3207)
!3206 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3207 = !{!3208, !3209, !3210}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3205, file: !3206, line: 52, baseType: !206, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3205, file: !3206, line: 54, baseType: !7, size: 32, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3205, file: !3206, line: 55, baseType: !7, size: 32, offset: 96)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3202, file: !68, line: 67, baseType: !206, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, scope: !3199, file: !68, line: 70, baseType: !3213, size: 192)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3199, file: !68, line: 70, size: 192, elements: !3214)
!3214 = !{!3215, !3216}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3213, file: !68, line: 71, baseType: !899, size: 128, align: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3213, file: !68, line: 72, baseType: !206, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3195, file: !68, line: 76, baseType: !3218, size: 64, offset: 256)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3195, file: !68, line: 77, baseType: !206, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3195, file: !68, line: 79, baseType: !3222, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3206, line: 25, size: 256, elements: !3224)
!3224 = !{!3225, !3231, !3235}
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3223, file: !3206, line: 26, baseType: !3226, size: 128)
!3226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3223, file: !3206, line: 26, size: 128, elements: !3227)
!3227 = !{!3228, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3226, file: !3206, line: 27, baseType: !3229, size: 128)
!3229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 128, elements: !2759)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3226, file: !3206, line: 28, baseType: !3229, size: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3223, file: !3206, line: 31, baseType: !3232, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3234)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3206, line: 23, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3223, file: !3206, line: 33, baseType: !3236, size: 64, offset: 192)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3223, file: !3206, line: 33, size: 64, elements: !3237)
!3237 = !{!3238, !3244, !3249}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3236, file: !3206, line: 38, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !3206, line: 34, size: 64, elements: !3240)
!3240 = !{!3241, !3242, !3243}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3239, file: !3206, line: 35, baseType: !675, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3239, file: !3206, line: 36, baseType: !306, size: 8, offset: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3239, file: !3206, line: 37, baseType: !306, size: 8, offset: 40)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3236, file: !3206, line: 42, baseType: !3245, size: 16)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !3206, line: 39, size: 16, elements: !3246)
!3246 = !{!3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3245, file: !3206, line: 40, baseType: !306, size: 8)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3245, file: !3206, line: 41, baseType: !306, size: 8, offset: 8)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3236, file: !3206, line: 46, baseType: !3250, size: 16)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !3206, line: 43, size: 16, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3250, file: !3206, line: 44, baseType: !306, size: 8)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3250, file: !3206, line: 45, baseType: !306, size: 8, offset: 8)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3195, file: !68, line: 81, baseType: !3255, size: 64, offset: 448)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3257)
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3256, file: !68, line: 86, baseType: !3218, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3256, file: !68, line: 87, baseType: !206, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3256, file: !68, line: 88, baseType: !206, size: 64, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3256, file: !68, line: 89, baseType: !206, size: 64, offset: 192)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3256, file: !68, line: 90, baseType: !759, size: 8, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3256, file: !68, line: 92, baseType: !3255, size: 64, offset: 320)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3195, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1446, file: !1121, line: 1463, baseType: !3266, offset: 21184)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1121, line: 739, elements: !966)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1446, file: !1121, line: 1470, baseType: !899, size: 128, align: 64, offset: 21184)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1446, file: !1121, line: 1471, baseType: !1459, size: 32, offset: 21312)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1446, file: !1121, line: 1472, baseType: !109, size: 32, offset: 21344)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1446, file: !1121, line: 1474, baseType: !1445, size: 64, offset: 21376)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1446, file: !1121, line: 1475, baseType: !919, size: 320, offset: 21440)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1446, file: !1121, line: 1478, baseType: !3273, size: 64, offset: 21760)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2083, line: 49, size: 512, elements: !3275)
!3275 = !{!3276, !3277, !3278, !3279, !3280, !3282, !3283, !3284, !3285}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3274, file: !2083, line: 50, baseType: !3273, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3274, file: !2083, line: 51, baseType: !164, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3274, file: !2083, line: 52, baseType: !206, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3274, file: !2083, line: 53, baseType: !206, size: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3274, file: !2083, line: 54, baseType: !3281, size: 64, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3274, file: !2083, line: 56, baseType: !7, size: 32, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3274, file: !2083, line: 58, baseType: !7, size: 32, offset: 352)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3274, file: !2083, line: 59, baseType: !194, size: 64, offset: 384)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3274, file: !2083, line: 60, baseType: !2582, size: 64, offset: 448)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1446, file: !1121, line: 1482, baseType: !1459, size: 32, offset: 21824)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1446, file: !1121, line: 1489, baseType: !164, size: 64, offset: 21888)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1446, file: !1121, line: 1504, baseType: !164, size: 64, offset: 21952)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1446, file: !1121, line: 1505, baseType: !197, size: 64, offset: 22016)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1446, file: !1121, line: 1506, baseType: !195, size: 64, offset: 22080)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1446, file: !1121, line: 1507, baseType: !197, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1446, file: !1121, line: 1508, baseType: !197, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1446, file: !1121, line: 1509, baseType: !197, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1446, file: !1121, line: 1510, baseType: !899, size: 128, align: 64, offset: 22208)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1446, file: !1121, line: 1511, baseType: !109, size: 32, offset: 22336)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1446, file: !1121, line: 1515, baseType: !3297, size: 64, offset: 22400)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1473, line: 56, size: 64, elements: !3298)
!3298 = !{!3299}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3297, file: !1473, line: 57, baseType: !1476, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1446, file: !1121, line: 1518, baseType: !3297, size: 64, offset: 22464)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1446, file: !1121, line: 1528, baseType: !899, size: 128, align: 64, offset: 22528)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1446, file: !1121, line: 1552, baseType: !3303, size: 35328, offset: 23040)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3304, line: 430, size: 35328, elements: !3305)
!3304 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3305 = !{!3306, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3335, !3336, !3337, !3338, !3339, !3340, !3343, !3344, !3345, !3346}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3303, file: !3304, line: 432, baseType: !3307, size: 192)
!3307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3308, size: 192, elements: !345)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3309, line: 16, size: 64, elements: !3310)
!3309 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3308, file: !3309, line: 17, baseType: !313, size: 16)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3308, file: !3309, line: 18, baseType: !313, size: 16, offset: 16)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3308, file: !3309, line: 19, baseType: !313, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3308, file: !3309, line: 19, baseType: !313, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3308, file: !3309, line: 19, baseType: !313, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3308, file: !3309, line: 19, baseType: !313, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3308, file: !3309, line: 19, baseType: !313, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3308, file: !3309, line: 20, baseType: !313, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3308, file: !3309, line: 20, baseType: !313, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3308, file: !3309, line: 20, baseType: !313, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3308, file: !3309, line: 20, baseType: !313, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3308, file: !3309, line: 20, baseType: !313, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3308, file: !3309, line: 20, baseType: !313, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3303, file: !3304, line: 436, baseType: !206, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3303, file: !3304, line: 440, baseType: !257, size: 16, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3303, file: !3304, line: 441, baseType: !257, size: 16, offset: 272)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3303, file: !3304, line: 442, baseType: !257, size: 16, offset: 288)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3303, file: !3304, line: 443, baseType: !257, size: 16, offset: 304)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3303, file: !3304, line: 447, baseType: !206, size: 64, offset: 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3303, file: !3304, line: 448, baseType: !206, size: 64, offset: 384)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3303, file: !3304, line: 459, baseType: !3332, size: 256, offset: 448)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3333, size: 256, elements: !211)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3304, line: 428, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3303, file: !3304, line: 461, baseType: !206, size: 64, offset: 704)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3303, file: !3304, line: 463, baseType: !206, size: 64, offset: 768)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3303, file: !3304, line: 465, baseType: !206, size: 64, offset: 832)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3303, file: !3304, line: 466, baseType: !206, size: 64, offset: 896)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3303, file: !3304, line: 467, baseType: !206, size: 64, offset: 960)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3303, file: !3304, line: 473, baseType: !3341, size: 64, offset: 1024)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3304, line: 10, flags: DIFlagFwdDecl)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3303, file: !3304, line: 480, baseType: !206, size: 64, offset: 1088)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3303, file: !3304, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3303, file: !3304, line: 491, baseType: !236, size: 32, offset: 1184)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3303, file: !3304, line: 501, baseType: !3347, size: 33792, offset: 1536)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3348, line: 448, size: 33792, elements: !3349)
!3348 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3349 = !{!3350, !3351, !3352, !3514, !3515, !3521, !3522}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3347, file: !3348, line: 461, baseType: !7, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3347, file: !3348, line: 468, baseType: !206, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3347, file: !3348, line: 476, baseType: !3353, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3348, line: 356, size: 33280, align: 512, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3354, file: !3348, line: 358, baseType: !7, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3354, file: !3348, line: 361, baseType: !7, size: 32, offset: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3354, file: !3348, line: 364, baseType: !195, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3354, file: !3348, line: 367, baseType: !195, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3354, file: !3348, line: 370, baseType: !195, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3354, file: !3348, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3354, file: !3348, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3354, file: !3348, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3354, file: !3348, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3354, file: !3348, line: 397, baseType: !3366, size: 32768, offset: 512)
!3366 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3348, line: 348, size: 32768, elements: !3367)
!3367 = !{!3368, !3383, !3420, !3497, !3510}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3366, file: !3348, line: 349, baseType: !3369, size: 896)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3348, line: 12, size: 896, elements: !3370)
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3382}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3369, file: !3348, line: 13, baseType: !236, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3369, file: !3348, line: 14, baseType: !236, size: 32, offset: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3369, file: !3348, line: 15, baseType: !236, size: 32, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3369, file: !3348, line: 16, baseType: !236, size: 32, offset: 96)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3369, file: !3348, line: 17, baseType: !236, size: 32, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3369, file: !3348, line: 18, baseType: !236, size: 32, offset: 160)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3369, file: !3348, line: 19, baseType: !236, size: 32, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3369, file: !3348, line: 22, baseType: !3379, size: 640, offset: 224)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 640, elements: !3380)
!3380 = !{!3381}
!3381 = !DISubrange(count: 20)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3369, file: !3348, line: 25, baseType: !236, size: 32, offset: 864)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3366, file: !3348, line: 350, baseType: !3384, size: 4096, align: 128)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3348, line: 34, size: 4096, align: 128, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3405, !3406, !3407, !3409, !3411, !3415}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3384, file: !3348, line: 35, baseType: !313, size: 16)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3384, file: !3348, line: 36, baseType: !313, size: 16, offset: 16)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3384, file: !3348, line: 37, baseType: !313, size: 16, offset: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3384, file: !3348, line: 38, baseType: !313, size: 16, offset: 48)
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !3348, line: 39, baseType: !3391, size: 128, offset: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3384, file: !3348, line: 39, size: 128, elements: !3392)
!3392 = !{!3393, !3398}
!3393 = !DIDerivedType(tag: DW_TAG_member, scope: !3391, file: !3348, line: 40, baseType: !3394, size: 128)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3348, line: 40, size: 128, elements: !3395)
!3395 = !{!3396, !3397}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3394, file: !3348, line: 41, baseType: !195, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3394, file: !3348, line: 42, baseType: !195, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, scope: !3391, file: !3348, line: 44, baseType: !3399, size: 128)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3348, line: 44, size: 128, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3404}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3399, file: !3348, line: 45, baseType: !236, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3399, file: !3348, line: 46, baseType: !236, size: 32, offset: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3399, file: !3348, line: 47, baseType: !236, size: 32, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3399, file: !3348, line: 48, baseType: !236, size: 32, offset: 96)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3384, file: !3348, line: 51, baseType: !236, size: 32, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3384, file: !3348, line: 52, baseType: !236, size: 32, offset: 224)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3384, file: !3348, line: 55, baseType: !3408, size: 1024, offset: 256)
!3408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 1024, elements: !500)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3384, file: !3348, line: 58, baseType: !3410, size: 2048, offset: 1280)
!3410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 2048, elements: !349)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3384, file: !3348, line: 60, baseType: !3412, size: 384, offset: 3328)
!3412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 384, elements: !3413)
!3413 = !{!3414}
!3414 = !DISubrange(count: 12)
!3415 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !3348, line: 62, baseType: !3416, size: 384, offset: 3712)
!3416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3384, file: !3348, line: 62, size: 384, elements: !3417)
!3417 = !{!3418, !3419}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3416, file: !3348, line: 63, baseType: !3412, size: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3416, file: !3348, line: 64, baseType: !3412, size: 384)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3366, file: !3348, line: 351, baseType: !3421, size: 1088)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3348, line: 79, size: 1088, elements: !3422)
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3496}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3421, file: !3348, line: 80, baseType: !236, size: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3421, file: !3348, line: 81, baseType: !236, size: 32, offset: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3421, file: !3348, line: 82, baseType: !236, size: 32, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3421, file: !3348, line: 83, baseType: !236, size: 32, offset: 96)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3421, file: !3348, line: 84, baseType: !236, size: 32, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3421, file: !3348, line: 85, baseType: !236, size: 32, offset: 160)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3421, file: !3348, line: 86, baseType: !236, size: 32, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3421, file: !3348, line: 88, baseType: !3379, size: 640, offset: 224)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3421, file: !3348, line: 89, baseType: !306, size: 8, offset: 864)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3421, file: !3348, line: 90, baseType: !306, size: 8, offset: 872)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3421, file: !3348, line: 91, baseType: !306, size: 8, offset: 880)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3421, file: !3348, line: 92, baseType: !306, size: 8, offset: 888)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3421, file: !3348, line: 93, baseType: !306, size: 8, offset: 896)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3421, file: !3348, line: 94, baseType: !306, size: 8, offset: 904)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3421, file: !3348, line: 95, baseType: !3438, size: 64, offset: 960)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3440, line: 11, size: 128, elements: !3441)
!3440 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3441 = !{!3442, !3443}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3439, file: !3440, line: 12, baseType: !380, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3439, file: !3440, line: 13, baseType: !3444, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3446, line: 103, size: 1344, elements: !3447)
!3446 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3476, !3477, !3478}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3445, file: !3446, line: 109, baseType: !206, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3445, file: !3446, line: 110, baseType: !206, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3445, file: !3446, line: 111, baseType: !206, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3445, file: !3446, line: 112, baseType: !206, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3445, file: !3446, line: 113, baseType: !206, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3445, file: !3446, line: 114, baseType: !206, size: 64, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3445, file: !3446, line: 117, baseType: !206, size: 64, offset: 384)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3445, file: !3446, line: 118, baseType: !206, size: 64, offset: 448)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3445, file: !3446, line: 119, baseType: !206, size: 64, offset: 512)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3445, file: !3446, line: 120, baseType: !206, size: 64, offset: 576)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3445, file: !3446, line: 121, baseType: !206, size: 64, offset: 640)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3445, file: !3446, line: 122, baseType: !206, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3445, file: !3446, line: 123, baseType: !206, size: 64, offset: 768)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3445, file: !3446, line: 124, baseType: !206, size: 64, offset: 832)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3445, file: !3446, line: 125, baseType: !206, size: 64, offset: 896)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3445, file: !3446, line: 139, baseType: !206, size: 64, offset: 960)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3445, file: !3446, line: 142, baseType: !206, size: 64, offset: 1024)
!3465 = !DIDerivedType(tag: DW_TAG_member, scope: !3445, file: !3446, line: 144, baseType: !3466, size: 64, offset: 1088)
!3466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3445, file: !3446, line: 144, size: 64, elements: !3467)
!3467 = !{!3468, !3469, !3470}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3466, file: !3446, line: 146, baseType: !313, size: 16)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3466, file: !3446, line: 148, baseType: !195, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3466, file: !3446, line: 150, baseType: !3471, size: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3446, line: 59, size: 64, elements: !3472)
!3472 = !{!3473, !3474, !3475}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3471, file: !3446, line: 61, baseType: !195, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3471, file: !3446, line: 63, baseType: !195, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3471, file: !3446, line: 65, baseType: !195, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3445, file: !3446, line: 153, baseType: !206, size: 64, offset: 1152)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3445, file: !3446, line: 154, baseType: !206, size: 64, offset: 1216)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3445, file: !3446, line: 156, baseType: !3479, size: 64, offset: 1280)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3445, file: !3446, line: 156, size: 64, elements: !3480)
!3480 = !{!3481, !3482, !3483}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3479, file: !3446, line: 158, baseType: !313, size: 16)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3479, file: !3446, line: 160, baseType: !195, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3479, file: !3446, line: 162, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3446, line: 69, size: 64, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3484, file: !3446, line: 71, baseType: !195, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3484, file: !3446, line: 73, baseType: !195, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3484, file: !3446, line: 75, baseType: !195, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3484, file: !3446, line: 77, baseType: !195, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3484, file: !3446, line: 80, baseType: !195, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3484, file: !3446, line: 83, baseType: !195, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3484, file: !3446, line: 86, baseType: !195, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3484, file: !3446, line: 88, baseType: !195, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3484, file: !3446, line: 93, baseType: !195, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3484, file: !3446, line: 100, baseType: !195, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3421, file: !3348, line: 96, baseType: !236, size: 32, offset: 1024)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3366, file: !3348, line: 352, baseType: !3498, size: 4608, align: 512)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3348, line: 333, size: 4608, align: 512, elements: !3499)
!3499 = !{!3500, !3501, !3508}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3498, file: !3348, line: 334, baseType: !3384, size: 4096, align: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3498, file: !3348, line: 335, baseType: !3502, size: 512, offset: 4096)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3348, line: 312, size: 512, elements: !3503)
!3503 = !{!3504, !3505, !3506}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3502, file: !3348, line: 313, baseType: !195, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3502, file: !3348, line: 314, baseType: !195, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3502, file: !3348, line: 315, baseType: !3507, size: 384, offset: 128)
!3507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 384, elements: !1912)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3498, file: !3348, line: 336, baseType: !3509, offset: 4608)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, elements: !1829)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3366, file: !3348, line: 353, baseType: !3511, size: 32768)
!3511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 32768, elements: !3512)
!3512 = !{!3513}
!3513 = !DISubrange(count: 4096)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3347, file: !3348, line: 484, baseType: !3353, size: 64, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3347, file: !3348, line: 491, baseType: !3516, size: 128, offset: 256)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3348, line: 404, size: 128, elements: !3517)
!3517 = !{!3518, !3519, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3516, file: !3348, line: 424, baseType: !195, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3516, file: !3348, line: 432, baseType: !7, size: 32, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3516, file: !3348, line: 440, baseType: !7, size: 32, offset: 96)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3347, file: !3348, line: 498, baseType: !3516, size: 128, offset: 384)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3347, file: !3348, line: 508, baseType: !3354, size: 33280, align: 512, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1422, file: !1423, line: 16, baseType: !1432, size: 192, offset: 512)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1422, file: !1423, line: 17, baseType: !298, size: 32, offset: 704)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !570, file: !14, line: 1240, baseType: !164, size: 64, offset: 6912)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !570, file: !14, line: 1243, baseType: !236, size: 32, offset: 6976)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !570, file: !14, line: 1245, baseType: !1179, size: 64, offset: 7040)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !570, file: !14, line: 1246, baseType: !1179, size: 64, offset: 7104)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !570, file: !14, line: 1248, baseType: !237, size: 32, offset: 7168)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !570, file: !14, line: 1249, baseType: !3531, size: 64, offset: 7232)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !570, file: !14, line: 1252, baseType: !3534, size: 256, offset: 7296)
!3534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 256, elements: !500)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !570, file: !14, line: 1253, baseType: !3536, size: 128, offset: 7552)
!3536 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3537, line: 21, baseType: !3538)
!3537 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3537, line: 19, size: 128, elements: !3539)
!3539 = !{!3540}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3538, file: !3537, line: 20, baseType: !3541, size: 128)
!3541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 128, elements: !2759)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !570, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !570, file: !14, line: 1261, baseType: !679, size: 256, offset: 7744)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !570, file: !14, line: 1267, baseType: !202, size: 64, offset: 8000)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !570, file: !14, line: 1269, baseType: !516, size: 64, offset: 8064)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !570, file: !14, line: 1271, baseType: !3547, size: 448, offset: 8128)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1188, line: 63, size: 448, elements: !3548)
!3548 = !{!3549, !3554, !3555, !3556, !3557, !3558, !3559}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3547, file: !1188, line: 64, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!206, !3553, !1186}
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3547, file: !1188, line: 66, baseType: !3550, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3547, file: !1188, line: 69, baseType: !380, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3547, file: !1188, line: 70, baseType: !109, size: 32, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3547, file: !1188, line: 71, baseType: !7, size: 32, offset: 224)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3547, file: !1188, line: 74, baseType: !170, size: 128, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3547, file: !1188, line: 85, baseType: !3560, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !570, file: !14, line: 1274, baseType: !683, size: 64, offset: 8576)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !570, file: !14, line: 1280, baseType: !683, size: 64, offset: 8640)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !570, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !570, file: !14, line: 1286, baseType: !2493, size: 32, offset: 8736)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !570, file: !14, line: 1289, baseType: !999, size: 64, offset: 8768)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !570, file: !14, line: 1290, baseType: !1047, size: 64, offset: 8832)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !570, file: !14, line: 1297, baseType: !2006, size: 64, offset: 8896)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !570, file: !14, line: 1304, baseType: !3569, size: 64, offset: 8960)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3570, line: 49, size: 64, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3571 = !{!3572}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3569, file: !3570, line: 50, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3570, line: 41, size: 512, align: 512, elements: !3575)
!3575 = !{!3576, !3577, !3582}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3574, file: !3570, line: 43, baseType: !278, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3574, file: !3570, line: 45, baseType: !3578, size: 192, offset: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3570, line: 29, size: 192, elements: !3579)
!3579 = !{!3580, !3581}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3578, file: !3570, line: 30, baseType: !170, size: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3578, file: !3570, line: 32, baseType: !380, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3574, file: !3570, line: 46, baseType: !380, size: 64, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !570, file: !14, line: 1305, baseType: !3569, size: 64, offset: 9024)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !570, file: !14, line: 1306, baseType: !899, size: 128, align: 64, offset: 9088)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !570, file: !14, line: 1307, baseType: !937, size: 256, offset: 9216)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !570, file: !14, line: 1309, baseType: !679, size: 256, offset: 9472)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !570, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !570, file: !14, line: 1317, baseType: !278, size: 32, align: 512, offset: 10240)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !570, file: !14, line: 1318, baseType: !170, size: 128, offset: 10304)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !570, file: !14, line: 1320, baseType: !278, size: 32, offset: 10432)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !570, file: !14, line: 1321, baseType: !170, size: 128, offset: 10496)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !564, file: !565, line: 73, baseType: !109, size: 32, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !564, file: !565, line: 74, baseType: !3594, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1853, line: 42, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !518, file: !460, line: 141, baseType: !3598, size: 64, offset: 704)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!109, !1249, !759}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !518, file: !460, line: 142, baseType: !3602, size: 64, offset: 768)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!458, !458, !3605}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !459, file: !460, line: 96, baseType: !569, size: 64, offset: 832)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !459, file: !460, line: 97, baseType: !206, size: 64, offset: 896)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !459, file: !460, line: 98, baseType: !164, size: 64, offset: 960)
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !460, line: 100, baseType: !3611, size: 128, offset: 1024)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !460, line: 100, size: 128, elements: !3612)
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3611, file: !460, line: 101, baseType: !170, size: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3611, file: !460, line: 102, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !459, file: !460, line: 104, baseType: !170, size: 128, offset: 1152)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !459, file: !460, line: 105, baseType: !170, size: 128, offset: 1280)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !459, file: !460, line: 113, baseType: !3619, size: 128, offset: 1408)
!3619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !460, line: 109, size: 128, elements: !3620)
!3620 = !{!3621, !3622, !3623}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3619, file: !460, line: 110, baseType: !923, size: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3619, file: !460, line: 111, baseType: !474, size: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3619, file: !460, line: 112, baseType: !899, size: 128, align: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !452, file: !14, line: 1968, baseType: !3625, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!202, !458, !423, !3628}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3630, line: 10, size: 128, elements: !3631)
!3630 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3631 = !{!3632, !3633}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3629, file: !3630, line: 11, baseType: !722, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3629, file: !3630, line: 12, baseType: !164, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !452, file: !14, line: 1969, baseType: !3635, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!109, !3594, !423, !109}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !452, file: !14, line: 1970, baseType: !3639, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!446, !423, !109, !759}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !452, file: !14, line: 1972, baseType: !3643, size: 64, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!109, !458, !344, !109}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !452, file: !14, line: 1974, baseType: !3647, size: 64, offset: 320)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!109, !3594, !423, !458, !386, !759}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !452, file: !14, line: 1976, baseType: !3651, size: 64, offset: 384)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!109, !458, !423, !458}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !452, file: !14, line: 1977, baseType: !3655, size: 64, offset: 448)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!109, !423, !458}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !452, file: !14, line: 1978, baseType: !3659, size: 64, offset: 512)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!109, !3594, !423, !458, !202}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !452, file: !14, line: 1980, baseType: !3663, size: 64, offset: 576)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!109, !3594, !423, !458, !386}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !452, file: !14, line: 1982, baseType: !3655, size: 64, offset: 640)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !452, file: !14, line: 1983, baseType: !3668, size: 64, offset: 704)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!109, !3594, !423, !458, !386, !574}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !452, file: !14, line: 1985, baseType: !3672, size: 64, offset: 768)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!109, !3594, !423, !458, !423, !458, !7}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !452, file: !14, line: 1987, baseType: !3676, size: 64, offset: 832)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!109, !3594, !458, !3679}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3681)
!3681 = !{!3682, !3683, !3684, !3694, !3703, !3704, !3709, !3710, !3711}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3680, file: !14, line: 227, baseType: !7, size: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3680, file: !14, line: 228, baseType: !386, size: 16, offset: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, scope: !3680, file: !14, line: 241, baseType: !3685, size: 32, offset: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3680, file: !14, line: 241, size: 32, elements: !3686)
!3686 = !{!3687, !3688}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3685, file: !14, line: 242, baseType: !429, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3685, file: !14, line: 243, baseType: !3689, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3690, line: 16, baseType: !3691)
!3690 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3690, line: 14, size: 32, elements: !3692)
!3692 = !{!3693}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3691, file: !3690, line: 15, baseType: !434, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, scope: !3680, file: !14, line: 245, baseType: !3695, size: 32, offset: 96)
!3695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3680, file: !14, line: 245, size: 32, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3695, file: !14, line: 246, baseType: !438, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3695, file: !14, line: 247, baseType: !3699, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3690, line: 20, baseType: !3700)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3690, line: 18, size: 32, elements: !3701)
!3701 = !{!3702}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3700, file: !3690, line: 19, baseType: !442, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3680, file: !14, line: 249, baseType: !579, size: 64, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3680, file: !14, line: 250, baseType: !3705, size: 128, offset: 192)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1180, line: 13, size: 128, elements: !3706)
!3706 = !{!3707, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3705, file: !1180, line: 14, baseType: !1179, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3705, file: !1180, line: 15, baseType: !380, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3680, file: !14, line: 251, baseType: !3705, size: 128, offset: 320)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3680, file: !14, line: 252, baseType: !3705, size: 128, offset: 448)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3680, file: !14, line: 259, baseType: !1769, size: 64, offset: 576)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !452, file: !14, line: 1988, baseType: !3713, size: 64, offset: 896)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!109, !3594, !1249, !3716, !236, !7}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3718, line: 22, size: 1280, elements: !3719)
!3718 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3717, file: !3718, line: 23, baseType: !236, size: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3717, file: !3718, line: 24, baseType: !386, size: 16, offset: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3717, file: !3718, line: 25, baseType: !7, size: 32, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3717, file: !3718, line: 26, baseType: !1891, size: 32, offset: 96)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3717, file: !3718, line: 27, baseType: !195, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3717, file: !3718, line: 28, baseType: !195, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3717, file: !3718, line: 41, baseType: !195, size: 64, offset: 256)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3717, file: !3718, line: 42, baseType: !574, size: 32, offset: 320)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3717, file: !3718, line: 43, baseType: !574, size: 32, offset: 352)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3717, file: !3718, line: 44, baseType: !429, size: 32, offset: 384)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3717, file: !3718, line: 45, baseType: !438, size: 32, offset: 416)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3717, file: !3718, line: 46, baseType: !579, size: 64, offset: 448)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3717, file: !3718, line: 47, baseType: !3705, size: 128, offset: 512)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3717, file: !3718, line: 48, baseType: !3705, size: 128, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3717, file: !3718, line: 49, baseType: !3705, size: 128, offset: 768)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3717, file: !3718, line: 50, baseType: !3705, size: 128, offset: 896)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3717, file: !3718, line: 51, baseType: !195, size: 64, offset: 1024)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3717, file: !3718, line: 52, baseType: !195, size: 64, offset: 1088)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3717, file: !3718, line: 53, baseType: !236, size: 32, offset: 1152)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3717, file: !3718, line: 54, baseType: !236, size: 32, offset: 1184)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3717, file: !3718, line: 55, baseType: !195, size: 64, offset: 1216)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !452, file: !14, line: 1990, baseType: !3742, size: 64, offset: 960)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!376, !458, !344, !391}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !452, file: !14, line: 1991, baseType: !3746, size: 64, offset: 1024)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!109, !423, !3749, !195, !195}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !452, file: !14, line: 1993, baseType: !3752, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!109, !423, !109}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !452, file: !14, line: 1994, baseType: !3756, size: 64, offset: 1152)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!109, !423, !458, !1769, !7, !386}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !452, file: !14, line: 1997, baseType: !3760, size: 64, offset: 1216)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!109, !3594, !423, !1769, !386}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !452, file: !14, line: 1999, baseType: !3764, size: 64, offset: 1280)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!446, !3594, !458, !109}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !452, file: !14, line: 2001, baseType: !3768, size: 64, offset: 1344)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!109, !3594, !458, !446, !109}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !452, file: !14, line: 2003, baseType: !3772, size: 64, offset: 1408)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!109, !3594, !458, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !452, file: !14, line: 2005, baseType: !3778, size: 64, offset: 1472)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!109, !458, !3775}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !452, file: !14, line: 2006, baseType: !3782, size: 64, offset: 1536)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!3785, !423}
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3787)
!3787 = !{!3788, !3795}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3786, file: !14, line: 3193, baseType: !3789, size: 128)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3790, line: 296, size: 128, elements: !3791)
!3790 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3789, file: !3790, line: 297, baseType: !278, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3789, file: !3790, line: 299, baseType: !1191, size: 32, offset: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3789, file: !3790, line: 300, baseType: !164, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3786, file: !14, line: 3194, baseType: !236, size: 32, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !424, file: !14, line: 655, baseType: !569, size: 64, offset: 448)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !424, file: !14, line: 656, baseType: !419, size: 64, offset: 512)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !424, file: !14, line: 659, baseType: !164, size: 64, offset: 576)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !424, file: !14, line: 663, baseType: !206, size: 64, offset: 640)
!3800 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !14, line: 671, baseType: !3801, size: 32, offset: 704)
!3801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !14, line: 671, size: 32, elements: !3802)
!3802 = !{!3803, !3805}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3801, file: !14, line: 672, baseType: !3804, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3801, file: !14, line: 673, baseType: !7, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !424, file: !14, line: 675, baseType: !574, size: 32, offset: 736)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !424, file: !14, line: 676, baseType: !579, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !424, file: !14, line: 677, baseType: !3705, size: 128, offset: 832)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !424, file: !14, line: 678, baseType: !3705, size: 128, offset: 960)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !424, file: !14, line: 679, baseType: !3705, size: 128, offset: 1088)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !424, file: !14, line: 680, baseType: !278, size: 32, offset: 1216)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !424, file: !14, line: 681, baseType: !257, size: 16, offset: 1248)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !424, file: !14, line: 682, baseType: !306, size: 8, offset: 1264)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !424, file: !14, line: 683, baseType: !306, size: 8, offset: 1272)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !424, file: !14, line: 684, baseType: !1327, size: 64, offset: 1280)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !424, file: !14, line: 691, baseType: !206, size: 64, offset: 1344)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !424, file: !14, line: 692, baseType: !1339, size: 320, offset: 1408)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !424, file: !14, line: 694, baseType: !206, size: 64, offset: 1728)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !424, file: !14, line: 695, baseType: !206, size: 64, offset: 1792)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !424, file: !14, line: 697, baseType: !923, size: 128, offset: 1856)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !424, file: !14, line: 698, baseType: !170, size: 128, offset: 1984)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !424, file: !14, line: 707, baseType: !170, size: 128, offset: 2112)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !424, file: !14, line: 708, baseType: !170, size: 128, offset: 2240)
!3824 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !14, line: 709, baseType: !3825, size: 128, offset: 2368)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !14, line: 709, size: 128, elements: !3826)
!3826 = !{!3827, !3828}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3825, file: !14, line: 710, baseType: !1047, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3825, file: !14, line: 711, baseType: !899, size: 128, align: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !424, file: !14, line: 713, baseType: !685, size: 64, offset: 2496)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !424, file: !14, line: 714, baseType: !685, size: 64, offset: 2560)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !424, file: !14, line: 715, baseType: !298, size: 32, offset: 2624)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !424, file: !14, line: 716, baseType: !298, size: 32, offset: 2656)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !424, file: !14, line: 717, baseType: !298, size: 32, offset: 2688)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !424, file: !14, line: 719, baseType: !298, size: 32, offset: 2720)
!3835 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !14, line: 721, baseType: !3836, size: 64, offset: 2752)
!3836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !14, line: 721, size: 64, elements: !3837)
!3837 = !{!3838, !3839}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3836, file: !14, line: 722, baseType: !2037, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3836, file: !14, line: 723, baseType: !1070, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !424, file: !14, line: 725, baseType: !3841, size: 64, offset: 2816)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !424, file: !14, line: 726, baseType: !420, size: 1536, align: 64, offset: 2880)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !424, file: !14, line: 727, baseType: !170, size: 128, offset: 4416)
!3845 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !14, line: 728, baseType: !3846, size: 64, offset: 4544)
!3846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !14, line: 728, size: 64, elements: !3847)
!3847 = !{!3848, !3849, !3852, !3853}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3846, file: !14, line: 729, baseType: !2443, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3846, file: !14, line: 730, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3846, file: !14, line: 731, baseType: !344, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3846, file: !14, line: 732, baseType: !7, size: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !424, file: !14, line: 735, baseType: !237, size: 32, offset: 4608)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !424, file: !14, line: 738, baseType: !237, size: 32, offset: 4640)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !424, file: !14, line: 739, baseType: !3531, size: 64, offset: 4672)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !424, file: !14, line: 750, baseType: !164, size: 64, offset: 4736)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !420, file: !14, line: 474, baseType: !3789, size: 128, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !420, file: !14, line: 475, baseType: !1339, size: 320, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !420, file: !14, line: 476, baseType: !1191, size: 32, offset: 512)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !420, file: !14, line: 477, baseType: !298, size: 32, offset: 544)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !420, file: !14, line: 482, baseType: !1625, size: 128, offset: 576)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !420, file: !14, line: 483, baseType: !206, size: 64, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !420, file: !14, line: 484, baseType: !206, size: 64, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !420, file: !14, line: 485, baseType: !3866, size: 64, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3868)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3869)
!3869 = !{!3870, !3874, !3944, !3948, !3952, !3958, !3962, !3966, !3971, !3975, !3979, !3983, !3984, !3988, !3992, !3996, !4001, !4005, !4012, !4013}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3868, file: !14, line: 405, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!109, !2230, !1082}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3868, file: !14, line: 406, baseType: !3875, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!109, !1769, !3878}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3880)
!3880 = !{!3881, !3911, !3925}
!3881 = !DIDerivedType(tag: DW_TAG_member, scope: !3879, file: !38, line: 295, baseType: !3882, size: 512)
!3882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3879, file: !38, line: 295, size: 512, elements: !3883)
!3883 = !{!3884, !3910}
!3884 = !DIDerivedType(tag: DW_TAG_member, scope: !3882, file: !38, line: 296, baseType: !3885, size: 448)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3882, file: !38, line: 296, size: 448, elements: !3886)
!3886 = !{!3887, !3888, !3897, !3898, !3899, !3908, !3909}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3885, file: !38, line: 298, baseType: !206, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, scope: !3885, file: !38, line: 299, baseType: !3889, size: 128, offset: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3885, file: !38, line: 299, size: 128, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3889, file: !38, line: 300, baseType: !170, size: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !38, line: 302, baseType: !3893, size: 128)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3889, file: !38, line: 302, size: 128, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3893, file: !38, line: 303, baseType: !164, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3893, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3885, file: !38, line: 310, baseType: !419, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3885, file: !38, line: 311, baseType: !206, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_member, scope: !3885, file: !38, line: 312, baseType: !3900, size: 64, offset: 320)
!3900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3885, file: !38, line: 312, size: 64, elements: !3901)
!3901 = !{!3902, !3903}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3900, file: !38, line: 313, baseType: !164, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3900, file: !38, line: 314, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3905)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3906)
!3906 = !{!3907}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3905, file: !38, line: 256, baseType: !206, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3885, file: !38, line: 316, baseType: !298, size: 32, offset: 384)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3885, file: !38, line: 317, baseType: !298, size: 32, offset: 416)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3882, file: !38, line: 323, baseType: !2231, size: 512, align: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, scope: !3879, file: !38, line: 325, baseType: !3912, size: 512, offset: 512)
!3912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3879, file: !38, line: 325, size: 512, elements: !3913)
!3913 = !{!3914, !3924}
!3914 = !DIDerivedType(tag: DW_TAG_member, scope: !3912, file: !38, line: 326, baseType: !3915, size: 320)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3912, file: !38, line: 326, size: 320, elements: !3916)
!3916 = !{!3917, !3918, !3919, !3920, !3921, !3922, !3923}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3915, file: !38, line: 327, baseType: !206, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3915, file: !38, line: 328, baseType: !206, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3915, file: !38, line: 329, baseType: !206, size: 64, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3915, file: !38, line: 331, baseType: !298, size: 32, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3915, file: !38, line: 332, baseType: !298, size: 32, offset: 224)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3915, file: !38, line: 333, baseType: !298, size: 32, offset: 256)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3915, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3912, file: !38, line: 339, baseType: !2231, size: 512, align: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3879, file: !38, line: 341, baseType: !3926, size: 512, offset: 1024)
!3926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3879, file: !38, line: 341, size: 512, elements: !3927)
!3927 = !{!3928, !3937, !3943}
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !38, line: 342, baseType: !3929, size: 384)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3926, file: !38, line: 342, size: 384, elements: !3930)
!3930 = !{!3931, !3932, !3933, !3934, !3935, !3936}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3929, file: !38, line: 343, baseType: !206, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3929, file: !38, line: 344, baseType: !206, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3929, file: !38, line: 346, baseType: !164, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3929, file: !38, line: 347, baseType: !164, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3929, file: !38, line: 348, baseType: !164, size: 64, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3929, file: !38, line: 349, baseType: !164, size: 64, offset: 320)
!3937 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !38, line: 352, baseType: !3938, size: 256)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3926, file: !38, line: 352, size: 256, elements: !3939)
!3939 = !{!3940, !3941, !3942}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3938, file: !38, line: 353, baseType: !206, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3938, file: !38, line: 354, baseType: !206, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3938, file: !38, line: 356, baseType: !170, size: 128, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3926, file: !38, line: 359, baseType: !2231, size: 512, align: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3868, file: !14, line: 409, baseType: !3945, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!109, !419, !1082}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3868, file: !14, line: 412, baseType: !3949, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!759, !419, !3878}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3868, file: !14, line: 414, baseType: !3953, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !3956}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3868, file: !14, line: 416, baseType: !3959, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!109, !1769, !419, !579, !7, !3281, !2458}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3868, file: !14, line: 419, baseType: !3963, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!109, !1769, !419, !579, !7, !7, !2230, !164}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3868, file: !14, line: 424, baseType: !3967, size: 64, offset: 448)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!3970, !419, !3970}
!3970 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !171, line: 131, baseType: !195)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3868, file: !14, line: 425, baseType: !3972, size: 64, offset: 512)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !3878, !391, !391}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3868, file: !14, line: 426, baseType: !3976, size: 64, offset: 576)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!759, !3878, !1191}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3868, file: !14, line: 427, baseType: !3980, size: 64, offset: 640)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{null, !3878}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3868, file: !14, line: 428, baseType: !2056, size: 64, offset: 704)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3868, file: !14, line: 433, baseType: !3985, size: 64, offset: 768)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!109, !419, !3878, !3878, !74}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3868, file: !14, line: 435, baseType: !3989, size: 64, offset: 832)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!109, !3878}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3868, file: !14, line: 436, baseType: !3993, size: 64, offset: 896)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!759, !3878, !391, !391}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3868, file: !14, line: 438, baseType: !3997, size: 64, offset: 960)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !3878, !4000, !4000}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3868, file: !14, line: 439, baseType: !4002, size: 64, offset: 1024)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!109, !419, !2230}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3868, file: !14, line: 442, baseType: !4006, size: 64, offset: 1088)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!109, !4009, !1769, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3868, file: !14, line: 444, baseType: !2450, size: 64, offset: 1152)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3868, file: !14, line: 445, baseType: !4014, size: 64, offset: 1216)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!109, !2059, !2081}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !14, line: 486, baseType: !206, size: 64, offset: 896)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !420, file: !14, line: 487, baseType: !1339, size: 320, offset: 960)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !420, file: !14, line: 488, baseType: !2493, size: 32, offset: 1280)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !420, file: !14, line: 489, baseType: !278, size: 32, offset: 1312)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !420, file: !14, line: 490, baseType: !170, size: 128, offset: 1344)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !420, file: !14, line: 491, baseType: !164, size: 64, offset: 1472)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !410, file: !370, line: 180, baseType: !4024, size: 64, offset: 320)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!376, !1769, !271, !409, !344, !579, !391}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !410, file: !370, line: 182, baseType: !4024, size: 64, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !410, file: !370, line: 184, baseType: !4029, size: 64, offset: 448)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!109, !1769, !271, !409, !2121}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !398, file: !370, line: 90, baseType: !4033, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !398, file: !370, line: 91, baseType: !4035, size: 64, offset: 256)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !360, file: !266, line: 120, baseType: !4037, size: 64, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!4040, !327}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4042)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4043)
!4043 = !{!4044, !4045, !4049, !4053, !4059, !4063}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4042, file: !82, line: 40, baseType: !81, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4042, file: !82, line: 41, baseType: !4046, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!759}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4042, file: !82, line: 42, baseType: !4050, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!164}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4042, file: !82, line: 43, baseType: !4054, size: 64, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!2582, !4057}
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4042, file: !82, line: 44, baseType: !4060, size: 64, offset: 256)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!2582}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4042, file: !82, line: 45, baseType: !722, size: 64, offset: 320)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !360, file: !266, line: 121, baseType: !4065, size: 64, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!2582, !327}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !360, file: !266, line: 122, baseType: !4069, size: 64, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !327, !4072, !4073}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !265, file: !266, line: 70, baseType: !4075, size: 64, offset: 384)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !594, line: 190, size: 1152, elements: !4077)
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4169, !4170, !4171, !4172, !4173, !4176}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4076, file: !594, line: 191, baseType: !298, size: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4076, file: !594, line: 192, baseType: !298, size: 32, offset: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4076, file: !594, line: 202, baseType: !4075, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4076, file: !594, line: 203, baseType: !202, size: 64, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4076, file: !594, line: 205, baseType: !791, size: 192, align: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4076, file: !594, line: 207, baseType: !2582, size: 64, offset: 384)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4076, file: !594, line: 208, baseType: !7, size: 32, offset: 448)
!4085 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !594, line: 209, baseType: !4086, size: 256, offset: 512)
!4086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !594, line: 209, size: 256, elements: !4087)
!4087 = !{!4088, !4097, !4101}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4086, file: !594, line: 210, baseType: !4089, size: 256)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !594, line: 153, size: 256, elements: !4090)
!4090 = !{!4091, !4092, !4093, !4096}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4089, file: !594, line: 154, baseType: !206, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4089, file: !594, line: 156, baseType: !1628, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4089, file: !594, line: 162, baseType: !4094, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !594, line: 162, flags: DIFlagFwdDecl)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4089, file: !594, line: 167, baseType: !206, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4086, file: !594, line: 211, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !594, line: 170, size: 64, elements: !4099)
!4099 = !{!4100}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4098, file: !594, line: 171, baseType: !4075, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4086, file: !594, line: 212, baseType: !4102, size: 256)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !594, line: 174, size: 256, elements: !4103)
!4103 = !{!4104, !4164, !4167, !4168}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4102, file: !594, line: 175, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4107)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !594, line: 271, size: 768, elements: !4108)
!4108 = !{!4109, !4129, !4133, !4137, !4141, !4145, !4149, !4153, !4154, !4155, !4156, !4160}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4107, file: !594, line: 276, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!109, !4113}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !594, line: 251, size: 1216, elements: !4115)
!4115 = !{!4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4114, file: !594, line: 253, baseType: !4075, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4114, file: !594, line: 254, baseType: !1769, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4114, file: !594, line: 255, baseType: !1119, size: 64, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4114, file: !594, line: 256, baseType: !164, size: 64, offset: 192)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4114, file: !594, line: 259, baseType: !679, size: 256, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4114, file: !594, line: 260, baseType: !679, size: 256, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4114, file: !594, line: 261, baseType: !109, size: 32, offset: 768)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4114, file: !594, line: 262, baseType: !170, size: 128, offset: 832)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4114, file: !594, line: 263, baseType: !344, size: 64, offset: 960)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4114, file: !594, line: 265, baseType: !391, size: 64, offset: 1024)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4114, file: !594, line: 266, baseType: !759, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4114, file: !594, line: 267, baseType: !759, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4114, file: !594, line: 268, baseType: !2166, size: 64, offset: 1152)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4107, file: !594, line: 277, baseType: !4130, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{null, !4113}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4107, file: !594, line: 290, baseType: !4134, size: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!109, !1119, !164}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4107, file: !594, line: 292, baseType: !4138, size: 64, offset: 192)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!164, !1119, !2050}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4107, file: !594, line: 293, baseType: !4142, size: 64, offset: 256)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!164, !1119, !164, !2050}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4107, file: !594, line: 294, baseType: !4146, size: 64, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{null, !1119, !164}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4107, file: !594, line: 296, baseType: !4150, size: 64, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!376, !4113, !344, !391, !579}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4107, file: !594, line: 306, baseType: !391, size: 64, offset: 448)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4107, file: !594, line: 313, baseType: !759, size: 8, offset: 512)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4107, file: !594, line: 314, baseType: !4150, size: 64, offset: 576)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4107, file: !594, line: 317, baseType: !4157, size: 64, offset: 640)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!2108, !4113, !2110}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4107, file: !594, line: 320, baseType: !4161, size: 64, offset: 704)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!109, !4113, !2121}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4102, file: !594, line: 176, baseType: !4165, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !594, line: 35, flags: DIFlagFwdDecl)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4102, file: !594, line: 177, baseType: !579, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4102, file: !594, line: 178, baseType: !4075, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4076, file: !594, line: 215, baseType: !164, size: 64, offset: 768)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4076, file: !594, line: 221, baseType: !195, size: 64, offset: 832)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4076, file: !594, line: 223, baseType: !257, size: 16, offset: 896)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4076, file: !594, line: 224, baseType: !386, size: 16, offset: 912)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4076, file: !594, line: 225, baseType: !4174, size: 64, offset: 960)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !594, line: 36, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4076, file: !594, line: 227, baseType: !899, size: 128, align: 64, offset: 1024)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !265, file: !266, line: 71, baseType: !4178, size: 32, offset: 448)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4179, line: 19, size: 32, elements: !4180)
!4179 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4180 = !{!4181}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4178, file: !4179, line: 20, baseType: !1459, size: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !265, file: !266, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !265, file: !266, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !265, file: !266, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !265, file: !266, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !265, file: !266, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !262, file: !94, line: 707, baseType: !261, size: 64, offset: 512)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !262, file: !94, line: 709, baseType: !4189, size: 64, offset: 576)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !262, file: !94, line: 711, baseType: !202, size: 64, offset: 640)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !262, file: !94, line: 712, baseType: !4193, size: 64, offset: 704)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4195)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4205, !4210, !4214}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4195, file: !94, line: 90, baseType: !202, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4195, file: !94, line: 91, baseType: !395, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4195, file: !94, line: 92, baseType: !4200, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!109, !4203, !339}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4195, file: !94, line: 93, baseType: !4206, size: 64, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!344, !4203, !4209, !4072, !4073}
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4195, file: !94, line: 95, baseType: !4211, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{null, !261}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4195, file: !94, line: 97, baseType: !4215, size: 64, offset: 320)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4217)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4218)
!4218 = !{!4219, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4217, file: !101, line: 287, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!109, !261}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4217, file: !101, line: 288, baseType: !4211, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4217, file: !101, line: 289, baseType: !4220, size: 64, offset: 128)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4217, file: !101, line: 290, baseType: !4220, size: 64, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4217, file: !101, line: 291, baseType: !4220, size: 64, offset: 256)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4217, file: !101, line: 292, baseType: !4220, size: 64, offset: 320)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4217, file: !101, line: 293, baseType: !4220, size: 64, offset: 384)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4217, file: !101, line: 294, baseType: !4220, size: 64, offset: 448)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4217, file: !101, line: 295, baseType: !4220, size: 64, offset: 512)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4217, file: !101, line: 296, baseType: !4220, size: 64, offset: 576)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4217, file: !101, line: 297, baseType: !4220, size: 64, offset: 640)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4217, file: !101, line: 298, baseType: !4220, size: 64, offset: 704)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4217, file: !101, line: 299, baseType: !4220, size: 64, offset: 768)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4217, file: !101, line: 300, baseType: !4220, size: 64, offset: 832)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4217, file: !101, line: 301, baseType: !4220, size: 64, offset: 896)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4217, file: !101, line: 302, baseType: !4220, size: 64, offset: 960)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4217, file: !101, line: 303, baseType: !4220, size: 64, offset: 1024)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4217, file: !101, line: 304, baseType: !4220, size: 64, offset: 1088)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4217, file: !101, line: 305, baseType: !4220, size: 64, offset: 1152)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4217, file: !101, line: 306, baseType: !4220, size: 64, offset: 1216)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4217, file: !101, line: 307, baseType: !4220, size: 64, offset: 1280)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4217, file: !101, line: 308, baseType: !4220, size: 64, offset: 1344)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4217, file: !101, line: 309, baseType: !4220, size: 64, offset: 1408)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !262, file: !94, line: 714, baseType: !4246, size: 64, offset: 768)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4248)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4249, line: 80, size: 1344, elements: !4250)
!4249 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4250 = !{!4251, !4252, !4253, !4254, !4255, !4256, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4329}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4248, file: !4249, line: 81, baseType: !202, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4248, file: !4249, line: 82, baseType: !202, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4248, file: !4249, line: 83, baseType: !395, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4248, file: !4249, line: 84, baseType: !395, size: 64, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4248, file: !4249, line: 85, baseType: !395, size: 64, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4248, file: !4249, line: 87, baseType: !4257, size: 64, offset: 320)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!109, !261, !4260}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4262)
!4262 = !{!4263, !4264, !4265, !4266, !4267, !4268, !4269, !4282, !4292, !4293, !4294, !4295, !4296, !4304, !4305, !4306, !4307, !4308, !4309}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4261, file: !88, line: 97, baseType: !202, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4261, file: !88, line: 98, baseType: !4246, size: 64, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4261, file: !88, line: 100, baseType: !608, size: 64, offset: 128)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4261, file: !88, line: 101, baseType: !202, size: 64, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4261, file: !88, line: 103, baseType: !759, size: 8, offset: 256)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4261, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4261, file: !88, line: 106, baseType: !4270, size: 64, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4272)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4273, line: 282, size: 1600, elements: !4274)
!4273 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4274 = !{!4275, !4276, !4277, !4281}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4272, file: !4273, line: 283, baseType: !3534, size: 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4272, file: !4273, line: 284, baseType: !3534, size: 256, offset: 256)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4272, file: !4273, line: 285, baseType: !4278, size: 1024, offset: 512)
!4278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 1024, elements: !4279)
!4279 = !{!4280}
!4280 = !DISubrange(count: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4272, file: !4273, line: 286, baseType: !2582, size: 64, offset: 1536)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4261, file: !88, line: 107, baseType: !4283, size: 64, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4273, line: 217, size: 256, elements: !4286)
!4286 = !{!4287, !4288, !4290, !4291}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4285, file: !4273, line: 218, baseType: !3541, size: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4285, file: !4273, line: 219, baseType: !4289, size: 64, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4273, line: 15, baseType: !206)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4285, file: !4273, line: 220, baseType: !237, size: 32, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4285, file: !4273, line: 221, baseType: !237, size: 32, offset: 224)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4261, file: !88, line: 109, baseType: !4220, size: 64, offset: 448)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4261, file: !88, line: 110, baseType: !4211, size: 64, offset: 512)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4261, file: !88, line: 111, baseType: !4220, size: 64, offset: 576)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4261, file: !88, line: 112, baseType: !4211, size: 64, offset: 640)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4261, file: !88, line: 113, baseType: !4297, size: 64, offset: 704)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!109, !261, !4300}
!4300 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4301)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4302)
!4302 = !{!4303}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4301, file: !101, line: 59, baseType: !109, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4261, file: !88, line: 114, baseType: !4220, size: 64, offset: 768)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4261, file: !88, line: 115, baseType: !395, size: 64, offset: 832)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4261, file: !88, line: 116, baseType: !395, size: 64, offset: 896)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4261, file: !88, line: 118, baseType: !4215, size: 64, offset: 960)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4261, file: !88, line: 119, baseType: !4211, size: 64, offset: 1024)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4261, file: !88, line: 121, baseType: !4310, size: 64, offset: 1088)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4248, file: !4249, line: 88, baseType: !4200, size: 64, offset: 384)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4248, file: !4249, line: 89, baseType: !4220, size: 64, offset: 448)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4248, file: !4249, line: 90, baseType: !4211, size: 64, offset: 512)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4248, file: !4249, line: 91, baseType: !4211, size: 64, offset: 576)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4248, file: !4249, line: 92, baseType: !4211, size: 64, offset: 640)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4248, file: !4249, line: 94, baseType: !4220, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4248, file: !4249, line: 95, baseType: !4220, size: 64, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4248, file: !4249, line: 97, baseType: !4297, size: 64, offset: 832)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4248, file: !4249, line: 98, baseType: !4220, size: 64, offset: 896)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4248, file: !4249, line: 100, baseType: !4220, size: 64, offset: 960)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4248, file: !4249, line: 102, baseType: !4220, size: 64, offset: 1024)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4248, file: !4249, line: 103, baseType: !4211, size: 64, offset: 1088)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4248, file: !4249, line: 105, baseType: !4215, size: 64, offset: 1152)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4248, file: !4249, line: 107, baseType: !4326, size: 64, offset: 1216)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4328)
!4328 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4249, line: 107, flags: DIFlagFwdDecl)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4248, file: !4249, line: 109, baseType: !759, size: 8, offset: 1280)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !262, file: !94, line: 715, baseType: !4260, size: 64, offset: 832)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !262, file: !94, line: 717, baseType: !164, size: 64, offset: 896)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !262, file: !94, line: 719, baseType: !164, size: 64, offset: 960)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !262, file: !94, line: 721, baseType: !679, size: 256, offset: 1024)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !262, file: !94, line: 725, baseType: !4335, size: 448, offset: 1280)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4340}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4335, file: !94, line: 518, baseType: !170, size: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4335, file: !94, line: 519, baseType: !170, size: 128, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4335, file: !94, line: 520, baseType: !170, size: 128, offset: 256)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4335, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !262, file: !94, line: 726, baseType: !4342, size: 2496, offset: 1728)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4343)
!4343 = !{!4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4426, !4430}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4342, file: !101, line: 664, baseType: !4300, size: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4342, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4342, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4342, file: !101, line: 667, baseType: !759, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4342, file: !101, line: 668, baseType: !759, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4342, file: !101, line: 669, baseType: !759, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4342, file: !101, line: 670, baseType: !759, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4342, file: !101, line: 671, baseType: !759, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4342, file: !101, line: 672, baseType: !759, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4342, file: !101, line: 673, baseType: !759, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4342, file: !101, line: 674, baseType: !759, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4342, file: !101, line: 675, baseType: !236, size: 32, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4342, file: !101, line: 676, baseType: !278, size: 32, offset: 96)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4342, file: !101, line: 678, baseType: !170, size: 128, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4342, file: !101, line: 679, baseType: !628, size: 256, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4342, file: !101, line: 680, baseType: !4360, size: 64, offset: 512)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4362, line: 43, size: 1536, elements: !4363)
!4362 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4363 = !{!4364, !4365, !4366, !4367, !4368, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4361, file: !4362, line: 44, baseType: !202, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4361, file: !4362, line: 45, baseType: !109, size: 32, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4361, file: !4362, line: 46, baseType: !170, size: 128, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4361, file: !4362, line: 47, baseType: !278, size: 32, offset: 256)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4361, file: !4362, line: 48, baseType: !4369, size: 64, offset: 320)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4361, file: !4362, line: 49, baseType: !919, size: 320, offset: 384)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4361, file: !4362, line: 50, baseType: !206, size: 64, offset: 704)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4361, file: !4362, line: 51, baseType: !1574, size: 64, offset: 768)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4361, file: !4362, line: 52, baseType: !1574, size: 64, offset: 832)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4361, file: !4362, line: 53, baseType: !1574, size: 64, offset: 896)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4361, file: !4362, line: 54, baseType: !1574, size: 64, offset: 960)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4361, file: !4362, line: 55, baseType: !1574, size: 64, offset: 1024)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4361, file: !4362, line: 56, baseType: !206, size: 64, offset: 1088)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4361, file: !4362, line: 57, baseType: !206, size: 64, offset: 1152)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4361, file: !4362, line: 58, baseType: !206, size: 64, offset: 1216)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4361, file: !4362, line: 59, baseType: !206, size: 64, offset: 1280)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4361, file: !4362, line: 60, baseType: !206, size: 64, offset: 1344)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4361, file: !4362, line: 61, baseType: !261, size: 64, offset: 1408)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4361, file: !4362, line: 62, baseType: !759, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4361, file: !4362, line: 63, baseType: !759, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4342, file: !101, line: 681, baseType: !759, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4342, file: !101, line: 682, baseType: !759, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4342, file: !101, line: 683, baseType: !759, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4342, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4342, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4342, file: !101, line: 690, baseType: !1566, size: 512, offset: 640)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4342, file: !101, line: 691, baseType: !195, size: 64, offset: 1152)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4342, file: !101, line: 692, baseType: !937, size: 256, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4342, file: !101, line: 693, baseType: !1432, size: 192, offset: 1472)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4342, file: !101, line: 694, baseType: !4369, size: 64, offset: 1664)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4342, file: !101, line: 695, baseType: !298, size: 32, offset: 1728)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4342, file: !101, line: 696, baseType: !298, size: 32, offset: 1760)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4342, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4342, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4342, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4342, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4342, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4342, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4342, file: !101, line: 703, baseType: !759, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4342, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4342, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4342, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4342, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4342, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4342, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4342, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4342, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4342, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4342, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4342, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4342, file: !101, line: 715, baseType: !195, size: 64, offset: 2048)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4342, file: !101, line: 716, baseType: !195, size: 64, offset: 2112)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4342, file: !101, line: 717, baseType: !195, size: 64, offset: 2176)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4342, file: !101, line: 718, baseType: !195, size: 64, offset: 2240)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4342, file: !101, line: 720, baseType: !4421, size: 64, offset: 2304)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4423)
!4423 = !{!4424, !4425}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4422, file: !101, line: 633, baseType: !278, size: 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4422, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4342, file: !101, line: 721, baseType: !4427, size: 64, offset: 2368)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !261, !675}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4342, file: !101, line: 722, baseType: !4431, size: 64, offset: 2432)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !262, file: !94, line: 727, baseType: !4434, size: 64, offset: 4224)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4436)
!4436 = !{!4437, !4438, !4439, !4443, !4444, !4445}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4435, file: !101, line: 743, baseType: !4217, size: 1472)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4435, file: !101, line: 744, baseType: !4220, size: 64, offset: 1472)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4435, file: !101, line: 745, baseType: !4440, size: 64, offset: 1536)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !261, !759}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4435, file: !101, line: 746, baseType: !4220, size: 64, offset: 1600)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4435, file: !101, line: 747, baseType: !4211, size: 64, offset: 1664)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4435, file: !101, line: 748, baseType: !4211, size: 64, offset: 1728)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !262, file: !94, line: 736, baseType: !4447, size: 128, offset: 4288)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4448)
!4448 = !{!4449, !4453}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4447, file: !94, line: 531, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4452, line: 13, flags: DIFlagFwdDecl)
!4452 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4447, file: !94, line: 532, baseType: !4454, size: 64, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !262, file: !94, line: 738, baseType: !4457, size: 64, offset: 4416)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4459)
!4459 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !262, file: !94, line: 740, baseType: !4461, size: 64, offset: 4480)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !262, file: !94, line: 741, baseType: !195, size: 64, offset: 4544)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !262, file: !94, line: 746, baseType: !195, size: 64, offset: 4608)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !262, file: !94, line: 747, baseType: !4465, size: 64, offset: 4672)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4467)
!4467 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !262, file: !94, line: 749, baseType: !4469, size: 64, offset: 4736)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4471)
!4471 = !{!4472, !4473, !4474}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4470, file: !94, line: 433, baseType: !7, size: 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4470, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4470, file: !94, line: 435, baseType: !206, size: 64, offset: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !262, file: !94, line: 751, baseType: !170, size: 128, offset: 4800)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !262, file: !94, line: 762, baseType: !4477, size: 64, offset: 4928)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !262, file: !94, line: 770, baseType: !4480, offset: 4992)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4481, line: 5, elements: !966)
!4481 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !262, file: !94, line: 772, baseType: !4483, size: 64, offset: 4992)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4485, line: 48, size: 1152, elements: !4486)
!4485 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4486 = !{!4487, !4488, !4490, !4491, !4594, !4602, !4603, !4604, !4605, !4606, !4607}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4484, file: !4485, line: 49, baseType: !202, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4484, file: !4485, line: 50, baseType: !4489, size: 32, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4485, line: 25, baseType: !236)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4484, file: !4485, line: 51, baseType: !202, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4484, file: !4485, line: 52, baseType: !4492, size: 512, offset: 192)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4493, line: 41, size: 512, elements: !4494)
!4493 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4494 = !{!4495, !4497, !4590, !4591, !4592, !4593}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4492, file: !4493, line: 42, baseType: !4496, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4492, file: !4493, line: 43, baseType: !4498, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4500)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4493, line: 125, size: 1408, elements: !4501)
!4501 = !{!4502, !4506, !4510, !4516, !4520, !4521, !4525, !4529, !4533, !4537, !4541, !4542, !4546, !4550, !4554, !4565, !4566, !4567, !4568, !4578, !4582, !4586}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4500, file: !4493, line: 126, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!4496, !4496}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4500, file: !4493, line: 127, baseType: !4507, size: 64, offset: 64)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{null, !4496}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4500, file: !4493, line: 128, baseType: !4511, size: 64, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!759, !4514}
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4492)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4500, file: !4493, line: 129, baseType: !4517, size: 64, offset: 192)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!2582, !4514, !4203}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4500, file: !4493, line: 131, baseType: !4511, size: 64, offset: 256)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4500, file: !4493, line: 133, baseType: !4522, size: 64, offset: 320)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!116, !4514}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4500, file: !4493, line: 134, baseType: !4526, size: 64, offset: 384)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!759, !4514, !202}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4500, file: !4493, line: 136, baseType: !4530, size: 64, offset: 448)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!109, !4514, !202, !7, !164, !391}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4500, file: !4493, line: 141, baseType: !4534, size: 64, offset: 512)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!109, !4514, !202, !1014, !391}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4500, file: !4493, line: 144, baseType: !4538, size: 64, offset: 576)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!202, !4514}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4500, file: !4493, line: 145, baseType: !4538, size: 64, offset: 640)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4500, file: !4493, line: 146, baseType: !4543, size: 64, offset: 704)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!4496, !4514}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4500, file: !4493, line: 148, baseType: !4547, size: 64, offset: 768)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!4496, !4514, !4496}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4500, file: !4493, line: 151, baseType: !4551, size: 64, offset: 832)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!4496, !4514, !202}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4500, file: !4493, line: 153, baseType: !4555, size: 64, offset: 896)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!109, !4514, !202, !202, !7, !7, !4558}
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4493, line: 94, size: 640, elements: !4560)
!4560 = !{!4561, !4562, !4563}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4559, file: !4493, line: 95, baseType: !4496, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4559, file: !4493, line: 96, baseType: !7, size: 32, offset: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4559, file: !4493, line: 97, baseType: !4564, size: 512, offset: 128)
!4564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 512, elements: !1609)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4500, file: !4493, line: 158, baseType: !4547, size: 64, offset: 960)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4500, file: !4493, line: 161, baseType: !4543, size: 64, offset: 1024)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4500, file: !4493, line: 163, baseType: !4503, size: 64, offset: 1088)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4500, file: !4493, line: 164, baseType: !4569, size: 64, offset: 1152)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!109, !4514, !4572}
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4493, line: 73, size: 128, elements: !4574)
!4574 = !{!4575, !4576, !4577}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4573, file: !4493, line: 74, baseType: !7, size: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4573, file: !4493, line: 75, baseType: !7, size: 32, offset: 32)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4573, file: !4493, line: 76, baseType: !4514, size: 64, offset: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4500, file: !4493, line: 166, baseType: !4579, size: 64, offset: 1216)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!164, !4496, !109}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4500, file: !4493, line: 167, baseType: !4583, size: 64, offset: 1280)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!109, !4514, !7}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4500, file: !4493, line: 168, baseType: !4587, size: 64, offset: 1344)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!109, !4496}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4492, file: !4493, line: 44, baseType: !261, size: 64, offset: 128)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4492, file: !4493, line: 45, baseType: !170, size: 128, offset: 192)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4492, file: !4493, line: 46, baseType: !170, size: 128, offset: 320)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4492, file: !4493, line: 47, baseType: !306, size: 8, offset: 448)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4484, file: !4485, line: 54, baseType: !4595, size: 64, offset: 704)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4485, line: 28, size: 256, elements: !4597)
!4597 = !{!4598, !4599, !4600, !4601}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4596, file: !4485, line: 29, baseType: !344, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4596, file: !4485, line: 30, baseType: !109, size: 32, offset: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4596, file: !4485, line: 31, baseType: !164, size: 64, offset: 128)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4596, file: !4485, line: 32, baseType: !4595, size: 64, offset: 192)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4484, file: !4485, line: 55, baseType: !4595, size: 64, offset: 768)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4484, file: !4485, line: 56, baseType: !4483, size: 64, offset: 832)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4484, file: !4485, line: 57, baseType: !4483, size: 64, offset: 896)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4484, file: !4485, line: 58, baseType: !4483, size: 64, offset: 960)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4484, file: !4485, line: 62, baseType: !206, size: 64, offset: 1024)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4484, file: !4485, line: 63, baseType: !164, size: 64, offset: 1088)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !262, file: !94, line: 773, baseType: !4496, size: 64, offset: 5056)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !262, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !262, file: !94, line: 778, baseType: !574, size: 32, offset: 5152)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !262, file: !94, line: 779, baseType: !236, size: 32, offset: 5184)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !262, file: !94, line: 781, baseType: !278, size: 32, offset: 5216)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !262, file: !94, line: 782, baseType: !170, size: 128, offset: 5248)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !262, file: !94, line: 784, baseType: !4615, size: 64, offset: 5376)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4617)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4618, line: 52, size: 768, elements: !4619)
!4618 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4619 = !{!4620, !4621, !4622, !4623, !4624, !4628, !4632, !4633, !4634, !4635, !4639, !4643}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4617, file: !4618, line: 53, baseType: !202, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4617, file: !4618, line: 55, baseType: !395, size: 64, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4617, file: !4618, line: 56, baseType: !395, size: 64, offset: 128)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4617, file: !4618, line: 58, baseType: !4200, size: 64, offset: 192)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4617, file: !4618, line: 59, baseType: !4625, size: 64, offset: 256)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!344, !4203, !4209}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4617, file: !4618, line: 61, baseType: !4629, size: 64, offset: 320)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !4615}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4617, file: !4618, line: 62, baseType: !4211, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4617, file: !4618, line: 64, baseType: !4220, size: 64, offset: 448)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4617, file: !4618, line: 66, baseType: !4040, size: 64, offset: 512)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4617, file: !4618, line: 67, baseType: !4636, size: 64, offset: 576)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!2582, !4203}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4617, file: !4618, line: 69, baseType: !4640, size: 64, offset: 640)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{null, !4203, !4072, !4073}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4617, file: !4618, line: 71, baseType: !4215, size: 64, offset: 704)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !262, file: !94, line: 785, baseType: !395, size: 64, offset: 5440)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !262, file: !94, line: 787, baseType: !4211, size: 64, offset: 5504)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !262, file: !94, line: 788, baseType: !4647, size: 64, offset: 5568)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !262, file: !94, line: 789, baseType: !4650, size: 64, offset: 5632)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !262, file: !94, line: 791, baseType: !4653, size: 64, offset: 5696)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4655)
!4655 = !{!4656, !4657, !4658, !4659, !4660}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4654, file: !94, line: 598, baseType: !122, size: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4654, file: !94, line: 599, baseType: !131, size: 32, offset: 32)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4654, file: !94, line: 600, baseType: !136, size: 32, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4654, file: !94, line: 601, baseType: !759, size: 8, offset: 96)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4654, file: !94, line: 602, baseType: !759, size: 8, offset: 104)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !262, file: !94, line: 793, baseType: !141, size: 32, offset: 5760)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !262, file: !94, line: 795, baseType: !759, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !262, file: !94, line: 796, baseType: !759, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !262, file: !94, line: 797, baseType: !759, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !262, file: !94, line: 798, baseType: !759, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !262, file: !94, line: 799, baseType: !759, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !178, file: !167, line: 676, baseType: !262, size: 5824, offset: 2240)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !178, file: !167, line: 677, baseType: !409, size: 64, offset: 8064)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !178, file: !167, line: 678, baseType: !409, size: 64, offset: 8128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !178, file: !167, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !178, file: !167, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !166, file: !167, line: 325, baseType: !177, size: 64, offset: 192)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !166, file: !167, line: 327, baseType: !164, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !166, file: !167, line: 328, baseType: !244, size: 64, offset: 320)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !166, file: !167, line: 329, baseType: !4676, size: 64, offset: 384)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !167, line: 76, size: 832, elements: !4678)
!4678 = !{!4679, !4680, !4681, !4684, !4685}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4677, file: !167, line: 77, baseType: !177, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4677, file: !167, line: 78, baseType: !170, size: 128, offset: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4677, file: !167, line: 79, baseType: !4682, size: 64, offset: 192)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !167, line: 79, flags: DIFlagFwdDecl)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4677, file: !167, line: 80, baseType: !248, size: 8, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4677, file: !167, line: 81, baseType: !265, size: 512, offset: 320)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !166, file: !167, line: 331, baseType: !7, size: 32, offset: 448)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !166, file: !167, line: 332, baseType: !257, size: 16, offset: 480)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !166, file: !167, line: 333, baseType: !257, size: 16, offset: 496)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !166, file: !167, line: 334, baseType: !257, size: 16, offset: 512)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !166, file: !167, line: 335, baseType: !257, size: 16, offset: 528)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !166, file: !167, line: 336, baseType: !7, size: 32, offset: 544)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !166, file: !167, line: 337, baseType: !306, size: 8, offset: 576)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !166, file: !167, line: 338, baseType: !306, size: 8, offset: 584)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !166, file: !167, line: 344, baseType: !4695, size: 64, offset: 640)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !167, line: 319, flags: DIFlagFwdDecl)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !166, file: !167, line: 345, baseType: !165, size: 64, offset: 704)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !166, file: !167, line: 347, baseType: !236, size: 32, offset: 768)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !166, file: !167, line: 348, baseType: !306, size: 8, offset: 800)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !166, file: !167, line: 349, baseType: !306, size: 8, offset: 808)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !166, file: !167, line: 350, baseType: !306, size: 8, offset: 816)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !166, file: !167, line: 351, baseType: !306, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !166, file: !167, line: 352, baseType: !306, size: 8, offset: 832)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !166, file: !167, line: 353, baseType: !306, size: 8, offset: 840)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !166, file: !167, line: 354, baseType: !313, size: 16, offset: 848)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !166, file: !167, line: 355, baseType: !1028, size: 64, offset: 896)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !166, file: !167, line: 357, baseType: !4708, size: 64, offset: 960)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !167, line: 918, size: 2368, elements: !4710)
!4710 = !{!4711, !4712, !4713, !4726, !4730, !4734, !4738, !4742, !4743, !4747, !4748, !4752, !4772, !4773, !4774, !4775, !4780}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4709, file: !167, line: 919, baseType: !170, size: 128)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4709, file: !167, line: 920, baseType: !202, size: 64, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4709, file: !167, line: 921, baseType: !4714, size: 64, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4716)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4273, line: 44, size: 320, elements: !4717)
!4717 = !{!4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4716, file: !4273, line: 45, baseType: !237, size: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4716, file: !4273, line: 45, baseType: !237, size: 32, offset: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4716, file: !4273, line: 46, baseType: !237, size: 32, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4716, file: !4273, line: 46, baseType: !237, size: 32, offset: 96)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4716, file: !4273, line: 47, baseType: !237, size: 32, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4716, file: !4273, line: 47, baseType: !237, size: 32, offset: 160)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4716, file: !4273, line: 48, baseType: !4289, size: 64, offset: 192)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4716, file: !4273, line: 49, baseType: !237, size: 32, offset: 256)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4709, file: !167, line: 922, baseType: !4727, size: 64, offset: 256)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!109, !165, !4714}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4709, file: !167, line: 923, baseType: !4731, size: 64, offset: 320)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{null, !165}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4709, file: !167, line: 924, baseType: !4735, size: 64, offset: 384)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!109, !165, !4300}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4709, file: !167, line: 925, baseType: !4739, size: 64, offset: 448)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!109, !165}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4709, file: !167, line: 926, baseType: !4731, size: 64, offset: 512)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4709, file: !167, line: 927, baseType: !4744, size: 64, offset: 576)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!109, !165, !109}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4709, file: !167, line: 928, baseType: !4744, size: 64, offset: 640)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4709, file: !167, line: 929, baseType: !4749, size: 64, offset: 704)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!236, !165}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4709, file: !167, line: 930, baseType: !4753, size: 64, offset: 768)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4755)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !167, line: 837, size: 448, elements: !4756)
!4756 = !{!4757, !4763, !4767, !4768, !4769, !4770, !4771}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4755, file: !167, line: 839, baseType: !4758, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!4761, !165, !4762}
!4761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !167, line: 814, baseType: !7)
!4762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !167, line: 196, baseType: !7)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4755, file: !167, line: 843, baseType: !4764, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!4761, !165}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4755, file: !167, line: 846, baseType: !4764, size: 64, offset: 128)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4755, file: !167, line: 849, baseType: !4731, size: 64, offset: 192)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4755, file: !167, line: 850, baseType: !4731, size: 64, offset: 256)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4755, file: !167, line: 853, baseType: !4731, size: 64, offset: 320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4755, file: !167, line: 856, baseType: !4731, size: 64, offset: 384)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4709, file: !167, line: 931, baseType: !395, size: 64, offset: 832)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4709, file: !167, line: 932, baseType: !395, size: 64, offset: 896)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4709, file: !167, line: 933, baseType: !4261, size: 1152, offset: 960)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4709, file: !167, line: 934, baseType: !4776, size: 192, offset: 2112)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !167, line: 801, size: 192, elements: !4777)
!4777 = !{!4778, !4779}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4776, file: !167, line: 802, baseType: !278, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4776, file: !167, line: 803, baseType: !170, size: 128, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4709, file: !167, line: 935, baseType: !759, size: 8, offset: 2304)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !166, file: !167, line: 358, baseType: !195, size: 64, offset: 1024)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !166, file: !167, line: 364, baseType: !4470, size: 128, offset: 1088)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !166, file: !167, line: 366, baseType: !4784, size: 32, offset: 1216)
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !167, line: 171, baseType: !109)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !166, file: !167, line: 369, baseType: !306, size: 8, offset: 1248)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !166, file: !167, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !166, file: !167, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !166, file: !167, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !166, file: !167, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !166, file: !167, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !166, file: !167, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !166, file: !167, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !166, file: !167, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !166, file: !167, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !166, file: !167, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !166, file: !167, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !166, file: !167, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !166, file: !167, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !166, file: !167, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !166, file: !167, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !166, file: !167, line: 390, baseType: !7, size: 32, offset: 1280)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !166, file: !167, line: 391, baseType: !7, size: 32, offset: 1312)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !166, file: !167, line: 394, baseType: !4804, size: 64, offset: 1344)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !167, line: 316, flags: DIFlagFwdDecl)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !166, file: !167, line: 395, baseType: !313, size: 16, offset: 1408)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !166, file: !167, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !166, file: !167, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !166, file: !167, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !166, file: !167, line: 402, baseType: !4762, size: 32, offset: 1440)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !166, file: !167, line: 403, baseType: !262, size: 5824, offset: 1472)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !166, file: !167, line: 405, baseType: !109, size: 32, offset: 7296)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !166, file: !167, line: 411, baseType: !7, size: 32, offset: 7328)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !166, file: !167, line: 412, baseType: !4815, size: 5632, offset: 7360)
!4815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 5632, elements: !4816)
!4816 = !{!4817}
!4817 = !DISubrange(count: 11)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !166, file: !167, line: 413, baseType: !189, size: 512, offset: 12992)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !166, file: !167, line: 415, baseType: !759, size: 8, offset: 13504)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !166, file: !167, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !166, file: !167, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !166, file: !167, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !166, file: !167, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !166, file: !167, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !166, file: !167, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !166, file: !167, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !166, file: !167, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !166, file: !167, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !166, file: !167, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !166, file: !167, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !166, file: !167, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !166, file: !167, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !166, file: !167, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !166, file: !167, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !166, file: !167, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !166, file: !167, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !166, file: !167, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !166, file: !167, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !166, file: !167, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !166, file: !167, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !166, file: !167, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !166, file: !167, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !166, file: !167, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !166, file: !167, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !166, file: !167, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !166, file: !167, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !166, file: !167, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !166, file: !167, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !166, file: !167, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !166, file: !167, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !166, file: !167, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !166, file: !167, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !166, file: !167, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !166, file: !167, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !166, file: !167, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !166, file: !167, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !166, file: !167, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !166, file: !167, line: 468, baseType: !4859, size: 16, offset: 13552)
!4859 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !167, line: 222, baseType: !257)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !166, file: !167, line: 469, baseType: !298, size: 32, offset: 13568)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !166, file: !167, line: 471, baseType: !278, size: 32, offset: 13600)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !166, file: !167, line: 472, baseType: !4863, size: 512, offset: 13632)
!4863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 512, elements: !2759)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !166, file: !167, line: 473, baseType: !1047, size: 64, offset: 14144)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !166, file: !167, line: 474, baseType: !4866, size: 704, offset: 14208)
!4866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 704, elements: !4816)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !166, file: !167, line: 475, baseType: !4866, size: 704, offset: 14912)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !166, file: !167, line: 487, baseType: !164, size: 64, offset: 15616)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !166, file: !167, line: 488, baseType: !637, size: 32, offset: 15680)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !166, file: !167, line: 490, baseType: !4871, size: 320, offset: 15744)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !167, line: 309, size: 320, elements: !4872)
!4872 = !{!4873, !4874, !4875}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4871, file: !167, line: 310, baseType: !679, size: 256)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4871, file: !167, line: 311, baseType: !7, size: 32, offset: 256)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4871, file: !167, line: 312, baseType: !306, size: 8, offset: 288)
!4876 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !167, line: 497, baseType: !4877, size: 64, offset: 16064)
!4877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !167, line: 497, size: 64, elements: !4878)
!4878 = !{!4879, !4882}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4877, file: !167, line: 498, baseType: !4880, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !167, line: 317, flags: DIFlagFwdDecl)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4877, file: !167, line: 499, baseType: !165, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !166, file: !167, line: 501, baseType: !313, size: 16, offset: 16128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !166, file: !167, line: 502, baseType: !306, size: 8, offset: 16144)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !166, file: !167, line: 505, baseType: !313, size: 16, offset: 16160)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !166, file: !167, line: 506, baseType: !236, size: 32, offset: 16192)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !166, file: !167, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !166, file: !167, line: 510, baseType: !313, size: 16, offset: 16240)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !166, file: !167, line: 511, baseType: !313, size: 16, offset: 16256)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !166, file: !167, line: 519, baseType: !313, size: 16, offset: 16272)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !166, file: !167, line: 520, baseType: !194, size: 64, offset: 16320)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !166, file: !167, line: 521, baseType: !391, size: 64, offset: 16384)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !166, file: !167, line: 526, baseType: !202, size: 64, offset: 16448)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !166, file: !167, line: 528, baseType: !206, size: 64, offset: 16512)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !166, file: !167, line: 531, baseType: !4896, size: 56, offset: 16576)
!4896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 56, elements: !800)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !248)
!4901 = !{!0, !4902, !4904, !4906, !4908, !4910, !4912, !4914, !4916, !4918, !4920, !4925, !4927, !4929, !4931, !4933, !4935, !4950, !4955, !4960, !4965, !4970, !4972, !4977, !4982, !4987, !4992, !4995, !5000, !5002, !5027, !5032, !5034, !5039}
!4902 = !DIGlobalVariableExpression(var: !4903, expr: !DIExpression())
!4903 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_hcd_amd_remote_wakeup_quirk293", scope: !2, file: !3, line: 298, type: !164, isLocal: true, isDefinition: true)
!4904 = !DIGlobalVariableExpression(var: !4905, expr: !DIExpression())
!4905 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_amd_hang_symptom_quirk294", scope: !2, file: !3, line: 311, type: !164, isLocal: true, isDefinition: true)
!4906 = !DIGlobalVariableExpression(var: !4907, expr: !DIExpression())
!4907 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_amd_prefetch_quirk295", scope: !2, file: !3, line: 319, type: !164, isLocal: true, isDefinition: true)
!4908 = !DIGlobalVariableExpression(var: !4909, expr: !DIExpression())
!4909 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_amd_quirk_pll_check296", scope: !2, file: !3, line: 326, type: !164, isLocal: true, isDefinition: true)
!4910 = !DIGlobalVariableExpression(var: !4911, expr: !DIExpression())
!4911 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_amd_quirk_pll_disable297", scope: !2, file: !3, line: 459, type: !164, isLocal: true, isDefinition: true)
!4912 = !DIGlobalVariableExpression(var: !4913, expr: !DIExpression())
!4913 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_asmedia_modifyflowcontrol298", scope: !2, file: !3, line: 503, type: !164, isLocal: true, isDefinition: true)
!4914 = !DIGlobalVariableExpression(var: !4915, expr: !DIExpression())
!4915 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_amd_quirk_pll_enable299", scope: !2, file: !3, line: 509, type: !164, isLocal: true, isDefinition: true)
!4916 = !DIGlobalVariableExpression(var: !4917, expr: !DIExpression())
!4917 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_amd_dev_put300", scope: !2, file: !3, line: 540, type: !164, isLocal: true, isDefinition: true)
!4918 = !DIGlobalVariableExpression(var: !4919, expr: !DIExpression())
!4919 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_amd_pt_check_port301", scope: !2, file: !3, line: 632, type: !164, isLocal: true, isDefinition: true)
!4920 = !DIGlobalVariableExpression(var: !4921, expr: !DIExpression())
!4921 = distinct !DIGlobalVariable(scope: null, file: !3, line: 654, type: !4922, isLocal: true, isDefinition: true)
!4922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 224, elements: !4923)
!4923 = !{!4924}
!4924 = !DISubrange(count: 28)
!4925 = !DIGlobalVariableExpression(var: !4926, expr: !DIExpression())
!4926 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_uhci_reset_hc302", scope: !2, file: !3, line: 662, type: !164, isLocal: true, isDefinition: true)
!4927 = !DIGlobalVariableExpression(var: !4928, expr: !DIExpression())
!4928 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_uhci_check_and_reset_hc303", scope: !2, file: !3, line: 713, type: !164, isLocal: true, isDefinition: true)
!4929 = !DIGlobalVariableExpression(var: !4930, expr: !DIExpression())
!4930 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_enable_intel_xhci_ports304", scope: !2, file: !3, line: 1129, type: !164, isLocal: true, isDefinition: true)
!4931 = !DIGlobalVariableExpression(var: !4932, expr: !DIExpression())
!4932 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_disable_xhci_ports305", scope: !2, file: !3, line: 1136, type: !164, isLocal: true, isDefinition: true)
!4933 = !DIGlobalVariableExpression(var: !4934, expr: !DIExpression())
!4934 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___UNIQUE_ID_quirk_usb_early_handoff306307", scope: !2, file: !3, line: 1293, type: !164, isLocal: true, isDefinition: true)
!4935 = !DIGlobalVariableExpression(var: !4936, expr: !DIExpression())
!4936 = distinct !DIGlobalVariable(name: "amd_chipset", scope: !2, file: !3, line: 139, type: !4937, isLocal: true, isDefinition: true)
!4937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_chipset_info", file: !3, line: 131, size: 320, elements: !4938)
!4938 = !{!4939, !4940, !4941, !4942, !4947, !4948, !4949}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "nb_dev", scope: !4937, file: !3, line: 132, baseType: !165, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_dev", scope: !4937, file: !3, line: 133, baseType: !165, size: 64, offset: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "nb_type", scope: !4937, file: !3, line: 134, baseType: !109, size: 32, offset: 128)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "sb_type", scope: !4937, file: !3, line: 135, baseType: !4943, size: 64, offset: 160)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_chipset_type", file: !3, line: 126, size: 64, elements: !4944)
!4944 = !{!4945, !4946}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !4943, file: !3, line: 127, baseType: !147, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4943, file: !3, line: 128, baseType: !306, size: 8, offset: 32)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "isoc_reqs", scope: !4937, file: !3, line: 136, baseType: !109, size: 32, offset: 224)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "probe_count", scope: !4937, file: !3, line: 137, baseType: !109, size: 32, offset: 256)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "need_pll_quirk", scope: !4937, file: !3, line: 138, baseType: !759, size: 8, offset: 288)
!4950 = !DIGlobalVariableExpression(var: !4951, expr: !DIExpression())
!4951 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !4952, isLocal: true, isDefinition: true)
!4952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 232, elements: !4953)
!4953 = !{!4954}
!4954 = !DISubrange(count: 29)
!4955 = !DIGlobalVariableExpression(var: !4956, expr: !DIExpression())
!4956 = distinct !DIGlobalVariable(scope: null, file: !3, line: 471, type: !4957, isLocal: true, isDefinition: true)
!4957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 176, elements: !4958)
!4958 = !{!4959}
!4959 = !DISubrange(count: 22)
!4960 = !DIGlobalVariableExpression(var: !4961, expr: !DIExpression())
!4961 = distinct !DIGlobalVariable(scope: null, file: !3, line: 471, type: !4962, isLocal: true, isDefinition: true)
!4962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 184, elements: !4963)
!4963 = !{!4964}
!4964 = !DISubrange(count: 23)
!4965 = !DIGlobalVariableExpression(var: !4966, expr: !DIExpression())
!4966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 481, type: !4967, isLocal: true, isDefinition: true)
!4967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 240, elements: !4968)
!4968 = !{!4969}
!4969 = !DISubrange(count: 30)
!4970 = !DIGlobalVariableExpression(var: !4971, expr: !DIExpression())
!4971 = distinct !DIGlobalVariable(name: "amd_lock", scope: !2, file: !3, line: 141, type: !278, isLocal: true, isDefinition: true)
!4972 = !DIGlobalVariableExpression(var: !4973, expr: !DIExpression())
!4973 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1266, type: !4974, isLocal: true, isDefinition: true)
!4974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 144, elements: !4975)
!4975 = !{!4976}
!4976 = !DISubrange(count: 18)
!4977 = !DIGlobalVariableExpression(var: !4978, expr: !DIExpression())
!4978 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1279, type: !4979, isLocal: true, isDefinition: true)
!4979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 376, elements: !4980)
!4980 = !{!4981}
!4981 = !DISubrange(count: 47)
!4982 = !DIGlobalVariableExpression(var: !4983, expr: !DIExpression())
!4983 = distinct !DIGlobalVariable(scope: null, file: !3, line: 787, type: !4984, isLocal: true, isDefinition: true)
!4984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 352, elements: !4985)
!4985 = !{!4986}
!4986 = !DISubrange(count: 44)
!4987 = !DIGlobalVariableExpression(var: !4988, expr: !DIExpression())
!4988 = distinct !DIGlobalVariable(scope: null, file: !3, line: 970, type: !4989, isLocal: true, isDefinition: true)
!4989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 288, elements: !4990)
!4990 = !{!4991}
!4991 = !DISubrange(count: 36)
!4992 = !DIGlobalVariableExpression(var: !4993, expr: !DIExpression())
!4993 = distinct !DIGlobalVariable(scope: null, file: !3, line: 977, type: !4994, isLocal: true, isDefinition: true)
!4994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 24, elements: !345)
!4995 = !DIGlobalVariableExpression(var: !4996, expr: !DIExpression())
!4996 = distinct !DIGlobalVariable(scope: null, file: !3, line: 977, type: !4997, isLocal: true, isDefinition: true)
!4997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 192, elements: !4998)
!4998 = !{!4999}
!4999 = !DISubrange(count: 24)
!5000 = !DIGlobalVariableExpression(var: !5001, expr: !DIExpression())
!5001 = distinct !DIGlobalVariable(scope: null, file: !3, line: 911, type: !4984, isLocal: true, isDefinition: true)
!5002 = !DIGlobalVariableExpression(var: !5003, expr: !DIExpression())
!5003 = distinct !DIGlobalVariable(name: "ehci_dmi_nohandoff_table", scope: !2, file: !3, line: 820, type: !5004, isLocal: true, isDefinition: true)
!5004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5005, size: 13760, elements: !5025)
!5005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5006)
!5006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !4273, line: 587, size: 2752, elements: !5007)
!5007 = !{!5008, !5013, !5014, !5024}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5006, file: !4273, line: 588, baseType: !5009, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!109, !5012}
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !5006, file: !4273, line: 589, baseType: !202, size: 64, offset: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !5006, file: !4273, line: 590, baseType: !5015, size: 2560, offset: 128)
!5015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5016, size: 2560, elements: !211)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !4273, line: 581, size: 640, elements: !5017)
!5017 = !{!5018, !5019, !5020}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5016, file: !4273, line: 582, baseType: !248, size: 7, flags: DIFlagBitField, extraData: i64 0)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !5016, file: !4273, line: 583, baseType: !248, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !5016, file: !4273, line: 584, baseType: !5021, size: 632, offset: 8)
!5021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 632, elements: !5022)
!5022 = !{!5023}
!5023 = !DISubrange(count: 79)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5006, file: !4273, line: 591, baseType: !164, size: 64, offset: 2688)
!5025 = !{!5026}
!5026 = !DISubrange(count: 5)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1173, type: !5029, isLocal: true, isDefinition: true)
!5029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 280, elements: !5030)
!5030 = !{!5031}
!5031 = !DISubrange(count: 35)
!5032 = !DIGlobalVariableExpression(var: !5033, expr: !DIExpression())
!5033 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1196, type: !4984, isLocal: true, isDefinition: true)
!5034 = !DIGlobalVariableExpression(var: !5035, expr: !DIExpression())
!5035 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1225, type: !5036, isLocal: true, isDefinition: true)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 440, elements: !5037)
!5037 = !{!5038}
!5038 = !DISubrange(count: 55)
!5039 = !DIGlobalVariableExpression(var: !5040, expr: !DIExpression())
!5040 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1240, type: !5041, isLocal: true, isDefinition: true)
!5041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 408, elements: !5042)
!5042 = !{!5043}
!5043 = !DISubrange(count: 51)
!5044 = !{!"rsp"}
!5045 = !{i32 7, !"Dwarf Version", i32 5}
!5046 = !{i32 2, !"Debug Info Version", i32 3}
!5047 = !{i32 1, !"wchar_size", i32 2}
!5048 = !{i32 8, !"cf-protection-branch", i32 1}
!5049 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5050 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5051 = !{i32 1, !"Code Model", i32 2}
!5052 = !{i32 1, !"override-stack-alignment", i32 8}
!5053 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5054 = distinct !DISubprogram(name: "sb800_prefetch", scope: !3, file: !3, line: 194, type: !5055, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5057)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{null, !261, !109}
!5057 = !{!5058, !5059, !5060, !5061, !5062}
!5058 = !DILocalVariable(name: "dev", arg: 1, scope: !5054, file: !3, line: 194, type: !261)
!5059 = !DILocalVariable(name: "on", arg: 2, scope: !5054, file: !3, line: 194, type: !109)
!5060 = !DILocalVariable(name: "misc", scope: !5054, file: !3, line: 196, type: !313)
!5061 = !DILocalVariable(name: "pdev", scope: !5054, file: !3, line: 197, type: !165)
!5062 = !DILocalVariable(name: "__mptr", scope: !5063, file: !3, line: 197, type: !164)
!5063 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 197, column: 25)
!5064 = !DILocation(line: 194, column: 36, scope: !5054)
!5065 = !DILocation(line: 194, column: 45, scope: !5054)
!5066 = !DILocation(line: 196, column: 2, scope: !5054)
!5067 = !DILocation(line: 196, column: 6, scope: !5054)
!5068 = !DILocation(line: 197, column: 2, scope: !5054)
!5069 = !DILocation(line: 197, column: 18, scope: !5054)
!5070 = !DILocation(line: 197, column: 25, scope: !5063)
!5071 = !DILocation(line: 197, column: 25, scope: !5054)
!5072 = !DILocation(line: 199, column: 23, scope: !5054)
!5073 = !DILocation(line: 199, column: 2, scope: !5054)
!5074 = !DILocation(line: 200, column: 6, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 200, column: 6)
!5076 = !DILocation(line: 200, column: 9, scope: !5075)
!5077 = !DILocation(line: 200, column: 6, scope: !5054)
!5078 = !DILocation(line: 201, column: 25, scope: !5075)
!5079 = !DILocation(line: 201, column: 37, scope: !5075)
!5080 = !DILocation(line: 201, column: 42, scope: !5075)
!5081 = !DILocation(line: 201, column: 3, scope: !5075)
!5082 = !DILocation(line: 203, column: 25, scope: !5075)
!5083 = !DILocation(line: 203, column: 37, scope: !5075)
!5084 = !DILocation(line: 203, column: 42, scope: !5075)
!5085 = !DILocation(line: 203, column: 3, scope: !5075)
!5086 = !DILocation(line: 204, column: 1, scope: !5054)
!5087 = !DISubprogram(name: "pci_read_config_word", scope: !167, file: !167, line: 1214, type: !5088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!109, !5090, !109, !5092}
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!5093 = !DISubprogram(name: "pci_write_config_word", scope: !167, file: !167, line: 1217, type: !5094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!109, !5090, !109, !313}
!5096 = distinct !DISubprogram(name: "usb_hcd_amd_remote_wakeup_quirk", scope: !3, file: !3, line: 287, type: !4740, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5097)
!5097 = !{!5098}
!5098 = !DILocalVariable(name: "pdev", arg: 1, scope: !5096, file: !3, line: 287, type: !165)
!5099 = !DILocation(line: 287, column: 53, scope: !5096)
!5100 = !DILocation(line: 290, column: 2, scope: !5096)
!5101 = !DILocation(line: 291, column: 26, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 291, column: 6)
!5103 = !DILocation(line: 291, column: 30, scope: !5102)
!5104 = !DILocation(line: 291, column: 53, scope: !5102)
!5105 = !DILocation(line: 292, column: 26, scope: !5102)
!5106 = !DILocation(line: 292, column: 30, scope: !5102)
!5107 = !DILocation(line: 291, column: 6, scope: !5096)
!5108 = !DILocation(line: 294, column: 3, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 292, column: 54)
!5110 = !DILocation(line: 296, column: 2, scope: !5096)
!5111 = !DILocation(line: 297, column: 1, scope: !5096)
!5112 = distinct !DISubprogram(name: "usb_amd_find_chipset_info", scope: !3, file: !3, line: 207, type: !1042, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5113)
!5113 = !{!5114, !5115, !5116, !5120, !5121, !5122, !5126}
!5114 = !DILocalVariable(name: "flags", scope: !5112, file: !3, line: 209, type: !206)
!5115 = !DILocalVariable(name: "info", scope: !5112, file: !3, line: 210, type: !4937)
!5116 = !DILocalVariable(name: "__dummy", scope: !5117, file: !3, line: 212, type: !206)
!5117 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 212, column: 2)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 212, column: 2)
!5119 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 212, column: 2)
!5120 = !DILocalVariable(name: "__dummy2", scope: !5117, file: !3, line: 212, type: !206)
!5121 = !DILabel(scope: !5112, name: "commit", file: !3, line: 265)
!5122 = !DILocalVariable(name: "__dummy", scope: !5123, file: !3, line: 267, type: !206)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 267, column: 2)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 267, column: 2)
!5125 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 267, column: 2)
!5126 = !DILocalVariable(name: "__dummy2", scope: !5123, file: !3, line: 267, type: !206)
!5127 = !DILocation(line: 209, column: 2, scope: !5112)
!5128 = !DILocation(line: 209, column: 16, scope: !5112)
!5129 = !DILocation(line: 210, column: 2, scope: !5112)
!5130 = !DILocation(line: 210, column: 26, scope: !5112)
!5131 = !DILocation(line: 212, column: 2, scope: !5112)
!5132 = !DILocation(line: 212, column: 2, scope: !5119)
!5133 = !DILocation(line: 212, column: 2, scope: !5117)
!5134 = !DILocation(line: 212, column: 2, scope: !5118)
!5135 = !DILocation(line: 215, column: 18, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 215, column: 6)
!5137 = !DILocation(line: 215, column: 30, scope: !5136)
!5138 = !DILocation(line: 215, column: 6, scope: !5112)
!5139 = !DILocation(line: 216, column: 26, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 215, column: 35)
!5141 = !DILocation(line: 217, column: 37, scope: !5140)
!5142 = !DILocation(line: 217, column: 3, scope: !5140)
!5143 = !DILocation(line: 218, column: 3, scope: !5140)
!5144 = !DILocation(line: 220, column: 36, scope: !5112)
!5145 = !DILocation(line: 220, column: 2, scope: !5112)
!5146 = !DILocation(line: 222, column: 7, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 222, column: 6)
!5148 = !DILocation(line: 222, column: 6, scope: !5112)
!5149 = !DILocation(line: 223, column: 3, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 222, column: 40)
!5151 = !DILocation(line: 226, column: 15, scope: !5112)
!5152 = !DILocation(line: 226, column: 23, scope: !5112)
!5153 = !DILocation(line: 226, column: 2, scope: !5112)
!5154 = !DILocation(line: 228, column: 30, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 226, column: 28)
!5156 = !DILocation(line: 228, column: 38, scope: !5155)
!5157 = !DILocation(line: 228, column: 25, scope: !5155)
!5158 = !DILocation(line: 228, column: 42, scope: !5155)
!5159 = !DILocation(line: 228, column: 8, scope: !5155)
!5160 = !DILocation(line: 228, column: 23, scope: !5155)
!5161 = !DILocation(line: 229, column: 3, scope: !5155)
!5162 = !DILocation(line: 233, column: 8, scope: !5155)
!5163 = !DILocation(line: 233, column: 23, scope: !5155)
!5164 = !DILocation(line: 234, column: 3, scope: !5155)
!5165 = !DILocation(line: 236, column: 8, scope: !5155)
!5166 = !DILocation(line: 236, column: 23, scope: !5155)
!5167 = !DILocation(line: 237, column: 3, scope: !5155)
!5168 = !DILocation(line: 240, column: 12, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 240, column: 6)
!5170 = !{i8 0, i8 2}
!5171 = !DILocation(line: 240, column: 6, scope: !5112)
!5172 = !DILocation(line: 241, column: 12, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 241, column: 7)
!5174 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 240, column: 28)
!5175 = !DILocation(line: 241, column: 7, scope: !5173)
!5176 = !DILocation(line: 241, column: 7, scope: !5174)
!5177 = !DILocation(line: 242, column: 21, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 241, column: 23)
!5179 = !DILocation(line: 242, column: 4, scope: !5178)
!5180 = !DILocation(line: 243, column: 9, scope: !5178)
!5181 = !DILocation(line: 243, column: 19, scope: !5178)
!5182 = !DILocation(line: 244, column: 3, scope: !5178)
!5183 = !DILocation(line: 245, column: 3, scope: !5174)
!5184 = !DILocation(line: 248, column: 16, scope: !5112)
!5185 = !DILocation(line: 248, column: 7, scope: !5112)
!5186 = !DILocation(line: 248, column: 14, scope: !5112)
!5187 = !DILocation(line: 249, column: 11, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 249, column: 6)
!5189 = !DILocation(line: 249, column: 6, scope: !5188)
!5190 = !DILocation(line: 249, column: 6, scope: !5112)
!5191 = !DILocation(line: 250, column: 8, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 249, column: 19)
!5193 = !DILocation(line: 250, column: 16, scope: !5192)
!5194 = !DILocation(line: 251, column: 2, scope: !5192)
!5195 = !DILocation(line: 252, column: 17, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 251, column: 9)
!5197 = !DILocation(line: 252, column: 8, scope: !5196)
!5198 = !DILocation(line: 252, column: 15, scope: !5196)
!5199 = !DILocation(line: 253, column: 12, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 253, column: 7)
!5201 = !DILocation(line: 253, column: 7, scope: !5200)
!5202 = !DILocation(line: 253, column: 7, scope: !5196)
!5203 = !DILocation(line: 254, column: 9, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 253, column: 20)
!5205 = !DILocation(line: 254, column: 17, scope: !5204)
!5206 = !DILocation(line: 255, column: 3, scope: !5204)
!5207 = !DILocation(line: 256, column: 18, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 255, column: 10)
!5209 = !DILocation(line: 256, column: 9, scope: !5208)
!5210 = !DILocation(line: 256, column: 16, scope: !5208)
!5211 = !DILocation(line: 258, column: 13, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 258, column: 8)
!5213 = !DILocation(line: 258, column: 8, scope: !5212)
!5214 = !DILocation(line: 258, column: 8, scope: !5208)
!5215 = !DILocation(line: 259, column: 10, scope: !5212)
!5216 = !DILocation(line: 259, column: 18, scope: !5212)
!5217 = !DILocation(line: 259, column: 5, scope: !5212)
!5218 = !DILocation(line: 263, column: 2, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 263, column: 2)
!5220 = !DILocation(line: 263, column: 2, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 263, column: 2)
!5222 = !DILocation(line: 263, column: 2, scope: !5112)
!5223 = !DILocation(line: 265, column: 1, scope: !5112)
!5224 = !DILocation(line: 267, column: 2, scope: !5112)
!5225 = !DILocation(line: 267, column: 2, scope: !5125)
!5226 = !DILocation(line: 267, column: 2, scope: !5123)
!5227 = !DILocation(line: 267, column: 2, scope: !5124)
!5228 = !DILocation(line: 268, column: 18, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 268, column: 6)
!5230 = !DILocation(line: 268, column: 30, scope: !5229)
!5231 = !DILocation(line: 268, column: 6, scope: !5112)
!5232 = !DILocation(line: 272, column: 26, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 268, column: 35)
!5234 = !DILocation(line: 274, column: 37, scope: !5233)
!5235 = !DILocation(line: 274, column: 3, scope: !5233)
!5236 = !DILocation(line: 276, column: 20, scope: !5233)
!5237 = !DILocation(line: 276, column: 3, scope: !5233)
!5238 = !DILocation(line: 277, column: 20, scope: !5233)
!5239 = !DILocation(line: 277, column: 3, scope: !5233)
!5240 = !DILocation(line: 279, column: 2, scope: !5233)
!5241 = !DILocation(line: 281, column: 8, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 279, column: 9)
!5243 = !DILocation(line: 281, column: 19, scope: !5242)
!5244 = !DILocation(line: 282, column: 17, scope: !5242)
!5245 = !DILocation(line: 283, column: 37, scope: !5242)
!5246 = !DILocation(line: 283, column: 3, scope: !5242)
!5247 = !DILocation(line: 285, column: 1, scope: !5112)
!5248 = distinct !DISubprogram(name: "usb_amd_hang_symptom_quirk", scope: !3, file: !3, line: 300, type: !4047, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5249)
!5249 = !{!5250}
!5250 = !DILocalVariable(name: "rev", scope: !5248, file: !3, line: 302, type: !306)
!5251 = !DILocation(line: 302, column: 2, scope: !5248)
!5252 = !DILocation(line: 302, column: 5, scope: !5248)
!5253 = !DILocation(line: 304, column: 2, scope: !5248)
!5254 = !DILocation(line: 305, column: 28, scope: !5248)
!5255 = !DILocation(line: 305, column: 6, scope: !5248)
!5256 = !DILocation(line: 307, column: 29, scope: !5248)
!5257 = !DILocation(line: 307, column: 33, scope: !5248)
!5258 = !DILocation(line: 307, column: 54, scope: !5248)
!5259 = !DILocation(line: 308, column: 25, scope: !5248)
!5260 = !DILocation(line: 308, column: 29, scope: !5248)
!5261 = !DILocation(line: 308, column: 50, scope: !5248)
!5262 = !DILocation(line: 309, column: 5, scope: !5248)
!5263 = !DILocation(line: 309, column: 9, scope: !5248)
!5264 = !DILocation(line: 309, column: 17, scope: !5248)
!5265 = !DILocation(line: 309, column: 20, scope: !5248)
!5266 = !DILocation(line: 309, column: 24, scope: !5248)
!5267 = !DILocation(line: 0, scope: !5248)
!5268 = !DILocation(line: 310, column: 1, scope: !5248)
!5269 = !DILocation(line: 307, column: 2, scope: !5248)
!5270 = distinct !DISubprogram(name: "usb_amd_prefetch_quirk", scope: !3, file: !3, line: 313, type: !4047, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5271 = !DILocation(line: 315, column: 2, scope: !5270)
!5272 = !DILocation(line: 317, column: 29, scope: !5270)
!5273 = !DILocation(line: 317, column: 33, scope: !5270)
!5274 = !DILocation(line: 317, column: 2, scope: !5270)
!5275 = distinct !DISubprogram(name: "usb_amd_quirk_pll_check", scope: !3, file: !3, line: 321, type: !4047, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5276 = !DILocation(line: 323, column: 2, scope: !5275)
!5277 = !DILocation(line: 324, column: 21, scope: !5275)
!5278 = !DILocation(line: 324, column: 2, scope: !5275)
!5279 = distinct !DISubprogram(name: "usb_amd_quirk_pll_disable", scope: !3, file: !3, line: 455, type: !1042, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5280 = !DILocation(line: 457, column: 2, scope: !5279)
!5281 = !DILocation(line: 458, column: 1, scope: !5279)
!5282 = distinct !DISubprogram(name: "usb_amd_quirk_pll", scope: !3, file: !3, line: 338, type: !2945, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5283)
!5283 = !{!5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5295}
!5284 = !DILocalVariable(name: "disable", arg: 1, scope: !5282, file: !3, line: 338, type: !109)
!5285 = !DILocalVariable(name: "addr", scope: !5282, file: !3, line: 340, type: !236)
!5286 = !DILocalVariable(name: "addr_low", scope: !5282, file: !3, line: 340, type: !236)
!5287 = !DILocalVariable(name: "addr_high", scope: !5282, file: !3, line: 340, type: !236)
!5288 = !DILocalVariable(name: "val", scope: !5282, file: !3, line: 340, type: !236)
!5289 = !DILocalVariable(name: "bit", scope: !5282, file: !3, line: 341, type: !236)
!5290 = !DILocalVariable(name: "flags", scope: !5282, file: !3, line: 342, type: !206)
!5291 = !DILocalVariable(name: "__dummy", scope: !5292, file: !3, line: 344, type: !206)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 344, column: 2)
!5293 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 344, column: 2)
!5294 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 344, column: 2)
!5295 = !DILocalVariable(name: "__dummy2", scope: !5292, file: !3, line: 344, type: !206)
!5296 = !DILocation(line: 338, column: 35, scope: !5282)
!5297 = !DILocation(line: 340, column: 2, scope: !5282)
!5298 = !DILocation(line: 340, column: 6, scope: !5282)
!5299 = !DILocation(line: 340, column: 12, scope: !5282)
!5300 = !DILocation(line: 340, column: 22, scope: !5282)
!5301 = !DILocation(line: 340, column: 33, scope: !5282)
!5302 = !DILocation(line: 341, column: 2, scope: !5282)
!5303 = !DILocation(line: 341, column: 6, scope: !5282)
!5304 = !DILocation(line: 341, column: 12, scope: !5282)
!5305 = !DILocation(line: 342, column: 2, scope: !5282)
!5306 = !DILocation(line: 342, column: 16, scope: !5282)
!5307 = !DILocation(line: 344, column: 2, scope: !5282)
!5308 = !DILocation(line: 344, column: 2, scope: !5294)
!5309 = !DILocation(line: 344, column: 2, scope: !5292)
!5310 = !DILocation(line: 344, column: 2, scope: !5293)
!5311 = !DILocation(line: 346, column: 6, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 346, column: 6)
!5313 = !DILocation(line: 346, column: 6, scope: !5282)
!5314 = !DILocation(line: 347, column: 24, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 346, column: 15)
!5316 = !DILocation(line: 348, column: 19, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 348, column: 7)
!5318 = !DILocation(line: 348, column: 29, scope: !5317)
!5319 = !DILocation(line: 348, column: 7, scope: !5315)
!5320 = !DILocation(line: 349, column: 38, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 348, column: 34)
!5322 = !DILocation(line: 349, column: 4, scope: !5321)
!5323 = !DILocation(line: 350, column: 4, scope: !5321)
!5324 = !DILocation(line: 352, column: 2, scope: !5315)
!5325 = !DILocation(line: 353, column: 24, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 352, column: 9)
!5327 = !DILocation(line: 354, column: 19, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 354, column: 7)
!5329 = !DILocation(line: 354, column: 29, scope: !5328)
!5330 = !DILocation(line: 354, column: 7, scope: !5326)
!5331 = !DILocation(line: 355, column: 38, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 354, column: 34)
!5333 = !DILocation(line: 355, column: 4, scope: !5332)
!5334 = !DILocation(line: 356, column: 4, scope: !5332)
!5335 = !DILocation(line: 360, column: 26, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 360, column: 6)
!5337 = !DILocation(line: 360, column: 30, scope: !5336)
!5338 = !DILocation(line: 360, column: 51, scope: !5336)
!5339 = !DILocation(line: 361, column: 24, scope: !5336)
!5340 = !DILocation(line: 361, column: 28, scope: !5336)
!5341 = !DILocation(line: 361, column: 51, scope: !5336)
!5342 = !DILocation(line: 362, column: 24, scope: !5336)
!5343 = !DILocation(line: 362, column: 28, scope: !5336)
!5344 = !DILocation(line: 360, column: 6, scope: !5282)
!5345 = !DILocation(line: 363, column: 3, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 362, column: 51)
!5347 = !DILocation(line: 364, column: 14, scope: !5346)
!5348 = !DILocation(line: 364, column: 12, scope: !5346)
!5349 = !DILocation(line: 365, column: 3, scope: !5346)
!5350 = !DILocation(line: 366, column: 15, scope: !5346)
!5351 = !DILocation(line: 366, column: 13, scope: !5346)
!5352 = !DILocation(line: 367, column: 10, scope: !5346)
!5353 = !DILocation(line: 367, column: 20, scope: !5346)
!5354 = !DILocation(line: 367, column: 27, scope: !5346)
!5355 = !DILocation(line: 367, column: 25, scope: !5346)
!5356 = !DILocation(line: 367, column: 8, scope: !5346)
!5357 = !DILocation(line: 369, column: 16, scope: !5346)
!5358 = !DILocation(line: 369, column: 3, scope: !5346)
!5359 = !DILocation(line: 370, column: 16, scope: !5346)
!5360 = !DILocation(line: 370, column: 3, scope: !5346)
!5361 = !DILocation(line: 371, column: 16, scope: !5346)
!5362 = !DILocation(line: 371, column: 3, scope: !5346)
!5363 = !DILocation(line: 372, column: 15, scope: !5346)
!5364 = !DILocation(line: 372, column: 9, scope: !5346)
!5365 = !DILocation(line: 372, column: 7, scope: !5346)
!5366 = !DILocation(line: 373, column: 2, scope: !5346)
!5367 = !DILocation(line: 373, column: 33, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 373, column: 13)
!5369 = !DILocation(line: 373, column: 37, scope: !5368)
!5370 = !DILocation(line: 373, column: 58, scope: !5368)
!5371 = !DILocation(line: 374, column: 24, scope: !5368)
!5372 = !DILocation(line: 374, column: 4, scope: !5368)
!5373 = !DILocation(line: 374, column: 28, scope: !5368)
!5374 = !DILocation(line: 373, column: 13, scope: !5336)
!5375 = !DILocation(line: 375, column: 37, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 374, column: 37)
!5377 = !DILocation(line: 375, column: 3, scope: !5376)
!5378 = !DILocation(line: 377, column: 18, scope: !5376)
!5379 = !DILocation(line: 377, column: 3, scope: !5376)
!5380 = !DILocation(line: 378, column: 14, scope: !5376)
!5381 = !DILocation(line: 378, column: 3, scope: !5376)
!5382 = !DILocation(line: 379, column: 18, scope: !5376)
!5383 = !DILocation(line: 379, column: 3, scope: !5376)
!5384 = !DILocation(line: 380, column: 13, scope: !5376)
!5385 = !DILocation(line: 380, column: 9, scope: !5376)
!5386 = !DILocation(line: 380, column: 7, scope: !5376)
!5387 = !DILocation(line: 381, column: 2, scope: !5376)
!5388 = !DILocation(line: 382, column: 37, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 381, column: 9)
!5390 = !DILocation(line: 382, column: 3, scope: !5389)
!5391 = !DILocation(line: 383, column: 3, scope: !5389)
!5392 = !DILocation(line: 386, column: 6, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 386, column: 6)
!5394 = !DILocation(line: 386, column: 6, scope: !5282)
!5395 = !DILocation(line: 387, column: 7, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 386, column: 15)
!5397 = !DILocation(line: 388, column: 7, scope: !5396)
!5398 = !DILocation(line: 389, column: 2, scope: !5396)
!5399 = !DILocation(line: 390, column: 7, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 389, column: 9)
!5401 = !DILocation(line: 391, column: 7, scope: !5400)
!5402 = !DILocation(line: 393, column: 9, scope: !5282)
!5403 = !DILocation(line: 393, column: 14, scope: !5282)
!5404 = !DILocation(line: 393, column: 2, scope: !5282)
!5405 = !DILocation(line: 395, column: 19, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 395, column: 6)
!5407 = !DILocation(line: 395, column: 7, scope: !5406)
!5408 = !DILocation(line: 395, column: 6, scope: !5282)
!5409 = !DILocation(line: 396, column: 37, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 395, column: 27)
!5411 = !DILocation(line: 396, column: 3, scope: !5410)
!5412 = !DILocation(line: 397, column: 3, scope: !5410)
!5413 = !DILocation(line: 400, column: 18, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 400, column: 6)
!5415 = !DILocation(line: 400, column: 26, scope: !5414)
!5416 = !DILocation(line: 400, column: 31, scope: !5414)
!5417 = !DILocation(line: 400, column: 46, scope: !5414)
!5418 = !DILocation(line: 400, column: 54, scope: !5414)
!5419 = !DILocation(line: 400, column: 6, scope: !5282)
!5420 = !DILocation(line: 401, column: 8, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 400, column: 60)
!5422 = !DILocation(line: 402, column: 38, scope: !5421)
!5423 = !DILocation(line: 403, column: 25, scope: !5421)
!5424 = !DILocation(line: 402, column: 3, scope: !5421)
!5425 = !DILocation(line: 404, column: 37, scope: !5421)
!5426 = !DILocation(line: 404, column: 3, scope: !5421)
!5427 = !DILocation(line: 407, column: 7, scope: !5421)
!5428 = !DILocation(line: 408, column: 10, scope: !5421)
!5429 = !DILocation(line: 408, column: 17, scope: !5421)
!5430 = !DILocation(line: 408, column: 21, scope: !5421)
!5431 = !DILocation(line: 408, column: 14, scope: !5421)
!5432 = !DILocation(line: 408, column: 30, scope: !5421)
!5433 = !DILocation(line: 408, column: 34, scope: !5421)
!5434 = !DILocation(line: 408, column: 27, scope: !5421)
!5435 = !DILocation(line: 408, column: 7, scope: !5421)
!5436 = !DILocation(line: 409, column: 13, scope: !5421)
!5437 = !DILocation(line: 409, column: 12, scope: !5421)
!5438 = !DILocation(line: 409, column: 18, scope: !5421)
!5439 = !DILocation(line: 409, column: 29, scope: !5421)
!5440 = !DILocation(line: 409, column: 28, scope: !5421)
!5441 = !DILocation(line: 409, column: 34, scope: !5421)
!5442 = !DILocation(line: 409, column: 24, scope: !5421)
!5443 = !DILocation(line: 409, column: 7, scope: !5421)
!5444 = !DILocation(line: 410, column: 38, scope: !5421)
!5445 = !DILocation(line: 411, column: 25, scope: !5421)
!5446 = !DILocation(line: 410, column: 3, scope: !5421)
!5447 = !DILocation(line: 413, column: 8, scope: !5421)
!5448 = !DILocation(line: 414, column: 38, scope: !5421)
!5449 = !DILocation(line: 415, column: 25, scope: !5421)
!5450 = !DILocation(line: 414, column: 3, scope: !5421)
!5451 = !DILocation(line: 416, column: 37, scope: !5421)
!5452 = !DILocation(line: 416, column: 3, scope: !5421)
!5453 = !DILocation(line: 418, column: 7, scope: !5421)
!5454 = !DILocation(line: 419, column: 10, scope: !5421)
!5455 = !DILocation(line: 419, column: 14, scope: !5421)
!5456 = !DILocation(line: 419, column: 7, scope: !5421)
!5457 = !DILocation(line: 421, column: 38, scope: !5421)
!5458 = !DILocation(line: 422, column: 25, scope: !5421)
!5459 = !DILocation(line: 421, column: 3, scope: !5421)
!5460 = !DILocation(line: 423, column: 2, scope: !5421)
!5461 = !DILocation(line: 423, column: 25, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 423, column: 13)
!5463 = !DILocation(line: 423, column: 33, scope: !5462)
!5464 = !DILocation(line: 423, column: 13, scope: !5414)
!5465 = !DILocation(line: 424, column: 8, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 423, column: 39)
!5467 = !DILocation(line: 425, column: 38, scope: !5466)
!5468 = !DILocation(line: 426, column: 25, scope: !5466)
!5469 = !DILocation(line: 425, column: 3, scope: !5466)
!5470 = !DILocation(line: 427, column: 37, scope: !5466)
!5471 = !DILocation(line: 427, column: 3, scope: !5466)
!5472 = !DILocation(line: 429, column: 7, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 429, column: 7)
!5474 = !DILocation(line: 429, column: 7, scope: !5466)
!5475 = !DILocation(line: 430, column: 8, scope: !5473)
!5476 = !DILocation(line: 430, column: 4, scope: !5473)
!5477 = !DILocation(line: 432, column: 8, scope: !5473)
!5478 = !DILocation(line: 434, column: 38, scope: !5466)
!5479 = !DILocation(line: 435, column: 25, scope: !5466)
!5480 = !DILocation(line: 434, column: 3, scope: !5466)
!5481 = !DILocation(line: 437, column: 8, scope: !5466)
!5482 = !DILocation(line: 438, column: 38, scope: !5466)
!5483 = !DILocation(line: 439, column: 25, scope: !5466)
!5484 = !DILocation(line: 438, column: 3, scope: !5466)
!5485 = !DILocation(line: 440, column: 37, scope: !5466)
!5486 = !DILocation(line: 440, column: 3, scope: !5466)
!5487 = !DILocation(line: 442, column: 7, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 442, column: 7)
!5489 = !DILocation(line: 442, column: 7, scope: !5466)
!5490 = !DILocation(line: 443, column: 8, scope: !5488)
!5491 = !DILocation(line: 443, column: 4, scope: !5488)
!5492 = !DILocation(line: 445, column: 8, scope: !5488)
!5493 = !DILocation(line: 447, column: 38, scope: !5466)
!5494 = !DILocation(line: 448, column: 25, scope: !5466)
!5495 = !DILocation(line: 447, column: 3, scope: !5466)
!5496 = !DILocation(line: 449, column: 2, scope: !5466)
!5497 = !DILocation(line: 451, column: 36, scope: !5282)
!5498 = !DILocation(line: 451, column: 2, scope: !5282)
!5499 = !DILocation(line: 452, column: 2, scope: !5282)
!5500 = !DILocation(line: 453, column: 1, scope: !5282)
!5501 = distinct !DISubprogram(name: "usb_asmedia_modifyflowcontrol", scope: !3, file: !3, line: 485, type: !4732, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5502)
!5502 = !{!5503}
!5503 = !DILocalVariable(name: "pdev", arg: 1, scope: !5501, file: !3, line: 485, type: !165)
!5504 = !DILocation(line: 485, column: 52, scope: !5501)
!5505 = !DILocation(line: 487, column: 29, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 487, column: 6)
!5507 = !DILocation(line: 487, column: 6, scope: !5506)
!5508 = !DILocation(line: 487, column: 35, scope: !5506)
!5509 = !DILocation(line: 487, column: 6, scope: !5501)
!5510 = !DILocation(line: 488, column: 3, scope: !5506)
!5511 = !DILocation(line: 491, column: 25, scope: !5501)
!5512 = !DILocation(line: 491, column: 2, scope: !5501)
!5513 = !DILocation(line: 492, column: 25, scope: !5501)
!5514 = !DILocation(line: 492, column: 2, scope: !5501)
!5515 = !DILocation(line: 493, column: 24, scope: !5501)
!5516 = !DILocation(line: 493, column: 2, scope: !5501)
!5517 = !DILocation(line: 495, column: 29, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 495, column: 6)
!5519 = !DILocation(line: 495, column: 6, scope: !5518)
!5520 = !DILocation(line: 495, column: 35, scope: !5518)
!5521 = !DILocation(line: 495, column: 6, scope: !5501)
!5522 = !DILocation(line: 496, column: 3, scope: !5518)
!5523 = !DILocation(line: 499, column: 25, scope: !5501)
!5524 = !DILocation(line: 499, column: 2, scope: !5501)
!5525 = !DILocation(line: 500, column: 25, scope: !5501)
!5526 = !DILocation(line: 500, column: 2, scope: !5501)
!5527 = !DILocation(line: 501, column: 24, scope: !5501)
!5528 = !DILocation(line: 501, column: 2, scope: !5501)
!5529 = !DILocation(line: 502, column: 1, scope: !5501)
!5530 = distinct !DISubprogram(name: "usb_asmedia_wait_write", scope: !3, file: !3, line: 461, type: !4740, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5531)
!5531 = !{!5532, !5533, !5534}
!5532 = !DILocalVariable(name: "pdev", arg: 1, scope: !5530, file: !3, line: 461, type: !165)
!5533 = !DILocalVariable(name: "retry_count", scope: !5530, file: !3, line: 463, type: !206)
!5534 = !DILocalVariable(name: "value", scope: !5530, file: !3, line: 464, type: !248)
!5535 = !DILocation(line: 461, column: 51, scope: !5530)
!5536 = !DILocation(line: 463, column: 2, scope: !5530)
!5537 = !DILocation(line: 463, column: 16, scope: !5530)
!5538 = !DILocation(line: 464, column: 2, scope: !5530)
!5539 = !DILocation(line: 464, column: 16, scope: !5530)
!5540 = !DILocation(line: 466, column: 19, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 466, column: 2)
!5542 = !DILocation(line: 466, column: 7, scope: !5541)
!5543 = !DILocation(line: 466, column: 27, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 466, column: 2)
!5545 = !DILocation(line: 466, column: 39, scope: !5544)
!5546 = !DILocation(line: 466, column: 2, scope: !5541)
!5547 = !DILocation(line: 468, column: 24, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 466, column: 59)
!5549 = !DILocation(line: 468, column: 3, scope: !5548)
!5550 = !DILocation(line: 470, column: 7, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 470, column: 7)
!5552 = !DILocation(line: 470, column: 13, scope: !5551)
!5553 = !DILocation(line: 470, column: 7, scope: !5548)
!5554 = !DILocation(line: 471, column: 4, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 471, column: 4)
!5556 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 470, column: 22)
!5557 = !DILocation(line: 471, column: 4, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 471, column: 4)
!5559 = !DILocation(line: 472, column: 4, scope: !5556)
!5560 = !DILocation(line: 475, column: 8, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 475, column: 7)
!5562 = !DILocation(line: 475, column: 14, scope: !5561)
!5563 = !DILocation(line: 475, column: 40, scope: !5561)
!5564 = !DILocation(line: 475, column: 7, scope: !5548)
!5565 = !DILocation(line: 476, column: 4, scope: !5561)
!5566 = !DILocation(line: 478, column: 3, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 478, column: 3)
!5568 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 478, column: 3)
!5569 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 478, column: 3)
!5570 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 478, column: 3)
!5571 = !DILocation(line: 479, column: 2, scope: !5548)
!5572 = !DILocation(line: 466, column: 44, scope: !5544)
!5573 = !DILocation(line: 466, column: 2, scope: !5544)
!5574 = distinct !{!5574, !5546, !5575, !5576, !5577}
!5575 = !DILocation(line: 479, column: 2, scope: !5541)
!5576 = !{!"llvm.loop.mustprogress"}
!5577 = !{!"llvm.loop.unroll.disable"}
!5578 = !DILocation(line: 481, column: 2, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 481, column: 2)
!5580 = !DILocation(line: 481, column: 2, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 481, column: 2)
!5582 = !DILocation(line: 482, column: 2, scope: !5530)
!5583 = !DILocation(line: 483, column: 1, scope: !5530)
!5584 = !DISubprogram(name: "pci_write_config_dword", scope: !167, file: !167, line: 1218, type: !5585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5585 = !DISubroutineType(types: !5586)
!5586 = !{!109, !5090, !109, !236}
!5587 = !DISubprogram(name: "pci_write_config_byte", scope: !167, file: !167, line: 1216, type: !5588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!109, !5090, !109, !306}
!5590 = distinct !DISubprogram(name: "usb_amd_quirk_pll_enable", scope: !3, file: !3, line: 505, type: !1042, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5591 = !DILocation(line: 507, column: 2, scope: !5590)
!5592 = !DILocation(line: 508, column: 1, scope: !5590)
!5593 = distinct !DISubprogram(name: "usb_amd_dev_put", scope: !3, file: !3, line: 511, type: !1042, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5594)
!5594 = !{!5595, !5596, !5597, !5598, !5602}
!5595 = !DILocalVariable(name: "nb", scope: !5593, file: !3, line: 513, type: !165)
!5596 = !DILocalVariable(name: "smbus", scope: !5593, file: !3, line: 513, type: !165)
!5597 = !DILocalVariable(name: "flags", scope: !5593, file: !3, line: 514, type: !206)
!5598 = !DILocalVariable(name: "__dummy", scope: !5599, file: !3, line: 516, type: !206)
!5599 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 516, column: 2)
!5600 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 516, column: 2)
!5601 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 516, column: 2)
!5602 = !DILocalVariable(name: "__dummy2", scope: !5599, file: !3, line: 516, type: !206)
!5603 = !DILocation(line: 513, column: 2, scope: !5593)
!5604 = !DILocation(line: 513, column: 18, scope: !5593)
!5605 = !DILocation(line: 513, column: 23, scope: !5593)
!5606 = !DILocation(line: 514, column: 2, scope: !5593)
!5607 = !DILocation(line: 514, column: 16, scope: !5593)
!5608 = !DILocation(line: 516, column: 2, scope: !5593)
!5609 = !DILocation(line: 516, column: 2, scope: !5601)
!5610 = !DILocation(line: 516, column: 2, scope: !5599)
!5611 = !DILocation(line: 516, column: 2, scope: !5600)
!5612 = !DILocation(line: 518, column: 25, scope: !5593)
!5613 = !DILocation(line: 519, column: 18, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 519, column: 6)
!5615 = !DILocation(line: 519, column: 30, scope: !5614)
!5616 = !DILocation(line: 519, column: 6, scope: !5593)
!5617 = !DILocation(line: 520, column: 37, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 519, column: 35)
!5619 = !DILocation(line: 520, column: 3, scope: !5618)
!5620 = !DILocation(line: 521, column: 3, scope: !5618)
!5621 = !DILocation(line: 525, column: 22, scope: !5593)
!5622 = !DILocation(line: 525, column: 8, scope: !5593)
!5623 = !DILocation(line: 526, column: 22, scope: !5593)
!5624 = !DILocation(line: 526, column: 8, scope: !5593)
!5625 = !DILocation(line: 528, column: 21, scope: !5593)
!5626 = !DILocation(line: 529, column: 24, scope: !5593)
!5627 = !DILocation(line: 530, column: 22, scope: !5593)
!5628 = !DILocation(line: 531, column: 2, scope: !5593)
!5629 = !DILocation(line: 532, column: 24, scope: !5593)
!5630 = !DILocation(line: 533, column: 29, scope: !5593)
!5631 = !DILocation(line: 535, column: 36, scope: !5593)
!5632 = !DILocation(line: 535, column: 2, scope: !5593)
!5633 = !DILocation(line: 537, column: 14, scope: !5593)
!5634 = !DILocation(line: 537, column: 2, scope: !5593)
!5635 = !DILocation(line: 538, column: 14, scope: !5593)
!5636 = !DILocation(line: 538, column: 2, scope: !5593)
!5637 = !DILocation(line: 539, column: 1, scope: !5593)
!5638 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5639, file: !5639, line: 32, type: !5640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5639 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!206, !5642}
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!5643 = distinct !DISubprogram(name: "spinlock_check", scope: !5644, file: !5644, line: 324, type: !5645, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5647)
!5644 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5645 = !DISubroutineType(types: !5646)
!5646 = !{!5642, !2362}
!5647 = !{!5648}
!5648 = !DILocalVariable(name: "lock", arg: 1, scope: !5643, file: !5644, line: 324, type: !2362)
!5649 = !DILocation(line: 324, column: 67, scope: !5643)
!5650 = !DILocation(line: 326, column: 10, scope: !5643)
!5651 = !DILocation(line: 326, column: 16, scope: !5643)
!5652 = !DILocation(line: 326, column: 2, scope: !5643)
!5653 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5644, file: !5644, line: 404, type: !5654, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5656)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{null, !2362, !206}
!5656 = !{!5657, !5658, !5659, !5662}
!5657 = !DILocalVariable(name: "lock", arg: 1, scope: !5653, file: !5644, line: 404, type: !2362)
!5658 = !DILocalVariable(name: "flags", arg: 2, scope: !5653, file: !5644, line: 404, type: !206)
!5659 = !DILocalVariable(name: "__dummy", scope: !5660, file: !5644, line: 406, type: !206)
!5660 = distinct !DILexicalBlock(scope: !5661, file: !5644, line: 406, column: 2)
!5661 = distinct !DILexicalBlock(scope: !5653, file: !5644, line: 406, column: 2)
!5662 = !DILocalVariable(name: "__dummy2", scope: !5660, file: !5644, line: 406, type: !206)
!5663 = !DILocation(line: 404, column: 64, scope: !5653)
!5664 = !DILocation(line: 404, column: 84, scope: !5653)
!5665 = !DILocation(line: 406, column: 2, scope: !5653)
!5666 = !DILocation(line: 406, column: 2, scope: !5660)
!5667 = !DILocation(line: 406, column: 2, scope: !5661)
!5668 = !DILocation(line: 407, column: 1, scope: !5653)
!5669 = !DISubprogram(name: "pci_dev_put", scope: !167, file: !167, line: 1148, type: !4732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5670 = distinct !DISubprogram(name: "usb_amd_pt_check_port", scope: !3, file: !3, line: 548, type: !5671, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5673)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!759, !261, !109}
!5673 = !{!5674, !5675, !5676, !5677, !5678, !5679, !5680}
!5674 = !DILocalVariable(name: "device", arg: 1, scope: !5670, file: !3, line: 548, type: !261)
!5675 = !DILocalVariable(name: "port", arg: 2, scope: !5670, file: !3, line: 548, type: !109)
!5676 = !DILocalVariable(name: "value", scope: !5670, file: !3, line: 550, type: !248)
!5677 = !DILocalVariable(name: "port_shift", scope: !5670, file: !3, line: 550, type: !248)
!5678 = !DILocalVariable(name: "pdev", scope: !5670, file: !3, line: 551, type: !165)
!5679 = !DILocalVariable(name: "reg", scope: !5670, file: !3, line: 552, type: !313)
!5680 = !DILocalVariable(name: "__mptr", scope: !5681, file: !3, line: 554, type: !164)
!5681 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 554, column: 9)
!5682 = !DILocation(line: 548, column: 43, scope: !5670)
!5683 = !DILocation(line: 548, column: 55, scope: !5670)
!5684 = !DILocation(line: 550, column: 2, scope: !5670)
!5685 = !DILocation(line: 550, column: 16, scope: !5670)
!5686 = !DILocation(line: 550, column: 23, scope: !5670)
!5687 = !DILocation(line: 551, column: 2, scope: !5670)
!5688 = !DILocation(line: 551, column: 18, scope: !5670)
!5689 = !DILocation(line: 552, column: 2, scope: !5670)
!5690 = !DILocation(line: 552, column: 6, scope: !5670)
!5691 = !DILocation(line: 554, column: 9, scope: !5681)
!5692 = !DILocation(line: 554, column: 9, scope: !5670)
!5693 = !DILocation(line: 554, column: 7, scope: !5670)
!5694 = !DILocation(line: 555, column: 24, scope: !5670)
!5695 = !DILocation(line: 555, column: 2, scope: !5670)
!5696 = !DILocation(line: 557, column: 23, scope: !5670)
!5697 = !DILocation(line: 557, column: 2, scope: !5670)
!5698 = !DILocation(line: 558, column: 6, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 558, column: 6)
!5700 = !DILocation(line: 558, column: 12, scope: !5699)
!5701 = !DILocation(line: 558, column: 6, scope: !5670)
!5702 = !DILocation(line: 559, column: 3, scope: !5699)
!5703 = !DILocation(line: 561, column: 24, scope: !5670)
!5704 = !DILocation(line: 561, column: 2, scope: !5670)
!5705 = !DILocation(line: 563, column: 23, scope: !5670)
!5706 = !DILocation(line: 563, column: 2, scope: !5670)
!5707 = !DILocation(line: 564, column: 6, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 564, column: 6)
!5709 = !DILocation(line: 564, column: 12, scope: !5708)
!5710 = !DILocation(line: 564, column: 6, scope: !5670)
!5711 = !DILocation(line: 565, column: 3, scope: !5708)
!5712 = !DILocation(line: 567, column: 24, scope: !5670)
!5713 = !DILocation(line: 567, column: 2, scope: !5670)
!5714 = !DILocation(line: 569, column: 23, scope: !5670)
!5715 = !DILocation(line: 569, column: 2, scope: !5670)
!5716 = !DILocation(line: 570, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 570, column: 6)
!5718 = !DILocation(line: 570, column: 12, scope: !5717)
!5719 = !DILocation(line: 570, column: 6, scope: !5670)
!5720 = !DILocation(line: 571, column: 3, scope: !5717)
!5721 = !DILocation(line: 573, column: 24, scope: !5670)
!5722 = !DILocation(line: 573, column: 2, scope: !5670)
!5723 = !DILocation(line: 575, column: 23, scope: !5670)
!5724 = !DILocation(line: 575, column: 2, scope: !5670)
!5725 = !DILocation(line: 576, column: 6, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 576, column: 6)
!5727 = !DILocation(line: 576, column: 12, scope: !5726)
!5728 = !DILocation(line: 576, column: 6, scope: !5670)
!5729 = !DILocation(line: 577, column: 3, scope: !5726)
!5730 = !DILocation(line: 580, column: 10, scope: !5670)
!5731 = !DILocation(line: 580, column: 16, scope: !5670)
!5732 = !DILocation(line: 580, column: 2, scope: !5670)
!5733 = !DILocation(line: 588, column: 7, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 588, column: 7)
!5735 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 580, column: 24)
!5736 = !DILocation(line: 588, column: 12, scope: !5734)
!5737 = !DILocation(line: 588, column: 7, scope: !5735)
!5738 = !DILocation(line: 589, column: 8, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 588, column: 17)
!5740 = !DILocation(line: 590, column: 17, scope: !5739)
!5741 = !DILocation(line: 590, column: 22, scope: !5739)
!5742 = !DILocation(line: 590, column: 15, scope: !5739)
!5743 = !DILocation(line: 591, column: 3, scope: !5739)
!5744 = !DILocation(line: 592, column: 8, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 591, column: 10)
!5746 = !DILocation(line: 593, column: 17, scope: !5745)
!5747 = !DILocation(line: 593, column: 22, scope: !5745)
!5748 = !DILocation(line: 593, column: 15, scope: !5745)
!5749 = !DILocation(line: 595, column: 3, scope: !5735)
!5750 = !DILocation(line: 602, column: 7, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 602, column: 7)
!5752 = !DILocation(line: 602, column: 12, scope: !5751)
!5753 = !DILocation(line: 602, column: 7, scope: !5735)
!5754 = !DILocation(line: 603, column: 8, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 602, column: 17)
!5756 = !DILocation(line: 604, column: 17, scope: !5755)
!5757 = !DILocation(line: 604, column: 22, scope: !5755)
!5758 = !DILocation(line: 604, column: 15, scope: !5755)
!5759 = !DILocation(line: 605, column: 3, scope: !5755)
!5760 = !DILocation(line: 606, column: 8, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 605, column: 10)
!5762 = !DILocation(line: 607, column: 17, scope: !5761)
!5763 = !DILocation(line: 607, column: 22, scope: !5761)
!5764 = !DILocation(line: 607, column: 15, scope: !5761)
!5765 = !DILocation(line: 609, column: 3, scope: !5735)
!5766 = !DILocation(line: 616, column: 7, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 616, column: 7)
!5768 = !DILocation(line: 616, column: 12, scope: !5767)
!5769 = !DILocation(line: 616, column: 7, scope: !5735)
!5770 = !DILocation(line: 617, column: 8, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 616, column: 17)
!5772 = !DILocation(line: 618, column: 17, scope: !5771)
!5773 = !DILocation(line: 618, column: 22, scope: !5771)
!5774 = !DILocation(line: 618, column: 15, scope: !5771)
!5775 = !DILocation(line: 619, column: 3, scope: !5771)
!5776 = !DILocation(line: 620, column: 8, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 619, column: 10)
!5778 = !DILocation(line: 621, column: 17, scope: !5777)
!5779 = !DILocation(line: 621, column: 22, scope: !5777)
!5780 = !DILocation(line: 621, column: 15, scope: !5777)
!5781 = !DILocation(line: 623, column: 3, scope: !5735)
!5782 = !DILocation(line: 625, column: 3, scope: !5735)
!5783 = !DILocation(line: 627, column: 24, scope: !5670)
!5784 = !DILocation(line: 627, column: 44, scope: !5670)
!5785 = !DILocation(line: 627, column: 2, scope: !5670)
!5786 = !DILocation(line: 628, column: 23, scope: !5670)
!5787 = !DILocation(line: 628, column: 2, scope: !5670)
!5788 = !DILocation(line: 630, column: 11, scope: !5670)
!5789 = !DILocation(line: 630, column: 19, scope: !5670)
!5790 = !DILocation(line: 630, column: 17, scope: !5670)
!5791 = !DILocation(line: 630, column: 9, scope: !5670)
!5792 = !DILocation(line: 630, column: 2, scope: !5670)
!5793 = !DILocation(line: 631, column: 1, scope: !5670)
!5794 = !DISubprogram(name: "pci_read_config_byte", scope: !167, file: !167, line: 1213, type: !5795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5795 = !DISubroutineType(types: !5796)
!5796 = !{!109, !5090, !109, !5797}
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!5798 = distinct !DISubprogram(name: "uhci_reset_hc", scope: !3, file: !3, line: 638, type: !5799, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5801)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{null, !165, !206}
!5801 = !{!5802, !5803}
!5802 = !DILocalVariable(name: "pdev", arg: 1, scope: !5798, file: !3, line: 638, type: !165)
!5803 = !DILocalVariable(name: "base", arg: 2, scope: !5798, file: !3, line: 638, type: !206)
!5804 = !DILocation(line: 638, column: 36, scope: !5798)
!5805 = !DILocation(line: 638, column: 56, scope: !5798)
!5806 = !DILocation(line: 643, column: 24, scope: !5798)
!5807 = !DILocation(line: 643, column: 2, scope: !5798)
!5808 = !DILocation(line: 650, column: 28, scope: !5798)
!5809 = !DILocation(line: 650, column: 33, scope: !5798)
!5810 = !DILocation(line: 650, column: 2, scope: !5798)
!5811 = !DILocation(line: 651, column: 2, scope: !5798)
!5812 = !DILocation(line: 651, column: 2, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 651, column: 2)
!5814 = !DILocation(line: 651, column: 2, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 651, column: 2)
!5816 = !{i64 2155798132}
!5817 = !DILocation(line: 652, column: 2, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 652, column: 2)
!5819 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 652, column: 2)
!5820 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 652, column: 2)
!5821 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 652, column: 2)
!5822 = !DILocation(line: 653, column: 10, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 653, column: 6)
!5824 = !DILocation(line: 653, column: 15, scope: !5823)
!5825 = !DILocation(line: 653, column: 6, scope: !5823)
!5826 = !DILocation(line: 653, column: 30, scope: !5823)
!5827 = !DILocation(line: 653, column: 6, scope: !5798)
!5828 = !DILocation(line: 654, column: 3, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 654, column: 3)
!5830 = !DILocation(line: 654, column: 3, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 654, column: 3)
!5832 = !DILocation(line: 654, column: 3, scope: !5823)
!5833 = !DILocation(line: 659, column: 10, scope: !5798)
!5834 = !DILocation(line: 659, column: 15, scope: !5798)
!5835 = !DILocation(line: 659, column: 2, scope: !5798)
!5836 = !DILocation(line: 660, column: 10, scope: !5798)
!5837 = !DILocation(line: 660, column: 15, scope: !5798)
!5838 = !DILocation(line: 660, column: 2, scope: !5798)
!5839 = !DILocation(line: 661, column: 1, scope: !5798)
!5840 = distinct !DISubprogram(name: "__outw", scope: !5841, file: !5841, line: 23, type: !5842, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5844)
!5841 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!5842 = !DISubroutineType(types: !5843)
!5843 = !{null, !313, !313}
!5844 = !{!5845, !5846}
!5845 = !DILocalVariable(name: "value", arg: 1, scope: !5840, file: !5841, line: 23, type: !313)
!5846 = !DILocalVariable(name: "port", arg: 2, scope: !5840, file: !5841, line: 23, type: !313)
!5847 = !DILocation(line: 23, column: 1, scope: !5840)
!5848 = !{i64 2152806280}
!5849 = !DISubprogram(name: "__const_udelay", scope: !5850, file: !5850, line: 11, type: !5851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5850 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!5851 = !DISubroutineType(types: !5852)
!5852 = !{null, !206}
!5853 = distinct !DISubprogram(name: "__inw", scope: !5841, file: !5841, line: 23, type: !5854, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5856)
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!313, !313}
!5856 = !{!5857, !5858}
!5857 = !DILocalVariable(name: "port", arg: 1, scope: !5853, file: !5841, line: 23, type: !313)
!5858 = !DILocalVariable(name: "value", scope: !5853, file: !5841, line: 23, type: !313)
!5859 = !DILocation(line: 23, column: 1, scope: !5853)
!5860 = !{i64 2152806476}
!5861 = !DISubprogram(name: "_dev_warn", scope: !5862, file: !5862, line: 52, type: !5863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5862 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5863 = !DISubroutineType(types: !5864)
!5864 = !{null, !4203, !202, null}
!5865 = distinct !DISubprogram(name: "uhci_check_and_reset_hc", scope: !3, file: !3, line: 670, type: !5866, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5868)
!5866 = !DISubroutineType(types: !5867)
!5867 = !{!109, !165, !206}
!5868 = !{!5869, !5870, !5871, !5872, !5873, !5874}
!5869 = !DILocalVariable(name: "pdev", arg: 1, scope: !5865, file: !3, line: 670, type: !165)
!5870 = !DILocalVariable(name: "base", arg: 2, scope: !5865, file: !3, line: 670, type: !206)
!5871 = !DILocalVariable(name: "legsup", scope: !5865, file: !3, line: 672, type: !313)
!5872 = !DILocalVariable(name: "cmd", scope: !5865, file: !3, line: 673, type: !7)
!5873 = !DILocalVariable(name: "intr", scope: !5865, file: !3, line: 673, type: !7)
!5874 = !DILabel(scope: !5865, name: "reset_needed", file: !3, line: 708)
!5875 = !DILocation(line: 670, column: 45, scope: !5865)
!5876 = !DILocation(line: 670, column: 65, scope: !5865)
!5877 = !DILocation(line: 672, column: 2, scope: !5865)
!5878 = !DILocation(line: 672, column: 6, scope: !5865)
!5879 = !DILocation(line: 673, column: 2, scope: !5865)
!5880 = !DILocation(line: 673, column: 15, scope: !5865)
!5881 = !DILocation(line: 673, column: 20, scope: !5865)
!5882 = !DILocation(line: 685, column: 23, scope: !5865)
!5883 = !DILocation(line: 685, column: 2, scope: !5865)
!5884 = !DILocation(line: 686, column: 6, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 686, column: 6)
!5886 = !DILocation(line: 686, column: 13, scope: !5885)
!5887 = !DILocation(line: 686, column: 6, scope: !5865)
!5888 = !DILocation(line: 689, column: 3, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 686, column: 58)
!5890 = !DILocation(line: 692, column: 12, scope: !5865)
!5891 = !DILocation(line: 692, column: 17, scope: !5865)
!5892 = !DILocation(line: 692, column: 8, scope: !5865)
!5893 = !DILocation(line: 692, column: 6, scope: !5865)
!5894 = !DILocation(line: 693, column: 7, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 693, column: 6)
!5896 = !DILocation(line: 693, column: 11, scope: !5895)
!5897 = !DILocation(line: 693, column: 30, scope: !5895)
!5898 = !DILocation(line: 693, column: 35, scope: !5895)
!5899 = !DILocation(line: 693, column: 39, scope: !5895)
!5900 = !DILocation(line: 693, column: 64, scope: !5895)
!5901 = !DILocation(line: 694, column: 6, scope: !5895)
!5902 = !DILocation(line: 694, column: 10, scope: !5895)
!5903 = !DILocation(line: 693, column: 6, scope: !5865)
!5904 = !DILocation(line: 697, column: 3, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 694, column: 31)
!5906 = !DILocation(line: 700, column: 13, scope: !5865)
!5907 = !DILocation(line: 700, column: 18, scope: !5865)
!5908 = !DILocation(line: 700, column: 9, scope: !5865)
!5909 = !DILocation(line: 700, column: 7, scope: !5865)
!5910 = !DILocation(line: 701, column: 6, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 701, column: 6)
!5912 = !DILocation(line: 701, column: 11, scope: !5911)
!5913 = !DILocation(line: 701, column: 6, scope: !5865)
!5914 = !DILocation(line: 704, column: 3, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 701, column: 37)
!5916 = !DILocation(line: 706, column: 2, scope: !5865)
!5917 = !DILocation(line: 708, column: 1, scope: !5865)
!5918 = !DILocation(line: 710, column: 16, scope: !5865)
!5919 = !DILocation(line: 710, column: 22, scope: !5865)
!5920 = !DILocation(line: 710, column: 2, scope: !5865)
!5921 = !DILocation(line: 711, column: 2, scope: !5865)
!5922 = !DILocation(line: 712, column: 1, scope: !5865)
!5923 = distinct !DISubprogram(name: "usb_enable_intel_xhci_ports", scope: !3, file: !3, line: 1046, type: !4732, scopeLine: 1047, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5924)
!5924 = !{!5925, !5926, !5927, !5928}
!5925 = !DILocalVariable(name: "xhci_pdev", arg: 1, scope: !5923, file: !3, line: 1046, type: !165)
!5926 = !DILocalVariable(name: "ports_available", scope: !5923, file: !3, line: 1048, type: !236)
!5927 = !DILocalVariable(name: "ehci_found", scope: !5923, file: !3, line: 1049, type: !759)
!5928 = !DILocalVariable(name: "companion", scope: !5923, file: !3, line: 1050, type: !165)
!5929 = !DILocation(line: 1046, column: 50, scope: !5923)
!5930 = !DILocation(line: 1048, column: 2, scope: !5923)
!5931 = !DILocation(line: 1048, column: 7, scope: !5923)
!5932 = !DILocation(line: 1049, column: 2, scope: !5923)
!5933 = !DILocation(line: 1049, column: 8, scope: !5923)
!5934 = !DILocation(line: 1050, column: 2, scope: !5923)
!5935 = !DILocation(line: 1050, column: 18, scope: !5923)
!5936 = !DILocation(line: 1055, column: 6, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 1055, column: 6)
!5938 = !DILocation(line: 1055, column: 17, scope: !5937)
!5939 = !DILocation(line: 1055, column: 34, scope: !5937)
!5940 = !DILocation(line: 1055, column: 56, scope: !5937)
!5941 = !DILocation(line: 1056, column: 6, scope: !5937)
!5942 = !DILocation(line: 1056, column: 17, scope: !5937)
!5943 = !DILocation(line: 1056, column: 34, scope: !5937)
!5944 = !DILocation(line: 1055, column: 6, scope: !5923)
!5945 = !DILocation(line: 1057, column: 3, scope: !5937)
!5946 = !DILocation(line: 1060, column: 2, scope: !5923)
!5947 = !DILocation(line: 1061, column: 7, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 1061, column: 7)
!5949 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 1060, column: 30)
!5950 = !DILocation(line: 1061, column: 18, scope: !5948)
!5951 = !DILocation(line: 1061, column: 24, scope: !5948)
!5952 = !DILocation(line: 1061, column: 53, scope: !5948)
!5953 = !DILocation(line: 1062, column: 7, scope: !5948)
!5954 = !DILocation(line: 1062, column: 18, scope: !5948)
!5955 = !DILocation(line: 1062, column: 25, scope: !5948)
!5956 = !DILocation(line: 1061, column: 7, scope: !5949)
!5957 = !DILocation(line: 1063, column: 15, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 1062, column: 49)
!5959 = !DILocation(line: 1064, column: 4, scope: !5958)
!5960 = distinct !{!5960, !5946, !5961, !5576, !5577}
!5961 = !DILocation(line: 1066, column: 2, scope: !5923)
!5962 = !DILocation(line: 1068, column: 7, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 1068, column: 6)
!5964 = !DILocation(line: 1068, column: 6, scope: !5923)
!5965 = !DILocation(line: 1069, column: 3, scope: !5963)
!5966 = !DILocation(line: 1087, column: 24, scope: !5923)
!5967 = !DILocation(line: 1087, column: 2, scope: !5923)
!5968 = !DILocation(line: 1097, column: 25, scope: !5923)
!5969 = !DILocation(line: 1098, column: 4, scope: !5923)
!5970 = !DILocation(line: 1097, column: 2, scope: !5923)
!5971 = !DILocation(line: 1100, column: 24, scope: !5923)
!5972 = !DILocation(line: 1100, column: 2, scope: !5923)
!5973 = !DILocation(line: 1110, column: 24, scope: !5923)
!5974 = !DILocation(line: 1110, column: 2, scope: !5923)
!5975 = !DILocation(line: 1120, column: 25, scope: !5923)
!5976 = !DILocation(line: 1121, column: 4, scope: !5923)
!5977 = !DILocation(line: 1120, column: 2, scope: !5923)
!5978 = !DILocation(line: 1123, column: 24, scope: !5923)
!5979 = !DILocation(line: 1123, column: 2, scope: !5923)
!5980 = !DILocation(line: 1128, column: 1, scope: !5923)
!5981 = !DISubprogram(name: "pci_get_device", scope: !167, file: !167, line: 1176, type: !5982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5982 = !DISubroutineType(types: !5983)
!5983 = !{!165, !7, !7, !165}
!5984 = !DISubprogram(name: "pci_read_config_dword", scope: !167, file: !167, line: 1215, type: !5985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5985 = !DISubroutineType(types: !5986)
!5986 = !{!109, !5090, !109, !235}
!5987 = distinct !DISubprogram(name: "usb_disable_xhci_ports", scope: !3, file: !3, line: 1131, type: !4732, scopeLine: 1132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5988)
!5988 = !{!5989}
!5989 = !DILocalVariable(name: "xhci_pdev", arg: 1, scope: !5987, file: !3, line: 1131, type: !165)
!5990 = !DILocation(line: 1131, column: 45, scope: !5987)
!5991 = !DILocation(line: 1133, column: 25, scope: !5987)
!5992 = !DILocation(line: 1133, column: 2, scope: !5987)
!5993 = !DILocation(line: 1134, column: 25, scope: !5987)
!5994 = !DILocation(line: 1134, column: 2, scope: !5987)
!5995 = !DILocation(line: 1135, column: 1, scope: !5987)
!5996 = distinct !DISubprogram(name: "__UNIQUE_ID_quirk_usb_early_handoff306", scope: !3, file: !3, line: 1293, type: !4732, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5997)
!5997 = !{!5998}
!5998 = !DILocalVariable(name: "dev", arg: 1, scope: !5996, file: !3, line: 1293, type: !165)
!5999 = !DILocation(line: 1293, column: 1, scope: !5996)
!6000 = distinct !DISubprogram(name: "quirk_usb_early_handoff", scope: !3, file: !3, line: 1249, type: !4732, scopeLine: 1250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6001)
!6001 = !{!6002, !6003, !6004}
!6002 = !DILocalVariable(name: "pdev", arg: 1, scope: !6000, file: !3, line: 1249, type: !165)
!6003 = !DILocalVariable(name: "parent", scope: !6000, file: !3, line: 1251, type: !4483)
!6004 = !DILocalVariable(name: "is_rpi", scope: !6000, file: !3, line: 1252, type: !759)
!6005 = !DILocation(line: 1249, column: 53, scope: !6000)
!6006 = !DILocation(line: 1251, column: 2, scope: !6000)
!6007 = !DILocation(line: 1251, column: 22, scope: !6000)
!6008 = !DILocation(line: 1252, column: 2, scope: !6000)
!6009 = !DILocation(line: 1252, column: 7, scope: !6000)
!6010 = !DILocation(line: 1257, column: 6, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 1257, column: 6)
!6012 = !DILocation(line: 1257, column: 12, scope: !6011)
!6013 = !DILocation(line: 1257, column: 19, scope: !6011)
!6014 = !DILocation(line: 1257, column: 6, scope: !6000)
!6015 = !DILocation(line: 1258, column: 3, scope: !6011)
!6016 = !DILocation(line: 1264, column: 6, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 1264, column: 6)
!6018 = !DILocation(line: 1264, column: 12, scope: !6017)
!6019 = !DILocation(line: 1264, column: 19, scope: !6017)
!6020 = !DILocation(line: 1264, column: 40, scope: !6017)
!6021 = !DILocation(line: 1264, column: 43, scope: !6017)
!6022 = !DILocation(line: 1264, column: 49, scope: !6017)
!6023 = !DILocation(line: 1264, column: 56, scope: !6017)
!6024 = !DILocation(line: 1264, column: 6, scope: !6000)
!6025 = !DILocation(line: 1265, column: 26, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 1264, column: 67)
!6027 = !DILocation(line: 1265, column: 32, scope: !6026)
!6028 = !DILocation(line: 1265, column: 37, scope: !6026)
!6029 = !DILocation(line: 1265, column: 41, scope: !6026)
!6030 = !DILocation(line: 1265, column: 12, scope: !6026)
!6031 = !DILocation(line: 1265, column: 10, scope: !6026)
!6032 = !DILocation(line: 1266, column: 36, scope: !6026)
!6033 = !DILocation(line: 1266, column: 12, scope: !6026)
!6034 = !DILocation(line: 1266, column: 10, scope: !6026)
!6035 = !DILocation(line: 1267, column: 15, scope: !6026)
!6036 = !DILocation(line: 1267, column: 3, scope: !6026)
!6037 = !DILocation(line: 1268, column: 7, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 1268, column: 7)
!6039 = !DILocation(line: 1268, column: 7, scope: !6026)
!6040 = !DILocation(line: 1269, column: 4, scope: !6038)
!6041 = !DILocation(line: 1270, column: 2, scope: !6026)
!6042 = !DILocation(line: 1272, column: 6, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 1272, column: 6)
!6044 = !DILocation(line: 1272, column: 12, scope: !6043)
!6045 = !DILocation(line: 1272, column: 18, scope: !6043)
!6046 = !DILocation(line: 1272, column: 47, scope: !6043)
!6047 = !DILocation(line: 1273, column: 4, scope: !6043)
!6048 = !DILocation(line: 1273, column: 10, scope: !6043)
!6049 = !DILocation(line: 1273, column: 16, scope: !6043)
!6050 = !DILocation(line: 1273, column: 45, scope: !6043)
!6051 = !DILocation(line: 1274, column: 4, scope: !6043)
!6052 = !DILocation(line: 1274, column: 10, scope: !6043)
!6053 = !DILocation(line: 1274, column: 16, scope: !6043)
!6054 = !DILocation(line: 1274, column: 45, scope: !6043)
!6055 = !DILocation(line: 1275, column: 4, scope: !6043)
!6056 = !DILocation(line: 1275, column: 10, scope: !6043)
!6057 = !DILocation(line: 1275, column: 16, scope: !6043)
!6058 = !DILocation(line: 1272, column: 6, scope: !6000)
!6059 = !DILocation(line: 1276, column: 3, scope: !6043)
!6060 = !DILocation(line: 1278, column: 24, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 1278, column: 6)
!6062 = !DILocation(line: 1278, column: 6, scope: !6061)
!6063 = !DILocation(line: 1278, column: 30, scope: !6061)
!6064 = !DILocation(line: 1278, column: 6, scope: !6000)
!6065 = !DILocation(line: 1279, column: 3, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 1279, column: 3)
!6067 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 1278, column: 35)
!6068 = !DILocation(line: 1279, column: 3, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 1279, column: 3)
!6070 = !DILocation(line: 1281, column: 3, scope: !6067)
!6071 = !DILocation(line: 1283, column: 6, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 1283, column: 6)
!6073 = !DILocation(line: 1283, column: 12, scope: !6072)
!6074 = !DILocation(line: 1283, column: 18, scope: !6072)
!6075 = !DILocation(line: 1283, column: 6, scope: !6000)
!6076 = !DILocation(line: 1284, column: 26, scope: !6072)
!6077 = !DILocation(line: 1284, column: 3, scope: !6072)
!6078 = !DILocation(line: 1285, column: 11, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 1285, column: 11)
!6080 = !DILocation(line: 1285, column: 17, scope: !6079)
!6081 = !DILocation(line: 1285, column: 23, scope: !6079)
!6082 = !DILocation(line: 1285, column: 11, scope: !6072)
!6083 = !DILocation(line: 1286, column: 26, scope: !6079)
!6084 = !DILocation(line: 1286, column: 3, scope: !6079)
!6085 = !DILocation(line: 1287, column: 11, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 1287, column: 11)
!6087 = !DILocation(line: 1287, column: 17, scope: !6086)
!6088 = !DILocation(line: 1287, column: 23, scope: !6086)
!6089 = !DILocation(line: 1287, column: 11, scope: !6079)
!6090 = !DILocation(line: 1288, column: 26, scope: !6086)
!6091 = !DILocation(line: 1288, column: 3, scope: !6086)
!6092 = !DILocation(line: 1289, column: 11, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 1289, column: 11)
!6094 = !DILocation(line: 1289, column: 17, scope: !6093)
!6095 = !DILocation(line: 1289, column: 23, scope: !6093)
!6096 = !DILocation(line: 1289, column: 11, scope: !6086)
!6097 = !DILocation(line: 1290, column: 26, scope: !6093)
!6098 = !DILocation(line: 1290, column: 3, scope: !6093)
!6099 = !DILocation(line: 1291, column: 21, scope: !6000)
!6100 = !DILocation(line: 1291, column: 2, scope: !6000)
!6101 = !DILocation(line: 1292, column: 1, scope: !6000)
!6102 = distinct !DISubprogram(name: "amd_chipset_sb_type_init", scope: !3, file: !3, line: 151, type: !6103, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6106)
!6103 = !DISubroutineType(types: !6104)
!6104 = !{!109, !6105}
!6105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!6106 = !{!6107, !6108}
!6107 = !DILocalVariable(name: "pinfo", arg: 1, scope: !6102, file: !3, line: 151, type: !6105)
!6108 = !DILocalVariable(name: "rev", scope: !6102, file: !3, line: 153, type: !306)
!6109 = !DILocation(line: 151, column: 62, scope: !6102)
!6110 = !DILocation(line: 153, column: 2, scope: !6102)
!6111 = !DILocation(line: 153, column: 5, scope: !6102)
!6112 = !DILocation(line: 154, column: 2, scope: !6102)
!6113 = !DILocation(line: 154, column: 9, scope: !6102)
!6114 = !DILocation(line: 154, column: 17, scope: !6102)
!6115 = !DILocation(line: 154, column: 21, scope: !6102)
!6116 = !DILocation(line: 156, column: 21, scope: !6102)
!6117 = !DILocation(line: 156, column: 2, scope: !6102)
!6118 = !DILocation(line: 156, column: 9, scope: !6102)
!6119 = !DILocation(line: 156, column: 19, scope: !6102)
!6120 = !DILocation(line: 158, column: 6, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 158, column: 6)
!6122 = !DILocation(line: 158, column: 13, scope: !6121)
!6123 = !DILocation(line: 158, column: 6, scope: !6102)
!6124 = !DILocation(line: 159, column: 9, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 158, column: 24)
!6126 = !DILocation(line: 159, column: 16, scope: !6125)
!6127 = !DILocation(line: 159, column: 27, scope: !6125)
!6128 = !DILocation(line: 159, column: 7, scope: !6125)
!6129 = !DILocation(line: 160, column: 7, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 160, column: 7)
!6131 = !DILocation(line: 160, column: 11, scope: !6130)
!6132 = !DILocation(line: 160, column: 19, scope: !6130)
!6133 = !DILocation(line: 160, column: 22, scope: !6130)
!6134 = !DILocation(line: 160, column: 26, scope: !6130)
!6135 = !DILocation(line: 160, column: 7, scope: !6125)
!6136 = !DILocation(line: 161, column: 4, scope: !6130)
!6137 = !DILocation(line: 161, column: 11, scope: !6130)
!6138 = !DILocation(line: 161, column: 19, scope: !6130)
!6139 = !DILocation(line: 161, column: 23, scope: !6130)
!6140 = !DILocation(line: 162, column: 12, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 162, column: 12)
!6142 = !DILocation(line: 162, column: 16, scope: !6141)
!6143 = !DILocation(line: 162, column: 24, scope: !6141)
!6144 = !DILocation(line: 162, column: 27, scope: !6141)
!6145 = !DILocation(line: 162, column: 31, scope: !6141)
!6146 = !DILocation(line: 162, column: 12, scope: !6130)
!6147 = !DILocation(line: 163, column: 4, scope: !6141)
!6148 = !DILocation(line: 163, column: 11, scope: !6141)
!6149 = !DILocation(line: 163, column: 19, scope: !6141)
!6150 = !DILocation(line: 163, column: 23, scope: !6141)
!6151 = !DILocation(line: 164, column: 12, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 164, column: 12)
!6153 = !DILocation(line: 164, column: 16, scope: !6152)
!6154 = !DILocation(line: 164, column: 24, scope: !6152)
!6155 = !DILocation(line: 164, column: 27, scope: !6152)
!6156 = !DILocation(line: 164, column: 31, scope: !6152)
!6157 = !DILocation(line: 164, column: 12, scope: !6141)
!6158 = !DILocation(line: 165, column: 4, scope: !6152)
!6159 = !DILocation(line: 165, column: 11, scope: !6152)
!6160 = !DILocation(line: 165, column: 19, scope: !6152)
!6161 = !DILocation(line: 165, column: 23, scope: !6152)
!6162 = !DILocation(line: 166, column: 2, scope: !6125)
!6163 = !DILocation(line: 167, column: 22, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 166, column: 9)
!6165 = !DILocation(line: 167, column: 3, scope: !6164)
!6166 = !DILocation(line: 167, column: 10, scope: !6164)
!6167 = !DILocation(line: 167, column: 20, scope: !6164)
!6168 = !DILocation(line: 170, column: 7, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 170, column: 7)
!6170 = !DILocation(line: 170, column: 14, scope: !6169)
!6171 = !DILocation(line: 170, column: 7, scope: !6164)
!6172 = !DILocation(line: 171, column: 10, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 170, column: 25)
!6174 = !DILocation(line: 171, column: 17, scope: !6173)
!6175 = !DILocation(line: 171, column: 28, scope: !6173)
!6176 = !DILocation(line: 171, column: 8, scope: !6173)
!6177 = !DILocation(line: 172, column: 8, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 172, column: 8)
!6179 = !DILocation(line: 172, column: 12, scope: !6178)
!6180 = !DILocation(line: 172, column: 20, scope: !6178)
!6181 = !DILocation(line: 172, column: 23, scope: !6178)
!6182 = !DILocation(line: 172, column: 27, scope: !6178)
!6183 = !DILocation(line: 172, column: 8, scope: !6173)
!6184 = !DILocation(line: 173, column: 5, scope: !6178)
!6185 = !DILocation(line: 173, column: 12, scope: !6178)
!6186 = !DILocation(line: 173, column: 20, scope: !6178)
!6187 = !DILocation(line: 173, column: 24, scope: !6178)
!6188 = !DILocation(line: 174, column: 13, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 174, column: 13)
!6190 = !DILocation(line: 174, column: 17, scope: !6189)
!6191 = !DILocation(line: 174, column: 25, scope: !6189)
!6192 = !DILocation(line: 174, column: 28, scope: !6189)
!6193 = !DILocation(line: 174, column: 32, scope: !6189)
!6194 = !DILocation(line: 174, column: 13, scope: !6178)
!6195 = !DILocation(line: 175, column: 5, scope: !6189)
!6196 = !DILocation(line: 175, column: 12, scope: !6189)
!6197 = !DILocation(line: 175, column: 20, scope: !6189)
!6198 = !DILocation(line: 175, column: 24, scope: !6189)
!6199 = !DILocation(line: 176, column: 13, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 176, column: 13)
!6201 = !DILocation(line: 176, column: 17, scope: !6200)
!6202 = !DILocation(line: 176, column: 25, scope: !6200)
!6203 = !DILocation(line: 176, column: 28, scope: !6200)
!6204 = !DILocation(line: 176, column: 32, scope: !6200)
!6205 = !DILocation(line: 176, column: 13, scope: !6189)
!6206 = !DILocation(line: 177, column: 5, scope: !6200)
!6207 = !DILocation(line: 177, column: 12, scope: !6200)
!6208 = !DILocation(line: 177, column: 20, scope: !6200)
!6209 = !DILocation(line: 177, column: 24, scope: !6200)
!6210 = !DILocation(line: 178, column: 3, scope: !6173)
!6211 = !DILocation(line: 179, column: 23, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 178, column: 10)
!6213 = !DILocation(line: 179, column: 4, scope: !6212)
!6214 = !DILocation(line: 179, column: 11, scope: !6212)
!6215 = !DILocation(line: 179, column: 21, scope: !6212)
!6216 = !DILocation(line: 181, column: 8, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 181, column: 8)
!6218 = !DILocation(line: 181, column: 15, scope: !6217)
!6219 = !DILocation(line: 181, column: 8, scope: !6212)
!6220 = !DILocation(line: 182, column: 11, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 181, column: 26)
!6222 = !DILocation(line: 182, column: 18, scope: !6221)
!6223 = !DILocation(line: 182, column: 29, scope: !6221)
!6224 = !DILocation(line: 182, column: 9, scope: !6221)
!6225 = !DILocation(line: 183, column: 5, scope: !6221)
!6226 = !DILocation(line: 183, column: 12, scope: !6221)
!6227 = !DILocation(line: 183, column: 20, scope: !6221)
!6228 = !DILocation(line: 183, column: 24, scope: !6221)
!6229 = !DILocation(line: 184, column: 4, scope: !6221)
!6230 = !DILocation(line: 185, column: 5, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 184, column: 11)
!6232 = !DILocation(line: 185, column: 12, scope: !6231)
!6233 = !DILocation(line: 185, column: 20, scope: !6231)
!6234 = !DILocation(line: 185, column: 24, scope: !6231)
!6235 = !DILocation(line: 186, column: 5, scope: !6231)
!6236 = !DILocation(line: 190, column: 23, scope: !6102)
!6237 = !DILocation(line: 190, column: 2, scope: !6102)
!6238 = !DILocation(line: 190, column: 9, scope: !6102)
!6239 = !DILocation(line: 190, column: 17, scope: !6102)
!6240 = !DILocation(line: 190, column: 21, scope: !6102)
!6241 = !DILocation(line: 191, column: 2, scope: !6102)
!6242 = !DILocation(line: 192, column: 1, scope: !6102)
!6243 = !DISubprogram(name: "_printk", scope: !6244, file: !6244, line: 153, type: !6245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6244 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!109, !202, null}
!6247 = distinct !DISubprogram(name: "outb_p", scope: !6248, file: !6248, line: 291, type: !6249, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6251)
!6248 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!6249 = !DISubroutineType(types: !6250)
!6250 = !{null, !306, !313}
!6251 = !{!6252, !6253}
!6252 = !DILocalVariable(name: "value", arg: 1, scope: !6247, file: !6248, line: 291, type: !306)
!6253 = !DILocalVariable(name: "port", arg: 2, scope: !6247, file: !6248, line: 291, type: !313)
!6254 = !DILocation(line: 291, column: 1, scope: !6247)
!6255 = distinct !DISubprogram(name: "inb_p", scope: !6248, file: !6248, line: 291, type: !6256, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6258)
!6256 = !DISubroutineType(types: !6257)
!6257 = !{!306, !313}
!6258 = !{!6259, !6260}
!6259 = !DILocalVariable(name: "port", arg: 1, scope: !6255, file: !6248, line: 291, type: !313)
!6260 = !DILocalVariable(name: "value", scope: !6255, file: !6248, line: 291, type: !306)
!6261 = !DILocation(line: 291, column: 1, scope: !6255)
!6262 = distinct !DISubprogram(name: "outl_p", scope: !6248, file: !6248, line: 293, type: !6263, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6265)
!6263 = !DISubroutineType(types: !6264)
!6264 = !{null, !236, !313}
!6265 = !{!6266, !6267}
!6266 = !DILocalVariable(name: "value", arg: 1, scope: !6262, file: !6248, line: 293, type: !236)
!6267 = !DILocalVariable(name: "port", arg: 2, scope: !6262, file: !6248, line: 293, type: !313)
!6268 = !DILocation(line: 293, column: 1, scope: !6262)
!6269 = distinct !DISubprogram(name: "inl_p", scope: !6248, file: !6248, line: 293, type: !6270, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6272)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{!236, !313}
!6272 = !{!6273, !6274}
!6273 = !DILocalVariable(name: "port", arg: 1, scope: !6269, file: !6248, line: 293, type: !313)
!6274 = !DILocalVariable(name: "value", scope: !6269, file: !6248, line: 293, type: !236)
!6275 = !DILocation(line: 293, column: 1, scope: !6269)
!6276 = distinct !DISubprogram(name: "__outl", scope: !5841, file: !5841, line: 24, type: !6263, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6277 = !{!6278, !6279}
!6278 = !DILocalVariable(name: "value", arg: 1, scope: !6276, file: !5841, line: 24, type: !236)
!6279 = !DILocalVariable(name: "port", arg: 2, scope: !6276, file: !5841, line: 24, type: !313)
!6280 = !DILocation(line: 24, column: 1, scope: !6276)
!6281 = !{i64 2152807124}
!6282 = distinct !DISubprogram(name: "__inl", scope: !5841, file: !5841, line: 24, type: !6270, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6283)
!6283 = !{!6284, !6285}
!6284 = !DILocalVariable(name: "port", arg: 1, scope: !6282, file: !5841, line: 24, type: !313)
!6285 = !DILocalVariable(name: "value", scope: !6282, file: !5841, line: 24, type: !236)
!6286 = !DILocation(line: 24, column: 1, scope: !6282)
!6287 = !{i64 2152807320}
!6288 = distinct !DISubprogram(name: "__outb", scope: !5841, file: !5841, line: 22, type: !6249, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6289)
!6289 = !{!6290, !6291}
!6290 = !DILocalVariable(name: "value", arg: 1, scope: !6288, file: !5841, line: 22, type: !306)
!6291 = !DILocalVariable(name: "port", arg: 2, scope: !6288, file: !5841, line: 22, type: !313)
!6292 = !DILocation(line: 22, column: 1, scope: !6288)
!6293 = !{i64 2152805439}
!6294 = distinct !DISubprogram(name: "slow_down_io", scope: !6295, file: !6295, line: 53, type: !1042, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6296)
!6295 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03130265545439d5fc6fd2b961c93410")
!6296 = !{!6297, !6299, !6300, !6301, !6302}
!6297 = !DILocalVariable(name: "__edi", scope: !6298, file: !6295, line: 55, type: !206)
!6298 = distinct !DILexicalBlock(scope: !6294, file: !6295, line: 55, column: 2)
!6299 = !DILocalVariable(name: "__esi", scope: !6298, file: !6295, line: 55, type: !206)
!6300 = !DILocalVariable(name: "__edx", scope: !6298, file: !6295, line: 55, type: !206)
!6301 = !DILocalVariable(name: "__ecx", scope: !6298, file: !6295, line: 55, type: !206)
!6302 = !DILocalVariable(name: "__eax", scope: !6298, file: !6295, line: 55, type: !206)
!6303 = !DILocation(line: 55, column: 2, scope: !6298)
!6304 = !{i64 2149952877, i64 2149952884, i64 2149953111, i64 2149953162, i64 2149953183, i64 2149953208, i64 2149952906, i64 2149952919, i64 2149953319, i64 2149953452, i64 2149953011, i64 2149953038, i64 2149953585, i64 2149953089}
!6305 = !DILocation(line: 55, column: 2, scope: !6294)
!6306 = !DILocation(line: 61, column: 1, scope: !6294)
!6307 = distinct !DISubprogram(name: "__inb", scope: !5841, file: !5841, line: 22, type: !6256, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6308)
!6308 = !{!6309, !6310}
!6309 = !DILocalVariable(name: "port", arg: 1, scope: !6307, file: !5841, line: 22, type: !313)
!6310 = !DILocalVariable(name: "value", scope: !6307, file: !5841, line: 22, type: !306)
!6311 = !DILocation(line: 22, column: 1, scope: !6307)
!6312 = !{i64 2152805635}
!6313 = !DISubprogram(name: "_dev_err", scope: !5862, file: !5862, line: 50, type: !5863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6314 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5639, file: !5639, line: 43, type: !6315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6315 = !DISubroutineType(types: !6316)
!6316 = !{null, !5642, !206}
!6317 = distinct !DISubprogram(name: "of_get_parent", scope: !4485, file: !4485, line: 522, type: !6318, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6322)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{!4483, !6320}
!6320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6321, size: 64)
!6321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4484)
!6322 = !{!6323}
!6323 = !DILocalVariable(name: "node", arg: 1, scope: !6317, file: !4485, line: 522, type: !6320)
!6324 = !DILocation(line: 522, column: 75, scope: !6317)
!6325 = !DILocation(line: 524, column: 2, scope: !6317)
!6326 = distinct !DISubprogram(name: "of_device_is_compatible", scope: !4485, file: !4485, line: 570, type: !6327, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6329)
!6327 = !DISubroutineType(types: !6328)
!6328 = !{!109, !6320, !202}
!6329 = !{!6330, !6331}
!6330 = !DILocalVariable(name: "device", arg: 1, scope: !6326, file: !4485, line: 570, type: !6320)
!6331 = !DILocalVariable(name: "name", arg: 2, scope: !6326, file: !4485, line: 571, type: !202)
!6332 = !DILocation(line: 570, column: 69, scope: !6326)
!6333 = !DILocation(line: 571, column: 20, scope: !6326)
!6334 = !DILocation(line: 573, column: 2, scope: !6326)
!6335 = distinct !DISubprogram(name: "of_node_put", scope: !4485, file: !4485, line: 136, type: !6336, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6338)
!6336 = !DISubroutineType(types: !6337)
!6337 = !{null, !4483}
!6338 = !{!6339}
!6339 = !DILocalVariable(name: "node", arg: 1, scope: !6335, file: !4485, line: 136, type: !4483)
!6340 = !DILocation(line: 136, column: 52, scope: !6335)
!6341 = !DILocation(line: 136, column: 60, scope: !6335)
!6342 = !DISubprogram(name: "pci_enable_device", scope: !167, file: !167, line: 1290, type: !4740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6343 = distinct !DISubprogram(name: "quirk_usb_handoff_uhci", scope: !3, file: !3, line: 724, type: !4732, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6344)
!6344 = !{!6345, !6346, !6347}
!6345 = !DILocalVariable(name: "pdev", arg: 1, scope: !6343, file: !3, line: 724, type: !165)
!6346 = !DILocalVariable(name: "base", scope: !6343, file: !3, line: 726, type: !206)
!6347 = !DILocalVariable(name: "i", scope: !6343, file: !3, line: 727, type: !109)
!6348 = !DILocation(line: 724, column: 52, scope: !6343)
!6349 = !DILocation(line: 726, column: 2, scope: !6343)
!6350 = !DILocation(line: 726, column: 16, scope: !6343)
!6351 = !DILocation(line: 727, column: 2, scope: !6343)
!6352 = !DILocation(line: 727, column: 6, scope: !6343)
!6353 = !DILocation(line: 729, column: 7, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 729, column: 6)
!6355 = !DILocation(line: 729, column: 6, scope: !6343)
!6356 = !DILocation(line: 730, column: 3, scope: !6354)
!6357 = !DILocation(line: 732, column: 9, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 732, column: 2)
!6359 = !DILocation(line: 732, column: 7, scope: !6358)
!6360 = !DILocation(line: 732, column: 14, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 732, column: 2)
!6362 = !DILocation(line: 732, column: 16, scope: !6361)
!6363 = !DILocation(line: 732, column: 2, scope: !6358)
!6364 = !DILocation(line: 733, column: 8, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 733, column: 7)
!6366 = !DILocation(line: 733, column: 36, scope: !6365)
!6367 = !DILocation(line: 733, column: 7, scope: !6361)
!6368 = !DILocation(line: 734, column: 11, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 733, column: 54)
!6370 = !DILocation(line: 734, column: 9, scope: !6369)
!6371 = !DILocation(line: 735, column: 4, scope: !6369)
!6372 = !DILocation(line: 733, column: 51, scope: !6365)
!6373 = !DILocation(line: 732, column: 37, scope: !6361)
!6374 = !DILocation(line: 732, column: 2, scope: !6361)
!6375 = distinct !{!6375, !6363, !6376, !5576, !5577}
!6376 = !DILocation(line: 736, column: 3, scope: !6358)
!6377 = !DILocation(line: 738, column: 6, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 738, column: 6)
!6379 = !DILocation(line: 738, column: 6, scope: !6343)
!6380 = !DILocation(line: 739, column: 27, scope: !6378)
!6381 = !DILocation(line: 739, column: 33, scope: !6378)
!6382 = !DILocation(line: 739, column: 3, scope: !6378)
!6383 = !DILocation(line: 740, column: 1, scope: !6343)
!6384 = distinct !DISubprogram(name: "quirk_usb_handoff_ohci", scope: !3, file: !3, line: 747, type: !4732, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6385)
!6385 = !{!6386, !6387, !6388, !6389, !6390, !6391, !6392}
!6386 = !DILocalVariable(name: "pdev", arg: 1, scope: !6384, file: !3, line: 747, type: !165)
!6387 = !DILocalVariable(name: "base", scope: !6384, file: !3, line: 749, type: !164)
!6388 = !DILocalVariable(name: "control", scope: !6384, file: !3, line: 750, type: !236)
!6389 = !DILocalVariable(name: "fminterval", scope: !6384, file: !3, line: 751, type: !236)
!6390 = !DILocalVariable(name: "no_fminterval", scope: !6384, file: !3, line: 752, type: !759)
!6391 = !DILocalVariable(name: "cnt", scope: !6384, file: !3, line: 753, type: !109)
!6392 = !DILocalVariable(name: "wait_time", scope: !6393, file: !3, line: 778, type: !109)
!6393 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 777, column: 30)
!6394 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 777, column: 6)
!6395 = !DILocation(line: 747, column: 52, scope: !6384)
!6396 = !DILocation(line: 749, column: 2, scope: !6384)
!6397 = !DILocation(line: 749, column: 16, scope: !6384)
!6398 = !DILocation(line: 750, column: 2, scope: !6384)
!6399 = !DILocation(line: 750, column: 6, scope: !6384)
!6400 = !DILocation(line: 751, column: 2, scope: !6384)
!6401 = !DILocation(line: 751, column: 6, scope: !6384)
!6402 = !DILocation(line: 752, column: 2, scope: !6384)
!6403 = !DILocation(line: 752, column: 7, scope: !6384)
!6404 = !DILocation(line: 753, column: 2, scope: !6384)
!6405 = !DILocation(line: 753, column: 6, scope: !6384)
!6406 = !DILocation(line: 755, column: 29, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 755, column: 6)
!6408 = !DILocation(line: 755, column: 7, scope: !6407)
!6409 = !DILocation(line: 755, column: 6, scope: !6384)
!6410 = !DILocation(line: 756, column: 3, scope: !6407)
!6411 = !DILocation(line: 758, column: 25, scope: !6384)
!6412 = !DILocation(line: 758, column: 9, scope: !6384)
!6413 = !DILocation(line: 758, column: 7, scope: !6384)
!6414 = !DILocation(line: 759, column: 6, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 759, column: 6)
!6416 = !DILocation(line: 759, column: 11, scope: !6415)
!6417 = !DILocation(line: 759, column: 6, scope: !6384)
!6418 = !DILocation(line: 760, column: 3, scope: !6415)
!6419 = !DILocation(line: 766, column: 6, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 766, column: 6)
!6421 = !DILocation(line: 766, column: 12, scope: !6420)
!6422 = !DILocation(line: 766, column: 19, scope: !6420)
!6423 = !DILocation(line: 766, column: 39, scope: !6420)
!6424 = !DILocation(line: 766, column: 42, scope: !6420)
!6425 = !DILocation(line: 766, column: 48, scope: !6420)
!6426 = !DILocation(line: 766, column: 55, scope: !6420)
!6427 = !DILocation(line: 766, column: 6, scope: !6384)
!6428 = !DILocation(line: 767, column: 17, scope: !6420)
!6429 = !DILocation(line: 767, column: 3, scope: !6420)
!6430 = !DILocation(line: 769, column: 18, scope: !6384)
!6431 = !DILocation(line: 769, column: 23, scope: !6384)
!6432 = !DILocation(line: 769, column: 12, scope: !6384)
!6433 = !DILocation(line: 769, column: 10, scope: !6384)
!6434 = !DILocation(line: 777, column: 6, scope: !6394)
!6435 = !DILocation(line: 777, column: 14, scope: !6394)
!6436 = !DILocation(line: 777, column: 6, scope: !6384)
!6437 = !DILocation(line: 778, column: 3, scope: !6393)
!6438 = !DILocation(line: 778, column: 7, scope: !6393)
!6439 = !DILocation(line: 779, column: 24, scope: !6393)
!6440 = !DILocation(line: 779, column: 29, scope: !6393)
!6441 = !DILocation(line: 779, column: 3, scope: !6393)
!6442 = !DILocation(line: 780, column: 20, scope: !6393)
!6443 = !DILocation(line: 780, column: 25, scope: !6393)
!6444 = !DILocation(line: 780, column: 3, scope: !6393)
!6445 = !DILocation(line: 781, column: 3, scope: !6393)
!6446 = !DILocation(line: 781, column: 10, scope: !6393)
!6447 = !DILocation(line: 781, column: 20, scope: !6393)
!6448 = !DILocation(line: 781, column: 24, scope: !6393)
!6449 = !DILocation(line: 782, column: 11, scope: !6393)
!6450 = !DILocation(line: 782, column: 16, scope: !6393)
!6451 = !DILocation(line: 782, column: 5, scope: !6393)
!6452 = !DILocation(line: 782, column: 32, scope: !6393)
!6453 = !DILocation(line: 0, scope: !6393)
!6454 = !DILocation(line: 783, column: 14, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 782, column: 48)
!6456 = !DILocation(line: 784, column: 4, scope: !6455)
!6457 = distinct !{!6457, !6445, !6458, !5576, !5577}
!6458 = !DILocation(line: 785, column: 3, scope: !6393)
!6459 = !DILocation(line: 786, column: 7, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 786, column: 7)
!6461 = !DILocation(line: 786, column: 17, scope: !6460)
!6462 = !DILocation(line: 786, column: 7, scope: !6393)
!6463 = !DILocation(line: 787, column: 4, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6460, file: !3, line: 787, column: 4)
!6465 = !DILocation(line: 787, column: 4, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 787, column: 4)
!6467 = !DILocation(line: 787, column: 4, scope: !6460)
!6468 = !DILocation(line: 790, column: 2, scope: !6394)
!6469 = !DILocation(line: 790, column: 2, scope: !6393)
!6470 = !DILocation(line: 794, column: 19, scope: !6384)
!6471 = !DILocation(line: 794, column: 24, scope: !6384)
!6472 = !DILocation(line: 794, column: 2, scope: !6384)
!6473 = !DILocation(line: 797, column: 9, scope: !6384)
!6474 = !DILocation(line: 797, column: 17, scope: !6384)
!6475 = !DILocation(line: 797, column: 35, scope: !6384)
!6476 = !DILocation(line: 797, column: 40, scope: !6384)
!6477 = !DILocation(line: 797, column: 2, scope: !6384)
!6478 = !DILocation(line: 798, column: 8, scope: !6384)
!6479 = !DILocation(line: 798, column: 13, scope: !6384)
!6480 = !DILocation(line: 798, column: 2, scope: !6384)
!6481 = !DILocation(line: 801, column: 7, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 801, column: 6)
!6483 = !DILocation(line: 801, column: 6, scope: !6384)
!6484 = !DILocation(line: 802, column: 22, scope: !6482)
!6485 = !DILocation(line: 802, column: 27, scope: !6482)
!6486 = !DILocation(line: 802, column: 16, scope: !6482)
!6487 = !DILocation(line: 802, column: 14, scope: !6482)
!6488 = !DILocation(line: 802, column: 3, scope: !6482)
!6489 = !DILocation(line: 804, column: 19, scope: !6384)
!6490 = !DILocation(line: 804, column: 24, scope: !6384)
!6491 = !DILocation(line: 804, column: 2, scope: !6384)
!6492 = !DILocation(line: 807, column: 11, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 807, column: 2)
!6494 = !DILocation(line: 807, column: 7, scope: !6493)
!6495 = !DILocation(line: 807, column: 17, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6493, file: !3, line: 807, column: 2)
!6497 = !DILocation(line: 807, column: 21, scope: !6496)
!6498 = !DILocation(line: 807, column: 2, scope: !6493)
!6499 = !DILocation(line: 808, column: 14, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 808, column: 7)
!6501 = distinct !DILexicalBlock(scope: !6496, file: !3, line: 807, column: 33)
!6502 = !DILocation(line: 808, column: 19, scope: !6500)
!6503 = !DILocation(line: 808, column: 8, scope: !6500)
!6504 = !DILocation(line: 808, column: 37, scope: !6500)
!6505 = !DILocation(line: 808, column: 49, scope: !6500)
!6506 = !DILocation(line: 808, column: 7, scope: !6501)
!6507 = !DILocation(line: 809, column: 4, scope: !6500)
!6508 = !DILocation(line: 810, column: 3, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6510, file: !3, line: 810, column: 3)
!6510 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 810, column: 3)
!6511 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 810, column: 3)
!6512 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 810, column: 3)
!6513 = !DILocation(line: 811, column: 2, scope: !6501)
!6514 = !DILocation(line: 807, column: 26, scope: !6496)
!6515 = !DILocation(line: 807, column: 2, scope: !6496)
!6516 = distinct !{!6516, !6498, !6517, !5576, !5577}
!6517 = !DILocation(line: 811, column: 2, scope: !6493)
!6518 = !DILocation(line: 813, column: 7, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 813, column: 6)
!6520 = !DILocation(line: 813, column: 6, scope: !6384)
!6521 = !DILocation(line: 814, column: 10, scope: !6519)
!6522 = !DILocation(line: 814, column: 22, scope: !6519)
!6523 = !DILocation(line: 814, column: 27, scope: !6519)
!6524 = !DILocation(line: 814, column: 3, scope: !6519)
!6525 = !DILocation(line: 817, column: 10, scope: !6384)
!6526 = !DILocation(line: 817, column: 2, scope: !6384)
!6527 = !DILocation(line: 818, column: 1, scope: !6384)
!6528 = distinct !DISubprogram(name: "quirk_usb_disable_ehci", scope: !3, file: !3, line: 927, type: !4732, scopeLine: 928, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6529)
!6529 = !{!6530, !6531, !6532, !6533, !6534, !6535, !6536, !6537, !6538, !6539}
!6530 = !DILocalVariable(name: "pdev", arg: 1, scope: !6528, file: !3, line: 927, type: !165)
!6531 = !DILocalVariable(name: "base", scope: !6528, file: !3, line: 929, type: !164)
!6532 = !DILocalVariable(name: "op_reg_base", scope: !6528, file: !3, line: 929, type: !164)
!6533 = !DILocalVariable(name: "hcc_params", scope: !6528, file: !3, line: 930, type: !236)
!6534 = !DILocalVariable(name: "cap", scope: !6528, file: !3, line: 930, type: !236)
!6535 = !DILocalVariable(name: "val", scope: !6528, file: !3, line: 930, type: !236)
!6536 = !DILocalVariable(name: "offset", scope: !6528, file: !3, line: 931, type: !306)
!6537 = !DILocalVariable(name: "cap_length", scope: !6528, file: !3, line: 931, type: !306)
!6538 = !DILocalVariable(name: "wait_time", scope: !6528, file: !3, line: 932, type: !109)
!6539 = !DILocalVariable(name: "count", scope: !6528, file: !3, line: 932, type: !109)
!6540 = !DILocation(line: 927, column: 52, scope: !6528)
!6541 = !DILocation(line: 929, column: 2, scope: !6528)
!6542 = !DILocation(line: 929, column: 16, scope: !6528)
!6543 = !DILocation(line: 929, column: 23, scope: !6528)
!6544 = !DILocation(line: 930, column: 2, scope: !6528)
!6545 = !DILocation(line: 930, column: 6, scope: !6528)
!6546 = !DILocation(line: 930, column: 18, scope: !6528)
!6547 = !DILocation(line: 930, column: 23, scope: !6528)
!6548 = !DILocation(line: 931, column: 2, scope: !6528)
!6549 = !DILocation(line: 931, column: 5, scope: !6528)
!6550 = !DILocation(line: 931, column: 13, scope: !6528)
!6551 = !DILocation(line: 932, column: 2, scope: !6528)
!6552 = !DILocation(line: 932, column: 6, scope: !6528)
!6553 = !DILocation(line: 932, column: 17, scope: !6528)
!6554 = !DILocation(line: 934, column: 29, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 934, column: 6)
!6556 = !DILocation(line: 934, column: 7, scope: !6555)
!6557 = !DILocation(line: 934, column: 6, scope: !6528)
!6558 = !DILocation(line: 935, column: 3, scope: !6555)
!6559 = !DILocation(line: 937, column: 25, scope: !6528)
!6560 = !DILocation(line: 937, column: 9, scope: !6528)
!6561 = !DILocation(line: 937, column: 7, scope: !6528)
!6562 = !DILocation(line: 938, column: 6, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 938, column: 6)
!6564 = !DILocation(line: 938, column: 11, scope: !6563)
!6565 = !DILocation(line: 938, column: 6, scope: !6528)
!6566 = !DILocation(line: 939, column: 3, scope: !6563)
!6567 = !DILocation(line: 941, column: 21, scope: !6528)
!6568 = !DILocation(line: 941, column: 15, scope: !6528)
!6569 = !DILocation(line: 941, column: 13, scope: !6528)
!6570 = !DILocation(line: 942, column: 16, scope: !6528)
!6571 = !DILocation(line: 942, column: 23, scope: !6528)
!6572 = !DILocation(line: 942, column: 21, scope: !6528)
!6573 = !DILocation(line: 942, column: 14, scope: !6528)
!6574 = !DILocation(line: 948, column: 21, scope: !6528)
!6575 = !DILocation(line: 948, column: 26, scope: !6528)
!6576 = !DILocation(line: 948, column: 15, scope: !6528)
!6577 = !DILocation(line: 948, column: 13, scope: !6528)
!6578 = !DILocation(line: 955, column: 6, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 955, column: 6)
!6580 = !DILocation(line: 955, column: 12, scope: !6579)
!6581 = !DILocation(line: 955, column: 19, scope: !6579)
!6582 = !DILocation(line: 955, column: 45, scope: !6579)
!6583 = !DILocation(line: 955, column: 48, scope: !6579)
!6584 = !DILocation(line: 955, column: 54, scope: !6579)
!6585 = !DILocation(line: 955, column: 61, scope: !6579)
!6586 = !DILocation(line: 955, column: 6, scope: !6528)
!6587 = !DILocation(line: 956, column: 14, scope: !6579)
!6588 = !DILocation(line: 956, column: 3, scope: !6579)
!6589 = !DILocation(line: 958, column: 12, scope: !6528)
!6590 = !DILocation(line: 958, column: 23, scope: !6528)
!6591 = !DILocation(line: 958, column: 29, scope: !6528)
!6592 = !DILocation(line: 958, column: 11, scope: !6528)
!6593 = !DILocation(line: 958, column: 9, scope: !6528)
!6594 = !DILocation(line: 959, column: 2, scope: !6528)
!6595 = !DILocation(line: 959, column: 9, scope: !6528)
!6596 = !DILocation(line: 959, column: 16, scope: !6528)
!6597 = !DILocation(line: 959, column: 19, scope: !6528)
!6598 = !DILocation(line: 0, scope: !6528)
!6599 = !DILocation(line: 960, column: 25, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 959, column: 28)
!6601 = !DILocation(line: 960, column: 31, scope: !6600)
!6602 = !DILocation(line: 960, column: 3, scope: !6600)
!6603 = !DILocation(line: 962, column: 11, scope: !6600)
!6604 = !DILocation(line: 962, column: 15, scope: !6600)
!6605 = !DILocation(line: 962, column: 3, scope: !6600)
!6606 = !DILocation(line: 964, column: 22, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6600, file: !3, line: 962, column: 23)
!6608 = !DILocation(line: 964, column: 28, scope: !6607)
!6609 = !DILocation(line: 964, column: 41, scope: !6607)
!6610 = !DILocation(line: 964, column: 46, scope: !6607)
!6611 = !DILocation(line: 964, column: 4, scope: !6607)
!6612 = !DILocation(line: 965, column: 4, scope: !6607)
!6613 = !DILocation(line: 967, column: 8, scope: !6607)
!6614 = !DILocation(line: 967, column: 4, scope: !6607)
!6615 = !DILocation(line: 970, column: 4, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 970, column: 4)
!6617 = !DILocation(line: 970, column: 4, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6616, file: !3, line: 970, column: 4)
!6619 = !DILocation(line: 973, column: 3, scope: !6607)
!6620 = !DILocation(line: 974, column: 13, scope: !6600)
!6621 = !DILocation(line: 974, column: 17, scope: !6600)
!6622 = !DILocation(line: 974, column: 23, scope: !6600)
!6623 = !DILocation(line: 974, column: 12, scope: !6600)
!6624 = !DILocation(line: 974, column: 10, scope: !6600)
!6625 = distinct !{!6625, !6594, !6626, !5576, !5577}
!6626 = !DILocation(line: 975, column: 2, scope: !6528)
!6627 = !DILocation(line: 976, column: 7, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 976, column: 6)
!6629 = !DILocation(line: 976, column: 6, scope: !6528)
!6630 = !DILocation(line: 977, column: 3, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6628, file: !3, line: 977, column: 3)
!6632 = !DILocation(line: 977, column: 3, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6631, file: !3, line: 977, column: 3)
!6634 = !DILocation(line: 977, column: 3, scope: !6628)
!6635 = !DILocation(line: 982, column: 14, scope: !6528)
!6636 = !DILocation(line: 982, column: 26, scope: !6528)
!6637 = !DILocation(line: 982, column: 8, scope: !6528)
!6638 = !DILocation(line: 982, column: 6, scope: !6528)
!6639 = !DILocation(line: 983, column: 7, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 983, column: 6)
!6641 = !DILocation(line: 983, column: 11, scope: !6640)
!6642 = !DILocation(line: 983, column: 33, scope: !6640)
!6643 = !DILocation(line: 983, column: 6, scope: !6528)
!6644 = !DILocation(line: 984, column: 15, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6640, file: !3, line: 983, column: 39)
!6646 = !DILocation(line: 984, column: 27, scope: !6645)
!6647 = !DILocation(line: 984, column: 9, scope: !6645)
!6648 = !DILocation(line: 984, column: 7, scope: !6645)
!6649 = !DILocation(line: 985, column: 7, scope: !6645)
!6650 = !DILocation(line: 986, column: 10, scope: !6645)
!6651 = !DILocation(line: 986, column: 15, scope: !6645)
!6652 = !DILocation(line: 986, column: 27, scope: !6645)
!6653 = !DILocation(line: 986, column: 3, scope: !6645)
!6654 = !DILocation(line: 988, column: 13, scope: !6645)
!6655 = !DILocation(line: 989, column: 3, scope: !6645)
!6656 = !DILocation(line: 990, column: 17, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 989, column: 6)
!6658 = !DILocation(line: 990, column: 29, scope: !6657)
!6659 = !DILocation(line: 990, column: 4, scope: !6657)
!6660 = !DILocation(line: 991, column: 4, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6662, file: !3, line: 991, column: 4)
!6662 = distinct !DILexicalBlock(scope: !6663, file: !3, line: 991, column: 4)
!6663 = distinct !DILexicalBlock(scope: !6664, file: !3, line: 991, column: 4)
!6664 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 991, column: 4)
!6665 = !DILocation(line: 992, column: 14, scope: !6657)
!6666 = !DILocation(line: 993, column: 16, scope: !6657)
!6667 = !DILocation(line: 993, column: 28, scope: !6657)
!6668 = !DILocation(line: 993, column: 10, scope: !6657)
!6669 = !DILocation(line: 993, column: 8, scope: !6657)
!6670 = !DILocation(line: 994, column: 9, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 994, column: 8)
!6672 = !DILocation(line: 994, column: 13, scope: !6671)
!6673 = !DILocation(line: 994, column: 25, scope: !6671)
!6674 = !DILocation(line: 994, column: 29, scope: !6671)
!6675 = !DILocation(line: 994, column: 33, scope: !6671)
!6676 = !DILocation(line: 994, column: 8, scope: !6657)
!6677 = !DILocation(line: 995, column: 5, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6671, file: !3, line: 994, column: 56)
!6679 = !DILocation(line: 997, column: 3, scope: !6657)
!6680 = !DILocation(line: 997, column: 12, scope: !6645)
!6681 = !DILocation(line: 997, column: 22, scope: !6645)
!6682 = distinct !{!6682, !6655, !6683, !5576, !5577}
!6683 = !DILocation(line: 997, column: 25, scope: !6645)
!6684 = !DILocation(line: 998, column: 2, scope: !6645)
!6685 = !DILocation(line: 999, column: 12, scope: !6528)
!6686 = !DILocation(line: 999, column: 24, scope: !6528)
!6687 = !DILocation(line: 999, column: 2, scope: !6528)
!6688 = !DILocation(line: 1000, column: 15, scope: !6528)
!6689 = !DILocation(line: 1000, column: 27, scope: !6528)
!6690 = !DILocation(line: 1000, column: 2, scope: !6528)
!6691 = !DILocation(line: 1002, column: 10, scope: !6528)
!6692 = !DILocation(line: 1002, column: 2, scope: !6528)
!6693 = !DILocation(line: 1003, column: 1, scope: !6528)
!6694 = distinct !DISubprogram(name: "quirk_usb_handoff_xhci", scope: !3, file: !3, line: 1146, type: !4732, scopeLine: 1147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6695)
!6695 = !{!6696, !6697, !6698, !6699, !6700, !6701, !6702, !6703, !6704}
!6696 = !DILocalVariable(name: "pdev", arg: 1, scope: !6694, file: !3, line: 1146, type: !165)
!6697 = !DILocalVariable(name: "base", scope: !6694, file: !3, line: 1148, type: !164)
!6698 = !DILocalVariable(name: "ext_cap_offset", scope: !6694, file: !3, line: 1149, type: !109)
!6699 = !DILocalVariable(name: "op_reg_base", scope: !6694, file: !3, line: 1150, type: !164)
!6700 = !DILocalVariable(name: "val", scope: !6694, file: !3, line: 1151, type: !236)
!6701 = !DILocalVariable(name: "timeout", scope: !6694, file: !3, line: 1152, type: !109)
!6702 = !DILocalVariable(name: "len", scope: !6694, file: !3, line: 1153, type: !109)
!6703 = !DILabel(scope: !6694, name: "hc_init", file: !3, line: 1211)
!6704 = !DILabel(scope: !6694, name: "iounmap", file: !3, line: 1245)
!6705 = !DILocation(line: 1146, column: 52, scope: !6694)
!6706 = !DILocation(line: 1148, column: 2, scope: !6694)
!6707 = !DILocation(line: 1148, column: 16, scope: !6694)
!6708 = !DILocation(line: 1149, column: 2, scope: !6694)
!6709 = !DILocation(line: 1149, column: 6, scope: !6694)
!6710 = !DILocation(line: 1150, column: 2, scope: !6694)
!6711 = !DILocation(line: 1150, column: 16, scope: !6694)
!6712 = !DILocation(line: 1151, column: 2, scope: !6694)
!6713 = !DILocation(line: 1151, column: 6, scope: !6694)
!6714 = !DILocation(line: 1152, column: 2, scope: !6694)
!6715 = !DILocation(line: 1152, column: 6, scope: !6694)
!6716 = !DILocation(line: 1153, column: 2, scope: !6694)
!6717 = !DILocation(line: 1153, column: 6, scope: !6694)
!6718 = !DILocation(line: 1153, column: 12, scope: !6694)
!6719 = !DILocation(line: 1155, column: 29, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 1155, column: 6)
!6721 = !DILocation(line: 1155, column: 7, scope: !6720)
!6722 = !DILocation(line: 1155, column: 6, scope: !6694)
!6723 = !DILocation(line: 1156, column: 3, scope: !6720)
!6724 = !DILocation(line: 1158, column: 17, scope: !6694)
!6725 = !DILocation(line: 1158, column: 46, scope: !6694)
!6726 = !DILocation(line: 1158, column: 9, scope: !6694)
!6727 = !DILocation(line: 1158, column: 7, scope: !6694)
!6728 = !DILocation(line: 1159, column: 6, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 1159, column: 6)
!6730 = !DILocation(line: 1159, column: 11, scope: !6729)
!6731 = !DILocation(line: 1159, column: 6, scope: !6694)
!6732 = !DILocation(line: 1160, column: 3, scope: !6729)
!6733 = !DILocation(line: 1166, column: 42, scope: !6694)
!6734 = !DILocation(line: 1166, column: 19, scope: !6694)
!6735 = !DILocation(line: 1166, column: 17, scope: !6694)
!6736 = !DILocation(line: 1168, column: 7, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 1168, column: 6)
!6738 = !DILocation(line: 1168, column: 6, scope: !6694)
!6739 = !DILocation(line: 1169, column: 3, scope: !6737)
!6740 = !DILocation(line: 1171, column: 7, scope: !6741)
!6741 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 1171, column: 6)
!6742 = !DILocation(line: 1171, column: 22, scope: !6741)
!6743 = !DILocation(line: 1171, column: 39, scope: !6741)
!6744 = !DILocation(line: 1171, column: 37, scope: !6741)
!6745 = !DILocation(line: 1171, column: 6, scope: !6694)
!6746 = !DILocation(line: 1173, column: 3, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6748, file: !3, line: 1173, column: 3)
!6748 = distinct !DILexicalBlock(scope: !6741, file: !3, line: 1171, column: 44)
!6749 = !DILocation(line: 1173, column: 3, scope: !6750)
!6750 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 1173, column: 3)
!6751 = !DILocation(line: 1174, column: 3, scope: !6748)
!6752 = !DILocation(line: 1176, column: 14, scope: !6694)
!6753 = !DILocation(line: 1176, column: 21, scope: !6694)
!6754 = !DILocation(line: 1176, column: 19, scope: !6694)
!6755 = !DILocation(line: 1176, column: 8, scope: !6694)
!6756 = !DILocation(line: 1176, column: 6, scope: !6694)
!6757 = !DILocation(line: 1179, column: 7, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 1179, column: 6)
!6759 = !DILocation(line: 1179, column: 13, scope: !6758)
!6760 = !DILocation(line: 1179, column: 20, scope: !6758)
!6761 = !DILocation(line: 1179, column: 40, scope: !6758)
!6762 = !DILocation(line: 1179, column: 43, scope: !6758)
!6763 = !DILocation(line: 1179, column: 49, scope: !6758)
!6764 = !DILocation(line: 1179, column: 56, scope: !6758)
!6765 = !DILocation(line: 1179, column: 67, scope: !6758)
!6766 = !DILocation(line: 1180, column: 5, scope: !6758)
!6767 = !DILocation(line: 1180, column: 11, scope: !6758)
!6768 = !DILocation(line: 1180, column: 18, scope: !6758)
!6769 = !DILocation(line: 1181, column: 5, scope: !6758)
!6770 = !DILocation(line: 1181, column: 8, scope: !6758)
!6771 = !DILocation(line: 1181, column: 14, scope: !6758)
!6772 = !DILocation(line: 1181, column: 21, scope: !6758)
!6773 = !DILocation(line: 1179, column: 6, scope: !6694)
!6774 = !DILocation(line: 1182, column: 10, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6758, file: !3, line: 1181, column: 33)
!6776 = !DILocation(line: 1182, column: 14, scope: !6775)
!6777 = !DILocation(line: 1182, column: 34, scope: !6775)
!6778 = !DILocation(line: 1182, column: 7, scope: !6775)
!6779 = !DILocation(line: 1183, column: 10, scope: !6775)
!6780 = !DILocation(line: 1183, column: 15, scope: !6775)
!6781 = !DILocation(line: 1183, column: 22, scope: !6775)
!6782 = !DILocation(line: 1183, column: 20, scope: !6775)
!6783 = !DILocation(line: 1183, column: 3, scope: !6775)
!6784 = !DILocation(line: 1184, column: 2, scope: !6775)
!6785 = !DILocation(line: 1187, column: 6, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 1187, column: 6)
!6787 = !DILocation(line: 1187, column: 10, scope: !6786)
!6788 = !DILocation(line: 1187, column: 6, scope: !6694)
!6789 = !DILocation(line: 1188, column: 10, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6786, file: !3, line: 1187, column: 32)
!6791 = !DILocation(line: 1188, column: 14, scope: !6790)
!6792 = !DILocation(line: 1188, column: 34, scope: !6790)
!6793 = !DILocation(line: 1188, column: 41, scope: !6790)
!6794 = !DILocation(line: 1188, column: 39, scope: !6790)
!6795 = !DILocation(line: 1188, column: 3, scope: !6790)
!6796 = !DILocation(line: 1191, column: 23, scope: !6790)
!6797 = !DILocation(line: 1191, column: 30, scope: !6790)
!6798 = !DILocation(line: 1191, column: 28, scope: !6790)
!6799 = !DILocation(line: 1191, column: 13, scope: !6790)
!6800 = !DILocation(line: 1191, column: 11, scope: !6790)
!6801 = !DILocation(line: 1195, column: 7, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6790, file: !3, line: 1195, column: 7)
!6803 = !DILocation(line: 1195, column: 7, scope: !6790)
!6804 = !DILocation(line: 1196, column: 4, scope: !6805)
!6805 = distinct !DILexicalBlock(scope: !6806, file: !3, line: 1196, column: 4)
!6806 = distinct !DILexicalBlock(scope: !6802, file: !3, line: 1195, column: 16)
!6807 = !DILocation(line: 1196, column: 4, scope: !6808)
!6808 = distinct !DILexicalBlock(scope: !6805, file: !3, line: 1196, column: 4)
!6809 = !DILocation(line: 1199, column: 11, scope: !6806)
!6810 = !DILocation(line: 1199, column: 15, scope: !6806)
!6811 = !DILocation(line: 1199, column: 38, scope: !6806)
!6812 = !DILocation(line: 1199, column: 45, scope: !6806)
!6813 = !DILocation(line: 1199, column: 43, scope: !6806)
!6814 = !DILocation(line: 1199, column: 4, scope: !6806)
!6815 = !DILocation(line: 1200, column: 3, scope: !6806)
!6816 = !DILocation(line: 1201, column: 2, scope: !6790)
!6817 = !DILocation(line: 1203, column: 14, scope: !6694)
!6818 = !DILocation(line: 1203, column: 21, scope: !6694)
!6819 = !DILocation(line: 1203, column: 19, scope: !6694)
!6820 = !DILocation(line: 1203, column: 36, scope: !6694)
!6821 = !DILocation(line: 1203, column: 8, scope: !6694)
!6822 = !DILocation(line: 1203, column: 6, scope: !6694)
!6823 = !DILocation(line: 1205, column: 6, scope: !6694)
!6824 = !DILocation(line: 1207, column: 6, scope: !6694)
!6825 = !DILocation(line: 1209, column: 9, scope: !6694)
!6826 = !DILocation(line: 1209, column: 14, scope: !6694)
!6827 = !DILocation(line: 1209, column: 21, scope: !6694)
!6828 = !DILocation(line: 1209, column: 19, scope: !6694)
!6829 = !DILocation(line: 1209, column: 36, scope: !6694)
!6830 = !DILocation(line: 1209, column: 2, scope: !6694)
!6831 = !DILocation(line: 1211, column: 1, scope: !6694)
!6832 = !DILocation(line: 1212, column: 6, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 1212, column: 6)
!6834 = !DILocation(line: 1212, column: 12, scope: !6833)
!6835 = !DILocation(line: 1212, column: 19, scope: !6833)
!6836 = !DILocation(line: 1212, column: 6, scope: !6694)
!6837 = !DILocation(line: 1213, column: 31, scope: !6833)
!6838 = !DILocation(line: 1213, column: 3, scope: !6833)
!6839 = !DILocation(line: 1215, column: 16, scope: !6694)
!6840 = !DILocation(line: 1215, column: 23, scope: !6694)
!6841 = !DILocation(line: 1215, column: 21, scope: !6694)
!6842 = !DILocation(line: 1215, column: 14, scope: !6694)
!6843 = !DILocation(line: 1220, column: 22, scope: !6694)
!6844 = !DILocation(line: 1220, column: 34, scope: !6694)
!6845 = !DILocation(line: 1220, column: 12, scope: !6694)
!6846 = !DILocation(line: 1220, column: 10, scope: !6694)
!6847 = !DILocation(line: 1223, column: 6, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 1223, column: 6)
!6849 = !DILocation(line: 1223, column: 6, scope: !6694)
!6850 = !DILocation(line: 1224, column: 15, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6848, file: !3, line: 1223, column: 15)
!6852 = !DILocation(line: 1224, column: 27, scope: !6851)
!6853 = !DILocation(line: 1224, column: 9, scope: !6851)
!6854 = !DILocation(line: 1224, column: 7, scope: !6851)
!6855 = !DILocation(line: 1225, column: 3, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6851, file: !3, line: 1225, column: 3)
!6857 = !DILocation(line: 1225, column: 3, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6856, file: !3, line: 1225, column: 3)
!6859 = !DILocation(line: 1228, column: 2, scope: !6851)
!6860 = !DILocation(line: 1231, column: 14, scope: !6694)
!6861 = !DILocation(line: 1231, column: 26, scope: !6694)
!6862 = !DILocation(line: 1231, column: 8, scope: !6694)
!6863 = !DILocation(line: 1231, column: 6, scope: !6694)
!6864 = !DILocation(line: 1232, column: 6, scope: !6694)
!6865 = !DILocation(line: 1233, column: 9, scope: !6694)
!6866 = !DILocation(line: 1233, column: 14, scope: !6694)
!6867 = !DILocation(line: 1233, column: 26, scope: !6694)
!6868 = !DILocation(line: 1233, column: 2, scope: !6694)
!6869 = !DILocation(line: 1236, column: 22, scope: !6694)
!6870 = !DILocation(line: 1236, column: 34, scope: !6694)
!6871 = !DILocation(line: 1236, column: 12, scope: !6694)
!6872 = !DILocation(line: 1236, column: 10, scope: !6694)
!6873 = !DILocation(line: 1238, column: 6, scope: !6874)
!6874 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 1238, column: 6)
!6875 = !DILocation(line: 1238, column: 6, scope: !6694)
!6876 = !DILocation(line: 1239, column: 15, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6874, file: !3, line: 1238, column: 15)
!6878 = !DILocation(line: 1239, column: 27, scope: !6877)
!6879 = !DILocation(line: 1239, column: 9, scope: !6877)
!6880 = !DILocation(line: 1239, column: 7, scope: !6877)
!6881 = !DILocation(line: 1240, column: 3, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6877, file: !3, line: 1240, column: 3)
!6883 = !DILocation(line: 1240, column: 3, scope: !6884)
!6884 = distinct !DILexicalBlock(scope: !6882, file: !3, line: 1240, column: 3)
!6885 = !DILocation(line: 1243, column: 2, scope: !6877)
!6886 = !DILocation(line: 1245, column: 1, scope: !6694)
!6887 = !DILocation(line: 1246, column: 10, scope: !6694)
!6888 = !DILocation(line: 1246, column: 2, scope: !6694)
!6889 = !DILocation(line: 1247, column: 1, scope: !6694)
!6890 = !DISubprogram(name: "pci_disable_device", scope: !167, file: !167, line: 1316, type: !4732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6891 = distinct !DISubprogram(name: "io_type_enabled", scope: !3, file: !3, line: 715, type: !6892, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6894)
!6892 = !DISubroutineType(types: !6893)
!6893 = !{!109, !165, !7}
!6894 = !{!6895, !6896, !6897}
!6895 = !DILocalVariable(name: "pdev", arg: 1, scope: !6891, file: !3, line: 715, type: !165)
!6896 = !DILocalVariable(name: "mask", arg: 2, scope: !6891, file: !3, line: 715, type: !7)
!6897 = !DILocalVariable(name: "cmd", scope: !6891, file: !3, line: 717, type: !313)
!6898 = !DILocation(line: 715, column: 51, scope: !6891)
!6899 = !DILocation(line: 715, column: 70, scope: !6891)
!6900 = !DILocation(line: 717, column: 2, scope: !6891)
!6901 = !DILocation(line: 717, column: 6, scope: !6891)
!6902 = !DILocation(line: 718, column: 31, scope: !6891)
!6903 = !DILocation(line: 718, column: 10, scope: !6891)
!6904 = !DILocation(line: 718, column: 56, scope: !6891)
!6905 = !DILocation(line: 718, column: 60, scope: !6891)
!6906 = !DILocation(line: 718, column: 66, scope: !6891)
!6907 = !DILocation(line: 718, column: 64, scope: !6891)
!6908 = !DILocation(line: 0, scope: !6891)
!6909 = !DILocation(line: 719, column: 1, scope: !6891)
!6910 = !DILocation(line: 718, column: 2, scope: !6891)
!6911 = distinct !DISubprogram(name: "mmio_resource_enabled", scope: !3, file: !3, line: 742, type: !4745, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6912)
!6912 = !{!6913, !6914}
!6913 = !DILocalVariable(name: "pdev", arg: 1, scope: !6911, file: !3, line: 742, type: !165)
!6914 = !DILocalVariable(name: "idx", arg: 2, scope: !6911, file: !3, line: 742, type: !109)
!6915 = !DILocation(line: 742, column: 50, scope: !6911)
!6916 = !DILocation(line: 742, column: 60, scope: !6911)
!6917 = !DILocation(line: 744, column: 9, scope: !6911)
!6918 = !DILocation(line: 744, column: 39, scope: !6911)
!6919 = !DILocation(line: 744, column: 42, scope: !6911)
!6920 = !DILocation(line: 0, scope: !6911)
!6921 = !DILocation(line: 744, column: 2, scope: !6911)
!6922 = !DISubprogram(name: "pci_ioremap_bar", scope: !167, file: !167, line: 2322, type: !6923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6923 = !DISubroutineType(types: !6924)
!6924 = !{!164, !165, !109}
!6925 = distinct !DISubprogram(name: "readl", scope: !6248, file: !6248, line: 58, type: !6926, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6931)
!6926 = !DISubroutineType(types: !6927)
!6927 = !{!7, !6928}
!6928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6929, size: 64)
!6929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6930)
!6930 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6931 = !{!6932, !6933}
!6932 = !DILocalVariable(name: "addr", arg: 1, scope: !6925, file: !6248, line: 58, type: !6928)
!6933 = !DILocalVariable(name: "ret", scope: !6925, file: !6248, line: 58, type: !7)
!6934 = !DILocation(line: 58, column: 1, scope: !6925)
!6935 = !{i64 2152808793}
!6936 = distinct !DISubprogram(name: "writel", scope: !6248, file: !6248, line: 66, type: !6937, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6940)
!6937 = !DISubroutineType(types: !6938)
!6938 = !{null, !7, !6939}
!6939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6930, size: 64)
!6940 = !{!6941, !6942}
!6941 = !DILocalVariable(name: "val", arg: 1, scope: !6936, file: !6248, line: 66, type: !7)
!6942 = !DILocalVariable(name: "addr", arg: 2, scope: !6936, file: !6248, line: 66, type: !6939)
!6943 = !DILocation(line: 66, column: 1, scope: !6936)
!6944 = !{i64 2152811186}
!6945 = !DISubprogram(name: "msleep", scope: !6946, file: !6946, line: 61, type: !6947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6946 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!6947 = !DISubroutineType(types: !6948)
!6948 = !{null, !7}
!6949 = !DISubprogram(name: "iounmap", scope: !6248, file: !6248, line: 199, type: !6950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6950 = !DISubroutineType(types: !6951)
!6951 = !{null, !6939}
!6952 = distinct !DISubprogram(name: "readb", scope: !6248, file: !6248, line: 56, type: !6953, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6955)
!6953 = !DISubroutineType(types: !6954)
!6954 = !{!248, !6928}
!6955 = !{!6956, !6957}
!6956 = !DILocalVariable(name: "addr", arg: 1, scope: !6952, file: !6248, line: 56, type: !6928)
!6957 = !DILocalVariable(name: "ret", scope: !6952, file: !6248, line: 56, type: !248)
!6958 = !DILocation(line: 56, column: 1, scope: !6952)
!6959 = !{i64 2152807962}
!6960 = distinct !DISubprogram(name: "ehci_bios_handoff", scope: !3, file: !3, line: 853, type: !6961, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6963)
!6961 = !DISubroutineType(types: !6962)
!6962 = !{null, !165, !164, !236, !306}
!6963 = !{!6964, !6965, !6966, !6967, !6968, !6969, !6970}
!6964 = !DILocalVariable(name: "pdev", arg: 1, scope: !6960, file: !3, line: 853, type: !165)
!6965 = !DILocalVariable(name: "op_reg_base", arg: 2, scope: !6960, file: !3, line: 854, type: !164)
!6966 = !DILocalVariable(name: "cap", arg: 3, scope: !6960, file: !3, line: 855, type: !236)
!6967 = !DILocalVariable(name: "offset", arg: 4, scope: !6960, file: !3, line: 855, type: !306)
!6968 = !DILocalVariable(name: "try_handoff", scope: !6960, file: !3, line: 857, type: !109)
!6969 = !DILocalVariable(name: "tried_handoff", scope: !6960, file: !3, line: 857, type: !109)
!6970 = !DILocalVariable(name: "msec", scope: !6971, file: !3, line: 897, type: !109)
!6971 = distinct !DILexicalBlock(scope: !6972, file: !3, line: 896, column: 19)
!6972 = distinct !DILexicalBlock(scope: !6960, file: !3, line: 896, column: 6)
!6973 = !DILocation(line: 853, column: 47, scope: !6960)
!6974 = !DILocation(line: 854, column: 20, scope: !6960)
!6975 = !DILocation(line: 855, column: 10, scope: !6960)
!6976 = !DILocation(line: 855, column: 18, scope: !6960)
!6977 = !DILocation(line: 857, column: 2, scope: !6960)
!6978 = !DILocation(line: 857, column: 6, scope: !6960)
!6979 = !DILocation(line: 857, column: 23, scope: !6960)
!6980 = !DILocation(line: 865, column: 6, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6960, file: !3, line: 865, column: 6)
!6982 = !DILocation(line: 865, column: 12, scope: !6981)
!6983 = !DILocation(line: 865, column: 19, scope: !6981)
!6984 = !DILocation(line: 865, column: 29, scope: !6981)
!6985 = !DILocation(line: 865, column: 33, scope: !6981)
!6986 = !DILocation(line: 865, column: 39, scope: !6981)
!6987 = !DILocation(line: 865, column: 46, scope: !6981)
!6988 = !DILocation(line: 865, column: 56, scope: !6981)
!6989 = !DILocation(line: 866, column: 4, scope: !6981)
!6990 = !DILocation(line: 866, column: 10, scope: !6981)
!6991 = !DILocation(line: 866, column: 17, scope: !6981)
!6992 = !DILocation(line: 865, column: 6, scope: !6960)
!6993 = !DILocation(line: 867, column: 7, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6995, file: !3, line: 867, column: 7)
!6995 = distinct !DILexicalBlock(scope: !6981, file: !3, line: 866, column: 29)
!6996 = !DILocation(line: 867, column: 7, scope: !6995)
!6997 = !DILocation(line: 868, column: 16, scope: !6994)
!6998 = !DILocation(line: 868, column: 4, scope: !6994)
!6999 = !DILocation(line: 869, column: 2, scope: !6995)
!7000 = !DILocation(line: 871, column: 6, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6960, file: !3, line: 871, column: 6)
!7002 = !DILocation(line: 871, column: 18, scope: !7001)
!7003 = !DILocation(line: 871, column: 22, scope: !7001)
!7004 = !DILocation(line: 871, column: 26, scope: !7001)
!7005 = !DILocation(line: 871, column: 6, scope: !6960)
!7006 = !DILocation(line: 892, column: 25, scope: !7007)
!7007 = distinct !DILexicalBlock(scope: !7001, file: !3, line: 871, column: 50)
!7008 = !DILocation(line: 892, column: 31, scope: !7007)
!7009 = !DILocation(line: 892, column: 38, scope: !7007)
!7010 = !DILocation(line: 892, column: 3, scope: !7007)
!7011 = !DILocation(line: 893, column: 2, scope: !7007)
!7012 = !DILocation(line: 896, column: 6, scope: !6972)
!7013 = !DILocation(line: 896, column: 6, scope: !6960)
!7014 = !DILocation(line: 897, column: 3, scope: !6971)
!7015 = !DILocation(line: 897, column: 7, scope: !6971)
!7016 = !DILocation(line: 898, column: 3, scope: !6971)
!7017 = !DILocation(line: 898, column: 11, scope: !6971)
!7018 = !DILocation(line: 898, column: 15, scope: !6971)
!7019 = !DILocation(line: 898, column: 38, scope: !6971)
!7020 = !DILocation(line: 898, column: 42, scope: !6971)
!7021 = !DILocation(line: 898, column: 47, scope: !6971)
!7022 = !DILocation(line: 0, scope: !6971)
!7023 = !DILocation(line: 899, column: 18, scope: !7024)
!7024 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 898, column: 53)
!7025 = !DILocation(line: 900, column: 4, scope: !7024)
!7026 = !DILocation(line: 901, column: 9, scope: !7024)
!7027 = !DILocation(line: 902, column: 26, scope: !7024)
!7028 = !DILocation(line: 902, column: 32, scope: !7024)
!7029 = !DILocation(line: 902, column: 4, scope: !7024)
!7030 = distinct !{!7030, !7016, !7031, !5576, !5577}
!7031 = !DILocation(line: 903, column: 3, scope: !6971)
!7032 = !DILocation(line: 904, column: 2, scope: !6972)
!7033 = !DILocation(line: 904, column: 2, scope: !6971)
!7034 = !DILocation(line: 906, column: 6, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !6960, file: !3, line: 906, column: 6)
!7036 = !DILocation(line: 906, column: 10, scope: !7035)
!7037 = !DILocation(line: 906, column: 6, scope: !6960)
!7038 = !DILocation(line: 910, column: 7, scope: !7039)
!7039 = distinct !DILexicalBlock(scope: !7040, file: !3, line: 910, column: 7)
!7040 = distinct !DILexicalBlock(scope: !7035, file: !3, line: 906, column: 33)
!7041 = !DILocation(line: 910, column: 7, scope: !7040)
!7042 = !DILocation(line: 911, column: 4, scope: !7043)
!7043 = distinct !DILexicalBlock(scope: !7039, file: !3, line: 911, column: 4)
!7044 = !DILocation(line: 911, column: 4, scope: !7045)
!7045 = distinct !DILexicalBlock(scope: !7043, file: !3, line: 911, column: 4)
!7046 = !DILocation(line: 911, column: 4, scope: !7039)
!7047 = !DILocation(line: 914, column: 25, scope: !7040)
!7048 = !DILocation(line: 914, column: 31, scope: !7040)
!7049 = !DILocation(line: 914, column: 38, scope: !7040)
!7050 = !DILocation(line: 914, column: 3, scope: !7040)
!7051 = !DILocation(line: 915, column: 2, scope: !7040)
!7052 = !DILocation(line: 918, column: 25, scope: !6960)
!7053 = !DILocation(line: 918, column: 31, scope: !6960)
!7054 = !DILocation(line: 918, column: 38, scope: !6960)
!7055 = !DILocation(line: 918, column: 2, scope: !6960)
!7056 = !DILocation(line: 923, column: 6, scope: !7057)
!7057 = distinct !DILexicalBlock(scope: !6960, file: !3, line: 923, column: 6)
!7058 = !DILocation(line: 923, column: 6, scope: !6960)
!7059 = !DILocation(line: 924, column: 13, scope: !7057)
!7060 = !DILocation(line: 924, column: 25, scope: !7057)
!7061 = !DILocation(line: 924, column: 3, scope: !7057)
!7062 = !DILocation(line: 925, column: 1, scope: !6960)
!7063 = !DISubprogram(name: "_dev_printk", scope: !5862, file: !5862, line: 41, type: !7064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7064 = !DISubroutineType(types: !7065)
!7065 = !{null, !202, !4203, !202, null}
!7066 = !DISubprogram(name: "dmi_check_system", scope: !7067, file: !7067, line: 100, type: !5010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7067 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!7068 = distinct !DISubprogram(name: "resource_size", scope: !190, file: !190, line: 219, type: !7069, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7073)
!7069 = !DISubroutineType(types: !7070)
!7070 = !{!193, !7071}
!7071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7072, size: 64)
!7072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!7073 = !{!7074}
!7074 = !DILocalVariable(name: "res", arg: 1, scope: !7068, file: !190, line: 219, type: !7071)
!7075 = !DILocation(line: 219, column: 68, scope: !7068)
!7076 = !DILocation(line: 221, column: 9, scope: !7068)
!7077 = !DILocation(line: 221, column: 14, scope: !7068)
!7078 = !DILocation(line: 221, column: 20, scope: !7068)
!7079 = !DILocation(line: 221, column: 25, scope: !7068)
!7080 = !DILocation(line: 221, column: 18, scope: !7068)
!7081 = !DILocation(line: 221, column: 31, scope: !7068)
!7082 = !DILocation(line: 221, column: 2, scope: !7068)
!7083 = !DISubprogram(name: "ioremap", scope: !6248, file: !6248, line: 196, type: !7084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7084 = !DISubroutineType(types: !7085)
!7085 = !{!164, !193, !206}
!7086 = distinct !DISubprogram(name: "xhci_find_next_ext_cap", scope: !7087, file: !7087, line: 98, type: !7088, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7090)
!7087 = !DIFile(filename: "drivers/usb/host/xhci-ext-caps.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8fb970fb3136df112a97dd2b90f84fd")
!7088 = !DISubroutineType(types: !7089)
!7089 = !{!109, !164, !236, !109}
!7090 = !{!7091, !7092, !7093, !7094, !7095, !7096}
!7091 = !DILocalVariable(name: "base", arg: 1, scope: !7086, file: !7087, line: 98, type: !164)
!7092 = !DILocalVariable(name: "start", arg: 2, scope: !7086, file: !7087, line: 98, type: !236)
!7093 = !DILocalVariable(name: "id", arg: 3, scope: !7086, file: !7087, line: 98, type: !109)
!7094 = !DILocalVariable(name: "val", scope: !7086, file: !7087, line: 100, type: !236)
!7095 = !DILocalVariable(name: "next", scope: !7086, file: !7087, line: 101, type: !236)
!7096 = !DILocalVariable(name: "offset", scope: !7086, file: !7087, line: 102, type: !236)
!7097 = !DILocation(line: 98, column: 56, scope: !7086)
!7098 = !DILocation(line: 98, column: 66, scope: !7086)
!7099 = !DILocation(line: 98, column: 77, scope: !7086)
!7100 = !DILocation(line: 100, column: 2, scope: !7086)
!7101 = !DILocation(line: 100, column: 6, scope: !7086)
!7102 = !DILocation(line: 101, column: 2, scope: !7086)
!7103 = !DILocation(line: 101, column: 6, scope: !7086)
!7104 = !DILocation(line: 102, column: 2, scope: !7086)
!7105 = !DILocation(line: 102, column: 6, scope: !7086)
!7106 = !DILocation(line: 104, column: 11, scope: !7086)
!7107 = !DILocation(line: 104, column: 9, scope: !7086)
!7108 = !DILocation(line: 105, column: 7, scope: !7109)
!7109 = distinct !DILexicalBlock(scope: !7086, file: !7087, line: 105, column: 6)
!7110 = !DILocation(line: 105, column: 13, scope: !7109)
!7111 = !DILocation(line: 105, column: 16, scope: !7109)
!7112 = !DILocation(line: 105, column: 22, scope: !7109)
!7113 = !DILocation(line: 105, column: 6, scope: !7086)
!7114 = !DILocation(line: 106, column: 15, scope: !7115)
!7115 = distinct !DILexicalBlock(scope: !7109, file: !7087, line: 105, column: 49)
!7116 = !DILocation(line: 106, column: 20, scope: !7115)
!7117 = !DILocation(line: 106, column: 9, scope: !7115)
!7118 = !DILocation(line: 106, column: 7, scope: !7115)
!7119 = !DILocation(line: 107, column: 7, scope: !7120)
!7120 = distinct !DILexicalBlock(scope: !7115, file: !7087, line: 107, column: 7)
!7121 = !DILocation(line: 107, column: 11, scope: !7120)
!7122 = !DILocation(line: 107, column: 7, scope: !7115)
!7123 = !DILocation(line: 108, column: 4, scope: !7120)
!7124 = !DILocation(line: 109, column: 12, scope: !7115)
!7125 = !DILocation(line: 109, column: 35, scope: !7115)
!7126 = !DILocation(line: 109, column: 10, scope: !7115)
!7127 = !DILocation(line: 110, column: 8, scope: !7128)
!7128 = distinct !DILexicalBlock(scope: !7115, file: !7087, line: 110, column: 7)
!7129 = !DILocation(line: 110, column: 7, scope: !7115)
!7130 = !DILocation(line: 111, column: 4, scope: !7128)
!7131 = !DILocation(line: 112, column: 2, scope: !7115)
!7132 = !DILocation(line: 113, column: 2, scope: !7086)
!7133 = !DILocation(line: 114, column: 15, scope: !7134)
!7134 = distinct !DILexicalBlock(scope: !7086, file: !7087, line: 113, column: 5)
!7135 = !DILocation(line: 114, column: 22, scope: !7134)
!7136 = !DILocation(line: 114, column: 20, scope: !7134)
!7137 = !DILocation(line: 114, column: 9, scope: !7134)
!7138 = !DILocation(line: 114, column: 7, scope: !7134)
!7139 = !DILocation(line: 115, column: 7, scope: !7140)
!7140 = distinct !DILexicalBlock(scope: !7134, file: !7087, line: 115, column: 7)
!7141 = !DILocation(line: 115, column: 11, scope: !7140)
!7142 = !DILocation(line: 115, column: 7, scope: !7134)
!7143 = !DILocation(line: 116, column: 4, scope: !7140)
!7144 = !DILocation(line: 117, column: 7, scope: !7145)
!7145 = distinct !DILexicalBlock(scope: !7134, file: !7087, line: 117, column: 7)
!7146 = !DILocation(line: 117, column: 17, scope: !7145)
!7147 = !DILocation(line: 117, column: 14, scope: !7145)
!7148 = !DILocation(line: 117, column: 23, scope: !7145)
!7149 = !DILocation(line: 117, column: 27, scope: !7145)
!7150 = !DILocation(line: 117, column: 30, scope: !7145)
!7151 = !DILocation(line: 117, column: 35, scope: !7145)
!7152 = !DILocation(line: 117, column: 38, scope: !7145)
!7153 = !DILocation(line: 117, column: 63, scope: !7145)
!7154 = !DILocation(line: 117, column: 60, scope: !7145)
!7155 = !DILocation(line: 117, column: 7, scope: !7134)
!7156 = !DILocation(line: 118, column: 11, scope: !7145)
!7157 = !DILocation(line: 118, column: 4, scope: !7145)
!7158 = !DILocation(line: 120, column: 10, scope: !7134)
!7159 = !DILocation(line: 120, column: 8, scope: !7134)
!7160 = !DILocation(line: 121, column: 13, scope: !7134)
!7161 = !DILocation(line: 121, column: 18, scope: !7134)
!7162 = !DILocation(line: 121, column: 10, scope: !7134)
!7163 = !DILocation(line: 122, column: 2, scope: !7134)
!7164 = !DILocation(line: 122, column: 11, scope: !7086)
!7165 = distinct !{!7165, !7132, !7166, !5576, !5577}
!7166 = !DILocation(line: 122, column: 15, scope: !7086)
!7167 = !DILocation(line: 124, column: 2, scope: !7086)
!7168 = !DILocation(line: 125, column: 1, scope: !7086)
!7169 = distinct !DISubprogram(name: "handshake", scope: !3, file: !3, line: 1018, type: !7170, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7172)
!7170 = !DISubroutineType(types: !7171)
!7171 = !{!109, !164, !236, !236, !109, !109}
!7172 = !{!7173, !7174, !7175, !7176, !7177, !7178, !7179, !7181, !7182, !7183}
!7173 = !DILocalVariable(name: "ptr", arg: 1, scope: !7169, file: !3, line: 1018, type: !164)
!7174 = !DILocalVariable(name: "mask", arg: 2, scope: !7169, file: !3, line: 1018, type: !236)
!7175 = !DILocalVariable(name: "done", arg: 3, scope: !7169, file: !3, line: 1018, type: !236)
!7176 = !DILocalVariable(name: "wait_usec", arg: 4, scope: !7169, file: !3, line: 1019, type: !109)
!7177 = !DILocalVariable(name: "delay_usec", arg: 5, scope: !7169, file: !3, line: 1019, type: !109)
!7178 = !DILocalVariable(name: "result", scope: !7169, file: !3, line: 1021, type: !236)
!7179 = !DILocalVariable(name: "__timeout_us", scope: !7180, file: !3, line: 1023, type: !195)
!7180 = distinct !DILexicalBlock(scope: !7169, file: !3, line: 1023, column: 9)
!7181 = !DILocalVariable(name: "__left_ns", scope: !7180, file: !3, line: 1023, type: !689)
!7182 = !DILocalVariable(name: "__delay_us", scope: !7180, file: !3, line: 1023, type: !206)
!7183 = !DILocalVariable(name: "__delay_ns", scope: !7180, file: !3, line: 1023, type: !195)
!7184 = !DILocation(line: 1018, column: 36, scope: !7169)
!7185 = !DILocation(line: 1018, column: 45, scope: !7169)
!7186 = !DILocation(line: 1018, column: 55, scope: !7169)
!7187 = !DILocation(line: 1019, column: 7, scope: !7169)
!7188 = !DILocation(line: 1019, column: 22, scope: !7169)
!7189 = !DILocation(line: 1021, column: 2, scope: !7169)
!7190 = !DILocation(line: 1021, column: 6, scope: !7169)
!7191 = !DILocation(line: 1023, column: 9, scope: !7180)
!7192 = !DILocation(line: 1023, column: 9, scope: !7193)
!7193 = distinct !DILexicalBlock(scope: !7194, file: !3, line: 1023, column: 9)
!7194 = distinct !DILexicalBlock(scope: !7195, file: !3, line: 1023, column: 9)
!7195 = distinct !DILexicalBlock(scope: !7180, file: !3, line: 1023, column: 9)
!7196 = !DILocation(line: 1023, column: 9, scope: !7197)
!7197 = distinct !DILexicalBlock(scope: !7193, file: !3, line: 1023, column: 9)
!7198 = !DILocation(line: 1023, column: 9, scope: !7199)
!7199 = distinct !DILexicalBlock(scope: !7193, file: !3, line: 1023, column: 9)
!7200 = !DILocation(line: 1023, column: 9, scope: !7201)
!7201 = distinct !DILexicalBlock(scope: !7199, file: !3, line: 1023, column: 9)
!7202 = !DILocation(line: 1023, column: 9, scope: !7203)
!7203 = distinct !DILexicalBlock(scope: !7193, file: !3, line: 1023, column: 9)
!7204 = !DILocation(line: 1023, column: 9, scope: !7205)
!7205 = distinct !DILexicalBlock(scope: !7206, file: !3, line: 1023, column: 9)
!7206 = distinct !DILexicalBlock(scope: !7207, file: !3, line: 1023, column: 9)
!7207 = distinct !DILexicalBlock(scope: !7203, file: !3, line: 1023, column: 9)
!7208 = !DILocation(line: 1023, column: 9, scope: !7206)
!7209 = !DILocation(line: 1023, column: 9, scope: !7210)
!7210 = distinct !DILexicalBlock(scope: !7211, file: !3, line: 1023, column: 9)
!7211 = distinct !DILexicalBlock(scope: !7205, file: !3, line: 1023, column: 9)
!7212 = !DILocation(line: 1023, column: 9, scope: !7211)
!7213 = !DILocation(line: 1023, column: 9, scope: !7214)
!7214 = distinct !DILexicalBlock(scope: !7205, file: !3, line: 1023, column: 9)
!7215 = !DILocation(line: 1023, column: 9, scope: !7216)
!7216 = distinct !DILexicalBlock(scope: !7207, file: !3, line: 1023, column: 9)
!7217 = !DILocation(line: 1023, column: 9, scope: !7207)
!7218 = !DILocation(line: 1023, column: 9, scope: !7219)
!7219 = distinct !DILexicalBlock(scope: !7193, file: !3, line: 1023, column: 9)
!7220 = !DILocation(line: 1023, column: 9, scope: !7194)
!7221 = distinct !{!7221, !7222, !7222, !5577}
!7222 = !DILocation(line: 1023, column: 9, scope: !7195)
!7223 = !DILocation(line: 1023, column: 9, scope: !7169)
!7224 = !DILocation(line: 1026, column: 1, scope: !7169)
!7225 = !DILocation(line: 1023, column: 2, scope: !7169)
!7226 = !DISubprogram(name: "__bad_udelay", scope: !5850, file: !5850, line: 6, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7227 = !DISubprogram(name: "__udelay", scope: !5850, file: !5850, line: 9, type: !5851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7228 = distinct !DISubprogram(name: "cpu_relax", scope: !7229, file: !7229, line: 16, type: !1042, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7229 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!7230 = !DILocation(line: 18, column: 2, scope: !7228)
!7231 = !DILocation(line: 19, column: 1, scope: !7228)
!7232 = distinct !DISubprogram(name: "rep_nop", scope: !7229, file: !7229, line: 11, type: !1042, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7233 = !DILocation(line: 13, column: 2, scope: !7232)
!7234 = !{i64 2220793}
!7235 = !DILocation(line: 14, column: 1, scope: !7232)
