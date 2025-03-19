; ModuleID = 'drivers/pci/msi/irqdomain.c'
source_filename = "drivers/pci/msi/irqdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_msi_create_irq_domain: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_msi_create_irq_domain ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_create_ims_domain: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_create_ims_domain ; .previous"

%struct.msi_domain_template = type { [48 x i8], %struct.irq_chip, %struct.msi_domain_ops, %struct.msi_domain_info }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.17, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
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
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.17 = type { ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, %struct.mutex, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, i32, %struct.xarray, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_parent_ops = type { i32, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.irq_alloc_info = type { i32, i32, i32, i64, ptr, ptr, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.uv_alloc_info }
%struct.uv_alloc_info = type { i32, i32, i64, ptr }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, ptr, i16, %union.anon.24 }
%struct.msi_msg = type { %union.anon.19, %union.anon.21, %union.anon.22 }
%union.anon.19 = type { i32 }
%union.anon.21 = type { i32 }
%union.anon.22 = type { i32 }
%union.anon.24 = type { %struct.pci_msi_desc }
%struct.pci_msi_desc = type { %union.anon.25, %struct.anon.16, %union.anon.26 }
%union.anon.25 = type { i32 }
%struct.anon.16 = type { i16, i32 }
%union.anon.26 = type { ptr }
%struct.pci_sysdata = type { i32, i32, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.cpumask = type { [1 x i64] }

@.str = private unnamed_addr constant [28 x i8] c"drivers/pci/msi/irqdomain.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_pci_msi_create_irq_domain292 = internal global ptr @pci_msi_create_irq_domain, section ".discard.addressable", align 8, !dbg !7
@pci_msi_template = internal constant %struct.msi_domain_template { [48 x i8] zeroinitializer, %struct.irq_chip { ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_irq_mask_msi, ptr null, ptr @pci_irq_unmask_msi, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_msi_domain_write_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 32 }, %struct.msi_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_device_domain_set_desc, ptr null, ptr null, ptr null }, %struct.msi_domain_info { i32 65628, i32 11, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 8, !dbg !5561
@pci_msix_template = internal constant %struct.msi_domain_template { [48 x i8] zeroinitializer, %struct.irq_chip { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_irq_mask_msix, ptr null, ptr @pci_irq_unmask_msix, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_msi_domain_write_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 32 }, %struct.msi_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @pci_msix_prepare_desc, ptr @pci_device_domain_set_desc, ptr null, ptr null, ptr null }, %struct.msi_domain_info { i32 1179740, i32 12, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 8, !dbg !5575
@__UNIQUE_ID___addressable_pci_create_ims_domain293 = internal global ptr @pci_create_ims_domain, section ".discard.addressable", align 8, !dbg !5550
@.str.1 = private unnamed_addr constant [22 x i8] c"drivers/pci/msi/msi.h\00", align 1, !dbg !5552
@pci_msi_domain_ops_default = internal global %struct.msi_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_msi_domain_set_desc, ptr null, ptr null, ptr null }, align 8, !dbg !5557
@.str.2 = private unnamed_addr constant [8 x i8] c"PCI-MSI\00", align 1, !dbg !5559
@.str.3 = private unnamed_addr constant [9 x i8] c"PCI-MSIX\00", align 1, !dbg !5570
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_pci_msi_create_irq_domain292, ptr @__UNIQUE_ID___addressable_pci_create_ims_domain293], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_msi_setup_msi_irqs(ptr noundef %dev, i32 noundef %nvec, i32 noundef %type) #0 align 16 !dbg !5586 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %nvec.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %domain = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5590, metadata !DIExpression()), !dbg !5594
  store i32 %nvec, ptr %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvec.addr, metadata !5591, metadata !DIExpression()), !dbg !5595
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5592, metadata !DIExpression()), !dbg !5596
  call void @llvm.lifetime.start.p0(i64 8, ptr %domain) #6, !dbg !5597
  call void @llvm.dbg.declare(metadata ptr %domain, metadata !5593, metadata !DIExpression()), !dbg !5598
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5599
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5600
  %call = call ptr @dev_get_msi_domain(ptr noundef %dev1) #7, !dbg !5601
  store ptr %call, ptr %domain, align 8, !dbg !5602
  %1 = load ptr, ptr %domain, align 8, !dbg !5603
  %tobool = icmp ne ptr %1, null, !dbg !5603
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5605

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %domain, align 8, !dbg !5606
  %call2 = call zeroext i1 @irq_domain_is_hierarchy(ptr noundef %2) #7, !dbg !5607
  br i1 %call2, label %if.then, label %if.end, !dbg !5608

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5609
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5610
  %4 = load i32, ptr %nvec.addr, align 4, !dbg !5611
  %call4 = call i32 @msi_domain_alloc_irqs_all_locked(ptr noundef %dev3, i32 noundef 0, i32 noundef %4) #7, !dbg !5612
  store i32 %call4, ptr %retval, align 4, !dbg !5613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5613

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5614
  %6 = load i32, ptr %nvec.addr, align 4, !dbg !5615
  %7 = load i32, ptr %type.addr, align 4, !dbg !5616
  %call5 = call i32 @pci_msi_legacy_setup_msi_irqs(ptr noundef %5, i32 noundef %6, i32 noundef %7) #7, !dbg !5617
  store i32 %call5, ptr %retval, align 4, !dbg !5618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5618

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %domain) #6, !dbg !5619
  %8 = load i32, ptr %retval, align 4, !dbg !5619
  ret i32 %8, !dbg !5619
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_msi_domain(ptr noundef %dev) #3 align 16 !dbg !5620 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5624, metadata !DIExpression()), !dbg !5625
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5626
  %msi = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 13, !dbg !5627
  %domain = getelementptr inbounds %struct.dev_msi_info, ptr %msi, i32 0, i32 0, !dbg !5628
  %1 = load ptr, ptr %domain, align 8, !dbg !5628
  ret ptr %1, !dbg !5629
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_domain_is_hierarchy(ptr noundef %domain) #3 align 16 !dbg !5630 {
entry:
  %domain.addr = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !5636
  %flags = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 4, !dbg !5637
  %1 = load i32, ptr %flags, align 8, !dbg !5637
  %and = and i32 %1, 1, !dbg !5638
  %tobool = icmp ne i32 %and, 0, !dbg !5636
  ret i1 %tobool, !dbg !5639
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5640 dso_local i32 @msi_domain_alloc_irqs_all_locked(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_msi_legacy_setup_msi_irqs(ptr noundef %dev, i32 noundef %nvec, i32 noundef %type) #3 align 16 !dbg !5643 {
entry:
  %dev.addr = alloca ptr, align 8
  %nvec.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5645, metadata !DIExpression()), !dbg !5653
  store i32 %nvec, ptr %nvec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nvec.addr, metadata !5646, metadata !DIExpression()), !dbg !5654
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5647, metadata !DIExpression()), !dbg !5655
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5656
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5648, metadata !DIExpression()), !dbg !5656
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5656
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !5657
  %tobool = icmp ne i32 %0, 0, !dbg !5657
  %lnot = xor i1 %tobool, true, !dbg !5657
  %lnot1 = xor i1 %lnot, true, !dbg !5657
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5657
  %conv = sext i32 %lnot.ext to i64, !dbg !5657
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5657
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5657
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5656

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5657

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5650, metadata !DIExpression()), !dbg !5658
  store i32 2307, ptr %__flags, align 4, !dbg !5658
  br label %do.body3, !dbg !5658

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !5659

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5659

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !5658

do.body4:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !5661
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 121, i32 %1, i64 12) #6, !dbg !5661, !srcloc !5663
  br label %do.cond5, !dbg !5661

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5661

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !5658

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !5664

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5664

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5657
  br label %do.cond10, !dbg !5658

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5658

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !5658

if.end:                                           ; preds = %do.end11, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5656
  %tobool12 = icmp ne i32 %2, 0, !dbg !5656
  %lnot13 = xor i1 %tobool12, true, !dbg !5656
  %lnot15 = xor i1 %lnot13, true, !dbg !5656
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !5656
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !5656
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !5656
  store i64 %expval18, ptr %tmp, align 8, !dbg !5657
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5666
  %3 = load i64, ptr %tmp, align 8, !dbg !5656
  ret i32 -19, !dbg !5667
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_msi_teardown_msi_irqs(ptr noundef %dev) #0 align 16 !dbg !5668 {
entry:
  %dev.addr = alloca ptr, align 8
  %domain = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5670, metadata !DIExpression()), !dbg !5672
  call void @llvm.lifetime.start.p0(i64 8, ptr %domain) #6, !dbg !5673
  call void @llvm.dbg.declare(metadata ptr %domain, metadata !5671, metadata !DIExpression()), !dbg !5674
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5675
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5676
  %call = call ptr @dev_get_msi_domain(ptr noundef %dev1) #7, !dbg !5677
  store ptr %call, ptr %domain, align 8, !dbg !5678
  %1 = load ptr, ptr %domain, align 8, !dbg !5679
  %tobool = icmp ne ptr %1, null, !dbg !5679
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !5681

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %domain, align 8, !dbg !5682
  %call2 = call zeroext i1 @irq_domain_is_hierarchy(ptr noundef %2) #7, !dbg !5683
  br i1 %call2, label %if.then, label %if.else, !dbg !5684

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5685
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5687
  call void @msi_domain_free_irqs_all_locked(ptr noundef %dev3, i32 noundef 0) #7, !dbg !5688
  br label %if.end, !dbg !5689

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5690
  call void @pci_msi_legacy_teardown_msi_irqs(ptr noundef %4) #7, !dbg !5692
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5693
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 37, !dbg !5694
  call void @msi_free_msi_descs(ptr noundef %dev4) #7, !dbg !5695
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %domain) #6, !dbg !5696
  ret void, !dbg !5696
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5697 dso_local void @msi_domain_free_irqs_all_locked(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msi_legacy_teardown_msi_irqs(ptr noundef %dev) #3 align 16 !dbg !5700 {
entry:
  %dev.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5702, metadata !DIExpression()), !dbg !5708
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5709
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5703, metadata !DIExpression()), !dbg !5709
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5709
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !5710
  %tobool = icmp ne i32 %0, 0, !dbg !5710
  %lnot = xor i1 %tobool, true, !dbg !5710
  %lnot1 = xor i1 %lnot, true, !dbg !5710
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5710
  %conv = sext i32 %lnot.ext to i64, !dbg !5710
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5710
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5710
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5709

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5710

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5705, metadata !DIExpression()), !dbg !5711
  store i32 2307, ptr %__flags, align 4, !dbg !5711
  br label %do.body3, !dbg !5711

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !5712

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5712

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !5711

do.body4:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !5714
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 127, i32 %1, i64 12) #6, !dbg !5714, !srcloc !5716
  br label %do.cond5, !dbg !5714

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5714

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !5711

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !5717

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5717

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5710
  br label %do.cond10, !dbg !5711

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5711

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !5711

if.end:                                           ; preds = %do.end11, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5709
  %tobool12 = icmp ne i32 %2, 0, !dbg !5709
  %lnot13 = xor i1 %tobool12, true, !dbg !5709
  %lnot15 = xor i1 %lnot13, true, !dbg !5709
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !5709
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !5709
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !5709
  store i64 %expval18, ptr %tmp, align 8, !dbg !5710
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5719
  %3 = load i64, ptr %tmp, align 8, !dbg !5709
  ret void, !dbg !5720
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @msi_free_msi_descs(ptr noundef %dev) #3 align 16 !dbg !5721 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5723, metadata !DIExpression()), !dbg !5724
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5725
  call void @msi_free_msi_descs_range(ptr noundef %0, i32 noundef 0, i32 noundef 65535) #7, !dbg !5726
  ret void, !dbg !5727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_msi_create_irq_domain(ptr noundef %fwnode, ptr noundef %info, ptr noundef %parent) #0 align 16 !dbg !5728 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !5732, metadata !DIExpression()), !dbg !5741
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5733, metadata !DIExpression()), !dbg !5742
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5734, metadata !DIExpression()), !dbg !5743
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5744
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5735, metadata !DIExpression()), !dbg !5744
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5744
  %flags = getelementptr inbounds %struct.msi_domain_info, ptr %0, i32 0, i32 0, !dbg !5744
  %1 = load i32, ptr %flags, align 8, !dbg !5744
  %and = and i32 %1, 262144, !dbg !5744
  %tobool = icmp ne i32 %and, 0, !dbg !5744
  %lnot = xor i1 %tobool, true, !dbg !5744
  %lnot1 = xor i1 %lnot, true, !dbg !5744
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5744
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5744
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5745
  %tobool2 = icmp ne i32 %2, 0, !dbg !5745
  %lnot3 = xor i1 %tobool2, true, !dbg !5745
  %lnot5 = xor i1 %lnot3, true, !dbg !5745
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5745
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5745
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5745
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5745
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5744

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5745

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5746
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5738, metadata !DIExpression()), !dbg !5746
  store i32 2305, ptr %__flags, align 4, !dbg !5746
  br label %do.body8, !dbg !5746

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5747

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5747

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5746

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5749
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 118, i32 %3, i64 12) #6, !dbg !5749, !srcloc !5751
  br label %do.cond10, !dbg !5749

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5749

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5746

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5752

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5752

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5745
  br label %do.cond15, !dbg !5746

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5746

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5746

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5744
  %tobool17 = icmp ne i32 %4, 0, !dbg !5744
  %lnot18 = xor i1 %tobool17, true, !dbg !5744
  %lnot20 = xor i1 %lnot18, true, !dbg !5744
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5744
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5744
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5744
  store i64 %expval23, ptr %tmp, align 8, !dbg !5745
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5754
  %5 = load i64, ptr %tmp, align 8, !dbg !5744
  %tobool24 = icmp ne i64 %5, 0, !dbg !5754
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !5755

if.then25:                                        ; preds = %if.end
  %6 = load ptr, ptr %info.addr, align 8, !dbg !5756
  %flags26 = getelementptr inbounds %struct.msi_domain_info, ptr %6, i32 0, i32 0, !dbg !5757
  %7 = load i32, ptr %flags26, align 8, !dbg !5758
  %and27 = and i32 %7, -262145, !dbg !5758
  store i32 %and27, ptr %flags26, align 8, !dbg !5758
  br label %if.end28, !dbg !5756

if.end28:                                         ; preds = %if.then25, %if.end
  %8 = load ptr, ptr %info.addr, align 8, !dbg !5759
  %flags29 = getelementptr inbounds %struct.msi_domain_info, ptr %8, i32 0, i32 0, !dbg !5761
  %9 = load i32, ptr %flags29, align 8, !dbg !5761
  %and30 = and i32 %9, 1, !dbg !5762
  %tobool31 = icmp ne i32 %and30, 0, !dbg !5762
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5763

if.then32:                                        ; preds = %if.end28
  %10 = load ptr, ptr %info.addr, align 8, !dbg !5764
  call void @pci_msi_domain_update_dom_ops(ptr noundef %10) #7, !dbg !5765
  br label %if.end33, !dbg !5765

if.end33:                                         ; preds = %if.then32, %if.end28
  %11 = load ptr, ptr %info.addr, align 8, !dbg !5766
  %flags34 = getelementptr inbounds %struct.msi_domain_info, ptr %11, i32 0, i32 0, !dbg !5768
  %12 = load i32, ptr %flags34, align 8, !dbg !5768
  %and35 = and i32 %12, 2, !dbg !5769
  %tobool36 = icmp ne i32 %and35, 0, !dbg !5769
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !5770

if.then37:                                        ; preds = %if.end33
  %13 = load ptr, ptr %info.addr, align 8, !dbg !5771
  call void @pci_msi_domain_update_chip_ops(ptr noundef %13) #7, !dbg !5772
  br label %if.end38, !dbg !5772

if.end38:                                         ; preds = %if.then37, %if.end33
  %14 = load ptr, ptr %info.addr, align 8, !dbg !5773
  %flags39 = getelementptr inbounds %struct.msi_domain_info, ptr %14, i32 0, i32 0, !dbg !5774
  %15 = load i32, ptr %flags39, align 8, !dbg !5775
  %or = or i32 %15, 64, !dbg !5775
  store i32 %or, ptr %flags39, align 8, !dbg !5775
  %16 = load ptr, ptr %info.addr, align 8, !dbg !5776
  %flags40 = getelementptr inbounds %struct.msi_domain_info, ptr %16, i32 0, i32 0, !dbg !5777
  %17 = load i32, ptr %flags40, align 8, !dbg !5778
  %or41 = or i32 %17, 20, !dbg !5778
  store i32 %or41, ptr %flags40, align 8, !dbg !5778
  %18 = load ptr, ptr %info.addr, align 8, !dbg !5779
  %flags42 = getelementptr inbounds %struct.msi_domain_info, ptr %18, i32 0, i32 0, !dbg !5781
  %19 = load i32, ptr %flags42, align 8, !dbg !5782
  %or43 = or i32 %19, 8, !dbg !5782
  store i32 %or43, ptr %flags42, align 8, !dbg !5782
  %20 = load ptr, ptr %info.addr, align 8, !dbg !5783
  %chip = getelementptr inbounds %struct.msi_domain_info, ptr %20, i32 0, i32 4, !dbg !5784
  %21 = load ptr, ptr %chip, align 8, !dbg !5784
  %flags44 = getelementptr inbounds %struct.irq_chip, ptr %21, i32 0, i32 32, !dbg !5785
  %22 = load i64, ptr %flags44, align 8, !dbg !5786
  %or45 = or i64 %22, 32, !dbg !5786
  store i64 %or45, ptr %flags44, align 8, !dbg !5786
  %23 = load ptr, ptr %info.addr, align 8, !dbg !5787
  %bus_token = getelementptr inbounds %struct.msi_domain_info, ptr %23, i32 0, i32 1, !dbg !5788
  store i32 3, ptr %bus_token, align 4, !dbg !5789
  %24 = load ptr, ptr %fwnode.addr, align 8, !dbg !5790
  %25 = load ptr, ptr %info.addr, align 8, !dbg !5791
  %26 = load ptr, ptr %parent.addr, align 8, !dbg !5792
  %call = call ptr @msi_create_irq_domain(ptr noundef %24, ptr noundef %25, ptr noundef %26) #7, !dbg !5793
  ret ptr %call, !dbg !5794
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msi_domain_update_dom_ops(ptr noundef %info) #0 align 16 !dbg !5795 {
entry:
  %info.addr = alloca ptr, align 8
  %ops = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5799, metadata !DIExpression()), !dbg !5801
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #6, !dbg !5802
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5800, metadata !DIExpression()), !dbg !5803
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5804
  %ops1 = getelementptr inbounds %struct.msi_domain_info, ptr %0, i32 0, i32 3, !dbg !5805
  %1 = load ptr, ptr %ops1, align 8, !dbg !5805
  store ptr %1, ptr %ops, align 8, !dbg !5803
  %2 = load ptr, ptr %ops, align 8, !dbg !5806
  %cmp = icmp eq ptr %2, null, !dbg !5808
  br i1 %cmp, label %if.then, label %if.else, !dbg !5809

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %info.addr, align 8, !dbg !5810
  %ops2 = getelementptr inbounds %struct.msi_domain_info, ptr %3, i32 0, i32 3, !dbg !5812
  store ptr @pci_msi_domain_ops_default, ptr %ops2, align 8, !dbg !5813
  br label %if.end6, !dbg !5814

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %ops, align 8, !dbg !5815
  %set_desc = getelementptr inbounds %struct.msi_domain_ops, ptr %4, i32 0, i32 5, !dbg !5818
  %5 = load ptr, ptr %set_desc, align 8, !dbg !5818
  %cmp3 = icmp eq ptr %5, null, !dbg !5819
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5820

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr %ops, align 8, !dbg !5821
  %set_desc5 = getelementptr inbounds %struct.msi_domain_ops, ptr %6, i32 0, i32 5, !dbg !5822
  store ptr @pci_msi_domain_set_desc, ptr %set_desc5, align 8, !dbg !5823
  br label %if.end, !dbg !5821

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #6, !dbg !5824
  ret void, !dbg !5824
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msi_domain_update_chip_ops(ptr noundef %info) #0 align 16 !dbg !5825 {
entry:
  %info.addr = alloca ptr, align 8
  %chip = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5827, metadata !DIExpression()), !dbg !5829
  call void @llvm.lifetime.start.p0(i64 8, ptr %chip) #6, !dbg !5830
  call void @llvm.dbg.declare(metadata ptr %chip, metadata !5828, metadata !DIExpression()), !dbg !5831
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5832
  %chip1 = getelementptr inbounds %struct.msi_domain_info, ptr %0, i32 0, i32 4, !dbg !5833
  %1 = load ptr, ptr %chip1, align 8, !dbg !5833
  store ptr %1, ptr %chip, align 8, !dbg !5831
  br label %do.body, !dbg !5834

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %chip, align 8, !dbg !5835
  %tobool = icmp ne ptr %2, null, !dbg !5835
  %lnot = xor i1 %tobool, true, !dbg !5835
  %lnot2 = xor i1 %lnot, true, !dbg !5835
  %lnot3 = xor i1 %lnot2, true, !dbg !5835
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5835
  %conv = sext i32 %lnot.ext to i64, !dbg !5835
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5835
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5835
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5838

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5835

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5839

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !5841

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5841

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5839

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 94, i32 0, i64 12) #6, !dbg !5843, !srcloc !5845
  br label %do.cond8, !dbg !5843

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5843

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !5839

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !5839

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !5839

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !5838

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !5838

do.end13:                                         ; preds = %do.cond12
  %3 = load ptr, ptr %chip, align 8, !dbg !5846
  %irq_write_msi_msg = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 24, !dbg !5848
  %4 = load ptr, ptr %irq_write_msi_msg, align 8, !dbg !5848
  %tobool14 = icmp ne ptr %4, null, !dbg !5846
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !5849

if.then15:                                        ; preds = %do.end13
  %5 = load ptr, ptr %chip, align 8, !dbg !5850
  %irq_write_msi_msg16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 24, !dbg !5851
  store ptr @pci_msi_domain_write_msg, ptr %irq_write_msi_msg16, align 8, !dbg !5852
  br label %if.end17, !dbg !5850

if.end17:                                         ; preds = %if.then15, %do.end13
  %6 = load ptr, ptr %chip, align 8, !dbg !5853
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6, !dbg !5855
  %7 = load ptr, ptr %irq_mask, align 8, !dbg !5855
  %tobool18 = icmp ne ptr %7, null, !dbg !5853
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !5856

if.then19:                                        ; preds = %if.end17
  %8 = load ptr, ptr %chip, align 8, !dbg !5857
  %irq_mask20 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 6, !dbg !5858
  store ptr @pci_msi_mask_irq, ptr %irq_mask20, align 8, !dbg !5859
  br label %if.end21, !dbg !5857

if.end21:                                         ; preds = %if.then19, %if.end17
  %9 = load ptr, ptr %chip, align 8, !dbg !5860
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 8, !dbg !5862
  %10 = load ptr, ptr %irq_unmask, align 8, !dbg !5862
  %tobool22 = icmp ne ptr %10, null, !dbg !5860
  br i1 %tobool22, label %if.end25, label %if.then23, !dbg !5863

if.then23:                                        ; preds = %if.end21
  %11 = load ptr, ptr %chip, align 8, !dbg !5864
  %irq_unmask24 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 8, !dbg !5865
  store ptr @pci_msi_unmask_irq, ptr %irq_unmask24, align 8, !dbg !5866
  br label %if.end25, !dbg !5864

if.end25:                                         ; preds = %if.then23, %if.end21
  call void @llvm.lifetime.end.p0(i64 8, ptr %chip) #6, !dbg !5867
  ret void, !dbg !5867
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5868 dso_local ptr @msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pci_setup_msi_device_domain(ptr noundef %pdev) #0 align 16 !dbg !5869 {
entry:
  %retval = alloca i1, align 1
  %pdev.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5873, metadata !DIExpression()), !dbg !5880
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5874, metadata !DIExpression()), !dbg !5881
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5881
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5881
  %bf.load = load i40, ptr %msix_enabled, align 1, !dbg !5881
  %bf.lshr = lshr i40 %bf.load, 13, !dbg !5881
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5881
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5881
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5881
  %lnot = xor i1 %tobool, true, !dbg !5881
  %lnot1 = xor i1 %lnot, true, !dbg !5881
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5881
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5881
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5882
  %tobool2 = icmp ne i32 %1, 0, !dbg !5882
  %lnot3 = xor i1 %tobool2, true, !dbg !5882
  %lnot5 = xor i1 %lnot3, true, !dbg !5882
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5882
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5882
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5882
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5882
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5881

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5882

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5877, metadata !DIExpression()), !dbg !5883
  store i32 2307, ptr %__flags, align 4, !dbg !5883
  br label %do.body8, !dbg !5883

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5884

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5884

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5883

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5886
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 272, i32 %2, i64 12) #6, !dbg !5886, !srcloc !5888
  br label %do.cond10, !dbg !5886

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5886

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5883

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5889

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5889

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5882
  br label %do.cond15, !dbg !5883

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5883

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5883

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5881
  %tobool17 = icmp ne i32 %3, 0, !dbg !5881
  %lnot18 = xor i1 %tobool17, true, !dbg !5881
  %lnot20 = xor i1 %lnot18, true, !dbg !5881
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5881
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5881
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5881
  store i64 %expval23, ptr %tmp, align 8, !dbg !5882
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5891
  %4 = load i64, ptr %tmp, align 8, !dbg !5881
  %tobool24 = icmp ne i64 %4, 0, !dbg !5891
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5892

if.then25:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5893
  br label %return, !dbg !5893

if.end26:                                         ; preds = %if.end
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5894
  %call = call zeroext i1 @pci_match_device_domain(ptr noundef %5, i32 noundef 11) #7, !dbg !5896
  br i1 %call, label %if.then27, label %if.end28, !dbg !5897

if.then27:                                        ; preds = %if.end26
  store i1 true, ptr %retval, align 1, !dbg !5898
  br label %return, !dbg !5898

if.end28:                                         ; preds = %if.end26
  %6 = load ptr, ptr %pdev.addr, align 8, !dbg !5899
  %call29 = call zeroext i1 @pci_match_device_domain(ptr noundef %6, i32 noundef 12) #7, !dbg !5901
  br i1 %call29, label %if.then30, label %if.end31, !dbg !5902

if.then30:                                        ; preds = %if.end28
  %7 = load ptr, ptr %pdev.addr, align 8, !dbg !5903
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 37, !dbg !5904
  call void @msi_remove_device_irq_domain(ptr noundef %dev, i32 noundef 0) #7, !dbg !5905
  br label %if.end31, !dbg !5905

if.end31:                                         ; preds = %if.then30, %if.end28
  %8 = load ptr, ptr %pdev.addr, align 8, !dbg !5906
  %call32 = call zeroext i1 @pci_create_device_domain(ptr noundef %8, ptr noundef @pci_msi_template, i32 noundef 1) #7, !dbg !5907
  store i1 %call32, ptr %retval, align 1, !dbg !5908
  br label %return, !dbg !5908

return:                                           ; preds = %if.end31, %if.then27, %if.then25
  %9 = load i1, ptr %retval, align 1, !dbg !5909
  ret i1 %9, !dbg !5909
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_match_device_domain(ptr noundef %pdev, i32 noundef %bus_token) #0 align 16 !dbg !5910 {
entry:
  %pdev.addr = alloca ptr, align 8
  %bus_token.addr = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5914, metadata !DIExpression()), !dbg !5916
  store i32 %bus_token, ptr %bus_token.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus_token.addr, metadata !5915, metadata !DIExpression()), !dbg !5917
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5918
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5919
  %1 = load i32, ptr %bus_token.addr, align 4, !dbg !5920
  %call = call zeroext i1 @msi_match_device_irq_domain(ptr noundef %dev, i32 noundef 0, i32 noundef %1) #7, !dbg !5921
  ret i1 %call, !dbg !5922
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5923 dso_local void @msi_remove_device_irq_domain(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_create_device_domain(ptr noundef %pdev, ptr noundef %tmpl, i32 noundef %hwsize) #0 align 16 !dbg !5924 {
entry:
  %retval = alloca i1, align 1
  %pdev.addr = alloca ptr, align 8
  %tmpl.addr = alloca ptr, align 8
  %hwsize.addr = alloca i32, align 4
  %domain = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5929, metadata !DIExpression()), !dbg !5933
  store ptr %tmpl, ptr %tmpl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmpl.addr, metadata !5930, metadata !DIExpression()), !dbg !5934
  store i32 %hwsize, ptr %hwsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hwsize.addr, metadata !5931, metadata !DIExpression()), !dbg !5935
  call void @llvm.lifetime.start.p0(i64 8, ptr %domain) #6, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %domain, metadata !5932, metadata !DIExpression()), !dbg !5937
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5938
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5939
  %call = call ptr @dev_get_msi_domain(ptr noundef %dev) #7, !dbg !5940
  store ptr %call, ptr %domain, align 8, !dbg !5937
  %1 = load ptr, ptr %domain, align 8, !dbg !5941
  %tobool = icmp ne ptr %1, null, !dbg !5941
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5943

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %domain, align 8, !dbg !5944
  %call1 = call zeroext i1 @irq_domain_is_msi_parent(ptr noundef %2) #7, !dbg !5945
  br i1 %call1, label %if.end, label %if.then, !dbg !5946

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 true, ptr %retval, align 1, !dbg !5947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5947

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5948
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5949
  %4 = load ptr, ptr %tmpl.addr, align 8, !dbg !5950
  %5 = load i32, ptr %hwsize.addr, align 4, !dbg !5951
  %call3 = call zeroext i1 @msi_create_device_irq_domain(ptr noundef %dev2, i32 noundef 0, ptr noundef %4, i32 noundef %5, ptr noundef null, ptr noundef null) #7, !dbg !5952
  store i1 %call3, ptr %retval, align 1, !dbg !5953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5953

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %domain) #6, !dbg !5954
  %6 = load i1, ptr %retval, align 1, !dbg !5954
  ret i1 %6, !dbg !5954
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pci_setup_msix_device_domain(ptr noundef %pdev, i32 noundef %hwsize) #0 align 16 !dbg !5955 {
entry:
  %retval = alloca i1, align 1
  %pdev.addr = alloca ptr, align 8
  %hwsize.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5959, metadata !DIExpression()), !dbg !5967
  store i32 %hwsize, ptr %hwsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hwsize.addr, metadata !5960, metadata !DIExpression()), !dbg !5968
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5969
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5961, metadata !DIExpression()), !dbg !5969
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5969
  %msi_enabled = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5969
  %bf.load = load i40, ptr %msi_enabled, align 1, !dbg !5969
  %bf.lshr = lshr i40 %bf.load, 12, !dbg !5969
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5969
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5969
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5969
  %lnot = xor i1 %tobool, true, !dbg !5969
  %lnot1 = xor i1 %lnot, true, !dbg !5969
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5969
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5969
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5970
  %tobool2 = icmp ne i32 %1, 0, !dbg !5970
  %lnot3 = xor i1 %tobool2, true, !dbg !5970
  %lnot5 = xor i1 %lnot3, true, !dbg !5970
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5970
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5970
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5970
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5970
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5969

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5970

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5964, metadata !DIExpression()), !dbg !5971
  store i32 2307, ptr %__flags, align 4, !dbg !5971
  br label %do.body8, !dbg !5971

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5972

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5972

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5971

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5974
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 305, i32 %2, i64 12) #6, !dbg !5974, !srcloc !5976
  br label %do.cond10, !dbg !5974

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5974

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5971

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5977

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5977

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5970
  br label %do.cond15, !dbg !5971

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5971

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5971

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5969
  %tobool17 = icmp ne i32 %3, 0, !dbg !5969
  %lnot18 = xor i1 %tobool17, true, !dbg !5969
  %lnot20 = xor i1 %lnot18, true, !dbg !5969
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5969
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5969
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5969
  store i64 %expval23, ptr %tmp, align 8, !dbg !5970
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5979
  %4 = load i64, ptr %tmp, align 8, !dbg !5969
  %tobool24 = icmp ne i64 %4, 0, !dbg !5979
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5980

if.then25:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5981
  br label %return, !dbg !5981

if.end26:                                         ; preds = %if.end
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5982
  %call = call zeroext i1 @pci_match_device_domain(ptr noundef %5, i32 noundef 12) #7, !dbg !5984
  br i1 %call, label %if.then27, label %if.end28, !dbg !5985

if.then27:                                        ; preds = %if.end26
  store i1 true, ptr %retval, align 1, !dbg !5986
  br label %return, !dbg !5986

if.end28:                                         ; preds = %if.end26
  %6 = load ptr, ptr %pdev.addr, align 8, !dbg !5987
  %call29 = call zeroext i1 @pci_match_device_domain(ptr noundef %6, i32 noundef 11) #7, !dbg !5989
  br i1 %call29, label %if.then30, label %if.end31, !dbg !5990

if.then30:                                        ; preds = %if.end28
  %7 = load ptr, ptr %pdev.addr, align 8, !dbg !5991
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 37, !dbg !5992
  call void @msi_remove_device_irq_domain(ptr noundef %dev, i32 noundef 0) #7, !dbg !5993
  br label %if.end31, !dbg !5993

if.end31:                                         ; preds = %if.then30, %if.end28
  %8 = load ptr, ptr %pdev.addr, align 8, !dbg !5994
  %9 = load i32, ptr %hwsize.addr, align 4, !dbg !5995
  %call32 = call zeroext i1 @pci_create_device_domain(ptr noundef %8, ptr noundef @pci_msix_template, i32 noundef %9) #7, !dbg !5996
  store i1 %call32, ptr %retval, align 1, !dbg !5997
  br label %return, !dbg !5997

return:                                           ; preds = %if.end31, %if.then27, %if.then25
  %10 = load i1, ptr %retval, align 1, !dbg !5998
  ret i1 %10, !dbg !5998
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pci_msi_domain_supports(ptr noundef %pdev, i32 noundef %feature_mask, i32 noundef %mode) #0 align 16 !dbg !5999 {
entry:
  %retval = alloca i1, align 1
  %pdev.addr = alloca ptr, align 8
  %feature_mask.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %domain = alloca ptr, align 8
  %supported = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6003, metadata !DIExpression()), !dbg !6009
  store i32 %feature_mask, ptr %feature_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature_mask.addr, metadata !6004, metadata !DIExpression()), !dbg !6010
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !6005, metadata !DIExpression()), !dbg !6011
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #6, !dbg !6012
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6006, metadata !DIExpression()), !dbg !6013
  call void @llvm.lifetime.start.p0(i64 8, ptr %domain) #6, !dbg !6014
  call void @llvm.dbg.declare(metadata ptr %domain, metadata !6007, metadata !DIExpression()), !dbg !6015
  call void @llvm.lifetime.start.p0(i64 4, ptr %supported) #6, !dbg !6016
  call void @llvm.dbg.declare(metadata ptr %supported, metadata !6008, metadata !DIExpression()), !dbg !6017
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6018
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !6019
  %call = call ptr @dev_get_msi_domain(ptr noundef %dev) #7, !dbg !6020
  store ptr %call, ptr %domain, align 8, !dbg !6021
  %1 = load ptr, ptr %domain, align 8, !dbg !6022
  %tobool = icmp ne ptr %1, null, !dbg !6022
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6024

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %domain, align 8, !dbg !6025
  %call1 = call zeroext i1 @irq_domain_is_hierarchy(ptr noundef %2) #7, !dbg !6026
  br i1 %call1, label %if.end, label %if.then, !dbg !6027

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !6028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6028

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %domain, align 8, !dbg !6030
  %call2 = call zeroext i1 @irq_domain_is_msi_parent(ptr noundef %3) #7, !dbg !6032
  br i1 %call2, label %if.else, label %if.then3, !dbg !6033

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %domain, align 8, !dbg !6034
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 3, !dbg !6036
  %5 = load ptr, ptr %host_data, align 8, !dbg !6036
  store ptr %5, ptr %info, align 8, !dbg !6037
  %6 = load ptr, ptr %info, align 8, !dbg !6038
  %flags = getelementptr inbounds %struct.msi_domain_info, ptr %6, i32 0, i32 0, !dbg !6039
  %7 = load i32, ptr %flags, align 8, !dbg !6039
  store i32 %7, ptr %supported, align 4, !dbg !6040
  br label %if.end4, !dbg !6041

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %domain, align 8, !dbg !6042
  %msi_parent_ops = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 14, !dbg !6044
  %9 = load ptr, ptr %msi_parent_ops, align 8, !dbg !6044
  %supported_flags = getelementptr inbounds %struct.msi_parent_ops, ptr %9, i32 0, i32 0, !dbg !6045
  %10 = load i32, ptr %supported_flags, align 8, !dbg !6045
  store i32 %10, ptr %supported, align 4, !dbg !6046
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %11 = load i32, ptr %supported, align 4, !dbg !6047
  %12 = load i32, ptr %feature_mask.addr, align 4, !dbg !6048
  %and = and i32 %11, %12, !dbg !6049
  %13 = load i32, ptr %feature_mask.addr, align 4, !dbg !6050
  %cmp = icmp eq i32 %and, %13, !dbg !6051
  store i1 %cmp, ptr %retval, align 1, !dbg !6052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6052

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %supported) #6, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 8, ptr %domain) #6, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #6, !dbg !6053
  %14 = load i1, ptr %retval, align 1, !dbg !6053
  ret i1 %14, !dbg !6053
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_domain_is_msi_parent(ptr noundef %domain) #3 align 16 !dbg !6054 {
entry:
  %domain.addr = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !6058
  %flags = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 4, !dbg !6059
  %1 = load i32, ptr %flags, align 8, !dbg !6059
  %and = and i32 %1, 256, !dbg !6060
  %tobool = icmp ne i32 %and, 0, !dbg !6058
  ret i1 %tobool, !dbg !6061
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pci_create_ims_domain(ptr noundef %pdev, ptr noundef %template, i32 noundef %hwsize, ptr noundef %data) #0 align 16 !dbg !6062 {
entry:
  %retval = alloca i1, align 1
  %pdev.addr = alloca ptr, align 8
  %template.addr = alloca ptr, align 8
  %hwsize.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %domain = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6066, metadata !DIExpression()), !dbg !6071
  store ptr %template, ptr %template.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %template.addr, metadata !6067, metadata !DIExpression()), !dbg !6072
  store i32 %hwsize, ptr %hwsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hwsize.addr, metadata !6068, metadata !DIExpression()), !dbg !6073
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6069, metadata !DIExpression()), !dbg !6074
  call void @llvm.lifetime.start.p0(i64 8, ptr %domain) #6, !dbg !6075
  call void @llvm.dbg.declare(metadata ptr %domain, metadata !6070, metadata !DIExpression()), !dbg !6076
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6077
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !6078
  %call = call ptr @dev_get_msi_domain(ptr noundef %dev) #7, !dbg !6079
  store ptr %call, ptr %domain, align 8, !dbg !6076
  %1 = load ptr, ptr %domain, align 8, !dbg !6080
  %tobool = icmp ne ptr %1, null, !dbg !6080
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6082

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %domain, align 8, !dbg !6083
  %call1 = call zeroext i1 @irq_domain_is_msi_parent(ptr noundef %2) #7, !dbg !6084
  br i1 %call1, label %if.end, label %if.then, !dbg !6085

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !6086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6086

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %template.addr, align 8, !dbg !6087
  %info = getelementptr inbounds %struct.msi_domain_template, ptr %3, i32 0, i32 3, !dbg !6089
  %bus_token = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 1, !dbg !6090
  %4 = load i32, ptr %bus_token, align 4, !dbg !6090
  %cmp = icmp ne i32 %4, 15, !dbg !6091
  br i1 %cmp, label %if.then21, label %lor.lhs.false2, !dbg !6092

lor.lhs.false2:                                   ; preds = %if.end
  %5 = load ptr, ptr %template.addr, align 8, !dbg !6093
  %info3 = getelementptr inbounds %struct.msi_domain_template, ptr %5, i32 0, i32 3, !dbg !6094
  %flags = getelementptr inbounds %struct.msi_domain_info, ptr %info3, i32 0, i32 0, !dbg !6095
  %6 = load i32, ptr %flags, align 8, !dbg !6095
  %and = and i32 %6, 32, !dbg !6096
  %tobool4 = icmp ne i32 %and, 0, !dbg !6096
  br i1 %tobool4, label %lor.lhs.false5, label %if.then21, !dbg !6097

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %7 = load ptr, ptr %template.addr, align 8, !dbg !6098
  %info6 = getelementptr inbounds %struct.msi_domain_template, ptr %7, i32 0, i32 3, !dbg !6099
  %flags7 = getelementptr inbounds %struct.msi_domain_info, ptr %info6, i32 0, i32 0, !dbg !6100
  %8 = load i32, ptr %flags7, align 8, !dbg !6100
  %and8 = and i32 %8, 64, !dbg !6101
  %tobool9 = icmp ne i32 %and8, 0, !dbg !6101
  br i1 %tobool9, label %lor.lhs.false10, label %if.then21, !dbg !6102

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %9 = load ptr, ptr %template.addr, align 8, !dbg !6103
  %chip = getelementptr inbounds %struct.msi_domain_template, ptr %9, i32 0, i32 1, !dbg !6104
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %chip, i32 0, i32 6, !dbg !6105
  %10 = load ptr, ptr %irq_mask, align 8, !dbg !6105
  %tobool11 = icmp ne ptr %10, null, !dbg !6103
  br i1 %tobool11, label %lor.lhs.false12, label %if.then21, !dbg !6106

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %11 = load ptr, ptr %template.addr, align 8, !dbg !6107
  %chip13 = getelementptr inbounds %struct.msi_domain_template, ptr %11, i32 0, i32 1, !dbg !6108
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %chip13, i32 0, i32 8, !dbg !6109
  %12 = load ptr, ptr %irq_unmask, align 8, !dbg !6109
  %tobool14 = icmp ne ptr %12, null, !dbg !6107
  br i1 %tobool14, label %lor.lhs.false15, label %if.then21, !dbg !6110

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %13 = load ptr, ptr %template.addr, align 8, !dbg !6111
  %chip16 = getelementptr inbounds %struct.msi_domain_template, ptr %13, i32 0, i32 1, !dbg !6112
  %irq_write_msi_msg = getelementptr inbounds %struct.irq_chip, ptr %chip16, i32 0, i32 24, !dbg !6113
  %14 = load ptr, ptr %irq_write_msi_msg, align 8, !dbg !6113
  %tobool17 = icmp ne ptr %14, null, !dbg !6111
  br i1 %tobool17, label %lor.lhs.false18, label %if.then21, !dbg !6114

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %15 = load ptr, ptr %template.addr, align 8, !dbg !6115
  %chip19 = getelementptr inbounds %struct.msi_domain_template, ptr %15, i32 0, i32 1, !dbg !6116
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, ptr %chip19, i32 0, i32 10, !dbg !6117
  %16 = load ptr, ptr %irq_set_affinity, align 8, !dbg !6117
  %tobool20 = icmp ne ptr %16, null, !dbg !6115
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6118

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false5, %lor.lhs.false2, %if.end
  store i1 false, ptr %retval, align 1, !dbg !6119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6119

if.end22:                                         ; preds = %lor.lhs.false18
  %17 = load ptr, ptr %pdev.addr, align 8, !dbg !6120
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 37, !dbg !6121
  %18 = load ptr, ptr %template.addr, align 8, !dbg !6122
  %19 = load i32, ptr %hwsize.addr, align 4, !dbg !6123
  %20 = load ptr, ptr %data.addr, align 8, !dbg !6124
  %call24 = call zeroext i1 @msi_create_device_irq_domain(ptr noundef %dev23, i32 noundef 1, ptr noundef %18, i32 noundef %19, ptr noundef %20, ptr noundef null) #7, !dbg !6125
  store i1 %call24, ptr %retval, align 1, !dbg !6126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6126

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %domain) #6, !dbg !6127
  %21 = load i1, ptr %retval, align 1, !dbg !6127
  ret i1 %21, !dbg !6127
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6128 dso_local zeroext i1 @msi_create_device_irq_domain(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_msi_domain_get_msi_rid(ptr noundef %domain, ptr noundef %pdev) #0 align 16 !dbg !6131 {
entry:
  %domain.addr = alloca ptr, align 8
  %pdev.addr = alloca ptr, align 8
  %of_node = alloca ptr, align 8
  %rid = alloca i32, align 4
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !6135, metadata !DIExpression()), !dbg !6139
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6136, metadata !DIExpression()), !dbg !6140
  call void @llvm.lifetime.start.p0(i64 8, ptr %of_node) #6, !dbg !6141
  call void @llvm.dbg.declare(metadata ptr %of_node, metadata !6137, metadata !DIExpression()), !dbg !6142
  call void @llvm.lifetime.start.p0(i64 4, ptr %rid) #6, !dbg !6143
  call void @llvm.dbg.declare(metadata ptr %rid, metadata !6138, metadata !DIExpression()), !dbg !6144
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6145
  %call = call zeroext i16 @pci_dev_id(ptr noundef %0) #7, !dbg !6146
  %conv = zext i16 %call to i32, !dbg !6146
  store i32 %conv, ptr %rid, align 4, !dbg !6144
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !6147
  %call1 = call i32 @pci_for_each_dma_alias(ptr noundef %1, ptr noundef @get_msi_id_cb, ptr noundef %rid) #7, !dbg !6148
  %2 = load ptr, ptr %domain.addr, align 8, !dbg !6149
  %call2 = call ptr @irq_domain_get_of_node(ptr noundef %2) #7, !dbg !6150
  store ptr %call2, ptr %of_node, align 8, !dbg !6151
  %3 = load ptr, ptr %of_node, align 8, !dbg !6152
  %tobool = icmp ne ptr %3, null, !dbg !6152
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6152

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !6153
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 37, !dbg !6154
  %5 = load ptr, ptr %of_node, align 8, !dbg !6155
  %6 = load i32, ptr %rid, align 4, !dbg !6156
  %call3 = call i32 @of_msi_map_id(ptr noundef %dev, ptr noundef %5, i32 noundef %6) #7, !dbg !6157
  br label %cond.end, !dbg !6152

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %pdev.addr, align 8, !dbg !6158
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 37, !dbg !6159
  %8 = load i32, ptr %rid, align 4, !dbg !6160
  %call5 = call i32 @iort_msi_map_id(ptr noundef %dev4, i32 noundef %8) #7, !dbg !6161
  br label %cond.end, !dbg !6152

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %call5, %cond.false ], !dbg !6152
  store i32 %cond, ptr %rid, align 4, !dbg !6162
  %9 = load i32, ptr %rid, align 4, !dbg !6163
  call void @llvm.lifetime.end.p0(i64 4, ptr %rid) #6, !dbg !6164
  call void @llvm.lifetime.end.p0(i64 8, ptr %of_node) #6, !dbg !6164
  ret i32 %9, !dbg !6165
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @pci_dev_id(ptr noundef %dev) #3 align 16 !dbg !6166 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6170, metadata !DIExpression()), !dbg !6171
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6172
  %bus = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !6172
  %1 = load ptr, ptr %bus, align 8, !dbg !6172
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12, !dbg !6172
  %2 = load i8, ptr %number, align 8, !dbg !6172
  %conv = zext i8 %2 to i16, !dbg !6172
  %conv1 = zext i16 %conv to i32, !dbg !6172
  %shl = shl i32 %conv1, 8, !dbg !6172
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6172
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6, !dbg !6172
  %4 = load i32, ptr %devfn, align 8, !dbg !6172
  %or = or i32 %shl, %4, !dbg !6172
  %conv2 = trunc i32 %or to i16, !dbg !6172
  ret i16 %conv2, !dbg !6173
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6174 dso_local i32 @pci_for_each_dma_alias(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_msi_id_cb(ptr noundef %pdev, i16 noundef zeroext %alias, ptr noundef %data) #0 align 16 !dbg !6180 {
entry:
  %pdev.addr = alloca ptr, align 8
  %alias.addr = alloca i16, align 2
  %data.addr = alloca ptr, align 8
  %pa = alloca ptr, align 8
  %bus = alloca i8, align 1
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6182, metadata !DIExpression()), !dbg !6187
  store i16 %alias, ptr %alias.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %alias.addr, metadata !6183, metadata !DIExpression()), !dbg !6188
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6184, metadata !DIExpression()), !dbg !6189
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #6, !dbg !6190
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !6185, metadata !DIExpression()), !dbg !6191
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6192
  store ptr %0, ptr %pa, align 8, !dbg !6191
  call void @llvm.lifetime.start.p0(i64 1, ptr %bus) #6, !dbg !6193
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !6186, metadata !DIExpression()), !dbg !6194
  %1 = load ptr, ptr %pa, align 8, !dbg !6195
  %2 = load i32, ptr %1, align 4, !dbg !6195
  %shr = lshr i32 %2, 8, !dbg !6195
  %and = and i32 %shr, 255, !dbg !6195
  %conv = trunc i32 %and to i8, !dbg !6195
  store i8 %conv, ptr %bus, align 1, !dbg !6194
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !6196
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1, !dbg !6198
  %4 = load ptr, ptr %bus1, align 8, !dbg !6198
  %number = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 12, !dbg !6199
  %5 = load i8, ptr %number, align 8, !dbg !6199
  %conv2 = zext i8 %5 to i32, !dbg !6196
  %6 = load i8, ptr %bus, align 1, !dbg !6200
  %conv3 = zext i8 %6 to i32, !dbg !6200
  %cmp = icmp ne i32 %conv2, %conv3, !dbg !6201
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6202

lor.lhs.false:                                    ; preds = %entry
  %7 = load i16, ptr %alias.addr, align 2, !dbg !6203
  %conv5 = zext i16 %7 to i32, !dbg !6203
  %shr6 = ashr i32 %conv5, 8, !dbg !6203
  %and7 = and i32 %shr6, 255, !dbg !6203
  %8 = load i8, ptr %bus, align 1, !dbg !6204
  %conv8 = zext i8 %8 to i32, !dbg !6204
  %cmp9 = icmp ne i32 %and7, %conv8, !dbg !6205
  br i1 %cmp9, label %if.then, label %if.end, !dbg !6206

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i16, ptr %alias.addr, align 2, !dbg !6207
  %conv11 = zext i16 %9 to i32, !dbg !6207
  %10 = load ptr, ptr %pa, align 8, !dbg !6208
  store i32 %conv11, ptr %10, align 4, !dbg !6209
  br label %if.end, !dbg !6210

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 1, ptr %bus) #6, !dbg !6211
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #6, !dbg !6211
  ret i32 0, !dbg !6212
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_domain_get_of_node(ptr noundef %d) #3 align 16 !dbg !6213 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6217, metadata !DIExpression()), !dbg !6218
  %0 = load ptr, ptr %d.addr, align 8, !dbg !6219
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 8, !dbg !6220
  %1 = load ptr, ptr %fwnode, align 8, !dbg !6220
  %call = call ptr @to_of_node(ptr noundef %1) #7, !dbg !6221
  ret ptr %call, !dbg !6222
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @of_msi_map_id(ptr noundef %dev, ptr noundef %msi_np, i32 noundef %id_in) #3 align 16 !dbg !6223 {
entry:
  %dev.addr = alloca ptr, align 8
  %msi_np.addr = alloca ptr, align 8
  %id_in.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6228, metadata !DIExpression()), !dbg !6231
  store ptr %msi_np, ptr %msi_np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msi_np.addr, metadata !6229, metadata !DIExpression()), !dbg !6232
  store i32 %id_in, ptr %id_in.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id_in.addr, metadata !6230, metadata !DIExpression()), !dbg !6233
  %0 = load i32, ptr %id_in.addr, align 4, !dbg !6234
  ret i32 %0, !dbg !6235
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iort_msi_map_id(ptr noundef %dev, i32 noundef %id) #3 align 16 !dbg !6236 {
entry:
  %dev.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6241, metadata !DIExpression()), !dbg !6243
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !6242, metadata !DIExpression()), !dbg !6244
  %0 = load i32, ptr %id.addr, align 4, !dbg !6245
  ret i32 %0, !dbg !6246
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_msi_get_device_domain(ptr noundef %pdev) #0 align 16 !dbg !6247 {
entry:
  %pdev.addr = alloca ptr, align 8
  %dom = alloca ptr, align 8
  %rid = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6251, metadata !DIExpression()), !dbg !6254
  call void @llvm.lifetime.start.p0(i64 8, ptr %dom) #6, !dbg !6255
  call void @llvm.dbg.declare(metadata ptr %dom, metadata !6252, metadata !DIExpression()), !dbg !6256
  call void @llvm.lifetime.start.p0(i64 4, ptr %rid) #6, !dbg !6257
  call void @llvm.dbg.declare(metadata ptr %rid, metadata !6253, metadata !DIExpression()), !dbg !6258
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6259
  %call = call zeroext i16 @pci_dev_id(ptr noundef %0) #7, !dbg !6260
  %conv = zext i16 %call to i32, !dbg !6260
  store i32 %conv, ptr %rid, align 4, !dbg !6258
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !6261
  %call1 = call i32 @pci_for_each_dma_alias(ptr noundef %1, ptr noundef @get_msi_id_cb, ptr noundef %rid) #7, !dbg !6262
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !6263
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 37, !dbg !6264
  %3 = load i32, ptr %rid, align 4, !dbg !6265
  %call2 = call ptr @of_msi_map_get_device_domain(ptr noundef %dev, i32 noundef %3, i32 noundef 3) #7, !dbg !6266
  store ptr %call2, ptr %dom, align 8, !dbg !6267
  %4 = load ptr, ptr %dom, align 8, !dbg !6268
  %tobool = icmp ne ptr %4, null, !dbg !6268
  br i1 %tobool, label %if.end, label %if.then, !dbg !6270

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !6271
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 37, !dbg !6272
  %6 = load i32, ptr %rid, align 4, !dbg !6273
  %call4 = call ptr @iort_get_device_domain(ptr noundef %dev3, i32 noundef %6, i32 noundef 3) #7, !dbg !6274
  store ptr %call4, ptr %dom, align 8, !dbg !6275
  br label %if.end, !dbg !6276

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %dom, align 8, !dbg !6277
  call void @llvm.lifetime.end.p0(i64 4, ptr %rid) #6, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 8, ptr %dom) #6, !dbg !6278
  ret ptr %7, !dbg !6279
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_msi_map_get_device_domain(ptr noundef %dev, i32 noundef %id, i32 noundef %bus_token) #3 align 16 !dbg !6280 {
entry:
  %dev.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %bus_token.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6284, metadata !DIExpression()), !dbg !6287
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !6285, metadata !DIExpression()), !dbg !6288
  store i32 %bus_token, ptr %bus_token.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus_token.addr, metadata !6286, metadata !DIExpression()), !dbg !6289
  ret ptr null, !dbg !6290
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @iort_get_device_domain(ptr noundef %dev, i32 noundef %id, i32 noundef %bus_token) #3 align 16 !dbg !6291 {
entry:
  %dev.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %bus_token.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6295, metadata !DIExpression()), !dbg !6298
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !6296, metadata !DIExpression()), !dbg !6299
  store i32 %bus_token, ptr %bus_token.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus_token.addr, metadata !6297, metadata !DIExpression()), !dbg !6300
  ret ptr null, !dbg !6301
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @msi_free_msi_descs_range(ptr noundef %dev, i32 noundef %first, i32 noundef %last) #3 align 16 !dbg !6302 {
entry:
  %dev.addr = alloca ptr, align 8
  %first.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6306, metadata !DIExpression()), !dbg !6309
  store i32 %first, ptr %first.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !6307, metadata !DIExpression()), !dbg !6310
  store i32 %last, ptr %last.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !6308, metadata !DIExpression()), !dbg !6311
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6312
  %1 = load i32, ptr %first.addr, align 4, !dbg !6313
  %2 = load i32, ptr %last.addr, align 4, !dbg !6314
  call void @msi_domain_free_msi_descs_range(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2) #7, !dbg !6315
  ret void, !dbg !6316
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6317 dso_local void @msi_domain_free_msi_descs_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msi_domain_set_desc(ptr noundef %arg, ptr noundef %desc) #0 align 16 !dbg !6320 {
entry:
  %arg.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6322, metadata !DIExpression()), !dbg !6324
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6323, metadata !DIExpression()), !dbg !6325
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6326
  %1 = load ptr, ptr %arg.addr, align 8, !dbg !6327
  %desc1 = getelementptr inbounds %struct.irq_alloc_info, ptr %1, i32 0, i32 5, !dbg !6328
  store ptr %0, ptr %desc1, align 8, !dbg !6329
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !6330
  %call = call i64 @pci_msi_domain_calc_hwirq(ptr noundef %2) #7, !dbg !6331
  %3 = load ptr, ptr %arg.addr, align 8, !dbg !6332
  %hwirq = getelementptr inbounds %struct.irq_alloc_info, ptr %3, i32 0, i32 3, !dbg !6333
  store i64 %call, ptr %hwirq, align 8, !dbg !6334
  ret void, !dbg !6335
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pci_msi_domain_calc_hwirq(ptr noundef %desc) #0 align 16 !dbg !6336 {
entry:
  %desc.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6340, metadata !DIExpression()), !dbg !6342
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #6, !dbg !6343
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6341, metadata !DIExpression()), !dbg !6344
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6345
  %call = call ptr @msi_desc_to_pci_dev(ptr noundef %0) #7, !dbg !6346
  store ptr %call, ptr %dev, align 8, !dbg !6344
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !6347
  %msi_index = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 9, !dbg !6348
  %2 = load i16, ptr %msi_index, align 8, !dbg !6348
  %conv = zext i16 %2 to i64, !dbg !6349
  %3 = load ptr, ptr %dev, align 8, !dbg !6350
  %call1 = call zeroext i16 @pci_dev_id(ptr noundef %3) #7, !dbg !6351
  %conv2 = zext i16 %call1 to i32, !dbg !6351
  %shl = shl i32 %conv2, 11, !dbg !6352
  %conv3 = sext i32 %shl to i64, !dbg !6351
  %or = or i64 %conv, %conv3, !dbg !6353
  %4 = load ptr, ptr %dev, align 8, !dbg !6354
  %bus = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1, !dbg !6355
  %5 = load ptr, ptr %bus, align 8, !dbg !6355
  %call4 = call i32 @pci_domain_nr(ptr noundef %5) #7, !dbg !6356
  %and = and i32 %call4, -1, !dbg !6357
  %conv5 = zext i32 %and to i64, !dbg !6358
  %shl6 = shl i64 %conv5, 27, !dbg !6359
  %or7 = or i64 %or, %shl6, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #6, !dbg !6361
  ret i64 %or7, !dbg !6362
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6363 dso_local ptr @msi_desc_to_pci_dev(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_domain_nr(ptr noundef %bus) #3 align 16 !dbg !6366 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6369, metadata !DIExpression()), !dbg !6370
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6371
  %call = call ptr @to_pci_sysdata(ptr noundef %0) #7, !dbg !6372
  %domain = getelementptr inbounds %struct.pci_sysdata, ptr %call, i32 0, i32 0, !dbg !6373
  %1 = load i32, ptr %domain, align 8, !dbg !6373
  ret i32 %1, !dbg !6374
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_pci_sysdata(ptr noundef %bus) #3 align 16 !dbg !6375 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6648, metadata !DIExpression()), !dbg !6649
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6650
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10, !dbg !6651
  %1 = load ptr, ptr %sysdata, align 8, !dbg !6651
  ret ptr %1, !dbg !6652
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msi_domain_write_msg(ptr noundef %irq_data, ptr noundef %msg) #0 align 16 !dbg !6653 {
entry:
  %irq_data.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %irq_data, ptr %irq_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irq_data.addr, metadata !6655, metadata !DIExpression()), !dbg !6658
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !6656, metadata !DIExpression()), !dbg !6659
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #6, !dbg !6660
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6657, metadata !DIExpression()), !dbg !6661
  %0 = load ptr, ptr %irq_data.addr, align 8, !dbg !6662
  %call = call ptr @irq_data_get_msi_desc(ptr noundef %0) #7, !dbg !6663
  store ptr %call, ptr %desc, align 8, !dbg !6661
  %1 = load ptr, ptr %desc, align 8, !dbg !6664
  %irq = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 0, !dbg !6666
  %2 = load i32, ptr %irq, align 8, !dbg !6666
  %3 = load ptr, ptr %irq_data.addr, align 8, !dbg !6667
  %irq1 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 1, !dbg !6668
  %4 = load i32, ptr %irq1, align 4, !dbg !6668
  %cmp = icmp eq i32 %2, %4, !dbg !6669
  br i1 %cmp, label %if.then, label %if.end, !dbg !6670

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %desc, align 8, !dbg !6671
  %6 = load ptr, ptr %msg.addr, align 8, !dbg !6672
  call void @__pci_write_msi_msg(ptr noundef %5, ptr noundef %6) #7, !dbg !6673
  br label %if.end, !dbg !6673

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #6, !dbg !6674
  ret void, !dbg !6674
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_data_get_msi_desc(ptr noundef %d) #3 align 16 !dbg !6675 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6679, metadata !DIExpression()), !dbg !6680
  %0 = load ptr, ptr %d.addr, align 8, !dbg !6681
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !6682
  %1 = load ptr, ptr %common, align 8, !dbg !6682
  %msi_desc = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 3, !dbg !6683
  %2 = load ptr, ptr %msi_desc, align 8, !dbg !6683
  ret ptr %2, !dbg !6684
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6685 dso_local void @__pci_write_msi_msg(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6688 dso_local zeroext i1 @msi_match_device_irq_domain(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_irq_mask_msi(ptr noundef %data) #0 align 16 !dbg !6691 {
entry:
  %data.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6693, metadata !DIExpression()), !dbg !6695
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #6, !dbg !6696
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6694, metadata !DIExpression()), !dbg !6697
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6698
  %call = call ptr @irq_data_get_msi_desc(ptr noundef %0) #7, !dbg !6699
  store ptr %call, ptr %desc, align 8, !dbg !6697
  %1 = load ptr, ptr %desc, align 8, !dbg !6700
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6701
  %irq = getelementptr inbounds %struct.irq_data, ptr %2, i32 0, i32 1, !dbg !6701
  %3 = load i32, ptr %irq, align 4, !dbg !6701
  %4 = load ptr, ptr %desc, align 8, !dbg !6701
  %irq1 = getelementptr inbounds %struct.msi_desc, ptr %4, i32 0, i32 0, !dbg !6701
  %5 = load i32, ptr %irq1, align 8, !dbg !6701
  %sub = sub i32 %3, %5, !dbg !6701
  %sh_prom = zext i32 %sub to i64, !dbg !6701
  %shl = shl i64 1, %sh_prom, !dbg !6701
  %conv = trunc i64 %shl to i32, !dbg !6701
  call void @pci_msi_mask(ptr noundef %1, i32 noundef %conv) #7, !dbg !6702
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #6, !dbg !6703
  ret void, !dbg !6703
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_irq_unmask_msi(ptr noundef %data) #0 align 16 !dbg !6704 {
entry:
  %data.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6706, metadata !DIExpression()), !dbg !6708
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #6, !dbg !6709
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6707, metadata !DIExpression()), !dbg !6710
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6711
  %call = call ptr @irq_data_get_msi_desc(ptr noundef %0) #7, !dbg !6712
  store ptr %call, ptr %desc, align 8, !dbg !6710
  %1 = load ptr, ptr %desc, align 8, !dbg !6713
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6714
  %irq = getelementptr inbounds %struct.irq_data, ptr %2, i32 0, i32 1, !dbg !6714
  %3 = load i32, ptr %irq, align 4, !dbg !6714
  %4 = load ptr, ptr %desc, align 8, !dbg !6714
  %irq1 = getelementptr inbounds %struct.msi_desc, ptr %4, i32 0, i32 0, !dbg !6714
  %5 = load i32, ptr %irq1, align 8, !dbg !6714
  %sub = sub i32 %3, %5, !dbg !6714
  %sh_prom = zext i32 %sub to i64, !dbg !6714
  %shl = shl i64 1, %sh_prom, !dbg !6714
  %conv = trunc i64 %shl to i32, !dbg !6714
  call void @pci_msi_unmask(ptr noundef %1, i32 noundef %conv) #7, !dbg !6715
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #6, !dbg !6716
  ret void, !dbg !6716
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_device_domain_set_desc(ptr noundef %arg, ptr noundef %desc) #0 align 16 !dbg !6717 {
entry:
  %arg.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6719, metadata !DIExpression()), !dbg !6721
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6720, metadata !DIExpression()), !dbg !6722
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6723
  %1 = load ptr, ptr %arg.addr, align 8, !dbg !6724
  %desc1 = getelementptr inbounds %struct.irq_alloc_info, ptr %1, i32 0, i32 5, !dbg !6725
  store ptr %0, ptr %desc1, align 8, !dbg !6726
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !6727
  %msi_index = getelementptr inbounds %struct.msi_desc, ptr %2, i32 0, i32 9, !dbg !6728
  %3 = load i16, ptr %msi_index, align 8, !dbg !6728
  %conv = zext i16 %3 to i64, !dbg !6727
  %4 = load ptr, ptr %arg.addr, align 8, !dbg !6729
  %hwirq = getelementptr inbounds %struct.irq_alloc_info, ptr %4, i32 0, i32 3, !dbg !6730
  store i64 %conv, ptr %hwirq, align 8, !dbg !6731
  ret void, !dbg !6732
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msi_mask(ptr noundef %desc, i32 noundef %mask) #3 align 16 !dbg !6733 {
entry:
  %desc.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6737, metadata !DIExpression()), !dbg !6739
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6738, metadata !DIExpression()), !dbg !6740
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6741
  %1 = load i32, ptr %mask.addr, align 4, !dbg !6742
  call void @pci_msi_update_mask(ptr noundef %0, i32 noundef 0, i32 noundef %1) #7, !dbg !6743
  ret void, !dbg !6744
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6745 dso_local void @pci_msi_update_mask(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msi_unmask(ptr noundef %desc, i32 noundef %mask) #3 align 16 !dbg !6748 {
entry:
  %desc.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6750, metadata !DIExpression()), !dbg !6752
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6751, metadata !DIExpression()), !dbg !6753
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6754
  %1 = load i32, ptr %mask.addr, align 4, !dbg !6755
  call void @pci_msi_update_mask(ptr noundef %0, i32 noundef %1, i32 noundef 0) #7, !dbg !6756
  ret void, !dbg !6757
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_irq_mask_msix(ptr noundef %data) #0 align 16 !dbg !6758 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6760, metadata !DIExpression()), !dbg !6761
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6762
  %call = call ptr @irq_data_get_msi_desc(ptr noundef %0) #7, !dbg !6763
  call void @pci_msix_mask(ptr noundef %call) #7, !dbg !6764
  ret void, !dbg !6765
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_irq_unmask_msix(ptr noundef %data) #0 align 16 !dbg !6766 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6768, metadata !DIExpression()), !dbg !6769
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6770
  %call = call ptr @irq_data_get_msi_desc(ptr noundef %0) #7, !dbg !6771
  call void @pci_msix_unmask(ptr noundef %call) #7, !dbg !6772
  ret void, !dbg !6773
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msix_prepare_desc(ptr noundef %domain, ptr noundef %arg, ptr noundef %desc) #0 align 16 !dbg !6774 {
entry:
  %domain.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !6776, metadata !DIExpression()), !dbg !6782
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6777, metadata !DIExpression()), !dbg !6783
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6778, metadata !DIExpression()), !dbg !6784
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6785
  %1 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 10, !dbg !6786
  %2 = getelementptr inbounds %struct.pci_msi_desc, ptr %1, i32 0, i32 2, !dbg !6787
  %3 = load ptr, ptr %2, align 8, !dbg !6787
  %tobool = icmp ne ptr %3, null, !dbg !6785
  br i1 %tobool, label %if.end, label %if.then, !dbg !6788

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !6789
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6779, metadata !DIExpression()), !dbg !6789
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !6789
  %dev = getelementptr inbounds %struct.msi_desc, ptr %4, i32 0, i32 2, !dbg !6789
  %5 = load ptr, ptr %dev, align 8, !dbg !6789
  store ptr %5, ptr %__mptr, align 8, !dbg !6789
  %6 = load ptr, ptr %__mptr, align 8, !dbg !6789
  %add.ptr = getelementptr i8, ptr %6, i64 -184, !dbg !6789
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6789
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !6790
  %7 = load ptr, ptr %tmp, align 8, !dbg !6789
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !6791
  call void @msix_prepare_msi_desc(ptr noundef %7, ptr noundef %8) #7, !dbg !6792
  br label %if.end, !dbg !6792

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6793
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msix_mask(ptr noundef %desc) #3 align 16 !dbg !6794 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6798, metadata !DIExpression()), !dbg !6799
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6800
  %1 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 10, !dbg !6801
  %2 = getelementptr inbounds %struct.pci_msi_desc, ptr %1, i32 0, i32 0, !dbg !6802
  %3 = load i32, ptr %2, align 8, !dbg !6803
  %or = or i32 %3, 1, !dbg !6803
  store i32 %or, ptr %2, align 8, !dbg !6803
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !6804
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !6805
  %6 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 10, !dbg !6806
  %7 = getelementptr inbounds %struct.pci_msi_desc, ptr %6, i32 0, i32 0, !dbg !6807
  %8 = load i32, ptr %7, align 8, !dbg !6807
  call void @pci_msix_write_vector_ctrl(ptr noundef %4, i32 noundef %8) #7, !dbg !6808
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !6809
  %10 = getelementptr inbounds %struct.msi_desc, ptr %9, i32 0, i32 10, !dbg !6810
  %11 = getelementptr inbounds %struct.pci_msi_desc, ptr %10, i32 0, i32 2, !dbg !6811
  %12 = load ptr, ptr %11, align 8, !dbg !6811
  %call = call i32 @readl(ptr noundef %12) #7, !dbg !6812
  ret void, !dbg !6813
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msix_write_vector_ctrl(ptr noundef %desc, i32 noundef %ctrl) #3 align 16 !dbg !6814 {
entry:
  %desc.addr = alloca ptr, align 8
  %ctrl.addr = alloca i32, align 4
  %desc_addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6816, metadata !DIExpression()), !dbg !6819
  store i32 %ctrl, ptr %ctrl.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ctrl.addr, metadata !6817, metadata !DIExpression()), !dbg !6820
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_addr) #6, !dbg !6821
  call void @llvm.dbg.declare(metadata ptr %desc_addr, metadata !6818, metadata !DIExpression()), !dbg !6822
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6823
  %call = call ptr @pci_msix_desc_addr(ptr noundef %0) #7, !dbg !6824
  store ptr %call, ptr %desc_addr, align 8, !dbg !6822
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !6825
  %2 = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 10, !dbg !6827
  %msi_attrib = getelementptr inbounds %struct.pci_msi_desc, ptr %2, i32 0, i32 1, !dbg !6828
  %bf.load = load i16, ptr %msi_attrib, align 4, !dbg !6829
  %bf.lshr = lshr i16 %bf.load, 7, !dbg !6829
  %bf.clear = and i16 %bf.lshr, 1, !dbg !6829
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !6829
  %tobool = icmp ne i8 %bf.cast, 0, !dbg !6825
  br i1 %tobool, label %if.then, label %if.end, !dbg !6830

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ctrl.addr, align 4, !dbg !6831
  %4 = load ptr, ptr %desc_addr, align 8, !dbg !6832
  %add.ptr = getelementptr i8, ptr %4, i64 12, !dbg !6833
  call void @writel(i32 noundef %3, ptr noundef %add.ptr) #7, !dbg !6834
  br label %if.end, !dbg !6834

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_addr) #6, !dbg !6835
  ret void, !dbg !6835
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #3 align 16 !dbg !6836 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6844, metadata !DIExpression()), !dbg !6846
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !6846
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6845, metadata !DIExpression()), !dbg !6846
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6846
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #6, !dbg !6846, !srcloc !6847
  store i32 %1, ptr %ret, align 4, !dbg !6846
  %2 = load i32, ptr %ret, align 4, !dbg !6846
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !6846
  ret i32 %2, !dbg !6846
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_msix_desc_addr(ptr noundef %desc) #3 align 16 !dbg !6848 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6852, metadata !DIExpression()), !dbg !6853
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6854
  %1 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 10, !dbg !6855
  %2 = getelementptr inbounds %struct.pci_msi_desc, ptr %1, i32 0, i32 2, !dbg !6856
  %3 = load ptr, ptr %2, align 8, !dbg !6856
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !6857
  %msi_index = getelementptr inbounds %struct.msi_desc, ptr %4, i32 0, i32 9, !dbg !6858
  %5 = load i16, ptr %msi_index, align 8, !dbg !6858
  %conv = zext i16 %5 to i32, !dbg !6857
  %mul = mul i32 %conv, 16, !dbg !6859
  %idx.ext = sext i32 %mul to i64, !dbg !6860
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.ext, !dbg !6860
  ret ptr %add.ptr, !dbg !6861
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #3 align 16 !dbg !6862 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6867, metadata !DIExpression()), !dbg !6869
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6868, metadata !DIExpression()), !dbg !6869
  %0 = load i32, ptr %val.addr, align 4, !dbg !6869
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6869
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #6, !dbg !6869, !srcloc !6870
  ret void, !dbg !6869
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_msix_unmask(ptr noundef %desc) #3 align 16 !dbg !6871 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6873, metadata !DIExpression()), !dbg !6874
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6875
  %1 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 10, !dbg !6876
  %2 = getelementptr inbounds %struct.pci_msi_desc, ptr %1, i32 0, i32 0, !dbg !6877
  %3 = load i32, ptr %2, align 8, !dbg !6878
  %and = and i32 %3, -2, !dbg !6878
  store i32 %and, ptr %2, align 8, !dbg !6878
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !6879
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !6880
  %6 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 10, !dbg !6881
  %7 = getelementptr inbounds %struct.pci_msi_desc, ptr %6, i32 0, i32 0, !dbg !6882
  %8 = load i32, ptr %7, align 8, !dbg !6882
  call void @pci_msix_write_vector_ctrl(ptr noundef %4, i32 noundef %8) #7, !dbg !6883
  ret void, !dbg !6884
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6885 dso_local void @msix_prepare_msi_desc(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_of_node(ptr noundef %fwnode) #3 align 16 !dbg !6888 {
entry:
  %fwnode.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !6892, metadata !DIExpression()), !dbg !6893
  ret ptr null, !dbg !6894
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5577, !5578, !5579, !5580, !5581, !5582, !5583, !5584}
!llvm.ident = !{!5585}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/pci/msi/irqdomain.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7cf4279596f3eac80fb8e5af0e292b95")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_msi_create_irq_domain292", scope: !9, file: !2, line: 140, type: !265, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/msi/.irqdomain.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/msi/irqdomain\22 -D KBUILD_BASENAME=\22irqdomain\22 -D KBUILD_MODNAME=\22irqdomain\22 -D __KBUILD_MODNAME=kmod_irqdomain -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/msi/irqdomain.ll drivers/pci/msi/irqdomain.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !264, globals: !5549, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !30, !35, !43, !59, !67, !73, !80, !87, !93, !99, !106, !114, !122, !128, !147, !154, !162, !168, !178, !187, !192, !197, !203, !209, !227, !241, !246, !251}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !31, line: 65, baseType: !13, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!34 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !36, line: 9, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!39 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!40 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!41 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!42 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !44, line: 1325, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!46 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!47 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!48 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!49 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!50 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!51 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!52 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!53 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!54 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!55 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!56 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!57 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!58 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !60, line: 68, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!65 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!66 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !68, line: 16, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "TT_NONE", value: 0)
!71 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!72 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !74, line: 51, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!77 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!78 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!79 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !13, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !123, line: 30, baseType: !13, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!126 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!127 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !129, line: 12, baseType: !13, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!131 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!132 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!133 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!134 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!135 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!136 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!137 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!138 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!139 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!140 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!141 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!142 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!143 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!144 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!145 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!146 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !148, line: 497, baseType: !13, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!149 = !{!150, !151, !152, !153}
!150 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!151 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!152 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!153 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !155, line: 1094, baseType: !13, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!156 = !{!157, !158, !159, !160, !161}
!157 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1)
!158 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2)
!159 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4)
!160 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8)
!161 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !163, line: 11, baseType: !13, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!164 = !{!165, !166, !167}
!165 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!166 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!167 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_alloc_type", file: !169, line: 36, baseType: !13, size: 32, elements: !170)
!169 = !DIFile(filename: "./arch/x86/include/asm/hw_irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "63f4463629042f334374af478f7e7db8")
!170 = !{!171, !172, !173, !174, !175, !176, !177}
!171 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_IOAPIC", value: 1)
!172 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_HPET", value: 2)
!173 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSI", value: 3)
!174 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_PCI_MSIX", value: 4)
!175 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_DMAR", value: 5)
!176 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_AMDVI", value: 6)
!177 = !DIEnumerator(name: "X86_IRQ_ALLOC_TYPE_UV", value: 7)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186}
!180 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!181 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!182 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!183 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!184 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!185 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!186 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !188)
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!190 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!191 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !193)
!193 = !{!194, !195, !196}
!194 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!195 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!196 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !198)
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!200 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!201 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!202 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "msi_domain_ids", file: !204, line: 16, baseType: !13, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/msi_api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fcac0f5d9a7a05197477b5383eee228")
!205 = !{!206, !207, !208}
!206 = !DIEnumerator(name: "MSI_DEFAULT_DOMAIN", value: 0)
!207 = !DIEnumerator(name: "MSI_SECONDARY_DOMAIN", value: 1)
!208 = !DIEnumerator(name: "MSI_MAX_DEVICE_IRQDOMAINS", value: 2)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !210, line: 526, baseType: !13, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4852ae4344fcd499a416b3c5d20e2abd")
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!212 = !DIEnumerator(name: "MSI_FLAG_USE_DEF_DOM_OPS", value: 1)
!213 = !DIEnumerator(name: "MSI_FLAG_USE_DEF_CHIP_OPS", value: 2)
!214 = !DIEnumerator(name: "MSI_FLAG_ACTIVATE_EARLY", value: 4)
!215 = !DIEnumerator(name: "MSI_FLAG_MUST_REACTIVATE", value: 8)
!216 = !DIEnumerator(name: "MSI_FLAG_DEV_SYSFS", value: 16)
!217 = !DIEnumerator(name: "MSI_FLAG_ALLOC_SIMPLE_MSI_DESCS", value: 32)
!218 = !DIEnumerator(name: "MSI_FLAG_FREE_MSI_DESCS", value: 64)
!219 = !DIEnumerator(name: "MSI_GENERIC_FLAGS_MASK", value: 65535)
!220 = !DIEnumerator(name: "MSI_DOMAIN_FLAGS_MASK", value: 4294901760, isUnsigned: true)
!221 = !DIEnumerator(name: "MSI_FLAG_MULTI_PCI_MSI", value: 65536)
!222 = !DIEnumerator(name: "MSI_FLAG_PCI_MSIX", value: 131072)
!223 = !DIEnumerator(name: "MSI_FLAG_LEVEL_CAPABLE", value: 262144)
!224 = !DIEnumerator(name: "MSI_FLAG_MSIX_CONTIGUOUS", value: 524288)
!225 = !DIEnumerator(name: "MSI_FLAG_PCI_MSIX_ALLOC_DYN", value: 1048576)
!226 = !DIEnumerator(name: "MSI_FLAG_PCI_IMS", value: 2097152)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 571, baseType: !13, size: 32, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!229 = !DIEnumerator(name: "IRQCHIP_SET_TYPE_MASKED", value: 1)
!230 = !DIEnumerator(name: "IRQCHIP_EOI_IF_HANDLED", value: 2)
!231 = !DIEnumerator(name: "IRQCHIP_MASK_ON_SUSPEND", value: 4)
!232 = !DIEnumerator(name: "IRQCHIP_ONOFFLINE_ENABLED", value: 8)
!233 = !DIEnumerator(name: "IRQCHIP_SKIP_SET_WAKE", value: 16)
!234 = !DIEnumerator(name: "IRQCHIP_ONESHOT_SAFE", value: 32)
!235 = !DIEnumerator(name: "IRQCHIP_EOI_THREADED", value: 64)
!236 = !DIEnumerator(name: "IRQCHIP_SUPPORTS_LEVEL_MSI", value: 128)
!237 = !DIEnumerator(name: "IRQCHIP_SUPPORTS_NMI", value: 256)
!238 = !DIEnumerator(name: "IRQCHIP_ENABLE_WAKEUP_ON_SUSPEND", value: 512)
!239 = !DIEnumerator(name: "IRQCHIP_AFFINITY_PRE_STARTUP", value: 1024)
!240 = !DIEnumerator(name: "IRQCHIP_IMMUTABLE", value: 2048)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !242, line: 10, baseType: !13, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!243 = !{!244, !245}
!244 = !DIEnumerator(name: "false", value: 0)
!245 = !DIEnumerator(name: "true", value: 1)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "support_mode", file: !247, line: 104, baseType: !13, size: 32, elements: !248)
!247 = !DIFile(filename: "drivers/pci/msi/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd98519ee1af8db17ba589d6958e675e")
!248 = !{!249, !250}
!249 = !DIEnumerator(name: "ALLOW_LEGACY", value: 0)
!250 = !DIEnumerator(name: "DENY_LEGACY", value: 1)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !252, line: 181, baseType: !13, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!254 = !DIEnumerator(name: "IRQ_DOMAIN_FLAG_HIERARCHY", value: 1)
!255 = !DIEnumerator(name: "IRQ_DOMAIN_NAME_ALLOCATED", value: 2)
!256 = !DIEnumerator(name: "IRQ_DOMAIN_FLAG_IPI_PER_CPU", value: 4)
!257 = !DIEnumerator(name: "IRQ_DOMAIN_FLAG_IPI_SINGLE", value: 8)
!258 = !DIEnumerator(name: "IRQ_DOMAIN_FLAG_MSI", value: 16)
!259 = !DIEnumerator(name: "IRQ_DOMAIN_FLAG_ISOLATED_MSI", value: 32)
!260 = !DIEnumerator(name: "IRQ_DOMAIN_FLAG_NO_MAP", value: 64)
!261 = !DIEnumerator(name: "IRQ_DOMAIN_FLAG_MSI_PARENT", value: 256)
!262 = !DIEnumerator(name: "IRQ_DOMAIN_FLAG_MSI_DEVICE", value: 512)
!263 = !DIEnumerator(name: "IRQ_DOMAIN_FLAG_NONCORE", value: 65536)
!264 = !{!265, !13, !266, !267, !270, !272, !416}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!266 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !268, line: 170, baseType: !269)
!268 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!269 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !274, line: 322, size: 16640, elements: !275)
!274 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!275 = !{!276, !282, !5325, !5326, !5327, !5328, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5434, !5435, !5436, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5513, !5514, !5515, !5516, !5517, !5519, !5520, !5521, !5522, !5528, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !273, file: !274, line: 323, baseType: !277, size: 128)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !268, line: 190, size: 128, elements: !278)
!278 = !{!279, !281}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !268, line: 191, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !277, file: !268, line: 191, baseType: !280, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !273, file: !274, line: 324, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !274, line: 647, size: 8256, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !317, !318, !319, !346, !347, !351, !353, !354, !355, !356, !360, !361, !363, !5320, !5321, !5322, !5323, !5324}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !284, file: !274, line: 648, baseType: !277, size: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !284, file: !274, line: 649, baseType: !283, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !284, file: !274, line: 650, baseType: !277, size: 128, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !284, file: !274, line: 651, baseType: !277, size: 128, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !284, file: !274, line: 652, baseType: !272, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !284, file: !274, line: 653, baseType: !277, size: 128, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !284, file: !274, line: 655, baseType: !293, size: 256, offset: 640)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 256, elements: !315)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !296, line: 21, size: 512, elements: !297)
!296 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!297 = !{!298, !306, !307, !310, !311, !312, !313, !314}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !295, file: !296, line: 22, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !268, line: 164, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !268, line: 159, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !302, line: 23, baseType: !303)
!302 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !304, line: 31, baseType: !305)
!304 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!305 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !295, file: !296, line: 23, baseType: !299, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 24, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !296, line: 25, baseType: !269, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !295, file: !296, line: 26, baseType: !269, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !295, file: !296, line: 27, baseType: !294, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !295, file: !296, line: 27, baseType: !294, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !295, file: !296, line: 27, baseType: !294, size: 64, offset: 448)
!315 = !{!316}
!316 = !DISubrange(count: 4)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !284, file: !274, line: 656, baseType: !277, size: 128, offset: 896)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !284, file: !274, line: 657, baseType: !295, size: 512, offset: 1024)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !284, file: !274, line: 659, baseType: !320, size: 64, offset: 1536)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !274, line: 773, size: 320, elements: !322)
!322 = !{!323, !327, !331, !335, !342}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !321, file: !274, line: 774, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!115, !283}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !321, file: !274, line: 775, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !283}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !321, file: !274, line: 776, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!265, !283, !13, !115}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !321, file: !274, line: 777, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!115, !283, !13, !115, !115, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !302, line: 21, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !304, line: 27, baseType: !13)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !321, file: !274, line: 778, baseType: !343, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!115, !283, !13, !115, !115, !340}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !284, file: !274, line: 660, baseType: !265, size: 64, offset: 1600)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !284, file: !274, line: 661, baseType: !348, size: 64, offset: 1664)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !350, line: 86, flags: DIFlagFwdDecl)
!350 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!351 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !284, file: !274, line: 663, baseType: !352, size: 8, offset: 1728)
!352 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !284, file: !274, line: 664, baseType: !352, size: 8, offset: 1736)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !284, file: !274, line: 665, baseType: !352, size: 8, offset: 1744)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !284, file: !274, line: 666, baseType: !352, size: 8, offset: 1752)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !274, line: 671, baseType: !357, size: 384, offset: 1760)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 48)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !284, file: !274, line: 673, baseType: !266, size: 16, offset: 2144)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !284, file: !274, line: 674, baseType: !362, size: 16, offset: 2160)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !274, line: 255, baseType: !266)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !284, file: !274, line: 675, baseType: !364, size: 64, offset: 2176)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !366)
!366 = !{!367, !4290, !4291, !4294, !4295, !4348, !4433, !4434, !4435, !4436, !4437, !4444, !4536, !4549, !5234, !5238, !5240, !5241, !5242, !5246, !5253, !5254, !5257, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5297, !5298, !5299, !5302, !5305, !5314, !5315, !5316, !5317, !5318, !5319}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !365, file: !100, line: 706, baseType: !368, size: 512)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !369, line: 64, size: 512, elements: !370)
!369 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!370 = !{!371, !372, !373, !375, !460, !4177, !4280, !4285, !4286, !4287, !4288, !4289}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !369, line: 65, baseType: !308, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !368, file: !369, line: 66, baseType: !277, size: 128, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !368, file: !369, line: 67, baseType: !374, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !368, file: !369, line: 68, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !369, line: 168, size: 768, elements: !378)
!378 = !{!379, !380, !419, !420}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !377, file: !369, line: 169, baseType: !277, size: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !377, file: !369, line: 170, baseType: !381, size: 32, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !382, line: 29, baseType: !383)
!382 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !382, line: 17, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !382, line: 18, baseType: !386, size: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !382, line: 18, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !386, file: !382, line: 19, baseType: !389, size: 32)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !390, line: 14, size: 32, elements: !391)
!390 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !389, file: !390, line: 15, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !394, line: 44, baseType: !395)
!394 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !394, line: 14, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !394, line: 15, baseType: !398, size: 32)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !394, line: 15, size: 32, elements: !399)
!399 = !{!400, !405, !412}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !398, file: !394, line: 16, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !268, line: 174, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !268, line: 172, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !402, file: !268, line: 173, baseType: !115, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !394, line: 24, baseType: !406, size: 16)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !398, file: !394, line: 24, size: 16, elements: !407)
!407 = !{!408, !411}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !406, file: !394, line: 25, baseType: !409, size: 8)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !302, line: 17, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !304, line: 21, baseType: !352)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !406, file: !394, line: 26, baseType: !409, size: 8, offset: 8)
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !394, line: 28, baseType: !413, size: 32)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !398, file: !394, line: 28, size: 32, elements: !414)
!414 = !{!415, !418}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !413, file: !394, line: 29, baseType: !416, size: 16)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !302, line: 19, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !304, line: 24, baseType: !266)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !413, file: !394, line: 30, baseType: !416, size: 16, offset: 16)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !377, file: !369, line: 171, baseType: !368, size: 512, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !377, file: !369, line: 172, baseType: !421, size: 64, offset: 704)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !369, line: 133, size: 192, elements: !424)
!424 = !{!425, !432, !437}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !423, file: !369, line: 134, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!115, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !423, file: !369, line: 135, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!308, !430}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !423, file: !369, line: 136, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!115, !430, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !369, line: 125, size: 20736, elements: !444)
!444 = !{!445, !450, !454, !455, !459}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !443, file: !369, line: 126, baseType: !446, size: 192)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 192, elements: !448)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!448 = !{!449}
!449 = !DISubrange(count: 3)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !443, file: !369, line: 127, baseType: !451, size: 4096, offset: 192)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 4096, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !443, file: !369, line: 128, baseType: !115, size: 32, offset: 4288)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !443, file: !369, line: 129, baseType: !456, size: 16384, offset: 4320)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 2048)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !443, file: !369, line: 130, baseType: !115, size: 32, offset: 20704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !368, file: !369, line: 69, baseType: !461, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !369, line: 116, size: 384, elements: !464)
!464 = !{!465, !469, !497, !4139, !4167, !4171}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !463, file: !369, line: 117, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !374}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !463, file: !369, line: 118, baseType: !470, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !473, line: 254, size: 128, elements: !474)
!473 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!474 = !{!475, !490}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !472, file: !473, line: 255, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !374, !484, !447}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !268, line: 66, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !481, line: 73, baseType: !482)
!481 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !481, line: 15, baseType: !483)
!483 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !473, line: 30, size: 128, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !473, line: 31, baseType: !308, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !485, file: !473, line: 32, baseType: !489, size: 16, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !268, line: 24, baseType: !266)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !472, file: !473, line: 256, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!479, !374, !484, !308, !494}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !268, line: 61, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !481, line: 72, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !481, line: 16, baseType: !269)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !463, file: !369, line: 119, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !473, line: 84, size: 320, elements: !502)
!502 = !{!503, !504, !508, !4135, !4137}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !501, file: !473, line: 85, baseType: !308, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !501, file: !473, line: 86, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!489, !374, !484, !115}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !501, file: !473, line: 88, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!489, !374, !512, !115}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !473, line: 175, size: 512, elements: !514)
!514 = !{!515, !516, !517, !518, !4126, !4130, !4131}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !513, file: !473, line: 176, baseType: !485, size: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !513, file: !473, line: 177, baseType: !494, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !513, file: !473, line: 178, baseType: !265, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !513, file: !473, line: 179, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !524)
!524 = !{!525, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !4120, !4121, !4122, !4123, !4124, !4125}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !523, file: !20, line: 473, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !528)
!528 = !{!529, !530, !531, !539, !540, !547, !548, !551, !552, !3899, !3900, !3901, !3902, !3903, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3943, !3946, !3947, !3948, !3957, !3958, !3959, !3960}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !527, file: !20, line: 642, baseType: !489, size: 16)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !527, file: !20, line: 643, baseType: !266, size: 16, offset: 16)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !527, file: !20, line: 644, baseType: !532, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !533, line: 23, baseType: !534)
!533 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !533, line: 21, size: 32, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !534, file: !533, line: 22, baseType: !537, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !268, line: 37, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !481, line: 49, baseType: !13)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !527, file: !20, line: 645, baseType: !277, size: 128, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !527, file: !20, line: 646, baseType: !541, size: 32, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !533, line: 28, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !533, line: 26, size: 32, elements: !543)
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !542, file: !533, line: 27, baseType: !545, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !268, line: 38, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !481, line: 50, baseType: !13)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !527, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !527, file: !20, line: 650, baseType: !549, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !527, file: !20, line: 651, baseType: !549, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !527, file: !20, line: 654, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !556)
!556 = !{!557, !3727, !3737, !3741, !3745, !3749, !3753, !3757, !3761, !3765, !3769, !3770, !3774, !3778, !3815, !3844, !3848, !3854, !3858, !3862, !3866, !3870, !3874, !3880, !3884}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !555, file: !20, line: 1967, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!561, !526, !561, !13}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !563, line: 82, size: 1536, elements: !564)
!563 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!564 = !{!565, !566, !576, !584, !585, !600, !601, !605, !618, !3710, !3711, !3712, !3713, !3719, !3720, !3721}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !562, file: !563, line: 84, baseType: !13, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !562, file: !563, line: 85, baseType: !567, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !568, line: 275, baseType: !569)
!568 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !568, line: 275, size: 32, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !569, file: !568, line: 275, baseType: !572, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !568, line: 69, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !568, line: 64, size: 32, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !573, file: !568, line: 65, baseType: !13, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !562, file: !563, line: 86, baseType: !577, size: 128, offset: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !578, line: 38, size: 128, elements: !579)
!578 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!579 = !{!580, !582}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !577, file: !578, line: 39, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !577, file: !578, line: 39, baseType: !583, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !562, file: !563, line: 87, baseType: !561, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !562, file: !563, line: 88, baseType: !586, size: 128, offset: 256)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !563, line: 49, size: 128, elements: !587)
!587 = !{!588, !597}
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !563, line: 50, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !586, file: !563, line: 50, size: 64, elements: !590)
!590 = !{!591, !596}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !563, line: 51, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !589, file: !563, line: 51, size: 64, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !592, file: !563, line: 52, baseType: !340, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !592, file: !563, line: 52, baseType: !340, size: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !589, file: !563, line: 54, baseType: !301, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !586, file: !563, line: 56, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !562, file: !563, line: 89, baseType: !526, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !562, file: !563, line: 91, baseType: !602, size: 256, offset: 448)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 256, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !562, file: !563, line: 94, baseType: !606, size: 64, offset: 704)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !607, line: 25, size: 64, elements: !608)
!607 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !607, line: 26, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !607, line: 26, size: 64, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !610, file: !607, line: 28, baseType: !303, size: 64, align: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !607, line: 30, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !607, line: 30, size: 64, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !614, file: !607, line: 31, baseType: !381, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !614, file: !607, line: 32, baseType: !115, size: 32, offset: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !562, file: !563, line: 95, baseType: !619, size: 64, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !563, line: 128, size: 1024, align: 512, elements: !622)
!622 = !{!623, !627, !628, !635, !641, !645, !649, !653, !654, !658, !662, !3700, !3704}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !621, file: !563, line: 129, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!115, !561, !13}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !621, file: !563, line: 130, baseType: !624, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !621, file: !563, line: 131, baseType: !629, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!115, !632, !634}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !621, file: !563, line: 132, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!115, !632, !13, !308, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !621, file: !563, line: 134, baseType: !642, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!115, !632}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !621, file: !563, line: 135, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!115, !561}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !621, file: !563, line: 136, baseType: !650, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !561}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !621, file: !563, line: 137, baseType: !650, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !621, file: !563, line: 138, baseType: !655, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !561, !526}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !621, file: !563, line: 139, baseType: !659, size: 64, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!447, !561, !447, !115}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !621, file: !563, line: 140, baseType: !663, size: 64, offset: 640)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!666, !3699}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !668, line: 70, size: 256, elements: !669)
!668 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!669 = !{!670, !671, !3695, !3696}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !667, file: !668, line: 71, baseType: !561, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !667, file: !668, line: 72, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !674)
!674 = !{!675, !676, !679, !680, !681, !685, !1163, !1303, !1343, !1433, !1437, !1438, !1439, !1440, !1441, !1450, !1451, !1452, !1453, !1458, !1462, !1463, !1466, !1469, !1472, !1475, !1476, !1477, !1518, !3628, !3629, !3630, !3631, !3632, !3633, !3636, !3638, !3645, !3646, !3647, !3648, !3649, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !673, file: !20, line: 1191, baseType: !277, size: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !673, file: !20, line: 1192, baseType: !677, size: 32, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !268, line: 21, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !268, line: 18, baseType: !340)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !673, file: !20, line: 1193, baseType: !352, size: 8, offset: 160)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !673, file: !20, line: 1194, baseType: !269, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !673, file: !20, line: 1195, baseType: !682, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !268, line: 52, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !481, line: 88, baseType: !684)
!684 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !673, file: !20, line: 1196, baseType: !686, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !688)
!688 = !{!689, !690, !691, !698, !702, !706, !710, !1148, !1149, !1153, !1155, !1156, !1157, !1159, !1160, !1161, !1162}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !687, file: !20, line: 2367, baseType: !308, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !687, file: !20, line: 2368, baseType: !115, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !687, file: !20, line: 2376, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!115, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !697, line: 32, flags: DIFlagFwdDecl)
!697 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!698 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !687, file: !20, line: 2377, baseType: !699, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !687, file: !20, line: 2378, baseType: !703, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!561, !686, !115, !308, !265}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !687, file: !20, line: 2380, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !672}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !687, file: !20, line: 2381, baseType: !711, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !713)
!713 = !{!714, !715, !716, !720, !742, !768, !769, !770, !771, !775, !780, !781, !801, !857, !858, !859, !860, !861, !864, !865, !866, !874, !878, !905, !926, !927, !928, !929, !938, !961, !962, !965, !968, !969, !970, !971, !972, !973, !974, !979, !980, !1106, !1114, !1115, !1116, !1118, !1122, !1123, !1127, !1128, !1129, !1130, !1132, !1133, !1134, !1141, !1142, !1143, !1147}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !712, file: !12, line: 403, baseType: !11, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !712, file: !12, line: 406, baseType: !277, size: 128, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !712, file: !12, line: 409, baseType: !717, size: 448, offset: 192)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 56)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !712, file: !12, line: 417, baseType: !721, size: 768, offset: 640)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !722)
!722 = !{!723, !724, !725, !726, !729}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !721, file: !12, line: 46, baseType: !368, size: 512)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !721, file: !12, line: 47, baseType: !711, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !721, file: !12, line: 48, baseType: !374, size: 64, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !721, file: !12, line: 49, baseType: !727, size: 64, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !721, file: !12, line: 50, baseType: !730, size: 64, offset: 704)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !732, line: 26, size: 256, elements: !733)
!732 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !731, file: !732, line: 27, baseType: !13, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !731, file: !732, line: 28, baseType: !736, size: 192, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !737, line: 43, size: 192, elements: !738)
!737 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!738 = !{!739, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !736, file: !737, line: 44, baseType: !740, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !390, line: 23, baseType: !389)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !736, file: !737, line: 45, baseType: !277, size: 128, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !712, file: !12, line: 418, baseType: !743, size: 64, offset: 1408)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !745)
!745 = !{!746, !747, !752, !756, !760, !764}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !744, file: !12, line: 54, baseType: !485, size: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !744, file: !12, line: 55, baseType: !748, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!479, !743, !751, !447}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !744, file: !12, line: 57, baseType: !753, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!479, !743, !751, !308, !494}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !744, file: !12, line: 59, baseType: !757, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !711, !308}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !744, file: !12, line: 60, baseType: !761, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!115, !711}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !744, file: !12, line: 61, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !711}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !712, file: !12, line: 419, baseType: !308, size: 64, offset: 1472)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !712, file: !12, line: 420, baseType: !308, size: 64, offset: 1536)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !712, file: !12, line: 421, baseType: !374, size: 64, offset: 1600)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !712, file: !12, line: 424, baseType: !772, size: 64, offset: 1664)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !712, file: !12, line: 425, baseType: !776, size: 64, offset: 1728)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !302, line: 20, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !304, line: 26, baseType: !115)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !712, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !712, file: !12, line: 435, baseType: !782, size: 256, offset: 1856)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !783, line: 66, size: 256, elements: !784)
!783 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!784 = !{!785, !794, !795, !800}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !782, file: !783, line: 67, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !787, line: 13, baseType: !788)
!787 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !268, line: 181, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !268, line: 179, size: 64, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !789, file: !268, line: 180, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !302, line: 22, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !304, line: 30, baseType: !684)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !782, file: !783, line: 68, baseType: !740, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !782, file: !783, line: 70, baseType: !796, size: 32, offset: 96)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !797, line: 15, size: 32, elements: !798)
!797 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !796, file: !797, line: 20, baseType: !401, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !782, file: !783, line: 72, baseType: !277, size: 128, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !712, file: !12, line: 437, baseType: !802, size: 64, offset: 2112)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !804, line: 69, size: 320, elements: !805)
!804 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!805 = !{!806, !807, !808, !828, !830, !834, !835}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !803, file: !804, line: 70, baseType: !308, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !803, file: !804, line: 71, baseType: !711, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !803, file: !804, line: 72, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !804, line: 47, size: 256, elements: !812)
!812 = !{!813, !814, !820, !824}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !804, line: 49, baseType: !13, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !811, file: !804, line: 51, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!115, !308, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !811, file: !804, line: 53, baseType: !821, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!115, !447, !818}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !811, file: !804, line: 55, baseType: !825, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !265}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !803, file: !804, line: 73, baseType: !829, size: 16, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !803, file: !804, line: 74, baseType: !831, size: 8, offset: 208)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !302, line: 16, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !304, line: 20, baseType: !833)
!833 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !804, line: 75, baseType: !409, size: 8, offset: 216)
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !804, line: 76, baseType: !836, size: 64, offset: 256)
!836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !803, file: !804, line: 76, size: 64, elements: !837)
!837 = !{!838, !839, !846}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !836, file: !804, line: 77, baseType: !265, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !836, file: !804, line: 78, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !804, line: 86, size: 128, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !842, file: !804, line: 87, baseType: !13, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !842, file: !804, line: 88, baseType: !447, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !836, file: !804, line: 79, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !804, line: 92, size: 256, elements: !850)
!850 = !{!851, !852, !853, !855, !856}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !849, file: !804, line: 94, baseType: !13, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !849, file: !804, line: 95, baseType: !13, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !849, file: !804, line: 96, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !849, file: !804, line: 97, baseType: !809, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !849, file: !804, line: 98, baseType: !265, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !712, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !712, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !712, file: !12, line: 442, baseType: !772, size: 64, offset: 2240)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !712, file: !12, line: 443, baseType: !776, size: 64, offset: 2304)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !712, file: !12, line: 444, baseType: !862, size: 8, offset: 2368)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !268, line: 35, baseType: !863)
!863 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !712, file: !12, line: 451, baseType: !862, size: 8, offset: 2376)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !712, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !712, file: !12, line: 455, baseType: !867, size: 64, offset: 2432)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !869, line: 23, size: 96, elements: !870)
!869 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!870 = !{!871, !872, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !868, file: !869, line: 24, baseType: !115, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !868, file: !869, line: 24, baseType: !115, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !868, file: !869, line: 24, baseType: !115, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !712, file: !12, line: 458, baseType: !875, size: 64, offset: 2496)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!115}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !712, file: !12, line: 460, baseType: !879, size: 4032, align: 512, offset: 2560)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 4032, elements: !903)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !880, file: !12, line: 363, baseType: !265, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !880, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !880, file: !12, line: 367, baseType: !885, size: 448, offset: 128)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !885, file: !12, line: 320, baseType: !711, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !885, file: !12, line: 321, baseType: !889, size: 384, offset: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !890, line: 40, size: 384, elements: !891)
!890 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!891 = !{!892}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !889, file: !890, line: 41, baseType: !893, size: 384, align: 64)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 384, align: 64, elements: !901)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !895, line: 5, size: 192, align: 64, elements: !896)
!895 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!896 = !{!897, !898, !900}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !894, file: !895, line: 6, baseType: !269, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !894, file: !895, line: 7, baseType: !899, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !894, file: !895, line: 8, baseType: !899, size: 64, offset: 128)
!901 = !{!902}
!902 = !DISubrange(count: 2)
!903 = !{!904}
!904 = !DISubrange(count: 7)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !712, file: !12, line: 463, baseType: !906, size: 192, offset: 6592)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !907, line: 8, size: 192, elements: !908)
!907 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!908 = !{!909, !910, !912}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !906, file: !907, line: 10, baseType: !13, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !906, file: !907, line: 11, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !906, file: !907, line: 12, baseType: !913, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !915, line: 59, size: 48, elements: !916)
!915 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!916 = !{!917, !921, !922, !923, !924, !925}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !914, file: !915, line: 60, baseType: !918, size: 16)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !302, line: 18, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !304, line: 23, baseType: !920)
!920 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !914, file: !915, line: 61, baseType: !918, size: 16, offset: 16)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !914, file: !915, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !914, file: !915, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !914, file: !915, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !914, file: !915, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !712, file: !12, line: 465, baseType: !269, size: 64, offset: 6784)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !712, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !712, file: !12, line: 470, baseType: !277, size: 128, offset: 6912)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !712, file: !12, line: 471, baseType: !930, size: 64, offset: 7040)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !932, line: 33, size: 96, elements: !933)
!932 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!933 = !{!934, !935, !936, !937}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !931, file: !932, line: 37, baseType: !115, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !931, file: !932, line: 43, baseType: !115, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !931, file: !932, line: 45, baseType: !266, size: 16, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !931, file: !932, line: 47, baseType: !266, size: 16, offset: 80)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !712, file: !12, line: 476, baseType: !939, size: 64, offset: 7104)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !941)
!941 = !{!942, !958, !959, !960}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !940, file: !12, line: 379, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !945, line: 204, baseType: !946)
!945 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !945, line: 197, size: 192, elements: !947)
!947 = !{!948, !950, !951, !952, !954, !956}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !946, file: !945, line: 198, baseType: !949, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !945, line: 21, baseType: !341)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !946, file: !945, line: 199, baseType: !352, size: 8, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !946, file: !945, line: 200, baseType: !352, size: 8, offset: 40)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !946, file: !945, line: 201, baseType: !953, size: 16, offset: 48)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !945, line: 17, baseType: !417)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !946, file: !945, line: 202, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !945, line: 16, baseType: !303)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !946, file: !945, line: 203, baseType: !957, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !945, line: 22, baseType: !303)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !940, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !940, file: !12, line: 381, baseType: !447, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !940, file: !12, line: 382, baseType: !447, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !712, file: !12, line: 477, baseType: !940, size: 256, offset: 7168)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !712, file: !12, line: 480, baseType: !963, size: 64, offset: 7424)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !712, file: !12, line: 483, baseType: !966, size: 64, offset: 7488)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !712, file: !12, line: 488, baseType: !447, size: 64, offset: 7552)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !712, file: !12, line: 492, baseType: !265, size: 64, offset: 7616)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !712, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !712, file: !12, line: 495, baseType: !265, size: 64, offset: 7744)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !712, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !712, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !712, file: !12, line: 500, baseType: !975, size: 64, offset: 7872)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !977, line: 45, baseType: !978)
!977 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !712, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !712, file: !12, line: 504, baseType: !981, size: 64, offset: 8000)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !984, line: 96, size: 192, elements: !985)
!984 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!985 = !{!986, !987, !1066, !1070}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !983, file: !984, line: 97, baseType: !13, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !983, file: !984, line: 98, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !984, line: 24, size: 3072, elements: !990)
!990 = !{!991, !993, !994, !995, !996, !1018, !1019, !1020, !1021, !1039, !1051, !1052, !1063, !1064, !1065}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !989, file: !984, line: 26, baseType: !992, size: 128)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 128, elements: !901)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !989, file: !984, line: 27, baseType: !992, size: 128, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !989, file: !984, line: 28, baseType: !115, size: 32, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !989, file: !984, line: 31, baseType: !381, size: 32, align: 512, offset: 512)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !989, file: !984, line: 32, baseType: !997, size: 960, offset: 576)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !998, line: 206, size: 960, elements: !999)
!998 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!999 = !{!1000, !1009, !1012, !1014, !1015, !1017}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !997, file: !998, line: 207, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !268, line: 232, size: 128, align: 64, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1002, file: !268, line: 233, baseType: !1001, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1002, file: !268, line: 234, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !1001}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !997, file: !998, line: 208, baseType: !1010, size: 256, offset: 64)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 256, elements: !315)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !997, file: !998, line: 209, baseType: !1013, size: 256, offset: 320)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 256, elements: !315)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !997, file: !998, line: 213, baseType: !483, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !997, file: !998, line: 215, baseType: !1016, size: 256, offset: 640)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 256, elements: !315)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !997, file: !998, line: 216, baseType: !409, size: 8, offset: 896)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !989, file: !984, line: 33, baseType: !269, size: 64, offset: 1536)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !989, file: !984, line: 34, baseType: !269, size: 64, offset: 1600)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !989, file: !984, line: 35, baseType: !862, size: 8, offset: 1664)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !989, file: !984, line: 36, baseType: !1022, size: 320, offset: 1728)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1023, line: 11, size: 320, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1024 = !{!1025, !1032, !1033, !1038}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1022, file: !1023, line: 16, baseType: !1026, size: 128)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !268, line: 198, size: 128, elements: !1027)
!1027 = !{!1028, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1026, file: !268, line: 199, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1026, file: !268, line: 199, baseType: !1031, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1022, file: !1023, line: 17, baseType: !269, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1022, file: !1023, line: 18, baseType: !1034, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1022, file: !1023, line: 19, baseType: !340, size: 32, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !989, file: !984, line: 37, baseType: !1040, size: 256, offset: 2048)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1041, line: 98, size: 256, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1042 = !{!1043, !1044, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1040, file: !1041, line: 99, baseType: !786, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1040, file: !1041, line: 100, baseType: !277, size: 128, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1040, file: !1041, line: 101, baseType: !1046, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1041, line: 21, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !989, file: !984, line: 38, baseType: !1002, size: 128, align: 64, offset: 2304)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !989, file: !984, line: 39, baseType: !1053, size: 64, offset: 2432)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !984, line: 49, size: 768, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1054, file: !984, line: 50, baseType: !381, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1054, file: !984, line: 51, baseType: !1013, size: 256, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1054, file: !984, line: 53, baseType: !1013, size: 256, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1054, file: !984, line: 54, baseType: !269, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1054, file: !984, line: 55, baseType: !1053, size: 64, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1054, file: !984, line: 56, baseType: !115, size: 32, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1054, file: !984, line: 57, baseType: !115, size: 32, offset: 736)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !989, file: !984, line: 40, baseType: !269, size: 64, offset: 2496)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !989, file: !984, line: 42, baseType: !115, size: 32, offset: 2560)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !989, file: !984, line: 43, baseType: !982, size: 64, offset: 2624)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !983, file: !984, line: 99, baseType: !1067, offset: 128)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1068, line: 211, elements: !1069)
!1068 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1069 = !{}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !983, file: !984, line: 100, baseType: !1071, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !984, line: 63, size: 3008, elements: !1073)
!1073 = !{!1074, !1075, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1105}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1072, file: !984, line: 64, baseType: !1053, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1072, file: !984, line: 65, baseType: !1076, size: 192, offset: 64)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1053, size: 192, elements: !448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1072, file: !984, line: 67, baseType: !115, size: 32, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1072, file: !984, line: 68, baseType: !782, size: 256, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1072, file: !984, line: 69, baseType: !381, size: 32, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1072, file: !984, line: 70, baseType: !782, size: 256, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1072, file: !984, line: 71, baseType: !269, size: 64, offset: 896)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1072, file: !984, line: 72, baseType: !269, size: 64, offset: 960)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1072, file: !984, line: 73, baseType: !269, size: 64, offset: 1024)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1072, file: !984, line: 74, baseType: !269, size: 64, offset: 1088)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1072, file: !984, line: 75, baseType: !269, size: 64, offset: 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1072, file: !984, line: 76, baseType: !269, size: 64, offset: 1216)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1072, file: !984, line: 77, baseType: !269, size: 64, offset: 1280)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1072, file: !984, line: 78, baseType: !269, size: 64, offset: 1344)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1072, file: !984, line: 79, baseType: !862, size: 8, offset: 1408)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1072, file: !984, line: 80, baseType: !269, size: 64, offset: 1472)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1072, file: !984, line: 81, baseType: !782, size: 256, offset: 1536)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1072, file: !984, line: 82, baseType: !731, size: 256, offset: 1792)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1072, file: !984, line: 84, baseType: !401, size: 32, offset: 2048)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1072, file: !984, line: 87, baseType: !269, size: 64, offset: 2112)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1072, file: !984, line: 88, baseType: !269, size: 64, offset: 2176)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1072, file: !984, line: 89, baseType: !1097, size: 704, offset: 2240)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1041, line: 111, size: 704, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1104}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1097, file: !1041, line: 112, baseType: !1040, size: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1097, file: !1041, line: 113, baseType: !1022, size: 320, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1097, file: !1041, line: 116, baseType: !1102, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1041, line: 18, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1097, file: !1041, line: 117, baseType: !115, size: 32, offset: 640)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1072, file: !984, line: 90, baseType: !982, size: 64, offset: 2944)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !712, file: !12, line: 515, baseType: !1107, size: 64, offset: 8064)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1109, line: 117, size: 128, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1110 = !{!1111, !1112, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1108, file: !1109, line: 118, baseType: !778, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1108, file: !1109, line: 119, baseType: !778, size: 32, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1108, file: !1109, line: 120, baseType: !483, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !712, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !712, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !712, file: !12, line: 520, baseType: !1117, size: 64, offset: 8192)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !712, file: !12, line: 523, baseType: !1119, size: 64, offset: 8256)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !712, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !712, file: !12, line: 525, baseType: !1124, size: 64, offset: 8384)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !712, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !712, file: !12, line: 533, baseType: !265, size: 64, offset: 8512)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !712, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !712, file: !12, line: 535, baseType: !1131, size: 64, offset: 8640)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !712, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !712, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !712, file: !12, line: 540, baseType: !1135, size: 64, offset: 8768)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1137, line: 32, size: 64, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1136, file: !1137, line: 33, baseType: !778, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1136, file: !1137, line: 34, baseType: !778, size: 32, offset: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !712, file: !12, line: 563, baseType: !277, size: 128, offset: 8832)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !712, file: !12, line: 565, baseType: !277, size: 128, offset: 8960)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !712, file: !12, line: 568, baseType: !1144, size: 64, offset: 9088)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !712, file: !12, line: 570, baseType: !401, size: 32, offset: 9152)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !20, line: 2382, baseType: !686, size: 64, offset: 448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !687, file: !20, line: 2383, baseType: !1150, size: 64, offset: 512)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !268, line: 194, size: 64, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1150, file: !268, line: 195, baseType: !1029, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !687, file: !20, line: 2385, baseType: !1154, offset: 576)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1068, line: 206, elements: !1069)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !687, file: !20, line: 2386, baseType: !1154, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !687, file: !20, line: 2387, baseType: !1154, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !687, file: !20, line: 2388, baseType: !1158, offset: 576)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1154, elements: !448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !687, file: !20, line: 2390, baseType: !1154, offset: 576)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !687, file: !20, line: 2391, baseType: !1154, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !687, file: !20, line: 2392, baseType: !1154, offset: 576)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !687, file: !20, line: 2393, baseType: !1154, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !673, file: !20, line: 1197, baseType: !1164, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1167)
!1167 = !{!1168, !1172, !1176, !1177, !1181, !1187, !1191, !1192, !1193, !1197, !1201, !1205, !1206, !1207, !1213, !1217, !1218, !1225, !1226, !1227, !1228, !1232, !1236, !1285, !1301, !1302}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1166, file: !20, line: 2058, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!526, !672}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1166, file: !20, line: 2059, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !526}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1166, file: !20, line: 2060, baseType: !1173, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1166, file: !20, line: 2062, baseType: !1178, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !526, !115}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1166, file: !20, line: 2063, baseType: !1182, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!115, !526, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1166, file: !20, line: 2064, baseType: !1188, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!115, !526}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1166, file: !20, line: 2065, baseType: !1173, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1166, file: !20, line: 2066, baseType: !707, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1166, file: !20, line: 2067, baseType: !1194, size: 64, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!115, !672, !115}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1166, file: !20, line: 2068, baseType: !1198, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!115, !672, !19}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1166, file: !20, line: 2069, baseType: !1202, size: 64, offset: 640)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!115, !672}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1166, file: !20, line: 2070, baseType: !1198, size: 64, offset: 704)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1166, file: !20, line: 2071, baseType: !1202, size: 64, offset: 768)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1166, file: !20, line: 2072, baseType: !1208, size: 64, offset: 832)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!115, !561, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1166, file: !20, line: 2073, baseType: !1214, size: 64, offset: 896)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!115, !672, !911, !447}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1166, file: !20, line: 2074, baseType: !707, size: 64, offset: 960)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1166, file: !20, line: 2076, baseType: !1219, size: 64, offset: 1024)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!115, !1222, !561}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1224, line: 66, flags: DIFlagFwdDecl)
!1224 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1166, file: !20, line: 2077, baseType: !1219, size: 64, offset: 1088)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1166, file: !20, line: 2078, baseType: !1219, size: 64, offset: 1152)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1166, file: !20, line: 2079, baseType: !1219, size: 64, offset: 1216)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1166, file: !20, line: 2081, baseType: !1229, size: 64, offset: 1280)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!479, !672, !115, !447, !494, !682}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1166, file: !20, line: 2082, baseType: !1233, size: 64, offset: 1344)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!479, !672, !115, !308, !494, !682}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1166, file: !20, line: 2083, baseType: !1237, size: 64, offset: 1408)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1240, !526}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 296, size: 1664, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1268, !1269, !1270}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1242, file: !25, line: 297, baseType: !1026, size: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1242, file: !25, line: 298, baseType: !277, size: 128, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1242, file: !25, line: 299, baseType: !277, size: 128, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1242, file: !25, line: 300, baseType: !277, size: 128, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1242, file: !25, line: 301, baseType: !782, size: 256, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1242, file: !25, line: 302, baseType: !381, size: 32, offset: 768)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1242, file: !25, line: 303, baseType: !401, size: 32, offset: 800)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1242, file: !25, line: 304, baseType: !672, size: 64, offset: 832)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1242, file: !25, line: 305, baseType: !1253, size: 64, offset: 896)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !1254)
!1254 = !{!1255, !1267}
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !25, line: 69, baseType: !1256, size: 32)
!1256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !25, line: 69, size: 32, elements: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1256, file: !25, line: 70, baseType: !532, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1256, file: !25, line: 71, baseType: !541, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1256, file: !25, line: 72, baseType: !1261, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1262, line: 24, baseType: !1263)
!1262 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1262, line: 22, size: 32, elements: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1263, file: !1262, line: 23, baseType: !1266, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1262, line: 20, baseType: !538)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1253, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1242, file: !25, line: 306, baseType: !682, size: 64, offset: 960)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1242, file: !25, line: 307, baseType: !269, size: 64, offset: 1024)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1242, file: !25, line: 308, baseType: !1271, size: 576, offset: 1088)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !1272)
!1272 = !{!1273, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1284}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1271, file: !25, line: 206, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !684)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1271, file: !25, line: 207, baseType: !1274, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1271, file: !25, line: 208, baseType: !1274, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1271, file: !25, line: 209, baseType: !1274, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1271, file: !25, line: 210, baseType: !1274, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1271, file: !25, line: 211, baseType: !1274, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1271, file: !25, line: 212, baseType: !1274, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1271, file: !25, line: 213, baseType: !1282, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1283, line: 8, baseType: !793)
!1283 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1271, file: !25, line: 214, baseType: !1282, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1166, file: !20, line: 2085, baseType: !1286, size: 64, offset: 1472)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!483, !672, !1289}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1291, line: 15, size: 256, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1292 = !{!1293, !1295, !1296, !1297, !1298}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1290, file: !1291, line: 16, baseType: !1294, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !268, line: 154, baseType: !13)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1290, file: !1291, line: 19, baseType: !115, size: 32, offset: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1290, file: !1291, line: 26, baseType: !269, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1290, file: !1291, line: 33, baseType: !269, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1290, file: !1291, line: 36, baseType: !1299, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1166, file: !20, line: 2087, baseType: !1286, size: 64, offset: 1536)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1166, file: !20, line: 2089, baseType: !707, size: 64, offset: 1600)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !673, file: !20, line: 1198, baseType: !1304, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 324, size: 704, elements: !1307)
!1307 = !{!1308, !1312, !1316, !1320, !1321, !1322, !1323, !1324, !1329, !1334, !1338}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1306, file: !25, line: 325, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!115, !1241}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1306, file: !25, line: 326, baseType: !1313, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!1241, !672, !115}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1306, file: !25, line: 327, baseType: !1317, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !1241}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1306, file: !25, line: 328, baseType: !1309, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1306, file: !25, line: 329, baseType: !1309, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1306, file: !25, line: 330, baseType: !1309, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1306, file: !25, line: 331, baseType: !1194, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1306, file: !25, line: 334, baseType: !1325, size: 64, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!1328, !526}
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1306, file: !25, line: 335, baseType: !1330, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!115, !526, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1306, file: !25, line: 337, baseType: !1335, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!115, !526, !1328}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1306, file: !25, line: 339, baseType: !1339, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!115, !672, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !673, file: !20, line: 1199, baseType: !1344, size: 64, offset: 512)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 430, size: 704, elements: !1347)
!1347 = !{!1348, !1359, !1360, !1364, !1365, !1366, !1381, !1404, !1408, !1409, !1432}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1346, file: !25, line: 431, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!115, !672, !115, !115, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1355, line: 8, size: 128, elements: !1356)
!1355 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1354, file: !1355, line: 9, baseType: !666, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1354, file: !1355, line: 10, baseType: !561, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1346, file: !25, line: 432, baseType: !1194, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1346, file: !25, line: 433, baseType: !1361, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!115, !672, !13}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1346, file: !25, line: 434, baseType: !1361, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1346, file: !25, line: 435, baseType: !1194, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1346, file: !25, line: 436, baseType: !1367, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!115, !672, !115, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 417, size: 256, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1371, file: !25, line: 418, baseType: !115, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1371, file: !25, line: 419, baseType: !13, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1371, file: !25, line: 420, baseType: !13, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1371, file: !25, line: 422, baseType: !13, size: 32, offset: 96)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1371, file: !25, line: 423, baseType: !13, size: 32, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1371, file: !25, line: 424, baseType: !13, size: 32, offset: 160)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1371, file: !25, line: 425, baseType: !13, size: 32, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1371, file: !25, line: 426, baseType: !13, size: 32, offset: 224)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1346, file: !25, line: 437, baseType: !1382, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!115, !672, !1253, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 345, size: 960, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1386, file: !25, line: 346, baseType: !115, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1386, file: !25, line: 347, baseType: !301, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1386, file: !25, line: 348, baseType: !301, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1386, file: !25, line: 349, baseType: !301, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1386, file: !25, line: 350, baseType: !301, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1386, file: !25, line: 351, baseType: !301, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1386, file: !25, line: 352, baseType: !301, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1386, file: !25, line: 353, baseType: !792, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1386, file: !25, line: 355, baseType: !792, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1386, file: !25, line: 356, baseType: !115, size: 32, offset: 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1386, file: !25, line: 357, baseType: !115, size: 32, offset: 608)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1386, file: !25, line: 358, baseType: !301, size: 64, offset: 640)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1386, file: !25, line: 359, baseType: !301, size: 64, offset: 704)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1386, file: !25, line: 360, baseType: !301, size: 64, offset: 768)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1386, file: !25, line: 361, baseType: !792, size: 64, offset: 832)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1386, file: !25, line: 362, baseType: !115, size: 32, offset: 896)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1346, file: !25, line: 438, baseType: !1405, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!115, !672, !1342, !1385}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1346, file: !25, line: 440, baseType: !1382, size: 64, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1346, file: !25, line: 441, baseType: !1410, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!115, !672, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 411, size: 1408, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1414, file: !25, line: 412, baseType: !13, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1414, file: !25, line: 413, baseType: !1418, size: 1344, offset: 64)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 1344, elements: !448)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 397, size: 448, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1431}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1419, file: !25, line: 398, baseType: !13, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1419, file: !25, line: 399, baseType: !13, size: 32, offset: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1419, file: !25, line: 401, baseType: !13, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1419, file: !25, line: 402, baseType: !13, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1419, file: !25, line: 403, baseType: !13, size: 32, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1419, file: !25, line: 404, baseType: !13, size: 32, offset: 160)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1419, file: !25, line: 405, baseType: !13, size: 32, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1419, file: !25, line: 406, baseType: !305, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1419, file: !25, line: 407, baseType: !1430, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !268, line: 132, baseType: !301)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1419, file: !25, line: 408, baseType: !1430, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1346, file: !25, line: 442, baseType: !1361, size: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !673, file: !20, line: 1200, baseType: !1434, size: 64, offset: 576)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !673, file: !20, line: 1201, baseType: !269, size: 64, offset: 640)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !673, file: !20, line: 1202, baseType: !269, size: 64, offset: 704)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !673, file: !20, line: 1203, baseType: !269, size: 64, offset: 768)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !673, file: !20, line: 1204, baseType: !561, size: 64, offset: 832)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !673, file: !20, line: 1205, baseType: !1442, size: 320, offset: 896)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1443, line: 48, size: 320, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1444 = !{!1445, !1446, !1447, !1448, !1449}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1442, file: !1443, line: 49, baseType: !786, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1442, file: !1443, line: 55, baseType: !786, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1442, file: !1443, line: 57, baseType: !796, size: 32, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1442, file: !1443, line: 59, baseType: !740, size: 32, offset: 160)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1442, file: !1443, line: 60, baseType: !277, size: 128, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !673, file: !20, line: 1206, baseType: !115, size: 32, offset: 1216)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !673, file: !20, line: 1207, baseType: !401, size: 32, offset: 1248)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !673, file: !20, line: 1209, baseType: !265, size: 64, offset: 1280)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !673, file: !20, line: 1211, baseType: !1454, size: 64, offset: 1344)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !673, file: !20, line: 1223, baseType: !1459, size: 64, offset: 1408)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !578, line: 34, size: 64, elements: !1460)
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1459, file: !578, line: 35, baseType: !581, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !673, file: !20, line: 1224, baseType: !277, size: 128, offset: 1472)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !673, file: !20, line: 1225, baseType: !1464, size: 64, offset: 1600)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !673, file: !20, line: 1226, baseType: !1467, size: 64, offset: 1664)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !673, file: !20, line: 1227, baseType: !1470, size: 64, offset: 1728)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !673, file: !20, line: 1228, baseType: !1473, size: 64, offset: 1792)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !673, file: !20, line: 1229, baseType: !1026, size: 128, offset: 1856)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !673, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !673, file: !20, line: 1231, baseType: !1478, size: 2496, offset: 2048)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 521, size: 2496, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1484, !1516}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1478, file: !25, line: 522, baseType: !13, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1478, file: !25, line: 523, baseType: !1442, size: 320, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1478, file: !25, line: 524, baseType: !1483, size: 192, offset: 384)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 192, elements: !448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1478, file: !25, line: 525, baseType: !1485, size: 1728, offset: 576)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1486, size: 1728, elements: !448)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !1487)
!1487 = !{!1488, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1486, file: !25, line: 223, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 445, size: 256, elements: !1491)
!1491 = !{!1492, !1493, !1506, !1507}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1490, file: !25, line: 446, baseType: !115, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1490, file: !25, line: 447, baseType: !1494, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 312, size: 512, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1496, file: !25, line: 313, baseType: !1194, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1496, file: !25, line: 314, baseType: !1194, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1496, file: !25, line: 315, baseType: !1194, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1496, file: !25, line: 316, baseType: !1194, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1496, file: !25, line: 317, baseType: !1309, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1496, file: !25, line: 318, baseType: !1309, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1496, file: !25, line: 319, baseType: !1309, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1496, file: !25, line: 320, baseType: !1339, size: 64, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1490, file: !25, line: 448, baseType: !711, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1490, file: !25, line: 449, baseType: !1489, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1486, file: !25, line: 224, baseType: !115, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1486, file: !25, line: 226, baseType: !277, size: 128, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1486, file: !25, line: 227, baseType: !269, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1486, file: !25, line: 228, baseType: !13, size: 32, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1486, file: !25, line: 229, baseType: !13, size: 32, offset: 352)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1486, file: !25, line: 230, baseType: !1274, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1486, file: !25, line: 231, baseType: !1274, size: 64, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1486, file: !25, line: 232, baseType: !265, size: 64, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1478, file: !25, line: 526, baseType: !1517, size: 192, offset: 2304)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1494, size: 192, elements: !448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !673, file: !20, line: 1233, baseType: !1519, size: 2368, offset: 4544)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !1520)
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1519, file: !20, line: 1185, baseType: !266, size: 16)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1519, file: !20, line: 1186, baseType: !266, size: 16, offset: 16)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1519, file: !20, line: 1187, baseType: !1524, size: 2304, offset: 64)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1525, size: 2304, elements: !448)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1526, line: 12, size: 768, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1527 = !{!1528, !1542, !1543, !3626, !3627}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1525, file: !1526, line: 13, baseType: !1529, size: 384)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1530, line: 17, size: 384, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1531 = !{!1532, !1533, !1534, !1541}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1529, file: !1530, line: 18, baseType: !115, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1529, file: !1530, line: 19, baseType: !115, size: 32, offset: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1529, file: !1530, line: 20, baseType: !1535, size: 192, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1536, line: 41, baseType: !1537)
!1536 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1536, line: 37, size: 192, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !1536, line: 38, baseType: !381, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1537, file: !1536, line: 39, baseType: !277, size: 128, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1529, file: !1530, line: 22, baseType: !1002, size: 128, align: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1525, file: !1526, line: 14, baseType: !854, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1525, file: !1526, line: 15, baseType: !1544, size: 64, offset: 448)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1545, line: 16, size: 64, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1546 = !{!1547}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1544, file: !1545, line: 17, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1224, line: 746, size: 58368, elements: !1550)
!1550 = !{!1551, !1559, !1560, !1561, !1567, !1568, !1569, !1570, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1641, !1652, !1747, !1751, !1754, !1785, !1786, !1787, !1788, !1799, !1801, !1802, !1803, !1804, !1805, !1806, !1817, !1818, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1835, !1836, !1843, !1844, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2802, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2850, !2856, !2857, !2858, !2859, !2860, !2864, !2867, !2874, !2879, !2882, !2885, !2888, !2891, !3029, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3067, !3068, !3069, !3078, !3086, !3087, !3088, !3089, !3090, !3095, !3096, !3097, !3100, !3101, !3104, !3107, !3110, !3118, !3121, !3122, !3208, !3209, !3210, !3211, !3212, !3218, !3219, !3220, !3221, !3224, !3225, !3228, !3231, !3232, !3235, !3236, !3237, !3240, !3241, !3242, !3243, !3244, !3245, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3277, !3278, !3284, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3296, !3368, !3370, !3371, !3372, !3373, !3374, !3375, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3403, !3404, !3405}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1549, file: !1224, line: 752, baseType: !1552, size: 192)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1553, line: 56, size: 192, elements: !1554)
!1553 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1554 = !{!1555, !1556, !1557, !1558}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1552, file: !1553, line: 57, baseType: !269, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1552, file: !1553, line: 58, baseType: !269, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1552, file: !1553, line: 59, baseType: !340, size: 32, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1552, file: !1553, line: 61, baseType: !340, size: 32, offset: 160)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1549, file: !1224, line: 754, baseType: !13, size: 32, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1549, file: !1224, line: 767, baseType: !265, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1549, file: !1224, line: 768, baseType: !1562, size: 32, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1563, line: 113, baseType: !1564)
!1563 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1563, line: 111, size: 32, elements: !1565)
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1564, file: !1563, line: 112, baseType: !401, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !1224, line: 770, baseType: !13, size: 32, offset: 352)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1549, file: !1224, line: 771, baseType: !13, size: 32, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1549, file: !1224, line: 774, baseType: !115, size: 32, offset: 416)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1549, file: !1224, line: 775, baseType: !1571, size: 128, offset: 448)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1572, line: 58, size: 128, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1573 = !{!1574, !1580, !1585, !1586}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1571, file: !1572, line: 59, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1576, line: 60, size: 64, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1575, file: !1576, line: 61, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !1572, line: 60, baseType: !1581, size: 32, offset: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1571, file: !1572, line: 60, size: 32, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1581, file: !1572, line: 61, baseType: !13, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1581, file: !1572, line: 62, baseType: !401, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1571, file: !1572, line: 65, baseType: !416, size: 16, offset: 96)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1571, file: !1572, line: 65, baseType: !416, size: 16, offset: 112)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1549, file: !1224, line: 776, baseType: !13, size: 32, offset: 576)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1549, file: !1224, line: 777, baseType: !269, size: 64, offset: 640)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1549, file: !1224, line: 778, baseType: !1548, size: 64, offset: 704)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1549, file: !1224, line: 787, baseType: !115, size: 32, offset: 768)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1549, file: !1224, line: 788, baseType: !115, size: 32, offset: 800)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1549, file: !1224, line: 790, baseType: !115, size: 32, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1549, file: !1224, line: 792, baseType: !115, size: 32, offset: 864)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1549, file: !1224, line: 793, baseType: !115, size: 32, offset: 896)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1549, file: !1224, line: 794, baseType: !115, size: 32, offset: 928)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1549, file: !1224, line: 795, baseType: !13, size: 32, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1549, file: !1224, line: 797, baseType: !1598, size: 2048, offset: 1024)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1224, line: 551, size: 2048, elements: !1599)
!1599 = !{!1600, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1620, !1623, !1624, !1625}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1598, file: !1224, line: 553, baseType: !1601, size: 128)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1224, line: 411, size: 128, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1601, file: !1224, line: 412, baseType: !269, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1601, file: !1224, line: 413, baseType: !340, size: 32, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1598, file: !1224, line: 554, baseType: !894, size: 192, align: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1598, file: !1224, line: 555, baseType: !301, size: 64, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1598, file: !1224, line: 556, baseType: !301, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1598, file: !1224, line: 558, baseType: !277, size: 128, offset: 448)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1598, file: !1224, line: 559, baseType: !13, size: 32, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1598, file: !1224, line: 561, baseType: !301, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1598, file: !1224, line: 562, baseType: !301, size: 64, offset: 704)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1598, file: !1224, line: 563, baseType: !301, size: 64, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1598, file: !1224, line: 564, baseType: !301, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1598, file: !1224, line: 565, baseType: !792, size: 64, offset: 896)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1598, file: !1224, line: 566, baseType: !301, size: 64, offset: 960)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1598, file: !1224, line: 568, baseType: !301, size: 64, offset: 1024)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1598, file: !1224, line: 571, baseType: !115, size: 32, offset: 1088)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1598, file: !1224, line: 572, baseType: !1619, size: 64, offset: 1152)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1598, file: !1224, line: 574, baseType: !1621, size: 64, offset: 1216)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1224, line: 49, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1598, file: !1224, line: 576, baseType: !1621, size: 64, offset: 1280)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1598, file: !1224, line: 578, baseType: !269, size: 64, offset: 1344)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1598, file: !1224, line: 588, baseType: !1626, size: 512, align: 512, offset: 1536)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1224, line: 497, size: 512, align: 512, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1626, file: !1224, line: 498, baseType: !301, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1626, file: !1224, line: 499, baseType: !301, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1626, file: !1224, line: 500, baseType: !301, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1626, file: !1224, line: 501, baseType: !340, size: 32, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1626, file: !1224, line: 502, baseType: !340, size: 32, offset: 224)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1626, file: !1224, line: 503, baseType: !269, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1626, file: !1224, line: 504, baseType: !269, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1626, file: !1224, line: 505, baseType: !269, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1626, file: !1224, line: 506, baseType: !1637, size: 64, align: 64, offset: 448)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1224, line: 445, size: 64, align: 64, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1637, file: !1224, line: 446, baseType: !13, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1637, file: !1224, line: 447, baseType: !13, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1549, file: !1224, line: 798, baseType: !1642, size: 384, offset: 3072)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1224, line: 592, size: 384, elements: !1643)
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649, !1650}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1642, file: !1224, line: 593, baseType: !277, size: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1642, file: !1224, line: 594, baseType: !269, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1642, file: !1224, line: 595, baseType: !269, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1642, file: !1224, line: 596, baseType: !13, size: 32, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1642, file: !1224, line: 597, baseType: !266, size: 16, offset: 288)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1642, file: !1224, line: 598, baseType: !266, size: 16, offset: 304)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1642, file: !1224, line: 600, baseType: !1651, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1549, file: !1224, line: 799, baseType: !1653, size: 1792, offset: 3456)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1224, line: 610, size: 1792, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1744, !1745}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1653, file: !1224, line: 611, baseType: !894, size: 192, align: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1653, file: !1224, line: 618, baseType: !301, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1653, file: !1224, line: 619, baseType: !301, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1653, file: !1224, line: 620, baseType: !301, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1653, file: !1224, line: 621, baseType: !301, size: 64, offset: 384)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1653, file: !1224, line: 622, baseType: !301, size: 64, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1653, file: !1224, line: 629, baseType: !792, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1653, file: !1224, line: 630, baseType: !301, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1653, file: !1224, line: 631, baseType: !13, size: 32, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1653, file: !1224, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1653, file: !1224, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1653, file: !1224, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1653, file: !1224, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1653, file: !1224, line: 662, baseType: !1669, size: 512, offset: 704)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !31, line: 118, size: 512, elements: !1670)
!1670 = !{!1671, !1679, !1680, !1685, !1740, !1741, !1742, !1743}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1669, file: !31, line: 119, baseType: !1672, size: 256)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1673, line: 9, size: 256, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1672, file: !1673, line: 10, baseType: !894, size: 192, align: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1672, file: !1673, line: 11, baseType: !1677, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1678, line: 29, baseType: !792)
!1678 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1669, file: !31, line: 120, baseType: !1677, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1669, file: !31, line: 121, baseType: !1681, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!30, !1684}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1669, file: !31, line: 122, baseType: !1686, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !31, line: 159, size: 512, align: 512, elements: !1688)
!1688 = !{!1689, !1714, !1715, !1718, !1723, !1724, !1735, !1739}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1687, file: !31, line: 160, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !31, line: 215, size: 4608, align: 512, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1691, file: !31, line: 216, baseType: !740, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1691, file: !31, line: 217, baseType: !13, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1691, file: !31, line: 218, baseType: !13, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1691, file: !31, line: 219, baseType: !13, size: 32, offset: 96)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1691, file: !31, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1691, file: !31, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1691, file: !31, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1691, file: !31, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1691, file: !31, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1691, file: !31, line: 226, baseType: !13, size: 32, offset: 160)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1691, file: !31, line: 227, baseType: !266, size: 16, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1691, file: !31, line: 228, baseType: !266, size: 16, offset: 208)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1691, file: !31, line: 229, baseType: !13, size: 32, offset: 224)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1691, file: !31, line: 235, baseType: !1677, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1691, file: !31, line: 236, baseType: !1684, size: 64, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1691, file: !31, line: 237, baseType: !1677, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1691, file: !31, line: 238, baseType: !1684, size: 64, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1691, file: !31, line: 239, baseType: !1711, size: 4096, align: 512, offset: 512)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1687, size: 4096, align: 512, elements: !1712)
!1712 = !{!1713}
!1713 = !DISubrange(count: 8)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1687, file: !31, line: 161, baseType: !13, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1687, file: !31, line: 162, baseType: !1716, size: 32, offset: 96)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !268, line: 32, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !481, line: 96, baseType: !115)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1687, file: !31, line: 163, baseType: !1719, size: 32, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !568, line: 274, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !568, line: 274, size: 32, elements: !1721)
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1720, file: !568, line: 274, baseType: !572, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1687, file: !31, line: 164, baseType: !1684, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1687, file: !31, line: 165, baseType: !1725, size: 128, offset: 256)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1673, line: 14, size: 128, elements: !1726)
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1725, file: !1673, line: 15, baseType: !1728, size: 128)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !895, line: 26, size: 128, elements: !1729)
!1729 = !{!1730, !1734}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1728, file: !895, line: 27, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !895, line: 12, size: 64, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1731, file: !895, line: 13, baseType: !899, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1728, file: !895, line: 28, baseType: !899, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1687, file: !31, line: 166, baseType: !1736, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!1677}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1687, file: !31, line: 167, baseType: !1677, size: 64, offset: 448)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1669, file: !31, line: 123, baseType: !409, size: 8, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1669, file: !31, line: 124, baseType: !409, size: 8, offset: 456)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1669, file: !31, line: 125, baseType: !409, size: 8, offset: 464)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1669, file: !31, line: 126, baseType: !409, size: 8, offset: 472)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1653, file: !1224, line: 671, baseType: !1669, size: 512, offset: 1216)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1653, file: !1224, line: 679, baseType: !1746, size: 64, offset: 1728)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1549, file: !1224, line: 800, baseType: !1748, size: 64, offset: 5248)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1750)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1224, line: 800, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1549, file: !1224, line: 809, baseType: !1752, size: 64, offset: 5312)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1224, line: 70, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1549, file: !1224, line: 825, baseType: !1755, size: 2048, align: 512, offset: 5632)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1224, line: 509, size: 2048, align: 512, elements: !1756)
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1755, file: !1224, line: 511, baseType: !301, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1755, file: !1224, line: 512, baseType: !301, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1755, file: !1224, line: 513, baseType: !301, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1755, file: !1224, line: 514, baseType: !301, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1755, file: !1224, line: 515, baseType: !301, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1755, file: !1224, line: 516, baseType: !301, size: 64, offset: 320)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1755, file: !1224, line: 518, baseType: !301, size: 64, offset: 384)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1755, file: !1224, line: 519, baseType: !301, size: 64, offset: 448)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1755, file: !1224, line: 520, baseType: !792, size: 64, offset: 512)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1755, file: !1224, line: 522, baseType: !301, size: 64, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1755, file: !1224, line: 523, baseType: !301, size: 64, offset: 640)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1755, file: !1224, line: 524, baseType: !792, size: 64, offset: 704)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1755, file: !1224, line: 526, baseType: !792, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1755, file: !1224, line: 527, baseType: !301, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1755, file: !1224, line: 529, baseType: !301, size: 64, offset: 896)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1755, file: !1224, line: 530, baseType: !301, size: 64, offset: 960)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1755, file: !1224, line: 531, baseType: !301, size: 64, offset: 1024)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1755, file: !1224, line: 532, baseType: !301, size: 64, offset: 1088)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1755, file: !1224, line: 533, baseType: !301, size: 64, offset: 1152)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1755, file: !1224, line: 535, baseType: !301, size: 64, offset: 1216)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1755, file: !1224, line: 536, baseType: !301, size: 64, offset: 1280)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1755, file: !1224, line: 537, baseType: !301, size: 64, offset: 1344)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1755, file: !1224, line: 538, baseType: !301, size: 64, offset: 1408)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1755, file: !1224, line: 539, baseType: !301, size: 64, offset: 1472)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1755, file: !1224, line: 540, baseType: !301, size: 64, offset: 1536)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1755, file: !1224, line: 541, baseType: !301, size: 64, offset: 1600)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1755, file: !1224, line: 542, baseType: !301, size: 64, offset: 1664)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1755, file: !1224, line: 543, baseType: !301, size: 64, offset: 1728)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1549, file: !1224, line: 833, baseType: !13, size: 32, offset: 7680)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1549, file: !1224, line: 836, baseType: !13, size: 32, offset: 7712)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1549, file: !1224, line: 837, baseType: !115, size: 32, offset: 7744)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1549, file: !1224, line: 838, baseType: !1789, size: 64, offset: 7808)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1792, line: 19, baseType: !1793)
!1792 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1792, line: 19, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1793, file: !1792, line: 19, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 64, elements: !1797)
!1797 = !{!1798}
!1798 = !DISubrange(count: 1)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1549, file: !1224, line: 839, baseType: !1800, size: 64, offset: 7872)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1549, file: !1224, line: 840, baseType: !1791, size: 64, offset: 7936)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1549, file: !1224, line: 841, baseType: !265, size: 64, offset: 8000)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1549, file: !1224, line: 843, baseType: !266, size: 16, offset: 8064)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1549, file: !1224, line: 845, baseType: !266, size: 16, offset: 8080)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1549, file: !1224, line: 848, baseType: !115, size: 32, offset: 8096)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1549, file: !1224, line: 849, baseType: !1807, size: 32, offset: 8128)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1224, line: 718, size: 32, elements: !1808)
!1808 = !{!1809, !1816}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1807, file: !1224, line: 724, baseType: !1810, size: 32)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1807, file: !1224, line: 719, size: 32, elements: !1811)
!1811 = !{!1812, !1813, !1814, !1815}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1810, file: !1224, line: 720, baseType: !409, size: 8)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1810, file: !1224, line: 721, baseType: !409, size: 8, offset: 8)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1810, file: !1224, line: 722, baseType: !409, size: 8, offset: 16)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1810, file: !1224, line: 723, baseType: !409, size: 8, offset: 24)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1807, file: !1224, line: 725, baseType: !340, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1549, file: !1224, line: 850, baseType: !277, size: 128, offset: 8192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1549, file: !1224, line: 851, baseType: !1819, size: 64, offset: 8320)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1224, line: 60, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1549, file: !1224, line: 855, baseType: !269, size: 64, offset: 8384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1549, file: !1224, line: 856, baseType: !409, size: 8, offset: 8448)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1549, file: !1224, line: 857, baseType: !409, size: 8, offset: 8456)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1549, file: !1224, line: 858, baseType: !115, size: 32, offset: 8480)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1549, file: !1224, line: 859, baseType: !277, size: 128, offset: 8512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1549, file: !1224, line: 860, baseType: !115, size: 32, offset: 8640)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1549, file: !1224, line: 861, baseType: !277, size: 128, offset: 8704)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1549, file: !1224, line: 873, baseType: !1829, size: 256, offset: 8832)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1224, line: 376, size: 256, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1829, file: !1224, line: 381, baseType: !269, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1829, file: !1224, line: 384, baseType: !305, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1829, file: !1224, line: 389, baseType: !305, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1829, file: !1224, line: 392, baseType: !305, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1549, file: !1224, line: 875, baseType: !277, size: 128, offset: 9088)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1549, file: !1224, line: 877, baseType: !1837, size: 320, offset: 9216)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1838, line: 86, size: 320, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1837, file: !1838, line: 87, baseType: !115, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1837, file: !1838, line: 88, baseType: !277, size: 128, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1837, file: !1838, line: 89, baseType: !277, size: 128, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1549, file: !1224, line: 878, baseType: !894, size: 192, align: 64, offset: 9536)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1549, file: !1224, line: 881, baseType: !1845, size: 64, offset: 9728)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !1847)
!1847 = !{!1848, !2722}
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !44, line: 734, baseType: !1849, size: 10240)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !44, line: 734, size: 10240, elements: !1850)
!1850 = !{!1851, !1855, !1868, !2599, !2600, !2601, !2602, !2603, !2604, !2611, !2612, !2613, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2652, !2654, !2657, !2702, !2703, !2704, !2707, !2708, !2709, !2712, !2713, !2714, !2720, !2721}
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !44, line: 739, baseType: !1852, size: 512, align: 512)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1849, file: !44, line: 739, size: 512, align: 512, elements: !1853)
!1853 = !{!1854}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1852, file: !44, line: 747, baseType: !401, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1849, file: !44, line: 750, baseType: !1856, size: 128, offset: 512)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1857, line: 218, size: 128, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1858 = !{!1859, !1866, !1867}
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !1857, line: 219, baseType: !1860, size: 32)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1856, file: !1857, line: 219, size: 32, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1860, file: !1857, line: 220, baseType: !381, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1860, file: !1857, line: 221, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1857, line: 197, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1857, line: 197, elements: !1069)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1856, file: !1857, line: 223, baseType: !13, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1856, file: !1857, line: 224, baseType: !265, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1849, file: !44, line: 752, baseType: !1869, size: 64, offset: 640)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!269, !1872, !269, !269, !269, !269}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1874)
!1874 = !{!1875, !1881, !1882, !1884, !1885, !1886, !1887, !1888, !1938, !2128, !2137, !2138, !2139, !2589, !2590, !2591, !2592, !2594, !2595, !2598}
!1875 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !20, line: 995, baseType: !1876, size: 128)
!1876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1873, file: !20, line: 995, size: 128, elements: !1877)
!1877 = !{!1878, !1879, !1880}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1876, file: !20, line: 996, baseType: !1575, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1876, file: !20, line: 997, baseType: !1002, size: 128, align: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1876, file: !20, line: 998, baseType: !13, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1873, file: !20, line: 1005, baseType: !381, size: 32, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1873, file: !20, line: 1006, baseType: !1883, size: 32, offset: 160)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !268, line: 156, baseType: !13)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1873, file: !20, line: 1007, baseType: !786, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1873, file: !20, line: 1008, baseType: !782, size: 256, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1873, file: !20, line: 1009, baseType: !682, size: 64, offset: 512)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1873, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1873, file: !20, line: 1011, baseType: !1889, size: 256, offset: 640)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1890)
!1890 = !{!1891, !1912, !1934, !1935, !1936, !1937}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1889, file: !20, line: 949, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1893, line: 34, baseType: !1894)
!1893 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1893, line: 25, size: 64, elements: !1895)
!1895 = !{!1896}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1894, file: !1893, line: 26, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1898, line: 27, baseType: !1899)
!1898 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1898, line: 13, size: 64, elements: !1900)
!1900 = !{!1901, !1911}
!1901 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1898, line: 14, baseType: !1902, size: 32)
!1902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1898, line: 14, size: 32, elements: !1903)
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1902, file: !1898, line: 15, baseType: !401, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !1898, line: 16, baseType: !1906, size: 32)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1902, file: !1898, line: 16, size: 32, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1906, file: !1898, line: 18, baseType: !409, size: 8)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1906, file: !1898, line: 19, baseType: !1910, size: 24, offset: 8)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 24, elements: !448)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1899, file: !1898, line: 26, baseType: !393, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1889, file: !20, line: 950, baseType: !1913, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !36, line: 59, size: 768, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1919, !1921, !1922, !1923, !1924}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1914, file: !36, line: 61, baseType: !1562, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1914, file: !36, line: 62, baseType: !13, size: 32, offset: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1914, file: !36, line: 63, baseType: !381, size: 32, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1914, file: !36, line: 65, baseType: !1920, size: 256, offset: 128)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1150, size: 256, elements: !315)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1914, file: !36, line: 66, baseType: !1150, size: 64, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1914, file: !36, line: 68, baseType: !1535, size: 192, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1914, file: !36, line: 69, baseType: !1002, size: 128, align: 64, offset: 640)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1914, file: !36, line: 70, baseType: !1925, offset: 768)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, elements: !1932)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !36, line: 54, size: 128, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1926, file: !36, line: 55, baseType: !115, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1926, file: !36, line: 56, baseType: !1930, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !36, line: 56, flags: DIFlagFwdDecl)
!1932 = !{!1933}
!1933 = !DISubrange(count: -1)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1889, file: !20, line: 951, baseType: !35, size: 32, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1889, file: !20, line: 952, baseType: !532, size: 32, offset: 160)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1889, file: !20, line: 952, baseType: !532, size: 32, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1889, file: !20, line: 953, baseType: !115, size: 32, offset: 224)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1873, file: !20, line: 1012, baseType: !1939, size: 64, offset: 896)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1942, line: 110, size: 1472, elements: !1943)
!1942 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1960, !1961, !1962, !1963, !1964, !1965, !2073, !2074, !2075, !2076, !2077, !2108, !2111, !2115, !2123}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1941, file: !1942, line: 111, baseType: !786, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1941, file: !1942, line: 112, baseType: !532, size: 32, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1941, file: !1942, line: 113, baseType: !541, size: 32, offset: 96)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1941, file: !1942, line: 114, baseType: !532, size: 32, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1941, file: !1942, line: 115, baseType: !541, size: 32, offset: 160)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1941, file: !1942, line: 116, baseType: !532, size: 32, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1941, file: !1942, line: 117, baseType: !541, size: 32, offset: 224)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1941, file: !1942, line: 118, baseType: !532, size: 32, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1941, file: !1942, line: 119, baseType: !541, size: 32, offset: 288)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1941, file: !1942, line: 120, baseType: !13, size: 32, offset: 320)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1941, file: !1942, line: 121, baseType: !1955, size: 64, offset: 384)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1956, line: 24, baseType: !1957)
!1956 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1956, line: 24, size: 64, elements: !1958)
!1958 = !{!1959}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1957, file: !1956, line: 24, baseType: !301, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1941, file: !1942, line: 122, baseType: !1955, size: 64, offset: 448)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1941, file: !1942, line: 123, baseType: !1955, size: 64, offset: 512)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1941, file: !1942, line: 124, baseType: !1955, size: 64, offset: 576)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1941, file: !1942, line: 125, baseType: !1955, size: 64, offset: 640)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1941, file: !1942, line: 127, baseType: !352, size: 8, offset: 704)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1941, file: !1942, line: 129, baseType: !1966, size: 64, offset: 768)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1968, line: 195, size: 1728, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1969 = !{!1970, !1971, !1974, !1979, !1980, !1983, !1984, !1989, !1990, !1991, !1992, !1995, !1996, !1997, !1998, !1999, !2037, !2058}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1967, file: !1968, line: 196, baseType: !1562, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1967, file: !1968, line: 197, baseType: !1972, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1968, line: 28, baseType: !1973)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !268, line: 104, baseType: !778)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1967, file: !1968, line: 198, baseType: !1975, size: 192, offset: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1967, file: !1968, line: 198, size: 192, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1975, file: !1968, line: 199, baseType: !277, size: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1975, file: !1968, line: 200, baseType: !894, size: 192, align: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1967, file: !1968, line: 205, baseType: !1442, size: 320, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1967, file: !1968, line: 206, baseType: !1981, size: 64, offset: 576)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1968, line: 206, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1967, file: !1968, line: 207, baseType: !265, size: 64, offset: 640)
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1967, file: !1968, line: 208, baseType: !1985, size: 64, offset: 704)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1967, file: !1968, line: 208, size: 64, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1985, file: !1968, line: 209, baseType: !1282, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1985, file: !1968, line: 210, baseType: !1282, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1967, file: !1968, line: 212, baseType: !1282, size: 64, offset: 768)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1967, file: !1968, line: 213, baseType: !532, size: 32, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1967, file: !1968, line: 214, baseType: !541, size: 32, offset: 864)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1967, file: !1968, line: 215, baseType: !1993, size: 32, offset: 896)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1968, line: 31, baseType: !1994)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !268, line: 110, baseType: !340)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1967, file: !1968, line: 216, baseType: !266, size: 16, offset: 928)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1967, file: !1968, line: 217, baseType: !266, size: 16, offset: 944)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1967, file: !1968, line: 221, baseType: !920, size: 16, offset: 960)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1967, file: !1968, line: 228, baseType: !269, size: 64, offset: 1024)
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1967, file: !1968, line: 245, baseType: !2000, size: 320, offset: 1088)
!2000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1967, file: !1968, line: 245, size: 320, elements: !2001)
!2001 = !{!2002, !2029}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2000, file: !1968, line: 246, baseType: !2003, size: 320)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1968, line: 114, size: 320, elements: !2004)
!2004 = !{!2005, !2006, !2018, !2021, !2028}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2003, file: !1968, line: 116, baseType: !269, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !1968, line: 117, baseType: !2007, size: 64, offset: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2003, file: !1968, line: 117, size: 64, elements: !2008)
!2008 = !{!2009, !2017}
!2009 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !1968, line: 118, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !1968, line: 118, size: 64, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2010, file: !1968, line: 120, baseType: !416, size: 16)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2010, file: !1968, line: 121, baseType: !2014, size: 48, offset: 16)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !2015)
!2015 = !{!2016}
!2016 = !DISubrange(count: 6)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2007, file: !1968, line: 127, baseType: !269, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2003, file: !1968, line: 129, baseType: !2019, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1968, line: 102, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2003, file: !1968, line: 130, baseType: !2022, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1968, line: 108, size: 192, elements: !2024)
!2024 = !{!2025, !2026, !2027}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2023, file: !1968, line: 109, baseType: !1002, size: 128, align: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2023, file: !1968, line: 110, baseType: !1562, size: 32, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2023, file: !1968, line: 111, baseType: !862, size: 8, offset: 160)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2003, file: !1968, line: 131, baseType: !308, size: 64, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !2000, file: !1968, line: 247, baseType: !2030, size: 320)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2000, file: !1968, line: 247, size: 320, elements: !2031)
!2031 = !{!2032, !2033, !2034, !2035, !2036}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2030, file: !1968, line: 248, baseType: !269, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2030, file: !1968, line: 249, baseType: !269, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2030, file: !1968, line: 250, baseType: !2019, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2030, file: !1968, line: 251, baseType: !2022, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2030, file: !1968, line: 252, baseType: !447, size: 64, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !1967, file: !1968, line: 260, baseType: !2038, size: 256, offset: 1408)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1967, file: !1968, line: 260, size: 256, elements: !2039)
!2039 = !{!2040, !2046}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2038, file: !1968, line: 261, baseType: !2041, size: 256)
!2041 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1968, line: 134, size: 256, elements: !2042)
!2042 = !{!2043, !2044}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2041, file: !1968, line: 135, baseType: !265, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2041, file: !1968, line: 136, baseType: !2045, size: 256)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 256, elements: !315)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !2038, file: !1968, line: 262, baseType: !2047, size: 256)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2038, file: !1968, line: 262, size: 256, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2047, file: !1968, line: 264, baseType: !277, size: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2047, file: !1968, line: 265, baseType: !2051, size: 128, offset: 128)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2052, line: 22, size: 128, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2053 = !{!2054, !2057}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2051, file: !2052, line: 23, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2052, line: 23, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2051, file: !2052, line: 24, baseType: !269, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1967, file: !1968, line: 280, baseType: !2059, size: 64, offset: 1664)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1968, line: 176, size: 192, elements: !2061)
!2061 = !{!2062, !2071, !2072}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2060, file: !1968, line: 177, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1968, line: 171, baseType: !2064)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!115, !1966, !2067, !2069, !1966}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2020)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2041)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2060, file: !1968, line: 178, baseType: !1966, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2060, file: !1968, line: 179, baseType: !2019, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1941, file: !1942, line: 130, baseType: !1966, size: 64, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1941, file: !1942, line: 131, baseType: !1966, size: 64, offset: 896)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1941, file: !1942, line: 132, baseType: !1966, size: 64, offset: 960)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1941, file: !1942, line: 135, baseType: !265, size: 64, offset: 1024)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1941, file: !1942, line: 137, baseType: !2078, size: 64, offset: 1088)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2080, line: 14, size: 1088, elements: !2081)
!2080 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2081 = !{!2082, !2083, !2092, !2093, !2094, !2095, !2096, !2097}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2079, file: !2080, line: 15, baseType: !1562, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2079, file: !2080, line: 17, baseType: !2084, size: 320, offset: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2085, line: 22, size: 320, elements: !2086)
!2085 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2086 = !{!2087, !2088, !2089, !2090}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2084, file: !2085, line: 23, baseType: !740, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2084, file: !2085, line: 24, baseType: !792, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2084, file: !2085, line: 26, baseType: !277, size: 128, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2084, file: !2085, line: 28, baseType: !2091, size: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2079, file: !2080, line: 19, baseType: !269, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2079, file: !2080, line: 20, baseType: !786, size: 64, offset: 448)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2079, file: !2080, line: 23, baseType: !1026, size: 128, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2079, file: !2080, line: 24, baseType: !532, size: 32, offset: 640)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2079, file: !2080, line: 29, baseType: !786, size: 64, offset: 704)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2079, file: !2080, line: 36, baseType: !2098, size: 320, offset: 768)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2099, line: 15, size: 320, elements: !2100)
!2099 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2098, file: !2099, line: 16, baseType: !740, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2098, file: !2099, line: 18, baseType: !115, size: 32, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2098, file: !2099, line: 19, baseType: !115, size: 32, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2098, file: !2099, line: 20, baseType: !115, size: 32, offset: 96)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2098, file: !2099, line: 21, baseType: !115, size: 32, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2098, file: !2099, line: 22, baseType: !269, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2098, file: !2099, line: 23, baseType: !269, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1941, file: !1942, line: 138, baseType: !2109, size: 64, offset: 1152)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !44, line: 901, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1941, file: !1942, line: 139, baseType: !2112, size: 64, offset: 1216)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2114, line: 16, flags: DIFlagFwdDecl)
!2114 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1941, file: !1942, line: 140, baseType: !2116, size: 64, offset: 1280)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1942, line: 25, size: 64, elements: !2118)
!2118 = !{!2119, !2120, !2121}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2117, file: !1942, line: 26, baseType: !401, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2117, file: !1942, line: 27, baseType: !115, size: 32, offset: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2117, file: !1942, line: 28, baseType: !2122, offset: 64)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, elements: !1932)
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !1942, line: 142, baseType: !2124, size: 128, offset: 1344)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1941, file: !1942, line: 142, size: 128, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2124, file: !1942, line: 143, baseType: !115, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2124, file: !1942, line: 144, baseType: !1002, size: 128, align: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1873, file: !20, line: 1013, baseType: !2129, size: 256, offset: 960)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2129, file: !20, line: 971, baseType: !269, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2129, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2129, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2129, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2129, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2129, file: !20, line: 976, baseType: !682, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1873, file: !20, line: 1014, baseType: !1354, size: 128, offset: 1216)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1873, file: !20, line: 1015, baseType: !526, size: 64, offset: 1344)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1873, file: !20, line: 1016, baseType: !2140, size: 64, offset: 1408)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2142)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !2143)
!2143 = !{!2144, !2145, !2149, !2154, !2158, !2187, !2188, !2194, !2207, !2215, !2219, !2220, !2511, !2512, !2516, !2521, !2522, !2526, !2530, !2536, !2537, !2541, !2542, !2548, !2552, !2556, !2562, !2566, !2570, !2574, !2578, !2579, !2585}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2142, file: !20, line: 1915, baseType: !711, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2142, file: !20, line: 1916, baseType: !2146, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!682, !1872, !682, !115}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2142, file: !20, line: 1917, baseType: !2150, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!479, !1872, !447, !494, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2142, file: !20, line: 1918, baseType: !2155, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!479, !1872, !308, !494, !2153}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2142, file: !20, line: 1919, baseType: !2159, size: 64, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!479, !2162, !2184}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2171, !2172, !2173, !2174}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2163, file: !20, line: 374, baseType: !1872, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2163, file: !20, line: 375, baseType: !682, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2163, file: !20, line: 376, baseType: !2168, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !2162, !483}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2163, file: !20, line: 377, baseType: !265, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2163, file: !20, line: 378, baseType: !115, size: 32, offset: 256)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2163, file: !20, line: 379, baseType: !416, size: 16, offset: 288)
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2163, file: !20, line: 380, baseType: !2175, size: 64, offset: 320)
!2175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2163, file: !20, line: 380, size: 64, elements: !2176)
!2176 = !{!2177, !2180}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2175, file: !20, line: 386, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2175, file: !20, line: 395, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!479, !265}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2186, line: 17, flags: DIFlagFwdDecl)
!2186 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2142, file: !20, line: 1920, baseType: !2159, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2142, file: !20, line: 1921, baseType: !2189, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!115, !2162, !2192, !13}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2142, file: !20, line: 1923, baseType: !2195, size: 64, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!115, !1872, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !2200)
!2200 = !{!2201, !2206}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2199, file: !20, line: 1859, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !2203)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!862, !2198, !308, !115, !682, !301, !13}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2199, file: !20, line: 1860, baseType: !682, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2142, file: !20, line: 1924, baseType: !2208, size: 64, offset: 512)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!2211, !1872, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2212, line: 59, baseType: !13)
!2212 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !697, line: 31, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2142, file: !20, line: 1925, baseType: !2216, size: 64, offset: 576)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!483, !1872, !13, !269}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2142, file: !20, line: 1926, baseType: !2216, size: 64, offset: 640)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2142, file: !20, line: 1927, baseType: !2221, size: 64, offset: 704)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!115, !1872, !2224}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !2226)
!2226 = !{!2227, !2236, !2237, !2245, !2252, !2253, !2258, !2259, !2264, !2265, !2268, !2504, !2505, !2506, !2507, !2508, !2509}
!2227 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !44, line: 628, baseType: !2228, size: 128)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2225, file: !44, line: 628, size: 128, elements: !2229)
!2229 = !{!2230, !2235}
!2230 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !44, line: 629, baseType: !2231, size: 128)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2228, file: !44, line: 629, size: 128, elements: !2232)
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2231, file: !44, line: 631, baseType: !269, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2231, file: !44, line: 632, baseType: !269, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2228, file: !44, line: 635, baseType: !1002, size: 128, align: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2225, file: !44, line: 639, baseType: !1845, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2225, file: !44, line: 640, baseType: !2238, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2239, line: 297, baseType: !2240)
!2239 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2239, line: 297, size: 64, elements: !2241)
!2241 = !{!2242}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2240, file: !2239, line: 297, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2244, line: 19, baseType: !269)
!2244 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !44, line: 646, baseType: !2246, size: 64, offset: 256)
!2246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2225, file: !44, line: 646, size: 64, elements: !2247)
!2247 = !{!2248, !2251}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2246, file: !44, line: 647, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !269)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2246, file: !44, line: 648, baseType: !2250, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2225, file: !44, line: 666, baseType: !115, size: 32, offset: 320)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2225, file: !44, line: 667, baseType: !2254, size: 64, offset: 384)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !2256)
!2256 = !{!2257}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2255, file: !44, line: 580, baseType: !1442, size: 320)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2225, file: !44, line: 670, baseType: !862, size: 8, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2225, file: !44, line: 681, baseType: !2260, size: 256, offset: 512)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2225, file: !44, line: 678, size: 256, elements: !2261)
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2260, file: !44, line: 679, baseType: !894, size: 192, align: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2260, file: !44, line: 680, baseType: !269, size: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2225, file: !44, line: 689, baseType: !277, size: 128, offset: 768)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2225, file: !44, line: 691, baseType: !2266, size: 64, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2225, file: !44, line: 694, baseType: !2269, size: 64, offset: 960)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2271)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2272, line: 563, size: 1024, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2273 = !{!2274, !2278, !2279, !2283, !2287, !2291, !2468, !2472, !2476, !2480, !2481, !2482, !2486, !2490, !2496, !2500}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2271, file: !2272, line: 564, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !2224}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2271, file: !2272, line: 569, baseType: !2275, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2271, file: !2272, line: 571, baseType: !2280, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!115, !2224, !269}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2271, file: !2272, line: 572, baseType: !2284, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!115, !2224}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2271, file: !2272, line: 578, baseType: !2288, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!115, !2224, !269, !269, !269}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2271, file: !2272, line: 580, baseType: !2292, size: 64, offset: 320)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2272, line: 512, size: 896, elements: !2298)
!2298 = !{!2299, !2307, !2308, !2315, !2322, !2332, !2461, !2462, !2464, !2466}
!2299 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !2272, line: 513, baseType: !2300, size: 320)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2297, file: !2272, line: 513, size: 320, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2305, !2306}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2300, file: !2272, line: 514, baseType: !2224, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2300, file: !2272, line: 515, baseType: !1294, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2300, file: !2272, line: 516, baseType: !269, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2300, file: !2272, line: 517, baseType: !269, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2300, file: !2272, line: 518, baseType: !269, size: 64, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2297, file: !2272, line: 520, baseType: !43, size: 32, offset: 320)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2297, file: !2272, line: 522, baseType: !2309, size: 64, offset: 384)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2244, line: 22, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2244, line: 22, size: 64, elements: !2312)
!2312 = !{!2313}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2311, file: !2244, line: 22, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2244, line: 15, baseType: !269)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2297, file: !2272, line: 524, baseType: !2316, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2239, line: 372, baseType: !2318)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2239, line: 372, size: 64, elements: !2319)
!2319 = !{!2320}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2318, file: !2239, line: 372, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2244, line: 16, baseType: !269)
!2322 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !2272, line: 527, baseType: !2323, size: 64, offset: 512)
!2323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2297, file: !2272, line: 527, size: 64, elements: !2324)
!2324 = !{!2325, !2331}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2323, file: !2272, line: 528, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2244, line: 21, baseType: !2327)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2244, line: 21, size: 64, elements: !2328)
!2328 = !{!2329}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2327, file: !2244, line: 21, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2244, line: 14, baseType: !269)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2323, file: !2272, line: 529, baseType: !2310, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2297, file: !2272, line: 534, baseType: !2333, size: 64, offset: 576)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !2335)
!2335 = !{!2336, !2337, !2455, !2460}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2334, file: !44, line: 75, baseType: !269, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, scope: !2334, file: !44, line: 83, baseType: !2338, size: 320, offset: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2334, file: !44, line: 83, size: 320, elements: !2339)
!2339 = !{!2340, !2361, !2375, !2379, !2454}
!2340 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !44, line: 84, baseType: !2341, size: 320)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2338, file: !44, line: 84, size: 320, elements: !2342)
!2342 = !{!2343, !2354, !2355, !2360}
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2341, file: !44, line: 90, baseType: !2344, size: 128)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2341, file: !44, line: 90, size: 128, elements: !2345)
!2345 = !{!2346, !2347, !2352, !2353}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2344, file: !44, line: 91, baseType: !277, size: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !44, line: 94, baseType: !2348, size: 128)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !44, line: 94, size: 128, elements: !2349)
!2349 = !{!2350, !2351}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2348, file: !44, line: 96, baseType: !265, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2348, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2344, file: !44, line: 102, baseType: !277, size: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2344, file: !44, line: 103, baseType: !277, size: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2341, file: !44, line: 106, baseType: !522, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2341, file: !44, line: 107, baseType: !2356, size: 64, offset: 192)
!2356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2341, file: !44, line: 107, size: 64, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2356, file: !44, line: 108, baseType: !269, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2356, file: !44, line: 109, baseType: !269, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2341, file: !44, line: 117, baseType: !269, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !44, line: 119, baseType: !2362, size: 320)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2338, file: !44, line: 119, size: 320, elements: !2363)
!2363 = !{!2364, !2365, !2368, !2369, !2370}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2362, file: !44, line: 124, baseType: !269, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2362, file: !44, line: 125, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2362, file: !44, line: 126, baseType: !269, size: 64, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2362, file: !44, line: 127, baseType: !269, size: 64, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !2362, file: !44, line: 128, baseType: !2371, size: 64, offset: 256)
!2371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2362, file: !44, line: 128, size: 64, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2371, file: !44, line: 133, baseType: !269, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2371, file: !44, line: 138, baseType: !786, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !44, line: 141, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2338, file: !44, line: 141, size: 64, elements: !2377)
!2377 = !{!2378}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2376, file: !44, line: 142, baseType: !269, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !44, line: 144, baseType: !2380, size: 128)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2338, file: !44, line: 144, size: 128, elements: !2381)
!2381 = !{!2382, !2453}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2380, file: !44, line: 146, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !60, line: 126, size: 1216, elements: !2385)
!2385 = !{!2386, !2396, !2417, !2418, !2419, !2420, !2421, !2435, !2436, !2437}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2384, file: !60, line: 127, baseType: !2387, size: 384)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !60, line: 21, size: 384, elements: !2388)
!2388 = !{!2389, !2390, !2392, !2393, !2394, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2387, file: !60, line: 22, baseType: !269, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2387, file: !60, line: 23, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2387, file: !60, line: 24, baseType: !2391, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2387, file: !60, line: 25, baseType: !269, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2387, file: !60, line: 26, baseType: !269, size: 64, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2387, file: !60, line: 27, baseType: !269, size: 64, offset: 320)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2384, file: !60, line: 128, baseType: !2397, size: 128, offset: 384)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2398, line: 105, size: 128, elements: !2399)
!2398 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2399 = !{!2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2397, file: !2398, line: 110, baseType: !269, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2397, file: !2398, line: 118, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2398, line: 95, size: 448, elements: !2404)
!2404 = !{!2405, !2406, !2412, !2413, !2414, !2415, !2416}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2403, file: !2398, line: 96, baseType: !786, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2403, file: !2398, line: 97, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2398, line: 60, baseType: !2409)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2403, file: !2398, line: 98, baseType: !2407, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2403, file: !2398, line: 99, baseType: !862, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2403, file: !2398, line: 100, baseType: !862, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2403, file: !2398, line: 101, baseType: !1002, size: 128, align: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2403, file: !2398, line: 102, baseType: !2411, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2384, file: !60, line: 129, baseType: !731, size: 256, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2384, file: !60, line: 130, baseType: !59, size: 32, offset: 768)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2384, file: !60, line: 131, baseType: !13, size: 32, offset: 800)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2384, file: !60, line: 132, baseType: !269, size: 64, offset: 832)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2384, file: !60, line: 133, baseType: !2422, size: 64, offset: 896)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2424)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !60, line: 77, size: 192, elements: !2425)
!2425 = !{!2426, !2430, !2431}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2424, file: !60, line: 83, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !2333}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2424, file: !60, line: 89, baseType: !2292, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2424, file: !60, line: 100, baseType: !2432, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!115, !2383, !269, !269, !115}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2384, file: !60, line: 134, baseType: !265, size: 64, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2384, file: !60, line: 135, baseType: !115, size: 32, offset: 1024)
!2437 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !60, line: 136, baseType: !2438, size: 128, offset: 1088)
!2438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2384, file: !60, line: 136, size: 128, elements: !2439)
!2439 = !{!2440, !2446}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2438, file: !60, line: 137, baseType: !2441, size: 128)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2442, line: 6, size: 128, elements: !2443)
!2442 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2443 = !{!2444, !2445}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2441, file: !2442, line: 7, baseType: !301, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2441, file: !2442, line: 8, baseType: !301, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, scope: !2438, file: !60, line: 138, baseType: !2447)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2438, file: !60, line: 138, elements: !2448)
!2448 = !{!2449, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2447, file: !60, line: 138, baseType: !2450)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2447, file: !60, line: 138, elements: !1069)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2447, file: !60, line: 138, baseType: !2452)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2441, elements: !1932)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2380, file: !44, line: 147, baseType: !265, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2338, file: !44, line: 161, baseType: !1002, size: 128, align: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, scope: !2334, file: !44, line: 164, baseType: !2456, size: 32, offset: 384)
!2456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2334, file: !44, line: 164, size: 32, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2456, file: !44, line: 169, baseType: !401, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2456, file: !44, line: 177, baseType: !13, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2334, file: !44, line: 181, baseType: !401, size: 32, offset: 416)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2297, file: !2272, line: 535, baseType: !2333, size: 64, offset: 640)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2297, file: !2272, line: 541, baseType: !2463, size: 64, offset: 704)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2297, file: !2272, line: 545, baseType: !2465, size: 64, offset: 768)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2297, file: !2272, line: 549, baseType: !2467, size: 64, offset: 832)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2239, line: 520, baseType: !2333)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2271, file: !2272, line: 581, baseType: !2469, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!2295, !2296, !13}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2271, file: !2272, line: 582, baseType: !2473, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!2295, !2296, !269, !269}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2271, file: !2272, line: 584, baseType: !2477, size: 64, offset: 512)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!269, !2224}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2271, file: !2272, line: 588, baseType: !2292, size: 64, offset: 576)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2271, file: !2272, line: 591, baseType: !2292, size: 64, offset: 640)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2271, file: !2272, line: 597, baseType: !2483, size: 64, offset: 704)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!115, !2224, !269, !265, !115, !115}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2271, file: !2272, line: 603, baseType: !2487, size: 64, offset: 768)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!308, !2224}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2271, file: !2272, line: 613, baseType: !2491, size: 64, offset: 832)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!115, !2224, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !44, line: 717, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2271, file: !2272, line: 625, baseType: !2497, size: 64, offset: 896)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!2494, !2224, !269}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2271, file: !2272, line: 633, baseType: !2501, size: 64, offset: 960)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!2333, !2224, !269}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2225, file: !44, line: 697, baseType: !269, size: 64, offset: 1024)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2225, file: !44, line: 699, baseType: !1872, size: 64, offset: 1088)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2225, file: !44, line: 700, baseType: !265, size: 64, offset: 1152)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2225, file: !44, line: 711, baseType: !786, size: 64, offset: 1216)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2225, file: !44, line: 717, baseType: !2494, size: 64, offset: 1280)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2225, file: !44, line: 722, baseType: !2510, offset: 1344)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !1069)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2142, file: !20, line: 1928, baseType: !269, size: 64, offset: 768)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2142, file: !20, line: 1929, baseType: !2513, size: 64, offset: 832)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!115, !526, !1872}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2142, file: !20, line: 1930, baseType: !2517, size: 64, offset: 896)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!115, !1872, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !265)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2142, file: !20, line: 1931, baseType: !2513, size: 64, offset: 960)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2142, file: !20, line: 1932, baseType: !2523, size: 64, offset: 1024)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!115, !1872, !682, !682, !115}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2142, file: !20, line: 1933, baseType: !2527, size: 64, offset: 1088)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!115, !115, !1872, !115}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2142, file: !20, line: 1934, baseType: !2531, size: 64, offset: 1152)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!115, !1872, !115, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2142, file: !20, line: 1935, baseType: !1869, size: 64, offset: 1216)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2142, file: !20, line: 1936, baseType: !2538, size: 64, offset: 1280)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!115, !115}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2142, file: !20, line: 1937, baseType: !2531, size: 64, offset: 1344)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2142, file: !20, line: 1938, baseType: !2543, size: 64, offset: 1408)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!479, !2546, !1872, !2153, !494, !13}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1224, line: 59, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2142, file: !20, line: 1939, baseType: !2549, size: 64, offset: 1472)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!479, !1872, !2153, !2546, !494, !13}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2142, file: !20, line: 1940, baseType: !2553, size: 64, offset: 1536)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !1872}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2142, file: !20, line: 1941, baseType: !2557, size: 64, offset: 1600)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!115, !1872, !115, !2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2142, file: !20, line: 1942, baseType: !2563, size: 64, offset: 1664)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!483, !1872, !115, !682, !682}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2142, file: !20, line: 1944, baseType: !2567, size: 64, offset: 1728)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !1222, !1872}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2142, file: !20, line: 1948, baseType: !2571, size: 64, offset: 1792)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!479, !1872, !682, !1872, !682, !494, !13}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2142, file: !20, line: 1950, baseType: !2575, size: 64, offset: 1856)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!682, !1872, !682, !1872, !682, !682, !13}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2142, file: !20, line: 1953, baseType: !2523, size: 64, offset: 1920)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2142, file: !20, line: 1954, baseType: !2580, size: 64, offset: 1984)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!115, !2583, !13}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2142, file: !20, line: 1955, baseType: !2586, size: 64, offset: 2048)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!115, !2583, !2192, !13}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1873, file: !20, line: 1018, baseType: !301, size: 64, offset: 1472)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1873, file: !20, line: 1020, baseType: !265, size: 64, offset: 1536)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1873, file: !20, line: 1023, baseType: !265, size: 64, offset: 1600)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1873, file: !20, line: 1027, baseType: !2593, size: 64, offset: 1664)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1873, file: !20, line: 1029, baseType: !522, size: 64, offset: 1728)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1873, file: !20, line: 1030, baseType: !2596, size: 32, offset: 1792)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2597, line: 8, baseType: !340)
!2597 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1873, file: !20, line: 1031, baseType: !2596, size: 32, offset: 1824)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1849, file: !44, line: 756, baseType: !269, size: 64, offset: 704)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1849, file: !44, line: 757, baseType: !269, size: 64, offset: 768)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1849, file: !44, line: 760, baseType: !269, size: 64, offset: 832)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1849, file: !44, line: 761, baseType: !269, size: 64, offset: 896)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1849, file: !44, line: 763, baseType: !269, size: 64, offset: 960)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1849, file: !44, line: 764, baseType: !2605, size: 64, offset: 1024)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2239, line: 299, baseType: !2607)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2239, line: 299, size: 64, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2607, file: !2239, line: 299, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2244, line: 18, baseType: !269)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1849, file: !44, line: 773, baseType: !401, size: 32, offset: 1088)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1849, file: !44, line: 785, baseType: !401, size: 32, offset: 1120)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1849, file: !44, line: 795, baseType: !2614, size: 64, offset: 1152)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !2616)
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2615, file: !44, line: 727, baseType: !301, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2615, file: !44, line: 728, baseType: !115, size: 32, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1849, file: !44, line: 801, baseType: !269, size: 64, offset: 1216)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1849, file: !44, line: 804, baseType: !786, size: 64, offset: 1280)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1849, file: !44, line: 806, baseType: !115, size: 32, offset: 1344)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1849, file: !44, line: 808, baseType: !381, size: 32, offset: 1376)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1849, file: !44, line: 823, baseType: !1442, size: 320, offset: 1408)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1849, file: !44, line: 825, baseType: !277, size: 128, offset: 1728)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1849, file: !44, line: 845, baseType: !115, size: 32, offset: 1856)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1849, file: !44, line: 849, baseType: !269, size: 64, offset: 1920)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1849, file: !44, line: 850, baseType: !269, size: 64, offset: 1984)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1849, file: !44, line: 852, baseType: !269, size: 64, offset: 2048)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1849, file: !44, line: 853, baseType: !269, size: 64, offset: 2112)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1849, file: !44, line: 854, baseType: !788, size: 64, offset: 2176)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1849, file: !44, line: 855, baseType: !269, size: 64, offset: 2240)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1849, file: !44, line: 856, baseType: !269, size: 64, offset: 2304)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1849, file: !44, line: 857, baseType: !269, size: 64, offset: 2368)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1849, file: !44, line: 858, baseType: !269, size: 64, offset: 2432)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1849, file: !44, line: 865, baseType: !572, size: 32, offset: 2496)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1849, file: !44, line: 867, baseType: !381, size: 32, offset: 2528)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1849, file: !44, line: 869, baseType: !269, size: 64, offset: 2560)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1849, file: !44, line: 869, baseType: !269, size: 64, offset: 2624)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1849, file: !44, line: 869, baseType: !269, size: 64, offset: 2688)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1849, file: !44, line: 869, baseType: !269, size: 64, offset: 2752)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1849, file: !44, line: 870, baseType: !269, size: 64, offset: 2816)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1849, file: !44, line: 870, baseType: !269, size: 64, offset: 2880)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1849, file: !44, line: 870, baseType: !269, size: 64, offset: 2944)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1849, file: !44, line: 871, baseType: !269, size: 64, offset: 3008)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1849, file: !44, line: 871, baseType: !269, size: 64, offset: 3072)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1849, file: !44, line: 871, baseType: !269, size: 64, offset: 3136)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1849, file: !44, line: 871, baseType: !269, size: 64, offset: 3200)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1849, file: !44, line: 873, baseType: !2649, size: 3328, offset: 3264)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 3328, elements: !2650)
!2650 = !{!2651}
!2651 = !DISubrange(count: 52)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1849, file: !44, line: 875, baseType: !2653, size: 1280, offset: 6592)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2084, size: 1280, elements: !315)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1849, file: !44, line: 877, baseType: !2655, size: 64, offset: 7872)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1849, file: !44, line: 880, baseType: !2658, size: 1088, offset: 7936)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2659, line: 72, baseType: !2660)
!2659 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2659, line: 23, size: 1088, elements: !2661)
!2661 = !{!2662, !2663, !2664, !2665, !2666, !2669, !2670, !2671, !2672, !2699, !2700, !2701}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2660, file: !2659, line: 28, baseType: !301, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2660, file: !2659, line: 38, baseType: !788, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2660, file: !2659, line: 40, baseType: !269, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2660, file: !2659, line: 43, baseType: !1442, size: 320, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2660, file: !2659, line: 44, baseType: !2667, size: 64, offset: 512)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2659, line: 44, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2660, file: !2659, line: 48, baseType: !269, size: 64, offset: 576)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2660, file: !2659, line: 59, baseType: !782, size: 256, offset: 640)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2660, file: !2659, line: 60, baseType: !265, size: 64, offset: 896)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2660, file: !2659, line: 61, baseType: !2673, size: 64, offset: 960)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2675)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2676, line: 13, size: 1216, elements: !2677)
!2676 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2675, file: !2676, line: 14, baseType: !265, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2675, file: !2676, line: 15, baseType: !269, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2675, file: !2676, line: 17, baseType: !269, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2675, file: !2676, line: 17, baseType: !269, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2675, file: !2676, line: 18, baseType: !269, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2675, file: !2676, line: 18, baseType: !269, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2675, file: !2676, line: 19, baseType: !2685, size: 64, offset: 384)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2675, file: !2676, line: 21, baseType: !483, size: 64, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2675, file: !2676, line: 23, baseType: !483, size: 64, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2675, file: !2676, line: 24, baseType: !483, size: 64, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2675, file: !2676, line: 25, baseType: !483, size: 64, offset: 640)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2675, file: !2676, line: 26, baseType: !483, size: 64, offset: 704)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2675, file: !2676, line: 27, baseType: !483, size: 64, offset: 768)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2675, file: !2676, line: 28, baseType: !483, size: 64, offset: 832)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2675, file: !2676, line: 29, baseType: !483, size: 64, offset: 896)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2675, file: !2676, line: 30, baseType: !483, size: 64, offset: 960)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2675, file: !2676, line: 31, baseType: !483, size: 64, offset: 1024)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2675, file: !2676, line: 32, baseType: !483, size: 64, offset: 1088)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2675, file: !2676, line: 33, baseType: !483, size: 64, offset: 1152)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2660, file: !2659, line: 63, baseType: !401, size: 32, offset: 1024)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2660, file: !2659, line: 69, baseType: !416, size: 16, offset: 1056)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2660, file: !2659, line: 70, baseType: !918, size: 16, offset: 1072)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1849, file: !44, line: 882, baseType: !269, size: 64, offset: 9024)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1849, file: !44, line: 885, baseType: !381, size: 32, offset: 9088)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1849, file: !44, line: 886, baseType: !2705, size: 64, offset: 9152)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1849, file: !44, line: 901, baseType: !2109, size: 64, offset: 9216)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1849, file: !44, line: 904, baseType: !1872, size: 64, offset: 9280)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1849, file: !44, line: 906, baseType: !2710, size: 64, offset: 9344)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1849, file: !44, line: 930, baseType: !401, size: 32, offset: 9408)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1849, file: !44, line: 933, baseType: !401, size: 32, offset: 9440)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1849, file: !44, line: 935, baseType: !2715, size: 64, offset: 9472)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !2716)
!2716 = !{!2717}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2715, file: !74, line: 104, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1849, file: !44, line: 940, baseType: !786, size: 64, offset: 9536)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1849, file: !44, line: 942, baseType: !1040, size: 256, offset: 9600)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1846, file: !44, line: 986, baseType: !2723, offset: 10240)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, elements: !1932)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1549, file: !1224, line: 882, baseType: !1845, size: 64, offset: 9792)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1549, file: !1224, line: 884, baseType: !115, size: 32, offset: 9856)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1549, file: !1224, line: 885, baseType: !115, size: 32, offset: 9888)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1549, file: !1224, line: 886, baseType: !115, size: 32, offset: 9920)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1549, file: !1224, line: 888, baseType: !115, size: 32, offset: 9952)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1549, file: !1224, line: 890, baseType: !269, size: 64, offset: 9984)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1549, file: !1224, line: 893, baseType: !13, size: 32, offset: 10048)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1549, file: !1224, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1549, file: !1224, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1549, file: !1224, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1549, file: !1224, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1549, file: !1224, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1549, file: !1224, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1549, file: !1224, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1549, file: !1224, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1549, file: !1224, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1549, file: !1224, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1549, file: !1224, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1549, file: !1224, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1549, file: !1224, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1549, file: !1224, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1549, file: !1224, line: 969, baseType: !269, size: 64, offset: 10176)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1549, file: !1224, line: 971, baseType: !2747, size: 448, offset: 10240)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !2748)
!2748 = !{!2749, !2750, !2755}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2747, file: !68, line: 26, baseType: !269, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2747, file: !68, line: 27, baseType: !2751, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!483, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, scope: !2747, file: !68, line: 28, baseType: !2756, size: 320, offset: 128)
!2756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2747, file: !68, line: 28, size: 320, elements: !2757)
!2757 = !{!2758, !2767, !2792}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2756, file: !68, line: 37, baseType: !2759, size: 320)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !68, line: 30, size: 320, elements: !2760)
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2759, file: !68, line: 31, baseType: !339, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2759, file: !68, line: 32, baseType: !340, size: 32, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2759, file: !68, line: 33, baseType: !340, size: 32, offset: 96)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2759, file: !68, line: 34, baseType: !340, size: 32, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2759, file: !68, line: 35, baseType: !301, size: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2759, file: !68, line: 36, baseType: !339, size: 64, offset: 256)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2756, file: !68, line: 47, baseType: !2768, size: 192)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !68, line: 39, size: 192, elements: !2769)
!2769 = !{!2770, !2771, !2772, !2791}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2768, file: !68, line: 40, baseType: !1716, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2768, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !2768, file: !68, line: 42, baseType: !2773, size: 64, offset: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2768, file: !68, line: 42, size: 64, elements: !2774)
!2774 = !{!2775, !2783}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2773, file: !68, line: 43, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2778, line: 7, size: 128, elements: !2779)
!2778 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2779 = !{!2780, !2782}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2777, file: !2778, line: 8, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !481, line: 93, baseType: !684)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2777, file: !2778, line: 9, baseType: !684, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2773, file: !68, line: 44, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2786, line: 7, size: 64, elements: !2787)
!2786 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2787 = !{!2788, !2790}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2785, file: !2786, line: 8, baseType: !2789, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2786, line: 5, baseType: !778)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2785, file: !2786, line: 9, baseType: !778, size: 32, offset: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2768, file: !68, line: 46, baseType: !301, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2756, file: !68, line: 55, baseType: !2793, size: 256)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !68, line: 49, size: 256, elements: !2794)
!2794 = !{!2795, !2798, !2799, !2800, !2801}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2793, file: !68, line: 50, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !68, line: 14, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2793, file: !68, line: 51, baseType: !115, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2793, file: !68, line: 52, baseType: !115, size: 32, offset: 96)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2793, file: !68, line: 53, baseType: !269, size: 64, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2793, file: !68, line: 54, baseType: !269, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1549, file: !1224, line: 973, baseType: !2803, size: 32, offset: 10688)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !268, line: 27, baseType: !2804)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !481, line: 28, baseType: !115)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1549, file: !1224, line: 974, baseType: !2803, size: 32, offset: 10720)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1549, file: !1224, line: 978, baseType: !269, size: 64, offset: 10752)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1549, file: !1224, line: 987, baseType: !1548, size: 64, offset: 10816)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1549, file: !1224, line: 990, baseType: !1548, size: 64, offset: 10880)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1549, file: !1224, line: 995, baseType: !277, size: 128, offset: 10944)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1549, file: !1224, line: 996, baseType: !277, size: 128, offset: 11072)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1549, file: !1224, line: 997, baseType: !1548, size: 64, offset: 11200)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1549, file: !1224, line: 1005, baseType: !277, size: 128, offset: 11264)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1549, file: !1224, line: 1006, baseType: !277, size: 128, offset: 11392)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1549, file: !1224, line: 1009, baseType: !1913, size: 64, offset: 11520)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1549, file: !1224, line: 1010, baseType: !2816, size: 512, offset: 11584)
!2816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 512, elements: !315)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1549, file: !1224, line: 1011, baseType: !277, size: 128, offset: 12096)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1549, file: !1224, line: 1012, baseType: !277, size: 128, offset: 12224)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1549, file: !1224, line: 1014, baseType: !730, size: 64, offset: 12352)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1549, file: !1224, line: 1017, baseType: !911, size: 64, offset: 12416)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1549, file: !1224, line: 1020, baseType: !911, size: 64, offset: 12480)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1549, file: !1224, line: 1023, baseType: !265, size: 64, offset: 12544)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1549, file: !1224, line: 1025, baseType: !301, size: 64, offset: 12608)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1549, file: !1224, line: 1026, baseType: !301, size: 64, offset: 12672)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1549, file: !1224, line: 1031, baseType: !301, size: 64, offset: 12736)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1549, file: !1224, line: 1032, baseType: !2827, size: 192, offset: 12800)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1224, line: 324, size: 192, elements: !2828)
!2828 = !{!2829, !2830, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2827, file: !1224, line: 326, baseType: !301, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2827, file: !1224, line: 327, baseType: !301, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2827, file: !1224, line: 328, baseType: !740, size: 32, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1549, file: !1224, line: 1041, baseType: !269, size: 64, offset: 12992)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1549, file: !1224, line: 1042, baseType: !269, size: 64, offset: 13056)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1549, file: !1224, line: 1045, baseType: !301, size: 64, offset: 13120)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1549, file: !1224, line: 1048, baseType: !301, size: 64, offset: 13184)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1549, file: !1224, line: 1051, baseType: !269, size: 64, offset: 13248)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1549, file: !1224, line: 1052, baseType: !269, size: 64, offset: 13312)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1549, file: !1224, line: 1055, baseType: !2839, size: 640, offset: 13376)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2840, line: 132, size: 640, elements: !2841)
!2840 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2841 = !{!2842, !2848, !2849}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2839, file: !2840, line: 133, baseType: !2843, size: 576)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2844, size: 576, elements: !448)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2840, line: 117, size: 192, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2844, file: !2840, line: 118, baseType: !301, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2844, file: !2840, line: 119, baseType: !1725, size: 128, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2839, file: !2840, line: 134, baseType: !13, size: 32, offset: 576)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2839, file: !2840, line: 135, baseType: !13, size: 32, offset: 608)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1549, file: !1224, line: 1058, baseType: !2851, size: 448, offset: 14016)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2840, line: 144, size: 448, elements: !2852)
!2852 = !{!2853, !2854, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2851, file: !2840, line: 145, baseType: !1002, size: 128, align: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2851, file: !2840, line: 146, baseType: !782, size: 256, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2851, file: !2840, line: 147, baseType: !13, size: 32, offset: 384)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1549, file: !1224, line: 1064, baseType: !1939, size: 64, offset: 14464)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1549, file: !1224, line: 1067, baseType: !1939, size: 64, offset: 14528)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1549, file: !1224, line: 1070, baseType: !1939, size: 64, offset: 14592)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1549, file: !1224, line: 1074, baseType: !1966, size: 64, offset: 14656)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1549, file: !1224, line: 1084, baseType: !2861, size: 128, offset: 14720)
!2861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2862)
!2862 = !{!2863}
!2863 = !DISubrange(count: 16)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1549, file: !1224, line: 1086, baseType: !2865, size: 64, offset: 14848)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1224, line: 55, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1549, file: !1224, line: 1089, baseType: !2868, size: 64, offset: 14912)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2869, line: 12, size: 64, elements: !2870)
!2869 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2870 = !{!2871}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2868, file: !2869, line: 13, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2869, line: 8, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1549, file: !1224, line: 1090, baseType: !2875, size: 128, offset: 14976)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2876, line: 13, size: 128, elements: !2877)
!2876 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2877 = !{!2878}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2875, file: !2876, line: 14, baseType: !277, size: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1549, file: !1224, line: 1097, baseType: !2880, size: 64, offset: 15104)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1224, line: 50, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1549, file: !1224, line: 1100, baseType: !2883, size: 64, offset: 15168)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1224, line: 1100, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1549, file: !1224, line: 1103, baseType: !2886, size: 64, offset: 15232)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1224, line: 53, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1549, file: !1224, line: 1107, baseType: !2889, size: 64, offset: 15296)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1224, line: 56, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1549, file: !1224, line: 1110, baseType: !2892, size: 64, offset: 15360)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2894, line: 93, size: 8768, elements: !2895)
!2894 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2943, !2952, !2953, !2955, !2956, !2957, !2960, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2998, !2999, !3006, !3016, !3019, !3020, !3023, !3024, !3025, !3026, !3027, !3028}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2893, file: !2894, line: 94, baseType: !1562, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2893, file: !2894, line: 95, baseType: !401, size: 32, offset: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2893, file: !2894, line: 96, baseType: !115, size: 32, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2893, file: !2894, line: 97, baseType: !115, size: 32, offset: 96)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2893, file: !2894, line: 98, baseType: !277, size: 128, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2893, file: !2894, line: 100, baseType: !1535, size: 192, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2893, file: !2894, line: 103, baseType: !1548, size: 64, offset: 448)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2893, file: !2894, line: 106, baseType: !2904, size: 192, offset: 512)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2114, line: 32, size: 192, elements: !2905)
!2905 = !{!2906, !2907}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2904, file: !2114, line: 33, baseType: !277, size: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2904, file: !2114, line: 34, baseType: !2908, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2909, line: 25, baseType: !2910)
!2909 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2909, line: 23, size: 64, elements: !2911)
!2911 = !{!2912}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2910, file: !2909, line: 24, baseType: !1796, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2893, file: !2894, line: 109, baseType: !1150, size: 64, offset: 704)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2893, file: !2894, line: 112, baseType: !115, size: 32, offset: 768)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2893, file: !2894, line: 114, baseType: !115, size: 32, offset: 800)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2893, file: !2894, line: 115, baseType: !1548, size: 64, offset: 832)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2893, file: !2894, line: 118, baseType: !115, size: 32, offset: 896)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2893, file: !2894, line: 119, baseType: !13, size: 32, offset: 928)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2893, file: !2894, line: 121, baseType: !2920, size: 64, offset: 960)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2894, line: 80, size: 448, elements: !2922)
!2922 = !{!2923, !2924, !2930}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2921, file: !2894, line: 81, baseType: !401, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2921, file: !2894, line: 82, baseType: !2925, size: 128, offset: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2894, line: 75, size: 128, elements: !2926)
!2926 = !{!2927, !2928}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2925, file: !2894, line: 76, baseType: !1548, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2925, file: !2894, line: 77, baseType: !2929, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2921, file: !2894, line: 83, baseType: !731, size: 256, offset: 192)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2893, file: !2894, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2893, file: !2894, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2893, file: !2894, line: 138, baseType: !13, size: 32, offset: 1056)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2893, file: !2894, line: 139, baseType: !277, size: 128, offset: 1088)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2893, file: !2894, line: 142, baseType: !1669, size: 512, offset: 1216)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2893, file: !2894, line: 143, baseType: !1677, size: 64, offset: 1728)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2893, file: !2894, line: 150, baseType: !2938, size: 256, offset: 1792)
!2938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2939, size: 256, elements: !901)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2894, line: 38, size: 128, elements: !2940)
!2940 = !{!2941, !2942}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2939, file: !2894, line: 39, baseType: !301, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2939, file: !2894, line: 40, baseType: !301, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2893, file: !2894, line: 156, baseType: !2944, size: 192, offset: 2048)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2894, line: 66, size: 192, elements: !2945)
!2945 = !{!2946}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2944, file: !2894, line: 67, baseType: !2947, size: 192)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2894, line: 47, size: 192, elements: !2948)
!2948 = !{!2949, !2950, !2951}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2947, file: !2894, line: 48, baseType: !788, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2947, file: !2894, line: 49, baseType: !788, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2947, file: !2894, line: 50, baseType: !788, size: 64, offset: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2893, file: !2894, line: 160, baseType: !2839, size: 640, offset: 2240)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2893, file: !2894, line: 163, baseType: !2954, size: 256, offset: 2880)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, size: 256, elements: !315)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2893, file: !2894, line: 169, baseType: !1913, size: 64, offset: 3136)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2893, file: !2894, line: 172, baseType: !115, size: 32, offset: 3200)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2893, file: !2894, line: 174, baseType: !2958, size: 64, offset: 3264)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2894, line: 174, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2893, file: !2894, line: 185, baseType: !2961, size: 64, offset: 3328)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !568, line: 860, baseType: !2962)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 853, size: 64, elements: !2963)
!2963 = !{!2964, !2965}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2962, file: !568, line: 858, baseType: !567, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2962, file: !568, line: 859, baseType: !381, size: 32, offset: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2893, file: !2894, line: 186, baseType: !301, size: 64, offset: 3392)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2893, file: !2894, line: 186, baseType: !301, size: 64, offset: 3456)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2893, file: !2894, line: 186, baseType: !301, size: 64, offset: 3520)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2893, file: !2894, line: 186, baseType: !301, size: 64, offset: 3584)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2893, file: !2894, line: 187, baseType: !301, size: 64, offset: 3648)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2893, file: !2894, line: 188, baseType: !301, size: 64, offset: 3712)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2893, file: !2894, line: 189, baseType: !2827, size: 192, offset: 3776)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2893, file: !2894, line: 190, baseType: !269, size: 64, offset: 3968)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2893, file: !2894, line: 190, baseType: !269, size: 64, offset: 4032)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2893, file: !2894, line: 190, baseType: !269, size: 64, offset: 4096)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2893, file: !2894, line: 190, baseType: !269, size: 64, offset: 4160)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2893, file: !2894, line: 191, baseType: !269, size: 64, offset: 4224)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2893, file: !2894, line: 191, baseType: !269, size: 64, offset: 4288)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2893, file: !2894, line: 191, baseType: !269, size: 64, offset: 4352)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2893, file: !2894, line: 191, baseType: !269, size: 64, offset: 4416)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2893, file: !2894, line: 192, baseType: !269, size: 64, offset: 4480)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2893, file: !2894, line: 192, baseType: !269, size: 64, offset: 4544)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2893, file: !2894, line: 192, baseType: !269, size: 64, offset: 4608)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2893, file: !2894, line: 192, baseType: !269, size: 64, offset: 4672)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2893, file: !2894, line: 193, baseType: !269, size: 64, offset: 4736)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2893, file: !2894, line: 193, baseType: !269, size: 64, offset: 4800)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2893, file: !2894, line: 194, baseType: !2988, size: 448, offset: 4864)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2989, line: 12, size: 448, elements: !2990)
!2989 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996, !2997}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2988, file: !2989, line: 15, baseType: !301, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2988, file: !2989, line: 17, baseType: !301, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2988, file: !2989, line: 19, baseType: !301, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2988, file: !2989, line: 21, baseType: !301, size: 64, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2988, file: !2989, line: 29, baseType: !301, size: 64, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2988, file: !2989, line: 35, baseType: !301, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2988, file: !2989, line: 44, baseType: !301, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2893, file: !2894, line: 202, baseType: !305, size: 64, offset: 5312)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2893, file: !2894, line: 213, baseType: !3000, size: 2048, offset: 5376)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3001, size: 2048, elements: !2862)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3002, line: 43, size: 128, elements: !3003)
!3002 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3001, file: !3002, line: 44, baseType: !496, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3001, file: !3002, line: 45, baseType: !496, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2893, file: !2894, line: 216, baseType: !3007, size: 448, offset: 7424)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2894, line: 30, size: 448, elements: !3008)
!3008 = !{!3009, !3010, !3011, !3012, !3013, !3014, !3015}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3007, file: !2894, line: 31, baseType: !115, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3007, file: !2894, line: 32, baseType: !483, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3007, file: !2894, line: 33, baseType: !269, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3007, file: !2894, line: 34, baseType: !301, size: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3007, file: !2894, line: 34, baseType: !301, size: 64, offset: 256)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3007, file: !2894, line: 35, baseType: !269, size: 64, offset: 320)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3007, file: !2894, line: 35, baseType: !269, size: 64, offset: 384)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2893, file: !2894, line: 219, baseType: !3017, size: 64, offset: 7872)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2894, line: 219, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2893, file: !2894, line: 222, baseType: !13, size: 32, offset: 7936)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2893, file: !2894, line: 223, baseType: !3021, size: 64, offset: 8000)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2894, line: 223, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2893, file: !2894, line: 230, baseType: !862, size: 8, offset: 8064)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2893, file: !2894, line: 231, baseType: !920, size: 16, offset: 8080)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2893, file: !2894, line: 232, baseType: !920, size: 16, offset: 8096)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2893, file: !2894, line: 234, baseType: !1845, size: 64, offset: 8128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2893, file: !2894, line: 237, baseType: !782, size: 256, offset: 8192)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2893, file: !2894, line: 243, baseType: !1442, size: 320, offset: 8448)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1549, file: !1224, line: 1111, baseType: !3030, size: 64, offset: 15424)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2894, line: 20, size: 16640, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3031, file: !2894, line: 21, baseType: !381, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3031, file: !2894, line: 22, baseType: !1562, size: 32, offset: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3031, file: !2894, line: 23, baseType: !1535, size: 192, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3031, file: !2894, line: 24, baseType: !3037, size: 16384, offset: 256)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3038, size: 16384, elements: !452)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2114, line: 51, size: 256, elements: !3039)
!3039 = !{!3040}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3038, file: !2114, line: 52, baseType: !3041, size: 256)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2114, line: 37, size: 256, elements: !3042)
!3042 = !{!3043, !3050, !3051, !3055}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3041, file: !2114, line: 39, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3045, line: 83, baseType: !3046)
!3045 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3045, line: 82, baseType: !3048)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !115}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3041, file: !2114, line: 40, baseType: !269, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3041, file: !2114, line: 46, baseType: !3052, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3045, line: 86, baseType: !3053)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3045, line: 85, baseType: !1145)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3041, file: !2114, line: 48, baseType: !2908, size: 64, offset: 192)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1549, file: !1224, line: 1112, baseType: !2908, size: 64, offset: 15488)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1549, file: !1224, line: 1113, baseType: !2908, size: 64, offset: 15552)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1549, file: !1224, line: 1115, baseType: !2908, size: 64, offset: 15616)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1549, file: !1224, line: 1116, baseType: !2904, size: 192, offset: 15680)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1549, file: !1224, line: 1117, baseType: !269, size: 64, offset: 15872)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1549, file: !1224, line: 1118, baseType: !494, size: 64, offset: 15936)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1549, file: !1224, line: 1119, baseType: !13, size: 32, offset: 16000)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1549, file: !1224, line: 1121, baseType: !1001, size: 64, offset: 16064)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1549, file: !1224, line: 1125, baseType: !3065, size: 64, offset: 16128)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1224, line: 43, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1549, file: !1224, line: 1127, baseType: !532, size: 32, offset: 16192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1549, file: !1224, line: 1128, baseType: !13, size: 32, offset: 16224)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1549, file: !1224, line: 1130, baseType: !3070, size: 128, offset: 16256)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3071, line: 37, size: 128, elements: !3072)
!3071 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3072 = !{!3073, !3074, !3075}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3070, file: !3071, line: 38, baseType: !115, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3070, file: !3071, line: 39, baseType: !401, size: 32, offset: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3070, file: !3071, line: 40, baseType: !3076, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3071, line: 24, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1549, file: !1224, line: 1131, baseType: !3079, size: 256, offset: 16384)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3080, line: 12, size: 256, elements: !3081)
!3080 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3081 = !{!3082, !3083, !3084, !3085}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3079, file: !3080, line: 13, baseType: !447, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3079, file: !3080, line: 14, baseType: !269, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3079, file: !3080, line: 15, baseType: !269, size: 64, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3079, file: !3080, line: 16, baseType: !862, size: 8, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1549, file: !1224, line: 1134, baseType: !301, size: 64, offset: 16640)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1549, file: !1224, line: 1135, baseType: !301, size: 64, offset: 16704)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1549, file: !1224, line: 1138, baseType: !381, size: 32, offset: 16768)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1549, file: !1224, line: 1141, baseType: !740, size: 32, offset: 16800)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1549, file: !1224, line: 1143, baseType: !3091, size: 64, offset: 16832)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1224, line: 735, size: 64, elements: !3092)
!3092 = !{!3093}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3091, file: !1224, line: 736, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1549, file: !1224, line: 1147, baseType: !1728, size: 128, offset: 16896)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1549, file: !1224, line: 1149, baseType: !1548, size: 64, offset: 17024)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1549, file: !1224, line: 1151, baseType: !3098, size: 64, offset: 17088)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1224, line: 1151, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1549, file: !1224, line: 1188, baseType: !265, size: 64, offset: 17152)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1549, file: !1224, line: 1191, baseType: !3102, size: 64, offset: 17216)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1224, line: 44, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1549, file: !1224, line: 1194, baseType: !3105, size: 64, offset: 17280)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1224, line: 45, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1549, file: !1224, line: 1197, baseType: !3108, size: 64, offset: 17344)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1224, line: 61, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1549, file: !1224, line: 1199, baseType: !3111, size: 64, offset: 17408)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3113, line: 99, size: 128, elements: !3114)
!3113 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3114 = !{!3115, !3116, !3117}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3112, file: !3113, line: 100, baseType: !786, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3112, file: !3113, line: 101, baseType: !401, size: 32, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3112, file: !3113, line: 103, baseType: !266, size: 16, offset: 96)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1549, file: !1224, line: 1202, baseType: !3119, size: 64, offset: 17472)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1224, line: 48, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1549, file: !1224, line: 1205, baseType: !269, size: 64, offset: 17536)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1549, file: !1224, line: 1206, baseType: !3123, size: 64, offset: 17600)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2114, line: 14, baseType: !3125)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2114, line: 12, size: 384, elements: !3126)
!3126 = !{!3127}
!3127 = !DIDerivedType(tag: DW_TAG_member, scope: !3125, file: !2114, line: 13, baseType: !3128, size: 384)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3125, file: !2114, line: 13, size: 384, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3133}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3128, file: !2114, line: 13, baseType: !115, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3128, file: !2114, line: 13, baseType: !115, size: 32, offset: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3128, file: !2114, line: 13, baseType: !115, size: 32, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3128, file: !2114, line: 13, baseType: !3134, size: 256, offset: 128)
!3134 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3135, line: 37, size: 256, elements: !3136)
!3135 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3136 = !{!3137, !3142, !3155, !3161, !3170, !3197, !3202}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3134, file: !3135, line: 42, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3135, line: 39, size: 64, elements: !3139)
!3139 = !{!3140, !3141}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3138, file: !3135, line: 40, baseType: !2804, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3138, file: !3135, line: 41, baseType: !538, size: 32, offset: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3134, file: !3135, line: 50, baseType: !3143, size: 192)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3135, line: 45, size: 192, elements: !3144)
!3144 = !{!3145, !3147, !3148, !3154}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3143, file: !3135, line: 46, baseType: !3146, size: 32)
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !481, line: 95, baseType: !115)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3143, file: !3135, line: 47, baseType: !115, size: 32, offset: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3143, file: !3135, line: 48, baseType: !3149, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3135, line: 11, baseType: !3150)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3135, line: 8, size: 64, elements: !3151)
!3151 = !{!3152, !3153}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3150, file: !3135, line: 9, baseType: !115, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3150, file: !3135, line: 10, baseType: !265, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3143, file: !3135, line: 49, baseType: !115, size: 32, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3134, file: !3135, line: 57, baseType: !3156, size: 128)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3135, line: 53, size: 128, elements: !3157)
!3157 = !{!3158, !3159, !3160}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3156, file: !3135, line: 54, baseType: !2804, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3156, file: !3135, line: 55, baseType: !538, size: 32, offset: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3156, file: !3135, line: 56, baseType: !3149, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3134, file: !3135, line: 66, baseType: !3162, size: 256)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3135, line: 60, size: 256, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167, !3169}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3162, file: !3135, line: 61, baseType: !2804, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3162, file: !3135, line: 62, baseType: !538, size: 32, offset: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3162, file: !3135, line: 63, baseType: !115, size: 32, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3162, file: !3135, line: 64, baseType: !3168, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !481, line: 94, baseType: !482)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3162, file: !3135, line: 65, baseType: !3168, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3134, file: !3135, line: 105, baseType: !3171, size: 256)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3135, line: 69, size: 256, elements: !3172)
!3172 = !{!3173, !3174}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3171, file: !3135, line: 70, baseType: !265, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !3171, file: !3135, line: 79, baseType: !3175, size: 192, offset: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3171, file: !3135, line: 79, size: 192, elements: !3176)
!3176 = !{!3177, !3178, !3179, !3186, !3191}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3175, file: !3135, line: 81, baseType: !115, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3175, file: !3135, line: 86, baseType: !920, size: 16)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3175, file: !3135, line: 92, baseType: !3180, size: 192)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3175, file: !3135, line: 88, size: 192, elements: !3181)
!3181 = !{!3182, !3184, !3185}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3180, file: !3135, line: 89, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1712)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3180, file: !3135, line: 90, baseType: !265, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3180, file: !3135, line: 91, baseType: !265, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3175, file: !3135, line: 97, baseType: !3187, size: 96)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3175, file: !3135, line: 94, size: 96, elements: !3188)
!3188 = !{!3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3187, file: !3135, line: 95, baseType: !3183, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3187, file: !3135, line: 96, baseType: !341, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3175, file: !3135, line: 103, baseType: !3192, size: 128)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3175, file: !3135, line: 99, size: 128, elements: !3193)
!3193 = !{!3194, !3195, !3196}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3192, file: !3135, line: 100, baseType: !269, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3192, file: !3135, line: 101, baseType: !341, size: 32, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3192, file: !3135, line: 102, baseType: !341, size: 32, offset: 96)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3134, file: !3135, line: 111, baseType: !3198, size: 128)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3135, line: 108, size: 128, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3198, file: !3135, line: 109, baseType: !483, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3198, file: !3135, line: 110, baseType: !115, size: 32, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3134, file: !3135, line: 118, baseType: !3203, size: 128)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3135, line: 114, size: 128, elements: !3204)
!3204 = !{!3205, !3206, !3207}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3203, file: !3135, line: 115, baseType: !265, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3203, file: !3135, line: 116, baseType: !115, size: 32, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3203, file: !3135, line: 117, baseType: !13, size: 32, offset: 96)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1549, file: !1224, line: 1208, baseType: !2988, size: 448, offset: 17664)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1549, file: !1224, line: 1215, baseType: !301, size: 64, offset: 18112)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1549, file: !1224, line: 1217, baseType: !301, size: 64, offset: 18176)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1549, file: !1224, line: 1219, baseType: !301, size: 64, offset: 18240)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1549, file: !1224, line: 1223, baseType: !3213, size: 64, offset: 18304)
!3213 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3214, line: 99, baseType: !3215)
!3214 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3214, line: 99, size: 64, elements: !3216)
!3216 = !{!3217}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3215, file: !3214, line: 99, baseType: !1796, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1549, file: !1224, line: 1225, baseType: !567, size: 32, offset: 18368)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1549, file: !1224, line: 1226, baseType: !115, size: 32, offset: 18400)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1549, file: !1224, line: 1227, baseType: !115, size: 32, offset: 18432)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1549, file: !1224, line: 1231, baseType: !3222, size: 64, offset: 18496)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1224, line: 1231, flags: DIFlagFwdDecl)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1549, file: !1224, line: 1233, baseType: !277, size: 128, offset: 18560)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1549, file: !1224, line: 1240, baseType: !3226, size: 64, offset: 18688)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1224, line: 62, flags: DIFlagFwdDecl)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1549, file: !1224, line: 1242, baseType: !3229, size: 64, offset: 18752)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1224, line: 1242, flags: DIFlagFwdDecl)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1549, file: !1224, line: 1244, baseType: !277, size: 128, offset: 18816)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1549, file: !1224, line: 1245, baseType: !3233, size: 64, offset: 18944)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1224, line: 51, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1549, file: !1224, line: 1246, baseType: !782, size: 256, offset: 19008)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1549, file: !1224, line: 1247, baseType: !13, size: 32, offset: 19264)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1549, file: !1224, line: 1250, baseType: !3238, size: 64, offset: 19328)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1224, line: 57, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1549, file: !1224, line: 1251, baseType: !782, size: 256, offset: 19392)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1549, file: !1224, line: 1252, baseType: !277, size: 128, offset: 19648)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1549, file: !1224, line: 1259, baseType: !2494, size: 64, offset: 19776)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1549, file: !1224, line: 1260, baseType: !920, size: 16, offset: 19840)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1549, file: !1224, line: 1261, baseType: !920, size: 16, offset: 19856)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1549, file: !1224, line: 1314, baseType: !3246, size: 64, offset: 19904)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3248, line: 62, size: 256, align: 256, elements: !3249)
!3248 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3249 = !{!3250, !3251, !3252, !3253, !3254, !3255, !3256}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3247, file: !3248, line: 75, baseType: !341, size: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3247, file: !3248, line: 90, baseType: !341, size: 32, offset: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3247, file: !3248, line: 112, baseType: !303, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3247, file: !3248, line: 132, baseType: !341, size: 32, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3247, file: !3248, line: 140, baseType: !341, size: 32, offset: 160)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3247, file: !3248, line: 149, baseType: !341, size: 32, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3247, file: !3248, line: 154, baseType: !3257, offset: 224)
!3257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1932)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1549, file: !1224, line: 1315, baseType: !340, size: 32, offset: 19968)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1549, file: !1224, line: 1316, baseType: !340, size: 32, offset: 20000)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1549, file: !1224, line: 1321, baseType: !269, size: 64, offset: 20032)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1549, file: !1224, line: 1325, baseType: !115, size: 32, offset: 20096)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1549, file: !1224, line: 1326, baseType: !115, size: 32, offset: 20128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1549, file: !1224, line: 1327, baseType: !115, size: 32, offset: 20160)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1549, file: !1224, line: 1328, baseType: !115, size: 32, offset: 20192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1549, file: !1224, line: 1329, baseType: !1002, size: 128, align: 64, offset: 20224)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1549, file: !1224, line: 1332, baseType: !3267, size: 128, offset: 20352)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3268, line: 51, size: 128, elements: !3269)
!3268 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3269 = !{!3270, !3275, !3276}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3267, file: !3268, line: 60, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3272, line: 7, size: 64, elements: !3273)
!3272 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3273 = !{!3274}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3271, file: !3272, line: 12, baseType: !1793, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3267, file: !3268, line: 63, baseType: !862, size: 8, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3267, file: !3268, line: 70, baseType: !862, size: 8, offset: 72)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1549, file: !1224, line: 1335, baseType: !2546, size: 64, offset: 20480)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1549, file: !1224, line: 1337, baseType: !3279, size: 128, offset: 20544)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3268, line: 39, size: 128, elements: !3280)
!3280 = !{!3281, !3282, !3283}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3279, file: !3268, line: 40, baseType: !2333, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3279, file: !3268, line: 42, baseType: !341, size: 32, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3279, file: !3268, line: 43, baseType: !341, size: 32, offset: 96)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1549, file: !1224, line: 1340, baseType: !3285, size: 64, offset: 20672)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1224, line: 69, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1549, file: !1224, line: 1351, baseType: !115, size: 32, offset: 20736)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1549, file: !1224, line: 1352, baseType: !115, size: 32, offset: 20768)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1549, file: !1224, line: 1354, baseType: !269, size: 64, offset: 20800)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1549, file: !1224, line: 1364, baseType: !301, size: 64, offset: 20864)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1549, file: !1224, line: 1365, baseType: !301, size: 64, offset: 20928)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1549, file: !1224, line: 1412, baseType: !269, size: 64, offset: 20992)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1549, file: !1224, line: 1453, baseType: !3294, size: 64, offset: 21056)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1224, line: 1453, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1549, file: !1224, line: 1457, baseType: !3297, size: 64, offset: 21120)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !3299)
!3299 = !{!3300, !3301, !3320, !3323, !3324, !3357, !3367}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3298, file: !74, line: 62, baseType: !73, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !74, line: 64, baseType: !3302, size: 192, offset: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3298, file: !74, line: 64, size: 192, elements: !3303)
!3303 = !{!3304, !3315}
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !3302, file: !74, line: 65, baseType: !3305, size: 192)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3302, file: !74, line: 65, size: 192, elements: !3306)
!3306 = !{!3307, !3314}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3305, file: !74, line: 66, baseType: !3308, size: 128)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3309, line: 50, size: 128, elements: !3310)
!3309 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3310 = !{!3311, !3312, !3313}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3308, file: !3309, line: 52, baseType: !269, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3308, file: !3309, line: 54, baseType: !13, size: 32, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3308, file: !3309, line: 55, baseType: !13, size: 32, offset: 96)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3305, file: !74, line: 67, baseType: !269, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, scope: !3302, file: !74, line: 70, baseType: !3316, size: 192)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3302, file: !74, line: 70, size: 192, elements: !3317)
!3317 = !{!3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3316, file: !74, line: 71, baseType: !1002, size: 128, align: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3316, file: !74, line: 72, baseType: !269, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3298, file: !74, line: 76, baseType: !3321, size: 64, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3298, file: !74, line: 77, baseType: !269, size: 64, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3298, file: !74, line: 79, baseType: !3325, size: 64, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3309, line: 25, size: 256, elements: !3327)
!3327 = !{!3328, !3334, !3338}
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3326, file: !3309, line: 26, baseType: !3329, size: 128)
!3329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3326, file: !3309, line: 26, size: 128, elements: !3330)
!3330 = !{!3331, !3333}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3329, file: !3309, line: 27, baseType: !3332, size: 128)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 128, elements: !2862)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3329, file: !3309, line: 28, baseType: !3332, size: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3326, file: !3309, line: 31, baseType: !3335, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3337)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3309, line: 23, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !3326, file: !3309, line: 33, baseType: !3339, size: 64, offset: 192)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3326, file: !3309, line: 33, size: 64, elements: !3340)
!3340 = !{!3341, !3347, !3352}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3339, file: !3309, line: 38, baseType: !3342, size: 64)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3339, file: !3309, line: 34, size: 64, elements: !3343)
!3343 = !{!3344, !3345, !3346}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3342, file: !3309, line: 35, baseType: !778, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3342, file: !3309, line: 36, baseType: !409, size: 8, offset: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3342, file: !3309, line: 37, baseType: !409, size: 8, offset: 40)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3339, file: !3309, line: 42, baseType: !3348, size: 16)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3339, file: !3309, line: 39, size: 16, elements: !3349)
!3349 = !{!3350, !3351}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3348, file: !3309, line: 40, baseType: !409, size: 8)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3348, file: !3309, line: 41, baseType: !409, size: 8, offset: 8)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3339, file: !3309, line: 46, baseType: !3353, size: 16)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3339, file: !3309, line: 43, size: 16, elements: !3354)
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3353, file: !3309, line: 44, baseType: !409, size: 8)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3353, file: !3309, line: 45, baseType: !409, size: 8, offset: 8)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3298, file: !74, line: 81, baseType: !3358, size: 64, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3359, file: !74, line: 86, baseType: !3321, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3359, file: !74, line: 87, baseType: !269, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3359, file: !74, line: 88, baseType: !269, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3359, file: !74, line: 89, baseType: !269, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3359, file: !74, line: 90, baseType: !862, size: 8, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3359, file: !74, line: 92, baseType: !3358, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3298, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1549, file: !1224, line: 1463, baseType: !3369, offset: 21184)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1224, line: 739, elements: !1069)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1549, file: !1224, line: 1470, baseType: !1002, size: 128, align: 64, offset: 21184)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1549, file: !1224, line: 1471, baseType: !1562, size: 32, offset: 21312)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1549, file: !1224, line: 1472, baseType: !115, size: 32, offset: 21344)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1549, file: !1224, line: 1474, baseType: !1548, size: 64, offset: 21376)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1549, file: !1224, line: 1475, baseType: !1022, size: 320, offset: 21440)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1549, file: !1224, line: 1478, baseType: !3376, size: 64, offset: 21760)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2186, line: 49, size: 512, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3385, !3386, !3387, !3388}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3377, file: !2186, line: 50, baseType: !3376, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3377, file: !2186, line: 51, baseType: !265, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3377, file: !2186, line: 52, baseType: !269, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3377, file: !2186, line: 53, baseType: !269, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3377, file: !2186, line: 54, baseType: !3384, size: 64, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3377, file: !2186, line: 56, baseType: !13, size: 32, offset: 320)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3377, file: !2186, line: 58, baseType: !13, size: 32, offset: 352)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3377, file: !2186, line: 59, baseType: !300, size: 64, offset: 384)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3377, file: !2186, line: 60, baseType: !2685, size: 64, offset: 448)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1549, file: !1224, line: 1482, baseType: !1562, size: 32, offset: 21824)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1549, file: !1224, line: 1489, baseType: !265, size: 64, offset: 21888)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1549, file: !1224, line: 1504, baseType: !265, size: 64, offset: 21952)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1549, file: !1224, line: 1505, baseType: !303, size: 64, offset: 22016)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1549, file: !1224, line: 1506, baseType: !301, size: 64, offset: 22080)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1549, file: !1224, line: 1507, baseType: !303, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1549, file: !1224, line: 1508, baseType: !303, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1549, file: !1224, line: 1509, baseType: !303, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1549, file: !1224, line: 1510, baseType: !1002, size: 128, align: 64, offset: 22208)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1549, file: !1224, line: 1511, baseType: !115, size: 32, offset: 22336)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1549, file: !1224, line: 1515, baseType: !3400, size: 64, offset: 22400)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1576, line: 56, size: 64, elements: !3401)
!3401 = !{!3402}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3400, file: !1576, line: 57, baseType: !1579, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1549, file: !1224, line: 1518, baseType: !3400, size: 64, offset: 22464)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1549, file: !1224, line: 1528, baseType: !1002, size: 128, align: 64, offset: 22528)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1549, file: !1224, line: 1552, baseType: !3406, size: 35328, offset: 23040)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3407, line: 430, size: 35328, elements: !3408)
!3407 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3408 = !{!3409, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3438, !3439, !3440, !3441, !3442, !3443, !3446, !3447, !3448, !3449}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3406, file: !3407, line: 432, baseType: !3410, size: 192)
!3410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3411, size: 192, elements: !448)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3412, line: 16, size: 64, elements: !3413)
!3412 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3411, file: !3412, line: 17, baseType: !416, size: 16)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3411, file: !3412, line: 18, baseType: !416, size: 16, offset: 16)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3411, file: !3412, line: 19, baseType: !416, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3411, file: !3412, line: 19, baseType: !416, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3411, file: !3412, line: 19, baseType: !416, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3411, file: !3412, line: 19, baseType: !416, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3411, file: !3412, line: 19, baseType: !416, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3411, file: !3412, line: 20, baseType: !416, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3411, file: !3412, line: 20, baseType: !416, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3411, file: !3412, line: 20, baseType: !416, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3411, file: !3412, line: 20, baseType: !416, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3411, file: !3412, line: 20, baseType: !416, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3411, file: !3412, line: 20, baseType: !416, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3406, file: !3407, line: 436, baseType: !269, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3406, file: !3407, line: 440, baseType: !266, size: 16, offset: 256)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3406, file: !3407, line: 441, baseType: !266, size: 16, offset: 272)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3406, file: !3407, line: 442, baseType: !266, size: 16, offset: 288)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3406, file: !3407, line: 443, baseType: !266, size: 16, offset: 304)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3406, file: !3407, line: 447, baseType: !269, size: 64, offset: 320)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3406, file: !3407, line: 448, baseType: !269, size: 64, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3406, file: !3407, line: 459, baseType: !3435, size: 256, offset: 448)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3436, size: 256, elements: !315)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3407, line: 428, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3406, file: !3407, line: 461, baseType: !269, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3406, file: !3407, line: 463, baseType: !269, size: 64, offset: 768)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3406, file: !3407, line: 465, baseType: !269, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3406, file: !3407, line: 466, baseType: !269, size: 64, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3406, file: !3407, line: 467, baseType: !269, size: 64, offset: 960)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3406, file: !3407, line: 473, baseType: !3444, size: 64, offset: 1024)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3407, line: 10, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3406, file: !3407, line: 480, baseType: !269, size: 64, offset: 1088)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3406, file: !3407, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3406, file: !3407, line: 491, baseType: !340, size: 32, offset: 1184)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3406, file: !3407, line: 501, baseType: !3450, size: 33792, offset: 1536)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3451, line: 448, size: 33792, elements: !3452)
!3451 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3452 = !{!3453, !3454, !3455, !3617, !3618, !3624, !3625}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3450, file: !3451, line: 461, baseType: !13, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3450, file: !3451, line: 468, baseType: !269, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3450, file: !3451, line: 476, baseType: !3456, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3451, line: 356, size: 33280, align: 512, elements: !3458)
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3457, file: !3451, line: 358, baseType: !13, size: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3457, file: !3451, line: 361, baseType: !13, size: 32, offset: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3457, file: !3451, line: 364, baseType: !301, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3457, file: !3451, line: 367, baseType: !301, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3457, file: !3451, line: 370, baseType: !301, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3457, file: !3451, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3457, file: !3451, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3457, file: !3451, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3457, file: !3451, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3457, file: !3451, line: 397, baseType: !3469, size: 32768, offset: 512)
!3469 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3451, line: 348, size: 32768, elements: !3470)
!3470 = !{!3471, !3486, !3523, !3600, !3613}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3469, file: !3451, line: 349, baseType: !3472, size: 896)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3451, line: 12, size: 896, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3485}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3472, file: !3451, line: 13, baseType: !340, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3472, file: !3451, line: 14, baseType: !340, size: 32, offset: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3472, file: !3451, line: 15, baseType: !340, size: 32, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3472, file: !3451, line: 16, baseType: !340, size: 32, offset: 96)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3472, file: !3451, line: 17, baseType: !340, size: 32, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3472, file: !3451, line: 18, baseType: !340, size: 32, offset: 160)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3472, file: !3451, line: 19, baseType: !340, size: 32, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3472, file: !3451, line: 22, baseType: !3482, size: 640, offset: 224)
!3482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 640, elements: !3483)
!3483 = !{!3484}
!3484 = !DISubrange(count: 20)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3472, file: !3451, line: 25, baseType: !340, size: 32, offset: 864)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3469, file: !3451, line: 350, baseType: !3487, size: 4096, align: 128)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3451, line: 34, size: 4096, align: 128, elements: !3488)
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3508, !3509, !3510, !3512, !3514, !3518}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3487, file: !3451, line: 35, baseType: !416, size: 16)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3487, file: !3451, line: 36, baseType: !416, size: 16, offset: 16)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3487, file: !3451, line: 37, baseType: !416, size: 16, offset: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3487, file: !3451, line: 38, baseType: !416, size: 16, offset: 48)
!3493 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !3451, line: 39, baseType: !3494, size: 128, offset: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3487, file: !3451, line: 39, size: 128, elements: !3495)
!3495 = !{!3496, !3501}
!3496 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !3451, line: 40, baseType: !3497, size: 128)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !3451, line: 40, size: 128, elements: !3498)
!3498 = !{!3499, !3500}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3497, file: !3451, line: 41, baseType: !301, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3497, file: !3451, line: 42, baseType: !301, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !3451, line: 44, baseType: !3502, size: 128)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !3451, line: 44, size: 128, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3502, file: !3451, line: 45, baseType: !340, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3502, file: !3451, line: 46, baseType: !340, size: 32, offset: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3502, file: !3451, line: 47, baseType: !340, size: 32, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3502, file: !3451, line: 48, baseType: !340, size: 32, offset: 96)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3487, file: !3451, line: 51, baseType: !340, size: 32, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3487, file: !3451, line: 52, baseType: !340, size: 32, offset: 224)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3487, file: !3451, line: 55, baseType: !3511, size: 1024, offset: 256)
!3511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 1024, elements: !603)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3487, file: !3451, line: 58, baseType: !3513, size: 2048, offset: 1280)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2048, elements: !452)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3487, file: !3451, line: 60, baseType: !3515, size: 384, offset: 3328)
!3515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !3516)
!3516 = !{!3517}
!3517 = !DISubrange(count: 12)
!3518 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !3451, line: 62, baseType: !3519, size: 384, offset: 3712)
!3519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3487, file: !3451, line: 62, size: 384, elements: !3520)
!3520 = !{!3521, !3522}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3519, file: !3451, line: 63, baseType: !3515, size: 384)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3519, file: !3451, line: 64, baseType: !3515, size: 384)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3469, file: !3451, line: 351, baseType: !3524, size: 1088)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3451, line: 79, size: 1088, elements: !3525)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3599}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3524, file: !3451, line: 80, baseType: !340, size: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3524, file: !3451, line: 81, baseType: !340, size: 32, offset: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3524, file: !3451, line: 82, baseType: !340, size: 32, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3524, file: !3451, line: 83, baseType: !340, size: 32, offset: 96)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3524, file: !3451, line: 84, baseType: !340, size: 32, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3524, file: !3451, line: 85, baseType: !340, size: 32, offset: 160)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3524, file: !3451, line: 86, baseType: !340, size: 32, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3524, file: !3451, line: 88, baseType: !3482, size: 640, offset: 224)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3524, file: !3451, line: 89, baseType: !409, size: 8, offset: 864)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3524, file: !3451, line: 90, baseType: !409, size: 8, offset: 872)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3524, file: !3451, line: 91, baseType: !409, size: 8, offset: 880)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3524, file: !3451, line: 92, baseType: !409, size: 8, offset: 888)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3524, file: !3451, line: 93, baseType: !409, size: 8, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3524, file: !3451, line: 94, baseType: !409, size: 8, offset: 904)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3524, file: !3451, line: 95, baseType: !3541, size: 64, offset: 960)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3543, line: 11, size: 128, elements: !3544)
!3543 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3544 = !{!3545, !3546}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3542, file: !3543, line: 12, baseType: !483, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3542, file: !3543, line: 13, baseType: !3547, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3549, line: 103, size: 1344, elements: !3550)
!3549 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3579, !3580, !3581}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3548, file: !3549, line: 109, baseType: !269, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3548, file: !3549, line: 110, baseType: !269, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3548, file: !3549, line: 111, baseType: !269, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3548, file: !3549, line: 112, baseType: !269, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3548, file: !3549, line: 113, baseType: !269, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3548, file: !3549, line: 114, baseType: !269, size: 64, offset: 320)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3548, file: !3549, line: 117, baseType: !269, size: 64, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3548, file: !3549, line: 118, baseType: !269, size: 64, offset: 448)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3548, file: !3549, line: 119, baseType: !269, size: 64, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3548, file: !3549, line: 120, baseType: !269, size: 64, offset: 576)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3548, file: !3549, line: 121, baseType: !269, size: 64, offset: 640)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3548, file: !3549, line: 122, baseType: !269, size: 64, offset: 704)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3548, file: !3549, line: 123, baseType: !269, size: 64, offset: 768)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3548, file: !3549, line: 124, baseType: !269, size: 64, offset: 832)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3548, file: !3549, line: 125, baseType: !269, size: 64, offset: 896)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3548, file: !3549, line: 139, baseType: !269, size: 64, offset: 960)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3548, file: !3549, line: 142, baseType: !269, size: 64, offset: 1024)
!3568 = !DIDerivedType(tag: DW_TAG_member, scope: !3548, file: !3549, line: 144, baseType: !3569, size: 64, offset: 1088)
!3569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3548, file: !3549, line: 144, size: 64, elements: !3570)
!3570 = !{!3571, !3572, !3573}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3569, file: !3549, line: 146, baseType: !416, size: 16)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3569, file: !3549, line: 148, baseType: !301, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3569, file: !3549, line: 150, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3549, line: 59, size: 64, elements: !3575)
!3575 = !{!3576, !3577, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3574, file: !3549, line: 61, baseType: !301, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3574, file: !3549, line: 63, baseType: !301, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3574, file: !3549, line: 65, baseType: !301, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3548, file: !3549, line: 153, baseType: !269, size: 64, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3548, file: !3549, line: 154, baseType: !269, size: 64, offset: 1216)
!3581 = !DIDerivedType(tag: DW_TAG_member, scope: !3548, file: !3549, line: 156, baseType: !3582, size: 64, offset: 1280)
!3582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3548, file: !3549, line: 156, size: 64, elements: !3583)
!3583 = !{!3584, !3585, !3586}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3582, file: !3549, line: 158, baseType: !416, size: 16)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3582, file: !3549, line: 160, baseType: !301, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3582, file: !3549, line: 162, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3549, line: 69, size: 64, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3587, file: !3549, line: 71, baseType: !301, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3587, file: !3549, line: 73, baseType: !301, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3587, file: !3549, line: 75, baseType: !301, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3587, file: !3549, line: 77, baseType: !301, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3587, file: !3549, line: 80, baseType: !301, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3587, file: !3549, line: 83, baseType: !301, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3587, file: !3549, line: 86, baseType: !301, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3587, file: !3549, line: 88, baseType: !301, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3587, file: !3549, line: 93, baseType: !301, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3587, file: !3549, line: 100, baseType: !301, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3524, file: !3451, line: 96, baseType: !340, size: 32, offset: 1024)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3469, file: !3451, line: 352, baseType: !3601, size: 4608, align: 512)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3451, line: 333, size: 4608, align: 512, elements: !3602)
!3602 = !{!3603, !3604, !3611}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3601, file: !3451, line: 334, baseType: !3487, size: 4096, align: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3601, file: !3451, line: 335, baseType: !3605, size: 512, offset: 4096)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3451, line: 312, size: 512, elements: !3606)
!3606 = !{!3607, !3608, !3609}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3605, file: !3451, line: 313, baseType: !301, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3605, file: !3451, line: 314, baseType: !301, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3605, file: !3451, line: 315, baseType: !3610, size: 384, offset: 128)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 384, elements: !2015)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3601, file: !3451, line: 336, baseType: !3612, offset: 4608)
!3612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, elements: !1932)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3469, file: !3451, line: 353, baseType: !3614, size: 32768)
!3614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 32768, elements: !3615)
!3615 = !{!3616}
!3616 = !DISubrange(count: 4096)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3450, file: !3451, line: 484, baseType: !3456, size: 64, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3450, file: !3451, line: 491, baseType: !3619, size: 128, offset: 256)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3451, line: 404, size: 128, elements: !3620)
!3620 = !{!3621, !3622, !3623}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3619, file: !3451, line: 424, baseType: !301, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3619, file: !3451, line: 432, baseType: !13, size: 32, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3619, file: !3451, line: 440, baseType: !13, size: 32, offset: 96)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3450, file: !3451, line: 498, baseType: !3619, size: 128, offset: 384)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3450, file: !3451, line: 508, baseType: !3457, size: 33280, align: 512, offset: 512)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1525, file: !1526, line: 16, baseType: !1535, size: 192, offset: 512)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1525, file: !1526, line: 17, baseType: !401, size: 32, offset: 704)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !673, file: !20, line: 1240, baseType: !265, size: 64, offset: 6912)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !673, file: !20, line: 1243, baseType: !340, size: 32, offset: 6976)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !673, file: !20, line: 1245, baseType: !1282, size: 64, offset: 7040)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !673, file: !20, line: 1246, baseType: !1282, size: 64, offset: 7104)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !673, file: !20, line: 1248, baseType: !341, size: 32, offset: 7168)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !673, file: !20, line: 1249, baseType: !3634, size: 64, offset: 7232)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !673, file: !20, line: 1252, baseType: !3637, size: 256, offset: 7296)
!3637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !603)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !673, file: !20, line: 1253, baseType: !3639, size: 128, offset: 7552)
!3639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3640, line: 21, baseType: !3641)
!3640 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3640, line: 19, size: 128, elements: !3642)
!3642 = !{!3643}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3641, file: !3640, line: 20, baseType: !3644, size: 128)
!3644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 128, elements: !2862)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !673, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !673, file: !20, line: 1261, baseType: !782, size: 256, offset: 7744)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !673, file: !20, line: 1267, baseType: !308, size: 64, offset: 8000)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !673, file: !20, line: 1269, baseType: !619, size: 64, offset: 8064)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !673, file: !20, line: 1271, baseType: !3650, size: 448, offset: 8128)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1291, line: 63, size: 448, elements: !3651)
!3651 = !{!3652, !3657, !3658, !3659, !3660, !3661, !3662}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3650, file: !1291, line: 64, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!269, !3656, !1289}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3650, file: !1291, line: 66, baseType: !3653, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3650, file: !1291, line: 69, baseType: !483, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3650, file: !1291, line: 70, baseType: !115, size: 32, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3650, file: !1291, line: 71, baseType: !13, size: 32, offset: 224)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3650, file: !1291, line: 74, baseType: !277, size: 128, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3650, file: !1291, line: 85, baseType: !3663, size: 64, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !673, file: !20, line: 1274, baseType: !786, size: 64, offset: 8576)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !673, file: !20, line: 1280, baseType: !786, size: 64, offset: 8640)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !673, file: !20, line: 1283, baseType: !115, size: 32, offset: 8704)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !673, file: !20, line: 1286, baseType: !2596, size: 32, offset: 8736)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !673, file: !20, line: 1289, baseType: !1102, size: 64, offset: 8768)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !673, file: !20, line: 1290, baseType: !1150, size: 64, offset: 8832)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !673, file: !20, line: 1297, baseType: !2109, size: 64, offset: 8896)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !673, file: !20, line: 1304, baseType: !3672, size: 64, offset: 8960)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3673, line: 49, size: 64, elements: !3674)
!3673 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3674 = !{!3675}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3672, file: !3673, line: 50, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3673, line: 41, size: 512, align: 512, elements: !3678)
!3678 = !{!3679, !3680, !3685}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3677, file: !3673, line: 43, baseType: !381, size: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3677, file: !3673, line: 45, baseType: !3681, size: 192, offset: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3673, line: 29, size: 192, elements: !3682)
!3682 = !{!3683, !3684}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3681, file: !3673, line: 30, baseType: !277, size: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3681, file: !3673, line: 32, baseType: !483, size: 64, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3677, file: !3673, line: 46, baseType: !483, size: 64, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !673, file: !20, line: 1305, baseType: !3672, size: 64, offset: 9024)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !673, file: !20, line: 1306, baseType: !1002, size: 128, align: 64, offset: 9088)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !673, file: !20, line: 1307, baseType: !1040, size: 256, offset: 9216)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !673, file: !20, line: 1309, baseType: !782, size: 256, offset: 9472)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !673, file: !20, line: 1314, baseType: !115, size: 32, offset: 9728)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !673, file: !20, line: 1317, baseType: !381, size: 32, align: 512, offset: 10240)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !673, file: !20, line: 1318, baseType: !277, size: 128, offset: 10304)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !673, file: !20, line: 1320, baseType: !381, size: 32, offset: 10432)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !673, file: !20, line: 1321, baseType: !277, size: 128, offset: 10496)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !667, file: !668, line: 73, baseType: !115, size: 32, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !667, file: !668, line: 74, baseType: !3697, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1956, line: 42, flags: DIFlagFwdDecl)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !621, file: !563, line: 141, baseType: !3701, size: 64, offset: 704)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!115, !1352, !862}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !621, file: !563, line: 142, baseType: !3705, size: 64, offset: 768)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!561, !561, !3708}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !562, file: !563, line: 96, baseType: !672, size: 64, offset: 832)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !562, file: !563, line: 97, baseType: !269, size: 64, offset: 896)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !562, file: !563, line: 98, baseType: !265, size: 64, offset: 960)
!3713 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !563, line: 100, baseType: !3714, size: 128, offset: 1024)
!3714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !563, line: 100, size: 128, elements: !3715)
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3714, file: !563, line: 101, baseType: !277, size: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3714, file: !563, line: 102, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !562, file: !563, line: 104, baseType: !277, size: 128, offset: 1152)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !562, file: !563, line: 105, baseType: !277, size: 128, offset: 1280)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !562, file: !563, line: 113, baseType: !3722, size: 128, offset: 1408)
!3722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !563, line: 109, size: 128, elements: !3723)
!3723 = !{!3724, !3725, !3726}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3722, file: !563, line: 110, baseType: !1026, size: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3722, file: !563, line: 111, baseType: !577, size: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3722, file: !563, line: 112, baseType: !1002, size: 128, align: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !555, file: !20, line: 1968, baseType: !3728, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!308, !561, !526, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3733, line: 10, size: 128, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3734 = !{!3735, !3736}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3732, file: !3733, line: 11, baseType: !825, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3732, file: !3733, line: 12, baseType: !265, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !555, file: !20, line: 1969, baseType: !3738, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!115, !3697, !526, !115}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !555, file: !20, line: 1970, baseType: !3742, size: 64, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!549, !526, !115, !862}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !555, file: !20, line: 1972, baseType: !3746, size: 64, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!115, !561, !447, !115}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !555, file: !20, line: 1974, baseType: !3750, size: 64, offset: 320)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!115, !3697, !526, !561, !489, !862}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !555, file: !20, line: 1976, baseType: !3754, size: 64, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!115, !561, !526, !561}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !555, file: !20, line: 1977, baseType: !3758, size: 64, offset: 448)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!115, !526, !561}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !555, file: !20, line: 1978, baseType: !3762, size: 64, offset: 512)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!115, !3697, !526, !561, !308}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !555, file: !20, line: 1980, baseType: !3766, size: 64, offset: 576)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!115, !3697, !526, !561, !489}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !555, file: !20, line: 1982, baseType: !3758, size: 64, offset: 640)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !555, file: !20, line: 1983, baseType: !3771, size: 64, offset: 704)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!115, !3697, !526, !561, !489, !677}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !555, file: !20, line: 1985, baseType: !3775, size: 64, offset: 768)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!115, !3697, !526, !561, !526, !561, !13}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !555, file: !20, line: 1987, baseType: !3779, size: 64, offset: 832)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!115, !3697, !561, !3782}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3784)
!3784 = !{!3785, !3786, !3787, !3797, !3806, !3807, !3812, !3813, !3814}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3783, file: !20, line: 227, baseType: !13, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3783, file: !20, line: 228, baseType: !489, size: 16, offset: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, scope: !3783, file: !20, line: 241, baseType: !3788, size: 32, offset: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3783, file: !20, line: 241, size: 32, elements: !3789)
!3789 = !{!3790, !3791}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3788, file: !20, line: 242, baseType: !532, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3788, file: !20, line: 243, baseType: !3792, size: 32)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3793, line: 16, baseType: !3794)
!3793 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3793, line: 14, size: 32, elements: !3795)
!3795 = !{!3796}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3794, file: !3793, line: 15, baseType: !537, size: 32)
!3797 = !DIDerivedType(tag: DW_TAG_member, scope: !3783, file: !20, line: 245, baseType: !3798, size: 32, offset: 96)
!3798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3783, file: !20, line: 245, size: 32, elements: !3799)
!3799 = !{!3800, !3801}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3798, file: !20, line: 246, baseType: !541, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3798, file: !20, line: 247, baseType: !3802, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3793, line: 20, baseType: !3803)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3793, line: 18, size: 32, elements: !3804)
!3804 = !{!3805}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3803, file: !3793, line: 19, baseType: !545, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3783, file: !20, line: 249, baseType: !682, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3783, file: !20, line: 250, baseType: !3808, size: 128, offset: 192)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1283, line: 13, size: 128, elements: !3809)
!3809 = !{!3810, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3808, file: !1283, line: 14, baseType: !1282, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3808, file: !1283, line: 15, baseType: !483, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3783, file: !20, line: 251, baseType: !3808, size: 128, offset: 320)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3783, file: !20, line: 252, baseType: !3808, size: 128, offset: 448)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3783, file: !20, line: 259, baseType: !1872, size: 64, offset: 576)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !555, file: !20, line: 1988, baseType: !3816, size: 64, offset: 896)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!115, !3697, !1352, !3819, !340, !13}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3821, line: 22, size: 1280, elements: !3822)
!3821 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3820, file: !3821, line: 23, baseType: !340, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3820, file: !3821, line: 24, baseType: !489, size: 16, offset: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3820, file: !3821, line: 25, baseType: !13, size: 32, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3820, file: !3821, line: 26, baseType: !1994, size: 32, offset: 96)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3820, file: !3821, line: 27, baseType: !301, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3820, file: !3821, line: 28, baseType: !301, size: 64, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3820, file: !3821, line: 41, baseType: !301, size: 64, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3820, file: !3821, line: 42, baseType: !677, size: 32, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3820, file: !3821, line: 43, baseType: !677, size: 32, offset: 352)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3820, file: !3821, line: 44, baseType: !532, size: 32, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3820, file: !3821, line: 45, baseType: !541, size: 32, offset: 416)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3820, file: !3821, line: 46, baseType: !682, size: 64, offset: 448)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3820, file: !3821, line: 47, baseType: !3808, size: 128, offset: 512)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3820, file: !3821, line: 48, baseType: !3808, size: 128, offset: 640)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3820, file: !3821, line: 49, baseType: !3808, size: 128, offset: 768)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3820, file: !3821, line: 50, baseType: !3808, size: 128, offset: 896)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3820, file: !3821, line: 51, baseType: !301, size: 64, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3820, file: !3821, line: 52, baseType: !301, size: 64, offset: 1088)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3820, file: !3821, line: 53, baseType: !340, size: 32, offset: 1152)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3820, file: !3821, line: 54, baseType: !340, size: 32, offset: 1184)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3820, file: !3821, line: 55, baseType: !301, size: 64, offset: 1216)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !555, file: !20, line: 1990, baseType: !3845, size: 64, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!479, !561, !447, !494}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !555, file: !20, line: 1991, baseType: !3849, size: 64, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!115, !526, !3852, !301, !301}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !555, file: !20, line: 1993, baseType: !3855, size: 64, offset: 1088)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!115, !526, !115}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !555, file: !20, line: 1994, baseType: !3859, size: 64, offset: 1152)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!115, !526, !561, !1872, !13, !489}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !555, file: !20, line: 1997, baseType: !3863, size: 64, offset: 1216)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!115, !3697, !526, !1872, !489}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !555, file: !20, line: 1999, baseType: !3867, size: 64, offset: 1280)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!549, !3697, !561, !115}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !555, file: !20, line: 2001, baseType: !3871, size: 64, offset: 1344)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!115, !3697, !561, !549, !115}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !555, file: !20, line: 2003, baseType: !3875, size: 64, offset: 1408)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!115, !3697, !561, !3878}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !555, file: !20, line: 2005, baseType: !3881, size: 64, offset: 1472)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!115, !561, !3878}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !555, file: !20, line: 2006, baseType: !3885, size: 64, offset: 1536)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!3888, !526}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3890)
!3890 = !{!3891, !3898}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3889, file: !20, line: 3193, baseType: !3892, size: 128)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3893, line: 296, size: 128, elements: !3894)
!3893 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3894 = !{!3895, !3896, !3897}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3892, file: !3893, line: 297, baseType: !381, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3892, file: !3893, line: 299, baseType: !1294, size: 32, offset: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3892, file: !3893, line: 300, baseType: !265, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3889, file: !20, line: 3194, baseType: !340, size: 32, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !527, file: !20, line: 655, baseType: !672, size: 64, offset: 448)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !527, file: !20, line: 656, baseType: !522, size: 64, offset: 512)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !527, file: !20, line: 659, baseType: !265, size: 64, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !527, file: !20, line: 663, baseType: !269, size: 64, offset: 640)
!3903 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !20, line: 671, baseType: !3904, size: 32, offset: 704)
!3904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !20, line: 671, size: 32, elements: !3905)
!3905 = !{!3906, !3908}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3904, file: !20, line: 672, baseType: !3907, size: 32)
!3907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3904, file: !20, line: 673, baseType: !13, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !527, file: !20, line: 675, baseType: !677, size: 32, offset: 736)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !527, file: !20, line: 676, baseType: !682, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !527, file: !20, line: 677, baseType: !3808, size: 128, offset: 832)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !527, file: !20, line: 678, baseType: !3808, size: 128, offset: 960)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !527, file: !20, line: 679, baseType: !3808, size: 128, offset: 1088)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !527, file: !20, line: 680, baseType: !381, size: 32, offset: 1216)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !527, file: !20, line: 681, baseType: !266, size: 16, offset: 1248)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !527, file: !20, line: 682, baseType: !409, size: 8, offset: 1264)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !527, file: !20, line: 683, baseType: !409, size: 8, offset: 1272)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !527, file: !20, line: 684, baseType: !1430, size: 64, offset: 1280)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !527, file: !20, line: 691, baseType: !269, size: 64, offset: 1344)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !527, file: !20, line: 692, baseType: !1442, size: 320, offset: 1408)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !527, file: !20, line: 694, baseType: !269, size: 64, offset: 1728)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !527, file: !20, line: 695, baseType: !269, size: 64, offset: 1792)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !527, file: !20, line: 697, baseType: !1026, size: 128, offset: 1856)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !527, file: !20, line: 698, baseType: !277, size: 128, offset: 1984)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !527, file: !20, line: 707, baseType: !277, size: 128, offset: 2112)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !527, file: !20, line: 708, baseType: !277, size: 128, offset: 2240)
!3927 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !20, line: 709, baseType: !3928, size: 128, offset: 2368)
!3928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !20, line: 709, size: 128, elements: !3929)
!3929 = !{!3930, !3931}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3928, file: !20, line: 710, baseType: !1150, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3928, file: !20, line: 711, baseType: !1002, size: 128, align: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !527, file: !20, line: 713, baseType: !788, size: 64, offset: 2496)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !527, file: !20, line: 714, baseType: !788, size: 64, offset: 2560)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !527, file: !20, line: 715, baseType: !401, size: 32, offset: 2624)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !527, file: !20, line: 716, baseType: !401, size: 32, offset: 2656)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !527, file: !20, line: 717, baseType: !401, size: 32, offset: 2688)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !527, file: !20, line: 719, baseType: !401, size: 32, offset: 2720)
!3938 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !20, line: 721, baseType: !3939, size: 64, offset: 2752)
!3939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !20, line: 721, size: 64, elements: !3940)
!3940 = !{!3941, !3942}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3939, file: !20, line: 722, baseType: !2140, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3939, file: !20, line: 723, baseType: !1173, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !527, file: !20, line: 725, baseType: !3944, size: 64, offset: 2816)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !527, file: !20, line: 726, baseType: !523, size: 1536, align: 64, offset: 2880)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !527, file: !20, line: 727, baseType: !277, size: 128, offset: 4416)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !20, line: 728, baseType: !3949, size: 64, offset: 4544)
!3949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !20, line: 728, size: 64, elements: !3950)
!3950 = !{!3951, !3952, !3955, !3956}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3949, file: !20, line: 729, baseType: !2546, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3949, file: !20, line: 730, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3949, file: !20, line: 731, baseType: !447, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3949, file: !20, line: 732, baseType: !13, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !527, file: !20, line: 735, baseType: !341, size: 32, offset: 4608)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !527, file: !20, line: 738, baseType: !341, size: 32, offset: 4640)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !527, file: !20, line: 739, baseType: !3634, size: 64, offset: 4672)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !527, file: !20, line: 750, baseType: !265, size: 64, offset: 4736)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !523, file: !20, line: 474, baseType: !3892, size: 128, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !523, file: !20, line: 475, baseType: !1442, size: 320, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !523, file: !20, line: 476, baseType: !1294, size: 32, offset: 512)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !523, file: !20, line: 477, baseType: !401, size: 32, offset: 544)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !523, file: !20, line: 482, baseType: !1728, size: 128, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !523, file: !20, line: 483, baseType: !269, size: 64, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !523, file: !20, line: 484, baseType: !269, size: 64, offset: 768)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !523, file: !20, line: 485, baseType: !3969, size: 64, offset: 832)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3971)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !3972)
!3972 = !{!3973, !3977, !4047, !4051, !4055, !4061, !4065, !4069, !4074, !4078, !4082, !4086, !4087, !4091, !4095, !4099, !4104, !4108, !4115, !4116}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3971, file: !20, line: 405, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!115, !2333, !1185}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3971, file: !20, line: 406, baseType: !3978, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!115, !1872, !3981}
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !3983)
!3983 = !{!3984, !4014, !4028}
!3984 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !44, line: 295, baseType: !3985, size: 512)
!3985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3982, file: !44, line: 295, size: 512, elements: !3986)
!3986 = !{!3987, !4013}
!3987 = !DIDerivedType(tag: DW_TAG_member, scope: !3985, file: !44, line: 296, baseType: !3988, size: 448)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3985, file: !44, line: 296, size: 448, elements: !3989)
!3989 = !{!3990, !3991, !4000, !4001, !4002, !4011, !4012}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3988, file: !44, line: 298, baseType: !269, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, scope: !3988, file: !44, line: 299, baseType: !3992, size: 128, offset: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3988, file: !44, line: 299, size: 128, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3992, file: !44, line: 300, baseType: !277, size: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, scope: !3992, file: !44, line: 302, baseType: !3996, size: 128)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3992, file: !44, line: 302, size: 128, elements: !3997)
!3997 = !{!3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3996, file: !44, line: 303, baseType: !265, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3996, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3988, file: !44, line: 310, baseType: !522, size: 64, offset: 192)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3988, file: !44, line: 311, baseType: !269, size: 64, offset: 256)
!4002 = !DIDerivedType(tag: DW_TAG_member, scope: !3988, file: !44, line: 312, baseType: !4003, size: 64, offset: 320)
!4003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3988, file: !44, line: 312, size: 64, elements: !4004)
!4004 = !{!4005, !4006}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4003, file: !44, line: 313, baseType: !265, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4003, file: !44, line: 314, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !4008)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !4009)
!4009 = !{!4010}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4008, file: !44, line: 256, baseType: !269, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3988, file: !44, line: 316, baseType: !401, size: 32, offset: 384)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3988, file: !44, line: 317, baseType: !401, size: 32, offset: 416)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3985, file: !44, line: 323, baseType: !2334, size: 512, align: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !44, line: 325, baseType: !4015, size: 512, offset: 512)
!4015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3982, file: !44, line: 325, size: 512, elements: !4016)
!4016 = !{!4017, !4027}
!4017 = !DIDerivedType(tag: DW_TAG_member, scope: !4015, file: !44, line: 326, baseType: !4018, size: 320)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4015, file: !44, line: 326, size: 320, elements: !4019)
!4019 = !{!4020, !4021, !4022, !4023, !4024, !4025, !4026}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4018, file: !44, line: 327, baseType: !269, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4018, file: !44, line: 328, baseType: !269, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4018, file: !44, line: 329, baseType: !269, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4018, file: !44, line: 331, baseType: !401, size: 32, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4018, file: !44, line: 332, baseType: !401, size: 32, offset: 224)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4018, file: !44, line: 333, baseType: !401, size: 32, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4018, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4015, file: !44, line: 339, baseType: !2334, size: 512, align: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !44, line: 341, baseType: !4029, size: 512, offset: 1024)
!4029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3982, file: !44, line: 341, size: 512, elements: !4030)
!4030 = !{!4031, !4040, !4046}
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !4029, file: !44, line: 342, baseType: !4032, size: 384)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4029, file: !44, line: 342, size: 384, elements: !4033)
!4033 = !{!4034, !4035, !4036, !4037, !4038, !4039}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4032, file: !44, line: 343, baseType: !269, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4032, file: !44, line: 344, baseType: !269, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4032, file: !44, line: 346, baseType: !265, size: 64, offset: 128)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4032, file: !44, line: 347, baseType: !265, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4032, file: !44, line: 348, baseType: !265, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4032, file: !44, line: 349, baseType: !265, size: 64, offset: 320)
!4040 = !DIDerivedType(tag: DW_TAG_member, scope: !4029, file: !44, line: 352, baseType: !4041, size: 256)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4029, file: !44, line: 352, size: 256, elements: !4042)
!4042 = !{!4043, !4044, !4045}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4041, file: !44, line: 353, baseType: !269, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4041, file: !44, line: 354, baseType: !269, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4041, file: !44, line: 356, baseType: !277, size: 128, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4029, file: !44, line: 359, baseType: !2334, size: 512, align: 128)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3971, file: !20, line: 409, baseType: !4048, size: 64, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!115, !522, !1185}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3971, file: !20, line: 412, baseType: !4052, size: 64, offset: 192)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!862, !522, !3981}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3971, file: !20, line: 414, baseType: !4056, size: 64, offset: 256)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !4059}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3971, file: !20, line: 416, baseType: !4062, size: 64, offset: 320)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!115, !1872, !522, !682, !13, !3384, !2561}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3971, file: !20, line: 419, baseType: !4066, size: 64, offset: 384)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!115, !1872, !522, !682, !13, !13, !2333, !265}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3971, file: !20, line: 424, baseType: !4070, size: 64, offset: 448)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!4073, !522, !4073}
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !268, line: 131, baseType: !301)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3971, file: !20, line: 425, baseType: !4075, size: 64, offset: 512)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !3981, !494, !494}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3971, file: !20, line: 426, baseType: !4079, size: 64, offset: 576)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!862, !3981, !1294}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3971, file: !20, line: 427, baseType: !4083, size: 64, offset: 640)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{null, !3981}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3971, file: !20, line: 428, baseType: !2159, size: 64, offset: 704)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3971, file: !20, line: 433, baseType: !4088, size: 64, offset: 768)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!115, !522, !3981, !3981, !80}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3971, file: !20, line: 435, baseType: !4092, size: 64, offset: 832)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!115, !3981}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3971, file: !20, line: 436, baseType: !4096, size: 64, offset: 896)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!862, !3981, !494, !494}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3971, file: !20, line: 438, baseType: !4100, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{null, !3981, !4103, !4103}
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3971, file: !20, line: 439, baseType: !4105, size: 64, offset: 1024)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!115, !522, !2333}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3971, file: !20, line: 442, baseType: !4109, size: 64, offset: 1088)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!115, !4112, !1872, !4114}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3971, file: !20, line: 444, baseType: !2553, size: 64, offset: 1152)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3971, file: !20, line: 445, baseType: !4117, size: 64, offset: 1216)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!115, !2162, !2184}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !20, line: 486, baseType: !269, size: 64, offset: 896)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !523, file: !20, line: 487, baseType: !1442, size: 320, offset: 960)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !523, file: !20, line: 488, baseType: !2596, size: 32, offset: 1280)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !523, file: !20, line: 489, baseType: !381, size: 32, offset: 1312)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !523, file: !20, line: 490, baseType: !277, size: 128, offset: 1344)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !523, file: !20, line: 491, baseType: !265, size: 64, offset: 1472)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !513, file: !473, line: 180, baseType: !4127, size: 64, offset: 320)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!479, !1872, !374, !512, !447, !682, !494}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !513, file: !473, line: 182, baseType: !4127, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !513, file: !473, line: 184, baseType: !4132, size: 64, offset: 448)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!115, !1872, !374, !512, !2224}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !501, file: !473, line: 90, baseType: !4136, size: 64, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !501, file: !473, line: 91, baseType: !4138, size: 64, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !463, file: !369, line: 120, baseType: !4140, size: 64, offset: 192)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!4143, !430}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4145)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !4146)
!4146 = !{!4147, !4148, !4152, !4156, !4162, !4166}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4145, file: !88, line: 40, baseType: !87, size: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4145, file: !88, line: 41, baseType: !4149, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!862}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4145, file: !88, line: 42, baseType: !4153, size: 64, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!265}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4145, file: !88, line: 43, baseType: !4157, size: 64, offset: 192)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!2685, !4160}
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4145, file: !88, line: 44, baseType: !4163, size: 64, offset: 256)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!2685}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4145, file: !88, line: 45, baseType: !825, size: 64, offset: 320)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !463, file: !369, line: 121, baseType: !4168, size: 64, offset: 256)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!2685, !430}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !463, file: !369, line: 122, baseType: !4172, size: 64, offset: 320)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !430, !4175, !4176}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !368, file: !369, line: 70, baseType: !4178, size: 64, offset: 384)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !697, line: 190, size: 1152, elements: !4180)
!4180 = !{!4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4272, !4273, !4274, !4275, !4276, !4279}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4179, file: !697, line: 191, baseType: !401, size: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4179, file: !697, line: 192, baseType: !401, size: 32, offset: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4179, file: !697, line: 202, baseType: !4178, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4179, file: !697, line: 203, baseType: !308, size: 64, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4179, file: !697, line: 205, baseType: !894, size: 192, align: 64, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4179, file: !697, line: 207, baseType: !2685, size: 64, offset: 384)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4179, file: !697, line: 208, baseType: !13, size: 32, offset: 448)
!4188 = !DIDerivedType(tag: DW_TAG_member, scope: !4179, file: !697, line: 209, baseType: !4189, size: 256, offset: 512)
!4189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4179, file: !697, line: 209, size: 256, elements: !4190)
!4190 = !{!4191, !4200, !4204}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4189, file: !697, line: 210, baseType: !4192, size: 256)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !697, line: 153, size: 256, elements: !4193)
!4193 = !{!4194, !4195, !4196, !4199}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4192, file: !697, line: 154, baseType: !269, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4192, file: !697, line: 156, baseType: !1731, size: 64, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4192, file: !697, line: 162, baseType: !4197, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !697, line: 162, flags: DIFlagFwdDecl)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4192, file: !697, line: 167, baseType: !269, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4189, file: !697, line: 211, baseType: !4201, size: 64)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !697, line: 170, size: 64, elements: !4202)
!4202 = !{!4203}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4201, file: !697, line: 171, baseType: !4178, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4189, file: !697, line: 212, baseType: !4205, size: 256)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !697, line: 174, size: 256, elements: !4206)
!4206 = !{!4207, !4267, !4270, !4271}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4205, file: !697, line: 175, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4210)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !697, line: 271, size: 768, elements: !4211)
!4211 = !{!4212, !4232, !4236, !4240, !4244, !4248, !4252, !4256, !4257, !4258, !4259, !4263}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4210, file: !697, line: 276, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!115, !4216}
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !697, line: 251, size: 1216, elements: !4218)
!4218 = !{!4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4217, file: !697, line: 253, baseType: !4178, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4217, file: !697, line: 254, baseType: !1872, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4217, file: !697, line: 255, baseType: !1222, size: 64, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4217, file: !697, line: 256, baseType: !265, size: 64, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4217, file: !697, line: 259, baseType: !782, size: 256, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4217, file: !697, line: 260, baseType: !782, size: 256, offset: 512)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4217, file: !697, line: 261, baseType: !115, size: 32, offset: 768)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4217, file: !697, line: 262, baseType: !277, size: 128, offset: 832)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4217, file: !697, line: 263, baseType: !447, size: 64, offset: 960)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4217, file: !697, line: 265, baseType: !494, size: 64, offset: 1024)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4217, file: !697, line: 266, baseType: !862, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4217, file: !697, line: 267, baseType: !862, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4217, file: !697, line: 268, baseType: !2269, size: 64, offset: 1152)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4210, file: !697, line: 277, baseType: !4233, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{null, !4216}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4210, file: !697, line: 290, baseType: !4237, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!115, !1222, !265}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4210, file: !697, line: 292, baseType: !4241, size: 64, offset: 192)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!265, !1222, !2153}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4210, file: !697, line: 293, baseType: !4245, size: 64, offset: 256)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!265, !1222, !265, !2153}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4210, file: !697, line: 294, baseType: !4249, size: 64, offset: 320)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !1222, !265}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4210, file: !697, line: 296, baseType: !4253, size: 64, offset: 384)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!479, !4216, !447, !494, !682}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4210, file: !697, line: 306, baseType: !494, size: 64, offset: 448)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4210, file: !697, line: 313, baseType: !862, size: 8, offset: 512)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4210, file: !697, line: 314, baseType: !4253, size: 64, offset: 576)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4210, file: !697, line: 317, baseType: !4260, size: 64, offset: 640)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!2211, !4216, !2213}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4210, file: !697, line: 320, baseType: !4264, size: 64, offset: 704)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!115, !4216, !2224}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4205, file: !697, line: 176, baseType: !4268, size: 64, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !697, line: 35, flags: DIFlagFwdDecl)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4205, file: !697, line: 177, baseType: !682, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4205, file: !697, line: 178, baseType: !4178, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4179, file: !697, line: 215, baseType: !265, size: 64, offset: 768)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4179, file: !697, line: 221, baseType: !301, size: 64, offset: 832)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4179, file: !697, line: 223, baseType: !266, size: 16, offset: 896)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4179, file: !697, line: 224, baseType: !489, size: 16, offset: 912)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4179, file: !697, line: 225, baseType: !4277, size: 64, offset: 960)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !697, line: 36, flags: DIFlagFwdDecl)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4179, file: !697, line: 227, baseType: !1002, size: 128, align: 64, offset: 1024)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !368, file: !369, line: 71, baseType: !4281, size: 32, offset: 448)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4282, line: 19, size: 32, elements: !4283)
!4282 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4283 = !{!4284}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4281, file: !4282, line: 20, baseType: !1562, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !368, file: !369, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !368, file: !369, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !368, file: !369, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !368, file: !369, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !368, file: !369, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !365, file: !100, line: 707, baseType: !364, size: 64, offset: 512)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !365, file: !100, line: 709, baseType: !4292, size: 64, offset: 576)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !365, file: !100, line: 711, baseType: !308, size: 64, offset: 640)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !365, file: !100, line: 712, baseType: !4296, size: 64, offset: 704)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4298)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4299)
!4299 = !{!4300, !4301, !4302, !4308, !4313, !4317}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4298, file: !100, line: 90, baseType: !308, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4298, file: !100, line: 91, baseType: !498, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4298, file: !100, line: 92, baseType: !4303, size: 64, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!115, !4306, !442}
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4298, file: !100, line: 93, baseType: !4309, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!447, !4306, !4312, !4175, !4176}
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4298, file: !100, line: 95, baseType: !4314, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{null, !364}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4298, file: !100, line: 97, baseType: !4318, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4320)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4321)
!4321 = !{!4322, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4320, file: !107, line: 287, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!115, !364}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4320, file: !107, line: 288, baseType: !4314, size: 64, offset: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4320, file: !107, line: 289, baseType: !4323, size: 64, offset: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4320, file: !107, line: 290, baseType: !4323, size: 64, offset: 192)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4320, file: !107, line: 291, baseType: !4323, size: 64, offset: 256)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4320, file: !107, line: 292, baseType: !4323, size: 64, offset: 320)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4320, file: !107, line: 293, baseType: !4323, size: 64, offset: 384)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4320, file: !107, line: 294, baseType: !4323, size: 64, offset: 448)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4320, file: !107, line: 295, baseType: !4323, size: 64, offset: 512)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4320, file: !107, line: 296, baseType: !4323, size: 64, offset: 576)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4320, file: !107, line: 297, baseType: !4323, size: 64, offset: 640)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4320, file: !107, line: 298, baseType: !4323, size: 64, offset: 704)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4320, file: !107, line: 299, baseType: !4323, size: 64, offset: 768)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4320, file: !107, line: 300, baseType: !4323, size: 64, offset: 832)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4320, file: !107, line: 301, baseType: !4323, size: 64, offset: 896)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4320, file: !107, line: 302, baseType: !4323, size: 64, offset: 960)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4320, file: !107, line: 303, baseType: !4323, size: 64, offset: 1024)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4320, file: !107, line: 304, baseType: !4323, size: 64, offset: 1088)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4320, file: !107, line: 305, baseType: !4323, size: 64, offset: 1152)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4320, file: !107, line: 306, baseType: !4323, size: 64, offset: 1216)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4320, file: !107, line: 307, baseType: !4323, size: 64, offset: 1280)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4320, file: !107, line: 308, baseType: !4323, size: 64, offset: 1344)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4320, file: !107, line: 309, baseType: !4323, size: 64, offset: 1408)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !365, file: !100, line: 714, baseType: !4349, size: 64, offset: 768)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4351)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4352, line: 80, size: 1344, elements: !4353)
!4352 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4353 = !{!4354, !4355, !4356, !4357, !4358, !4359, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4432}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4351, file: !4352, line: 81, baseType: !308, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4351, file: !4352, line: 82, baseType: !308, size: 64, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4351, file: !4352, line: 83, baseType: !498, size: 64, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4351, file: !4352, line: 84, baseType: !498, size: 64, offset: 192)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4351, file: !4352, line: 85, baseType: !498, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4351, file: !4352, line: 87, baseType: !4360, size: 64, offset: 320)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!115, !364, !4363}
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4371, !4372, !4385, !4395, !4396, !4397, !4398, !4399, !4407, !4408, !4409, !4410, !4411, !4412}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4364, file: !94, line: 97, baseType: !308, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4364, file: !94, line: 98, baseType: !4349, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4364, file: !94, line: 100, baseType: !711, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4364, file: !94, line: 101, baseType: !308, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4364, file: !94, line: 103, baseType: !862, size: 8, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4364, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4364, file: !94, line: 106, baseType: !4373, size: 64, offset: 320)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4375)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4376, line: 282, size: 1600, elements: !4377)
!4376 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4377 = !{!4378, !4379, !4380, !4384}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4375, file: !4376, line: 283, baseType: !3637, size: 256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4375, file: !4376, line: 284, baseType: !3637, size: 256, offset: 256)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4375, file: !4376, line: 285, baseType: !4381, size: 1024, offset: 512)
!4381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4382)
!4382 = !{!4383}
!4383 = !DISubrange(count: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4375, file: !4376, line: 286, baseType: !2685, size: 64, offset: 1536)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4364, file: !94, line: 107, baseType: !4386, size: 64, offset: 384)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4388)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4376, line: 217, size: 256, elements: !4389)
!4389 = !{!4390, !4391, !4393, !4394}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4388, file: !4376, line: 218, baseType: !3644, size: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4388, file: !4376, line: 219, baseType: !4392, size: 64, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4376, line: 15, baseType: !269)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4388, file: !4376, line: 220, baseType: !341, size: 32, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4388, file: !4376, line: 221, baseType: !341, size: 32, offset: 224)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4364, file: !94, line: 109, baseType: !4323, size: 64, offset: 448)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4364, file: !94, line: 110, baseType: !4314, size: 64, offset: 512)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4364, file: !94, line: 111, baseType: !4323, size: 64, offset: 576)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4364, file: !94, line: 112, baseType: !4314, size: 64, offset: 640)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4364, file: !94, line: 113, baseType: !4400, size: 64, offset: 704)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!115, !364, !4403}
!4403 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4404)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4405)
!4405 = !{!4406}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4404, file: !107, line: 59, baseType: !115, size: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4364, file: !94, line: 114, baseType: !4323, size: 64, offset: 768)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4364, file: !94, line: 115, baseType: !498, size: 64, offset: 832)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4364, file: !94, line: 116, baseType: !498, size: 64, offset: 896)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4364, file: !94, line: 118, baseType: !4318, size: 64, offset: 960)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4364, file: !94, line: 119, baseType: !4314, size: 64, offset: 1024)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4364, file: !94, line: 121, baseType: !4413, size: 64, offset: 1088)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4351, file: !4352, line: 88, baseType: !4303, size: 64, offset: 384)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4351, file: !4352, line: 89, baseType: !4323, size: 64, offset: 448)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4351, file: !4352, line: 90, baseType: !4314, size: 64, offset: 512)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4351, file: !4352, line: 91, baseType: !4314, size: 64, offset: 576)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4351, file: !4352, line: 92, baseType: !4314, size: 64, offset: 640)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4351, file: !4352, line: 94, baseType: !4323, size: 64, offset: 704)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4351, file: !4352, line: 95, baseType: !4323, size: 64, offset: 768)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4351, file: !4352, line: 97, baseType: !4400, size: 64, offset: 832)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4351, file: !4352, line: 98, baseType: !4323, size: 64, offset: 896)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4351, file: !4352, line: 100, baseType: !4323, size: 64, offset: 960)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4351, file: !4352, line: 102, baseType: !4323, size: 64, offset: 1024)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4351, file: !4352, line: 103, baseType: !4314, size: 64, offset: 1088)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4351, file: !4352, line: 105, baseType: !4318, size: 64, offset: 1152)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4351, file: !4352, line: 107, baseType: !4429, size: 64, offset: 1216)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4431)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4352, line: 107, flags: DIFlagFwdDecl)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4351, file: !4352, line: 109, baseType: !862, size: 8, offset: 1280)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !365, file: !100, line: 715, baseType: !4363, size: 64, offset: 832)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !365, file: !100, line: 717, baseType: !265, size: 64, offset: 896)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !365, file: !100, line: 719, baseType: !265, size: 64, offset: 960)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !365, file: !100, line: 721, baseType: !782, size: 256, offset: 1024)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !365, file: !100, line: 725, baseType: !4438, size: 448, offset: 1280)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4439)
!4439 = !{!4440, !4441, !4442, !4443}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4438, file: !100, line: 518, baseType: !277, size: 128)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4438, file: !100, line: 519, baseType: !277, size: 128, offset: 128)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4438, file: !100, line: 520, baseType: !277, size: 128, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4438, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !365, file: !100, line: 726, baseType: !4445, size: 2496, offset: 1728)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4446)
!4446 = !{!4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4529, !4533}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4445, file: !107, line: 664, baseType: !4403, size: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4445, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4445, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4445, file: !107, line: 667, baseType: !862, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4445, file: !107, line: 668, baseType: !862, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4445, file: !107, line: 669, baseType: !862, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4445, file: !107, line: 670, baseType: !862, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4445, file: !107, line: 671, baseType: !862, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4445, file: !107, line: 672, baseType: !862, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4445, file: !107, line: 673, baseType: !862, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4445, file: !107, line: 674, baseType: !862, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4445, file: !107, line: 675, baseType: !340, size: 32, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4445, file: !107, line: 676, baseType: !381, size: 32, offset: 96)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4445, file: !107, line: 678, baseType: !277, size: 128, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4445, file: !107, line: 679, baseType: !731, size: 256, offset: 256)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4445, file: !107, line: 680, baseType: !4463, size: 64, offset: 512)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4465, line: 43, size: 1536, elements: !4466)
!4465 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4466 = !{!4467, !4468, !4469, !4470, !4471, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4464, file: !4465, line: 44, baseType: !308, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4464, file: !4465, line: 45, baseType: !115, size: 32, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4464, file: !4465, line: 46, baseType: !277, size: 128, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4464, file: !4465, line: 47, baseType: !381, size: 32, offset: 256)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4464, file: !4465, line: 48, baseType: !4472, size: 64, offset: 320)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4464, file: !4465, line: 49, baseType: !1022, size: 320, offset: 384)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4464, file: !4465, line: 50, baseType: !269, size: 64, offset: 704)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4464, file: !4465, line: 51, baseType: !1677, size: 64, offset: 768)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4464, file: !4465, line: 52, baseType: !1677, size: 64, offset: 832)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4464, file: !4465, line: 53, baseType: !1677, size: 64, offset: 896)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4464, file: !4465, line: 54, baseType: !1677, size: 64, offset: 960)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4464, file: !4465, line: 55, baseType: !1677, size: 64, offset: 1024)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4464, file: !4465, line: 56, baseType: !269, size: 64, offset: 1088)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4464, file: !4465, line: 57, baseType: !269, size: 64, offset: 1152)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4464, file: !4465, line: 58, baseType: !269, size: 64, offset: 1216)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4464, file: !4465, line: 59, baseType: !269, size: 64, offset: 1280)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4464, file: !4465, line: 60, baseType: !269, size: 64, offset: 1344)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4464, file: !4465, line: 61, baseType: !364, size: 64, offset: 1408)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4464, file: !4465, line: 62, baseType: !862, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4464, file: !4465, line: 63, baseType: !862, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4445, file: !107, line: 681, baseType: !862, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4445, file: !107, line: 682, baseType: !862, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4445, file: !107, line: 683, baseType: !862, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4445, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4445, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4445, file: !107, line: 690, baseType: !1669, size: 512, offset: 640)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4445, file: !107, line: 691, baseType: !301, size: 64, offset: 1152)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4445, file: !107, line: 692, baseType: !1040, size: 256, offset: 1216)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4445, file: !107, line: 693, baseType: !1535, size: 192, offset: 1472)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4445, file: !107, line: 694, baseType: !4472, size: 64, offset: 1664)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4445, file: !107, line: 695, baseType: !401, size: 32, offset: 1728)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4445, file: !107, line: 696, baseType: !401, size: 32, offset: 1760)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4445, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4445, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4445, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4445, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4445, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4445, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4445, file: !107, line: 703, baseType: !862, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4445, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4445, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4445, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4445, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4445, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4445, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4445, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4445, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4445, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4445, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4445, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4445, file: !107, line: 715, baseType: !301, size: 64, offset: 2048)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4445, file: !107, line: 716, baseType: !301, size: 64, offset: 2112)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4445, file: !107, line: 717, baseType: !301, size: 64, offset: 2176)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4445, file: !107, line: 718, baseType: !301, size: 64, offset: 2240)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4445, file: !107, line: 720, baseType: !4524, size: 64, offset: 2304)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4526)
!4526 = !{!4527, !4528}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4525, file: !107, line: 633, baseType: !381, size: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4525, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4445, file: !107, line: 721, baseType: !4530, size: 64, offset: 2368)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{null, !364, !778}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4445, file: !107, line: 722, baseType: !4534, size: 64, offset: 2432)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !365, file: !100, line: 727, baseType: !4537, size: 64, offset: 4224)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4539)
!4539 = !{!4540, !4541, !4542, !4546, !4547, !4548}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4538, file: !107, line: 743, baseType: !4320, size: 1472)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4538, file: !107, line: 744, baseType: !4323, size: 64, offset: 1472)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4538, file: !107, line: 745, baseType: !4543, size: 64, offset: 1536)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{null, !364, !862}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4538, file: !107, line: 746, baseType: !4323, size: 64, offset: 1600)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4538, file: !107, line: 747, baseType: !4314, size: 64, offset: 1664)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4538, file: !107, line: 748, baseType: !4314, size: 64, offset: 1728)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !365, file: !100, line: 736, baseType: !4550, size: 128, offset: 4288)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4551)
!4551 = !{!4552, !5218}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4550, file: !100, line: 531, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !252, line: 150, size: 1408, elements: !4555)
!4555 = !{!4556, !4557, !4558, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !5121, !5122, !5123, !5124, !5213, !5214, !5215, !5216}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4554, file: !252, line: 151, baseType: !277, size: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4554, file: !252, line: 152, baseType: !308, size: 64, offset: 128)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4554, file: !252, line: 153, baseType: !4559, size: 64, offset: 192)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4561)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !252, line: 88, size: 640, elements: !4562)
!4562 = !{!4563, !4692, !4703, !4707, !4711, !4717, !4721, !4725, !4963, !4967}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4561, file: !252, line: 89, baseType: !4564, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!115, !4553, !4567, !128}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4569, line: 48, size: 1152, elements: !4570)
!4569 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4570 = !{!4571, !4572, !4574, !4575, !4678, !4686, !4687, !4688, !4689, !4690, !4691}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4568, file: !4569, line: 49, baseType: !308, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4568, file: !4569, line: 50, baseType: !4573, size: 32, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4569, line: 25, baseType: !340)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4568, file: !4569, line: 51, baseType: !308, size: 64, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4568, file: !4569, line: 52, baseType: !4576, size: 512, offset: 192)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4577, line: 41, size: 512, elements: !4578)
!4577 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4578 = !{!4579, !4581, !4674, !4675, !4676, !4677}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4576, file: !4577, line: 42, baseType: !4580, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4576, file: !4577, line: 43, baseType: !4582, size: 64, offset: 64)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4584)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4577, line: 125, size: 1408, elements: !4585)
!4585 = !{!4586, !4590, !4594, !4600, !4604, !4605, !4609, !4613, !4617, !4621, !4625, !4626, !4630, !4634, !4638, !4649, !4650, !4651, !4652, !4662, !4666, !4670}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4584, file: !4577, line: 126, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!4580, !4580}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4584, file: !4577, line: 127, baseType: !4591, size: 64, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{null, !4580}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4584, file: !4577, line: 128, baseType: !4595, size: 64, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!862, !4598}
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4576)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4584, file: !4577, line: 129, baseType: !4601, size: 64, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!2685, !4598, !4306}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4584, file: !4577, line: 131, baseType: !4595, size: 64, offset: 256)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4584, file: !4577, line: 133, baseType: !4606, size: 64, offset: 320)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!122, !4598}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4584, file: !4577, line: 134, baseType: !4610, size: 64, offset: 384)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!862, !4598, !308}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4584, file: !4577, line: 136, baseType: !4614, size: 64, offset: 448)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!115, !4598, !308, !13, !265, !494}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4584, file: !4577, line: 141, baseType: !4618, size: 64, offset: 512)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!115, !4598, !308, !1117, !494}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4584, file: !4577, line: 144, baseType: !4622, size: 64, offset: 576)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!308, !4598}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4584, file: !4577, line: 145, baseType: !4622, size: 64, offset: 640)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4584, file: !4577, line: 146, baseType: !4627, size: 64, offset: 704)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!4580, !4598}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4584, file: !4577, line: 148, baseType: !4631, size: 64, offset: 768)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!4580, !4598, !4580}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4584, file: !4577, line: 151, baseType: !4635, size: 64, offset: 832)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!4580, !4598, !308}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4584, file: !4577, line: 153, baseType: !4639, size: 64, offset: 896)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!115, !4598, !308, !308, !13, !13, !4642}
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4577, line: 94, size: 640, elements: !4644)
!4644 = !{!4645, !4646, !4647}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4643, file: !4577, line: 95, baseType: !4580, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4643, file: !4577, line: 96, baseType: !13, size: 32, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4643, file: !4577, line: 97, baseType: !4648, size: 512, offset: 128)
!4648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 512, elements: !1712)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4584, file: !4577, line: 158, baseType: !4631, size: 64, offset: 960)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4584, file: !4577, line: 161, baseType: !4627, size: 64, offset: 1024)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4584, file: !4577, line: 163, baseType: !4587, size: 64, offset: 1088)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4584, file: !4577, line: 164, baseType: !4653, size: 64, offset: 1152)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!115, !4598, !4656}
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4577, line: 73, size: 128, elements: !4658)
!4658 = !{!4659, !4660, !4661}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4657, file: !4577, line: 74, baseType: !13, size: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4657, file: !4577, line: 75, baseType: !13, size: 32, offset: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4657, file: !4577, line: 76, baseType: !4598, size: 64, offset: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4584, file: !4577, line: 166, baseType: !4663, size: 64, offset: 1216)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!265, !4580, !115}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4584, file: !4577, line: 167, baseType: !4667, size: 64, offset: 1280)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!115, !4598, !13}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4584, file: !4577, line: 168, baseType: !4671, size: 64, offset: 1344)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!115, !4580}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4576, file: !4577, line: 44, baseType: !364, size: 64, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4576, file: !4577, line: 45, baseType: !277, size: 128, offset: 192)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4576, file: !4577, line: 46, baseType: !277, size: 128, offset: 320)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4576, file: !4577, line: 47, baseType: !409, size: 8, offset: 448)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4568, file: !4569, line: 54, baseType: !4679, size: 64, offset: 704)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4569, line: 28, size: 256, elements: !4681)
!4681 = !{!4682, !4683, !4684, !4685}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4680, file: !4569, line: 29, baseType: !447, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4680, file: !4569, line: 30, baseType: !115, size: 32, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4680, file: !4569, line: 31, baseType: !265, size: 64, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4680, file: !4569, line: 32, baseType: !4679, size: 64, offset: 192)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4568, file: !4569, line: 55, baseType: !4679, size: 64, offset: 768)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4568, file: !4569, line: 56, baseType: !4567, size: 64, offset: 832)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4568, file: !4569, line: 57, baseType: !4567, size: 64, offset: 896)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4568, file: !4569, line: 58, baseType: !4567, size: 64, offset: 960)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4568, file: !4569, line: 62, baseType: !269, size: 64, offset: 1024)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4568, file: !4569, line: 63, baseType: !265, size: 64, offset: 1088)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4561, file: !252, line: 91, baseType: !4693, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!115, !4553, !4696, !128}
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !252, line: 63, size: 640, elements: !4698)
!4698 = !{!4699, !4700, !4701}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4697, file: !252, line: 64, baseType: !4580, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4697, file: !252, line: 65, baseType: !115, size: 32, offset: 64)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4697, file: !252, line: 66, baseType: !4702, size: 512, offset: 96)
!4702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 512, elements: !2862)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4561, file: !252, line: 93, baseType: !4704, size: 64, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!115, !4553, !13, !267}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4561, file: !252, line: 94, baseType: !4708, size: 64, offset: 192)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{null, !4553, !13}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4561, file: !252, line: 95, baseType: !4712, size: 64, offset: 256)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!115, !4553, !4567, !4715, !13, !1131, !854}
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4561, file: !252, line: 100, baseType: !4718, size: 64, offset: 320)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!115, !4553, !13, !13, !265}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4561, file: !252, line: 102, baseType: !4722, size: 64, offset: 384)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{null, !4553, !13, !13}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4561, file: !252, line: 104, baseType: !4726, size: 64, offset: 448)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!115, !4553, !4729, !862}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !155, line: 179, size: 448, elements: !4731)
!4731 = !{!4732, !4733, !4734, !4735, !4884, !4960, !4961, !4962}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4730, file: !155, line: 180, baseType: !340, size: 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4730, file: !155, line: 181, baseType: !13, size: 32, offset: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !4730, file: !155, line: 182, baseType: !269, size: 64, offset: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !4730, file: !155, line: 183, baseType: !4736, size: 64, offset: 128)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !155, line: 147, size: 320, elements: !4738)
!4738 = !{!4739, !4740, !4741, !4742, !4880, !4883}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !4737, file: !155, line: 148, baseType: !13, size: 32)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4737, file: !155, line: 150, baseType: !13, size: 32, offset: 32)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !4737, file: !155, line: 152, baseType: !265, size: 64, offset: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !4737, file: !155, line: 153, baseType: !4743, size: 64, offset: 128)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !210, line: 184, size: 832, elements: !4745)
!4745 = !{!4746, !4747, !4748, !4749, !4814, !4820, !4821, !4834, !4838, !4839, !4840}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4744, file: !210, line: 186, baseType: !13, size: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !4744, file: !210, line: 187, baseType: !13, size: 32, offset: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4744, file: !210, line: 188, baseType: !364, size: 64, offset: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4744, file: !210, line: 189, baseType: !4750, size: 96, offset: 128)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !210, line: 65, size: 96, elements: !4751)
!4751 = !{!4752, !4783, !4793}
!4752 = !DIDerivedType(tag: DW_TAG_member, scope: !4750, file: !210, line: 66, baseType: !4753, size: 32)
!4753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4750, file: !210, line: 66, size: 32, elements: !4754)
!4754 = !{!4755, !4756}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !4753, file: !210, line: 67, baseType: !340, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "arch_addr_lo", scope: !4753, file: !210, line: 68, baseType: !4757, size: 32)
!4757 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_addr_lo_t", file: !4758, line: 49, baseType: !4759)
!4758 = !DIFile(filename: "./arch/x86/include/asm/msi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18fb5c3a6ec98b3248a11eb70711a164")
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_addr_lo", file: !4758, line: 29, size: 32, elements: !4760)
!4760 = !{!4761}
!4761 = !DIDerivedType(tag: DW_TAG_member, scope: !4759, file: !4758, line: 30, baseType: !4762, size: 32)
!4762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4759, file: !4758, line: 30, size: 32, elements: !4763)
!4763 = !{!4764, !4774}
!4764 = !DIDerivedType(tag: DW_TAG_member, scope: !4762, file: !4758, line: 31, baseType: !4765, size: 32)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4762, file: !4758, line: 31, size: 32, elements: !4766)
!4766 = !{!4767, !4768, !4769, !4770, !4771, !4772, !4773}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0", scope: !4765, file: !4758, line: 32, baseType: !340, size: 2, flags: DIFlagBitField, extraData: i64 0)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !4765, file: !4758, line: 33, baseType: !340, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_hint", scope: !4765, file: !4758, line: 34, baseType: !340, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_1", scope: !4765, file: !4758, line: 35, baseType: !340, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "virt_destid_8_14", scope: !4765, file: !4758, line: 36, baseType: !340, size: 7, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "destid_0_7", scope: !4765, file: !4758, line: 37, baseType: !340, size: 8, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !4765, file: !4758, line: 38, baseType: !340, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!4774 = !DIDerivedType(tag: DW_TAG_member, scope: !4762, file: !4758, line: 40, baseType: !4775, size: 32)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4762, file: !4758, line: 40, size: 32, elements: !4776)
!4776 = !{!4777, !4778, !4779, !4780, !4781, !4782}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_reserved_0", scope: !4775, file: !4758, line: 41, baseType: !340, size: 2, flags: DIFlagBitField, extraData: i64 0)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_index_15", scope: !4775, file: !4758, line: 42, baseType: !340, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_subhandle_valid", scope: !4775, file: !4758, line: 43, baseType: !340, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_format", scope: !4775, file: !4758, line: 44, baseType: !340, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_index_0_14", scope: !4775, file: !4758, line: 45, baseType: !340, size: 15, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_base_address", scope: !4775, file: !4758, line: 46, baseType: !340, size: 12, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!4783 = !DIDerivedType(tag: DW_TAG_member, scope: !4750, file: !210, line: 70, baseType: !4784, size: 32, offset: 32)
!4784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4750, file: !210, line: 70, size: 32, elements: !4785)
!4785 = !{!4786, !4787}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !4784, file: !210, line: 71, baseType: !340, size: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "arch_addr_hi", scope: !4784, file: !210, line: 72, baseType: !4788, size: 32)
!4788 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_addr_hi_t", file: !4758, line: 57, baseType: !4789)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_addr_hi", file: !4758, line: 54, size: 32, elements: !4790)
!4790 = !{!4791, !4792}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4789, file: !4758, line: 55, baseType: !340, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "destid_8_31", scope: !4789, file: !4758, line: 56, baseType: !340, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4793 = !DIDerivedType(tag: DW_TAG_member, scope: !4750, file: !210, line: 74, baseType: !4794, size: 32, offset: 64)
!4794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4750, file: !210, line: 74, size: 32, elements: !4795)
!4795 = !{!4796, !4797}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4794, file: !210, line: 75, baseType: !340, size: 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4794, file: !210, line: 76, baseType: !4798, size: 32)
!4798 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_msi_msg_data_t", file: !4758, line: 26, baseType: !4799)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_msi_data", file: !4758, line: 14, size: 32, elements: !4800)
!4800 = !{!4801}
!4801 = !DIDerivedType(tag: DW_TAG_member, scope: !4799, file: !4758, line: 15, baseType: !4802, size: 32)
!4802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4799, file: !4758, line: 15, size: 32, elements: !4803)
!4803 = !{!4804, !4813}
!4804 = !DIDerivedType(tag: DW_TAG_member, scope: !4802, file: !4758, line: 16, baseType: !4805, size: 32)
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4802, file: !4758, line: 16, size: 32, elements: !4806)
!4806 = !{!4807, !4808, !4809, !4810, !4811, !4812}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4805, file: !4758, line: 17, baseType: !340, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_mode", scope: !4805, file: !4758, line: 18, baseType: !340, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !4805, file: !4758, line: 19, baseType: !340, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4805, file: !4758, line: 20, baseType: !340, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "active_low", scope: !4805, file: !4758, line: 21, baseType: !340, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "is_level", scope: !4805, file: !4758, line: 22, baseType: !340, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "dmar_subhandle", scope: !4802, file: !4758, line: 24, baseType: !340, size: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !4744, file: !210, line: 190, baseType: !4815, size: 64, offset: 256)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !148, line: 299, size: 128, elements: !4817)
!4817 = !{!4818, !4819}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4816, file: !148, line: 300, baseType: !1793, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4816, file: !148, line: 301, baseType: !13, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cookie", scope: !4744, file: !210, line: 192, baseType: !2685, size: 64, offset: 320)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_attrs", scope: !4744, file: !210, line: 195, baseType: !4822, size: 64, offset: 384)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !100, line: 106, size: 256, elements: !4824)
!4824 = !{!4825, !4826, !4830}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4823, file: !100, line: 107, baseType: !485, size: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4823, file: !100, line: 108, baseType: !4827, size: 64, offset: 128)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!479, !364, !4822, !447}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4823, file: !100, line: 110, baseType: !4831, size: 64, offset: 192)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!479, !364, !4822, !308, !494}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !4744, file: !210, line: 198, baseType: !4835, size: 64, offset: 448)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{null, !4743, !265}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !4744, file: !210, line: 199, baseType: !265, size: 64, offset: 512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !4744, file: !210, line: 201, baseType: !416, size: 16, offset: 576)
!4840 = !DIDerivedType(tag: DW_TAG_member, scope: !4744, file: !210, line: 202, baseType: !4841, size: 192, offset: 640)
!4841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4744, file: !210, line: 202, size: 192, elements: !4842)
!4842 = !{!4843, !4866}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !4841, file: !210, line: 203, baseType: !4844, size: 192)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_msi_desc", file: !210, line: 113, size: 192, elements: !4845)
!4845 = !{!4846, !4851, !4861}
!4846 = !DIDerivedType(tag: DW_TAG_member, scope: !4844, file: !210, line: 114, baseType: !4847, size: 32)
!4847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4844, file: !210, line: 114, size: 32, elements: !4848)
!4848 = !{!4849, !4850}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "msi_mask", scope: !4847, file: !210, line: 115, baseType: !340, size: 32)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "msix_ctrl", scope: !4847, file: !210, line: 116, baseType: !340, size: 32)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !4844, file: !210, line: 126, baseType: !4852, size: 64, offset: 32)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4844, file: !210, line: 118, size: 64, elements: !4853)
!4853 = !{!4854, !4855, !4856, !4857, !4858, !4859, !4860}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !4852, file: !210, line: 119, baseType: !409, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !4852, file: !210, line: 120, baseType: !409, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !4852, file: !210, line: 121, baseType: !409, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "can_mask", scope: !4852, file: !210, line: 122, baseType: !409, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !4852, file: !210, line: 123, baseType: !409, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !4852, file: !210, line: 124, baseType: !409, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !4852, file: !210, line: 125, baseType: !13, size: 32, offset: 32)
!4861 = !DIDerivedType(tag: DW_TAG_member, scope: !4844, file: !210, line: 127, baseType: !4862, size: 64, offset: 128)
!4862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4844, file: !210, line: 127, size: 64, elements: !4863)
!4863 = !{!4864, !4865}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !4862, file: !210, line: 128, baseType: !409, size: 8)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !4862, file: !210, line: 129, baseType: !265, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4841, file: !210, line: 204, baseType: !4867, size: 128)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc_data", file: !210, line: 160, size: 128, elements: !4868)
!4868 = !{!4869, !4875}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "dcookie", scope: !4867, file: !210, line: 161, baseType: !4870, size: 64)
!4870 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "msi_domain_cookie", file: !210, line: 143, size: 64, elements: !4871)
!4871 = !{!4872, !4873, !4874}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4870, file: !210, line: 144, baseType: !301, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4870, file: !210, line: 145, baseType: !265, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !4870, file: !210, line: 146, baseType: !265, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "icookie", scope: !4867, file: !210, line: 162, baseType: !4876, size: 64, offset: 64)
!4876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "msi_instance_cookie", file: !204, line: 34, size: 64, elements: !4877)
!4877 = !{!4878, !4879}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4876, file: !204, line: 35, baseType: !301, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4876, file: !204, line: 36, baseType: !265, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !4737, file: !155, line: 155, baseType: !4881, size: 64, offset: 192)
!4881 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1792, line: 913, baseType: !4882)
!4882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1793, size: 64, elements: !1797)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !4737, file: !155, line: 158, baseType: !4881, size: 64, offset: 256)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4730, file: !155, line: 184, baseType: !4885, size: 64, offset: 192)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !155, line: 501, size: 2112, elements: !4887)
!4887 = !{!4888, !4889, !4893, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4910, !4914, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4929, !4930, !4931, !4936, !4937, !4941, !4945, !4949, !4953, !4957, !4958, !4959}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4886, file: !155, line: 502, baseType: !308, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !4886, file: !155, line: 503, baseType: !4890, size: 64, offset: 64)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!13, !4729}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !4886, file: !155, line: 504, baseType: !4894, size: 64, offset: 128)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{null, !4729}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !4886, file: !155, line: 505, baseType: !4894, size: 64, offset: 192)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !4886, file: !155, line: 506, baseType: !4894, size: 64, offset: 256)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !4886, file: !155, line: 508, baseType: !4894, size: 64, offset: 320)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !4886, file: !155, line: 509, baseType: !4894, size: 64, offset: 384)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !4886, file: !155, line: 510, baseType: !4894, size: 64, offset: 448)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !4886, file: !155, line: 511, baseType: !4894, size: 64, offset: 512)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !4886, file: !155, line: 512, baseType: !4894, size: 64, offset: 576)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !4886, file: !155, line: 514, baseType: !4905, size: 64, offset: 640)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!115, !4729, !4908, !862}
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1793)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !4886, file: !155, line: 515, baseType: !4911, size: 64, offset: 704)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!115, !4729}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !4886, file: !155, line: 516, baseType: !4915, size: 64, offset: 768)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!115, !4729, !13}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !4886, file: !155, line: 517, baseType: !4915, size: 64, offset: 832)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !4886, file: !155, line: 519, baseType: !4894, size: 64, offset: 896)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !4886, file: !155, line: 520, baseType: !4894, size: 64, offset: 960)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !4886, file: !155, line: 526, baseType: !4894, size: 64, offset: 1024)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !4886, file: !155, line: 527, baseType: !4894, size: 64, offset: 1088)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !4886, file: !155, line: 528, baseType: !4894, size: 64, offset: 1152)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !4886, file: !155, line: 530, baseType: !4894, size: 64, offset: 1216)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !4886, file: !155, line: 532, baseType: !4926, size: 64, offset: 1280)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{null, !4729, !1222}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !4886, file: !155, line: 533, baseType: !4911, size: 64, offset: 1344)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !4886, file: !155, line: 534, baseType: !4894, size: 64, offset: 1408)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !4886, file: !155, line: 536, baseType: !4932, size: 64, offset: 1472)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{null, !4729, !4935}
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !4886, file: !155, line: 537, baseType: !4932, size: 64, offset: 1536)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !4886, file: !155, line: 539, baseType: !4938, size: 64, offset: 1600)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!115, !4729, !147, !4103}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !4886, file: !155, line: 540, baseType: !4942, size: 64, offset: 1664)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!115, !4729, !147, !862}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !4886, file: !155, line: 542, baseType: !4946, size: 64, offset: 1728)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!115, !4729, !265}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !4886, file: !155, line: 544, baseType: !4950, size: 64, offset: 1792)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{null, !4729, !13}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !4886, file: !155, line: 545, baseType: !4954, size: 64, offset: 1856)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{null, !4729, !4908}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !4886, file: !155, line: 547, baseType: !4911, size: 64, offset: 1920)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !4886, file: !155, line: 548, baseType: !4894, size: 64, offset: 1984)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4886, file: !155, line: 550, baseType: !269, size: 64, offset: 2048)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4730, file: !155, line: 185, baseType: !4553, size: 64, offset: 256)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !4730, file: !155, line: 187, baseType: !4729, size: 64, offset: 320)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !4730, file: !155, line: 189, baseType: !265, size: 64, offset: 384)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4561, file: !252, line: 105, baseType: !4964, size: 64, offset: 512)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{null, !4553, !4729}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4561, file: !252, line: 106, baseType: !4968, size: 64, offset: 576)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!115, !4553, !4696, !1131, !854}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4554, file: !252, line: 154, baseType: !265, size: 64, offset: 256)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4554, file: !252, line: 155, baseType: !13, size: 32, offset: 320)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4554, file: !252, line: 156, baseType: !13, size: 32, offset: 352)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4554, file: !252, line: 157, baseType: !782, size: 256, offset: 384)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4554, file: !252, line: 158, baseType: !4553, size: 64, offset: 640)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4554, file: !252, line: 161, baseType: !4580, size: 64, offset: 704)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4554, file: !252, line: 162, baseType: !128, size: 32, offset: 768)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4554, file: !252, line: 163, baseType: !4979, size: 64, offset: 832)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !155, line: 1111, size: 192, elements: !4981)
!4981 = !{!4982, !4983, !4984, !4985, !4986, !4987}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !4980, file: !155, line: 1112, baseType: !13, size: 32)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !4980, file: !155, line: 1113, baseType: !13, size: 32, offset: 32)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !4980, file: !155, line: 1114, baseType: !13, size: 32, offset: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !4980, file: !155, line: 1115, baseType: !13, size: 32, offset: 96)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !4980, file: !155, line: 1116, baseType: !154, size: 32, offset: 128)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4980, file: !155, line: 1117, baseType: !4988, offset: 192)
!4988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4989, elements: !1932)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !155, line: 1061, size: 1024, elements: !4991)
!4991 = !{!4992, !4993, !4994, !4998, !5002, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4990, file: !155, line: 1062, baseType: !740, size: 32)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4990, file: !155, line: 1063, baseType: !265, size: 64, offset: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !4990, file: !155, line: 1064, baseType: !4995, size: 64, offset: 128)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!340, !265}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !4990, file: !155, line: 1065, baseType: !4999, size: 64, offset: 192)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !340, !265}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4990, file: !155, line: 1066, baseType: !5003, size: 64, offset: 256)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{null, !4989}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4990, file: !155, line: 1067, baseType: !5003, size: 64, offset: 320)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !4990, file: !155, line: 1068, baseType: !13, size: 32, offset: 384)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !4990, file: !155, line: 1069, baseType: !13, size: 32, offset: 416)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4990, file: !155, line: 1070, baseType: !340, size: 32, offset: 448)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !4990, file: !155, line: 1071, baseType: !340, size: 32, offset: 480)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !4990, file: !155, line: 1072, baseType: !340, size: 32, offset: 512)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !4990, file: !155, line: 1073, baseType: !340, size: 32, offset: 544)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !4990, file: !155, line: 1074, baseType: !340, size: 32, offset: 576)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !4990, file: !155, line: 1075, baseType: !13, size: 32, offset: 608)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4990, file: !155, line: 1076, baseType: !265, size: 64, offset: 640)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !4990, file: !155, line: 1077, baseType: !269, size: 64, offset: 704)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4990, file: !155, line: 1078, baseType: !269, size: 64, offset: 768)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4990, file: !155, line: 1079, baseType: !4553, size: 64, offset: 832)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4990, file: !155, line: 1080, baseType: !277, size: 128, offset: 896)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !4990, file: !155, line: 1081, baseType: !5021, offset: 1024)
!5021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5022, elements: !1932)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !155, line: 1019, size: 2752, elements: !5023)
!5023 = !{!5024, !5025, !5035, !5118, !5119, !5120}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !5022, file: !155, line: 1020, baseType: !4886, size: 2112)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5022, file: !155, line: 1021, baseType: !5026, size: 448, offset: 2112)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !155, line: 996, size: 448, elements: !5027)
!5027 = !{!5028, !5029, !5030, !5031, !5032, !5033, !5034}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5026, file: !155, line: 997, baseType: !269, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !5026, file: !155, line: 998, baseType: !269, size: 64, offset: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5026, file: !155, line: 999, baseType: !269, size: 64, offset: 128)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !5026, file: !155, line: 1000, baseType: !269, size: 64, offset: 192)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !5026, file: !155, line: 1001, baseType: !269, size: 64, offset: 256)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5026, file: !155, line: 1002, baseType: !269, size: 64, offset: 320)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5026, file: !155, line: 1003, baseType: !269, size: 64, offset: 384)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5022, file: !155, line: 1022, baseType: !5036, size: 64, offset: 2560)
!5036 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !5037, line: 12, baseType: !5038)
!5037 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{null, !5041}
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !5043, line: 55, size: 3584, align: 512, elements: !5044)
!5043 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!5044 = !{!5045, !5046, !5047, !5048, !5049, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5084, !5085, !5086, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !5042, file: !5043, line: 56, baseType: !4737, size: 320)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !5042, file: !5043, line: 57, baseType: !4730, size: 448, offset: 320)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !5042, file: !5043, line: 58, baseType: !854, size: 64, offset: 768)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !5042, file: !5043, line: 59, baseType: !5036, size: 64, offset: 832)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5042, file: !5043, line: 60, baseType: !5050, size: 64, offset: 896)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !148, line: 118, size: 1024, align: 512, elements: !5052)
!5052 = !{!5053, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5051, file: !148, line: 119, baseType: !5054, size: 64)
!5054 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !148, line: 100, baseType: !5055)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!5058, !115, !265}
!5058 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !163, line: 17, baseType: !162)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !5051, file: !148, line: 120, baseType: !265, size: 64, offset: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !5051, file: !148, line: 121, baseType: !265, size: 64, offset: 128)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5051, file: !148, line: 122, baseType: !5050, size: 64, offset: 192)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !5051, file: !148, line: 123, baseType: !5054, size: 64, offset: 256)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !5051, file: !148, line: 124, baseType: !1548, size: 64, offset: 320)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5051, file: !148, line: 125, baseType: !5050, size: 64, offset: 384)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5051, file: !148, line: 126, baseType: !13, size: 32, offset: 448)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5051, file: !148, line: 127, baseType: !13, size: 32, offset: 480)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !5051, file: !148, line: 128, baseType: !269, size: 64, offset: 512)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !5051, file: !148, line: 129, baseType: !269, size: 64, offset: 576)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5051, file: !148, line: 130, baseType: !308, size: 64, offset: 640)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5051, file: !148, line: 131, baseType: !348, size: 64, offset: 704)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !5042, file: !5043, line: 61, baseType: !13, size: 32, offset: 960)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !5042, file: !5043, line: 62, baseType: !13, size: 32, offset: 992)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5042, file: !5043, line: 63, baseType: !13, size: 32, offset: 1024)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !5042, file: !5043, line: 64, baseType: !13, size: 32, offset: 1056)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !5042, file: !5043, line: 65, baseType: !13, size: 32, offset: 1088)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5042, file: !5043, line: 66, baseType: !13, size: 32, offset: 1120)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !5042, file: !5043, line: 67, baseType: !269, size: 64, offset: 1152)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !5042, file: !5043, line: 68, baseType: !13, size: 32, offset: 1216)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !5042, file: !5043, line: 69, baseType: !401, size: 32, offset: 1248)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !5042, file: !5043, line: 70, baseType: !115, size: 32, offset: 1280)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5042, file: !5043, line: 71, baseType: !740, size: 32, offset: 1312)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !5042, file: !5043, line: 72, baseType: !5083, size: 64, offset: 1344)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !5042, file: !5043, line: 73, baseType: !4908, size: 64, offset: 1408)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !5042, file: !5043, line: 75, baseType: !4908, size: 64, offset: 1472)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !5042, file: !5043, line: 76, baseType: !5087, size: 64, offset: 1536)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !148, line: 261, size: 448, elements: !5089)
!5089 = !{!5090, !5091, !5092, !5093, !5097}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5088, file: !148, line: 262, baseType: !13, size: 32)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5088, file: !148, line: 263, baseType: !4281, size: 32, offset: 32)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5088, file: !148, line: 264, baseType: !1040, size: 256, offset: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5088, file: !148, line: 265, baseType: !5094, size: 64, offset: 320)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{null, !5087, !1789}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5088, file: !148, line: 266, baseType: !5098, size: 64, offset: 384)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{null, !5101}
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !5042, file: !5043, line: 78, baseType: !4881, size: 64, offset: 1600)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !5042, file: !5043, line: 81, baseType: !269, size: 64, offset: 1664)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !5042, file: !5043, line: 82, baseType: !401, size: 32, offset: 1728)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !5042, file: !5043, line: 83, baseType: !1535, size: 192, offset: 1792)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !5042, file: !5043, line: 85, baseType: !13, size: 32, offset: 1984)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !5042, file: !5043, line: 86, baseType: !13, size: 32, offset: 2016)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !5042, file: !5043, line: 87, baseType: !13, size: 32, offset: 2048)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !5042, file: !5043, line: 88, baseType: !13, size: 32, offset: 2080)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5042, file: !5043, line: 91, baseType: !348, size: 64, offset: 2112)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5042, file: !5043, line: 98, baseType: !1002, size: 128, align: 64, offset: 2176)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5042, file: !5043, line: 99, baseType: !368, size: 512, offset: 2304)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !5042, file: !5043, line: 101, baseType: !782, size: 256, offset: 2816)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !5042, file: !5043, line: 102, baseType: !115, size: 32, offset: 3072)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5042, file: !5043, line: 103, baseType: !711, size: 64, offset: 3136)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5042, file: !5043, line: 104, baseType: !308, size: 64, offset: 3200)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !5042, file: !5043, line: 106, baseType: !1026, size: 128, offset: 3264)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5022, file: !155, line: 1023, baseType: !340, size: 32, offset: 2624)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !5022, file: !155, line: 1024, baseType: !340, size: 32, offset: 2656)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !5022, file: !155, line: 1025, baseType: !339, size: 64, offset: 2688)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4554, file: !252, line: 164, baseType: !364, size: 64, offset: 896)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !4554, file: !252, line: 165, baseType: !364, size: 64, offset: 960)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4554, file: !252, line: 167, baseType: !4553, size: 64, offset: 1024)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !4554, file: !252, line: 170, baseType: !5125, size: 64, offset: 1088)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5127)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !210, line: 580, size: 192, elements: !5128)
!5128 = !{!5129, !5130, !5131}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "supported_flags", scope: !5127, file: !210, line: 581, baseType: !340, size: 32)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5127, file: !210, line: 582, baseType: !308, size: 64, offset: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "init_dev_msi_info", scope: !5127, file: !210, line: 583, baseType: !5132, size: 64, offset: 128)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!862, !364, !4553, !4553, !5135}
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_info", file: !210, line: 489, size: 576, elements: !5137)
!5137 = !{!5138, !5139, !5140, !5141, !5207, !5208, !5209, !5210, !5211, !5212}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5136, file: !210, line: 490, baseType: !340, size: 32)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !5136, file: !210, line: 491, baseType: !128, size: 32, offset: 32)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "hwsize", scope: !5136, file: !210, line: 492, baseType: !13, size: 32, offset: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5136, file: !210, line: 493, baseType: !5142, size: 64, offset: 128)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_ops", file: !210, line: 448, size: 576, elements: !5144)
!5144 = !{!5145, !5178, !5182, !5186, !5190, !5194, !5198, !5202, !5206}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "get_hwirq", scope: !5143, file: !210, line: 449, baseType: !5146, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!267, !5135, !5149}
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_typedef, name: "msi_alloc_info_t", file: !4758, line: 7, baseType: !5151)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_alloc_info", file: !169, line: 75, size: 576, elements: !5152)
!5152 = !{!5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5151, file: !169, line: 76, baseType: !168, size: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5151, file: !169, line: 77, baseType: !340, size: 32, offset: 32)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !5151, file: !169, line: 78, baseType: !340, size: 32, offset: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !5151, file: !169, line: 79, baseType: !267, size: 64, offset: 128)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5151, file: !169, line: 80, baseType: !4908, size: 64, offset: 192)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5151, file: !169, line: 81, baseType: !4743, size: 64, offset: 256)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5151, file: !169, line: 82, baseType: !265, size: 64, offset: 320)
!5160 = !DIDerivedType(tag: DW_TAG_member, scope: !5151, file: !169, line: 84, baseType: !5161, size: 192, offset: 384)
!5161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5151, file: !169, line: 84, size: 192, elements: !5162)
!5162 = !{!5163, !5171}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic", scope: !5161, file: !169, line: 85, baseType: !5164, size: 96)
!5164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioapic_alloc_info", file: !169, line: 46, size: 96, elements: !5165)
!5165 = !{!5166, !5167, !5168, !5169, !5170}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5164, file: !169, line: 47, baseType: !115, size: 32)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5164, file: !169, line: 48, baseType: !115, size: 32, offset: 32)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "is_level", scope: !5164, file: !169, line: 49, baseType: !340, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "active_low", scope: !5164, file: !169, line: 50, baseType: !340, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5164, file: !169, line: 51, baseType: !340, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !5161, file: !169, line: 86, baseType: !5172, size: 192)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uv_alloc_info", file: !169, line: 54, size: 192, elements: !5173)
!5173 = !{!5174, !5175, !5176, !5177}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !5172, file: !169, line: 55, baseType: !115, size: 32)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "blade", scope: !5172, file: !169, line: 56, baseType: !115, size: 32, offset: 32)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5172, file: !169, line: 57, baseType: !269, size: 64, offset: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5172, file: !169, line: 58, baseType: !447, size: 64, offset: 128)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "msi_init", scope: !5143, file: !210, line: 451, baseType: !5179, size: 64, offset: 64)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!115, !4553, !5135, !13, !267, !5149}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "msi_free", scope: !5143, file: !210, line: 455, baseType: !5183, size: 64, offset: 128)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{null, !4553, !5135, !13}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "msi_prepare", scope: !5143, file: !210, line: 458, baseType: !5187, size: 64, offset: 192)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!115, !4553, !364, !115, !5149}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_desc", scope: !5143, file: !210, line: 461, baseType: !5191, size: 64, offset: 256)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{null, !4553, !5149, !4743}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "set_desc", scope: !5143, file: !210, line: 463, baseType: !5195, size: 64, offset: 320)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{null, !5149, !4743}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "domain_alloc_irqs", scope: !5143, file: !210, line: 465, baseType: !5199, size: 64, offset: 384)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!115, !4553, !364, !115}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "domain_free_irqs", scope: !5143, file: !210, line: 467, baseType: !5203, size: 64, offset: 448)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{null, !4553, !364}
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "msi_post_free", scope: !5143, file: !210, line: 469, baseType: !5203, size: 64, offset: 512)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !5136, file: !210, line: 494, baseType: !4885, size: 64, offset: 192)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !5136, file: !210, line: 495, baseType: !265, size: 64, offset: 256)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5136, file: !210, line: 496, baseType: !5036, size: 64, offset: 320)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !5136, file: !210, line: 497, baseType: !265, size: 64, offset: 384)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "handler_name", scope: !5136, file: !210, line: 498, baseType: !308, size: 64, offset: 448)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5136, file: !210, line: 499, baseType: !265, size: 64, offset: 512)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4554, file: !252, line: 174, baseType: !267, size: 64, offset: 1152)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4554, file: !252, line: 175, baseType: !13, size: 32, offset: 1216)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4554, file: !252, line: 176, baseType: !3892, size: 128, offset: 1280)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !4554, file: !252, line: 177, baseType: !5217, offset: 1408)
!5217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4729, elements: !1932)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4550, file: !100, line: 532, baseType: !5219, size: 64, offset: 64)
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !210, line: 239, size: 832, elements: !5221)
!5221 = !{!5222, !5223, !5226, !5227, !5233}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5220, file: !210, line: 240, baseType: !269, size: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !5220, file: !210, line: 241, baseType: !5224, size: 64, offset: 64)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !210, line: 84, flags: DIFlagFwdDecl)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5220, file: !210, line: 242, baseType: !782, size: 256, offset: 128)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "__domains", scope: !5220, file: !210, line: 243, baseType: !5228, size: 384, offset: 384)
!5228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5229, size: 384, elements: !901)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_dev_domain", file: !210, line: 226, size: 192, elements: !5230)
!5230 = !{!5231, !5232}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5229, file: !210, line: 227, baseType: !3892, size: 128)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5229, file: !210, line: 228, baseType: !4553, size: 64, offset: 128)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "__iter_idx", scope: !5220, file: !210, line: 244, baseType: !269, size: 64, offset: 768)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !365, file: !100, line: 738, baseType: !5235, size: 64, offset: 4416)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5237)
!5237 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !365, file: !100, line: 740, baseType: !5239, size: 64, offset: 4480)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !365, file: !100, line: 741, baseType: !301, size: 64, offset: 4544)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !365, file: !100, line: 746, baseType: !301, size: 64, offset: 4608)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !365, file: !100, line: 747, baseType: !5243, size: 64, offset: 4672)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5245)
!5245 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !365, file: !100, line: 749, baseType: !5247, size: 64, offset: 4736)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !5249)
!5249 = !{!5250, !5251, !5252}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5248, file: !100, line: 433, baseType: !13, size: 32)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5248, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5248, file: !100, line: 435, baseType: !269, size: 64, offset: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !365, file: !100, line: 751, baseType: !277, size: 128, offset: 4800)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !365, file: !100, line: 762, baseType: !5255, size: 64, offset: 4928)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !365, file: !100, line: 770, baseType: !5258, offset: 4992)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5259, line: 5, elements: !1069)
!5259 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !365, file: !100, line: 772, baseType: !4567, size: 64, offset: 4992)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !365, file: !100, line: 773, baseType: !4580, size: 64, offset: 5056)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !365, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !365, file: !100, line: 778, baseType: !677, size: 32, offset: 5152)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !365, file: !100, line: 779, baseType: !340, size: 32, offset: 5184)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !365, file: !100, line: 781, baseType: !381, size: 32, offset: 5216)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !365, file: !100, line: 782, baseType: !277, size: 128, offset: 5248)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !365, file: !100, line: 784, baseType: !5268, size: 64, offset: 5376)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5270)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5271, line: 52, size: 768, elements: !5272)
!5271 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5272 = !{!5273, !5274, !5275, !5276, !5277, !5281, !5285, !5286, !5287, !5288, !5292, !5296}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5270, file: !5271, line: 53, baseType: !308, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5270, file: !5271, line: 55, baseType: !498, size: 64, offset: 64)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5270, file: !5271, line: 56, baseType: !498, size: 64, offset: 128)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5270, file: !5271, line: 58, baseType: !4303, size: 64, offset: 192)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5270, file: !5271, line: 59, baseType: !5278, size: 64, offset: 256)
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!447, !4306, !4312}
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5270, file: !5271, line: 61, baseType: !5282, size: 64, offset: 320)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5283, size: 64)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{null, !5268}
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5270, file: !5271, line: 62, baseType: !4314, size: 64, offset: 384)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5270, file: !5271, line: 64, baseType: !4323, size: 64, offset: 448)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5270, file: !5271, line: 66, baseType: !4143, size: 64, offset: 512)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5270, file: !5271, line: 67, baseType: !5289, size: 64, offset: 576)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!2685, !4306}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5270, file: !5271, line: 69, baseType: !5293, size: 64, offset: 640)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{null, !4306, !4175, !4176}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5270, file: !5271, line: 71, baseType: !4318, size: 64, offset: 704)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !365, file: !100, line: 785, baseType: !498, size: 64, offset: 5440)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !365, file: !100, line: 787, baseType: !4314, size: 64, offset: 5504)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !365, file: !100, line: 788, baseType: !5300, size: 64, offset: 5568)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !365, file: !100, line: 789, baseType: !5303, size: 64, offset: 5632)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !365, file: !100, line: 791, baseType: !5306, size: 64, offset: 5696)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !5308)
!5308 = !{!5309, !5310, !5311, !5312, !5313}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5307, file: !100, line: 598, baseType: !178, size: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5307, file: !100, line: 599, baseType: !187, size: 32, offset: 32)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5307, file: !100, line: 600, baseType: !192, size: 32, offset: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5307, file: !100, line: 601, baseType: !862, size: 8, offset: 96)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5307, file: !100, line: 602, baseType: !862, size: 8, offset: 104)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !365, file: !100, line: 793, baseType: !197, size: 32, offset: 5760)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !365, file: !100, line: 795, baseType: !862, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !365, file: !100, line: 796, baseType: !862, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !365, file: !100, line: 797, baseType: !862, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !365, file: !100, line: 798, baseType: !862, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !365, file: !100, line: 799, baseType: !862, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !284, file: !274, line: 676, baseType: !365, size: 5824, offset: 2240)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !284, file: !274, line: 677, baseType: !512, size: 64, offset: 8064)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !284, file: !274, line: 678, baseType: !512, size: 64, offset: 8128)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !284, file: !274, line: 679, baseType: !13, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !284, file: !274, line: 680, baseType: !13, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !273, file: !274, line: 325, baseType: !283, size: 64, offset: 192)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !273, file: !274, line: 327, baseType: !265, size: 64, offset: 256)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !273, file: !274, line: 328, baseType: !348, size: 64, offset: 320)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !273, file: !274, line: 329, baseType: !5329, size: 64, offset: 384)
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !274, line: 76, size: 832, elements: !5331)
!5331 = !{!5332, !5333, !5334, !5337, !5338}
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5330, file: !274, line: 77, baseType: !283, size: 64)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5330, file: !274, line: 78, baseType: !277, size: 128, offset: 64)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5330, file: !274, line: 79, baseType: !5335, size: 64, offset: 192)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !274, line: 79, flags: DIFlagFwdDecl)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5330, file: !274, line: 80, baseType: !352, size: 8, offset: 256)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5330, file: !274, line: 81, baseType: !368, size: 512, offset: 320)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !273, file: !274, line: 331, baseType: !13, size: 32, offset: 448)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !273, file: !274, line: 332, baseType: !266, size: 16, offset: 480)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !273, file: !274, line: 333, baseType: !266, size: 16, offset: 496)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !273, file: !274, line: 334, baseType: !266, size: 16, offset: 512)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !273, file: !274, line: 335, baseType: !266, size: 16, offset: 528)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !273, file: !274, line: 336, baseType: !13, size: 32, offset: 544)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !273, file: !274, line: 337, baseType: !409, size: 8, offset: 576)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !273, file: !274, line: 338, baseType: !409, size: 8, offset: 584)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !273, file: !274, line: 344, baseType: !5348, size: 64, offset: 640)
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !274, line: 319, flags: DIFlagFwdDecl)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !273, file: !274, line: 345, baseType: !272, size: 64, offset: 704)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !273, file: !274, line: 347, baseType: !340, size: 32, offset: 768)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !273, file: !274, line: 348, baseType: !409, size: 8, offset: 800)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !273, file: !274, line: 349, baseType: !409, size: 8, offset: 808)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !273, file: !274, line: 350, baseType: !409, size: 8, offset: 816)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !273, file: !274, line: 351, baseType: !409, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !273, file: !274, line: 352, baseType: !409, size: 8, offset: 832)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !273, file: !274, line: 353, baseType: !409, size: 8, offset: 840)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !273, file: !274, line: 354, baseType: !416, size: 16, offset: 848)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !273, file: !274, line: 355, baseType: !1131, size: 64, offset: 896)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !273, file: !274, line: 357, baseType: !5361, size: 64, offset: 960)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !274, line: 918, size: 2368, elements: !5363)
!5363 = !{!5364, !5365, !5366, !5379, !5383, !5387, !5391, !5395, !5396, !5400, !5401, !5405, !5425, !5426, !5427, !5428, !5433}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5362, file: !274, line: 919, baseType: !277, size: 128)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5362, file: !274, line: 920, baseType: !308, size: 64, offset: 128)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5362, file: !274, line: 921, baseType: !5367, size: 64, offset: 192)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5369)
!5369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4376, line: 44, size: 320, elements: !5370)
!5370 = !{!5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5369, file: !4376, line: 45, baseType: !341, size: 32)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5369, file: !4376, line: 45, baseType: !341, size: 32, offset: 32)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !5369, file: !4376, line: 46, baseType: !341, size: 32, offset: 64)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !5369, file: !4376, line: 46, baseType: !341, size: 32, offset: 96)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5369, file: !4376, line: 47, baseType: !341, size: 32, offset: 128)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !5369, file: !4376, line: 47, baseType: !341, size: 32, offset: 160)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5369, file: !4376, line: 48, baseType: !4392, size: 64, offset: 192)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !5369, file: !4376, line: 49, baseType: !341, size: 32, offset: 256)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5362, file: !274, line: 922, baseType: !5380, size: 64, offset: 256)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!115, !272, !5367}
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5362, file: !274, line: 923, baseType: !5384, size: 64, offset: 320)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{null, !272}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5362, file: !274, line: 924, baseType: !5388, size: 64, offset: 384)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!115, !272, !4403}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5362, file: !274, line: 925, baseType: !5392, size: 64, offset: 448)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!115, !272}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5362, file: !274, line: 926, baseType: !5384, size: 64, offset: 512)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !5362, file: !274, line: 927, baseType: !5397, size: 64, offset: 576)
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!5398 = !DISubroutineType(types: !5399)
!5399 = !{!115, !272, !115}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !5362, file: !274, line: 928, baseType: !5397, size: 64, offset: 640)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !5362, file: !274, line: 929, baseType: !5402, size: 64, offset: 704)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{!340, !272}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !5362, file: !274, line: 930, baseType: !5406, size: 64, offset: 768)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5408)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !274, line: 837, size: 448, elements: !5409)
!5409 = !{!5410, !5416, !5420, !5421, !5422, !5423, !5424}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !5408, file: !274, line: 839, baseType: !5411, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{!5414, !272, !5415}
!5414 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !274, line: 814, baseType: !13)
!5415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !274, line: 196, baseType: !13)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !5408, file: !274, line: 843, baseType: !5417, size: 64, offset: 64)
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{!5414, !272}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !5408, file: !274, line: 846, baseType: !5417, size: 64, offset: 128)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !5408, file: !274, line: 849, baseType: !5384, size: 64, offset: 192)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !5408, file: !274, line: 850, baseType: !5384, size: 64, offset: 256)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5408, file: !274, line: 853, baseType: !5384, size: 64, offset: 320)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !5408, file: !274, line: 856, baseType: !5384, size: 64, offset: 384)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5362, file: !274, line: 931, baseType: !498, size: 64, offset: 832)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5362, file: !274, line: 932, baseType: !498, size: 64, offset: 896)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5362, file: !274, line: 933, baseType: !4364, size: 1152, offset: 960)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !5362, file: !274, line: 934, baseType: !5429, size: 192, offset: 2112)
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !274, line: 801, size: 192, elements: !5430)
!5430 = !{!5431, !5432}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5429, file: !274, line: 802, baseType: !381, size: 32)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5429, file: !274, line: 803, baseType: !277, size: 128, offset: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !5362, file: !274, line: 935, baseType: !862, size: 8, offset: 2304)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !273, file: !274, line: 358, baseType: !301, size: 64, offset: 1024)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !273, file: !274, line: 364, baseType: !5248, size: 128, offset: 1088)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !273, file: !274, line: 366, baseType: !5437, size: 32, offset: 1216)
!5437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !274, line: 171, baseType: !115)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !273, file: !274, line: 369, baseType: !409, size: 8, offset: 1248)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !273, file: !274, line: 370, baseType: !13, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !273, file: !274, line: 371, baseType: !13, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !273, file: !274, line: 373, baseType: !13, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !273, file: !274, line: 374, baseType: !13, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !273, file: !274, line: 375, baseType: !13, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !273, file: !274, line: 376, baseType: !13, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !273, file: !274, line: 377, baseType: !13, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !273, file: !274, line: 378, baseType: !13, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !273, file: !274, line: 379, baseType: !13, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !273, file: !274, line: 380, baseType: !13, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !273, file: !274, line: 382, baseType: !13, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !273, file: !274, line: 383, baseType: !13, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !273, file: !274, line: 384, baseType: !13, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !273, file: !274, line: 385, baseType: !13, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !273, file: !274, line: 388, baseType: !13, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !273, file: !274, line: 390, baseType: !13, size: 32, offset: 1280)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !273, file: !274, line: 391, baseType: !13, size: 32, offset: 1312)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !273, file: !274, line: 394, baseType: !5457, size: 64, offset: 1344)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !274, line: 316, flags: DIFlagFwdDecl)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !273, file: !274, line: 395, baseType: !416, size: 16, offset: 1408)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !273, file: !274, line: 396, baseType: !13, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !273, file: !274, line: 399, baseType: !13, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !273, file: !274, line: 400, baseType: !13, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !273, file: !274, line: 402, baseType: !5415, size: 32, offset: 1440)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !273, file: !274, line: 403, baseType: !365, size: 5824, offset: 1472)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !273, file: !274, line: 405, baseType: !115, size: 32, offset: 7296)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !273, file: !274, line: 411, baseType: !13, size: 32, offset: 7328)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !273, file: !274, line: 412, baseType: !5468, size: 5632, offset: 7360)
!5468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 5632, elements: !5469)
!5469 = !{!5470}
!5470 = !DISubrange(count: 11)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !273, file: !274, line: 413, baseType: !295, size: 512, offset: 12992)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !273, file: !274, line: 415, baseType: !862, size: 8, offset: 13504)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !273, file: !274, line: 417, baseType: !13, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !273, file: !274, line: 418, baseType: !13, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !273, file: !274, line: 419, baseType: !13, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !273, file: !274, line: 420, baseType: !13, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !273, file: !274, line: 421, baseType: !13, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !273, file: !274, line: 423, baseType: !13, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !273, file: !274, line: 424, baseType: !13, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !273, file: !274, line: 425, baseType: !13, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !273, file: !274, line: 426, baseType: !13, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !273, file: !274, line: 427, baseType: !13, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !273, file: !274, line: 428, baseType: !13, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !273, file: !274, line: 429, baseType: !13, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !273, file: !274, line: 430, baseType: !13, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !273, file: !274, line: 431, baseType: !13, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !273, file: !274, line: 432, baseType: !13, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !273, file: !274, line: 433, baseType: !13, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !273, file: !274, line: 434, baseType: !13, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !273, file: !274, line: 435, baseType: !13, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !273, file: !274, line: 436, baseType: !13, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !273, file: !274, line: 437, baseType: !13, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !273, file: !274, line: 438, baseType: !13, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !273, file: !274, line: 439, baseType: !13, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !273, file: !274, line: 440, baseType: !13, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !273, file: !274, line: 441, baseType: !13, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !273, file: !274, line: 442, baseType: !13, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !273, file: !274, line: 443, baseType: !13, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !273, file: !274, line: 451, baseType: !13, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !273, file: !274, line: 457, baseType: !13, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !273, file: !274, line: 458, baseType: !13, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !273, file: !274, line: 459, baseType: !13, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !273, file: !274, line: 460, baseType: !13, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !273, file: !274, line: 461, baseType: !13, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !273, file: !274, line: 462, baseType: !13, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !273, file: !274, line: 463, baseType: !13, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !273, file: !274, line: 464, baseType: !13, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !273, file: !274, line: 465, baseType: !13, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !273, file: !274, line: 466, baseType: !13, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !273, file: !274, line: 467, baseType: !13, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !273, file: !274, line: 468, baseType: !5512, size: 16, offset: 13552)
!5512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !274, line: 222, baseType: !266)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !273, file: !274, line: 469, baseType: !401, size: 32, offset: 13568)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !273, file: !274, line: 471, baseType: !381, size: 32, offset: 13600)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !273, file: !274, line: 472, baseType: !4702, size: 512, offset: 13632)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !273, file: !274, line: 473, baseType: !1150, size: 64, offset: 14144)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !273, file: !274, line: 474, baseType: !5518, size: 704, offset: 14208)
!5518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 704, elements: !5469)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !273, file: !274, line: 475, baseType: !5518, size: 704, offset: 14912)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !273, file: !274, line: 487, baseType: !265, size: 64, offset: 15616)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !273, file: !274, line: 488, baseType: !740, size: 32, offset: 15680)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !273, file: !274, line: 490, baseType: !5523, size: 320, offset: 15744)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !274, line: 309, size: 320, elements: !5524)
!5524 = !{!5525, !5526, !5527}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5523, file: !274, line: 310, baseType: !782, size: 256)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5523, file: !274, line: 311, baseType: !13, size: 32, offset: 256)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5523, file: !274, line: 312, baseType: !409, size: 8, offset: 288)
!5528 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !274, line: 497, baseType: !5529, size: 64, offset: 16064)
!5529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !274, line: 497, size: 64, elements: !5530)
!5530 = !{!5531, !5534}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5529, file: !274, line: 498, baseType: !5532, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !274, line: 317, flags: DIFlagFwdDecl)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5529, file: !274, line: 499, baseType: !272, size: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !273, file: !274, line: 501, baseType: !416, size: 16, offset: 16128)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !273, file: !274, line: 502, baseType: !409, size: 8, offset: 16144)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !273, file: !274, line: 505, baseType: !416, size: 16, offset: 16160)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !273, file: !274, line: 506, baseType: !340, size: 32, offset: 16192)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !273, file: !274, line: 507, baseType: !13, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !273, file: !274, line: 510, baseType: !416, size: 16, offset: 16240)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !273, file: !274, line: 511, baseType: !416, size: 16, offset: 16256)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !273, file: !274, line: 519, baseType: !416, size: 16, offset: 16272)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !273, file: !274, line: 520, baseType: !300, size: 64, offset: 16320)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !273, file: !274, line: 521, baseType: !494, size: 64, offset: 16384)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !273, file: !274, line: 526, baseType: !308, size: 64, offset: 16448)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !273, file: !274, line: 528, baseType: !269, size: 64, offset: 16512)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !273, file: !274, line: 531, baseType: !5548, size: 56, offset: 16576)
!5548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 56, elements: !903)
!5549 = !{!0, !7, !5550, !5552, !5557, !5559, !5561, !5570, !5575}
!5550 = !DIGlobalVariableExpression(var: !5551, expr: !DIExpression())
!5551 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_create_ims_domain293", scope: !9, file: !2, line: 418, type: !265, isLocal: true, isDefinition: true)
!5552 = !DIGlobalVariableExpression(var: !5553, expr: !DIExpression())
!5553 = distinct !DIGlobalVariable(scope: null, file: !247, line: 121, type: !5554, isLocal: true, isDefinition: true)
!5554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5555)
!5555 = !{!5556}
!5556 = !DISubrange(count: 22)
!5557 = !DIGlobalVariableExpression(var: !5558, expr: !DIExpression())
!5558 = distinct !DIGlobalVariable(name: "pci_msi_domain_ops_default", scope: !9, file: !2, line: 74, type: !5143, isLocal: true, isDefinition: true)
!5559 = !DIGlobalVariableExpression(var: !5560, expr: !DIExpression())
!5560 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !3183, isLocal: true, isDefinition: true)
!5561 = !DIGlobalVariableExpression(var: !5562, expr: !DIExpression())
!5562 = distinct !DIGlobalVariable(name: "pci_msi_template", scope: !9, file: !2, line: 176, type: !5563, isLocal: true, isDefinition: true)
!5563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5564)
!5564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_domain_template", file: !210, line: 509, size: 3648, elements: !5565)
!5565 = !{!5566, !5567, !5568, !5569}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5564, file: !210, line: 510, baseType: !357, size: 384)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !5564, file: !210, line: 511, baseType: !4886, size: 2112, offset: 384)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5564, file: !210, line: 512, baseType: !5143, size: 576, offset: 2496)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5564, file: !210, line: 513, baseType: !5136, size: 576, offset: 3072)
!5570 = !DIGlobalVariableExpression(var: !5571, expr: !DIExpression())
!5571 = distinct !DIGlobalVariable(scope: null, file: !2, line: 215, type: !5572, isLocal: true, isDefinition: true)
!5572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5573)
!5573 = !{!5574}
!5574 = !DISubrange(count: 9)
!5575 = !DIGlobalVariableExpression(var: !5576, expr: !DIExpression())
!5576 = distinct !DIGlobalVariable(name: "pci_msix_template", scope: !9, file: !2, line: 213, type: !5563, isLocal: true, isDefinition: true)
!5577 = !{i32 7, !"Dwarf Version", i32 5}
!5578 = !{i32 2, !"Debug Info Version", i32 3}
!5579 = !{i32 1, !"wchar_size", i32 2}
!5580 = !{i32 8, !"cf-protection-branch", i32 1}
!5581 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5582 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5583 = !{i32 1, !"Code Model", i32 2}
!5584 = !{i32 1, !"override-stack-alignment", i32 8}
!5585 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5586 = distinct !DISubprogram(name: "pci_msi_setup_msi_irqs", scope: !2, file: !2, line: 11, type: !5587, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5589)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!115, !272, !115, !115}
!5589 = !{!5590, !5591, !5592, !5593}
!5590 = !DILocalVariable(name: "dev", arg: 1, scope: !5586, file: !2, line: 11, type: !272)
!5591 = !DILocalVariable(name: "nvec", arg: 2, scope: !5586, file: !2, line: 11, type: !115)
!5592 = !DILocalVariable(name: "type", arg: 3, scope: !5586, file: !2, line: 11, type: !115)
!5593 = !DILocalVariable(name: "domain", scope: !5586, file: !2, line: 13, type: !4553)
!5594 = !DILocation(line: 11, column: 44, scope: !5586)
!5595 = !DILocation(line: 11, column: 53, scope: !5586)
!5596 = !DILocation(line: 11, column: 63, scope: !5586)
!5597 = !DILocation(line: 13, column: 2, scope: !5586)
!5598 = !DILocation(line: 13, column: 21, scope: !5586)
!5599 = !DILocation(line: 15, column: 31, scope: !5586)
!5600 = !DILocation(line: 15, column: 36, scope: !5586)
!5601 = !DILocation(line: 15, column: 11, scope: !5586)
!5602 = !DILocation(line: 15, column: 9, scope: !5586)
!5603 = !DILocation(line: 16, column: 6, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5586, file: !2, line: 16, column: 6)
!5605 = !DILocation(line: 16, column: 13, scope: !5604)
!5606 = !DILocation(line: 16, column: 40, scope: !5604)
!5607 = !DILocation(line: 16, column: 16, scope: !5604)
!5608 = !DILocation(line: 16, column: 6, scope: !5586)
!5609 = !DILocation(line: 17, column: 44, scope: !5604)
!5610 = !DILocation(line: 17, column: 49, scope: !5604)
!5611 = !DILocation(line: 17, column: 74, scope: !5604)
!5612 = !DILocation(line: 17, column: 10, scope: !5604)
!5613 = !DILocation(line: 17, column: 3, scope: !5604)
!5614 = !DILocation(line: 19, column: 39, scope: !5586)
!5615 = !DILocation(line: 19, column: 44, scope: !5586)
!5616 = !DILocation(line: 19, column: 50, scope: !5586)
!5617 = !DILocation(line: 19, column: 9, scope: !5586)
!5618 = !DILocation(line: 19, column: 2, scope: !5586)
!5619 = !DILocation(line: 20, column: 1, scope: !5586)
!5620 = distinct !DISubprogram(name: "dev_get_msi_domain", scope: !100, file: !100, line: 900, type: !5621, scopeLine: 901, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5623)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!4553, !4306}
!5623 = !{!5624}
!5624 = !DILocalVariable(name: "dev", arg: 1, scope: !5620, file: !100, line: 900, type: !4306)
!5625 = !DILocation(line: 900, column: 74, scope: !5620)
!5626 = !DILocation(line: 903, column: 9, scope: !5620)
!5627 = !DILocation(line: 903, column: 14, scope: !5620)
!5628 = !DILocation(line: 903, column: 18, scope: !5620)
!5629 = !DILocation(line: 903, column: 2, scope: !5620)
!5630 = distinct !DISubprogram(name: "irq_domain_is_hierarchy", scope: !252, file: !252, line: 539, type: !5631, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5633)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{!862, !4553}
!5633 = !{!5634}
!5634 = !DILocalVariable(name: "domain", arg: 1, scope: !5630, file: !252, line: 539, type: !4553)
!5635 = !DILocation(line: 539, column: 63, scope: !5630)
!5636 = !DILocation(line: 541, column: 9, scope: !5630)
!5637 = !DILocation(line: 541, column: 17, scope: !5630)
!5638 = !DILocation(line: 541, column: 23, scope: !5630)
!5639 = !DILocation(line: 541, column: 2, scope: !5630)
!5640 = !DISubprogram(name: "msi_domain_alloc_irqs_all_locked", scope: !210, file: !210, line: 612, type: !5641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5641 = !DISubroutineType(types: !5642)
!5642 = !{!115, !364, !13, !115}
!5643 = distinct !DISubprogram(name: "pci_msi_legacy_setup_msi_irqs", scope: !247, file: !247, line: 119, type: !5587, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5644)
!5644 = !{!5645, !5646, !5647, !5648, !5650}
!5645 = !DILocalVariable(name: "dev", arg: 1, scope: !5643, file: !247, line: 119, type: !272)
!5646 = !DILocalVariable(name: "nvec", arg: 2, scope: !5643, file: !247, line: 119, type: !115)
!5647 = !DILocalVariable(name: "type", arg: 3, scope: !5643, file: !247, line: 119, type: !115)
!5648 = !DILocalVariable(name: "__ret_warn_on", scope: !5649, file: !247, line: 121, type: !115)
!5649 = distinct !DILexicalBlock(scope: !5643, file: !247, line: 121, column: 2)
!5650 = !DILocalVariable(name: "__flags", scope: !5651, file: !247, line: 121, type: !115)
!5651 = distinct !DILexicalBlock(scope: !5652, file: !247, line: 121, column: 2)
!5652 = distinct !DILexicalBlock(scope: !5649, file: !247, line: 121, column: 2)
!5653 = !DILocation(line: 119, column: 65, scope: !5643)
!5654 = !DILocation(line: 119, column: 74, scope: !5643)
!5655 = !DILocation(line: 119, column: 84, scope: !5643)
!5656 = !DILocation(line: 121, column: 2, scope: !5649)
!5657 = !DILocation(line: 121, column: 2, scope: !5652)
!5658 = !DILocation(line: 121, column: 2, scope: !5651)
!5659 = !DILocation(line: 121, column: 2, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5651, file: !247, line: 121, column: 2)
!5661 = !DILocation(line: 121, column: 2, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5651, file: !247, line: 121, column: 2)
!5663 = !{i64 2155888555, i64 2155888584, i64 2155888630, i64 2155888688, i64 2155888742, i64 2155888796, i64 2155888851, i64 2155888882, i64 2155889190, i64 2155889196, i64 2155889243, i64 2155889266, i64 2155889292}
!5664 = !DILocation(line: 121, column: 2, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5651, file: !247, line: 121, column: 2)
!5666 = !DILocation(line: 121, column: 2, scope: !5643)
!5667 = !DILocation(line: 122, column: 2, scope: !5643)
!5668 = distinct !DISubprogram(name: "pci_msi_teardown_msi_irqs", scope: !2, file: !2, line: 22, type: !5385, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5669)
!5669 = !{!5670, !5671}
!5670 = !DILocalVariable(name: "dev", arg: 1, scope: !5668, file: !2, line: 22, type: !272)
!5671 = !DILocalVariable(name: "domain", scope: !5668, file: !2, line: 24, type: !4553)
!5672 = !DILocation(line: 22, column: 48, scope: !5668)
!5673 = !DILocation(line: 24, column: 2, scope: !5668)
!5674 = !DILocation(line: 24, column: 21, scope: !5668)
!5675 = !DILocation(line: 26, column: 31, scope: !5668)
!5676 = !DILocation(line: 26, column: 36, scope: !5668)
!5677 = !DILocation(line: 26, column: 11, scope: !5668)
!5678 = !DILocation(line: 26, column: 9, scope: !5668)
!5679 = !DILocation(line: 27, column: 6, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5668, file: !2, line: 27, column: 6)
!5681 = !DILocation(line: 27, column: 13, scope: !5680)
!5682 = !DILocation(line: 27, column: 40, scope: !5680)
!5683 = !DILocation(line: 27, column: 16, scope: !5680)
!5684 = !DILocation(line: 27, column: 6, scope: !5668)
!5685 = !DILocation(line: 28, column: 36, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5680, file: !2, line: 27, column: 49)
!5687 = !DILocation(line: 28, column: 41, scope: !5686)
!5688 = !DILocation(line: 28, column: 3, scope: !5686)
!5689 = !DILocation(line: 29, column: 2, scope: !5686)
!5690 = !DILocation(line: 30, column: 36, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5680, file: !2, line: 29, column: 9)
!5692 = !DILocation(line: 30, column: 3, scope: !5691)
!5693 = !DILocation(line: 31, column: 23, scope: !5691)
!5694 = !DILocation(line: 31, column: 28, scope: !5691)
!5695 = !DILocation(line: 31, column: 3, scope: !5691)
!5696 = !DILocation(line: 33, column: 1, scope: !5668)
!5697 = !DISubprogram(name: "msi_domain_free_irqs_all_locked", scope: !210, file: !210, line: 622, type: !5698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{null, !364, !13}
!5700 = distinct !DISubprogram(name: "pci_msi_legacy_teardown_msi_irqs", scope: !247, file: !247, line: 125, type: !5385, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5701)
!5701 = !{!5702, !5703, !5705}
!5702 = !DILocalVariable(name: "dev", arg: 1, scope: !5700, file: !247, line: 125, type: !272)
!5703 = !DILocalVariable(name: "__ret_warn_on", scope: !5704, file: !247, line: 127, type: !115)
!5704 = distinct !DILexicalBlock(scope: !5700, file: !247, line: 127, column: 2)
!5705 = !DILocalVariable(name: "__flags", scope: !5706, file: !247, line: 127, type: !115)
!5706 = distinct !DILexicalBlock(scope: !5707, file: !247, line: 127, column: 2)
!5707 = distinct !DILexicalBlock(scope: !5704, file: !247, line: 127, column: 2)
!5708 = !DILocation(line: 125, column: 69, scope: !5700)
!5709 = !DILocation(line: 127, column: 2, scope: !5704)
!5710 = !DILocation(line: 127, column: 2, scope: !5707)
!5711 = !DILocation(line: 127, column: 2, scope: !5706)
!5712 = !DILocation(line: 127, column: 2, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5706, file: !247, line: 127, column: 2)
!5714 = !DILocation(line: 127, column: 2, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5706, file: !247, line: 127, column: 2)
!5716 = !{i64 2155890237, i64 2155890266, i64 2155890312, i64 2155890370, i64 2155890424, i64 2155890478, i64 2155890533, i64 2155890564, i64 2155890872, i64 2155890878, i64 2155890925, i64 2155890948, i64 2155890974}
!5717 = !DILocation(line: 127, column: 2, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5706, file: !247, line: 127, column: 2)
!5719 = !DILocation(line: 127, column: 2, scope: !5700)
!5720 = !DILocation(line: 128, column: 1, scope: !5700)
!5721 = distinct !DISubprogram(name: "msi_free_msi_descs", scope: !210, file: !210, line: 368, type: !4315, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5722)
!5722 = !{!5723}
!5723 = !DILocalVariable(name: "dev", arg: 1, scope: !5721, file: !210, line: 368, type: !364)
!5724 = !DILocation(line: 368, column: 54, scope: !5721)
!5725 = !DILocation(line: 370, column: 27, scope: !5721)
!5726 = !DILocation(line: 370, column: 2, scope: !5721)
!5727 = !DILocation(line: 371, column: 1, scope: !5721)
!5728 = distinct !DISubprogram(name: "pci_msi_create_irq_domain", scope: !2, file: !2, line: 114, type: !5729, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5731)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!4553, !4580, !5135, !4553}
!5731 = !{!5732, !5733, !5734, !5735, !5738}
!5732 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5728, file: !2, line: 114, type: !4580)
!5733 = !DILocalVariable(name: "info", arg: 2, scope: !5728, file: !2, line: 115, type: !5135)
!5734 = !DILocalVariable(name: "parent", arg: 3, scope: !5728, file: !2, line: 116, type: !4553)
!5735 = !DILocalVariable(name: "__ret_warn_on", scope: !5736, file: !2, line: 118, type: !115)
!5736 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 118, column: 6)
!5737 = distinct !DILexicalBlock(scope: !5728, file: !2, line: 118, column: 6)
!5738 = !DILocalVariable(name: "__flags", scope: !5739, file: !2, line: 118, type: !115)
!5739 = distinct !DILexicalBlock(scope: !5740, file: !2, line: 118, column: 6)
!5740 = distinct !DILexicalBlock(scope: !5736, file: !2, line: 118, column: 6)
!5741 = !DILocation(line: 114, column: 68, scope: !5728)
!5742 = !DILocation(line: 115, column: 35, scope: !5728)
!5743 = !DILocation(line: 116, column: 30, scope: !5728)
!5744 = !DILocation(line: 118, column: 6, scope: !5736)
!5745 = !DILocation(line: 118, column: 6, scope: !5740)
!5746 = !DILocation(line: 118, column: 6, scope: !5739)
!5747 = !DILocation(line: 118, column: 6, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5739, file: !2, line: 118, column: 6)
!5749 = !DILocation(line: 118, column: 6, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5739, file: !2, line: 118, column: 6)
!5751 = !{i64 2155892757, i64 2155892786, i64 2155892832, i64 2155892890, i64 2155892944, i64 2155892998, i64 2155893053, i64 2155893084, i64 2155893392, i64 2155893398, i64 2155893445, i64 2155893468, i64 2155893494}
!5752 = !DILocation(line: 118, column: 6, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5739, file: !2, line: 118, column: 6)
!5754 = !DILocation(line: 118, column: 6, scope: !5737)
!5755 = !DILocation(line: 118, column: 6, scope: !5728)
!5756 = !DILocation(line: 119, column: 3, scope: !5737)
!5757 = !DILocation(line: 119, column: 9, scope: !5737)
!5758 = !DILocation(line: 119, column: 15, scope: !5737)
!5759 = !DILocation(line: 121, column: 6, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5728, file: !2, line: 121, column: 6)
!5761 = !DILocation(line: 121, column: 12, scope: !5760)
!5762 = !DILocation(line: 121, column: 18, scope: !5760)
!5763 = !DILocation(line: 121, column: 6, scope: !5728)
!5764 = !DILocation(line: 122, column: 33, scope: !5760)
!5765 = !DILocation(line: 122, column: 3, scope: !5760)
!5766 = !DILocation(line: 123, column: 6, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5728, file: !2, line: 123, column: 6)
!5768 = !DILocation(line: 123, column: 12, scope: !5767)
!5769 = !DILocation(line: 123, column: 18, scope: !5767)
!5770 = !DILocation(line: 123, column: 6, scope: !5728)
!5771 = !DILocation(line: 124, column: 34, scope: !5767)
!5772 = !DILocation(line: 124, column: 3, scope: !5767)
!5773 = !DILocation(line: 127, column: 2, scope: !5728)
!5774 = !DILocation(line: 127, column: 8, scope: !5728)
!5775 = !DILocation(line: 127, column: 14, scope: !5728)
!5776 = !DILocation(line: 129, column: 2, scope: !5728)
!5777 = !DILocation(line: 129, column: 8, scope: !5728)
!5778 = !DILocation(line: 129, column: 14, scope: !5728)
!5779 = !DILocation(line: 131, column: 3, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5728, file: !2, line: 130, column: 6)
!5781 = !DILocation(line: 131, column: 9, scope: !5780)
!5782 = !DILocation(line: 131, column: 15, scope: !5780)
!5783 = !DILocation(line: 134, column: 2, scope: !5728)
!5784 = !DILocation(line: 134, column: 8, scope: !5728)
!5785 = !DILocation(line: 134, column: 14, scope: !5728)
!5786 = !DILocation(line: 134, column: 20, scope: !5728)
!5787 = !DILocation(line: 136, column: 2, scope: !5728)
!5788 = !DILocation(line: 136, column: 8, scope: !5728)
!5789 = !DILocation(line: 136, column: 18, scope: !5728)
!5790 = !DILocation(line: 138, column: 31, scope: !5728)
!5791 = !DILocation(line: 138, column: 39, scope: !5728)
!5792 = !DILocation(line: 138, column: 45, scope: !5728)
!5793 = !DILocation(line: 138, column: 9, scope: !5728)
!5794 = !DILocation(line: 138, column: 2, scope: !5728)
!5795 = distinct !DISubprogram(name: "pci_msi_domain_update_dom_ops", scope: !2, file: !2, line: 78, type: !5796, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5798)
!5796 = !DISubroutineType(types: !5797)
!5797 = !{null, !5135}
!5798 = !{!5799, !5800}
!5799 = !DILocalVariable(name: "info", arg: 1, scope: !5795, file: !2, line: 78, type: !5135)
!5800 = !DILocalVariable(name: "ops", scope: !5795, file: !2, line: 80, type: !5142)
!5801 = !DILocation(line: 78, column: 67, scope: !5795)
!5802 = !DILocation(line: 80, column: 2, scope: !5795)
!5803 = !DILocation(line: 80, column: 25, scope: !5795)
!5804 = !DILocation(line: 80, column: 31, scope: !5795)
!5805 = !DILocation(line: 80, column: 37, scope: !5795)
!5806 = !DILocation(line: 82, column: 6, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5795, file: !2, line: 82, column: 6)
!5808 = !DILocation(line: 82, column: 10, scope: !5807)
!5809 = !DILocation(line: 82, column: 6, scope: !5795)
!5810 = !DILocation(line: 83, column: 3, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5807, file: !2, line: 82, column: 19)
!5812 = !DILocation(line: 83, column: 9, scope: !5811)
!5813 = !DILocation(line: 83, column: 13, scope: !5811)
!5814 = !DILocation(line: 84, column: 2, scope: !5811)
!5815 = !DILocation(line: 85, column: 7, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5817, file: !2, line: 85, column: 7)
!5817 = distinct !DILexicalBlock(scope: !5807, file: !2, line: 84, column: 9)
!5818 = !DILocation(line: 85, column: 12, scope: !5816)
!5819 = !DILocation(line: 85, column: 21, scope: !5816)
!5820 = !DILocation(line: 85, column: 7, scope: !5817)
!5821 = !DILocation(line: 86, column: 4, scope: !5816)
!5822 = !DILocation(line: 86, column: 9, scope: !5816)
!5823 = !DILocation(line: 86, column: 18, scope: !5816)
!5824 = !DILocation(line: 88, column: 1, scope: !5795)
!5825 = distinct !DISubprogram(name: "pci_msi_domain_update_chip_ops", scope: !2, file: !2, line: 90, type: !5796, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5826)
!5826 = !{!5827, !5828}
!5827 = !DILocalVariable(name: "info", arg: 1, scope: !5825, file: !2, line: 90, type: !5135)
!5828 = !DILocalVariable(name: "chip", scope: !5825, file: !2, line: 92, type: !4885)
!5829 = !DILocation(line: 90, column: 68, scope: !5825)
!5830 = !DILocation(line: 92, column: 2, scope: !5825)
!5831 = !DILocation(line: 92, column: 19, scope: !5825)
!5832 = !DILocation(line: 92, column: 26, scope: !5825)
!5833 = !DILocation(line: 92, column: 32, scope: !5825)
!5834 = !DILocation(line: 94, column: 2, scope: !5825)
!5835 = !DILocation(line: 94, column: 2, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5837, file: !2, line: 94, column: 2)
!5837 = distinct !DILexicalBlock(scope: !5825, file: !2, line: 94, column: 2)
!5838 = !DILocation(line: 94, column: 2, scope: !5837)
!5839 = !DILocation(line: 94, column: 2, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5836, file: !2, line: 94, column: 2)
!5841 = !DILocation(line: 94, column: 2, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5840, file: !2, line: 94, column: 2)
!5843 = !DILocation(line: 94, column: 2, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5840, file: !2, line: 94, column: 2)
!5845 = !{i64 2155891505, i64 2155891534, i64 2155891580, i64 2155891638, i64 2155891692, i64 2155891746, i64 2155891801, i64 2155891832}
!5846 = !DILocation(line: 95, column: 7, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5825, file: !2, line: 95, column: 6)
!5848 = !DILocation(line: 95, column: 13, scope: !5847)
!5849 = !DILocation(line: 95, column: 6, scope: !5825)
!5850 = !DILocation(line: 96, column: 3, scope: !5847)
!5851 = !DILocation(line: 96, column: 9, scope: !5847)
!5852 = !DILocation(line: 96, column: 27, scope: !5847)
!5853 = !DILocation(line: 97, column: 7, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5825, file: !2, line: 97, column: 6)
!5855 = !DILocation(line: 97, column: 13, scope: !5854)
!5856 = !DILocation(line: 97, column: 6, scope: !5825)
!5857 = !DILocation(line: 98, column: 3, scope: !5854)
!5858 = !DILocation(line: 98, column: 9, scope: !5854)
!5859 = !DILocation(line: 98, column: 18, scope: !5854)
!5860 = !DILocation(line: 99, column: 7, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5825, file: !2, line: 99, column: 6)
!5862 = !DILocation(line: 99, column: 13, scope: !5861)
!5863 = !DILocation(line: 99, column: 6, scope: !5825)
!5864 = !DILocation(line: 100, column: 3, scope: !5861)
!5865 = !DILocation(line: 100, column: 9, scope: !5861)
!5866 = !DILocation(line: 100, column: 20, scope: !5861)
!5867 = !DILocation(line: 101, column: 1, scope: !5825)
!5868 = !DISubprogram(name: "msi_create_irq_domain", scope: !210, file: !210, line: 595, type: !5729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5869 = distinct !DISubprogram(name: "pci_setup_msi_device_domain", scope: !2, file: !2, line: 270, type: !5870, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5872)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!862, !272}
!5872 = !{!5873, !5874, !5877}
!5873 = !DILocalVariable(name: "pdev", arg: 1, scope: !5869, file: !2, line: 270, type: !272)
!5874 = !DILocalVariable(name: "__ret_warn_on", scope: !5875, file: !2, line: 272, type: !115)
!5875 = distinct !DILexicalBlock(scope: !5876, file: !2, line: 272, column: 6)
!5876 = distinct !DILexicalBlock(scope: !5869, file: !2, line: 272, column: 6)
!5877 = !DILocalVariable(name: "__flags", scope: !5878, file: !2, line: 272, type: !115)
!5878 = distinct !DILexicalBlock(scope: !5879, file: !2, line: 272, column: 6)
!5879 = distinct !DILexicalBlock(scope: !5875, file: !2, line: 272, column: 6)
!5880 = !DILocation(line: 270, column: 50, scope: !5869)
!5881 = !DILocation(line: 272, column: 6, scope: !5875)
!5882 = !DILocation(line: 272, column: 6, scope: !5879)
!5883 = !DILocation(line: 272, column: 6, scope: !5878)
!5884 = !DILocation(line: 272, column: 6, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5878, file: !2, line: 272, column: 6)
!5886 = !DILocation(line: 272, column: 6, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5878, file: !2, line: 272, column: 6)
!5888 = !{i64 2155898511, i64 2155898540, i64 2155898586, i64 2155898644, i64 2155898698, i64 2155898752, i64 2155898807, i64 2155898838, i64 2155899146, i64 2155899152, i64 2155899199, i64 2155899222, i64 2155899248}
!5889 = !DILocation(line: 272, column: 6, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5878, file: !2, line: 272, column: 6)
!5891 = !DILocation(line: 272, column: 6, scope: !5876)
!5892 = !DILocation(line: 272, column: 6, scope: !5869)
!5893 = !DILocation(line: 273, column: 3, scope: !5876)
!5894 = !DILocation(line: 275, column: 30, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5869, file: !2, line: 275, column: 6)
!5896 = !DILocation(line: 275, column: 6, scope: !5895)
!5897 = !DILocation(line: 275, column: 6, scope: !5869)
!5898 = !DILocation(line: 276, column: 3, scope: !5895)
!5899 = !DILocation(line: 277, column: 30, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5869, file: !2, line: 277, column: 6)
!5901 = !DILocation(line: 277, column: 6, scope: !5900)
!5902 = !DILocation(line: 277, column: 6, scope: !5869)
!5903 = !DILocation(line: 278, column: 33, scope: !5900)
!5904 = !DILocation(line: 278, column: 39, scope: !5900)
!5905 = !DILocation(line: 278, column: 3, scope: !5900)
!5906 = !DILocation(line: 280, column: 34, scope: !5869)
!5907 = !DILocation(line: 280, column: 9, scope: !5869)
!5908 = !DILocation(line: 280, column: 2, scope: !5869)
!5909 = !DILocation(line: 281, column: 1, scope: !5869)
!5910 = distinct !DISubprogram(name: "pci_match_device_domain", scope: !2, file: !2, line: 234, type: !5911, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5913)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!862, !272, !128}
!5913 = !{!5914, !5915}
!5914 = !DILocalVariable(name: "pdev", arg: 1, scope: !5910, file: !2, line: 234, type: !272)
!5915 = !DILocalVariable(name: "bus_token", arg: 2, scope: !5910, file: !2, line: 234, type: !128)
!5916 = !DILocation(line: 234, column: 53, scope: !5910)
!5917 = !DILocation(line: 234, column: 85, scope: !5910)
!5918 = !DILocation(line: 236, column: 38, scope: !5910)
!5919 = !DILocation(line: 236, column: 44, scope: !5910)
!5920 = !DILocation(line: 236, column: 69, scope: !5910)
!5921 = !DILocation(line: 236, column: 9, scope: !5910)
!5922 = !DILocation(line: 236, column: 2, scope: !5910)
!5923 = !DISubprogram(name: "msi_remove_device_irq_domain", scope: !210, file: !210, line: 603, type: !5698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5924 = distinct !DISubprogram(name: "pci_create_device_domain", scope: !2, file: !2, line: 239, type: !5925, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5928)
!5925 = !DISubroutineType(types: !5926)
!5926 = !{!862, !272, !5927, !13}
!5927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64)
!5928 = !{!5929, !5930, !5931, !5932}
!5929 = !DILocalVariable(name: "pdev", arg: 1, scope: !5924, file: !2, line: 239, type: !272)
!5930 = !DILocalVariable(name: "tmpl", arg: 2, scope: !5924, file: !2, line: 239, type: !5927)
!5931 = !DILocalVariable(name: "hwsize", arg: 3, scope: !5924, file: !2, line: 240, type: !13)
!5932 = !DILocalVariable(name: "domain", scope: !5924, file: !2, line: 242, type: !4553)
!5933 = !DILocation(line: 239, column: 54, scope: !5924)
!5934 = !DILocation(line: 239, column: 94, scope: !5924)
!5935 = !DILocation(line: 240, column: 23, scope: !5924)
!5936 = !DILocation(line: 242, column: 2, scope: !5924)
!5937 = !DILocation(line: 242, column: 21, scope: !5924)
!5938 = !DILocation(line: 242, column: 50, scope: !5924)
!5939 = !DILocation(line: 242, column: 56, scope: !5924)
!5940 = !DILocation(line: 242, column: 30, scope: !5924)
!5941 = !DILocation(line: 244, column: 7, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5924, file: !2, line: 244, column: 6)
!5943 = !DILocation(line: 244, column: 14, scope: !5942)
!5944 = !DILocation(line: 244, column: 43, scope: !5942)
!5945 = !DILocation(line: 244, column: 18, scope: !5942)
!5946 = !DILocation(line: 244, column: 6, scope: !5924)
!5947 = !DILocation(line: 245, column: 3, scope: !5942)
!5948 = !DILocation(line: 247, column: 39, scope: !5924)
!5949 = !DILocation(line: 247, column: 45, scope: !5924)
!5950 = !DILocation(line: 247, column: 70, scope: !5924)
!5951 = !DILocation(line: 248, column: 10, scope: !5924)
!5952 = !DILocation(line: 247, column: 9, scope: !5924)
!5953 = !DILocation(line: 247, column: 2, scope: !5924)
!5954 = !DILocation(line: 249, column: 1, scope: !5924)
!5955 = distinct !DISubprogram(name: "pci_setup_msix_device_domain", scope: !2, file: !2, line: 303, type: !5956, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5958)
!5956 = !DISubroutineType(types: !5957)
!5957 = !{!862, !272, !13}
!5958 = !{!5959, !5960, !5961, !5964}
!5959 = !DILocalVariable(name: "pdev", arg: 1, scope: !5955, file: !2, line: 303, type: !272)
!5960 = !DILocalVariable(name: "hwsize", arg: 2, scope: !5955, file: !2, line: 303, type: !13)
!5961 = !DILocalVariable(name: "__ret_warn_on", scope: !5962, file: !2, line: 305, type: !115)
!5962 = distinct !DILexicalBlock(scope: !5963, file: !2, line: 305, column: 6)
!5963 = distinct !DILexicalBlock(scope: !5955, file: !2, line: 305, column: 6)
!5964 = !DILocalVariable(name: "__flags", scope: !5965, file: !2, line: 305, type: !115)
!5965 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 305, column: 6)
!5966 = distinct !DILexicalBlock(scope: !5962, file: !2, line: 305, column: 6)
!5967 = !DILocation(line: 303, column: 51, scope: !5955)
!5968 = !DILocation(line: 303, column: 70, scope: !5955)
!5969 = !DILocation(line: 305, column: 6, scope: !5962)
!5970 = !DILocation(line: 305, column: 6, scope: !5966)
!5971 = !DILocation(line: 305, column: 6, scope: !5965)
!5972 = !DILocation(line: 305, column: 6, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5965, file: !2, line: 305, column: 6)
!5974 = !DILocation(line: 305, column: 6, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5965, file: !2, line: 305, column: 6)
!5976 = !{i64 2155900047, i64 2155900076, i64 2155900122, i64 2155900180, i64 2155900234, i64 2155900288, i64 2155900343, i64 2155900374, i64 2155900682, i64 2155900688, i64 2155900735, i64 2155900758, i64 2155900784}
!5977 = !DILocation(line: 305, column: 6, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5965, file: !2, line: 305, column: 6)
!5979 = !DILocation(line: 305, column: 6, scope: !5963)
!5980 = !DILocation(line: 305, column: 6, scope: !5955)
!5981 = !DILocation(line: 306, column: 3, scope: !5963)
!5982 = !DILocation(line: 308, column: 30, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5955, file: !2, line: 308, column: 6)
!5984 = !DILocation(line: 308, column: 6, scope: !5983)
!5985 = !DILocation(line: 308, column: 6, scope: !5955)
!5986 = !DILocation(line: 309, column: 3, scope: !5983)
!5987 = !DILocation(line: 310, column: 30, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5955, file: !2, line: 310, column: 6)
!5989 = !DILocation(line: 310, column: 6, scope: !5988)
!5990 = !DILocation(line: 310, column: 6, scope: !5955)
!5991 = !DILocation(line: 311, column: 33, scope: !5988)
!5992 = !DILocation(line: 311, column: 39, scope: !5988)
!5993 = !DILocation(line: 311, column: 3, scope: !5988)
!5994 = !DILocation(line: 313, column: 34, scope: !5955)
!5995 = !DILocation(line: 313, column: 60, scope: !5955)
!5996 = !DILocation(line: 313, column: 9, scope: !5955)
!5997 = !DILocation(line: 313, column: 2, scope: !5955)
!5998 = !DILocation(line: 314, column: 1, scope: !5955)
!5999 = distinct !DISubprogram(name: "pci_msi_domain_supports", scope: !2, file: !2, line: 324, type: !6000, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6002)
!6000 = !DISubroutineType(types: !6001)
!6001 = !{!862, !272, !13, !246}
!6002 = !{!6003, !6004, !6005, !6006, !6007, !6008}
!6003 = !DILocalVariable(name: "pdev", arg: 1, scope: !5999, file: !2, line: 324, type: !272)
!6004 = !DILocalVariable(name: "feature_mask", arg: 2, scope: !5999, file: !2, line: 324, type: !13)
!6005 = !DILocalVariable(name: "mode", arg: 3, scope: !5999, file: !2, line: 325, type: !246)
!6006 = !DILocalVariable(name: "info", scope: !5999, file: !2, line: 327, type: !5135)
!6007 = !DILocalVariable(name: "domain", scope: !5999, file: !2, line: 328, type: !4553)
!6008 = !DILocalVariable(name: "supported", scope: !5999, file: !2, line: 329, type: !13)
!6009 = !DILocation(line: 324, column: 46, scope: !5999)
!6010 = !DILocation(line: 324, column: 65, scope: !5999)
!6011 = !DILocation(line: 325, column: 27, scope: !5999)
!6012 = !DILocation(line: 327, column: 2, scope: !5999)
!6013 = !DILocation(line: 327, column: 26, scope: !5999)
!6014 = !DILocation(line: 328, column: 2, scope: !5999)
!6015 = !DILocation(line: 328, column: 21, scope: !5999)
!6016 = !DILocation(line: 329, column: 2, scope: !5999)
!6017 = !DILocation(line: 329, column: 15, scope: !5999)
!6018 = !DILocation(line: 331, column: 31, scope: !5999)
!6019 = !DILocation(line: 331, column: 37, scope: !5999)
!6020 = !DILocation(line: 331, column: 11, scope: !5999)
!6021 = !DILocation(line: 331, column: 9, scope: !5999)
!6022 = !DILocation(line: 333, column: 7, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !5999, file: !2, line: 333, column: 6)
!6024 = !DILocation(line: 333, column: 14, scope: !6023)
!6025 = !DILocation(line: 333, column: 42, scope: !6023)
!6026 = !DILocation(line: 333, column: 18, scope: !6023)
!6027 = !DILocation(line: 333, column: 6, scope: !5999)
!6028 = !DILocation(line: 336, column: 3, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6023, file: !2, line: 333, column: 51)
!6030 = !DILocation(line: 339, column: 32, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !5999, file: !2, line: 339, column: 6)
!6032 = !DILocation(line: 339, column: 7, scope: !6031)
!6033 = !DILocation(line: 339, column: 6, scope: !5999)
!6034 = !DILocation(line: 345, column: 10, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !6031, file: !2, line: 339, column: 41)
!6036 = !DILocation(line: 345, column: 18, scope: !6035)
!6037 = !DILocation(line: 345, column: 8, scope: !6035)
!6038 = !DILocation(line: 346, column: 15, scope: !6035)
!6039 = !DILocation(line: 346, column: 21, scope: !6035)
!6040 = !DILocation(line: 346, column: 13, scope: !6035)
!6041 = !DILocation(line: 347, column: 2, scope: !6035)
!6042 = !DILocation(line: 355, column: 15, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6031, file: !2, line: 347, column: 9)
!6044 = !DILocation(line: 355, column: 23, scope: !6043)
!6045 = !DILocation(line: 355, column: 39, scope: !6043)
!6046 = !DILocation(line: 355, column: 13, scope: !6043)
!6047 = !DILocation(line: 358, column: 10, scope: !5999)
!6048 = !DILocation(line: 358, column: 22, scope: !5999)
!6049 = !DILocation(line: 358, column: 20, scope: !5999)
!6050 = !DILocation(line: 358, column: 39, scope: !5999)
!6051 = !DILocation(line: 358, column: 36, scope: !5999)
!6052 = !DILocation(line: 358, column: 2, scope: !5999)
!6053 = !DILocation(line: 359, column: 1, scope: !5999)
!6054 = distinct !DISubprogram(name: "irq_domain_is_msi_parent", scope: !252, file: !252, line: 565, type: !5631, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6055)
!6055 = !{!6056}
!6056 = !DILocalVariable(name: "domain", arg: 1, scope: !6054, file: !252, line: 565, type: !4553)
!6057 = !DILocation(line: 565, column: 64, scope: !6054)
!6058 = !DILocation(line: 567, column: 9, scope: !6054)
!6059 = !DILocation(line: 567, column: 17, scope: !6054)
!6060 = !DILocation(line: 567, column: 23, scope: !6054)
!6061 = !DILocation(line: 567, column: 2, scope: !6054)
!6062 = distinct !DISubprogram(name: "pci_create_ims_domain", scope: !2, file: !2, line: 400, type: !6063, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6065)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!862, !272, !5927, !13, !265}
!6065 = !{!6066, !6067, !6068, !6069, !6070}
!6066 = !DILocalVariable(name: "pdev", arg: 1, scope: !6062, file: !2, line: 400, type: !272)
!6067 = !DILocalVariable(name: "template", arg: 2, scope: !6062, file: !2, line: 400, type: !5927)
!6068 = !DILocalVariable(name: "hwsize", arg: 3, scope: !6062, file: !2, line: 401, type: !13)
!6069 = !DILocalVariable(name: "data", arg: 4, scope: !6062, file: !2, line: 401, type: !265)
!6070 = !DILocalVariable(name: "domain", scope: !6062, file: !2, line: 403, type: !4553)
!6071 = !DILocation(line: 400, column: 44, scope: !6062)
!6072 = !DILocation(line: 400, column: 84, scope: !6062)
!6073 = !DILocation(line: 401, column: 20, scope: !6062)
!6074 = !DILocation(line: 401, column: 34, scope: !6062)
!6075 = !DILocation(line: 403, column: 2, scope: !6062)
!6076 = !DILocation(line: 403, column: 21, scope: !6062)
!6077 = !DILocation(line: 403, column: 50, scope: !6062)
!6078 = !DILocation(line: 403, column: 56, scope: !6062)
!6079 = !DILocation(line: 403, column: 30, scope: !6062)
!6080 = !DILocation(line: 405, column: 7, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6062, file: !2, line: 405, column: 6)
!6082 = !DILocation(line: 405, column: 14, scope: !6081)
!6083 = !DILocation(line: 405, column: 43, scope: !6081)
!6084 = !DILocation(line: 405, column: 18, scope: !6081)
!6085 = !DILocation(line: 405, column: 6, scope: !6062)
!6086 = !DILocation(line: 406, column: 3, scope: !6081)
!6087 = !DILocation(line: 408, column: 6, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6062, file: !2, line: 408, column: 6)
!6089 = !DILocation(line: 408, column: 16, scope: !6088)
!6090 = !DILocation(line: 408, column: 21, scope: !6088)
!6091 = !DILocation(line: 408, column: 31, scope: !6088)
!6092 = !DILocation(line: 408, column: 60, scope: !6088)
!6093 = !DILocation(line: 409, column: 8, scope: !6088)
!6094 = !DILocation(line: 409, column: 18, scope: !6088)
!6095 = !DILocation(line: 409, column: 23, scope: !6088)
!6096 = !DILocation(line: 409, column: 29, scope: !6088)
!6097 = !DILocation(line: 409, column: 64, scope: !6088)
!6098 = !DILocation(line: 410, column: 8, scope: !6088)
!6099 = !DILocation(line: 410, column: 18, scope: !6088)
!6100 = !DILocation(line: 410, column: 23, scope: !6088)
!6101 = !DILocation(line: 410, column: 29, scope: !6088)
!6102 = !DILocation(line: 410, column: 56, scope: !6088)
!6103 = !DILocation(line: 411, column: 7, scope: !6088)
!6104 = !DILocation(line: 411, column: 17, scope: !6088)
!6105 = !DILocation(line: 411, column: 22, scope: !6088)
!6106 = !DILocation(line: 411, column: 31, scope: !6088)
!6107 = !DILocation(line: 411, column: 35, scope: !6088)
!6108 = !DILocation(line: 411, column: 45, scope: !6088)
!6109 = !DILocation(line: 411, column: 50, scope: !6088)
!6110 = !DILocation(line: 411, column: 61, scope: !6088)
!6111 = !DILocation(line: 412, column: 7, scope: !6088)
!6112 = !DILocation(line: 412, column: 17, scope: !6088)
!6113 = !DILocation(line: 412, column: 22, scope: !6088)
!6114 = !DILocation(line: 412, column: 40, scope: !6088)
!6115 = !DILocation(line: 412, column: 43, scope: !6088)
!6116 = !DILocation(line: 412, column: 53, scope: !6088)
!6117 = !DILocation(line: 412, column: 58, scope: !6088)
!6118 = !DILocation(line: 408, column: 6, scope: !6062)
!6119 = !DILocation(line: 413, column: 3, scope: !6088)
!6120 = !DILocation(line: 415, column: 39, scope: !6062)
!6121 = !DILocation(line: 415, column: 45, scope: !6062)
!6122 = !DILocation(line: 415, column: 72, scope: !6062)
!6123 = !DILocation(line: 416, column: 10, scope: !6062)
!6124 = !DILocation(line: 416, column: 18, scope: !6062)
!6125 = !DILocation(line: 415, column: 9, scope: !6062)
!6126 = !DILocation(line: 415, column: 2, scope: !6062)
!6127 = !DILocation(line: 417, column: 1, scope: !6062)
!6128 = !DISubprogram(name: "msi_create_device_irq_domain", scope: !210, file: !210, line: 599, type: !6129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6129 = !DISubroutineType(types: !6130)
!6130 = !{!862, !364, !13, !5927, !13, !265, !265}
!6131 = distinct !DISubprogram(name: "pci_msi_domain_get_msi_rid", scope: !2, file: !2, line: 454, type: !6132, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6134)
!6132 = !DISubroutineType(types: !6133)
!6133 = !{!340, !4553, !272}
!6134 = !{!6135, !6136, !6137, !6138}
!6135 = !DILocalVariable(name: "domain", arg: 1, scope: !6131, file: !2, line: 454, type: !4553)
!6136 = !DILocalVariable(name: "pdev", arg: 2, scope: !6131, file: !2, line: 454, type: !272)
!6137 = !DILocalVariable(name: "of_node", scope: !6131, file: !2, line: 456, type: !4567)
!6138 = !DILocalVariable(name: "rid", scope: !6131, file: !2, line: 457, type: !340)
!6139 = !DILocation(line: 454, column: 51, scope: !6131)
!6140 = !DILocation(line: 454, column: 75, scope: !6131)
!6141 = !DILocation(line: 456, column: 2, scope: !6131)
!6142 = !DILocation(line: 456, column: 22, scope: !6131)
!6143 = !DILocation(line: 457, column: 2, scope: !6131)
!6144 = !DILocation(line: 457, column: 6, scope: !6131)
!6145 = !DILocation(line: 457, column: 23, scope: !6131)
!6146 = !DILocation(line: 457, column: 12, scope: !6131)
!6147 = !DILocation(line: 459, column: 25, scope: !6131)
!6148 = !DILocation(line: 459, column: 2, scope: !6131)
!6149 = !DILocation(line: 461, column: 35, scope: !6131)
!6150 = !DILocation(line: 461, column: 12, scope: !6131)
!6151 = !DILocation(line: 461, column: 10, scope: !6131)
!6152 = !DILocation(line: 462, column: 8, scope: !6131)
!6153 = !DILocation(line: 462, column: 33, scope: !6131)
!6154 = !DILocation(line: 462, column: 39, scope: !6131)
!6155 = !DILocation(line: 462, column: 44, scope: !6131)
!6156 = !DILocation(line: 462, column: 53, scope: !6131)
!6157 = !DILocation(line: 462, column: 18, scope: !6131)
!6158 = !DILocation(line: 463, column: 21, scope: !6131)
!6159 = !DILocation(line: 463, column: 27, scope: !6131)
!6160 = !DILocation(line: 463, column: 32, scope: !6131)
!6161 = !DILocation(line: 463, column: 4, scope: !6131)
!6162 = !DILocation(line: 462, column: 6, scope: !6131)
!6163 = !DILocation(line: 465, column: 9, scope: !6131)
!6164 = !DILocation(line: 466, column: 1, scope: !6131)
!6165 = !DILocation(line: 465, column: 2, scope: !6131)
!6166 = distinct !DISubprogram(name: "pci_dev_id", scope: !274, file: !274, line: 685, type: !6167, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6169)
!6167 = !DISubroutineType(types: !6168)
!6168 = !{!416, !272}
!6169 = !{!6170}
!6170 = !DILocalVariable(name: "dev", arg: 1, scope: !6166, file: !274, line: 685, type: !272)
!6171 = !DILocation(line: 685, column: 46, scope: !6166)
!6172 = !DILocation(line: 687, column: 9, scope: !6166)
!6173 = !DILocation(line: 687, column: 2, scope: !6166)
!6174 = !DISubprogram(name: "pci_for_each_dma_alias", scope: !274, file: !274, line: 2595, type: !6175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{!115, !272, !6177, !265}
!6177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6178, size: 64)
!6178 = !DISubroutineType(types: !6179)
!6179 = !{!115, !272, !416, !265}
!6180 = distinct !DISubprogram(name: "get_msi_id_cb", scope: !2, file: !2, line: 433, type: !6178, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6181)
!6181 = !{!6182, !6183, !6184, !6185, !6186}
!6182 = !DILocalVariable(name: "pdev", arg: 1, scope: !6180, file: !2, line: 433, type: !272)
!6183 = !DILocalVariable(name: "alias", arg: 2, scope: !6180, file: !2, line: 433, type: !416)
!6184 = !DILocalVariable(name: "data", arg: 3, scope: !6180, file: !2, line: 433, type: !265)
!6185 = !DILocalVariable(name: "pa", scope: !6180, file: !2, line: 435, type: !339)
!6186 = !DILocalVariable(name: "bus", scope: !6180, file: !2, line: 436, type: !409)
!6187 = !DILocation(line: 433, column: 42, scope: !6180)
!6188 = !DILocation(line: 433, column: 52, scope: !6180)
!6189 = !DILocation(line: 433, column: 65, scope: !6180)
!6190 = !DILocation(line: 435, column: 2, scope: !6180)
!6191 = !DILocation(line: 435, column: 7, scope: !6180)
!6192 = !DILocation(line: 435, column: 12, scope: !6180)
!6193 = !DILocation(line: 436, column: 2, scope: !6180)
!6194 = !DILocation(line: 436, column: 5, scope: !6180)
!6195 = !DILocation(line: 436, column: 11, scope: !6180)
!6196 = !DILocation(line: 438, column: 6, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6180, file: !2, line: 438, column: 6)
!6198 = !DILocation(line: 438, column: 12, scope: !6197)
!6199 = !DILocation(line: 438, column: 17, scope: !6197)
!6200 = !DILocation(line: 438, column: 27, scope: !6197)
!6201 = !DILocation(line: 438, column: 24, scope: !6197)
!6202 = !DILocation(line: 438, column: 31, scope: !6197)
!6203 = !DILocation(line: 438, column: 34, scope: !6197)
!6204 = !DILocation(line: 438, column: 56, scope: !6197)
!6205 = !DILocation(line: 438, column: 53, scope: !6197)
!6206 = !DILocation(line: 438, column: 6, scope: !6180)
!6207 = !DILocation(line: 439, column: 9, scope: !6197)
!6208 = !DILocation(line: 439, column: 4, scope: !6197)
!6209 = !DILocation(line: 439, column: 7, scope: !6197)
!6210 = !DILocation(line: 439, column: 3, scope: !6197)
!6211 = !DILocation(line: 442, column: 1, scope: !6180)
!6212 = !DILocation(line: 441, column: 2, scope: !6180)
!6213 = distinct !DISubprogram(name: "irq_domain_get_of_node", scope: !252, file: !252, line: 219, type: !6214, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6216)
!6214 = !DISubroutineType(types: !6215)
!6215 = !{!4567, !4553}
!6216 = !{!6217}
!6217 = !DILocalVariable(name: "d", arg: 1, scope: !6213, file: !252, line: 219, type: !4553)
!6218 = !DILocation(line: 219, column: 77, scope: !6213)
!6219 = !DILocation(line: 221, column: 20, scope: !6213)
!6220 = !DILocation(line: 221, column: 23, scope: !6213)
!6221 = !DILocation(line: 221, column: 9, scope: !6213)
!6222 = !DILocation(line: 221, column: 2, scope: !6213)
!6223 = distinct !DISubprogram(name: "of_msi_map_id", scope: !6224, file: !6224, line: 103, type: !6225, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6227)
!6224 = !DIFile(filename: "./include/linux/of_irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7cf76be86435ad1b2264d5a341f835e9")
!6225 = !DISubroutineType(types: !6226)
!6226 = !{!340, !364, !4567, !340}
!6227 = !{!6228, !6229, !6230}
!6228 = !DILocalVariable(name: "dev", arg: 1, scope: !6223, file: !6224, line: 103, type: !364)
!6229 = !DILocalVariable(name: "msi_np", arg: 2, scope: !6223, file: !6224, line: 104, type: !4567)
!6230 = !DILocalVariable(name: "id_in", arg: 3, scope: !6223, file: !6224, line: 104, type: !340)
!6231 = !DILocation(line: 103, column: 48, scope: !6223)
!6232 = !DILocation(line: 104, column: 26, scope: !6223)
!6233 = !DILocation(line: 104, column: 38, scope: !6223)
!6234 = !DILocation(line: 106, column: 9, scope: !6223)
!6235 = !DILocation(line: 106, column: 2, scope: !6223)
!6236 = distinct !DISubprogram(name: "iort_msi_map_id", scope: !6237, file: !6237, line: 47, type: !6238, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6240)
!6237 = !DIFile(filename: "./include/linux/acpi_iort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "89d10a4c09fe14c78e388610993a8047")
!6238 = !DISubroutineType(types: !6239)
!6239 = !{!340, !364, !340}
!6240 = !{!6241, !6242}
!6241 = !DILocalVariable(name: "dev", arg: 1, scope: !6236, file: !6237, line: 47, type: !364)
!6242 = !DILocalVariable(name: "id", arg: 2, scope: !6236, file: !6237, line: 47, type: !340)
!6243 = !DILocation(line: 47, column: 50, scope: !6236)
!6244 = !DILocation(line: 47, column: 59, scope: !6236)
!6245 = !DILocation(line: 48, column: 10, scope: !6236)
!6246 = !DILocation(line: 48, column: 3, scope: !6236)
!6247 = distinct !DISubprogram(name: "pci_msi_get_device_domain", scope: !2, file: !2, line: 477, type: !6248, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6250)
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!4553, !272}
!6250 = !{!6251, !6252, !6253}
!6251 = !DILocalVariable(name: "pdev", arg: 1, scope: !6247, file: !2, line: 477, type: !272)
!6252 = !DILocalVariable(name: "dom", scope: !6247, file: !2, line: 479, type: !4553)
!6253 = !DILocalVariable(name: "rid", scope: !6247, file: !2, line: 480, type: !340)
!6254 = !DILocation(line: 477, column: 62, scope: !6247)
!6255 = !DILocation(line: 479, column: 2, scope: !6247)
!6256 = !DILocation(line: 479, column: 21, scope: !6247)
!6257 = !DILocation(line: 480, column: 2, scope: !6247)
!6258 = !DILocation(line: 480, column: 6, scope: !6247)
!6259 = !DILocation(line: 480, column: 23, scope: !6247)
!6260 = !DILocation(line: 480, column: 12, scope: !6247)
!6261 = !DILocation(line: 482, column: 25, scope: !6247)
!6262 = !DILocation(line: 482, column: 2, scope: !6247)
!6263 = !DILocation(line: 483, column: 38, scope: !6247)
!6264 = !DILocation(line: 483, column: 44, scope: !6247)
!6265 = !DILocation(line: 483, column: 49, scope: !6247)
!6266 = !DILocation(line: 483, column: 8, scope: !6247)
!6267 = !DILocation(line: 483, column: 6, scope: !6247)
!6268 = !DILocation(line: 484, column: 7, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6247, file: !2, line: 484, column: 6)
!6270 = !DILocation(line: 484, column: 6, scope: !6247)
!6271 = !DILocation(line: 485, column: 33, scope: !6269)
!6272 = !DILocation(line: 485, column: 39, scope: !6269)
!6273 = !DILocation(line: 485, column: 44, scope: !6269)
!6274 = !DILocation(line: 485, column: 9, scope: !6269)
!6275 = !DILocation(line: 485, column: 7, scope: !6269)
!6276 = !DILocation(line: 485, column: 3, scope: !6269)
!6277 = !DILocation(line: 487, column: 9, scope: !6247)
!6278 = !DILocation(line: 488, column: 1, scope: !6247)
!6279 = !DILocation(line: 487, column: 2, scope: !6247)
!6280 = distinct !DISubprogram(name: "of_msi_map_get_device_domain", scope: !6224, file: !6224, line: 95, type: !6281, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6283)
!6281 = !DISubroutineType(types: !6282)
!6282 = !{!4553, !364, !340, !340}
!6283 = !{!6284, !6285, !6286}
!6284 = !DILocalVariable(name: "dev", arg: 1, scope: !6280, file: !6224, line: 95, type: !364)
!6285 = !DILocalVariable(name: "id", arg: 2, scope: !6280, file: !6224, line: 96, type: !340)
!6286 = !DILocalVariable(name: "bus_token", arg: 3, scope: !6280, file: !6224, line: 96, type: !340)
!6287 = !DILocation(line: 95, column: 78, scope: !6280)
!6288 = !DILocation(line: 96, column: 11, scope: !6280)
!6289 = !DILocation(line: 96, column: 19, scope: !6280)
!6290 = !DILocation(line: 98, column: 2, scope: !6280)
!6291 = distinct !DISubprogram(name: "iort_get_device_domain", scope: !6237, file: !6237, line: 49, type: !6292, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6294)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!4553, !364, !340, !128}
!6294 = !{!6295, !6296, !6297}
!6295 = !DILocalVariable(name: "dev", arg: 1, scope: !6291, file: !6237, line: 50, type: !364)
!6296 = !DILocalVariable(name: "id", arg: 2, scope: !6291, file: !6237, line: 50, type: !340)
!6297 = !DILocalVariable(name: "bus_token", arg: 3, scope: !6291, file: !6237, line: 50, type: !128)
!6298 = !DILocation(line: 50, column: 17, scope: !6291)
!6299 = !DILocation(line: 50, column: 26, scope: !6291)
!6300 = !DILocation(line: 50, column: 56, scope: !6291)
!6301 = !DILocation(line: 51, column: 3, scope: !6291)
!6302 = distinct !DISubprogram(name: "msi_free_msi_descs_range", scope: !210, file: !210, line: 358, type: !6303, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6305)
!6303 = !DISubroutineType(types: !6304)
!6304 = !{null, !364, !13, !13}
!6305 = !{!6306, !6307, !6308}
!6306 = !DILocalVariable(name: "dev", arg: 1, scope: !6302, file: !210, line: 358, type: !364)
!6307 = !DILocalVariable(name: "first", arg: 2, scope: !6302, file: !210, line: 358, type: !13)
!6308 = !DILocalVariable(name: "last", arg: 3, scope: !6302, file: !210, line: 359, type: !13)
!6309 = !DILocation(line: 358, column: 60, scope: !6302)
!6310 = !DILocation(line: 358, column: 78, scope: !6302)
!6311 = !DILocation(line: 359, column: 23, scope: !6302)
!6312 = !DILocation(line: 361, column: 34, scope: !6302)
!6313 = !DILocation(line: 361, column: 59, scope: !6302)
!6314 = !DILocation(line: 361, column: 66, scope: !6302)
!6315 = !DILocation(line: 361, column: 2, scope: !6302)
!6316 = !DILocation(line: 362, column: 1, scope: !6302)
!6317 = !DISubprogram(name: "msi_domain_free_msi_descs_range", scope: !210, file: !210, line: 347, type: !6318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{null, !364, !13, !13, !13}
!6320 = distinct !DISubprogram(name: "pci_msi_domain_set_desc", scope: !2, file: !2, line: 67, type: !5196, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6321)
!6321 = !{!6322, !6323}
!6322 = !DILocalVariable(name: "arg", arg: 1, scope: !6320, file: !2, line: 67, type: !5149)
!6323 = !DILocalVariable(name: "desc", arg: 2, scope: !6320, file: !2, line: 68, type: !4743)
!6324 = !DILocation(line: 67, column: 55, scope: !6320)
!6325 = !DILocation(line: 68, column: 26, scope: !6320)
!6326 = !DILocation(line: 70, column: 14, scope: !6320)
!6327 = !DILocation(line: 70, column: 2, scope: !6320)
!6328 = !DILocation(line: 70, column: 7, scope: !6320)
!6329 = !DILocation(line: 70, column: 12, scope: !6320)
!6330 = !DILocation(line: 71, column: 41, scope: !6320)
!6331 = !DILocation(line: 71, column: 15, scope: !6320)
!6332 = !DILocation(line: 71, column: 2, scope: !6320)
!6333 = !DILocation(line: 71, column: 7, scope: !6320)
!6334 = !DILocation(line: 71, column: 13, scope: !6320)
!6335 = !DILocation(line: 72, column: 1, scope: !6320)
!6336 = distinct !DISubprogram(name: "pci_msi_domain_calc_hwirq", scope: !2, file: !2, line: 58, type: !6337, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6339)
!6337 = !DISubroutineType(types: !6338)
!6338 = !{!267, !4743}
!6339 = !{!6340, !6341}
!6340 = !DILocalVariable(name: "desc", arg: 1, scope: !6336, file: !2, line: 58, type: !4743)
!6341 = !DILocalVariable(name: "dev", scope: !6336, file: !2, line: 60, type: !272)
!6342 = !DILocation(line: 58, column: 67, scope: !6336)
!6343 = !DILocation(line: 60, column: 2, scope: !6336)
!6344 = !DILocation(line: 60, column: 18, scope: !6336)
!6345 = !DILocation(line: 60, column: 44, scope: !6336)
!6346 = !DILocation(line: 60, column: 24, scope: !6336)
!6347 = !DILocation(line: 62, column: 26, scope: !6336)
!6348 = !DILocation(line: 62, column: 32, scope: !6336)
!6349 = !DILocation(line: 62, column: 9, scope: !6336)
!6350 = !DILocation(line: 63, column: 14, scope: !6336)
!6351 = !DILocation(line: 63, column: 3, scope: !6336)
!6352 = !DILocation(line: 63, column: 19, scope: !6336)
!6353 = !DILocation(line: 62, column: 42, scope: !6336)
!6354 = !DILocation(line: 64, column: 36, scope: !6336)
!6355 = !DILocation(line: 64, column: 41, scope: !6336)
!6356 = !DILocation(line: 64, column: 22, scope: !6336)
!6357 = !DILocation(line: 64, column: 46, scope: !6336)
!6358 = !DILocation(line: 64, column: 4, scope: !6336)
!6359 = !DILocation(line: 64, column: 61, scope: !6336)
!6360 = !DILocation(line: 63, column: 25, scope: !6336)
!6361 = !DILocation(line: 65, column: 1, scope: !6336)
!6362 = !DILocation(line: 62, column: 2, scope: !6336)
!6363 = !DISubprogram(name: "msi_desc_to_pci_dev", scope: !210, file: !210, line: 676, type: !6364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6364 = !DISubroutineType(types: !6365)
!6365 = !{!272, !4743}
!6366 = distinct !DISubprogram(name: "pci_domain_nr", scope: !6367, file: !6367, line: 44, type: !325, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6368)
!6367 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!6368 = !{!6369}
!6369 = !DILocalVariable(name: "bus", arg: 1, scope: !6366, file: !6367, line: 44, type: !283)
!6370 = !DILocation(line: 44, column: 49, scope: !6366)
!6371 = !DILocation(line: 46, column: 24, scope: !6366)
!6372 = !DILocation(line: 46, column: 9, scope: !6366)
!6373 = !DILocation(line: 46, column: 30, scope: !6366)
!6374 = !DILocation(line: 46, column: 2, scope: !6366)
!6375 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !6367, file: !6367, line: 36, type: !6376, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6647)
!6376 = !DISubroutineType(types: !6377)
!6377 = !{!6378, !6645}
!6378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6379, size: 64)
!6379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !6367, line: 15, size: 256, elements: !6380)
!6380 = !{!6381, !6382, !6383, !6643, !6644}
!6381 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6379, file: !6367, line: 16, baseType: !115, size: 32)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6379, file: !6367, line: 17, baseType: !115, size: 32, offset: 32)
!6383 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !6379, file: !6367, line: 19, baseType: !6384, size: 64, offset: 64)
!6384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6385, size: 64)
!6385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !350, line: 367, size: 11200, elements: !6386)
!6386 = !{!6387, !6388, !6389, !6392, !6393, !6394, !6395, !6404, !6422, !6498, !6528, !6552, !6573, !6577, !6586, !6618, !6632, !6636, !6637, !6638, !6639, !6640, !6641, !6642}
!6387 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !6385, file: !350, line: 368, baseType: !340, size: 32)
!6388 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !6385, file: !350, line: 369, baseType: !115, size: 32, offset: 32)
!6389 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !6385, file: !350, line: 370, baseType: !6390, size: 64, offset: 64)
!6390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6391, line: 424, baseType: !265)
!6391 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!6392 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6385, file: !350, line: 371, baseType: !4576, size: 512, offset: 128)
!6393 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !6385, file: !350, line: 372, baseType: !277, size: 128, offset: 640)
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !6385, file: !350, line: 373, baseType: !277, size: 128, offset: 768)
!6395 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6385, file: !350, line: 374, baseType: !6396, size: 32, offset: 896)
!6396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !350, line: 181, size: 32, elements: !6397)
!6397 = !{!6398, !6399, !6400, !6401, !6402, !6403}
!6398 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !6396, file: !350, line: 182, baseType: !340, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6399 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6396, file: !350, line: 183, baseType: !340, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !6396, file: !350, line: 184, baseType: !340, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !6396, file: !350, line: 185, baseType: !340, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !6396, file: !350, line: 186, baseType: !340, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6396, file: !350, line: 187, baseType: !340, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6385, file: !350, line: 375, baseType: !6405, size: 32, offset: 928)
!6405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !350, line: 192, size: 32, elements: !6406)
!6406 = !{!6407, !6408, !6409, !6410, !6411, !6412, !6413, !6414, !6415, !6416, !6417, !6418, !6419, !6420, !6421}
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !6405, file: !350, line: 193, baseType: !340, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !6405, file: !350, line: 194, baseType: !340, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !6405, file: !350, line: 195, baseType: !340, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !6405, file: !350, line: 196, baseType: !340, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6411 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !6405, file: !350, line: 197, baseType: !340, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6412 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !6405, file: !350, line: 198, baseType: !340, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6413 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !6405, file: !350, line: 199, baseType: !340, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!6414 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !6405, file: !350, line: 200, baseType: !340, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!6415 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !6405, file: !350, line: 201, baseType: !340, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!6416 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !6405, file: !350, line: 202, baseType: !340, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!6417 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !6405, file: !350, line: 203, baseType: !340, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!6418 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !6405, file: !350, line: 204, baseType: !340, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!6419 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !6405, file: !350, line: 205, baseType: !340, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!6420 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !6405, file: !350, line: 206, baseType: !340, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!6421 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6405, file: !350, line: 207, baseType: !340, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!6422 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !6385, file: !350, line: 376, baseType: !6423, size: 960, offset: 960)
!6423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !350, line: 238, size: 960, elements: !6424)
!6424 = !{!6425, !6427, !6428, !6436, !6438, !6439, !6440, !6445, !6448}
!6425 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !6423, file: !350, line: 239, baseType: !6426, size: 64)
!6426 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !350, line: 220, baseType: !3183)
!6427 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !6423, file: !350, line: 240, baseType: !115, size: 32, offset: 64)
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6423, file: !350, line: 241, baseType: !6429, size: 32, offset: 96)
!6429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !350, line: 230, size: 32, elements: !6430)
!6430 = !{!6431, !6432, !6433, !6434, !6435}
!6431 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !6429, file: !350, line: 231, baseType: !340, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6432 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !6429, file: !350, line: 232, baseType: !340, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6433 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !6429, file: !350, line: 233, baseType: !340, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6434 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !6429, file: !350, line: 234, baseType: !340, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6435 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6429, file: !350, line: 235, baseType: !340, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6436 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !6423, file: !350, line: 242, baseType: !6437, size: 64, offset: 128)
!6437 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !350, line: 221, baseType: !301)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !6423, file: !350, line: 243, baseType: !447, size: 64, offset: 192)
!6439 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !6423, file: !350, line: 244, baseType: !277, size: 128, offset: 256)
!6440 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !6423, file: !350, line: 245, baseType: !6441, size: 320, offset: 384)
!6441 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !350, line: 222, baseType: !6442)
!6442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !6443)
!6443 = !{!6444}
!6444 = !DISubrange(count: 40)
!6445 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !6423, file: !350, line: 246, baseType: !6446, size: 160, offset: 704)
!6446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !350, line: 223, baseType: !6447)
!6447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !3483)
!6448 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !6423, file: !350, line: 247, baseType: !6449, size: 64, offset: 896)
!6449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6450, size: 64)
!6450 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !6391, line: 908, size: 192, elements: !6451)
!6451 = !{!6452, !6454, !6459, !6465, !6472, !6478, !6484, !6492}
!6452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6450, file: !6391, line: 909, baseType: !6453, size: 32)
!6453 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6391, line: 644, baseType: !340)
!6454 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !6450, file: !6391, line: 913, baseType: !6455, size: 128)
!6455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6450, file: !6391, line: 910, size: 128, elements: !6456)
!6456 = !{!6457, !6458}
!6457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6455, file: !6391, line: 911, baseType: !6453, size: 32)
!6458 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6455, file: !6391, line: 912, baseType: !301, size: 64, offset: 64)
!6459 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !6450, file: !6391, line: 919, baseType: !6460, size: 128)
!6460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6450, file: !6391, line: 915, size: 128, elements: !6461)
!6461 = !{!6462, !6463, !6464}
!6462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6460, file: !6391, line: 916, baseType: !6453, size: 32)
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6460, file: !6391, line: 917, baseType: !340, size: 32, offset: 32)
!6464 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !6460, file: !6391, line: 918, baseType: !447, size: 64, offset: 64)
!6465 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6450, file: !6391, line: 925, baseType: !6466, size: 128)
!6466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6450, file: !6391, line: 921, size: 128, elements: !6467)
!6467 = !{!6468, !6469, !6470}
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6466, file: !6391, line: 922, baseType: !6453, size: 32)
!6469 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6466, file: !6391, line: 923, baseType: !340, size: 32, offset: 32)
!6470 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !6466, file: !6391, line: 924, baseType: !6471, size: 64, offset: 64)
!6471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!6472 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !6450, file: !6391, line: 931, baseType: !6473, size: 128)
!6473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6450, file: !6391, line: 927, size: 128, elements: !6474)
!6474 = !{!6475, !6476, !6477}
!6475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6473, file: !6391, line: 928, baseType: !6453, size: 32)
!6476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6473, file: !6391, line: 929, baseType: !340, size: 32, offset: 32)
!6477 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !6473, file: !6391, line: 930, baseType: !6449, size: 64, offset: 64)
!6478 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !6450, file: !6391, line: 937, baseType: !6479, size: 128)
!6479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6450, file: !6391, line: 933, size: 128, elements: !6480)
!6480 = !{!6481, !6482, !6483}
!6481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6479, file: !6391, line: 934, baseType: !6453, size: 32)
!6482 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !6479, file: !6391, line: 935, baseType: !6453, size: 32, offset: 32)
!6483 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !6479, file: !6391, line: 936, baseType: !6390, size: 64, offset: 64)
!6484 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !6450, file: !6391, line: 944, baseType: !6485, size: 192)
!6485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6450, file: !6391, line: 939, size: 192, elements: !6486)
!6486 = !{!6487, !6488, !6489, !6491}
!6487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6485, file: !6391, line: 940, baseType: !6453, size: 32)
!6488 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !6485, file: !6391, line: 941, baseType: !340, size: 32, offset: 32)
!6489 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !6485, file: !6391, line: 942, baseType: !6490, size: 64, offset: 64)
!6490 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6391, line: 128, baseType: !301)
!6491 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !6485, file: !6391, line: 943, baseType: !340, size: 32, offset: 128)
!6492 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !6450, file: !6391, line: 950, baseType: !6493, size: 96)
!6493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6450, file: !6391, line: 946, size: 96, elements: !6494)
!6494 = !{!6495, !6496, !6497}
!6495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6493, file: !6391, line: 947, baseType: !6453, size: 32)
!6496 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !6493, file: !6391, line: 948, baseType: !340, size: 32, offset: 32)
!6497 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !6493, file: !6391, line: 949, baseType: !340, size: 32, offset: 64)
!6498 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !6385, file: !350, line: 377, baseType: !6499, size: 1408, offset: 1920)
!6499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !350, line: 280, size: 1408, elements: !6500)
!6500 = !{!6501, !6502, !6512, !6527}
!6501 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6499, file: !350, line: 281, baseType: !115, size: 32)
!6502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6499, file: !350, line: 282, baseType: !6503, size: 32, offset: 32)
!6503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !350, line: 259, size: 32, elements: !6504)
!6504 = !{!6505, !6506, !6507, !6508, !6509, !6510, !6511}
!6505 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !6503, file: !350, line: 260, baseType: !340, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6506 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !6503, file: !350, line: 261, baseType: !340, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6507 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !6503, file: !350, line: 262, baseType: !340, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6508 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !6503, file: !350, line: 263, baseType: !340, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6509 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !6503, file: !350, line: 264, baseType: !340, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6510 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !6503, file: !350, line: 265, baseType: !340, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6511 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6503, file: !350, line: 266, baseType: !340, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!6512 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !6499, file: !350, line: 283, baseType: !6513, size: 1280, offset: 64)
!6513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6514, size: 1280, elements: !6525)
!6514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !350, line: 269, size: 256, elements: !6515)
!6515 = !{!6516, !6522, !6523, !6524}
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6514, file: !350, line: 274, baseType: !6517, size: 8)
!6517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6514, file: !350, line: 270, size: 8, elements: !6518)
!6518 = !{!6519, !6520, !6521}
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !6517, file: !350, line: 271, baseType: !409, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6520 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !6517, file: !350, line: 272, baseType: !409, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6521 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6517, file: !350, line: 273, baseType: !409, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6522 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !6514, file: !350, line: 275, baseType: !115, size: 32, offset: 32)
!6523 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !6514, file: !350, line: 276, baseType: !115, size: 32, offset: 64)
!6524 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !6514, file: !350, line: 277, baseType: !277, size: 128, offset: 128)
!6525 = !{!6526}
!6526 = !DISubrange(count: 5)
!6527 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !6499, file: !350, line: 284, baseType: !409, size: 8, offset: 1344)
!6528 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !6385, file: !350, line: 378, baseType: !6529, size: 640, offset: 3328)
!6529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !350, line: 330, size: 640, elements: !6530)
!6530 = !{!6531, !6532, !6533, !6534, !6535, !6540, !6549, !6550, !6551}
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !6529, file: !350, line: 331, baseType: !6390, size: 64)
!6532 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !6529, file: !350, line: 332, baseType: !301, size: 64, offset: 64)
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !6529, file: !350, line: 333, baseType: !301, size: 64, offset: 128)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !6529, file: !350, line: 334, baseType: !277, size: 128, offset: 192)
!6535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6529, file: !350, line: 335, baseType: !6536, size: 8, offset: 320)
!6536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !350, line: 320, size: 8, elements: !6537)
!6537 = !{!6538, !6539}
!6538 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !6536, file: !350, line: 321, baseType: !409, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6539 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !6536, file: !350, line: 322, baseType: !409, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !6529, file: !350, line: 336, baseType: !6541, size: 128, offset: 384)
!6541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !350, line: 325, size: 128, elements: !6542)
!6542 = !{!6543, !6548}
!6543 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6541, file: !350, line: 326, baseType: !6544, size: 64)
!6544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6545, size: 64)
!6545 = !DISubroutineType(types: !6546)
!6546 = !{null, !6547}
!6547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6541, size: 64)
!6548 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6541, file: !350, line: 327, baseType: !364, size: 64, offset: 64)
!6549 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !6529, file: !350, line: 337, baseType: !4463, size: 64, offset: 512)
!6550 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !6529, file: !350, line: 338, baseType: !115, size: 32, offset: 576)
!6551 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !6529, file: !350, line: 339, baseType: !115, size: 32, offset: 608)
!6552 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !6385, file: !350, line: 379, baseType: !6553, size: 192, offset: 3968)
!6553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !350, line: 312, size: 192, elements: !6554)
!6554 = !{!6555, !6556, !6560, !6561}
!6555 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6553, file: !350, line: 313, baseType: !115, size: 32)
!6556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6553, file: !350, line: 314, baseType: !6557, size: 8, offset: 32)
!6557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !350, line: 298, size: 8, elements: !6558)
!6558 = !{!6559}
!6559 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6557, file: !350, line: 299, baseType: !409, size: 8, flags: DIFlagBitField, extraData: i64 0)
!6560 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !6553, file: !350, line: 315, baseType: !115, size: 32, offset: 64)
!6561 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !6553, file: !350, line: 316, baseType: !6562, size: 64, offset: 128)
!6562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6563, size: 64)
!6563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !350, line: 302, size: 64, elements: !6564)
!6564 = !{!6565, !6570, !6571, !6572}
!6565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6563, file: !350, line: 306, baseType: !6566, size: 8)
!6566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6563, file: !350, line: 303, size: 8, elements: !6567)
!6567 = !{!6568, !6569}
!6568 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !6566, file: !350, line: 304, baseType: !409, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6569 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6566, file: !350, line: 305, baseType: !409, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6570 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !6563, file: !350, line: 307, baseType: !409, size: 8, offset: 8)
!6571 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !6563, file: !350, line: 308, baseType: !409, size: 8, offset: 16)
!6572 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !6563, file: !350, line: 309, baseType: !115, size: 32, offset: 32)
!6573 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !6385, file: !350, line: 380, baseType: !6574, size: 64, offset: 4160)
!6574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !350, line: 212, size: 64, elements: !6575)
!6575 = !{!6576}
!6576 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6574, file: !350, line: 213, baseType: !348, size: 64)
!6577 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6385, file: !350, line: 381, baseType: !6578, size: 384, offset: 4224)
!6578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !350, line: 357, size: 384, elements: !6579)
!6579 = !{!6580, !6583, !6584, !6585}
!6580 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !6578, file: !350, line: 358, baseType: !6581, size: 64)
!6581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6582, size: 64)
!6582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6450)
!6583 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !6578, file: !350, line: 359, baseType: !277, size: 128, offset: 64)
!6584 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !6578, file: !350, line: 360, baseType: !6581, size: 64, offset: 192)
!6585 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !6578, file: !350, line: 361, baseType: !277, size: 128, offset: 256)
!6586 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !6385, file: !350, line: 382, baseType: !6587, size: 64, offset: 4608)
!6587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6588, size: 64)
!6588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !350, line: 124, size: 1216, elements: !6589)
!6589 = !{!6590, !6591, !6592, !6597, !6601, !6605, !6606, !6607}
!6590 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !6588, file: !350, line: 125, baseType: !4386, size: 64)
!6591 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !6588, file: !350, line: 126, baseType: !277, size: 128, offset: 64)
!6592 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !6588, file: !350, line: 127, baseType: !6593, size: 64, offset: 192)
!6593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6594, size: 64)
!6594 = !DISubroutineType(types: !6595)
!6595 = !{!862, !308, !6596}
!6596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!6597 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !6588, file: !350, line: 128, baseType: !6598, size: 64, offset: 256)
!6598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6599, size: 64)
!6599 = !DISubroutineType(types: !6600)
!6600 = !{!115, !6384, !4386}
!6601 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !6588, file: !350, line: 129, baseType: !6602, size: 64, offset: 320)
!6602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6603, size: 64)
!6603 = !DISubroutineType(types: !6604)
!6604 = !{null, !6384}
!6605 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !6588, file: !350, line: 130, baseType: !4314, size: 64, offset: 384)
!6606 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !6588, file: !350, line: 131, baseType: !4314, size: 64, offset: 448)
!6607 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !6588, file: !350, line: 132, baseType: !6608, size: 704, offset: 512)
!6608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !350, line: 110, size: 704, elements: !6609)
!6609 = !{!6610, !6611, !6615, !6616, !6617}
!6610 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !6608, file: !350, line: 111, baseType: !368, size: 512)
!6611 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !6608, file: !350, line: 112, baseType: !6612, size: 64, offset: 512)
!6612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6613, size: 64)
!6613 = !DISubroutineType(types: !6614)
!6614 = !{!115, !6384}
!6615 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !6608, file: !350, line: 113, baseType: !6602, size: 64, offset: 576)
!6616 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6608, file: !350, line: 114, baseType: !862, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!6617 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !6608, file: !350, line: 115, baseType: !862, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!6618 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !6385, file: !350, line: 383, baseType: !6619, size: 64, offset: 4672)
!6619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6620, size: 64)
!6620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !350, line: 140, size: 256, elements: !6621)
!6621 = !{!6622, !6623, !6627, !6631}
!6622 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !6620, file: !350, line: 141, baseType: !6384, size: 64)
!6623 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !6620, file: !350, line: 142, baseType: !6624, size: 64, offset: 64)
!6624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6625, size: 64)
!6625 = !DISubroutineType(types: !6626)
!6626 = !{!115, !6384, !340}
!6627 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !6620, file: !350, line: 143, baseType: !6628, size: 64, offset: 128)
!6628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6629, size: 64)
!6629 = !DISubroutineType(types: !6630)
!6630 = !{null, !6384, !340}
!6631 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !6620, file: !350, line: 144, baseType: !6602, size: 64, offset: 192)
!6632 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !6385, file: !350, line: 384, baseType: !6633, size: 64, offset: 4736)
!6633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6634, size: 64)
!6634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6635)
!6635 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !350, line: 364, flags: DIFlagFwdDecl)
!6636 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !6385, file: !350, line: 385, baseType: !265, size: 64, offset: 4800)
!6637 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6385, file: !350, line: 386, baseType: !365, size: 5824, offset: 4864)
!6638 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !6385, file: !350, line: 387, baseType: !13, size: 32, offset: 10688)
!6639 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !6385, file: !350, line: 388, baseType: !13, size: 32, offset: 10720)
!6640 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !6385, file: !350, line: 389, baseType: !277, size: 128, offset: 10752)
!6641 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !6385, file: !350, line: 390, baseType: !782, size: 256, offset: 10880)
!6642 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !6385, file: !350, line: 391, baseType: !6602, size: 64, offset: 11136)
!6643 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !6379, file: !6367, line: 22, baseType: !265, size: 64, offset: 128)
!6644 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6379, file: !6367, line: 25, baseType: !265, size: 64, offset: 192)
!6645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6646, size: 64)
!6646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!6647 = !{!6648}
!6648 = !DILocalVariable(name: "bus", arg: 1, scope: !6375, file: !6367, line: 36, type: !6645)
!6649 = !DILocation(line: 36, column: 72, scope: !6375)
!6650 = !DILocation(line: 38, column: 9, scope: !6375)
!6651 = !DILocation(line: 38, column: 14, scope: !6375)
!6652 = !DILocation(line: 38, column: 2, scope: !6375)
!6653 = distinct !DISubprogram(name: "pci_msi_domain_write_msg", scope: !2, file: !2, line: 40, type: !4933, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6654)
!6654 = !{!6655, !6656, !6657}
!6655 = !DILocalVariable(name: "irq_data", arg: 1, scope: !6653, file: !2, line: 40, type: !4729)
!6656 = !DILocalVariable(name: "msg", arg: 2, scope: !6653, file: !2, line: 40, type: !4935)
!6657 = !DILocalVariable(name: "desc", scope: !6653, file: !2, line: 42, type: !4743)
!6658 = !DILocation(line: 40, column: 55, scope: !6653)
!6659 = !DILocation(line: 40, column: 81, scope: !6653)
!6660 = !DILocation(line: 42, column: 2, scope: !6653)
!6661 = !DILocation(line: 42, column: 19, scope: !6653)
!6662 = !DILocation(line: 42, column: 48, scope: !6653)
!6663 = !DILocation(line: 42, column: 26, scope: !6653)
!6664 = !DILocation(line: 48, column: 6, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6653, file: !2, line: 48, column: 6)
!6666 = !DILocation(line: 48, column: 12, scope: !6665)
!6667 = !DILocation(line: 48, column: 19, scope: !6665)
!6668 = !DILocation(line: 48, column: 29, scope: !6665)
!6669 = !DILocation(line: 48, column: 16, scope: !6665)
!6670 = !DILocation(line: 48, column: 6, scope: !6653)
!6671 = !DILocation(line: 49, column: 23, scope: !6665)
!6672 = !DILocation(line: 49, column: 29, scope: !6665)
!6673 = !DILocation(line: 49, column: 3, scope: !6665)
!6674 = !DILocation(line: 50, column: 1, scope: !6653)
!6675 = distinct !DISubprogram(name: "irq_data_get_msi_desc", scope: !155, file: !155, line: 854, type: !6676, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6678)
!6676 = !DISubroutineType(types: !6677)
!6677 = !{!4743, !4729}
!6678 = !{!6679}
!6679 = !DILocalVariable(name: "d", arg: 1, scope: !6675, file: !155, line: 854, type: !4729)
!6680 = !DILocation(line: 854, column: 71, scope: !6675)
!6681 = !DILocation(line: 856, column: 9, scope: !6675)
!6682 = !DILocation(line: 856, column: 12, scope: !6675)
!6683 = !DILocation(line: 856, column: 20, scope: !6675)
!6684 = !DILocation(line: 856, column: 2, scope: !6675)
!6685 = !DISubprogram(name: "__pci_write_msi_msg", scope: !210, file: !210, line: 679, type: !6686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6686 = !DISubroutineType(types: !6687)
!6687 = !{null, !4743, !4935}
!6688 = !DISubprogram(name: "msi_match_device_irq_domain", scope: !210, file: !210, line: 605, type: !6689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6689 = !DISubroutineType(types: !6690)
!6690 = !{!862, !364, !13, !128}
!6691 = distinct !DISubprogram(name: "pci_irq_mask_msi", scope: !2, file: !2, line: 151, type: !4895, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6692)
!6692 = !{!6693, !6694}
!6693 = !DILocalVariable(name: "data", arg: 1, scope: !6691, file: !2, line: 151, type: !4729)
!6694 = !DILocalVariable(name: "desc", scope: !6691, file: !2, line: 153, type: !4743)
!6695 = !DILocation(line: 151, column: 47, scope: !6691)
!6696 = !DILocation(line: 153, column: 2, scope: !6691)
!6697 = !DILocation(line: 153, column: 19, scope: !6691)
!6698 = !DILocation(line: 153, column: 48, scope: !6691)
!6699 = !DILocation(line: 153, column: 26, scope: !6691)
!6700 = !DILocation(line: 155, column: 15, scope: !6691)
!6701 = !DILocation(line: 155, column: 21, scope: !6691)
!6702 = !DILocation(line: 155, column: 2, scope: !6691)
!6703 = !DILocation(line: 156, column: 1, scope: !6691)
!6704 = distinct !DISubprogram(name: "pci_irq_unmask_msi", scope: !2, file: !2, line: 158, type: !4895, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6705)
!6705 = !{!6706, !6707}
!6706 = !DILocalVariable(name: "data", arg: 1, scope: !6704, file: !2, line: 158, type: !4729)
!6707 = !DILocalVariable(name: "desc", scope: !6704, file: !2, line: 160, type: !4743)
!6708 = !DILocation(line: 158, column: 49, scope: !6704)
!6709 = !DILocation(line: 160, column: 2, scope: !6704)
!6710 = !DILocation(line: 160, column: 19, scope: !6704)
!6711 = !DILocation(line: 160, column: 48, scope: !6704)
!6712 = !DILocation(line: 160, column: 26, scope: !6704)
!6713 = !DILocation(line: 162, column: 17, scope: !6704)
!6714 = !DILocation(line: 162, column: 23, scope: !6704)
!6715 = !DILocation(line: 162, column: 2, scope: !6704)
!6716 = !DILocation(line: 163, column: 1, scope: !6704)
!6717 = distinct !DISubprogram(name: "pci_device_domain_set_desc", scope: !2, file: !2, line: 145, type: !5196, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6718)
!6718 = !{!6719, !6720}
!6719 = !DILocalVariable(name: "arg", arg: 1, scope: !6717, file: !2, line: 145, type: !5149)
!6720 = !DILocalVariable(name: "desc", arg: 2, scope: !6717, file: !2, line: 145, type: !4743)
!6721 = !DILocation(line: 145, column: 58, scope: !6717)
!6722 = !DILocation(line: 145, column: 80, scope: !6717)
!6723 = !DILocation(line: 147, column: 14, scope: !6717)
!6724 = !DILocation(line: 147, column: 2, scope: !6717)
!6725 = !DILocation(line: 147, column: 7, scope: !6717)
!6726 = !DILocation(line: 147, column: 12, scope: !6717)
!6727 = !DILocation(line: 148, column: 15, scope: !6717)
!6728 = !DILocation(line: 148, column: 21, scope: !6717)
!6729 = !DILocation(line: 148, column: 2, scope: !6717)
!6730 = !DILocation(line: 148, column: 7, scope: !6717)
!6731 = !DILocation(line: 148, column: 13, scope: !6717)
!6732 = !DILocation(line: 149, column: 1, scope: !6717)
!6733 = distinct !DISubprogram(name: "pci_msi_mask", scope: !247, file: !247, line: 14, type: !6734, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6736)
!6734 = !DISubroutineType(types: !6735)
!6735 = !{null, !4743, !340}
!6736 = !{!6737, !6738}
!6737 = !DILocalVariable(name: "desc", arg: 1, scope: !6733, file: !247, line: 14, type: !4743)
!6738 = !DILocalVariable(name: "mask", arg: 2, scope: !6733, file: !247, line: 14, type: !340)
!6739 = !DILocation(line: 14, column: 50, scope: !6733)
!6740 = !DILocation(line: 14, column: 60, scope: !6733)
!6741 = !DILocation(line: 16, column: 22, scope: !6733)
!6742 = !DILocation(line: 16, column: 31, scope: !6733)
!6743 = !DILocation(line: 16, column: 2, scope: !6733)
!6744 = !DILocation(line: 17, column: 1, scope: !6733)
!6745 = !DISubprogram(name: "pci_msi_update_mask", scope: !247, file: !247, line: 12, type: !6746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6746 = !DISubroutineType(types: !6747)
!6747 = !{null, !4743, !340, !340}
!6748 = distinct !DISubprogram(name: "pci_msi_unmask", scope: !247, file: !247, line: 19, type: !6734, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6749)
!6749 = !{!6750, !6751}
!6750 = !DILocalVariable(name: "desc", arg: 1, scope: !6748, file: !247, line: 19, type: !4743)
!6751 = !DILocalVariable(name: "mask", arg: 2, scope: !6748, file: !247, line: 19, type: !340)
!6752 = !DILocation(line: 19, column: 52, scope: !6748)
!6753 = !DILocation(line: 19, column: 62, scope: !6748)
!6754 = !DILocation(line: 21, column: 22, scope: !6748)
!6755 = !DILocation(line: 21, column: 28, scope: !6748)
!6756 = !DILocation(line: 21, column: 2, scope: !6748)
!6757 = !DILocation(line: 22, column: 1, scope: !6748)
!6758 = distinct !DISubprogram(name: "pci_irq_mask_msix", scope: !2, file: !2, line: 195, type: !4895, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6759)
!6759 = !{!6760}
!6760 = !DILocalVariable(name: "data", arg: 1, scope: !6758, file: !2, line: 195, type: !4729)
!6761 = !DILocation(line: 195, column: 48, scope: !6758)
!6762 = !DILocation(line: 197, column: 38, scope: !6758)
!6763 = !DILocation(line: 197, column: 16, scope: !6758)
!6764 = !DILocation(line: 197, column: 2, scope: !6758)
!6765 = !DILocation(line: 198, column: 1, scope: !6758)
!6766 = distinct !DISubprogram(name: "pci_irq_unmask_msix", scope: !2, file: !2, line: 200, type: !4895, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6767)
!6767 = !{!6768}
!6768 = !DILocalVariable(name: "data", arg: 1, scope: !6766, file: !2, line: 200, type: !4729)
!6769 = !DILocation(line: 200, column: 50, scope: !6766)
!6770 = !DILocation(line: 202, column: 40, scope: !6766)
!6771 = !DILocation(line: 202, column: 18, scope: !6766)
!6772 = !DILocation(line: 202, column: 2, scope: !6766)
!6773 = !DILocation(line: 203, column: 1, scope: !6766)
!6774 = distinct !DISubprogram(name: "pci_msix_prepare_desc", scope: !2, file: !2, line: 205, type: !5192, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6775)
!6775 = !{!6776, !6777, !6778, !6779}
!6776 = !DILocalVariable(name: "domain", arg: 1, scope: !6774, file: !2, line: 205, type: !4553)
!6777 = !DILocalVariable(name: "arg", arg: 2, scope: !6774, file: !2, line: 205, type: !5149)
!6778 = !DILocalVariable(name: "desc", arg: 3, scope: !6774, file: !2, line: 206, type: !4743)
!6779 = !DILocalVariable(name: "__mptr", scope: !6780, file: !2, line: 210, type: !265)
!6780 = distinct !DILexicalBlock(scope: !6781, file: !2, line: 210, column: 25)
!6781 = distinct !DILexicalBlock(scope: !6774, file: !2, line: 209, column: 6)
!6782 = !DILocation(line: 205, column: 54, scope: !6774)
!6783 = !DILocation(line: 205, column: 80, scope: !6774)
!6784 = !DILocation(line: 206, column: 24, scope: !6774)
!6785 = !DILocation(line: 209, column: 7, scope: !6781)
!6786 = !DILocation(line: 209, column: 13, scope: !6781)
!6787 = !DILocation(line: 209, column: 17, scope: !6781)
!6788 = !DILocation(line: 209, column: 6, scope: !6774)
!6789 = !DILocation(line: 210, column: 25, scope: !6780)
!6790 = !DILocation(line: 210, column: 25, scope: !6781)
!6791 = !DILocation(line: 210, column: 48, scope: !6781)
!6792 = !DILocation(line: 210, column: 3, scope: !6781)
!6793 = !DILocation(line: 211, column: 1, scope: !6774)
!6794 = distinct !DISubprogram(name: "pci_msix_mask", scope: !247, file: !247, line: 43, type: !6795, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6797)
!6795 = !DISubroutineType(types: !6796)
!6796 = !{null, !4743}
!6797 = !{!6798}
!6798 = !DILocalVariable(name: "desc", arg: 1, scope: !6794, file: !247, line: 43, type: !4743)
!6799 = !DILocation(line: 43, column: 51, scope: !6794)
!6800 = !DILocation(line: 45, column: 2, scope: !6794)
!6801 = !DILocation(line: 45, column: 8, scope: !6794)
!6802 = !DILocation(line: 45, column: 12, scope: !6794)
!6803 = !DILocation(line: 45, column: 22, scope: !6794)
!6804 = !DILocation(line: 46, column: 29, scope: !6794)
!6805 = !DILocation(line: 46, column: 35, scope: !6794)
!6806 = !DILocation(line: 46, column: 41, scope: !6794)
!6807 = !DILocation(line: 46, column: 45, scope: !6794)
!6808 = !DILocation(line: 46, column: 2, scope: !6794)
!6809 = !DILocation(line: 48, column: 8, scope: !6794)
!6810 = !DILocation(line: 48, column: 14, scope: !6794)
!6811 = !DILocation(line: 48, column: 18, scope: !6794)
!6812 = !DILocation(line: 48, column: 2, scope: !6794)
!6813 = !DILocation(line: 49, column: 1, scope: !6794)
!6814 = distinct !DISubprogram(name: "pci_msix_write_vector_ctrl", scope: !247, file: !247, line: 35, type: !6734, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6815)
!6815 = !{!6816, !6817, !6818}
!6816 = !DILocalVariable(name: "desc", arg: 1, scope: !6814, file: !247, line: 35, type: !4743)
!6817 = !DILocalVariable(name: "ctrl", arg: 2, scope: !6814, file: !247, line: 35, type: !340)
!6818 = !DILocalVariable(name: "desc_addr", scope: !6814, file: !247, line: 37, type: !265)
!6819 = !DILocation(line: 35, column: 64, scope: !6814)
!6820 = !DILocation(line: 35, column: 74, scope: !6814)
!6821 = !DILocation(line: 37, column: 2, scope: !6814)
!6822 = !DILocation(line: 37, column: 16, scope: !6814)
!6823 = !DILocation(line: 37, column: 47, scope: !6814)
!6824 = !DILocation(line: 37, column: 28, scope: !6814)
!6825 = !DILocation(line: 39, column: 6, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6814, file: !247, line: 39, column: 6)
!6827 = !DILocation(line: 39, column: 12, scope: !6826)
!6828 = !DILocation(line: 39, column: 16, scope: !6826)
!6829 = !DILocation(line: 39, column: 27, scope: !6826)
!6830 = !DILocation(line: 39, column: 6, scope: !6814)
!6831 = !DILocation(line: 40, column: 10, scope: !6826)
!6832 = !DILocation(line: 40, column: 16, scope: !6826)
!6833 = !DILocation(line: 40, column: 26, scope: !6826)
!6834 = !DILocation(line: 40, column: 3, scope: !6826)
!6835 = !DILocation(line: 41, column: 1, scope: !6814)
!6836 = distinct !DISubprogram(name: "readl", scope: !6837, file: !6837, line: 58, type: !6838, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6843)
!6837 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!6838 = !DISubroutineType(types: !6839)
!6839 = !{!13, !6840}
!6840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6841, size: 64)
!6841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6842)
!6842 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6843 = !{!6844, !6845}
!6844 = !DILocalVariable(name: "addr", arg: 1, scope: !6836, file: !6837, line: 58, type: !6840)
!6845 = !DILocalVariable(name: "ret", scope: !6836, file: !6837, line: 58, type: !13)
!6846 = !DILocation(line: 58, column: 1, scope: !6836)
!6847 = !{i64 2153248665}
!6848 = distinct !DISubprogram(name: "pci_msix_desc_addr", scope: !247, file: !247, line: 24, type: !6849, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6851)
!6849 = !DISubroutineType(types: !6850)
!6850 = !{!265, !4743}
!6851 = !{!6852}
!6852 = !DILocalVariable(name: "desc", arg: 1, scope: !6848, file: !247, line: 24, type: !4743)
!6853 = !DILocation(line: 24, column: 65, scope: !6848)
!6854 = !DILocation(line: 26, column: 9, scope: !6848)
!6855 = !DILocation(line: 26, column: 15, scope: !6848)
!6856 = !DILocation(line: 26, column: 19, scope: !6848)
!6857 = !DILocation(line: 26, column: 31, scope: !6848)
!6858 = !DILocation(line: 26, column: 37, scope: !6848)
!6859 = !DILocation(line: 26, column: 47, scope: !6848)
!6860 = !DILocation(line: 26, column: 29, scope: !6848)
!6861 = !DILocation(line: 26, column: 2, scope: !6848)
!6862 = distinct !DISubprogram(name: "writel", scope: !6837, file: !6837, line: 66, type: !6863, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6866)
!6863 = !DISubroutineType(types: !6864)
!6864 = !{null, !13, !6865}
!6865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6842, size: 64)
!6866 = !{!6867, !6868}
!6867 = !DILocalVariable(name: "val", arg: 1, scope: !6862, file: !6837, line: 66, type: !13)
!6868 = !DILocalVariable(name: "addr", arg: 2, scope: !6862, file: !6837, line: 66, type: !6865)
!6869 = !DILocation(line: 66, column: 1, scope: !6862)
!6870 = !{i64 2153251058}
!6871 = distinct !DISubprogram(name: "pci_msix_unmask", scope: !247, file: !247, line: 51, type: !6795, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6872)
!6872 = !{!6873}
!6873 = !DILocalVariable(name: "desc", arg: 1, scope: !6871, file: !247, line: 51, type: !4743)
!6874 = !DILocation(line: 51, column: 53, scope: !6871)
!6875 = !DILocation(line: 53, column: 2, scope: !6871)
!6876 = !DILocation(line: 53, column: 8, scope: !6871)
!6877 = !DILocation(line: 53, column: 12, scope: !6871)
!6878 = !DILocation(line: 53, column: 22, scope: !6871)
!6879 = !DILocation(line: 54, column: 29, scope: !6871)
!6880 = !DILocation(line: 54, column: 35, scope: !6871)
!6881 = !DILocation(line: 54, column: 41, scope: !6871)
!6882 = !DILocation(line: 54, column: 45, scope: !6871)
!6883 = !DILocation(line: 54, column: 2, scope: !6871)
!6884 = !DILocation(line: 55, column: 1, scope: !6871)
!6885 = !DISubprogram(name: "msix_prepare_msi_desc", scope: !247, file: !247, line: 87, type: !6886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6886 = !DISubroutineType(types: !6887)
!6887 = !{null, !272, !4743}
!6888 = distinct !DISubprogram(name: "to_of_node", scope: !4569, file: !4569, line: 466, type: !6889, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6891)
!6889 = !DISubroutineType(types: !6890)
!6890 = !{!4567, !4598}
!6891 = !{!6892}
!6892 = !DILocalVariable(name: "fwnode", arg: 1, scope: !6888, file: !4569, line: 466, type: !4598)
!6893 = !DILocation(line: 466, column: 74, scope: !6888)
!6894 = !DILocation(line: 468, column: 2, scope: !6888)
