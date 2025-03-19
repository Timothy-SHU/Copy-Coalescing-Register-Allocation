; ModuleID = 'drivers/usb/core/hcd-pci.c'
source_filename = "drivers/usb/core/hcd-pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_hcd_pci_probe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_hcd_pci_probe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_hcd_pci_remove: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_hcd_pci_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_hcd_pci_shutdown: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_hcd_pci_shutdown ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_hcd_pci_pm_ops: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_hcd_pci_pm_ops ; .previous"

%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i64, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i64, i32, i16, i32, ptr, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i64] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i64, %struct.atomic_t, i8, %union.anon.14, i64 }
%union.anon.14 = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, i32, [2 x i32], [4 x i8], ptr, ptr, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, [4 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [3 x i8], i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Found HC with no IRQ. Check BIOS/PCI %s setup!\0A\00", align 1, !dbg !0
@iomem_resource = external dso_local global %struct.resource, align 8
@ioport_resource = external dso_local global %struct.resource, align 8
@companions_rwsem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @companions_rwsem, i64 24), ptr getelementptr (i8, ptr @companions_rwsem, i64 24) } }, align 8, !dbg !7
@.str.1 = private unnamed_addr constant [18 x i8] c"init %s fail, %d\0A\00", align 1, !dbg !4935
@__UNIQUE_ID___addressable_usb_hcd_pci_probe296 = internal global ptr @usb_hcd_pci_probe, section ".discard.addressable", align 8, !dbg !4940
@__UNIQUE_ID___addressable_usb_hcd_pci_remove297 = internal global ptr @usb_hcd_pci_remove, section ".discard.addressable", align 8, !dbg !4942
@__UNIQUE_ID___addressable_usb_hcd_pci_shutdown298 = internal global ptr @usb_hcd_pci_shutdown, section ".discard.addressable", align 8, !dbg !4944
@usb_hcd_pci_pm_ops = hidden constant %struct.dev_pm_ops { ptr null, ptr null, ptr @hcd_pci_suspend, ptr @hcd_pci_resume, ptr @hcd_pci_suspend, ptr @hcd_pci_resume, ptr @hcd_pci_suspend, ptr @hcd_pci_restore, ptr null, ptr null, ptr null, ptr null, ptr @hcd_pci_poweroff_late, ptr null, ptr @hcd_pci_suspend_noirq, ptr @hcd_pci_resume_noirq, ptr @check_root_hub_suspended, ptr null, ptr @hcd_pci_suspend_noirq, ptr @hcd_pci_resume_noirq, ptr @hcd_pci_runtime_suspend, ptr @hcd_pci_runtime_resume, ptr null }, align 8, !dbg !4946
@__UNIQUE_ID___addressable_usb_hcd_pci_pm_ops299 = internal global ptr @usb_hcd_pci_pm_ops, section ".discard.addressable", align 8, !dbg !4948
@__func__.suspend_common = private unnamed_addr constant [15 x i8] c"suspend_common\00", align 1, !dbg !4950
@.str.2 = private unnamed_addr constant [35 x i8] c"can't re-enable after resume, %d!\0A\00", align 1, !dbg !4955
@.str.3 = private unnamed_addr constant [27 x i8] c"PCI post-resume error %d!\0A\00", align 1, !dbg !4960
@__func__.hcd_pci_suspend_noirq = private unnamed_addr constant [22 x i8] c"hcd_pci_suspend_noirq\00", align 1, !dbg !4965
@.str.4 = private unnamed_addr constant [27 x i8] c"Root hub is not suspended\0A\00", align 1, !dbg !4970
@.str.5 = private unnamed_addr constant [37 x i8] c"Secondary root hub is not suspended\0A\00", align 1, !dbg !4972
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_usb_hcd_pci_probe296, ptr @__UNIQUE_ID___addressable_usb_hcd_pci_remove297, ptr @__UNIQUE_ID___addressable_usb_hcd_pci_shutdown298, ptr @__UNIQUE_ID___addressable_usb_hcd_pci_pm_ops299], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @usb_hcd_pci_probe(ptr noundef %dev, ptr noundef %driver) #0 align 16 !dbg !4986 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %driver.addr = alloca ptr, align 8
  %hcd = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %hcd_irq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %region = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5590, metadata !DIExpression()), !dbg !5601
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !5591, metadata !DIExpression()), !dbg !5602
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcd) #10, !dbg !5603
  call void @llvm.dbg.declare(metadata ptr %hcd, metadata !5592, metadata !DIExpression()), !dbg !5604
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10, !dbg !5605
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5593, metadata !DIExpression()), !dbg !5606
  call void @llvm.lifetime.start.p0(i64 4, ptr %hcd_irq) #10, !dbg !5607
  call void @llvm.dbg.declare(metadata ptr %hcd_irq, metadata !5594, metadata !DIExpression()), !dbg !5608
  store i32 0, ptr %hcd_irq, align 4, !dbg !5608
  %call = call i32 @usb_disabled() #11, !dbg !5609
  %tobool = icmp ne i32 %call, 0, !dbg !5609
  br i1 %tobool, label %if.then, label %if.end, !dbg !5611

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup129, !dbg !5612

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %driver.addr, align 8, !dbg !5613
  %tobool2 = icmp ne ptr %0, null, !dbg !5613
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5615

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup129, !dbg !5616

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5617
  %call5 = call i32 @pci_enable_device(ptr noundef %1) #11, !dbg !5619
  %cmp = icmp slt i32 %call5, 0, !dbg !5620
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !5621

if.then6:                                         ; preds = %if.end4
  store i32 -19, ptr %retval, align 4, !dbg !5622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup129, !dbg !5622

if.end7:                                          ; preds = %if.end4
  %2 = load ptr, ptr %driver.addr, align 8, !dbg !5623
  %flags = getelementptr inbounds %struct.hc_driver, ptr %2, i32 0, i32 4, !dbg !5625
  %3 = load i32, ptr %flags, align 8, !dbg !5625
  %and = and i32 %3, 112, !dbg !5626
  %cmp8 = icmp slt i32 %and, 64, !dbg !5627
  br i1 %cmp8, label %if.then9, label %if.end17, !dbg !5628

if.then9:                                         ; preds = %if.end7
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5629
  %call10 = call i32 @pci_alloc_irq_vectors(ptr noundef %4, i32 noundef 1, i32 noundef 1, i32 noundef 3) #11, !dbg !5631
  store i32 %call10, ptr %retval1, align 4, !dbg !5632
  %5 = load i32, ptr %retval1, align 4, !dbg !5633
  %cmp11 = icmp slt i32 %5, 0, !dbg !5635
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !5636

if.then12:                                        ; preds = %if.then9
  br label %do.body, !dbg !5637

do.body:                                          ; preds = %if.then12
  br label %do.cond, !dbg !5640

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5640

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5637
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 37, !dbg !5637
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5637
  %call14 = call ptr @pci_name(ptr noundef %7) #11, !dbg !5637
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef @.str, ptr noundef %call14) #12, !dbg !5637
  store i32 -19, ptr %retval1, align 4, !dbg !5642
  br label %disable_pci, !dbg !5643

if.end15:                                         ; preds = %if.then9
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5644
  %call16 = call i32 @pci_irq_vector(ptr noundef %8, i32 noundef 0) #11, !dbg !5645
  store i32 %call16, ptr %hcd_irq, align 4, !dbg !5646
  br label %if.end17, !dbg !5647

if.end17:                                         ; preds = %if.end15, %if.end7
  %9 = load ptr, ptr %driver.addr, align 8, !dbg !5648
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5649
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 37, !dbg !5650
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5651
  %call19 = call ptr @pci_name(ptr noundef %11) #11, !dbg !5652
  %call20 = call ptr @usb_create_hcd(ptr noundef %9, ptr noundef %dev18, ptr noundef %call19) #11, !dbg !5653
  store ptr %call20, ptr %hcd, align 8, !dbg !5654
  %12 = load ptr, ptr %hcd, align 8, !dbg !5655
  %tobool21 = icmp ne ptr %12, null, !dbg !5655
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !5657

if.then22:                                        ; preds = %if.end17
  store i32 -12, ptr %retval1, align 4, !dbg !5658
  br label %free_irq_vectors, !dbg !5660

if.end23:                                         ; preds = %if.end17
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5661
  %call24 = call i32 @usb_hcd_amd_remote_wakeup_quirk(ptr noundef %13) #11, !dbg !5662
  %tobool25 = icmp ne i32 %call24, 0, !dbg !5662
  br i1 %tobool25, label %land.rhs, label %land.end, !dbg !5663

land.rhs:                                         ; preds = %if.end23
  %14 = load ptr, ptr %driver.addr, align 8, !dbg !5664
  %flags26 = getelementptr inbounds %struct.hc_driver, ptr %14, i32 0, i32 4, !dbg !5665
  %15 = load i32, ptr %flags26, align 8, !dbg !5665
  %and27 = and i32 %15, 80, !dbg !5666
  %tobool28 = icmp ne i32 %and27, 0, !dbg !5663
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end23
  %16 = phi i1 [ false, %if.end23 ], [ %tobool28, %land.rhs ], !dbg !5667
  %17 = zext i1 %16 to i64, !dbg !5668
  %cond = select i1 %16, i32 1, i32 0, !dbg !5668
  %18 = load ptr, ptr %hcd, align 8, !dbg !5669
  %amd_resume_bug = getelementptr inbounds %struct.usb_hcd, ptr %18, i32 0, i32 14, !dbg !5670
  %19 = trunc i32 %cond to i16, !dbg !5671
  %bf.load = load i16, ptr %amd_resume_bug, align 4, !dbg !5671
  %bf.value = and i16 %19, 1, !dbg !5671
  %bf.shl = shl i16 %bf.value, 7, !dbg !5671
  %bf.clear = and i16 %bf.load, -129, !dbg !5671
  %bf.set = or i16 %bf.clear, %bf.shl, !dbg !5671
  store i16 %bf.set, ptr %amd_resume_bug, align 4, !dbg !5671
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !5671
  %20 = load ptr, ptr %driver.addr, align 8, !dbg !5672
  %flags29 = getelementptr inbounds %struct.hc_driver, ptr %20, i32 0, i32 4, !dbg !5673
  %21 = load i32, ptr %flags29, align 8, !dbg !5673
  %and30 = and i32 %21, 1, !dbg !5674
  %tobool31 = icmp ne i32 %and30, 0, !dbg !5674
  br i1 %tobool31, label %if.then32, label %if.else, !dbg !5675

if.then32:                                        ; preds = %land.end
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5676
  %resource = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 40, !dbg !5676
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 0, !dbg !5676
  %start = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 0, !dbg !5676
  %23 = load i64, ptr %start, align 8, !dbg !5676
  %24 = load ptr, ptr %hcd, align 8, !dbg !5678
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %24, i32 0, i32 17, !dbg !5679
  store i64 %23, ptr %rsrc_start, align 8, !dbg !5680
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !5681
  %resource33 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 40, !dbg !5681
  %arrayidx34 = getelementptr [11 x %struct.resource], ptr %resource33, i64 0, i64 0, !dbg !5681
  %end = getelementptr inbounds %struct.resource, ptr %arrayidx34, i32 0, i32 1, !dbg !5681
  %26 = load i64, ptr %end, align 8, !dbg !5681
  %tobool35 = icmp ne i64 %26, 0, !dbg !5681
  br i1 %tobool35, label %cond.true, label %cond.false, !dbg !5681

cond.true:                                        ; preds = %if.then32
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5681
  %resource36 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 40, !dbg !5681
  %arrayidx37 = getelementptr [11 x %struct.resource], ptr %resource36, i64 0, i64 0, !dbg !5681
  %call38 = call i64 @resource_size(ptr noundef %arrayidx37) #11, !dbg !5681
  br label %cond.end, !dbg !5681

cond.false:                                       ; preds = %if.then32
  br label %cond.end, !dbg !5681

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond39 = phi i64 [ %call38, %cond.true ], [ 0, %cond.false ], !dbg !5681
  %28 = load ptr, ptr %hcd, align 8, !dbg !5682
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %28, i32 0, i32 18, !dbg !5683
  store i64 %cond39, ptr %rsrc_len, align 8, !dbg !5684
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !5685
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 37, !dbg !5685
  %30 = load ptr, ptr %hcd, align 8, !dbg !5685
  %rsrc_start41 = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 0, i32 17, !dbg !5685
  %31 = load i64, ptr %rsrc_start41, align 8, !dbg !5685
  %32 = load ptr, ptr %hcd, align 8, !dbg !5685
  %rsrc_len42 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 0, i32 18, !dbg !5685
  %33 = load i64, ptr %rsrc_len42, align 8, !dbg !5685
  %34 = load ptr, ptr %driver.addr, align 8, !dbg !5685
  %description = getelementptr inbounds %struct.hc_driver, ptr %34, i32 0, i32 0, !dbg !5685
  %35 = load ptr, ptr %description, align 8, !dbg !5685
  %call43 = call ptr @__devm_request_region(ptr noundef %dev40, ptr noundef @iomem_resource, i64 noundef %31, i64 noundef %33, ptr noundef %35) #11, !dbg !5685
  %tobool44 = icmp ne ptr %call43, null, !dbg !5685
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !5687

if.then45:                                        ; preds = %cond.end
  store i32 -16, ptr %retval1, align 4, !dbg !5688
  br label %put_hcd, !dbg !5690

if.end46:                                         ; preds = %cond.end
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !5691
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 37, !dbg !5692
  %37 = load ptr, ptr %hcd, align 8, !dbg !5693
  %rsrc_start48 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 0, i32 17, !dbg !5694
  %38 = load i64, ptr %rsrc_start48, align 8, !dbg !5694
  %39 = load ptr, ptr %hcd, align 8, !dbg !5695
  %rsrc_len49 = getelementptr inbounds %struct.usb_hcd, ptr %39, i32 0, i32 18, !dbg !5696
  %40 = load i64, ptr %rsrc_len49, align 8, !dbg !5696
  %call50 = call ptr @devm_ioremap(ptr noundef %dev47, i64 noundef %38, i64 noundef %40) #11, !dbg !5697
  %41 = load ptr, ptr %hcd, align 8, !dbg !5698
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %41, i32 0, i32 16, !dbg !5699
  store ptr %call50, ptr %regs, align 8, !dbg !5700
  %42 = load ptr, ptr %hcd, align 8, !dbg !5701
  %regs51 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 0, i32 16, !dbg !5703
  %43 = load ptr, ptr %regs51, align 8, !dbg !5703
  %cmp52 = icmp eq ptr %43, null, !dbg !5704
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !5705

if.then53:                                        ; preds = %if.end46
  store i32 -14, ptr %retval1, align 4, !dbg !5706
  br label %put_hcd, !dbg !5708

if.end54:                                         ; preds = %if.end46
  br label %if.end93, !dbg !5709

if.else:                                          ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %region) #10, !dbg !5710
  call void @llvm.dbg.declare(metadata ptr %region, metadata !5595, metadata !DIExpression()), !dbg !5711
  store i32 0, ptr %region, align 4, !dbg !5712
  br label %for.cond, !dbg !5714

for.cond:                                         ; preds = %for.inc, %if.else
  %44 = load i32, ptr %region, align 4, !dbg !5715
  %cmp55 = icmp slt i32 %44, 6, !dbg !5717
  br i1 %cmp55, label %for.body, label %for.end, !dbg !5718

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %dev.addr, align 8, !dbg !5719
  %resource56 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 40, !dbg !5719
  %46 = load i32, ptr %region, align 4, !dbg !5719
  %idxprom = sext i32 %46 to i64, !dbg !5719
  %arrayidx57 = getelementptr [11 x %struct.resource], ptr %resource56, i64 0, i64 %idxprom, !dbg !5719
  %flags58 = getelementptr inbounds %struct.resource, ptr %arrayidx57, i32 0, i32 3, !dbg !5719
  %47 = load i64, ptr %flags58, align 8, !dbg !5719
  %and59 = and i64 %47, 256, !dbg !5722
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5722
  br i1 %tobool60, label %if.end62, label %if.then61, !dbg !5723

if.then61:                                        ; preds = %for.body
  br label %for.inc, !dbg !5724

if.end62:                                         ; preds = %for.body
  %48 = load ptr, ptr %dev.addr, align 8, !dbg !5725
  %resource63 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 40, !dbg !5725
  %49 = load i32, ptr %region, align 4, !dbg !5725
  %idxprom64 = sext i32 %49 to i64, !dbg !5725
  %arrayidx65 = getelementptr [11 x %struct.resource], ptr %resource63, i64 0, i64 %idxprom64, !dbg !5725
  %start66 = getelementptr inbounds %struct.resource, ptr %arrayidx65, i32 0, i32 0, !dbg !5725
  %50 = load i64, ptr %start66, align 8, !dbg !5725
  %51 = load ptr, ptr %hcd, align 8, !dbg !5726
  %rsrc_start67 = getelementptr inbounds %struct.usb_hcd, ptr %51, i32 0, i32 17, !dbg !5727
  store i64 %50, ptr %rsrc_start67, align 8, !dbg !5728
  %52 = load ptr, ptr %dev.addr, align 8, !dbg !5729
  %resource68 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 40, !dbg !5729
  %53 = load i32, ptr %region, align 4, !dbg !5729
  %idxprom69 = sext i32 %53 to i64, !dbg !5729
  %arrayidx70 = getelementptr [11 x %struct.resource], ptr %resource68, i64 0, i64 %idxprom69, !dbg !5729
  %end71 = getelementptr inbounds %struct.resource, ptr %arrayidx70, i32 0, i32 1, !dbg !5729
  %54 = load i64, ptr %end71, align 8, !dbg !5729
  %tobool72 = icmp ne i64 %54, 0, !dbg !5729
  br i1 %tobool72, label %cond.true73, label %cond.false78, !dbg !5729

cond.true73:                                      ; preds = %if.end62
  %55 = load ptr, ptr %dev.addr, align 8, !dbg !5729
  %resource74 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 40, !dbg !5729
  %56 = load i32, ptr %region, align 4, !dbg !5729
  %idxprom75 = sext i32 %56 to i64, !dbg !5729
  %arrayidx76 = getelementptr [11 x %struct.resource], ptr %resource74, i64 0, i64 %idxprom75, !dbg !5729
  %call77 = call i64 @resource_size(ptr noundef %arrayidx76) #11, !dbg !5729
  br label %cond.end79, !dbg !5729

cond.false78:                                     ; preds = %if.end62
  br label %cond.end79, !dbg !5729

cond.end79:                                       ; preds = %cond.false78, %cond.true73
  %cond80 = phi i64 [ %call77, %cond.true73 ], [ 0, %cond.false78 ], !dbg !5729
  %57 = load ptr, ptr %hcd, align 8, !dbg !5730
  %rsrc_len81 = getelementptr inbounds %struct.usb_hcd, ptr %57, i32 0, i32 18, !dbg !5731
  store i64 %cond80, ptr %rsrc_len81, align 8, !dbg !5732
  %58 = load ptr, ptr %dev.addr, align 8, !dbg !5733
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 37, !dbg !5733
  %59 = load ptr, ptr %hcd, align 8, !dbg !5733
  %rsrc_start83 = getelementptr inbounds %struct.usb_hcd, ptr %59, i32 0, i32 17, !dbg !5733
  %60 = load i64, ptr %rsrc_start83, align 8, !dbg !5733
  %61 = load ptr, ptr %hcd, align 8, !dbg !5733
  %rsrc_len84 = getelementptr inbounds %struct.usb_hcd, ptr %61, i32 0, i32 18, !dbg !5733
  %62 = load i64, ptr %rsrc_len84, align 8, !dbg !5733
  %63 = load ptr, ptr %driver.addr, align 8, !dbg !5733
  %description85 = getelementptr inbounds %struct.hc_driver, ptr %63, i32 0, i32 0, !dbg !5733
  %64 = load ptr, ptr %description85, align 8, !dbg !5733
  %call86 = call ptr @__devm_request_region(ptr noundef %dev82, ptr noundef @ioport_resource, i64 noundef %60, i64 noundef %62, ptr noundef %64) #11, !dbg !5733
  %tobool87 = icmp ne ptr %call86, null, !dbg !5733
  br i1 %tobool87, label %if.then88, label %if.end89, !dbg !5735

if.then88:                                        ; preds = %cond.end79
  br label %for.end, !dbg !5736

if.end89:                                         ; preds = %cond.end79
  br label %for.inc, !dbg !5737

for.inc:                                          ; preds = %if.end89, %if.then61
  %65 = load i32, ptr %region, align 4, !dbg !5738
  %inc = add i32 %65, 1, !dbg !5738
  store i32 %inc, ptr %region, align 4, !dbg !5738
  br label %for.cond, !dbg !5739, !llvm.loop !5740

for.end:                                          ; preds = %if.then88, %for.cond
  %66 = load i32, ptr %region, align 4, !dbg !5744
  %cmp90 = icmp eq i32 %66, 6, !dbg !5746
  br i1 %cmp90, label %if.then91, label %if.end92, !dbg !5747

if.then91:                                        ; preds = %for.end
  store i32 -16, ptr %retval1, align 4, !dbg !5748
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5750

if.end92:                                         ; preds = %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5751
  br label %cleanup, !dbg !5751

cleanup:                                          ; preds = %if.then91, %if.end92
  call void @llvm.lifetime.end.p0(i64 4, ptr %region) #10, !dbg !5751
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup129 [
    i32 0, label %cleanup.cont
    i32 6, label %put_hcd
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end93

if.end93:                                         ; preds = %cleanup.cont, %if.end54
  %67 = load ptr, ptr %dev.addr, align 8, !dbg !5752
  call void @pci_set_master(ptr noundef %67) #11, !dbg !5753
  %68 = load ptr, ptr %dev.addr, align 8, !dbg !5754
  %class = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 11, !dbg !5756
  %69 = load i32, ptr %class, align 4, !dbg !5756
  %cmp94 = icmp eq i32 %69, 787232, !dbg !5757
  br i1 %cmp94, label %if.then95, label %if.else102, !dbg !5758

if.then95:                                        ; preds = %if.end93
  call void @down_write(ptr noundef @companions_rwsem) #11, !dbg !5759
  %70 = load ptr, ptr %dev.addr, align 8, !dbg !5761
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 37, !dbg !5762
  %71 = load ptr, ptr %hcd, align 8, !dbg !5763
  call void @dev_set_drvdata(ptr noundef %dev96, ptr noundef %71) #11, !dbg !5764
  %72 = load ptr, ptr %dev.addr, align 8, !dbg !5765
  %73 = load ptr, ptr %hcd, align 8, !dbg !5766
  call void @for_each_companion(ptr noundef %72, ptr noundef %73, ptr noundef @ehci_pre_add) #11, !dbg !5767
  %74 = load ptr, ptr %hcd, align 8, !dbg !5768
  %75 = load i32, ptr %hcd_irq, align 4, !dbg !5769
  %call97 = call i32 @usb_add_hcd(ptr noundef %74, i32 noundef %75, i64 noundef 128) #11, !dbg !5770
  store i32 %call97, ptr %retval1, align 4, !dbg !5771
  %76 = load i32, ptr %retval1, align 4, !dbg !5772
  %cmp98 = icmp ne i32 %76, 0, !dbg !5774
  br i1 %cmp98, label %if.then99, label %if.end101, !dbg !5775

if.then99:                                        ; preds = %if.then95
  %77 = load ptr, ptr %dev.addr, align 8, !dbg !5776
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 37, !dbg !5777
  call void @dev_set_drvdata(ptr noundef %dev100, ptr noundef null) #11, !dbg !5778
  br label %if.end101, !dbg !5778

if.end101:                                        ; preds = %if.then99, %if.then95
  %78 = load ptr, ptr %dev.addr, align 8, !dbg !5779
  %79 = load ptr, ptr %hcd, align 8, !dbg !5780
  call void @for_each_companion(ptr noundef %78, ptr noundef %79, ptr noundef @ehci_post_add) #11, !dbg !5781
  call void @up_write(ptr noundef @companions_rwsem) #11, !dbg !5782
  br label %if.end110, !dbg !5783

if.else102:                                       ; preds = %if.end93
  call void @down_read(ptr noundef @companions_rwsem) #11, !dbg !5784
  %80 = load ptr, ptr %dev.addr, align 8, !dbg !5786
  %dev103 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 37, !dbg !5787
  %81 = load ptr, ptr %hcd, align 8, !dbg !5788
  call void @dev_set_drvdata(ptr noundef %dev103, ptr noundef %81) #11, !dbg !5789
  %82 = load ptr, ptr %hcd, align 8, !dbg !5790
  %83 = load i32, ptr %hcd_irq, align 4, !dbg !5791
  %call104 = call i32 @usb_add_hcd(ptr noundef %82, i32 noundef %83, i64 noundef 128) #11, !dbg !5792
  store i32 %call104, ptr %retval1, align 4, !dbg !5793
  %84 = load i32, ptr %retval1, align 4, !dbg !5794
  %cmp105 = icmp ne i32 %84, 0, !dbg !5796
  br i1 %cmp105, label %if.then106, label %if.else108, !dbg !5797

if.then106:                                       ; preds = %if.else102
  %85 = load ptr, ptr %dev.addr, align 8, !dbg !5798
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 37, !dbg !5799
  call void @dev_set_drvdata(ptr noundef %dev107, ptr noundef null) #11, !dbg !5800
  br label %if.end109, !dbg !5800

if.else108:                                       ; preds = %if.else102
  %86 = load ptr, ptr %dev.addr, align 8, !dbg !5801
  %87 = load ptr, ptr %hcd, align 8, !dbg !5802
  call void @for_each_companion(ptr noundef %86, ptr noundef %87, ptr noundef @non_ehci_add) #11, !dbg !5803
  br label %if.end109

if.end109:                                        ; preds = %if.else108, %if.then106
  call void @up_read(ptr noundef @companions_rwsem) #11, !dbg !5804
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end101
  %88 = load i32, ptr %retval1, align 4, !dbg !5805
  %cmp111 = icmp ne i32 %88, 0, !dbg !5807
  br i1 %cmp111, label %if.then112, label %if.end113, !dbg !5808

if.then112:                                       ; preds = %if.end110
  br label %put_hcd, !dbg !5809

if.end113:                                        ; preds = %if.end110
  %89 = load ptr, ptr %hcd, align 8, !dbg !5810
  %self = getelementptr inbounds %struct.usb_hcd, ptr %89, i32 0, i32 0, !dbg !5811
  %controller = getelementptr inbounds %struct.usb_bus, ptr %self, i32 0, i32 0, !dbg !5812
  %90 = load ptr, ptr %controller, align 8, !dbg !5812
  %call114 = call i32 @device_wakeup_enable(ptr noundef %90) #11, !dbg !5813
  %91 = load ptr, ptr %dev.addr, align 8, !dbg !5814
  %call115 = call zeroext i1 @pci_dev_run_wake(ptr noundef %91) #11, !dbg !5816
  br i1 %call115, label %if.then116, label %if.end118, !dbg !5817

if.then116:                                       ; preds = %if.end113
  %92 = load ptr, ptr %dev.addr, align 8, !dbg !5818
  %dev117 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 37, !dbg !5819
  call void @pm_runtime_put_noidle(ptr noundef %dev117) #11, !dbg !5820
  br label %if.end118, !dbg !5820

if.end118:                                        ; preds = %if.then116, %if.end113
  %93 = load i32, ptr %retval1, align 4, !dbg !5821
  store i32 %93, ptr %retval, align 4, !dbg !5822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup129, !dbg !5822

put_hcd:                                          ; preds = %cleanup, %if.then112, %if.then53, %if.then45
  call void @llvm.dbg.label(metadata !5598), !dbg !5823
  %94 = load ptr, ptr %hcd, align 8, !dbg !5824
  call void @usb_put_hcd(ptr noundef %94) #11, !dbg !5825
  br label %free_irq_vectors, !dbg !5825

free_irq_vectors:                                 ; preds = %put_hcd, %if.then22
  call void @llvm.dbg.label(metadata !5599), !dbg !5826
  %95 = load ptr, ptr %driver.addr, align 8, !dbg !5827
  %flags119 = getelementptr inbounds %struct.hc_driver, ptr %95, i32 0, i32 4, !dbg !5829
  %96 = load i32, ptr %flags119, align 8, !dbg !5829
  %and120 = and i32 %96, 112, !dbg !5830
  %cmp121 = icmp slt i32 %and120, 64, !dbg !5831
  br i1 %cmp121, label %if.then122, label %if.end123, !dbg !5832

if.then122:                                       ; preds = %free_irq_vectors
  %97 = load ptr, ptr %dev.addr, align 8, !dbg !5833
  call void @pci_free_irq_vectors(ptr noundef %97) #11, !dbg !5834
  br label %if.end123, !dbg !5834

if.end123:                                        ; preds = %if.then122, %free_irq_vectors
  br label %disable_pci, !dbg !5835

disable_pci:                                      ; preds = %if.end123, %do.end
  call void @llvm.dbg.label(metadata !5600), !dbg !5836
  %98 = load ptr, ptr %dev.addr, align 8, !dbg !5837
  call void @pci_disable_device(ptr noundef %98) #11, !dbg !5838
  br label %do.body124, !dbg !5839

do.body124:                                       ; preds = %disable_pci
  br label %do.cond125, !dbg !5841

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !5841

do.end126:                                        ; preds = %do.cond125
  %99 = load ptr, ptr %dev.addr, align 8, !dbg !5839
  %dev127 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 37, !dbg !5839
  %100 = load ptr, ptr %dev.addr, align 8, !dbg !5839
  %call128 = call ptr @pci_name(ptr noundef %100) #11, !dbg !5839
  %101 = load i32, ptr %retval1, align 4, !dbg !5839
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev127, ptr noundef @.str.1, ptr noundef %call128, i32 noundef %101) #12, !dbg !5839
  %102 = load i32, ptr %retval1, align 4, !dbg !5843
  store i32 %102, ptr %retval, align 4, !dbg !5844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup129, !dbg !5844

cleanup129:                                       ; preds = %do.end126, %if.end118, %cleanup, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %hcd_irq) #10, !dbg !5845
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10, !dbg !5845
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcd) #10, !dbg !5845
  %103 = load i32, ptr %retval, align 4, !dbg !5845
  ret i32 %103, !dbg !5845
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5846 dso_local i32 @usb_disabled() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5847 dso_local i32 @pci_enable_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5848 dso_local i32 @pci_alloc_irq_vectors(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5851 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_name(ptr noundef %pdev) #5 align 16 !dbg !5855 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5861, metadata !DIExpression()), !dbg !5862
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5863
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5864
  %call = call ptr @dev_name(ptr noundef %dev) #11, !dbg !5865
  ret ptr %call, !dbg !5866
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5867 dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5870 dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5873 dso_local i32 @usb_hcd_amd_remote_wakeup_quirk(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #5 align 16 !dbg !5874 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5882
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !5883
  %1 = load i64, ptr %end, align 8, !dbg !5883
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5884
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !5885
  %3 = load i64, ptr %start, align 8, !dbg !5885
  %sub = sub i64 %1, %3, !dbg !5886
  %add = add i64 %sub, 1, !dbg !5887
  ret i64 %add, !dbg !5888
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5889 dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5892 dso_local ptr @devm_ioremap(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5896 dso_local void @pci_set_master(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5897 dso_local void @down_write(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #5 align 16 !dbg !5901 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5905, metadata !DIExpression()), !dbg !5907
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5906, metadata !DIExpression()), !dbg !5908
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5909
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5910
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !5911
  store ptr %0, ptr %driver_data, align 8, !dbg !5912
  ret void, !dbg !5913
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @for_each_companion(ptr noundef %pdev, ptr noundef %hcd, ptr noundef %fn) #0 align 16 !dbg !5914 {
entry:
  %pdev.addr = alloca ptr, align 8
  %hcd.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %companion = alloca ptr, align 8
  %companion_hcd = alloca ptr, align 8
  %slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5922, metadata !DIExpression()), !dbg !5928
  store ptr %hcd, ptr %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hcd.addr, metadata !5923, metadata !DIExpression()), !dbg !5929
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !5924, metadata !DIExpression()), !dbg !5930
  call void @llvm.lifetime.start.p0(i64 8, ptr %companion) #10, !dbg !5931
  call void @llvm.dbg.declare(metadata ptr %companion, metadata !5925, metadata !DIExpression()), !dbg !5932
  call void @llvm.lifetime.start.p0(i64 8, ptr %companion_hcd) #10, !dbg !5933
  call void @llvm.dbg.declare(metadata ptr %companion_hcd, metadata !5926, metadata !DIExpression()), !dbg !5934
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #10, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5927, metadata !DIExpression()), !dbg !5936
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5937
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6, !dbg !5937
  %1 = load i32, ptr %devfn, align 8, !dbg !5937
  %shr = lshr i32 %1, 3, !dbg !5937
  %and = and i32 %shr, 31, !dbg !5937
  store i32 %and, ptr %slot, align 4, !dbg !5936
  store ptr null, ptr %companion, align 8, !dbg !5938
  br label %while.cond, !dbg !5939

while.cond:                                       ; preds = %if.end19, %if.then18, %if.then13, %if.then, %entry
  %2 = load ptr, ptr %companion, align 8, !dbg !5939
  %call = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %2) #11, !dbg !5939
  store ptr %call, ptr %companion, align 8, !dbg !5939
  %cmp = icmp ne ptr %call, null, !dbg !5939
  br i1 %cmp, label %while.body, label %while.end, !dbg !5939

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %companion, align 8, !dbg !5940
  %bus = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1, !dbg !5943
  %4 = load ptr, ptr %bus, align 8, !dbg !5943
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5944
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 1, !dbg !5945
  %6 = load ptr, ptr %bus1, align 8, !dbg !5945
  %cmp2 = icmp ne ptr %4, %6, !dbg !5946
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !5947

lor.lhs.false:                                    ; preds = %while.body
  %7 = load ptr, ptr %companion, align 8, !dbg !5948
  %devfn3 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6, !dbg !5948
  %8 = load i32, ptr %devfn3, align 8, !dbg !5948
  %shr4 = lshr i32 %8, 3, !dbg !5948
  %and5 = and i32 %shr4, 31, !dbg !5948
  %9 = load i32, ptr %slot, align 4, !dbg !5949
  %cmp6 = icmp ne i32 %and5, %9, !dbg !5950
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5951

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.cond, !dbg !5952, !llvm.loop !5953

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %companion, align 8, !dbg !5955
  %class = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 11, !dbg !5957
  %11 = load i32, ptr %class, align 4, !dbg !5957
  %cmp7 = icmp ne i32 %11, 787200, !dbg !5958
  br i1 %cmp7, label %land.lhs.true, label %if.end14, !dbg !5959

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %companion, align 8, !dbg !5960
  %class8 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 11, !dbg !5961
  %13 = load i32, ptr %class8, align 4, !dbg !5961
  %cmp9 = icmp ne i32 %13, 787216, !dbg !5962
  br i1 %cmp9, label %land.lhs.true10, label %if.end14, !dbg !5963

land.lhs.true10:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %companion, align 8, !dbg !5964
  %class11 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 11, !dbg !5965
  %15 = load i32, ptr %class11, align 4, !dbg !5965
  %cmp12 = icmp ne i32 %15, 787232, !dbg !5966
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5967

if.then13:                                        ; preds = %land.lhs.true10
  br label %while.cond, !dbg !5968, !llvm.loop !5953

if.end14:                                         ; preds = %land.lhs.true10, %land.lhs.true, %if.end
  %16 = load ptr, ptr %companion, align 8, !dbg !5969
  %call15 = call ptr @pci_get_drvdata(ptr noundef %16) #11, !dbg !5970
  store ptr %call15, ptr %companion_hcd, align 8, !dbg !5971
  %17 = load ptr, ptr %companion_hcd, align 8, !dbg !5972
  %tobool = icmp ne ptr %17, null, !dbg !5972
  br i1 %tobool, label %lor.lhs.false16, label %if.then18, !dbg !5974

lor.lhs.false16:                                  ; preds = %if.end14
  %18 = load ptr, ptr %companion_hcd, align 8, !dbg !5975
  %self = getelementptr inbounds %struct.usb_hcd, ptr %18, i32 0, i32 0, !dbg !5976
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %self, i32 0, i32 11, !dbg !5977
  %19 = load ptr, ptr %root_hub, align 8, !dbg !5977
  %tobool17 = icmp ne ptr %19, null, !dbg !5975
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5978

if.then18:                                        ; preds = %lor.lhs.false16, %if.end14
  br label %while.cond, !dbg !5979, !llvm.loop !5953

if.end19:                                         ; preds = %lor.lhs.false16
  %20 = load ptr, ptr %fn.addr, align 8, !dbg !5980
  %21 = load ptr, ptr %pdev.addr, align 8, !dbg !5981
  %22 = load ptr, ptr %hcd.addr, align 8, !dbg !5982
  %23 = load ptr, ptr %companion, align 8, !dbg !5983
  %24 = load ptr, ptr %companion_hcd, align 8, !dbg !5984
  call void %20(ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24) #11, !dbg !5980
  br label %while.cond, !dbg !5939, !llvm.loop !5953

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #10, !dbg !5985
  call void @llvm.lifetime.end.p0(i64 8, ptr %companion_hcd) #10, !dbg !5985
  call void @llvm.lifetime.end.p0(i64 8, ptr %companion) #10, !dbg !5985
  ret void, !dbg !5985
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ehci_pre_add(ptr noundef %pdev, ptr noundef %hcd, ptr noundef %companion, ptr noundef %companion_hcd) #0 align 16 !dbg !5986 {
entry:
  %pdev.addr = alloca ptr, align 8
  %hcd.addr = alloca ptr, align 8
  %companion.addr = alloca ptr, align 8
  %companion_hcd.addr = alloca ptr, align 8
  %udev = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5988, metadata !DIExpression()), !dbg !5993
  store ptr %hcd, ptr %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hcd.addr, metadata !5989, metadata !DIExpression()), !dbg !5994
  store ptr %companion, ptr %companion.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %companion.addr, metadata !5990, metadata !DIExpression()), !dbg !5995
  store ptr %companion_hcd, ptr %companion_hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %companion_hcd.addr, metadata !5991, metadata !DIExpression()), !dbg !5996
  call void @llvm.lifetime.start.p0(i64 8, ptr %udev) #10, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %udev, metadata !5992, metadata !DIExpression()), !dbg !5998
  %0 = load ptr, ptr %companion.addr, align 8, !dbg !5999
  %call = call i32 @is_ohci_or_uhci(ptr noundef %0) #11, !dbg !6001
  %tobool = icmp ne i32 %call, 0, !dbg !6001
  br i1 %tobool, label %if.then, label %if.end, !dbg !6002

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %companion_hcd.addr, align 8, !dbg !6003
  %self = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 0, !dbg !6005
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %self, i32 0, i32 11, !dbg !6006
  %2 = load ptr, ptr %root_hub, align 8, !dbg !6006
  store ptr %2, ptr %udev, align 8, !dbg !6007
  %3 = load ptr, ptr %udev, align 8, !dbg !6008
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, !dbg !6008
  call void @device_lock(ptr noundef %dev) #11, !dbg !6008
  %4 = load ptr, ptr %udev, align 8, !dbg !6009
  %call1 = call i32 @usb_set_configuration(ptr noundef %4, i32 noundef 0) #11, !dbg !6010
  br label %if.end, !dbg !6011

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %udev) #10, !dbg !6012
  ret void, !dbg !6012
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6013 dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ehci_post_add(ptr noundef %pdev, ptr noundef %hcd, ptr noundef %companion, ptr noundef %companion_hcd) #0 align 16 !dbg !6016 {
entry:
  %pdev.addr = alloca ptr, align 8
  %hcd.addr = alloca ptr, align 8
  %companion.addr = alloca ptr, align 8
  %companion_hcd.addr = alloca ptr, align 8
  %udev = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6018, metadata !DIExpression()), !dbg !6023
  store ptr %hcd, ptr %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hcd.addr, metadata !6019, metadata !DIExpression()), !dbg !6024
  store ptr %companion, ptr %companion.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %companion.addr, metadata !6020, metadata !DIExpression()), !dbg !6025
  store ptr %companion_hcd, ptr %companion_hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %companion_hcd.addr, metadata !6021, metadata !DIExpression()), !dbg !6026
  call void @llvm.lifetime.start.p0(i64 8, ptr %udev) #10, !dbg !6027
  call void @llvm.dbg.declare(metadata ptr %udev, metadata !6022, metadata !DIExpression()), !dbg !6028
  %0 = load ptr, ptr %companion.addr, align 8, !dbg !6029
  %call = call i32 @is_ohci_or_uhci(ptr noundef %0) #11, !dbg !6031
  %tobool = icmp ne i32 %call, 0, !dbg !6031
  br i1 %tobool, label %if.then, label %if.end8, !dbg !6032

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !6033
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 37, !dbg !6036
  %call1 = call ptr @dev_get_drvdata(ptr noundef %dev) #11, !dbg !6037
  %tobool2 = icmp ne ptr %call1, null, !dbg !6037
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !6038

if.then3:                                         ; preds = %if.then
  %2 = load ptr, ptr %hcd.addr, align 8, !dbg !6039
  %self = getelementptr inbounds %struct.usb_hcd, ptr %2, i32 0, i32 0, !dbg !6041
  %3 = load ptr, ptr %companion_hcd.addr, align 8, !dbg !6042
  %self4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 0, !dbg !6043
  %hs_companion = getelementptr inbounds %struct.usb_bus, ptr %self4, i32 0, i32 12, !dbg !6044
  store ptr %self, ptr %hs_companion, align 8, !dbg !6045
  br label %if.end, !dbg !6046

if.end:                                           ; preds = %if.then3, %if.then
  %4 = load ptr, ptr %companion_hcd.addr, align 8, !dbg !6047
  %self5 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 0, !dbg !6048
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %self5, i32 0, i32 11, !dbg !6049
  %5 = load ptr, ptr %root_hub, align 8, !dbg !6049
  store ptr %5, ptr %udev, align 8, !dbg !6050
  %6 = load ptr, ptr %udev, align 8, !dbg !6051
  %call6 = call i32 @usb_set_configuration(ptr noundef %6, i32 noundef 1) #11, !dbg !6052
  %7 = load ptr, ptr %udev, align 8, !dbg !6053
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 16, !dbg !6053
  call void @device_unlock(ptr noundef %dev7) #11, !dbg !6053
  br label %if.end8, !dbg !6054

if.end8:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %udev) #10, !dbg !6055
  ret void, !dbg !6055
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6056 dso_local void @up_write(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6057 dso_local void @down_read(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @non_ehci_add(ptr noundef %pdev, ptr noundef %hcd, ptr noundef %companion, ptr noundef %companion_hcd) #0 align 16 !dbg !6058 {
entry:
  %pdev.addr = alloca ptr, align 8
  %hcd.addr = alloca ptr, align 8
  %companion.addr = alloca ptr, align 8
  %companion_hcd.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6060, metadata !DIExpression()), !dbg !6064
  store ptr %hcd, ptr %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hcd.addr, metadata !6061, metadata !DIExpression()), !dbg !6065
  store ptr %companion, ptr %companion.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %companion.addr, metadata !6062, metadata !DIExpression()), !dbg !6066
  store ptr %companion_hcd, ptr %companion_hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %companion_hcd.addr, metadata !6063, metadata !DIExpression()), !dbg !6067
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6068
  %call = call i32 @is_ohci_or_uhci(ptr noundef %0) #11, !dbg !6070
  %tobool = icmp ne i32 %call, 0, !dbg !6070
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6071

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %companion.addr, align 8, !dbg !6072
  %class = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 11, !dbg !6073
  %2 = load i32, ptr %class, align 4, !dbg !6073
  %cmp = icmp eq i32 %2, 787232, !dbg !6074
  br i1 %cmp, label %if.then, label %if.end, !dbg !6075

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %companion_hcd.addr, align 8, !dbg !6076
  %self = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 0, !dbg !6078
  %4 = load ptr, ptr %hcd.addr, align 8, !dbg !6079
  %self1 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 0, !dbg !6080
  %hs_companion = getelementptr inbounds %struct.usb_bus, ptr %self1, i32 0, i32 12, !dbg !6081
  store ptr %self, ptr %hs_companion, align 8, !dbg !6082
  br label %if.end, !dbg !6083

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !6084
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6085 dso_local void @up_read(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6086 dso_local i32 @device_wakeup_enable(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6087 dso_local zeroext i1 @pci_dev_run_wake(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pm_runtime_put_noidle(ptr noundef %dev) #5 align 16 !dbg !6090 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6095
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !6096
  %usage_count = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 13, !dbg !6097
  %call = call zeroext i1 @atomic_add_unless(ptr noundef %usage_count, i32 noundef -1, i32 noundef 0) #11, !dbg !6098
  ret void, !dbg !6099
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6100 dso_local void @usb_put_hcd(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6101 dso_local void @pci_free_irq_vectors(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6102 dso_local void @pci_disable_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_hcd_pci_remove(ptr noundef %dev) #0 align 16 !dbg !6103 {
entry:
  %dev.addr = alloca ptr, align 8
  %hcd = alloca ptr, align 8
  %hcd_driver_flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6105, metadata !DIExpression()), !dbg !6108
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcd) #10, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %hcd, metadata !6106, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 4, ptr %hcd_driver_flags) #10, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %hcd_driver_flags, metadata !6107, metadata !DIExpression()), !dbg !6112
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6113
  %call = call ptr @pci_get_drvdata(ptr noundef %0) #11, !dbg !6114
  store ptr %call, ptr %hcd, align 8, !dbg !6115
  %1 = load ptr, ptr %hcd, align 8, !dbg !6116
  %tobool = icmp ne ptr %1, null, !dbg !6116
  br i1 %tobool, label %if.end, label %if.then, !dbg !6118

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6119

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %hcd, align 8, !dbg !6120
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %2, i32 0, i32 9, !dbg !6121
  %3 = load ptr, ptr %driver, align 8, !dbg !6121
  %flags = getelementptr inbounds %struct.hc_driver, ptr %3, i32 0, i32 4, !dbg !6122
  %4 = load i32, ptr %flags, align 8, !dbg !6122
  store i32 %4, ptr %hcd_driver_flags, align 4, !dbg !6123
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6124
  %call1 = call zeroext i1 @pci_dev_run_wake(ptr noundef %5) #11, !dbg !6126
  br i1 %call1, label %if.then2, label %if.end4, !dbg !6127

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6128
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 37, !dbg !6129
  call void @pm_runtime_get_noresume(ptr noundef %dev3) #11, !dbg !6130
  br label %if.end4, !dbg !6130

if.end4:                                          ; preds = %if.then2, %if.end
  br label %do.body, !dbg !6131

do.body:                                          ; preds = %if.end4
  call void @arch_local_irq_disable() #11, !dbg !6132
  br label %do.cond, !dbg !6132

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6132

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %hcd, align 8, !dbg !6134
  %call5 = call i32 @usb_hcd_irq(i32 noundef 0, ptr noundef %7) #11, !dbg !6135
  br label %do.body6, !dbg !6136

do.body6:                                         ; preds = %do.end
  call void @arch_local_irq_enable() #11, !dbg !6137
  br label %do.cond7, !dbg !6137

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6137

do.end8:                                          ; preds = %do.cond7
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6139
  %class = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 11, !dbg !6141
  %9 = load i32, ptr %class, align 4, !dbg !6141
  %cmp = icmp eq i32 %9, 787232, !dbg !6142
  br i1 %cmp, label %if.then9, label %if.else, !dbg !6143

if.then9:                                         ; preds = %do.end8
  call void @down_write(ptr noundef @companions_rwsem) #11, !dbg !6144
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !6146
  %11 = load ptr, ptr %hcd, align 8, !dbg !6147
  call void @for_each_companion(ptr noundef %10, ptr noundef %11, ptr noundef @ehci_remove) #11, !dbg !6148
  %12 = load ptr, ptr %hcd, align 8, !dbg !6149
  call void @usb_remove_hcd(ptr noundef %12) #11, !dbg !6150
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !6151
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 37, !dbg !6152
  call void @dev_set_drvdata(ptr noundef %dev10, ptr noundef null) #11, !dbg !6153
  call void @up_write(ptr noundef @companions_rwsem) #11, !dbg !6154
  br label %if.end12, !dbg !6155

if.else:                                          ; preds = %do.end8
  call void @down_read(ptr noundef @companions_rwsem) #11, !dbg !6156
  %14 = load ptr, ptr %hcd, align 8, !dbg !6158
  %self = getelementptr inbounds %struct.usb_hcd, ptr %14, i32 0, i32 0, !dbg !6159
  %hs_companion = getelementptr inbounds %struct.usb_bus, ptr %self, i32 0, i32 12, !dbg !6160
  store ptr null, ptr %hs_companion, align 8, !dbg !6161
  %15 = load ptr, ptr %hcd, align 8, !dbg !6162
  call void @usb_remove_hcd(ptr noundef %15) #11, !dbg !6163
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !6164
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 37, !dbg !6165
  call void @dev_set_drvdata(ptr noundef %dev11, ptr noundef null) #11, !dbg !6166
  call void @up_read(ptr noundef @companions_rwsem) #11, !dbg !6167
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %17 = load ptr, ptr %hcd, align 8, !dbg !6168
  call void @usb_put_hcd(ptr noundef %17) #11, !dbg !6169
  %18 = load i32, ptr %hcd_driver_flags, align 4, !dbg !6170
  %and = and i32 %18, 112, !dbg !6172
  %cmp13 = icmp slt i32 %and, 64, !dbg !6173
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !6174

if.then14:                                        ; preds = %if.end12
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !6175
  call void @pci_free_irq_vectors(ptr noundef %19) #11, !dbg !6176
  br label %if.end15, !dbg !6176

if.end15:                                         ; preds = %if.then14, %if.end12
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !6177
  call void @pci_disable_device(ptr noundef %20) #11, !dbg !6178
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6179
  br label %cleanup, !dbg !6179

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %hcd_driver_flags) #10, !dbg !6179
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcd) #10, !dbg !6179
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6179

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_get_drvdata(ptr noundef %pdev) #5 align 16 !dbg !6180 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6184, metadata !DIExpression()), !dbg !6185
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6186
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !6187
  %call = call ptr @dev_get_drvdata(ptr noundef %dev) #11, !dbg !6188
  ret ptr %call, !dbg !6189
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pm_runtime_get_noresume(ptr noundef %dev) #5 align 16 !dbg !6190 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6192, metadata !DIExpression()), !dbg !6193
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6194
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !6195
  %usage_count = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 13, !dbg !6196
  call void @atomic_inc(ptr noundef %usage_count) #11, !dbg !6197
  ret void, !dbg !6198
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #6 align 16 !dbg !6199 {
entry:
  call void @native_irq_disable() #11, !dbg !6201
  ret void, !dbg !6202
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6203 dso_local i32 @usb_hcd_irq(i32 noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #6 align 16 !dbg !6206 {
entry:
  call void @native_irq_enable() #11, !dbg !6207
  ret void, !dbg !6208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ehci_remove(ptr noundef %pdev, ptr noundef %hcd, ptr noundef %companion, ptr noundef %companion_hcd) #0 align 16 !dbg !6209 {
entry:
  %pdev.addr = alloca ptr, align 8
  %hcd.addr = alloca ptr, align 8
  %companion.addr = alloca ptr, align 8
  %companion_hcd.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6211, metadata !DIExpression()), !dbg !6215
  store ptr %hcd, ptr %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hcd.addr, metadata !6212, metadata !DIExpression()), !dbg !6216
  store ptr %companion, ptr %companion.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %companion.addr, metadata !6213, metadata !DIExpression()), !dbg !6217
  store ptr %companion_hcd, ptr %companion_hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %companion_hcd.addr, metadata !6214, metadata !DIExpression()), !dbg !6218
  %0 = load ptr, ptr %companion.addr, align 8, !dbg !6219
  %call = call i32 @is_ohci_or_uhci(ptr noundef %0) #11, !dbg !6221
  %tobool = icmp ne i32 %call, 0, !dbg !6221
  br i1 %tobool, label %if.then, label %if.end, !dbg !6222

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %companion_hcd.addr, align 8, !dbg !6223
  %self = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 0, !dbg !6224
  %hs_companion = getelementptr inbounds %struct.usb_bus, ptr %self, i32 0, i32 12, !dbg !6225
  store ptr null, ptr %hs_companion, align 8, !dbg !6226
  br label %if.end, !dbg !6223

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6227
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6228 dso_local void @usb_remove_hcd(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_hcd_pci_shutdown(ptr noundef %dev) #0 align 16 !dbg !6229 {
entry:
  %dev.addr = alloca ptr, align 8
  %hcd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6231, metadata !DIExpression()), !dbg !6233
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcd) #10, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %hcd, metadata !6232, metadata !DIExpression()), !dbg !6235
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6236
  %call = call ptr @pci_get_drvdata(ptr noundef %0) #11, !dbg !6237
  store ptr %call, ptr %hcd, align 8, !dbg !6238
  %1 = load ptr, ptr %hcd, align 8, !dbg !6239
  %tobool = icmp ne ptr %1, null, !dbg !6239
  br i1 %tobool, label %if.end, label %if.then, !dbg !6241

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6242

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %hcd, align 8, !dbg !6243
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %2, i32 0, i32 12, !dbg !6243
  %3 = ptrtoint ptr %flags to i64, !dbg !6243
  %cmp = icmp ne i64 %3, 0, !dbg !6243
  %conv = zext i1 %cmp to i32, !dbg !6243
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6243
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !6243

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %hcd, align 8, !dbg !6243
  %flags1 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 12, !dbg !6243
  %6 = ptrtoint ptr %flags1 to i64, !dbg !6243
  %cmp2 = icmp ne i64 %6, 0, !dbg !6243
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6243

land.lhs.true4:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %hcd, align 8, !dbg !6243
  %flags5 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 12, !dbg !6243
  %8 = load i64, ptr %flags5, align 8, !dbg !6243
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6243
  br i1 %9, label %cond.true, label %cond.false, !dbg !6245

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load ptr, ptr %hcd, align 8, !dbg !6243
  %flags6 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 12, !dbg !6243
  %call7 = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #11, !dbg !6243
  br i1 %call7, label %land.lhs.true12, label %if.end26, !dbg !6243

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %11 = load ptr, ptr %hcd, align 8, !dbg !6243
  %flags9 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 12, !dbg !6243
  %call10 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags9) #11, !dbg !6243
  br i1 %call10, label %land.lhs.true12, label %if.end26, !dbg !6245

land.lhs.true12:                                  ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %hcd, align 8, !dbg !6246
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 9, !dbg !6247
  %13 = load ptr, ptr %driver, align 8, !dbg !6247
  %shutdown = getelementptr inbounds %struct.hc_driver, ptr %13, i32 0, i32 11, !dbg !6248
  %14 = load ptr, ptr %shutdown, align 8, !dbg !6248
  %tobool13 = icmp ne ptr %14, null, !dbg !6246
  br i1 %tobool13, label %if.then14, label %if.end26, !dbg !6249

if.then14:                                        ; preds = %land.lhs.true12
  %15 = load ptr, ptr %hcd, align 8, !dbg !6250
  %driver15 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 9, !dbg !6252
  %16 = load ptr, ptr %driver15, align 8, !dbg !6252
  %shutdown16 = getelementptr inbounds %struct.hc_driver, ptr %16, i32 0, i32 11, !dbg !6253
  %17 = load ptr, ptr %shutdown16, align 8, !dbg !6253
  %18 = load ptr, ptr %hcd, align 8, !dbg !6254
  call void %17(ptr noundef %18) #11, !dbg !6250
  %19 = load ptr, ptr %hcd, align 8, !dbg !6255
  %call17 = call i32 @usb_hcd_is_primary_hcd(ptr noundef %19) #11, !dbg !6257
  %tobool18 = icmp ne i32 %call17, 0, !dbg !6257
  br i1 %tobool18, label %land.lhs.true19, label %if.end25, !dbg !6258

land.lhs.true19:                                  ; preds = %if.then14
  %20 = load ptr, ptr %hcd, align 8, !dbg !6259
  %irq = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 0, i32 15, !dbg !6260
  %21 = load i32, ptr %irq, align 8, !dbg !6260
  %cmp20 = icmp ugt i32 %21, 0, !dbg !6261
  br i1 %cmp20, label %if.then22, label %if.end25, !dbg !6262

if.then22:                                        ; preds = %land.lhs.true19
  %22 = load ptr, ptr %hcd, align 8, !dbg !6263
  %irq23 = getelementptr inbounds %struct.usb_hcd, ptr %22, i32 0, i32 15, !dbg !6264
  %23 = load i32, ptr %irq23, align 8, !dbg !6264
  %24 = load ptr, ptr %hcd, align 8, !dbg !6265
  %call24 = call ptr @free_irq(i32 noundef %23, ptr noundef %24) #11, !dbg !6266
  br label %if.end25, !dbg !6266

if.end25:                                         ; preds = %if.then22, %land.lhs.true19, %if.then14
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !6267
  call void @pci_disable_device(ptr noundef %25) #11, !dbg !6268
  br label %if.end26, !dbg !6269

if.end26:                                         ; preds = %if.end25, %land.lhs.true12, %cond.false, %cond.true
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6270
  br label %cleanup, !dbg !6270

cleanup:                                          ; preds = %if.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcd) #10, !dbg !6270
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6270

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6271 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6279, metadata !DIExpression()), !dbg !6284
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6280, metadata !DIExpression()), !dbg !6285
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !6286
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6281, metadata !DIExpression()), !dbg !6287
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6288
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6289
  %div = udiv i64 %1, 64, !dbg !6289
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6290
  store ptr %add.ptr, ptr %p, align 8, !dbg !6287
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !6291
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6282, metadata !DIExpression()), !dbg !6292
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6293
  %rem = urem i64 %2, 64, !dbg !6293
  %shl = shl i64 1, %rem, !dbg !6293
  store i64 %shl, ptr %mask, align 8, !dbg !6292
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6283, metadata !DIExpression()), !dbg !6295
  %3 = load ptr, ptr %p, align 8, !dbg !6296
  %4 = load i64, ptr %3, align 8, !dbg !6297
  store i64 %4, ptr %val, align 8, !dbg !6295
  %5 = load i64, ptr %val, align 8, !dbg !6298
  %6 = load i64, ptr %mask, align 8, !dbg !6299
  %and = and i64 %5, %6, !dbg !6300
  %tobool = icmp ne i64 %and, 0, !dbg !6301
  %lnot = xor i1 %tobool, true, !dbg !6301
  %lnot1 = xor i1 %lnot, true, !dbg !6302
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !6303
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !6303
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !6303
  ret i1 %lnot1, !dbg !6304
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6305 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6308, metadata !DIExpression()), !dbg !6310
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6309, metadata !DIExpression()), !dbg !6311
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6312
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6313
  %div = udiv i64 %1, 64, !dbg !6313
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6314
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !6315
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6316
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6317
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6318
  ret i1 %call, !dbg !6319
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6320 dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6321 dso_local ptr @free_irq(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hcd_pci_suspend(ptr noundef %dev) #0 align 16 !dbg !6324 {
entry:
  %dev.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6328
  %event = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !6329
  store i32 2, ptr %event, align 4, !dbg !6329
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !6330
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6330
  %call = call i32 @suspend_common(ptr noundef %0, i32 %1) #11, !dbg !6330
  ret i32 %call, !dbg !6331
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hcd_pci_resume(ptr noundef %dev) #0 align 16 !dbg !6332 {
entry:
  %dev.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6334, metadata !DIExpression()), !dbg !6335
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6336
  %event = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !6337
  store i32 16, ptr %event, align 4, !dbg !6337
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !6338
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6338
  %call = call i32 @resume_common(ptr noundef %0, i32 %1) #11, !dbg !6338
  ret i32 %call, !dbg !6339
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hcd_pci_restore(ptr noundef %dev) #0 align 16 !dbg !6340 {
entry:
  %dev.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6342, metadata !DIExpression()), !dbg !6343
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6344
  %event = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !6345
  store i32 64, ptr %event, align 4, !dbg !6345
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !6346
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6346
  %call = call i32 @resume_common(ptr noundef %0, i32 %1) #11, !dbg !6346
  ret i32 %call, !dbg !6347
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hcd_pci_poweroff_late(ptr noundef %dev) #0 align 16 !dbg !6348 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %hcd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6350, metadata !DIExpression()), !dbg !6355
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #10, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !6351, metadata !DIExpression()), !dbg !6357
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6352, metadata !DIExpression()), !dbg !6358
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6358
  store ptr %0, ptr %__mptr, align 8, !dbg !6358
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6358
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !6358
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6359
  %2 = load ptr, ptr %tmp, align 8, !dbg !6358
  store ptr %2, ptr %pci_dev, align 8, !dbg !6357
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcd) #10, !dbg !6360
  call void @llvm.dbg.declare(metadata ptr %hcd, metadata !6354, metadata !DIExpression()), !dbg !6361
  %3 = load ptr, ptr %pci_dev, align 8, !dbg !6362
  %call = call ptr @pci_get_drvdata(ptr noundef %3) #11, !dbg !6363
  store ptr %call, ptr %hcd, align 8, !dbg !6361
  %4 = load ptr, ptr %hcd, align 8, !dbg !6364
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 9, !dbg !6366
  %5 = load ptr, ptr %driver, align 8, !dbg !6366
  %pci_poweroff_late = getelementptr inbounds %struct.hc_driver, ptr %5, i32 0, i32 9, !dbg !6367
  %6 = load ptr, ptr %pci_poweroff_late, align 8, !dbg !6367
  %tobool = icmp ne ptr %6, null, !dbg !6364
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6368

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %hcd, align 8, !dbg !6369
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 12, !dbg !6369
  %8 = load i64, ptr %flags, align 8, !dbg !6369
  %and = and i64 %8, 64, !dbg !6369
  %tobool1 = icmp ne i64 %and, 0, !dbg !6369
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6370

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %hcd, align 8, !dbg !6371
  %driver2 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 9, !dbg !6372
  %10 = load ptr, ptr %driver2, align 8, !dbg !6372
  %pci_poweroff_late3 = getelementptr inbounds %struct.hc_driver, ptr %10, i32 0, i32 9, !dbg !6373
  %11 = load ptr, ptr %pci_poweroff_late3, align 8, !dbg !6373
  %12 = load ptr, ptr %hcd, align 8, !dbg !6374
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !6375
  %call4 = call zeroext i1 @device_may_wakeup(ptr noundef %13) #11, !dbg !6376
  %call5 = call i32 %11(ptr noundef %12, i1 noundef zeroext %call4) #11, !dbg !6371
  store i32 %call5, ptr %retval, align 4, !dbg !6377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6377

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !6378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6378

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcd) #10, !dbg !6379
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #10, !dbg !6379
  %14 = load i32, ptr %retval, align 4, !dbg !6379
  ret i32 %14, !dbg !6379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hcd_pci_suspend_noirq(ptr noundef %dev) #0 align 16 !dbg !6380 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %hcd = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6382, metadata !DIExpression()), !dbg !6388
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #10, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !6383, metadata !DIExpression()), !dbg !6390
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6391
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6384, metadata !DIExpression()), !dbg !6391
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6391
  store ptr %0, ptr %__mptr, align 8, !dbg !6391
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6391
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !6391
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6391
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6392
  %2 = load ptr, ptr %tmp, align 8, !dbg !6391
  store ptr %2, ptr %pci_dev, align 8, !dbg !6390
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcd) #10, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %hcd, metadata !6386, metadata !DIExpression()), !dbg !6394
  %3 = load ptr, ptr %pci_dev, align 8, !dbg !6395
  %call = call ptr @pci_get_drvdata(ptr noundef %3) #11, !dbg !6396
  store ptr %call, ptr %hcd, align 8, !dbg !6394
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10, !dbg !6397
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6387, metadata !DIExpression()), !dbg !6398
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6399
  %call2 = call i32 @check_root_hub_suspended(ptr noundef %4) #11, !dbg !6400
  store i32 %call2, ptr %retval1, align 4, !dbg !6401
  %5 = load i32, ptr %retval1, align 4, !dbg !6402
  %tobool = icmp ne i32 %5, 0, !dbg !6402
  br i1 %tobool, label %if.then, label %if.end, !dbg !6404

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %retval1, align 4, !dbg !6405
  store i32 %6, ptr %retval, align 4, !dbg !6406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6406

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pci_dev, align 8, !dbg !6407
  %call3 = call i32 @pci_save_state(ptr noundef %7) #11, !dbg !6408
  %8 = load ptr, ptr %hcd, align 8, !dbg !6409
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 12, !dbg !6409
  %9 = load i64, ptr %flags, align 8, !dbg !6409
  %and = and i64 %9, 64, !dbg !6409
  %tobool4 = icmp ne i64 %and, 0, !dbg !6409
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !6411

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !6412
  %call6 = call i32 @device_set_wakeup_enable(ptr noundef %10, i1 noundef zeroext false) #11, !dbg !6413
  br label %if.end7, !dbg !6413

if.end7:                                          ; preds = %if.then5, %if.end
  %11 = load ptr, ptr %pci_dev, align 8, !dbg !6414
  %call8 = call i32 @pci_prepare_to_sleep(ptr noundef %11) #11, !dbg !6415
  store i32 %call8, ptr %retval1, align 4, !dbg !6416
  %12 = load i32, ptr %retval1, align 4, !dbg !6417
  %cmp = icmp eq i32 %12, -5, !dbg !6419
  br i1 %cmp, label %if.then9, label %if.else, !dbg !6420

if.then9:                                         ; preds = %if.end7
  store i32 0, ptr %retval1, align 4, !dbg !6421
  br label %if.end14, !dbg !6423

if.else:                                          ; preds = %if.end7
  %13 = load i32, ptr %retval1, align 4, !dbg !6424
  %cmp10 = icmp eq i32 %13, 0, !dbg !6426
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !6427

if.then11:                                        ; preds = %if.else
  br label %if.end13, !dbg !6428

if.else12:                                        ; preds = %if.else
  br label %do.body, !dbg !6430

do.body:                                          ; preds = %if.else12
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !6432
  %15 = load i32, ptr %retval1, align 4, !dbg !6432
  call void @__suspend_report_result(ptr noundef @__func__.hcd_pci_suspend_noirq, ptr noundef %14, ptr noundef @pci_prepare_to_sleep, i32 noundef %15) #11, !dbg !6432
  br label %do.cond, !dbg !6432

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6432

do.end:                                           ; preds = %do.cond
  %16 = load i32, ptr %retval1, align 4, !dbg !6434
  store i32 %16, ptr %retval, align 4, !dbg !6435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6435

if.end13:                                         ; preds = %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then9
  %17 = load ptr, ptr %pci_dev, align 8, !dbg !6436
  call void @powermac_set_asic(ptr noundef %17, i32 noundef 0) #11, !dbg !6437
  %18 = load i32, ptr %retval1, align 4, !dbg !6438
  store i32 %18, ptr %retval, align 4, !dbg !6439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6439

cleanup:                                          ; preds = %if.end14, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcd) #10, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #10, !dbg !6440
  %19 = load i32, ptr %retval, align 4, !dbg !6440
  ret i32 %19, !dbg !6440
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hcd_pci_resume_noirq(ptr noundef %dev) #0 align 16 !dbg !6441 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6443, metadata !DIExpression()), !dbg !6446
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6447
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6444, metadata !DIExpression()), !dbg !6447
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6447
  store ptr %0, ptr %__mptr, align 8, !dbg !6447
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6447
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !6447
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6447
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6448
  %2 = load ptr, ptr %tmp, align 8, !dbg !6447
  call void @powermac_set_asic(ptr noundef %2, i32 noundef 1) #11, !dbg !6449
  ret i32 0, !dbg !6450
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_root_hub_suspended(ptr noundef %dev) #0 align 16 !dbg !6451 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %hcd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6453, metadata !DIExpression()), !dbg !6455
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcd) #10, !dbg !6456
  call void @llvm.dbg.declare(metadata ptr %hcd, metadata !6454, metadata !DIExpression()), !dbg !6457
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6458
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #11, !dbg !6459
  store ptr %call, ptr %hcd, align 8, !dbg !6457
  %1 = load ptr, ptr %hcd, align 8, !dbg !6460
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12, !dbg !6460
  %2 = load i64, ptr %flags, align 8, !dbg !6460
  %and = and i64 %2, 32, !dbg !6460
  %tobool = icmp ne i64 %and, 0, !dbg !6460
  br i1 %tobool, label %if.then, label %if.end, !dbg !6462

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6463

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6466

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6466

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6463
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef @.str.4) #12, !dbg !6463
  store i32 -16, ptr %retval, align 4, !dbg !6468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6468

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %hcd, align 8, !dbg !6469
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 24, !dbg !6471
  %5 = load ptr, ptr %shared_hcd, align 8, !dbg !6471
  %tobool1 = icmp ne ptr %5, null, !dbg !6469
  br i1 %tobool1, label %if.then2, label %if.end12, !dbg !6472

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %hcd, align 8, !dbg !6473
  %shared_hcd3 = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 24, !dbg !6475
  %7 = load ptr, ptr %shared_hcd3, align 8, !dbg !6475
  store ptr %7, ptr %hcd, align 8, !dbg !6476
  %8 = load ptr, ptr %hcd, align 8, !dbg !6477
  %flags4 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 12, !dbg !6477
  %9 = load i64, ptr %flags4, align 8, !dbg !6477
  %and5 = and i64 %9, 32, !dbg !6477
  %tobool6 = icmp ne i64 %and5, 0, !dbg !6477
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !6479

if.then7:                                         ; preds = %if.then2
  br label %do.body8, !dbg !6480

do.body8:                                         ; preds = %if.then7
  br label %do.cond9, !dbg !6483

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6483

do.end10:                                         ; preds = %do.cond9
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !6480
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef @.str.5) #12, !dbg !6480
  store i32 -16, ptr %retval, align 4, !dbg !6485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6485

if.end11:                                         ; preds = %if.then2
  br label %if.end12, !dbg !6486

if.end12:                                         ; preds = %if.end11, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6487

cleanup:                                          ; preds = %if.end12, %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcd) #10, !dbg !6488
  %11 = load i32, ptr %retval, align 4, !dbg !6488
  ret i32 %11, !dbg !6488
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hcd_pci_runtime_suspend(ptr noundef %dev) #0 align 16 !dbg !6489 {
entry:
  %dev.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %.compoundliteral = alloca %struct.pm_message, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6491, metadata !DIExpression()), !dbg !6496
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6492, metadata !DIExpression()), !dbg !6498
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6499
  %event = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !6500
  store i32 1026, ptr %event, align 4, !dbg !6500
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !6501
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6501
  %call = call i32 @suspend_common(ptr noundef %0, i32 %1) #11, !dbg !6501
  store i32 %call, ptr %retval1, align 4, !dbg !6502
  %2 = load i32, ptr %retval1, align 4, !dbg !6503
  %cmp = icmp eq i32 %2, 0, !dbg !6504
  br i1 %cmp, label %if.then, label %if.end, !dbg !6505

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6506
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6493, metadata !DIExpression()), !dbg !6506
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6506
  store ptr %3, ptr %__mptr, align 8, !dbg !6506
  %4 = load ptr, ptr %__mptr, align 8, !dbg !6506
  %add.ptr = getelementptr i8, ptr %4, i64 -184, !dbg !6506
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6507
  %5 = load ptr, ptr %tmp, align 8, !dbg !6506
  call void @powermac_set_asic(ptr noundef %5, i32 noundef 0) #11, !dbg !6508
  br label %if.end, !dbg !6508

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %retval1, align 4, !dbg !6509
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10, !dbg !6510
  ret i32 %6, !dbg !6511
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hcd_pci_runtime_resume(ptr noundef %dev) #0 align 16 !dbg !6512 {
entry:
  %dev.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6514, metadata !DIExpression()), !dbg !6518
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10, !dbg !6519
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6515, metadata !DIExpression()), !dbg !6520
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6516, metadata !DIExpression()), !dbg !6521
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6521
  store ptr %0, ptr %__mptr, align 8, !dbg !6521
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6521
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !6521
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6521
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6522
  %2 = load ptr, ptr %tmp, align 8, !dbg !6521
  call void @powermac_set_asic(ptr noundef %2, i32 noundef 1) #11, !dbg !6523
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6524
  %event = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !6525
  store i32 1040, ptr %event, align 4, !dbg !6525
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !6526
  %4 = load i32, ptr %coerce.dive, align 4, !dbg !6526
  %call = call i32 @resume_common(ptr noundef %3, i32 %4) #11, !dbg !6526
  store i32 %call, ptr %retval1, align 4, !dbg !6527
  %5 = load i32, ptr %retval1, align 4, !dbg !6528
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10, !dbg !6529
  ret i32 %5, !dbg !6530
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !6531 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6535, metadata !DIExpression()), !dbg !6536
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6537
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6539
  %1 = load ptr, ptr %init_name, align 8, !dbg !6539
  %tobool = icmp ne ptr %1, null, !dbg !6537
  br i1 %tobool, label %if.then, label %if.end, !dbg !6540

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6541
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6542
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6542
  store ptr %3, ptr %retval, align 8, !dbg !6543
  br label %return, !dbg !6543

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6544
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6545
  %call = call ptr @kobject_name(ptr noundef %kobj) #11, !dbg !6546
  store ptr %call, ptr %retval, align 8, !dbg !6547
  br label %return, !dbg !6547

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6548
  ret ptr %5, !dbg !6548
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !6549 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6551, metadata !DIExpression()), !dbg !6552
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6553
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6554
  %1 = load ptr, ptr %name, align 8, !dbg !6554
  ret ptr %1, !dbg !6555
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6556 dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_ohci_or_uhci(ptr noundef %pdev) #5 align 16 !dbg !6559 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6561, metadata !DIExpression()), !dbg !6562
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6563
  %class = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11, !dbg !6564
  %1 = load i32, ptr %class, align 4, !dbg !6564
  %cmp = icmp eq i32 %1, 787216, !dbg !6565
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6566

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !6567
  %class1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 11, !dbg !6568
  %3 = load i32, ptr %class1, align 4, !dbg !6568
  %cmp2 = icmp eq i32 %3, 787200, !dbg !6569
  br label %lor.end, !dbg !6566

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !6566
  ret i32 %lor.ext, !dbg !6570
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_lock(ptr noundef %dev) #5 align 16 !dbg !6571 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6573, metadata !DIExpression()), !dbg !6574
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6575
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !6576
  call void @mutex_lock(ptr noundef %mutex) #11, !dbg !6577
  ret void, !dbg !6578
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6579 dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6583 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #5 align 16 !dbg !6586 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6590, metadata !DIExpression()), !dbg !6591
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6592
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !6593
  %1 = load ptr, ptr %driver_data, align 8, !dbg !6593
  ret ptr %1, !dbg !6594
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_unlock(ptr noundef %dev) #5 align 16 !dbg !6595 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6597, metadata !DIExpression()), !dbg !6598
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6599
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !6600
  call void @mutex_unlock(ptr noundef %mutex) #11, !dbg !6601
  ret void, !dbg !6602
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6603 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #6 align 16 !dbg !6604 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6610, metadata !DIExpression()), !dbg !6613
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !6611, metadata !DIExpression()), !dbg !6614
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !6612, metadata !DIExpression()), !dbg !6615
  br label %do.body, !dbg !6616

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6617

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6619
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6620
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6621
  %2 = load i32, ptr %a.addr, align 4, !dbg !6622
  %3 = load i32, ptr %u.addr, align 4, !dbg !6623
  %call = call zeroext i1 @raw_atomic_add_unless(ptr noundef %1, i32 noundef %2, i32 noundef %3) #11, !dbg !6624
  ret i1 %call, !dbg !6625
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6626 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6634, metadata !DIExpression()), !dbg !6636
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6635, metadata !DIExpression()), !dbg !6637
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6638
  %1 = load i64, ptr %size.addr, align 8, !dbg !6639
  %conv = trunc i64 %1 to i32, !dbg !6639
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6640
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6641
  %3 = load i64, ptr %size.addr, align 8, !dbg !6641
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !6641
  ret void, !dbg !6642
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #6 align 16 !dbg !6643 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6646, metadata !DIExpression()), !dbg !6649
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !6647, metadata !DIExpression()), !dbg !6650
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !6648, metadata !DIExpression()), !dbg !6651
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6652
  %1 = load i32, ptr %a.addr, align 4, !dbg !6653
  %2 = load i32, ptr %u.addr, align 4, !dbg !6654
  %call = call i32 @raw_atomic_fetch_add_unless(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11, !dbg !6655
  %3 = load i32, ptr %u.addr, align 4, !dbg !6656
  %cmp = icmp ne i32 %call, %3, !dbg !6657
  ret i1 %cmp, !dbg !6658
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6659 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6664, metadata !DIExpression()), !dbg !6666
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6665, metadata !DIExpression()), !dbg !6667
  ret i1 true, !dbg !6668
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6669 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6674, metadata !DIExpression()), !dbg !6677
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6675, metadata !DIExpression()), !dbg !6678
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6676, metadata !DIExpression()), !dbg !6679
  ret void, !dbg !6680
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #6 align 16 !dbg !6681 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6685, metadata !DIExpression()), !dbg !6689
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !6686, metadata !DIExpression()), !dbg !6690
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !6687, metadata !DIExpression()), !dbg !6691
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #10, !dbg !6692
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6688, metadata !DIExpression()), !dbg !6693
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6694
  %call = call i32 @raw_atomic_read(ptr noundef %0) #11, !dbg !6695
  store i32 %call, ptr %c, align 4, !dbg !6693
  br label %do.body, !dbg !6696

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %c, align 4, !dbg !6697
  %2 = load i32, ptr %u.addr, align 4, !dbg !6697
  %cmp = icmp eq i32 %1, %2, !dbg !6697
  %lnot = xor i1 %cmp, true, !dbg !6697
  %lnot1 = xor i1 %lnot, true, !dbg !6697
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6697
  %conv = sext i32 %lnot.ext to i64, !dbg !6697
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6697
  %tobool = icmp ne i64 %expval, 0, !dbg !6697
  br i1 %tobool, label %if.then, label %if.end, !dbg !6700

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !6701

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6702

do.cond:                                          ; preds = %if.end
  %3 = load ptr, ptr %v.addr, align 8, !dbg !6703
  %4 = load i32, ptr %c, align 4, !dbg !6704
  %5 = load i32, ptr %a.addr, align 4, !dbg !6705
  %add = add i32 %4, %5, !dbg !6706
  %call2 = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %3, ptr noundef %c, i32 noundef %add) #11, !dbg !6707
  %lnot3 = xor i1 %call2, true, !dbg !6708
  br i1 %lnot3, label %do.body, label %do.end, !dbg !6702, !llvm.loop !6709

do.end:                                           ; preds = %do.cond, %if.then
  %6 = load i32, ptr %c, align 4, !dbg !6711
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #10, !dbg !6712
  ret i32 %6, !dbg !6713
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !6714 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6720, metadata !DIExpression()), !dbg !6721
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6722
  %call = call i32 @arch_atomic_read(ptr noundef %0) #11, !dbg !6723
  ret i32 %call, !dbg !6724
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !6725 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6729, metadata !DIExpression()), !dbg !6732
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6730, metadata !DIExpression()), !dbg !6733
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6731, metadata !DIExpression()), !dbg !6734
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6735
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6736
  %2 = load i32, ptr %new.addr, align 4, !dbg !6737
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11, !dbg !6738
  ret i1 %call, !dbg !6739
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !6740 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6743, metadata !DIExpression()), !dbg !6744
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6745
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6745
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6745
  ret i32 %1, !dbg !6746
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !6747 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6749, metadata !DIExpression()), !dbg !6758
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6750, metadata !DIExpression()), !dbg !6759
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6751, metadata !DIExpression()), !dbg !6760
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #10, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6752, metadata !DIExpression()), !dbg !6761
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #10, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !6754, metadata !DIExpression()), !dbg !6761
  %0 = load ptr, ptr %old.addr, align 8, !dbg !6761
  store ptr %0, ptr %_old, align 8, !dbg !6761
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #10, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6755, metadata !DIExpression()), !dbg !6761
  %1 = load ptr, ptr %_old, align 8, !dbg !6761
  %2 = load i32, ptr %1, align 4, !dbg !6761
  store i32 %2, ptr %__old, align 4, !dbg !6761
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #10, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6756, metadata !DIExpression()), !dbg !6761
  %3 = load i32, ptr %new.addr, align 4, !dbg !6761
  store i32 %3, ptr %__new, align 4, !dbg !6761
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6757, metadata !DIExpression()), !dbg !6761
  %4 = load ptr, ptr %v.addr, align 8, !dbg !6761
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !6761
  store ptr %counter, ptr %__ptr, align 8, !dbg !6761
  %5 = load ptr, ptr %__ptr, align 8, !dbg !6761
  %6 = load i32, ptr %__old, align 4, !dbg !6761
  %7 = load i32, ptr %__new, align 4, !dbg !6761
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #10, !dbg !6761, !srcloc !6762
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !6761
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !6761
  %9 = icmp ult i8 %asmresult, 2, !dbg !6761
  call void @llvm.assume(i1 %9), !dbg !6761
  store i8 %asmresult, ptr %success, align 1, !dbg !6761
  store i32 %asmresult1, ptr %__old, align 4, !dbg !6761
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !6761
  %10 = load i8, ptr %success, align 1, !dbg !6763, !range !6765, !noundef !1024
  %tobool = trunc i8 %10 to i1, !dbg !6763
  %lnot = xor i1 %tobool, true, !dbg !6763
  %lnot2 = xor i1 %lnot, true, !dbg !6763
  %lnot3 = xor i1 %lnot2, true, !dbg !6763
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6763
  %conv = sext i32 %lnot.ext to i64, !dbg !6763
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6763
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6763
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6761

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !6763
  %12 = load ptr, ptr %_old, align 8, !dbg !6763
  store i32 %11, ptr %12, align 4, !dbg !6763
  br label %if.end, !dbg !6763

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !6761, !range !6765, !noundef !1024
  %tobool5 = trunc i8 %13 to i1, !dbg !6761
  %lnot6 = xor i1 %tobool5, true, !dbg !6761
  %lnot8 = xor i1 %lnot6, true, !dbg !6761
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6761
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6761
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !6761
  store i64 %expval11, ptr %tmp, align 8, !dbg !6763
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #10, !dbg !6766
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #10, !dbg !6766
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #10, !dbg !6766
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #10, !dbg !6766
  %14 = load i64, ptr %tmp, align 8, !dbg !6761
  %tobool12 = icmp ne i64 %14, 0, !dbg !6766
  ret i1 %tobool12, !dbg !6767
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #6 align 16 !dbg !6768 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6772, metadata !DIExpression()), !dbg !6773
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6774
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6775
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6776
  call void @raw_atomic_inc(ptr noundef %1) #11, !dbg !6777
  ret void, !dbg !6778
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #6 align 16 !dbg !6779 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6781, metadata !DIExpression()), !dbg !6782
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6783
  call void @arch_atomic_inc(ptr noundef %0) #11, !dbg !6784
  ret void, !dbg !6785
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #6 align 16 !dbg !6786 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6788, metadata !DIExpression()), !dbg !6789
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6790
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6791
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #10, !dbg !6792, !srcloc !6793
  ret void, !dbg !6794
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #6 align 16 !dbg !6795 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6796, !srcloc !6797
  ret void, !dbg !6798
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #6 align 16 !dbg !6799 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6800, !srcloc !6801
  ret void, !dbg !6802
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6803 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6805, metadata !DIExpression()), !dbg !6807
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6806, metadata !DIExpression()), !dbg !6808
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6809
  %1 = load i64, ptr %size.addr, align 8, !dbg !6810
  %conv = trunc i64 %1 to i32, !dbg !6810
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !6811
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6812
  %3 = load i64, ptr %size.addr, align 8, !dbg !6812
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !6812
  ret void, !dbg !6813
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6814 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6817, metadata !DIExpression()), !dbg !6819
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6818, metadata !DIExpression()), !dbg !6820
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6821
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6822
  br i1 %1, label %cond.true, label %cond.false, !dbg !6822

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6823
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6824
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !6825
  %conv = zext i1 %call to i32, !dbg !6825
  br label %cond.end, !dbg !6822

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6826
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6827
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !6828
  %conv2 = zext i1 %call1 to i32, !dbg !6828
  br label %cond.end, !dbg !6822

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6822
  %tobool = icmp ne i32 %cond, 0, !dbg !6822
  ret i1 %tobool, !dbg !6829
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6830 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6832, metadata !DIExpression()), !dbg !6834
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6833, metadata !DIExpression()), !dbg !6835
  ret i1 true, !dbg !6836
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6837 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6841, metadata !DIExpression()), !dbg !6843
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6842, metadata !DIExpression()), !dbg !6844
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6845
  %and = and i64 %0, 63, !dbg !6846
  %shl = shl i64 1, %and, !dbg !6847
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6848
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6849
  %shr = ashr i64 %2, 6, !dbg !6850
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6848
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6848
  %and1 = and i64 %shl, %3, !dbg !6851
  %cmp = icmp ne i64 %and1, 0, !dbg !6852
  ret i1 %cmp, !dbg !6853
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6854 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6856, metadata !DIExpression()), !dbg !6859
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6857, metadata !DIExpression()), !dbg !6860
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !6861
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6858, metadata !DIExpression()), !dbg !6862
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6863
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6864
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !6865, !srcloc !6866
  %3 = icmp ult i8 %2, 2, !dbg !6865
  call void @llvm.assume(i1 %3), !dbg !6865
  store i8 %2, ptr %oldbit, align 1, !dbg !6865
  %4 = load i8, ptr %oldbit, align 1, !dbg !6867, !range !6765, !noundef !1024
  %tobool = trunc i8 %4 to i1, !dbg !6867
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !6868
  ret i1 %tobool, !dbg !6869
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @suspend_common(ptr noundef %dev, i32 %msg.coerce) #0 align 16 !dbg !6870 {
entry:
  %retval = alloca i32, align 4
  %msg = alloca %struct.pm_message, align 4
  %dev.addr = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %hcd = alloca ptr, align 8
  %do_wakeup = alloca i8, align 1
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %msg, i32 0, i32 0
  store i32 %msg.coerce, ptr %coerce.dive, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6872, metadata !DIExpression()), !dbg !6880
  call void @llvm.dbg.declare(metadata ptr %msg, metadata !6873, metadata !DIExpression()), !dbg !6881
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #10, !dbg !6882
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !6874, metadata !DIExpression()), !dbg !6883
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6884
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6875, metadata !DIExpression()), !dbg !6884
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6884
  store ptr %0, ptr %__mptr, align 8, !dbg !6884
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6884
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !6884
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6884
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6885
  %2 = load ptr, ptr %tmp, align 8, !dbg !6884
  store ptr %2, ptr %pci_dev, align 8, !dbg !6883
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcd) #10, !dbg !6886
  call void @llvm.dbg.declare(metadata ptr %hcd, metadata !6877, metadata !DIExpression()), !dbg !6887
  %3 = load ptr, ptr %pci_dev, align 8, !dbg !6888
  %call = call ptr @pci_get_drvdata(ptr noundef %3) #11, !dbg !6889
  store ptr %call, ptr %hcd, align 8, !dbg !6887
  call void @llvm.lifetime.start.p0(i64 1, ptr %do_wakeup) #10, !dbg !6890
  call void @llvm.dbg.declare(metadata ptr %do_wakeup, metadata !6878, metadata !DIExpression()), !dbg !6891
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10, !dbg !6892
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6879, metadata !DIExpression()), !dbg !6893
  %event = getelementptr inbounds %struct.pm_message, ptr %msg, i32 0, i32 0, !dbg !6894
  %4 = load i32, ptr %event, align 4, !dbg !6894
  %and = and i32 %4, 1024, !dbg !6894
  %cmp = icmp ne i32 %and, 0, !dbg !6894
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6894

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6894

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6895
  %call2 = call zeroext i1 @device_may_wakeup(ptr noundef %5) #11, !dbg !6896
  %conv = zext i1 %call2 to i32, !dbg !6896
  br label %cond.end, !dbg !6894

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv, %cond.false ], !dbg !6894
  %tobool = icmp ne i32 %cond, 0, !dbg !6894
  %frombool = zext i1 %tobool to i8, !dbg !6897
  store i8 %frombool, ptr %do_wakeup, align 1, !dbg !6897
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6898
  %call3 = call i32 @check_root_hub_suspended(ptr noundef %6) #11, !dbg !6899
  store i32 %call3, ptr %retval1, align 4, !dbg !6900
  %7 = load i32, ptr %retval1, align 4, !dbg !6901
  %tobool4 = icmp ne i32 %7, 0, !dbg !6901
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6903

if.then:                                          ; preds = %cond.end
  %8 = load i32, ptr %retval1, align 4, !dbg !6904
  store i32 %8, ptr %retval, align 4, !dbg !6905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6905

if.end:                                           ; preds = %cond.end
  %9 = load ptr, ptr %hcd, align 8, !dbg !6906
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 9, !dbg !6908
  %10 = load ptr, ptr %driver, align 8, !dbg !6908
  %pci_suspend = getelementptr inbounds %struct.hc_driver, ptr %10, i32 0, i32 7, !dbg !6909
  %11 = load ptr, ptr %pci_suspend, align 8, !dbg !6909
  %tobool5 = icmp ne ptr %11, null, !dbg !6906
  br i1 %tobool5, label %land.lhs.true, label %if.end69, !dbg !6910

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %hcd, align 8, !dbg !6911
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 12, !dbg !6911
  %13 = load i64, ptr %flags, align 8, !dbg !6911
  %and6 = and i64 %13, 64, !dbg !6911
  %tobool7 = icmp ne i64 %and6, 0, !dbg !6911
  br i1 %tobool7, label %if.end69, label %if.then8, !dbg !6912

if.then8:                                         ; preds = %land.lhs.true
  %14 = load i8, ptr %do_wakeup, align 1, !dbg !6913, !range !6765, !noundef !1024
  %tobool9 = trunc i8 %14 to i1, !dbg !6913
  br i1 %tobool9, label %land.lhs.true11, label %if.end16, !dbg !6916

land.lhs.true11:                                  ; preds = %if.then8
  %15 = load ptr, ptr %hcd, align 8, !dbg !6917
  %flags12 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 12, !dbg !6917
  %16 = load i64, ptr %flags12, align 8, !dbg !6917
  %and13 = and i64 %16, 16, !dbg !6917
  %tobool14 = icmp ne i64 %and13, 0, !dbg !6917
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6918

if.then15:                                        ; preds = %land.lhs.true11
  store i32 -16, ptr %retval, align 4, !dbg !6919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6919

if.end16:                                         ; preds = %land.lhs.true11, %if.then8
  %17 = load i8, ptr %do_wakeup, align 1, !dbg !6920, !range !6765, !noundef !1024
  %tobool17 = trunc i8 %17 to i1, !dbg !6920
  br i1 %tobool17, label %land.lhs.true19, label %if.end27, !dbg !6922

land.lhs.true19:                                  ; preds = %if.end16
  %18 = load ptr, ptr %hcd, align 8, !dbg !6923
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %18, i32 0, i32 24, !dbg !6924
  %19 = load ptr, ptr %shared_hcd, align 8, !dbg !6924
  %tobool20 = icmp ne ptr %19, null, !dbg !6923
  br i1 %tobool20, label %land.lhs.true21, label %if.end27, !dbg !6925

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %20 = load ptr, ptr %hcd, align 8, !dbg !6926
  %shared_hcd22 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 0, i32 24, !dbg !6926
  %21 = load ptr, ptr %shared_hcd22, align 8, !dbg !6926
  %flags23 = getelementptr inbounds %struct.usb_hcd, ptr %21, i32 0, i32 12, !dbg !6926
  %22 = load i64, ptr %flags23, align 8, !dbg !6926
  %and24 = and i64 %22, 16, !dbg !6926
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6926
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6927

if.then26:                                        ; preds = %land.lhs.true21
  store i32 -16, ptr %retval, align 4, !dbg !6928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6928

if.end27:                                         ; preds = %land.lhs.true21, %land.lhs.true19, %if.end16
  %23 = load ptr, ptr %hcd, align 8, !dbg !6929
  %driver28 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 0, i32 9, !dbg !6930
  %24 = load ptr, ptr %driver28, align 8, !dbg !6930
  %pci_suspend29 = getelementptr inbounds %struct.hc_driver, ptr %24, i32 0, i32 7, !dbg !6931
  %25 = load ptr, ptr %pci_suspend29, align 8, !dbg !6931
  %26 = load ptr, ptr %hcd, align 8, !dbg !6932
  %27 = load i8, ptr %do_wakeup, align 1, !dbg !6933, !range !6765, !noundef !1024
  %tobool30 = trunc i8 %27 to i1, !dbg !6933
  %call31 = call i32 %25(ptr noundef %26, i1 noundef zeroext %tobool30) #11, !dbg !6929
  store i32 %call31, ptr %retval1, align 4, !dbg !6934
  br label %do.body, !dbg !6935

do.body:                                          ; preds = %if.end27
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !6936
  %29 = load ptr, ptr %hcd, align 8, !dbg !6936
  %driver32 = getelementptr inbounds %struct.usb_hcd, ptr %29, i32 0, i32 9, !dbg !6936
  %30 = load ptr, ptr %driver32, align 8, !dbg !6936
  %pci_suspend33 = getelementptr inbounds %struct.hc_driver, ptr %30, i32 0, i32 7, !dbg !6936
  %31 = load ptr, ptr %pci_suspend33, align 8, !dbg !6936
  %32 = load i32, ptr %retval1, align 4, !dbg !6936
  call void @__suspend_report_result(ptr noundef @__func__.suspend_common, ptr noundef %28, ptr noundef %31, i32 noundef %32) #11, !dbg !6936
  br label %do.cond, !dbg !6936

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6936

do.end:                                           ; preds = %do.cond
  %33 = load i32, ptr %retval1, align 4, !dbg !6938
  %cmp34 = icmp eq i32 %33, 0, !dbg !6940
  br i1 %cmp34, label %land.lhs.true36, label %lor.lhs.false, !dbg !6941

land.lhs.true36:                                  ; preds = %do.end
  %34 = load i8, ptr %do_wakeup, align 1, !dbg !6942, !range !6765, !noundef !1024
  %tobool37 = trunc i8 %34 to i1, !dbg !6942
  br i1 %tobool37, label %land.lhs.true39, label %lor.lhs.false, !dbg !6943

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %35 = load ptr, ptr %hcd, align 8, !dbg !6944
  %flags40 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 0, i32 12, !dbg !6944
  %36 = load i64, ptr %flags40, align 8, !dbg !6944
  %and41 = and i64 %36, 16, !dbg !6944
  %tobool42 = icmp ne i64 %and41, 0, !dbg !6944
  br i1 %tobool42, label %if.then56, label %lor.lhs.false, !dbg !6945

lor.lhs.false:                                    ; preds = %land.lhs.true39, %land.lhs.true36, %do.end
  %37 = load i32, ptr %retval1, align 4, !dbg !6946
  %cmp43 = icmp eq i32 %37, 0, !dbg !6947
  br i1 %cmp43, label %land.lhs.true45, label %if.end65, !dbg !6948

land.lhs.true45:                                  ; preds = %lor.lhs.false
  %38 = load i8, ptr %do_wakeup, align 1, !dbg !6949, !range !6765, !noundef !1024
  %tobool46 = trunc i8 %38 to i1, !dbg !6949
  br i1 %tobool46, label %land.lhs.true48, label %if.end65, !dbg !6950

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %39 = load ptr, ptr %hcd, align 8, !dbg !6951
  %shared_hcd49 = getelementptr inbounds %struct.usb_hcd, ptr %39, i32 0, i32 24, !dbg !6952
  %40 = load ptr, ptr %shared_hcd49, align 8, !dbg !6952
  %tobool50 = icmp ne ptr %40, null, !dbg !6951
  br i1 %tobool50, label %land.lhs.true51, label %if.end65, !dbg !6953

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %41 = load ptr, ptr %hcd, align 8, !dbg !6954
  %shared_hcd52 = getelementptr inbounds %struct.usb_hcd, ptr %41, i32 0, i32 24, !dbg !6954
  %42 = load ptr, ptr %shared_hcd52, align 8, !dbg !6954
  %flags53 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 0, i32 12, !dbg !6954
  %43 = load i64, ptr %flags53, align 8, !dbg !6954
  %and54 = and i64 %43, 16, !dbg !6954
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6954
  br i1 %tobool55, label %if.then56, label %if.end65, !dbg !6955

if.then56:                                        ; preds = %land.lhs.true51, %land.lhs.true39
  %44 = load ptr, ptr %hcd, align 8, !dbg !6956
  %driver57 = getelementptr inbounds %struct.usb_hcd, ptr %44, i32 0, i32 9, !dbg !6959
  %45 = load ptr, ptr %driver57, align 8, !dbg !6959
  %pci_resume = getelementptr inbounds %struct.hc_driver, ptr %45, i32 0, i32 8, !dbg !6960
  %46 = load ptr, ptr %pci_resume, align 8, !dbg !6960
  %tobool58 = icmp ne ptr %46, null, !dbg !6956
  br i1 %tobool58, label %if.then59, label %if.end64, !dbg !6961

if.then59:                                        ; preds = %if.then56
  %47 = load ptr, ptr %hcd, align 8, !dbg !6962
  %driver60 = getelementptr inbounds %struct.usb_hcd, ptr %47, i32 0, i32 9, !dbg !6963
  %48 = load ptr, ptr %driver60, align 8, !dbg !6963
  %pci_resume61 = getelementptr inbounds %struct.hc_driver, ptr %48, i32 0, i32 8, !dbg !6964
  %49 = load ptr, ptr %pci_resume61, align 8, !dbg !6964
  %50 = load ptr, ptr %hcd, align 8, !dbg !6965
  %coerce.dive62 = getelementptr inbounds %struct.pm_message, ptr %msg, i32 0, i32 0, !dbg !6962
  %51 = load i32, ptr %coerce.dive62, align 4, !dbg !6962
  %call63 = call i32 %49(ptr noundef %50, i32 %51) #11, !dbg !6962
  br label %if.end64, !dbg !6962

if.end64:                                         ; preds = %if.then59, %if.then56
  store i32 -16, ptr %retval1, align 4, !dbg !6966
  br label %if.end65, !dbg !6967

if.end65:                                         ; preds = %if.end64, %land.lhs.true51, %land.lhs.true48, %land.lhs.true45, %lor.lhs.false
  %52 = load i32, ptr %retval1, align 4, !dbg !6968
  %tobool66 = icmp ne i32 %52, 0, !dbg !6968
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !6970

if.then67:                                        ; preds = %if.end65
  %53 = load i32, ptr %retval1, align 4, !dbg !6971
  store i32 %53, ptr %retval, align 4, !dbg !6972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6972

if.end68:                                         ; preds = %if.end65
  br label %if.end69, !dbg !6973

if.end69:                                         ; preds = %if.end68, %land.lhs.true, %if.end
  %54 = load ptr, ptr %hcd, align 8, !dbg !6974
  %msix_enabled = getelementptr inbounds %struct.usb_hcd, ptr %54, i32 0, i32 14, !dbg !6976
  %bf.load = load i16, ptr %msix_enabled, align 4, !dbg !6976
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !6976
  %bf.clear = and i16 %bf.lshr, 1, !dbg !6976
  %bf.cast = zext i16 %bf.clear to i32, !dbg !6976
  %tobool70 = icmp ne i32 %bf.cast, 0, !dbg !6974
  br i1 %tobool70, label %if.end73, label %if.then71, !dbg !6977

if.then71:                                        ; preds = %if.end69
  %55 = load ptr, ptr %pci_dev, align 8, !dbg !6978
  %call72 = call i32 @pci_irq_vector(ptr noundef %55, i32 noundef 0) #11, !dbg !6979
  call void @synchronize_irq(i32 noundef %call72) #11, !dbg !6980
  br label %if.end73, !dbg !6980

if.end73:                                         ; preds = %if.then71, %if.end69
  %56 = load ptr, ptr %pci_dev, align 8, !dbg !6981
  call void @pci_disable_device(ptr noundef %56) #11, !dbg !6982
  %57 = load i32, ptr %retval1, align 4, !dbg !6983
  store i32 %57, ptr %retval, align 4, !dbg !6984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6984

cleanup:                                          ; preds = %if.end73, %if.then67, %if.then26, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10, !dbg !6985
  call void @llvm.lifetime.end.p0(i64 1, ptr %do_wakeup) #10, !dbg !6985
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcd) #10, !dbg !6985
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #10, !dbg !6985
  %58 = load i32, ptr %retval, align 4, !dbg !6985
  ret i32 %58, !dbg !6985
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_may_wakeup(ptr noundef %dev) #5 align 16 !dbg !6986 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6990, metadata !DIExpression()), !dbg !6991
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6992
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !6993
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !6994
  %bf.load = load i16, ptr %can_wakeup, align 4, !dbg !6994
  %bf.clear = and i16 %bf.load, 1, !dbg !6994
  %bf.cast = zext i16 %bf.clear to i32, !dbg !6994
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6992
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6995

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6996
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !6997
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !6998
  %2 = load ptr, ptr %wakeup, align 8, !dbg !6998
  %tobool2 = icmp ne ptr %2, null, !dbg !6999
  %lnot = xor i1 %tobool2, true, !dbg !6999
  %lnot3 = xor i1 %lnot, true, !dbg !7000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !7001
  ret i1 %3, !dbg !7002
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7003 dso_local void @__suspend_report_result(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7006 dso_local void @synchronize_irq(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @resume_common(ptr noundef %dev, i32 %msg.coerce) #0 align 16 !dbg !7010 {
entry:
  %retval = alloca i32, align 4
  %msg = alloca %struct.pm_message, align 4
  %dev.addr = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %hcd = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %msg, i32 0, i32 0
  store i32 %msg.coerce, ptr %coerce.dive, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7012, metadata !DIExpression()), !dbg !7019
  call void @llvm.dbg.declare(metadata ptr %msg, metadata !7013, metadata !DIExpression()), !dbg !7020
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #10, !dbg !7021
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !7014, metadata !DIExpression()), !dbg !7022
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !7023
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7015, metadata !DIExpression()), !dbg !7023
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7023
  store ptr %0, ptr %__mptr, align 8, !dbg !7023
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7023
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !7023
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7023
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !7024
  %2 = load ptr, ptr %tmp, align 8, !dbg !7023
  store ptr %2, ptr %pci_dev, align 8, !dbg !7022
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcd) #10, !dbg !7025
  call void @llvm.dbg.declare(metadata ptr %hcd, metadata !7017, metadata !DIExpression()), !dbg !7026
  %3 = load ptr, ptr %pci_dev, align 8, !dbg !7027
  %call = call ptr @pci_get_drvdata(ptr noundef %3) #11, !dbg !7028
  store ptr %call, ptr %hcd, align 8, !dbg !7026
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10, !dbg !7029
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !7018, metadata !DIExpression()), !dbg !7030
  %4 = load ptr, ptr %hcd, align 8, !dbg !7031
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 12, !dbg !7031
  %5 = load i64, ptr %flags, align 8, !dbg !7031
  %and = and i64 %5, 32, !dbg !7031
  %tobool = icmp ne i64 %and, 0, !dbg !7031
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !7033

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %hcd, align 8, !dbg !7034
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 24, !dbg !7035
  %7 = load ptr, ptr %shared_hcd, align 8, !dbg !7035
  %tobool2 = icmp ne ptr %7, null, !dbg !7034
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !7036

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load ptr, ptr %hcd, align 8, !dbg !7037
  %shared_hcd3 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 24, !dbg !7037
  %9 = load ptr, ptr %shared_hcd3, align 8, !dbg !7037
  %flags4 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 12, !dbg !7037
  %10 = load i64, ptr %flags4, align 8, !dbg !7037
  %and5 = and i64 %10, 32, !dbg !7037
  %tobool6 = icmp ne i64 %and5, 0, !dbg !7037
  br i1 %tobool6, label %if.then, label %if.end, !dbg !7038

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !7039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7039

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %11 = load ptr, ptr %pci_dev, align 8, !dbg !7041
  %call7 = call i32 @pci_enable_device(ptr noundef %11) #11, !dbg !7042
  store i32 %call7, ptr %retval1, align 4, !dbg !7043
  %12 = load i32, ptr %retval1, align 4, !dbg !7044
  %cmp = icmp slt i32 %12, 0, !dbg !7046
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !7047

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !7048

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !7051

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7051

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !7048
  %14 = load i32, ptr %retval1, align 4, !dbg !7048
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef @.str.2, i32 noundef %14) #12, !dbg !7048
  %15 = load i32, ptr %retval1, align 4, !dbg !7053
  store i32 %15, ptr %retval, align 4, !dbg !7054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7054

if.end9:                                          ; preds = %if.end
  %16 = load ptr, ptr %pci_dev, align 8, !dbg !7055
  call void @pci_set_master(ptr noundef %16) #11, !dbg !7056
  %17 = load ptr, ptr %hcd, align 8, !dbg !7057
  %driver = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 0, i32 9, !dbg !7059
  %18 = load ptr, ptr %driver, align 8, !dbg !7059
  %pci_resume = getelementptr inbounds %struct.hc_driver, ptr %18, i32 0, i32 8, !dbg !7060
  %19 = load ptr, ptr %pci_resume, align 8, !dbg !7060
  %tobool10 = icmp ne ptr %19, null, !dbg !7057
  br i1 %tobool10, label %land.lhs.true11, label %if.end31, !dbg !7061

land.lhs.true11:                                  ; preds = %if.end9
  %20 = load ptr, ptr %hcd, align 8, !dbg !7062
  %flags12 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 0, i32 12, !dbg !7062
  %21 = load i64, ptr %flags12, align 8, !dbg !7062
  %and13 = and i64 %21, 64, !dbg !7062
  %tobool14 = icmp ne i64 %and13, 0, !dbg !7062
  br i1 %tobool14, label %if.end31, label %if.then15, !dbg !7063

if.then15:                                        ; preds = %land.lhs.true11
  %22 = load ptr, ptr %pci_dev, align 8, !dbg !7064
  %class = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 11, !dbg !7067
  %23 = load i32, ptr %class, align 4, !dbg !7067
  %cmp16 = icmp eq i32 %23, 787232, !dbg !7068
  br i1 %cmp16, label %land.lhs.true17, label %if.end20, !dbg !7069

land.lhs.true17:                                  ; preds = %if.then15
  %event = getelementptr inbounds %struct.pm_message, ptr %msg, i32 0, i32 0, !dbg !7070
  %24 = load i32, ptr %event, align 4, !dbg !7070
  %cmp18 = icmp ne i32 %24, 1040, !dbg !7071
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7072

if.then19:                                        ; preds = %land.lhs.true17
  %25 = load ptr, ptr %pci_dev, align 8, !dbg !7073
  %26 = load ptr, ptr %hcd, align 8, !dbg !7074
  call void @for_each_companion(ptr noundef %25, ptr noundef %26, ptr noundef @ehci_wait_for_companions) #11, !dbg !7075
  br label %if.end20, !dbg !7075

if.end20:                                         ; preds = %if.then19, %land.lhs.true17, %if.then15
  %27 = load ptr, ptr %hcd, align 8, !dbg !7076
  %driver21 = getelementptr inbounds %struct.usb_hcd, ptr %27, i32 0, i32 9, !dbg !7077
  %28 = load ptr, ptr %driver21, align 8, !dbg !7077
  %pci_resume22 = getelementptr inbounds %struct.hc_driver, ptr %28, i32 0, i32 8, !dbg !7078
  %29 = load ptr, ptr %pci_resume22, align 8, !dbg !7078
  %30 = load ptr, ptr %hcd, align 8, !dbg !7079
  %coerce.dive23 = getelementptr inbounds %struct.pm_message, ptr %msg, i32 0, i32 0, !dbg !7076
  %31 = load i32, ptr %coerce.dive23, align 4, !dbg !7076
  %call24 = call i32 %29(ptr noundef %30, i32 %31) #11, !dbg !7076
  store i32 %call24, ptr %retval1, align 4, !dbg !7080
  %32 = load i32, ptr %retval1, align 4, !dbg !7081
  %tobool25 = icmp ne i32 %32, 0, !dbg !7081
  br i1 %tobool25, label %if.then26, label %if.end30, !dbg !7083

if.then26:                                        ; preds = %if.end20
  br label %do.body27, !dbg !7084

do.body27:                                        ; preds = %if.then26
  br label %do.cond28, !dbg !7087

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !7087

do.end29:                                         ; preds = %do.cond28
  %33 = load ptr, ptr %dev.addr, align 8, !dbg !7084
  %34 = load i32, ptr %retval1, align 4, !dbg !7084
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef @.str.3, i32 noundef %34) #12, !dbg !7084
  %35 = load ptr, ptr %hcd, align 8, !dbg !7089
  call void @usb_hc_died(ptr noundef %35) #11, !dbg !7090
  br label %if.end30, !dbg !7091

if.end30:                                         ; preds = %do.end29, %if.end20
  br label %if.end31, !dbg !7092

if.end31:                                         ; preds = %if.end30, %land.lhs.true11, %if.end9
  %36 = load i32, ptr %retval1, align 4, !dbg !7093
  store i32 %36, ptr %retval, align 4, !dbg !7094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7094

cleanup:                                          ; preds = %if.end31, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10, !dbg !7095
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcd) #10, !dbg !7095
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #10, !dbg !7095
  %37 = load i32, ptr %retval, align 4, !dbg !7095
  ret i32 %37, !dbg !7095
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ehci_wait_for_companions(ptr noundef %pdev, ptr noundef %hcd, ptr noundef %companion, ptr noundef %companion_hcd) #0 align 16 !dbg !7096 {
entry:
  %pdev.addr = alloca ptr, align 8
  %hcd.addr = alloca ptr, align 8
  %companion.addr = alloca ptr, align 8
  %companion_hcd.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !7098, metadata !DIExpression()), !dbg !7102
  store ptr %hcd, ptr %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hcd.addr, metadata !7099, metadata !DIExpression()), !dbg !7103
  store ptr %companion, ptr %companion.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %companion.addr, metadata !7100, metadata !DIExpression()), !dbg !7104
  store ptr %companion_hcd, ptr %companion_hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %companion_hcd.addr, metadata !7101, metadata !DIExpression()), !dbg !7105
  %0 = load ptr, ptr %companion.addr, align 8, !dbg !7106
  %call = call i32 @is_ohci_or_uhci(ptr noundef %0) #11, !dbg !7108
  %tobool = icmp ne i32 %call, 0, !dbg !7108
  br i1 %tobool, label %if.then, label %if.end, !dbg !7109

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !7110
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 37, !dbg !7111
  %2 = load ptr, ptr %companion.addr, align 8, !dbg !7112
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 37, !dbg !7113
  %call2 = call i32 @device_pm_wait_for_dev(ptr noundef %dev, ptr noundef %dev1) #11, !dbg !7114
  br label %if.end, !dbg !7114

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7115
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7116 dso_local void @usb_hc_died(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7117 dso_local i32 @device_pm_wait_for_dev(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7120 dso_local i32 @pci_save_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7121 dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7124 dso_local i32 @pci_prepare_to_sleep(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @powermac_set_asic(ptr noundef %pci_dev, i32 noundef %enable) #5 align 16 !dbg !7125 {
entry:
  %pci_dev.addr = alloca ptr, align 8
  %enable.addr = alloca i32, align 4
  store ptr %pci_dev, ptr %pci_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_dev.addr, metadata !7129, metadata !DIExpression()), !dbg !7131
  store i32 %enable, ptr %enable.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !7130, metadata !DIExpression()), !dbg !7132
  ret void, !dbg !7133
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7134 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984}
!llvm.ident = !{!4985}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/usb/core/hcd-pci.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "550dcace6271bed4c49083db8753765c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 48)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "companions_rwsem", scope: !9, file: !2, line: 30, type: !1396, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/usb/core/.hcd-pci.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/usb/core/usbcore\22 -D KBUILD_BASENAME=\22hcd_pci\22 -D KBUILD_MODNAME=\22usbcore\22 -D __KBUILD_MODNAME=kmod_usbcore -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/usb/core/hcd-pci.ll drivers/usb/core/hcd-pci.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !216, globals: !4934, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !30, !35, !43, !59, !67, !73, !80, !87, !93, !99, !106, !114, !122, !128, !137, !142, !147, !153, !159, !171, !180, !187, !194, !199, !205, !211}
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
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136}
!130 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!131 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!132 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!133 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!134 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!135 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!136 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!140 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!141 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!145 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!146 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!150 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!151 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!152 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !154, line: 11, baseType: !13, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!157 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!158 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !160, line: 1189, baseType: !13, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80d6f45aac89efdd60a6063143f79a70")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170}
!162 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0)
!163 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1)
!164 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2)
!165 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3)
!166 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4)
!167 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5)
!168 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6)
!169 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7)
!170 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !160, line: 1179, baseType: !13, size: 32, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179}
!173 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0)
!174 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1)
!175 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2)
!176 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3)
!177 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4)
!178 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5)
!179 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_ssp_rate", file: !181, line: 37, baseType: !13, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/usb/ch9.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10fa12c4560379d26e545265c72e34ff")
!182 = !{!183, !184, !185, !186}
!183 = !DIEnumerator(name: "USB_SSP_GEN_UNKNOWN", value: 0)
!184 = !DIEnumerator(name: "USB_SSP_GEN_2x1", value: 1)
!185 = !DIEnumerator(name: "USB_SSP_GEN_1x2", value: 2)
!186 = !DIEnumerator(name: "USB_SSP_GEN_2x2", value: 3)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !188, line: 95, baseType: !13, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "01f3cab1cef729fb6cd7609abdb96587")
!189 = !{!190, !191, !192, !193}
!190 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0)
!191 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1)
!192 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2)
!193 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_wireless_status", file: !188, line: 172, baseType: !13, size: 32, elements: !195)
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "USB_WIRELESS_STATUS_NA", value: 0)
!197 = !DIEnumerator(name: "USB_WIRELESS_STATUS_DISCONNECTED", value: 1)
!198 = !DIEnumerator(name: "USB_WIRELESS_STATUS_CONNECTED", value: 2)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !200, line: 62, baseType: !13, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7dec1a8757c1422b029643f18514a056")
!201 = !{!202, !203, !204}
!202 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0)
!203 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1)
!204 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !160, line: 1214, baseType: !13, size: 32, elements: !206)
!206 = !{!207, !208, !209, !210}
!207 = !DIEnumerator(name: "USB3_LPM_U0", value: 0)
!208 = !DIEnumerator(name: "USB3_LPM_U1", value: 1)
!209 = !DIEnumerator(name: "USB3_LPM_U2", value: 2)
!210 = !DIEnumerator(name: "USB3_LPM_U3", value: 3)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !212, line: 10, baseType: !13, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!213 = !{!214, !215}
!214 = !DIEnumerator(name: "false", value: 0)
!215 = !DIEnumerator(name: "true", value: 1)
!216 = !{!217, !218, !221, !223, !226, !227, !233, !234}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !219, line: 42, baseType: !220)
!219 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!220 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !230, line: 21, baseType: !231)
!230 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !232, line: 27, baseType: !13)
!232 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !236, line: 322, size: 16640, elements: !237)
!236 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!237 = !{!238, !244, !4709, !4710, !4711, !4712, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4818, !4819, !4820, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4897, !4898, !4899, !4901, !4902, !4904, !4905, !4906, !4907, !4913, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !235, file: !236, line: 323, baseType: !239, size: 128)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !219, line: 190, size: 128, elements: !240)
!240 = !{!241, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !219, line: 191, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !219, line: 191, baseType: !242, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !235, file: !236, line: 324, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !236, line: 647, size: 8256, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !277, !278, !279, !304, !305, !309, !311, !312, !313, !314, !315, !317, !319, !4704, !4705, !4706, !4707, !4708}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !246, file: !236, line: 648, baseType: !239, size: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !246, file: !236, line: 649, baseType: !245, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !246, file: !236, line: 650, baseType: !239, size: 128, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !246, file: !236, line: 651, baseType: !239, size: 128, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !246, file: !236, line: 652, baseType: !234, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !246, file: !236, line: 653, baseType: !239, size: 128, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !246, file: !236, line: 655, baseType: !255, size: 256, offset: 640)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !275)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !258, line: 21, size: 512, elements: !259)
!258 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!259 = !{!260, !266, !267, !270, !271, !272, !273, !274}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !257, file: !258, line: 22, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !219, line: 164, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !219, line: 159, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !230, line: 23, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !232, line: 31, baseType: !265)
!265 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !257, file: !258, line: 23, baseType: !261, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !258, line: 24, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !258, line: 25, baseType: !220, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !257, file: !258, line: 26, baseType: !220, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !257, file: !258, line: 27, baseType: !256, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !257, file: !258, line: 27, baseType: !256, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !257, file: !258, line: 27, baseType: !256, size: 64, offset: 448)
!275 = !{!276}
!276 = !DISubrange(count: 4)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !246, file: !236, line: 656, baseType: !239, size: 128, offset: 896)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !246, file: !236, line: 657, baseType: !257, size: 512, offset: 1024)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !246, file: !236, line: 659, baseType: !280, size: 64, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !236, line: 773, size: 320, elements: !282)
!282 = !{!283, !287, !291, !295, !300}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !281, file: !236, line: 774, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!115, !245}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !281, file: !236, line: 775, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !245}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !281, file: !236, line: 776, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!217, !245, !13, !115}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !281, file: !236, line: 777, baseType: !296, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!115, !245, !13, !115, !115, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !281, file: !236, line: 778, baseType: !301, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!115, !245, !13, !115, !115, !229}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !246, file: !236, line: 660, baseType: !217, size: 64, offset: 1600)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !246, file: !236, line: 661, baseType: !306, size: 64, offset: 1664)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !308, line: 131, flags: DIFlagFwdDecl)
!308 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!309 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !246, file: !236, line: 663, baseType: !310, size: 8, offset: 1728)
!310 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !246, file: !236, line: 664, baseType: !310, size: 8, offset: 1736)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !246, file: !236, line: 665, baseType: !310, size: 8, offset: 1744)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !246, file: !236, line: 666, baseType: !310, size: 8, offset: 1752)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !236, line: 671, baseType: !3, size: 384, offset: 1760)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !246, file: !236, line: 673, baseType: !316, size: 16, offset: 2144)
!316 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !246, file: !236, line: 674, baseType: !318, size: 16, offset: 2160)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !236, line: 255, baseType: !316)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !246, file: !236, line: 675, baseType: !320, size: 64, offset: 2176)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !322)
!322 = !{!323, !4244, !4245, !4248, !4249, !4302, !4387, !4388, !4389, !4390, !4391, !4398, !4490, !4503, !4513, !4517, !4519, !4520, !4521, !4525, !4532, !4533, !4536, !4539, !4543, !4646, !4647, !4648, !4649, !4650, !4651, !4681, !4682, !4683, !4686, !4689, !4698, !4699, !4700, !4701, !4702, !4703}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !321, file: !100, line: 706, baseType: !324, size: 512)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !325, line: 64, size: 512, elements: !326)
!325 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!326 = !{!327, !328, !329, !331, !416, !4131, !4234, !4239, !4240, !4241, !4242, !4243}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !325, line: 65, baseType: !268, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !324, file: !325, line: 66, baseType: !239, size: 128, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !324, file: !325, line: 67, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !324, file: !325, line: 68, baseType: !332, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !325, line: 168, size: 768, elements: !334)
!334 = !{!335, !336, !375, !376}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !333, file: !325, line: 169, baseType: !239, size: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !333, file: !325, line: 170, baseType: !337, size: 32, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !338, line: 29, baseType: !339)
!338 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !338, line: 17, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !338, line: 18, baseType: !342, size: 32)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !338, line: 18, size: 32, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !342, file: !338, line: 19, baseType: !345, size: 32)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !346, line: 14, size: 32, elements: !347)
!346 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !345, file: !346, line: 15, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !350, line: 44, baseType: !351)
!350 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !350, line: 14, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !350, line: 15, baseType: !354, size: 32)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !350, line: 15, size: 32, elements: !355)
!355 = !{!356, !361, !368}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !354, file: !350, line: 16, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !219, line: 174, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 172, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !358, file: !219, line: 173, baseType: !115, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !350, line: 24, baseType: !362, size: 16)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !350, line: 24, size: 16, elements: !363)
!363 = !{!364, !367}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !362, file: !350, line: 25, baseType: !365, size: 8)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !230, line: 17, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !232, line: 21, baseType: !310)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !362, file: !350, line: 26, baseType: !365, size: 8, offset: 8)
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !350, line: 28, baseType: !369, size: 32)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !350, line: 28, size: 32, elements: !370)
!370 = !{!371, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !369, file: !350, line: 29, baseType: !372, size: 16)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !230, line: 19, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !232, line: 24, baseType: !316)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !369, file: !350, line: 30, baseType: !372, size: 16, offset: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !333, file: !325, line: 171, baseType: !324, size: 512, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !333, file: !325, line: 172, baseType: !377, size: 64, offset: 704)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !325, line: 133, size: 192, elements: !380)
!380 = !{!381, !388, !393}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !379, file: !325, line: 134, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!115, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !379, file: !325, line: 135, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!268, !386}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !379, file: !325, line: 136, baseType: !394, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!115, !386, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !325, line: 125, size: 20736, elements: !400)
!400 = !{!401, !406, !410, !411, !415}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !399, file: !325, line: 126, baseType: !402, size: 192)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 192, elements: !404)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!404 = !{!405}
!405 = !DISubrange(count: 3)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !399, file: !325, line: 127, baseType: !407, size: 4096, offset: 192)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 4096, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !399, file: !325, line: 128, baseType: !115, size: 32, offset: 4288)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !399, file: !325, line: 129, baseType: !412, size: 16384, offset: 4320)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 2048)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !399, file: !325, line: 130, baseType: !115, size: 32, offset: 20704)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !324, file: !325, line: 69, baseType: !417, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !325, line: 116, size: 384, elements: !420)
!420 = !{!421, !425, !453, !4093, !4121, !4125}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !419, file: !325, line: 117, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !330}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !419, file: !325, line: 118, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !429, line: 254, size: 128, elements: !430)
!429 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!430 = !{!431, !446}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !428, file: !429, line: 255, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!435, !330, !440, !403}
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !219, line: 66, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !437, line: 73, baseType: !438)
!437 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !437, line: 15, baseType: !439)
!439 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !429, line: 30, size: 128, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !441, file: !429, line: 31, baseType: !268, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !441, file: !429, line: 32, baseType: !445, size: 16, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !219, line: 24, baseType: !316)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !428, file: !429, line: 256, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!435, !330, !440, !268, !450}
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !219, line: 61, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !437, line: 72, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !437, line: 16, baseType: !220)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !419, file: !325, line: 119, baseType: !454, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !429, line: 84, size: 320, elements: !458)
!458 = !{!459, !460, !464, !4089, !4091}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !457, file: !429, line: 85, baseType: !268, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !457, file: !429, line: 86, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!445, !330, !440, !115}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !457, file: !429, line: 88, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!445, !330, !468, !115}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !429, line: 175, size: 512, elements: !470)
!470 = !{!471, !472, !473, !474, !4080, !4084, !4085}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !469, file: !429, line: 176, baseType: !441, size: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !469, file: !429, line: 177, baseType: !450, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !469, file: !429, line: 178, baseType: !217, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !469, file: !429, line: 179, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !480)
!480 = !{!481, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !4074, !4075, !4076, !4077, !4078, !4079}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !479, file: !20, line: 473, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !484)
!484 = !{!485, !486, !487, !495, !496, !503, !504, !507, !508, !3853, !3854, !3855, !3856, !3857, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3897, !3900, !3901, !3902, !3911, !3912, !3913, !3914}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !483, file: !20, line: 642, baseType: !445, size: 16)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !483, file: !20, line: 643, baseType: !316, size: 16, offset: 16)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !483, file: !20, line: 644, baseType: !488, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !489, line: 23, baseType: !490)
!489 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 21, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !490, file: !489, line: 22, baseType: !493, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !219, line: 37, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !437, line: 49, baseType: !13)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !483, file: !20, line: 645, baseType: !239, size: 128, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !483, file: !20, line: 646, baseType: !497, size: 32, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !489, line: 28, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 26, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !498, file: !489, line: 27, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !219, line: 38, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !437, line: 50, baseType: !13)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !483, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !483, file: !20, line: 650, baseType: !505, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !483, file: !20, line: 651, baseType: !505, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !483, file: !20, line: 654, baseType: !509, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !512)
!512 = !{!513, !3681, !3691, !3695, !3699, !3703, !3707, !3711, !3715, !3719, !3723, !3724, !3728, !3732, !3769, !3798, !3802, !3808, !3812, !3816, !3820, !3824, !3828, !3834, !3838}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !511, file: !20, line: 1967, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!517, !482, !517, !13}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !519, line: 82, size: 1536, elements: !520)
!519 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!520 = !{!521, !522, !532, !540, !541, !556, !557, !561, !574, !3664, !3665, !3666, !3667, !3673, !3674, !3675}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !518, file: !519, line: 84, baseType: !13, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !518, file: !519, line: 85, baseType: !523, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !524, line: 275, baseType: !525)
!524 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !524, line: 275, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !525, file: !524, line: 275, baseType: !528, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !524, line: 69, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !524, line: 64, size: 32, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !529, file: !524, line: 65, baseType: !13, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !518, file: !519, line: 86, baseType: !533, size: 128, offset: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !534, line: 38, size: 128, elements: !535)
!534 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!535 = !{!536, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !534, line: 39, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !533, file: !534, line: 39, baseType: !539, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !518, file: !519, line: 87, baseType: !517, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !518, file: !519, line: 88, baseType: !542, size: 128, offset: 256)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !519, line: 49, size: 128, elements: !543)
!543 = !{!544, !553}
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !519, line: 50, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !519, line: 50, size: 64, elements: !546)
!546 = !{!547, !552}
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !519, line: 51, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !545, file: !519, line: 51, size: 64, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !548, file: !519, line: 52, baseType: !229, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !548, file: !519, line: 52, baseType: !229, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !545, file: !519, line: 54, baseType: !263, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !542, file: !519, line: 56, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !518, file: !519, line: 89, baseType: !482, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !518, file: !519, line: 91, baseType: !558, size: 256, offset: 448)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 256, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !518, file: !519, line: 94, baseType: !562, size: 64, offset: 704)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !563, line: 25, size: 64, elements: !564)
!563 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !563, line: 26, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !563, line: 26, size: 64, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !566, file: !563, line: 28, baseType: !264, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !563, line: 30, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !566, file: !563, line: 30, size: 64, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !570, file: !563, line: 31, baseType: !337, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !570, file: !563, line: 32, baseType: !115, size: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !518, file: !519, line: 95, baseType: !575, size: 64, offset: 768)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !519, line: 128, size: 1024, align: 512, elements: !578)
!578 = !{!579, !583, !584, !591, !597, !601, !605, !609, !610, !614, !618, !3654, !3658}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !577, file: !519, line: 129, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!115, !517, !13}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !577, file: !519, line: 130, baseType: !580, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !577, file: !519, line: 131, baseType: !585, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!115, !588, !590}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !577, file: !519, line: 132, baseType: !592, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!115, !588, !13, !268, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !577, file: !519, line: 134, baseType: !598, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!115, !588}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !577, file: !519, line: 135, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!115, !517}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !577, file: !519, line: 136, baseType: !606, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !517}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !577, file: !519, line: 137, baseType: !606, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !577, file: !519, line: 138, baseType: !611, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !517, !482}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !577, file: !519, line: 139, baseType: !615, size: 64, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!403, !517, !403, !115}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !577, file: !519, line: 140, baseType: !619, size: 64, offset: 640)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!622, !3653}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !624, line: 70, size: 256, elements: !625)
!624 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!625 = !{!626, !627, !3649, !3650}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !623, file: !624, line: 71, baseType: !517, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !623, file: !624, line: 72, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !630)
!630 = !{!631, !632, !635, !636, !637, !641, !1117, !1257, !1297, !1387, !1391, !1392, !1393, !1394, !1395, !1404, !1405, !1406, !1407, !1412, !1416, !1417, !1420, !1423, !1426, !1429, !1430, !1431, !1472, !3582, !3583, !3584, !3585, !3586, !3587, !3590, !3592, !3599, !3600, !3601, !3602, !3603, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !629, file: !20, line: 1191, baseType: !239, size: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !629, file: !20, line: 1192, baseType: !633, size: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !219, line: 21, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !219, line: 18, baseType: !229)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !629, file: !20, line: 1193, baseType: !310, size: 8, offset: 160)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !629, file: !20, line: 1194, baseType: !220, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !629, file: !20, line: 1195, baseType: !638, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !219, line: 52, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !437, line: 88, baseType: !640)
!640 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !629, file: !20, line: 1196, baseType: !642, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !644)
!644 = !{!645, !646, !647, !654, !658, !662, !666, !1102, !1103, !1107, !1109, !1110, !1111, !1113, !1114, !1115, !1116}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !643, file: !20, line: 2367, baseType: !268, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !643, file: !20, line: 2368, baseType: !115, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !643, file: !20, line: 2376, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!115, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !653, line: 32, flags: DIFlagFwdDecl)
!653 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!654 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !643, file: !20, line: 2377, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !643, file: !20, line: 2378, baseType: !659, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!517, !642, !115, !268, !217}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !643, file: !20, line: 2380, baseType: !663, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !628}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !643, file: !20, line: 2381, baseType: !667, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !669)
!669 = !{!670, !671, !672, !676, !698, !724, !725, !726, !727, !731, !736, !737, !757, !813, !814, !815, !816, !817, !820, !821, !822, !830, !834, !861, !881, !882, !883, !884, !893, !916, !917, !920, !923, !924, !925, !926, !927, !928, !929, !934, !935, !1061, !1069, !1070, !1071, !1073, !1077, !1078, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1095, !1096, !1097, !1101}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !668, file: !12, line: 403, baseType: !11, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !668, file: !12, line: 406, baseType: !239, size: 128, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !668, file: !12, line: 409, baseType: !673, size: 448, offset: 192)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 56)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !668, file: !12, line: 417, baseType: !677, size: 768, offset: 640)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !678)
!678 = !{!679, !680, !681, !682, !685}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !677, file: !12, line: 46, baseType: !324, size: 512)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !677, file: !12, line: 47, baseType: !667, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !677, file: !12, line: 48, baseType: !330, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !677, file: !12, line: 49, baseType: !683, size: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !677, file: !12, line: 50, baseType: !686, size: 64, offset: 704)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !688, line: 26, size: 256, elements: !689)
!688 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !687, file: !688, line: 27, baseType: !13, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !687, file: !688, line: 28, baseType: !692, size: 192, offset: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !693, line: 43, size: 192, elements: !694)
!693 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!694 = !{!695, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !692, file: !693, line: 44, baseType: !696, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !346, line: 23, baseType: !345)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !692, file: !693, line: 45, baseType: !239, size: 128, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !668, file: !12, line: 418, baseType: !699, size: 64, offset: 1408)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !701)
!701 = !{!702, !703, !708, !712, !716, !720}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !700, file: !12, line: 54, baseType: !441, size: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !700, file: !12, line: 55, baseType: !704, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!435, !699, !707, !403}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !700, file: !12, line: 57, baseType: !709, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!435, !699, !707, !268, !450}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !700, file: !12, line: 59, baseType: !713, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !667, !268}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !700, file: !12, line: 60, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!115, !667}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !700, file: !12, line: 61, baseType: !721, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !667}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !668, file: !12, line: 419, baseType: !268, size: 64, offset: 1472)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !668, file: !12, line: 420, baseType: !268, size: 64, offset: 1536)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !668, file: !12, line: 421, baseType: !330, size: 64, offset: 1600)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !668, file: !12, line: 424, baseType: !728, size: 64, offset: 1664)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !668, file: !12, line: 425, baseType: !732, size: 64, offset: 1728)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !230, line: 20, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !232, line: 26, baseType: !115)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !668, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !668, file: !12, line: 435, baseType: !738, size: 256, offset: 1856)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !739, line: 66, size: 256, elements: !740)
!739 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!740 = !{!741, !750, !751, !756}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !738, file: !739, line: 67, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !743, line: 13, baseType: !744)
!743 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !219, line: 181, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 179, size: 64, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !745, file: !219, line: 180, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !230, line: 22, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !232, line: 30, baseType: !640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !738, file: !739, line: 68, baseType: !696, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !738, file: !739, line: 70, baseType: !752, size: 32, offset: 96)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !753, line: 15, size: 32, elements: !754)
!753 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !752, file: !753, line: 20, baseType: !357, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !738, file: !739, line: 72, baseType: !239, size: 128, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !668, file: !12, line: 437, baseType: !758, size: 64, offset: 2112)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !760, line: 69, size: 320, elements: !761)
!760 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!761 = !{!762, !763, !764, !784, !786, !790, !791}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !759, file: !760, line: 70, baseType: !268, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !759, file: !760, line: 71, baseType: !667, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !759, file: !760, line: 72, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !760, line: 47, size: 256, elements: !768)
!768 = !{!769, !770, !776, !780}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !760, line: 49, baseType: !13, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !767, file: !760, line: 51, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!115, !268, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !767, file: !760, line: 53, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!115, !403, !774}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !767, file: !760, line: 55, baseType: !781, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !217}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !759, file: !760, line: 73, baseType: !785, size: 16, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !759, file: !760, line: 74, baseType: !787, size: 8, offset: 208)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !230, line: 16, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !232, line: 20, baseType: !789)
!789 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !760, line: 75, baseType: !365, size: 8, offset: 216)
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !760, line: 76, baseType: !792, size: 64, offset: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !760, line: 76, size: 64, elements: !793)
!793 = !{!794, !795, !802}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !792, file: !760, line: 77, baseType: !217, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !792, file: !760, line: 78, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !760, line: 86, size: 128, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !798, file: !760, line: 87, baseType: !13, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !798, file: !760, line: 88, baseType: !403, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !792, file: !760, line: 79, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !760, line: 92, size: 256, elements: !806)
!806 = !{!807, !808, !809, !811, !812}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !805, file: !760, line: 94, baseType: !13, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !805, file: !760, line: 95, baseType: !13, size: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !805, file: !760, line: 96, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !805, file: !760, line: 97, baseType: !765, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !805, file: !760, line: 98, baseType: !217, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !668, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !668, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !668, file: !12, line: 442, baseType: !728, size: 64, offset: 2240)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !668, file: !12, line: 443, baseType: !732, size: 64, offset: 2304)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !668, file: !12, line: 444, baseType: !818, size: 8, offset: 2368)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !219, line: 35, baseType: !819)
!819 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !668, file: !12, line: 451, baseType: !818, size: 8, offset: 2376)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !668, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !668, file: !12, line: 455, baseType: !823, size: 64, offset: 2432)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !825, line: 23, size: 96, elements: !826)
!825 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!826 = !{!827, !828, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !824, file: !825, line: 24, baseType: !115, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !824, file: !825, line: 24, baseType: !115, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !824, file: !825, line: 24, baseType: !115, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !668, file: !12, line: 458, baseType: !831, size: 64, offset: 2496)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!115}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !668, file: !12, line: 460, baseType: !835, size: 4032, align: 512, offset: 2560)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 4032, elements: !859)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !836, file: !12, line: 363, baseType: !217, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !836, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !836, file: !12, line: 367, baseType: !841, size: 448, offset: 128)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !841, file: !12, line: 320, baseType: !667, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !841, file: !12, line: 321, baseType: !845, size: 384, offset: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !846, line: 40, size: 384, elements: !847)
!846 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !845, file: !846, line: 41, baseType: !849, size: 384, align: 64)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 384, align: 64, elements: !857)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !851, line: 5, size: 192, align: 64, elements: !852)
!851 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!852 = !{!853, !854, !856}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !850, file: !851, line: 6, baseType: !220, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !850, file: !851, line: 7, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !850, file: !851, line: 8, baseType: !855, size: 64, offset: 128)
!857 = !{!858}
!858 = !DISubrange(count: 2)
!859 = !{!860}
!860 = !DISubrange(count: 7)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !668, file: !12, line: 463, baseType: !862, size: 192, offset: 6592)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !863, line: 8, size: 192, elements: !864)
!863 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !862, file: !863, line: 10, baseType: !13, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !862, file: !863, line: 11, baseType: !226, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !862, file: !863, line: 12, baseType: !868, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !870, line: 59, size: 48, elements: !871)
!870 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!871 = !{!872, !876, !877, !878, !879, !880}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !869, file: !870, line: 60, baseType: !873, size: 16)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !230, line: 18, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !232, line: 23, baseType: !875)
!875 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !869, file: !870, line: 61, baseType: !873, size: 16, offset: 16)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !869, file: !870, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !869, file: !870, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !869, file: !870, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !869, file: !870, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !668, file: !12, line: 465, baseType: !220, size: 64, offset: 6784)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !668, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !668, file: !12, line: 470, baseType: !239, size: 128, offset: 6912)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !668, file: !12, line: 471, baseType: !885, size: 64, offset: 7040)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !887, line: 33, size: 96, elements: !888)
!887 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!888 = !{!889, !890, !891, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !886, file: !887, line: 37, baseType: !115, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !886, file: !887, line: 43, baseType: !115, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !886, file: !887, line: 45, baseType: !316, size: 16, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !886, file: !887, line: 47, baseType: !316, size: 16, offset: 80)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !668, file: !12, line: 476, baseType: !894, size: 64, offset: 7104)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !896)
!896 = !{!897, !913, !914, !915}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !895, file: !12, line: 379, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !900, line: 204, baseType: !901)
!900 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !900, line: 197, size: 192, elements: !902)
!902 = !{!903, !905, !906, !907, !909, !911}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !901, file: !900, line: 198, baseType: !904, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !900, line: 21, baseType: !231)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !901, file: !900, line: 199, baseType: !310, size: 8, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !901, file: !900, line: 200, baseType: !310, size: 8, offset: 40)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !901, file: !900, line: 201, baseType: !908, size: 16, offset: 48)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !900, line: 17, baseType: !373)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !901, file: !900, line: 202, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !900, line: 16, baseType: !264)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !901, file: !900, line: 203, baseType: !912, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !900, line: 22, baseType: !264)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !895, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !895, file: !12, line: 381, baseType: !403, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !895, file: !12, line: 382, baseType: !403, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !668, file: !12, line: 477, baseType: !895, size: 256, offset: 7168)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !668, file: !12, line: 480, baseType: !918, size: 64, offset: 7424)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !668, file: !12, line: 483, baseType: !921, size: 64, offset: 7488)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !668, file: !12, line: 488, baseType: !403, size: 64, offset: 7552)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !668, file: !12, line: 492, baseType: !217, size: 64, offset: 7616)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !668, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !668, file: !12, line: 495, baseType: !217, size: 64, offset: 7744)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !668, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !668, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !668, file: !12, line: 500, baseType: !930, size: 64, offset: 7872)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !932, line: 45, baseType: !933)
!932 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !668, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !668, file: !12, line: 504, baseType: !936, size: 64, offset: 8000)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !939, line: 96, size: 192, elements: !940)
!939 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!940 = !{!941, !942, !1021, !1025}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !938, file: !939, line: 97, baseType: !13, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !938, file: !939, line: 98, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !939, line: 24, size: 3072, elements: !945)
!945 = !{!946, !948, !949, !950, !951, !973, !974, !975, !976, !994, !1006, !1007, !1018, !1019, !1020}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !944, file: !939, line: 26, baseType: !947, size: 128)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 128, elements: !857)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !944, file: !939, line: 27, baseType: !947, size: 128, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !944, file: !939, line: 28, baseType: !115, size: 32, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !944, file: !939, line: 31, baseType: !337, size: 32, align: 512, offset: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !944, file: !939, line: 32, baseType: !952, size: 960, offset: 576)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !953, line: 206, size: 960, elements: !954)
!953 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!954 = !{!955, !964, !967, !969, !970, !972}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !952, file: !953, line: 207, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !219, line: 232, size: 128, align: 64, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !957, file: !219, line: 233, baseType: !956, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !957, file: !219, line: 234, baseType: !961, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !956}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !952, file: !953, line: 208, baseType: !965, size: 256, offset: 64)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !966, size: 256, elements: !275)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !952, file: !953, line: 209, baseType: !968, size: 256, offset: 320)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !275)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !952, file: !953, line: 213, baseType: !439, size: 64, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !952, file: !953, line: 215, baseType: !971, size: 256, offset: 640)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 256, elements: !275)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !952, file: !953, line: 216, baseType: !365, size: 8, offset: 896)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !944, file: !939, line: 33, baseType: !220, size: 64, offset: 1536)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !944, file: !939, line: 34, baseType: !220, size: 64, offset: 1600)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !944, file: !939, line: 35, baseType: !818, size: 8, offset: 1664)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !944, file: !939, line: 36, baseType: !977, size: 320, offset: 1728)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !978, line: 11, size: 320, elements: !979)
!978 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!979 = !{!980, !987, !988, !993}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !977, file: !978, line: 16, baseType: !981, size: 128)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !219, line: 198, size: 128, elements: !982)
!982 = !{!983, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !981, file: !219, line: 199, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !981, file: !219, line: 199, baseType: !986, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !977, file: !978, line: 17, baseType: !220, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !977, file: !978, line: 18, baseType: !989, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !978, line: 19, baseType: !229, size: 32, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !944, file: !939, line: 37, baseType: !995, size: 256, offset: 2048)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !996, line: 98, size: 256, elements: !997)
!996 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !995, file: !996, line: 99, baseType: !742, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !995, file: !996, line: 100, baseType: !239, size: 128, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !995, file: !996, line: 101, baseType: !1001, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !996, line: 21, baseType: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !944, file: !939, line: 38, baseType: !957, size: 128, align: 64, offset: 2304)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !944, file: !939, line: 39, baseType: !1008, size: 64, offset: 2432)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !939, line: 49, size: 768, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1009, file: !939, line: 50, baseType: !337, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1009, file: !939, line: 51, baseType: !968, size: 256, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1009, file: !939, line: 53, baseType: !968, size: 256, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1009, file: !939, line: 54, baseType: !220, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1009, file: !939, line: 55, baseType: !1008, size: 64, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1009, file: !939, line: 56, baseType: !115, size: 32, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1009, file: !939, line: 57, baseType: !115, size: 32, offset: 736)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !944, file: !939, line: 40, baseType: !220, size: 64, offset: 2496)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !944, file: !939, line: 42, baseType: !115, size: 32, offset: 2560)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !944, file: !939, line: 43, baseType: !937, size: 64, offset: 2624)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !938, file: !939, line: 99, baseType: !1022, offset: 128)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1023, line: 211, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1024 = !{}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !938, file: !939, line: 100, baseType: !1026, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !939, line: 63, size: 3008, elements: !1028)
!1028 = !{!1029, !1030, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1060}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1027, file: !939, line: 64, baseType: !1008, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1027, file: !939, line: 65, baseType: !1031, size: 192, offset: 64)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1008, size: 192, elements: !404)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1027, file: !939, line: 67, baseType: !115, size: 32, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1027, file: !939, line: 68, baseType: !738, size: 256, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1027, file: !939, line: 69, baseType: !337, size: 32, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1027, file: !939, line: 70, baseType: !738, size: 256, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1027, file: !939, line: 71, baseType: !220, size: 64, offset: 896)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1027, file: !939, line: 72, baseType: !220, size: 64, offset: 960)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1027, file: !939, line: 73, baseType: !220, size: 64, offset: 1024)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1027, file: !939, line: 74, baseType: !220, size: 64, offset: 1088)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1027, file: !939, line: 75, baseType: !220, size: 64, offset: 1152)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1027, file: !939, line: 76, baseType: !220, size: 64, offset: 1216)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1027, file: !939, line: 77, baseType: !220, size: 64, offset: 1280)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1027, file: !939, line: 78, baseType: !220, size: 64, offset: 1344)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1027, file: !939, line: 79, baseType: !818, size: 8, offset: 1408)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1027, file: !939, line: 80, baseType: !220, size: 64, offset: 1472)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1027, file: !939, line: 81, baseType: !738, size: 256, offset: 1536)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1027, file: !939, line: 82, baseType: !687, size: 256, offset: 1792)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1027, file: !939, line: 84, baseType: !357, size: 32, offset: 2048)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1027, file: !939, line: 87, baseType: !220, size: 64, offset: 2112)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1027, file: !939, line: 88, baseType: !220, size: 64, offset: 2176)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1027, file: !939, line: 89, baseType: !1052, size: 704, offset: 2240)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !996, line: 111, size: 704, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1059}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1052, file: !996, line: 112, baseType: !995, size: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1052, file: !996, line: 113, baseType: !977, size: 320, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1052, file: !996, line: 116, baseType: !1057, size: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !996, line: 18, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1052, file: !996, line: 117, baseType: !115, size: 32, offset: 640)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1027, file: !939, line: 90, baseType: !937, size: 64, offset: 2944)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !668, file: !12, line: 515, baseType: !1062, size: 64, offset: 8064)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1064, line: 117, size: 128, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1063, file: !1064, line: 118, baseType: !734, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1063, file: !1064, line: 119, baseType: !734, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1063, file: !1064, line: 120, baseType: !439, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !668, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !668, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !668, file: !12, line: 520, baseType: !1072, size: 64, offset: 8192)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !668, file: !12, line: 523, baseType: !1074, size: 64, offset: 8256)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !668, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !668, file: !12, line: 525, baseType: !1079, size: 64, offset: 8384)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !668, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !668, file: !12, line: 533, baseType: !217, size: 64, offset: 8512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !668, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !668, file: !12, line: 535, baseType: !233, size: 64, offset: 8640)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !668, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !668, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !668, file: !12, line: 540, baseType: !1089, size: 64, offset: 8768)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1091, line: 32, size: 64, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1090, file: !1091, line: 33, baseType: !734, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1090, file: !1091, line: 34, baseType: !734, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !668, file: !12, line: 563, baseType: !239, size: 128, offset: 8832)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !668, file: !12, line: 565, baseType: !239, size: 128, offset: 8960)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !668, file: !12, line: 568, baseType: !1098, size: 64, offset: 9088)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !668, file: !12, line: 570, baseType: !357, size: 32, offset: 9152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !643, file: !20, line: 2382, baseType: !642, size: 64, offset: 448)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !643, file: !20, line: 2383, baseType: !1104, size: 64, offset: 512)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !219, line: 194, size: 64, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1104, file: !219, line: 195, baseType: !984, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !643, file: !20, line: 2385, baseType: !1108, offset: 576)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1023, line: 206, elements: !1024)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !643, file: !20, line: 2386, baseType: !1108, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !643, file: !20, line: 2387, baseType: !1108, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !643, file: !20, line: 2388, baseType: !1112, offset: 576)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, elements: !404)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !643, file: !20, line: 2390, baseType: !1108, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !643, file: !20, line: 2391, baseType: !1108, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !643, file: !20, line: 2392, baseType: !1108, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !643, file: !20, line: 2393, baseType: !1108, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !629, file: !20, line: 1197, baseType: !1118, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1121)
!1121 = !{!1122, !1126, !1130, !1131, !1135, !1141, !1145, !1146, !1147, !1151, !1155, !1159, !1160, !1161, !1167, !1171, !1172, !1179, !1180, !1181, !1182, !1186, !1190, !1239, !1255, !1256}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1120, file: !20, line: 2058, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!482, !628}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1120, file: !20, line: 2059, baseType: !1127, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !482}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1120, file: !20, line: 2060, baseType: !1127, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1120, file: !20, line: 2062, baseType: !1132, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !482, !115}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1120, file: !20, line: 2063, baseType: !1136, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!115, !482, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1120, file: !20, line: 2064, baseType: !1142, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!115, !482}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1120, file: !20, line: 2065, baseType: !1127, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1120, file: !20, line: 2066, baseType: !663, size: 64, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1120, file: !20, line: 2067, baseType: !1148, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!115, !628, !115}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1120, file: !20, line: 2068, baseType: !1152, size: 64, offset: 576)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!115, !628, !19}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1120, file: !20, line: 2069, baseType: !1156, size: 64, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!115, !628}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1120, file: !20, line: 2070, baseType: !1152, size: 64, offset: 704)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1120, file: !20, line: 2071, baseType: !1156, size: 64, offset: 768)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1120, file: !20, line: 2072, baseType: !1162, size: 64, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!115, !517, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1120, file: !20, line: 2073, baseType: !1168, size: 64, offset: 896)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!115, !628, !226, !403}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1120, file: !20, line: 2074, baseType: !663, size: 64, offset: 960)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1120, file: !20, line: 2076, baseType: !1173, size: 64, offset: 1024)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!115, !1176, !517}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1178, line: 66, flags: DIFlagFwdDecl)
!1178 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1120, file: !20, line: 2077, baseType: !1173, size: 64, offset: 1088)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1120, file: !20, line: 2078, baseType: !1173, size: 64, offset: 1152)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1120, file: !20, line: 2079, baseType: !1173, size: 64, offset: 1216)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1120, file: !20, line: 2081, baseType: !1183, size: 64, offset: 1280)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!435, !628, !115, !403, !450, !638}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1120, file: !20, line: 2082, baseType: !1187, size: 64, offset: 1344)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!435, !628, !115, !268, !450, !638}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1120, file: !20, line: 2083, baseType: !1191, size: 64, offset: 1408)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!1194, !482}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 296, size: 1664, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1222, !1223, !1224}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1196, file: !25, line: 297, baseType: !981, size: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1196, file: !25, line: 298, baseType: !239, size: 128, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1196, file: !25, line: 299, baseType: !239, size: 128, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1196, file: !25, line: 300, baseType: !239, size: 128, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1196, file: !25, line: 301, baseType: !738, size: 256, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1196, file: !25, line: 302, baseType: !337, size: 32, offset: 768)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1196, file: !25, line: 303, baseType: !357, size: 32, offset: 800)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1196, file: !25, line: 304, baseType: !628, size: 64, offset: 832)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1196, file: !25, line: 305, baseType: !1207, size: 64, offset: 896)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !1208)
!1208 = !{!1209, !1221}
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !25, line: 69, baseType: !1210, size: 32)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !25, line: 69, size: 32, elements: !1211)
!1211 = !{!1212, !1213, !1214}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1210, file: !25, line: 70, baseType: !488, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1210, file: !25, line: 71, baseType: !497, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1210, file: !25, line: 72, baseType: !1215, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1216, line: 24, baseType: !1217)
!1216 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1216, line: 22, size: 32, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1217, file: !1216, line: 23, baseType: !1220, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1216, line: 20, baseType: !494)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1207, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1196, file: !25, line: 306, baseType: !638, size: 64, offset: 960)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1196, file: !25, line: 307, baseType: !220, size: 64, offset: 1024)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1196, file: !25, line: 308, baseType: !1225, size: 576, offset: 1088)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !1226)
!1226 = !{!1227, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1238}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1225, file: !25, line: 206, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1225, file: !25, line: 207, baseType: !1228, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1225, file: !25, line: 208, baseType: !1228, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1225, file: !25, line: 209, baseType: !1228, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1225, file: !25, line: 210, baseType: !1228, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1225, file: !25, line: 211, baseType: !1228, size: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1225, file: !25, line: 212, baseType: !1228, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1225, file: !25, line: 213, baseType: !1236, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1237, line: 8, baseType: !749)
!1237 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1225, file: !25, line: 214, baseType: !1236, size: 64, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1120, file: !20, line: 2085, baseType: !1240, size: 64, offset: 1472)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!439, !628, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1245, line: 15, size: 256, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1246 = !{!1247, !1249, !1250, !1251, !1252}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1244, file: !1245, line: 16, baseType: !1248, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !219, line: 154, baseType: !13)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1244, file: !1245, line: 19, baseType: !115, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1244, file: !1245, line: 26, baseType: !220, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1244, file: !1245, line: 33, baseType: !220, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1244, file: !1245, line: 36, baseType: !1253, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1120, file: !20, line: 2087, baseType: !1240, size: 64, offset: 1536)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1120, file: !20, line: 2089, baseType: !663, size: 64, offset: 1600)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !629, file: !20, line: 1198, baseType: !1258, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 324, size: 704, elements: !1261)
!1261 = !{!1262, !1266, !1270, !1274, !1275, !1276, !1277, !1278, !1283, !1288, !1292}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1260, file: !25, line: 325, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!115, !1195}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1260, file: !25, line: 326, baseType: !1267, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!1195, !628, !115}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1260, file: !25, line: 327, baseType: !1271, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !1195}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1260, file: !25, line: 328, baseType: !1263, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1260, file: !25, line: 329, baseType: !1263, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1260, file: !25, line: 330, baseType: !1263, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1260, file: !25, line: 331, baseType: !1148, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1260, file: !25, line: 334, baseType: !1279, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!1282, !482}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1260, file: !25, line: 335, baseType: !1284, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!115, !482, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1260, file: !25, line: 337, baseType: !1289, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!115, !482, !1282}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1260, file: !25, line: 339, baseType: !1293, size: 64, offset: 640)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!115, !628, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !629, file: !20, line: 1199, baseType: !1298, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 430, size: 704, elements: !1301)
!1301 = !{!1302, !1313, !1314, !1318, !1319, !1320, !1335, !1358, !1362, !1363, !1386}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1300, file: !25, line: 431, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!115, !628, !115, !115, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1309, line: 8, size: 128, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1308, file: !1309, line: 9, baseType: !622, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1308, file: !1309, line: 10, baseType: !517, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1300, file: !25, line: 432, baseType: !1148, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1300, file: !25, line: 433, baseType: !1315, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!115, !628, !13}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1300, file: !25, line: 434, baseType: !1315, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1300, file: !25, line: 435, baseType: !1148, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1300, file: !25, line: 436, baseType: !1321, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!115, !628, !115, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 417, size: 256, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1325, file: !25, line: 418, baseType: !115, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1325, file: !25, line: 419, baseType: !13, size: 32, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1325, file: !25, line: 420, baseType: !13, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1325, file: !25, line: 422, baseType: !13, size: 32, offset: 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1325, file: !25, line: 423, baseType: !13, size: 32, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1325, file: !25, line: 424, baseType: !13, size: 32, offset: 160)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1325, file: !25, line: 425, baseType: !13, size: 32, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1325, file: !25, line: 426, baseType: !13, size: 32, offset: 224)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1300, file: !25, line: 437, baseType: !1336, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!115, !628, !1207, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 345, size: 960, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1340, file: !25, line: 346, baseType: !115, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1340, file: !25, line: 347, baseType: !263, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1340, file: !25, line: 348, baseType: !263, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1340, file: !25, line: 349, baseType: !263, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1340, file: !25, line: 350, baseType: !263, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1340, file: !25, line: 351, baseType: !263, size: 64, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1340, file: !25, line: 352, baseType: !263, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1340, file: !25, line: 353, baseType: !748, size: 64, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1340, file: !25, line: 355, baseType: !748, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1340, file: !25, line: 356, baseType: !115, size: 32, offset: 576)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1340, file: !25, line: 357, baseType: !115, size: 32, offset: 608)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1340, file: !25, line: 358, baseType: !263, size: 64, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1340, file: !25, line: 359, baseType: !263, size: 64, offset: 704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1340, file: !25, line: 360, baseType: !263, size: 64, offset: 768)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1340, file: !25, line: 361, baseType: !748, size: 64, offset: 832)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1340, file: !25, line: 362, baseType: !115, size: 32, offset: 896)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1300, file: !25, line: 438, baseType: !1359, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!115, !628, !1296, !1339}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1300, file: !25, line: 440, baseType: !1336, size: 64, offset: 512)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1300, file: !25, line: 441, baseType: !1364, size: 64, offset: 576)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!115, !628, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 411, size: 1408, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1368, file: !25, line: 412, baseType: !13, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1368, file: !25, line: 413, baseType: !1372, size: 1344, offset: 64)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1373, size: 1344, elements: !404)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 397, size: 448, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1385}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1373, file: !25, line: 398, baseType: !13, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1373, file: !25, line: 399, baseType: !13, size: 32, offset: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1373, file: !25, line: 401, baseType: !13, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1373, file: !25, line: 402, baseType: !13, size: 32, offset: 96)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1373, file: !25, line: 403, baseType: !13, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1373, file: !25, line: 404, baseType: !13, size: 32, offset: 160)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1373, file: !25, line: 405, baseType: !13, size: 32, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1373, file: !25, line: 406, baseType: !265, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1373, file: !25, line: 407, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !219, line: 132, baseType: !263)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1373, file: !25, line: 408, baseType: !1384, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1300, file: !25, line: 442, baseType: !1315, size: 64, offset: 640)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !629, file: !20, line: 1200, baseType: !1388, size: 64, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1390)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !629, file: !20, line: 1201, baseType: !220, size: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !629, file: !20, line: 1202, baseType: !220, size: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !629, file: !20, line: 1203, baseType: !220, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !629, file: !20, line: 1204, baseType: !517, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !629, file: !20, line: 1205, baseType: !1396, size: 320, offset: 896)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1397, line: 48, size: 320, elements: !1398)
!1397 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1398 = !{!1399, !1400, !1401, !1402, !1403}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1396, file: !1397, line: 49, baseType: !742, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1396, file: !1397, line: 55, baseType: !742, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1396, file: !1397, line: 57, baseType: !752, size: 32, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1396, file: !1397, line: 59, baseType: !696, size: 32, offset: 160)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1396, file: !1397, line: 60, baseType: !239, size: 128, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !629, file: !20, line: 1206, baseType: !115, size: 32, offset: 1216)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !629, file: !20, line: 1207, baseType: !357, size: 32, offset: 1248)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !629, file: !20, line: 1209, baseType: !217, size: 64, offset: 1280)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !629, file: !20, line: 1211, baseType: !1408, size: 64, offset: 1344)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !629, file: !20, line: 1223, baseType: !1413, size: 64, offset: 1408)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !534, line: 34, size: 64, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1413, file: !534, line: 35, baseType: !537, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !629, file: !20, line: 1224, baseType: !239, size: 128, offset: 1472)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !629, file: !20, line: 1225, baseType: !1418, size: 64, offset: 1600)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !629, file: !20, line: 1226, baseType: !1421, size: 64, offset: 1664)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !629, file: !20, line: 1227, baseType: !1424, size: 64, offset: 1728)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !629, file: !20, line: 1228, baseType: !1427, size: 64, offset: 1792)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !629, file: !20, line: 1229, baseType: !981, size: 128, offset: 1856)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !629, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !629, file: !20, line: 1231, baseType: !1432, size: 2496, offset: 2048)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 521, size: 2496, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1438, !1470}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1432, file: !25, line: 522, baseType: !13, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1432, file: !25, line: 523, baseType: !1396, size: 320, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1432, file: !25, line: 524, baseType: !1437, size: 192, offset: 384)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 192, elements: !404)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1432, file: !25, line: 525, baseType: !1439, size: 1728, offset: 576)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 1728, elements: !404)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !1441)
!1441 = !{!1442, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1440, file: !25, line: 223, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 445, size: 256, elements: !1445)
!1445 = !{!1446, !1447, !1460, !1461}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1444, file: !25, line: 446, baseType: !115, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1444, file: !25, line: 447, baseType: !1448, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 312, size: 512, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1450, file: !25, line: 313, baseType: !1148, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1450, file: !25, line: 314, baseType: !1148, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1450, file: !25, line: 315, baseType: !1148, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1450, file: !25, line: 316, baseType: !1148, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1450, file: !25, line: 317, baseType: !1263, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1450, file: !25, line: 318, baseType: !1263, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1450, file: !25, line: 319, baseType: !1263, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1450, file: !25, line: 320, baseType: !1293, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1444, file: !25, line: 448, baseType: !667, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1444, file: !25, line: 449, baseType: !1443, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1440, file: !25, line: 224, baseType: !115, size: 32, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1440, file: !25, line: 226, baseType: !239, size: 128, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1440, file: !25, line: 227, baseType: !220, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1440, file: !25, line: 228, baseType: !13, size: 32, offset: 320)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1440, file: !25, line: 229, baseType: !13, size: 32, offset: 352)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1440, file: !25, line: 230, baseType: !1228, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1440, file: !25, line: 231, baseType: !1228, size: 64, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1440, file: !25, line: 232, baseType: !217, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1432, file: !25, line: 526, baseType: !1471, size: 192, offset: 2304)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1448, size: 192, elements: !404)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !629, file: !20, line: 1233, baseType: !1473, size: 2368, offset: 4544)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1473, file: !20, line: 1185, baseType: !316, size: 16)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1473, file: !20, line: 1186, baseType: !316, size: 16, offset: 16)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1473, file: !20, line: 1187, baseType: !1478, size: 2304, offset: 64)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1479, size: 2304, elements: !404)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1480, line: 12, size: 768, elements: !1481)
!1480 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1481 = !{!1482, !1496, !1497, !3580, !3581}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1479, file: !1480, line: 13, baseType: !1483, size: 384)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1484, line: 17, size: 384, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1485 = !{!1486, !1487, !1488, !1495}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1483, file: !1484, line: 18, baseType: !115, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1483, file: !1484, line: 19, baseType: !115, size: 32, offset: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1483, file: !1484, line: 20, baseType: !1489, size: 192, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1490, line: 41, baseType: !1491)
!1490 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1490, line: 37, size: 192, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1491, file: !1490, line: 38, baseType: !337, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1491, file: !1490, line: 39, baseType: !239, size: 128, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1483, file: !1484, line: 22, baseType: !957, size: 128, align: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1479, file: !1480, line: 14, baseType: !810, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1479, file: !1480, line: 15, baseType: !1498, size: 64, offset: 448)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1499, line: 16, size: 64, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1500 = !{!1501}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1498, file: !1499, line: 17, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1178, line: 746, size: 58368, elements: !1504)
!1504 = !{!1505, !1513, !1514, !1515, !1521, !1522, !1523, !1524, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1595, !1606, !1701, !1705, !1708, !1739, !1740, !1741, !1742, !1753, !1755, !1756, !1757, !1758, !1759, !1760, !1771, !1772, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1789, !1790, !1797, !1798, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2755, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2803, !2809, !2810, !2811, !2812, !2813, !2817, !2820, !2827, !2832, !2835, !2838, !2841, !2845, !2983, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3021, !3022, !3023, !3032, !3040, !3041, !3042, !3043, !3044, !3049, !3050, !3051, !3054, !3055, !3058, !3061, !3064, !3072, !3075, !3076, !3162, !3163, !3164, !3165, !3166, !3172, !3173, !3174, !3175, !3178, !3179, !3182, !3185, !3186, !3189, !3190, !3191, !3194, !3195, !3196, !3197, !3198, !3199, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3231, !3232, !3238, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3250, !3322, !3324, !3325, !3326, !3327, !3328, !3329, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3357, !3358, !3359}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1503, file: !1178, line: 752, baseType: !1506, size: 192)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1507, line: 56, size: 192, elements: !1508)
!1507 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1508 = !{!1509, !1510, !1511, !1512}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1506, file: !1507, line: 57, baseType: !220, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1506, file: !1507, line: 58, baseType: !220, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1506, file: !1507, line: 59, baseType: !229, size: 32, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1506, file: !1507, line: 61, baseType: !229, size: 32, offset: 160)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1503, file: !1178, line: 754, baseType: !13, size: 32, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1503, file: !1178, line: 767, baseType: !217, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1503, file: !1178, line: 768, baseType: !1516, size: 32, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1517, line: 113, baseType: !1518)
!1517 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1517, line: 111, size: 32, elements: !1519)
!1519 = !{!1520}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1518, file: !1517, line: 112, baseType: !357, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1503, file: !1178, line: 770, baseType: !13, size: 32, offset: 352)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1503, file: !1178, line: 771, baseType: !13, size: 32, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1503, file: !1178, line: 774, baseType: !115, size: 32, offset: 416)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1503, file: !1178, line: 775, baseType: !1525, size: 128, offset: 448)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1526, line: 58, size: 128, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1527 = !{!1528, !1534, !1539, !1540}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1525, file: !1526, line: 59, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1530, line: 60, size: 64, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1531 = !{!1532}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1529, file: !1530, line: 61, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !1526, line: 60, baseType: !1535, size: 32, offset: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1525, file: !1526, line: 60, size: 32, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1535, file: !1526, line: 61, baseType: !13, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1535, file: !1526, line: 62, baseType: !357, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1525, file: !1526, line: 65, baseType: !372, size: 16, offset: 96)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1525, file: !1526, line: 65, baseType: !372, size: 16, offset: 112)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1503, file: !1178, line: 776, baseType: !13, size: 32, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1503, file: !1178, line: 777, baseType: !220, size: 64, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1503, file: !1178, line: 778, baseType: !1502, size: 64, offset: 704)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1503, file: !1178, line: 787, baseType: !115, size: 32, offset: 768)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1503, file: !1178, line: 788, baseType: !115, size: 32, offset: 800)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1503, file: !1178, line: 790, baseType: !115, size: 32, offset: 832)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1503, file: !1178, line: 792, baseType: !115, size: 32, offset: 864)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1503, file: !1178, line: 793, baseType: !115, size: 32, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1503, file: !1178, line: 794, baseType: !115, size: 32, offset: 928)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1503, file: !1178, line: 795, baseType: !13, size: 32, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1503, file: !1178, line: 797, baseType: !1552, size: 2048, offset: 1024)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1178, line: 551, size: 2048, elements: !1553)
!1553 = !{!1554, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1574, !1577, !1578, !1579}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1552, file: !1178, line: 553, baseType: !1555, size: 128)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1178, line: 411, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1555, file: !1178, line: 412, baseType: !220, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1555, file: !1178, line: 413, baseType: !229, size: 32, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1552, file: !1178, line: 554, baseType: !850, size: 192, align: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1552, file: !1178, line: 555, baseType: !263, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1552, file: !1178, line: 556, baseType: !263, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1552, file: !1178, line: 558, baseType: !239, size: 128, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1552, file: !1178, line: 559, baseType: !13, size: 32, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1552, file: !1178, line: 561, baseType: !263, size: 64, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1552, file: !1178, line: 562, baseType: !263, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1552, file: !1178, line: 563, baseType: !263, size: 64, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1552, file: !1178, line: 564, baseType: !263, size: 64, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1552, file: !1178, line: 565, baseType: !748, size: 64, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1552, file: !1178, line: 566, baseType: !263, size: 64, offset: 960)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1552, file: !1178, line: 568, baseType: !263, size: 64, offset: 1024)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1552, file: !1178, line: 571, baseType: !115, size: 32, offset: 1088)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1552, file: !1178, line: 572, baseType: !1573, size: 64, offset: 1152)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1552, file: !1178, line: 574, baseType: !1575, size: 64, offset: 1216)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1178, line: 49, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1552, file: !1178, line: 576, baseType: !1575, size: 64, offset: 1280)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1552, file: !1178, line: 578, baseType: !220, size: 64, offset: 1344)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1552, file: !1178, line: 588, baseType: !1580, size: 512, align: 512, offset: 1536)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1178, line: 497, size: 512, align: 512, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1580, file: !1178, line: 498, baseType: !263, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1580, file: !1178, line: 499, baseType: !263, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1580, file: !1178, line: 500, baseType: !263, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1580, file: !1178, line: 501, baseType: !229, size: 32, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1580, file: !1178, line: 502, baseType: !229, size: 32, offset: 224)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1580, file: !1178, line: 503, baseType: !220, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1580, file: !1178, line: 504, baseType: !220, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1580, file: !1178, line: 505, baseType: !220, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1580, file: !1178, line: 506, baseType: !1591, size: 64, align: 64, offset: 448)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1178, line: 445, size: 64, align: 64, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1591, file: !1178, line: 446, baseType: !13, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1591, file: !1178, line: 447, baseType: !13, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1503, file: !1178, line: 798, baseType: !1596, size: 384, offset: 3072)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1178, line: 592, size: 384, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1596, file: !1178, line: 593, baseType: !239, size: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1596, file: !1178, line: 594, baseType: !220, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1596, file: !1178, line: 595, baseType: !220, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1596, file: !1178, line: 596, baseType: !13, size: 32, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1596, file: !1178, line: 597, baseType: !316, size: 16, offset: 288)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1596, file: !1178, line: 598, baseType: !316, size: 16, offset: 304)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1596, file: !1178, line: 600, baseType: !1605, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1503, file: !1178, line: 799, baseType: !1607, size: 1792, offset: 3456)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1178, line: 610, size: 1792, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1698, !1699}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1607, file: !1178, line: 611, baseType: !850, size: 192, align: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1607, file: !1178, line: 618, baseType: !263, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1607, file: !1178, line: 619, baseType: !263, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1607, file: !1178, line: 620, baseType: !263, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1607, file: !1178, line: 621, baseType: !263, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1607, file: !1178, line: 622, baseType: !263, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1607, file: !1178, line: 629, baseType: !748, size: 64, offset: 512)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1607, file: !1178, line: 630, baseType: !263, size: 64, offset: 576)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1607, file: !1178, line: 631, baseType: !13, size: 32, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1607, file: !1178, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1607, file: !1178, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1607, file: !1178, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1607, file: !1178, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1607, file: !1178, line: 662, baseType: !1623, size: 512, offset: 704)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !31, line: 118, size: 512, elements: !1624)
!1624 = !{!1625, !1633, !1634, !1639, !1694, !1695, !1696, !1697}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1623, file: !31, line: 119, baseType: !1626, size: 256)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1627, line: 9, size: 256, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1626, file: !1627, line: 10, baseType: !850, size: 192, align: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1626, file: !1627, line: 11, baseType: !1631, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1632, line: 29, baseType: !748)
!1632 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1623, file: !31, line: 120, baseType: !1631, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1623, file: !31, line: 121, baseType: !1635, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!30, !1638}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1623, file: !31, line: 122, baseType: !1640, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !31, line: 159, size: 512, align: 512, elements: !1642)
!1642 = !{!1643, !1668, !1669, !1672, !1677, !1678, !1689, !1693}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1641, file: !31, line: 160, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !31, line: 215, size: 4608, align: 512, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1645, file: !31, line: 216, baseType: !696, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1645, file: !31, line: 217, baseType: !13, size: 32, offset: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1645, file: !31, line: 218, baseType: !13, size: 32, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1645, file: !31, line: 219, baseType: !13, size: 32, offset: 96)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1645, file: !31, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1645, file: !31, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1645, file: !31, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1645, file: !31, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1645, file: !31, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1645, file: !31, line: 226, baseType: !13, size: 32, offset: 160)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1645, file: !31, line: 227, baseType: !316, size: 16, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1645, file: !31, line: 228, baseType: !316, size: 16, offset: 208)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1645, file: !31, line: 229, baseType: !13, size: 32, offset: 224)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1645, file: !31, line: 235, baseType: !1631, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1645, file: !31, line: 236, baseType: !1638, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1645, file: !31, line: 237, baseType: !1631, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1645, file: !31, line: 238, baseType: !1638, size: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1645, file: !31, line: 239, baseType: !1665, size: 4096, align: 512, offset: 512)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1641, size: 4096, align: 512, elements: !1666)
!1666 = !{!1667}
!1667 = !DISubrange(count: 8)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1641, file: !31, line: 161, baseType: !13, size: 32, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1641, file: !31, line: 162, baseType: !1670, size: 32, offset: 96)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !219, line: 32, baseType: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !437, line: 96, baseType: !115)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1641, file: !31, line: 163, baseType: !1673, size: 32, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !524, line: 274, baseType: !1674)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !524, line: 274, size: 32, elements: !1675)
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1674, file: !524, line: 274, baseType: !528, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1641, file: !31, line: 164, baseType: !1638, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1641, file: !31, line: 165, baseType: !1679, size: 128, offset: 256)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1627, line: 14, size: 128, elements: !1680)
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1679, file: !1627, line: 15, baseType: !1682, size: 128)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !851, line: 26, size: 128, elements: !1683)
!1683 = !{!1684, !1688}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1682, file: !851, line: 27, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !851, line: 12, size: 64, elements: !1686)
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1685, file: !851, line: 13, baseType: !855, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1682, file: !851, line: 28, baseType: !855, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1641, file: !31, line: 166, baseType: !1690, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1631}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1641, file: !31, line: 167, baseType: !1631, size: 64, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1623, file: !31, line: 123, baseType: !365, size: 8, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1623, file: !31, line: 124, baseType: !365, size: 8, offset: 456)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1623, file: !31, line: 125, baseType: !365, size: 8, offset: 464)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1623, file: !31, line: 126, baseType: !365, size: 8, offset: 472)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1607, file: !1178, line: 671, baseType: !1623, size: 512, offset: 1216)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1607, file: !1178, line: 679, baseType: !1700, size: 64, offset: 1728)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1503, file: !1178, line: 800, baseType: !1702, size: 64, offset: 5248)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1178, line: 800, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1503, file: !1178, line: 809, baseType: !1706, size: 64, offset: 5312)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1178, line: 70, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1503, file: !1178, line: 825, baseType: !1709, size: 2048, align: 512, offset: 5632)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1178, line: 509, size: 2048, align: 512, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1709, file: !1178, line: 511, baseType: !263, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1709, file: !1178, line: 512, baseType: !263, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1709, file: !1178, line: 513, baseType: !263, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1709, file: !1178, line: 514, baseType: !263, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1709, file: !1178, line: 515, baseType: !263, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1709, file: !1178, line: 516, baseType: !263, size: 64, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1709, file: !1178, line: 518, baseType: !263, size: 64, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1709, file: !1178, line: 519, baseType: !263, size: 64, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1709, file: !1178, line: 520, baseType: !748, size: 64, offset: 512)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1709, file: !1178, line: 522, baseType: !263, size: 64, offset: 576)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1709, file: !1178, line: 523, baseType: !263, size: 64, offset: 640)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1709, file: !1178, line: 524, baseType: !748, size: 64, offset: 704)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1709, file: !1178, line: 526, baseType: !748, size: 64, offset: 768)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1709, file: !1178, line: 527, baseType: !263, size: 64, offset: 832)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1709, file: !1178, line: 529, baseType: !263, size: 64, offset: 896)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1709, file: !1178, line: 530, baseType: !263, size: 64, offset: 960)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1709, file: !1178, line: 531, baseType: !263, size: 64, offset: 1024)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1709, file: !1178, line: 532, baseType: !263, size: 64, offset: 1088)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1709, file: !1178, line: 533, baseType: !263, size: 64, offset: 1152)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1709, file: !1178, line: 535, baseType: !263, size: 64, offset: 1216)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1709, file: !1178, line: 536, baseType: !263, size: 64, offset: 1280)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1709, file: !1178, line: 537, baseType: !263, size: 64, offset: 1344)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1709, file: !1178, line: 538, baseType: !263, size: 64, offset: 1408)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1709, file: !1178, line: 539, baseType: !263, size: 64, offset: 1472)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1709, file: !1178, line: 540, baseType: !263, size: 64, offset: 1536)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1709, file: !1178, line: 541, baseType: !263, size: 64, offset: 1600)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1709, file: !1178, line: 542, baseType: !263, size: 64, offset: 1664)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1709, file: !1178, line: 543, baseType: !263, size: 64, offset: 1728)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1503, file: !1178, line: 833, baseType: !13, size: 32, offset: 7680)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1503, file: !1178, line: 836, baseType: !13, size: 32, offset: 7712)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1503, file: !1178, line: 837, baseType: !115, size: 32, offset: 7744)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1503, file: !1178, line: 838, baseType: !1743, size: 64, offset: 7808)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1746, line: 19, baseType: !1747)
!1746 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1746, line: 19, size: 64, elements: !1748)
!1748 = !{!1749}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1747, file: !1746, line: 19, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 64, elements: !1751)
!1751 = !{!1752}
!1752 = !DISubrange(count: 1)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1503, file: !1178, line: 839, baseType: !1754, size: 64, offset: 7872)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1503, file: !1178, line: 840, baseType: !1745, size: 64, offset: 7936)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1503, file: !1178, line: 841, baseType: !217, size: 64, offset: 8000)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1503, file: !1178, line: 843, baseType: !316, size: 16, offset: 8064)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1503, file: !1178, line: 845, baseType: !316, size: 16, offset: 8080)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1503, file: !1178, line: 848, baseType: !115, size: 32, offset: 8096)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1503, file: !1178, line: 849, baseType: !1761, size: 32, offset: 8128)
!1761 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1178, line: 718, size: 32, elements: !1762)
!1762 = !{!1763, !1770}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1761, file: !1178, line: 724, baseType: !1764, size: 32)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !1178, line: 719, size: 32, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1764, file: !1178, line: 720, baseType: !365, size: 8)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1764, file: !1178, line: 721, baseType: !365, size: 8, offset: 8)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1764, file: !1178, line: 722, baseType: !365, size: 8, offset: 16)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1764, file: !1178, line: 723, baseType: !365, size: 8, offset: 24)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1761, file: !1178, line: 725, baseType: !229, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1503, file: !1178, line: 850, baseType: !239, size: 128, offset: 8192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1503, file: !1178, line: 851, baseType: !1773, size: 64, offset: 8320)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1178, line: 60, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1503, file: !1178, line: 855, baseType: !220, size: 64, offset: 8384)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1503, file: !1178, line: 856, baseType: !365, size: 8, offset: 8448)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1503, file: !1178, line: 857, baseType: !365, size: 8, offset: 8456)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1503, file: !1178, line: 858, baseType: !115, size: 32, offset: 8480)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1503, file: !1178, line: 859, baseType: !239, size: 128, offset: 8512)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1503, file: !1178, line: 860, baseType: !115, size: 32, offset: 8640)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1503, file: !1178, line: 861, baseType: !239, size: 128, offset: 8704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1503, file: !1178, line: 873, baseType: !1783, size: 256, offset: 8832)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1178, line: 376, size: 256, elements: !1784)
!1784 = !{!1785, !1786, !1787, !1788}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1783, file: !1178, line: 381, baseType: !220, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1783, file: !1178, line: 384, baseType: !265, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1783, file: !1178, line: 389, baseType: !265, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1783, file: !1178, line: 392, baseType: !265, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1503, file: !1178, line: 875, baseType: !239, size: 128, offset: 9088)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1503, file: !1178, line: 877, baseType: !1791, size: 320, offset: 9216)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1792, line: 86, size: 320, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1793 = !{!1794, !1795, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1791, file: !1792, line: 87, baseType: !115, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1791, file: !1792, line: 88, baseType: !239, size: 128, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1791, file: !1792, line: 89, baseType: !239, size: 128, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1503, file: !1178, line: 878, baseType: !850, size: 192, align: 64, offset: 9536)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1503, file: !1178, line: 881, baseType: !1799, size: 64, offset: 9728)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !1801)
!1801 = !{!1802, !2675}
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !44, line: 734, baseType: !1803, size: 10240)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1800, file: !44, line: 734, size: 10240, elements: !1804)
!1804 = !{!1805, !1809, !1822, !2552, !2553, !2554, !2555, !2556, !2557, !2564, !2565, !2566, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2605, !2607, !2610, !2655, !2656, !2657, !2660, !2661, !2662, !2665, !2666, !2667, !2673, !2674}
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !44, line: 739, baseType: !1806, size: 512, align: 512)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !44, line: 739, size: 512, align: 512, elements: !1807)
!1807 = !{!1808}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1806, file: !44, line: 747, baseType: !357, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1803, file: !44, line: 750, baseType: !1810, size: 128, offset: 512)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1811, line: 218, size: 128, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1812 = !{!1813, !1820, !1821}
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1810, file: !1811, line: 219, baseType: !1814, size: 32)
!1814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1810, file: !1811, line: 219, size: 32, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1814, file: !1811, line: 220, baseType: !337, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1814, file: !1811, line: 221, baseType: !1818)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1811, line: 197, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1811, line: 197, elements: !1024)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1810, file: !1811, line: 223, baseType: !13, size: 32, offset: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1810, file: !1811, line: 224, baseType: !217, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1803, file: !44, line: 752, baseType: !1823, size: 64, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!220, !1826, !220, !220, !220, !220}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1828)
!1828 = !{!1829, !1835, !1836, !1838, !1839, !1840, !1841, !1842, !1892, !2082, !2091, !2092, !2093, !2542, !2543, !2544, !2545, !2547, !2548, !2551}
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !20, line: 995, baseType: !1830, size: 128)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1827, file: !20, line: 995, size: 128, elements: !1831)
!1831 = !{!1832, !1833, !1834}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1830, file: !20, line: 996, baseType: !1529, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1830, file: !20, line: 997, baseType: !957, size: 128, align: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1830, file: !20, line: 998, baseType: !13, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1827, file: !20, line: 1005, baseType: !337, size: 32, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1827, file: !20, line: 1006, baseType: !1837, size: 32, offset: 160)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !219, line: 156, baseType: !13)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1827, file: !20, line: 1007, baseType: !742, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1827, file: !20, line: 1008, baseType: !738, size: 256, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1827, file: !20, line: 1009, baseType: !638, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1827, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1827, file: !20, line: 1011, baseType: !1843, size: 256, offset: 640)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1844)
!1844 = !{!1845, !1866, !1888, !1889, !1890, !1891}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1843, file: !20, line: 949, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1847, line: 34, baseType: !1848)
!1847 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1847, line: 25, size: 64, elements: !1849)
!1849 = !{!1850}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1848, file: !1847, line: 26, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1852, line: 27, baseType: !1853)
!1852 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1852, line: 13, size: 64, elements: !1854)
!1854 = !{!1855, !1865}
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1852, line: 14, baseType: !1856, size: 32)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !1852, line: 14, size: 32, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1856, file: !1852, line: 15, baseType: !357, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !1852, line: 16, baseType: !1860, size: 32)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !1852, line: 16, size: 32, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1860, file: !1852, line: 18, baseType: !365, size: 8)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1860, file: !1852, line: 19, baseType: !1864, size: 24, offset: 8)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 24, elements: !404)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1853, file: !1852, line: 26, baseType: !349, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1843, file: !20, line: 950, baseType: !1867, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !36, line: 59, size: 768, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873, !1875, !1876, !1877, !1878}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1868, file: !36, line: 61, baseType: !1516, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1868, file: !36, line: 62, baseType: !13, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1868, file: !36, line: 63, baseType: !337, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1868, file: !36, line: 65, baseType: !1874, size: 256, offset: 128)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1104, size: 256, elements: !275)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1868, file: !36, line: 66, baseType: !1104, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1868, file: !36, line: 68, baseType: !1489, size: 192, offset: 448)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1868, file: !36, line: 69, baseType: !957, size: 128, align: 64, offset: 640)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1868, file: !36, line: 70, baseType: !1879, offset: 768)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1880, elements: !1886)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !36, line: 54, size: 128, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1880, file: !36, line: 55, baseType: !115, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1880, file: !36, line: 56, baseType: !1884, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !36, line: 56, flags: DIFlagFwdDecl)
!1886 = !{!1887}
!1887 = !DISubrange(count: -1)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1843, file: !20, line: 951, baseType: !35, size: 32, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1843, file: !20, line: 952, baseType: !488, size: 32, offset: 160)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1843, file: !20, line: 952, baseType: !488, size: 32, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1843, file: !20, line: 953, baseType: !115, size: 32, offset: 224)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1827, file: !20, line: 1012, baseType: !1893, size: 64, offset: 896)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1896, line: 110, size: 1472, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1914, !1915, !1916, !1917, !1918, !1919, !2027, !2028, !2029, !2030, !2031, !2062, !2065, !2069, !2077}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1895, file: !1896, line: 111, baseType: !742, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1895, file: !1896, line: 112, baseType: !488, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1895, file: !1896, line: 113, baseType: !497, size: 32, offset: 96)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1895, file: !1896, line: 114, baseType: !488, size: 32, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1895, file: !1896, line: 115, baseType: !497, size: 32, offset: 160)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1895, file: !1896, line: 116, baseType: !488, size: 32, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1895, file: !1896, line: 117, baseType: !497, size: 32, offset: 224)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1895, file: !1896, line: 118, baseType: !488, size: 32, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1895, file: !1896, line: 119, baseType: !497, size: 32, offset: 288)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1895, file: !1896, line: 120, baseType: !13, size: 32, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1895, file: !1896, line: 121, baseType: !1909, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1910, line: 24, baseType: !1911)
!1910 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1910, line: 24, size: 64, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1911, file: !1910, line: 24, baseType: !263, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1895, file: !1896, line: 122, baseType: !1909, size: 64, offset: 448)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1895, file: !1896, line: 123, baseType: !1909, size: 64, offset: 512)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1895, file: !1896, line: 124, baseType: !1909, size: 64, offset: 576)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1895, file: !1896, line: 125, baseType: !1909, size: 64, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1895, file: !1896, line: 127, baseType: !310, size: 8, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1895, file: !1896, line: 129, baseType: !1920, size: 64, offset: 768)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1922, line: 195, size: 1728, elements: !1923)
!1922 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1923 = !{!1924, !1925, !1928, !1933, !1934, !1937, !1938, !1943, !1944, !1945, !1946, !1949, !1950, !1951, !1952, !1953, !1991, !2012}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1921, file: !1922, line: 196, baseType: !1516, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1921, file: !1922, line: 197, baseType: !1926, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1922, line: 28, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !219, line: 104, baseType: !734)
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1922, line: 198, baseType: !1929, size: 192, offset: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !1922, line: 198, size: 192, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1929, file: !1922, line: 199, baseType: !239, size: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1929, file: !1922, line: 200, baseType: !850, size: 192, align: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1921, file: !1922, line: 205, baseType: !1396, size: 320, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1921, file: !1922, line: 206, baseType: !1935, size: 64, offset: 576)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1922, line: 206, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1921, file: !1922, line: 207, baseType: !217, size: 64, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1922, line: 208, baseType: !1939, size: 64, offset: 704)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !1922, line: 208, size: 64, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1939, file: !1922, line: 209, baseType: !1236, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1939, file: !1922, line: 210, baseType: !1236, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1921, file: !1922, line: 212, baseType: !1236, size: 64, offset: 768)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1921, file: !1922, line: 213, baseType: !488, size: 32, offset: 832)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1921, file: !1922, line: 214, baseType: !497, size: 32, offset: 864)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1921, file: !1922, line: 215, baseType: !1947, size: 32, offset: 896)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1922, line: 31, baseType: !1948)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !219, line: 110, baseType: !229)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1921, file: !1922, line: 216, baseType: !316, size: 16, offset: 928)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1921, file: !1922, line: 217, baseType: !316, size: 16, offset: 944)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1921, file: !1922, line: 221, baseType: !875, size: 16, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1921, file: !1922, line: 228, baseType: !220, size: 64, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1922, line: 245, baseType: !1954, size: 320, offset: 1088)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !1922, line: 245, size: 320, elements: !1955)
!1955 = !{!1956, !1983}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1954, file: !1922, line: 246, baseType: !1957, size: 320)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1922, line: 114, size: 320, elements: !1958)
!1958 = !{!1959, !1960, !1972, !1975, !1982}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1957, file: !1922, line: 116, baseType: !220, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1957, file: !1922, line: 117, baseType: !1961, size: 64, offset: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1957, file: !1922, line: 117, size: 64, elements: !1962)
!1962 = !{!1963, !1971}
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !1922, line: 118, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1922, line: 118, size: 64, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1964, file: !1922, line: 120, baseType: !372, size: 16)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1964, file: !1922, line: 121, baseType: !1968, size: 48, offset: 16)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1969)
!1969 = !{!1970}
!1970 = !DISubrange(count: 6)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1961, file: !1922, line: 127, baseType: !220, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1957, file: !1922, line: 129, baseType: !1973, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1922, line: 102, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1957, file: !1922, line: 130, baseType: !1976, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1922, line: 108, size: 192, elements: !1978)
!1978 = !{!1979, !1980, !1981}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1977, file: !1922, line: 109, baseType: !957, size: 128, align: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1977, file: !1922, line: 110, baseType: !1516, size: 32, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1977, file: !1922, line: 111, baseType: !818, size: 8, offset: 160)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1957, file: !1922, line: 131, baseType: !268, size: 64, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, scope: !1954, file: !1922, line: 247, baseType: !1984, size: 320)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1922, line: 247, size: 320, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1990}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1984, file: !1922, line: 248, baseType: !220, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1984, file: !1922, line: 249, baseType: !220, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1984, file: !1922, line: 250, baseType: !1973, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1984, file: !1922, line: 251, baseType: !1976, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1984, file: !1922, line: 252, baseType: !403, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1922, line: 260, baseType: !1992, size: 256, offset: 1408)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !1922, line: 260, size: 256, elements: !1993)
!1993 = !{!1994, !2000}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1992, file: !1922, line: 261, baseType: !1995, size: 256)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1922, line: 134, size: 256, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1995, file: !1922, line: 135, baseType: !217, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1995, file: !1922, line: 136, baseType: !1999, size: 256)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !275)
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1992, file: !1922, line: 262, baseType: !2001, size: 256)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1922, line: 262, size: 256, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2001, file: !1922, line: 264, baseType: !239, size: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2001, file: !1922, line: 265, baseType: !2005, size: 128, offset: 128)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2006, line: 22, size: 128, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2007 = !{!2008, !2011}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2005, file: !2006, line: 23, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2006, line: 23, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2005, file: !2006, line: 24, baseType: !220, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1921, file: !1922, line: 280, baseType: !2013, size: 64, offset: 1664)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1922, line: 176, size: 192, elements: !2015)
!2015 = !{!2016, !2025, !2026}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2014, file: !1922, line: 177, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1922, line: 171, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!115, !1920, !2021, !2023, !1920}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1974)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1995)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2014, file: !1922, line: 178, baseType: !1920, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2014, file: !1922, line: 179, baseType: !1973, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1895, file: !1896, line: 130, baseType: !1920, size: 64, offset: 832)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1895, file: !1896, line: 131, baseType: !1920, size: 64, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1895, file: !1896, line: 132, baseType: !1920, size: 64, offset: 960)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1895, file: !1896, line: 135, baseType: !217, size: 64, offset: 1024)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1895, file: !1896, line: 137, baseType: !2032, size: 64, offset: 1088)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2034, line: 14, size: 1088, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2035 = !{!2036, !2037, !2046, !2047, !2048, !2049, !2050, !2051}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2033, file: !2034, line: 15, baseType: !1516, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2033, file: !2034, line: 17, baseType: !2038, size: 320, offset: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2039, line: 22, size: 320, elements: !2040)
!2039 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2040 = !{!2041, !2042, !2043, !2044}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2038, file: !2039, line: 23, baseType: !696, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2038, file: !2039, line: 24, baseType: !748, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2038, file: !2039, line: 26, baseType: !239, size: 128, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2038, file: !2039, line: 28, baseType: !2045, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2033, file: !2034, line: 19, baseType: !220, size: 64, offset: 384)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2033, file: !2034, line: 20, baseType: !742, size: 64, offset: 448)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2033, file: !2034, line: 23, baseType: !981, size: 128, offset: 512)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2033, file: !2034, line: 24, baseType: !488, size: 32, offset: 640)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2033, file: !2034, line: 29, baseType: !742, size: 64, offset: 704)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2033, file: !2034, line: 36, baseType: !2052, size: 320, offset: 768)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2053, line: 15, size: 320, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2052, file: !2053, line: 16, baseType: !696, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2052, file: !2053, line: 18, baseType: !115, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2052, file: !2053, line: 19, baseType: !115, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2052, file: !2053, line: 20, baseType: !115, size: 32, offset: 96)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2052, file: !2053, line: 21, baseType: !115, size: 32, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2052, file: !2053, line: 22, baseType: !220, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2052, file: !2053, line: 23, baseType: !220, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1895, file: !1896, line: 138, baseType: !2063, size: 64, offset: 1152)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !489, line: 18, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1895, file: !1896, line: 139, baseType: !2066, size: 64, offset: 1216)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2068, line: 16, flags: DIFlagFwdDecl)
!2068 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1895, file: !1896, line: 140, baseType: !2070, size: 64, offset: 1280)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1896, line: 25, size: 64, elements: !2072)
!2072 = !{!2073, !2074, !2075}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2071, file: !1896, line: 26, baseType: !357, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2071, file: !1896, line: 27, baseType: !115, size: 32, offset: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2071, file: !1896, line: 28, baseType: !2076, offset: 64)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, elements: !1886)
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !1896, line: 142, baseType: !2078, size: 128, offset: 1344)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1895, file: !1896, line: 142, size: 128, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2078, file: !1896, line: 143, baseType: !115, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2078, file: !1896, line: 144, baseType: !957, size: 128, align: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1827, file: !20, line: 1013, baseType: !2083, size: 256, offset: 960)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !2084)
!2084 = !{!2085, !2086, !2087, !2088, !2089, !2090}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2083, file: !20, line: 971, baseType: !220, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2083, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2083, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2083, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2083, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2083, file: !20, line: 976, baseType: !638, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1827, file: !20, line: 1014, baseType: !1308, size: 128, offset: 1216)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1827, file: !20, line: 1015, baseType: !482, size: 64, offset: 1344)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1827, file: !20, line: 1016, baseType: !2094, size: 64, offset: 1408)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !2097)
!2097 = !{!2098, !2099, !2103, !2108, !2112, !2141, !2142, !2148, !2161, !2169, !2173, !2174, !2464, !2465, !2469, !2474, !2475, !2479, !2483, !2489, !2490, !2494, !2495, !2501, !2505, !2509, !2515, !2519, !2523, !2527, !2531, !2532, !2538}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2096, file: !20, line: 1915, baseType: !667, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2096, file: !20, line: 1916, baseType: !2100, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!638, !1826, !638, !115}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2096, file: !20, line: 1917, baseType: !2104, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!435, !1826, !403, !450, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2096, file: !20, line: 1918, baseType: !2109, size: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!435, !1826, !268, !450, !2107}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2096, file: !20, line: 1919, baseType: !2113, size: 64, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!435, !2116, !2138}
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2125, !2126, !2127, !2128}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2117, file: !20, line: 374, baseType: !1826, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2117, file: !20, line: 375, baseType: !638, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2117, file: !20, line: 376, baseType: !2122, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !2116, !439}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2117, file: !20, line: 377, baseType: !217, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2117, file: !20, line: 378, baseType: !115, size: 32, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2117, file: !20, line: 379, baseType: !372, size: 16, offset: 288)
!2128 = !DIDerivedType(tag: DW_TAG_member, scope: !2117, file: !20, line: 380, baseType: !2129, size: 64, offset: 320)
!2129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2117, file: !20, line: 380, size: 64, elements: !2130)
!2130 = !{!2131, !2134}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2129, file: !20, line: 386, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2129, file: !20, line: 395, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!435, !217}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2140, line: 17, flags: DIFlagFwdDecl)
!2140 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2096, file: !20, line: 1920, baseType: !2113, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2096, file: !20, line: 1921, baseType: !2143, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!115, !2116, !2146, !13}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2096, file: !20, line: 1923, baseType: !2149, size: 64, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!115, !1826, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !2154)
!2154 = !{!2155, !2160}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2153, file: !20, line: 1859, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !2157)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!818, !2152, !268, !115, !638, !263, !13}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2153, file: !20, line: 1860, baseType: !638, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2096, file: !20, line: 1924, baseType: !2162, size: 64, offset: 512)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!2165, !1826, !2167}
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2166, line: 59, baseType: !13)
!2166 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !653, line: 31, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2096, file: !20, line: 1925, baseType: !2170, size: 64, offset: 576)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!439, !1826, !13, !220}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2096, file: !20, line: 1926, baseType: !2170, size: 64, offset: 640)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2096, file: !20, line: 1927, baseType: !2175, size: 64, offset: 704)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!115, !1826, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !2180)
!2180 = !{!2181, !2190, !2191, !2199, !2206, !2207, !2212, !2213, !2218, !2219, !2222, !2457, !2458, !2459, !2460, !2461, !2462}
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2179, file: !44, line: 628, baseType: !2182, size: 128)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2179, file: !44, line: 628, size: 128, elements: !2183)
!2183 = !{!2184, !2189}
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !44, line: 629, baseType: !2185, size: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !44, line: 629, size: 128, elements: !2186)
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2185, file: !44, line: 631, baseType: !220, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2185, file: !44, line: 632, baseType: !220, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2182, file: !44, line: 635, baseType: !957, size: 128, align: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2179, file: !44, line: 639, baseType: !1799, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2179, file: !44, line: 640, baseType: !2192, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2193, line: 297, baseType: !2194)
!2193 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2193, line: 297, size: 64, elements: !2195)
!2195 = !{!2196}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2194, file: !2193, line: 297, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2198, line: 19, baseType: !220)
!2198 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !2179, file: !44, line: 646, baseType: !2200, size: 64, offset: 256)
!2200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2179, file: !44, line: 646, size: 64, elements: !2201)
!2201 = !{!2202, !2205}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2200, file: !44, line: 647, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2204)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !220)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2200, file: !44, line: 648, baseType: !2204, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2179, file: !44, line: 666, baseType: !115, size: 32, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2179, file: !44, line: 667, baseType: !2208, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !2210)
!2210 = !{!2211}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2209, file: !44, line: 580, baseType: !1396, size: 320)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2179, file: !44, line: 670, baseType: !818, size: 8, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2179, file: !44, line: 681, baseType: !2214, size: 256, offset: 512)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !44, line: 678, size: 256, elements: !2215)
!2215 = !{!2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2214, file: !44, line: 679, baseType: !850, size: 192, align: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2214, file: !44, line: 680, baseType: !220, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2179, file: !44, line: 689, baseType: !239, size: 128, offset: 768)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2179, file: !44, line: 691, baseType: !2220, size: 64, offset: 896)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2179, file: !44, line: 694, baseType: !2223, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2225)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2226, line: 563, size: 1024, elements: !2227)
!2226 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2227 = !{!2228, !2232, !2233, !2237, !2241, !2245, !2421, !2425, !2429, !2433, !2434, !2435, !2439, !2443, !2449, !2453}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2225, file: !2226, line: 564, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !2178}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2225, file: !2226, line: 569, baseType: !2229, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2225, file: !2226, line: 571, baseType: !2234, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!115, !2178, !220}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2225, file: !2226, line: 572, baseType: !2238, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!115, !2178}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2225, file: !2226, line: 578, baseType: !2242, size: 64, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!115, !2178, !220, !220, !220}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2225, file: !2226, line: 580, baseType: !2246, size: 64, offset: 320)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!2249, !2250}
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2226, line: 512, size: 896, elements: !2252)
!2252 = !{!2253, !2261, !2262, !2269, !2276, !2286, !2414, !2415, !2417, !2419}
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !2226, line: 513, baseType: !2254, size: 320)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2251, file: !2226, line: 513, size: 320, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2260}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2254, file: !2226, line: 514, baseType: !2178, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2254, file: !2226, line: 515, baseType: !1248, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2254, file: !2226, line: 516, baseType: !220, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2254, file: !2226, line: 517, baseType: !220, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2254, file: !2226, line: 518, baseType: !220, size: 64, offset: 256)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2251, file: !2226, line: 520, baseType: !43, size: 32, offset: 320)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2251, file: !2226, line: 522, baseType: !2263, size: 64, offset: 384)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2198, line: 22, baseType: !2265)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2198, line: 22, size: 64, elements: !2266)
!2266 = !{!2267}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2265, file: !2198, line: 22, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2198, line: 15, baseType: !220)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2251, file: !2226, line: 524, baseType: !2270, size: 64, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2193, line: 372, baseType: !2272)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2193, line: 372, size: 64, elements: !2273)
!2273 = !{!2274}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2272, file: !2193, line: 372, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2198, line: 16, baseType: !220)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !2226, line: 527, baseType: !2277, size: 64, offset: 512)
!2277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !2226, line: 527, size: 64, elements: !2278)
!2278 = !{!2279, !2285}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2277, file: !2226, line: 528, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2198, line: 21, baseType: !2281)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2198, line: 21, size: 64, elements: !2282)
!2282 = !{!2283}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2281, file: !2198, line: 21, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2198, line: 14, baseType: !220)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2277, file: !2226, line: 529, baseType: !2264, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2251, file: !2226, line: 534, baseType: !2287, size: 64, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !2289)
!2289 = !{!2290, !2291, !2408, !2413}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2288, file: !44, line: 75, baseType: !220, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, scope: !2288, file: !44, line: 83, baseType: !2292, size: 320, offset: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2288, file: !44, line: 83, size: 320, elements: !2293)
!2293 = !{!2294, !2315, !2329, !2333, !2407}
!2294 = !DIDerivedType(tag: DW_TAG_member, scope: !2292, file: !44, line: 84, baseType: !2295, size: 320)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2292, file: !44, line: 84, size: 320, elements: !2296)
!2296 = !{!2297, !2308, !2309, !2314}
!2297 = !DIDerivedType(tag: DW_TAG_member, scope: !2295, file: !44, line: 90, baseType: !2298, size: 128)
!2298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2295, file: !44, line: 90, size: 128, elements: !2299)
!2299 = !{!2300, !2301, !2306, !2307}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2298, file: !44, line: 91, baseType: !239, size: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, scope: !2298, file: !44, line: 94, baseType: !2302, size: 128)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2298, file: !44, line: 94, size: 128, elements: !2303)
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2302, file: !44, line: 96, baseType: !217, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2302, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2298, file: !44, line: 102, baseType: !239, size: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2298, file: !44, line: 103, baseType: !239, size: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2295, file: !44, line: 106, baseType: !478, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !2295, file: !44, line: 107, baseType: !2310, size: 64, offset: 192)
!2310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2295, file: !44, line: 107, size: 64, elements: !2311)
!2311 = !{!2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2310, file: !44, line: 108, baseType: !220, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2310, file: !44, line: 109, baseType: !220, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2295, file: !44, line: 117, baseType: !220, size: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, scope: !2292, file: !44, line: 119, baseType: !2316, size: 320)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2292, file: !44, line: 119, size: 320, elements: !2317)
!2317 = !{!2318, !2319, !2322, !2323, !2324}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2316, file: !44, line: 124, baseType: !220, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2316, file: !44, line: 125, baseType: !2320, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2316, file: !44, line: 126, baseType: !220, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2316, file: !44, line: 127, baseType: !220, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !2316, file: !44, line: 128, baseType: !2325, size: 64, offset: 256)
!2325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2316, file: !44, line: 128, size: 64, elements: !2326)
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2325, file: !44, line: 133, baseType: !220, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2325, file: !44, line: 138, baseType: !742, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !2292, file: !44, line: 141, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2292, file: !44, line: 141, size: 64, elements: !2331)
!2331 = !{!2332}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2330, file: !44, line: 142, baseType: !220, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, scope: !2292, file: !44, line: 144, baseType: !2334, size: 128)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2292, file: !44, line: 144, size: 128, elements: !2335)
!2335 = !{!2336, !2406}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2334, file: !44, line: 146, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !60, line: 126, size: 1216, elements: !2339)
!2339 = !{!2340, !2349, !2370, !2371, !2372, !2373, !2374, !2388, !2389, !2390}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2338, file: !60, line: 127, baseType: !2341, size: 384)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !60, line: 21, size: 384, elements: !2342)
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2341, file: !60, line: 22, baseType: !220, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2341, file: !60, line: 23, baseType: !222, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2341, file: !60, line: 24, baseType: !222, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2341, file: !60, line: 25, baseType: !220, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2341, file: !60, line: 26, baseType: !220, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2341, file: !60, line: 27, baseType: !220, size: 64, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2338, file: !60, line: 128, baseType: !2350, size: 128, offset: 384)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2351, line: 105, size: 128, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2352 = !{!2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2350, file: !2351, line: 110, baseType: !220, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2350, file: !2351, line: 118, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2351, line: 95, size: 448, elements: !2357)
!2357 = !{!2358, !2359, !2365, !2366, !2367, !2368, !2369}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2356, file: !2351, line: 96, baseType: !742, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2356, file: !2351, line: 97, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2351, line: 60, baseType: !2362)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !2364}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2356, file: !2351, line: 98, baseType: !2360, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2356, file: !2351, line: 99, baseType: !818, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2356, file: !2351, line: 100, baseType: !818, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2356, file: !2351, line: 101, baseType: !957, size: 128, align: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2356, file: !2351, line: 102, baseType: !2364, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2338, file: !60, line: 129, baseType: !687, size: 256, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2338, file: !60, line: 130, baseType: !59, size: 32, offset: 768)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2338, file: !60, line: 131, baseType: !13, size: 32, offset: 800)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2338, file: !60, line: 132, baseType: !220, size: 64, offset: 832)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2338, file: !60, line: 133, baseType: !2375, size: 64, offset: 896)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2377)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !60, line: 77, size: 192, elements: !2378)
!2378 = !{!2379, !2383, !2384}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2377, file: !60, line: 83, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2287}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2377, file: !60, line: 89, baseType: !2246, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2377, file: !60, line: 100, baseType: !2385, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!115, !2337, !220, !220, !115}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2338, file: !60, line: 134, baseType: !217, size: 64, offset: 960)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2338, file: !60, line: 135, baseType: !115, size: 32, offset: 1024)
!2390 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !60, line: 136, baseType: !2391, size: 128, offset: 1088)
!2391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2338, file: !60, line: 136, size: 128, elements: !2392)
!2392 = !{!2393, !2399}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2391, file: !60, line: 137, baseType: !2394, size: 128)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2395, line: 6, size: 128, elements: !2396)
!2395 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2396 = !{!2397, !2398}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2394, file: !2395, line: 7, baseType: !263, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2394, file: !2395, line: 8, baseType: !263, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !2391, file: !60, line: 138, baseType: !2400)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2391, file: !60, line: 138, elements: !2401)
!2401 = !{!2402, !2404}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2400, file: !60, line: 138, baseType: !2403)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2400, file: !60, line: 138, elements: !1024)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2400, file: !60, line: 138, baseType: !2405)
!2405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2394, elements: !1886)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2334, file: !44, line: 147, baseType: !217, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2292, file: !44, line: 161, baseType: !957, size: 128, align: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, scope: !2288, file: !44, line: 164, baseType: !2409, size: 32, offset: 384)
!2409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2288, file: !44, line: 164, size: 32, elements: !2410)
!2410 = !{!2411, !2412}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2409, file: !44, line: 169, baseType: !357, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2409, file: !44, line: 177, baseType: !13, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2288, file: !44, line: 181, baseType: !357, size: 32, offset: 416)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2251, file: !2226, line: 535, baseType: !2287, size: 64, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2251, file: !2226, line: 541, baseType: !2416, size: 64, offset: 704)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2251, file: !2226, line: 545, baseType: !2418, size: 64, offset: 768)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2251, file: !2226, line: 549, baseType: !2420, size: 64, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2193, line: 520, baseType: !2287)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2225, file: !2226, line: 581, baseType: !2422, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!2249, !2250, !13}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2225, file: !2226, line: 582, baseType: !2426, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!2249, !2250, !220, !220}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2225, file: !2226, line: 584, baseType: !2430, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!220, !2178}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2225, file: !2226, line: 588, baseType: !2246, size: 64, offset: 576)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2225, file: !2226, line: 591, baseType: !2246, size: 64, offset: 640)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2225, file: !2226, line: 597, baseType: !2436, size: 64, offset: 704)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!115, !2178, !220, !217, !115, !115}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2225, file: !2226, line: 603, baseType: !2440, size: 64, offset: 768)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!268, !2178}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2225, file: !2226, line: 613, baseType: !2444, size: 64, offset: 832)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!115, !2178, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !44, line: 717, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2225, file: !2226, line: 625, baseType: !2450, size: 64, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!2447, !2178, !220}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2225, file: !2226, line: 633, baseType: !2454, size: 64, offset: 960)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!2287, !2178, !220}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2179, file: !44, line: 697, baseType: !220, size: 64, offset: 1024)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2179, file: !44, line: 699, baseType: !1826, size: 64, offset: 1088)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2179, file: !44, line: 700, baseType: !217, size: 64, offset: 1152)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2179, file: !44, line: 711, baseType: !742, size: 64, offset: 1216)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2179, file: !44, line: 717, baseType: !2447, size: 64, offset: 1280)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2179, file: !44, line: 722, baseType: !2463, offset: 1344)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !1024)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2096, file: !20, line: 1928, baseType: !220, size: 64, offset: 768)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2096, file: !20, line: 1929, baseType: !2466, size: 64, offset: 832)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!115, !482, !1826}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2096, file: !20, line: 1930, baseType: !2470, size: 64, offset: 896)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!115, !1826, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !217)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2096, file: !20, line: 1931, baseType: !2466, size: 64, offset: 960)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2096, file: !20, line: 1932, baseType: !2476, size: 64, offset: 1024)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!115, !1826, !638, !638, !115}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2096, file: !20, line: 1933, baseType: !2480, size: 64, offset: 1088)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!115, !115, !1826, !115}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2096, file: !20, line: 1934, baseType: !2484, size: 64, offset: 1152)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!115, !1826, !115, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2096, file: !20, line: 1935, baseType: !1823, size: 64, offset: 1216)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2096, file: !20, line: 1936, baseType: !2491, size: 64, offset: 1280)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!115, !115}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2096, file: !20, line: 1937, baseType: !2484, size: 64, offset: 1344)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2096, file: !20, line: 1938, baseType: !2496, size: 64, offset: 1408)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!435, !2499, !1826, !2107, !450, !13}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1178, line: 59, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2096, file: !20, line: 1939, baseType: !2502, size: 64, offset: 1472)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!435, !1826, !2107, !2499, !450, !13}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2096, file: !20, line: 1940, baseType: !2506, size: 64, offset: 1536)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !1826}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2096, file: !20, line: 1941, baseType: !2510, size: 64, offset: 1600)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!115, !1826, !115, !2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2096, file: !20, line: 1942, baseType: !2516, size: 64, offset: 1664)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!439, !1826, !115, !638, !638}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2096, file: !20, line: 1944, baseType: !2520, size: 64, offset: 1728)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !1176, !1826}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2096, file: !20, line: 1948, baseType: !2524, size: 64, offset: 1792)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!435, !1826, !638, !1826, !638, !450, !13}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2096, file: !20, line: 1950, baseType: !2528, size: 64, offset: 1856)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!638, !1826, !638, !1826, !638, !638, !13}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2096, file: !20, line: 1953, baseType: !2476, size: 64, offset: 1920)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2096, file: !20, line: 1954, baseType: !2533, size: 64, offset: 1984)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!115, !2536, !13}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2096, file: !20, line: 1955, baseType: !2539, size: 64, offset: 2048)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!115, !2536, !2146, !13}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1827, file: !20, line: 1018, baseType: !263, size: 64, offset: 1472)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1827, file: !20, line: 1020, baseType: !217, size: 64, offset: 1536)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1827, file: !20, line: 1023, baseType: !217, size: 64, offset: 1600)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1827, file: !20, line: 1027, baseType: !2546, size: 64, offset: 1664)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1827, file: !20, line: 1029, baseType: !478, size: 64, offset: 1728)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1827, file: !20, line: 1030, baseType: !2549, size: 32, offset: 1792)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2550, line: 8, baseType: !229)
!2550 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1827, file: !20, line: 1031, baseType: !2549, size: 32, offset: 1824)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1803, file: !44, line: 756, baseType: !220, size: 64, offset: 704)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1803, file: !44, line: 757, baseType: !220, size: 64, offset: 768)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1803, file: !44, line: 760, baseType: !220, size: 64, offset: 832)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1803, file: !44, line: 761, baseType: !220, size: 64, offset: 896)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1803, file: !44, line: 763, baseType: !220, size: 64, offset: 960)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1803, file: !44, line: 764, baseType: !2558, size: 64, offset: 1024)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2193, line: 299, baseType: !2560)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2193, line: 299, size: 64, elements: !2561)
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2560, file: !2193, line: 299, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2198, line: 18, baseType: !220)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1803, file: !44, line: 773, baseType: !357, size: 32, offset: 1088)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1803, file: !44, line: 785, baseType: !357, size: 32, offset: 1120)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1803, file: !44, line: 795, baseType: !2567, size: 64, offset: 1152)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2568, file: !44, line: 727, baseType: !263, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2568, file: !44, line: 728, baseType: !115, size: 32, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1803, file: !44, line: 801, baseType: !220, size: 64, offset: 1216)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1803, file: !44, line: 804, baseType: !742, size: 64, offset: 1280)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1803, file: !44, line: 806, baseType: !115, size: 32, offset: 1344)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1803, file: !44, line: 808, baseType: !337, size: 32, offset: 1376)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1803, file: !44, line: 823, baseType: !1396, size: 320, offset: 1408)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1803, file: !44, line: 825, baseType: !239, size: 128, offset: 1728)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1803, file: !44, line: 845, baseType: !115, size: 32, offset: 1856)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1803, file: !44, line: 849, baseType: !220, size: 64, offset: 1920)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1803, file: !44, line: 850, baseType: !220, size: 64, offset: 1984)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1803, file: !44, line: 852, baseType: !220, size: 64, offset: 2048)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1803, file: !44, line: 853, baseType: !220, size: 64, offset: 2112)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1803, file: !44, line: 854, baseType: !744, size: 64, offset: 2176)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1803, file: !44, line: 855, baseType: !220, size: 64, offset: 2240)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1803, file: !44, line: 856, baseType: !220, size: 64, offset: 2304)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1803, file: !44, line: 857, baseType: !220, size: 64, offset: 2368)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1803, file: !44, line: 858, baseType: !220, size: 64, offset: 2432)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1803, file: !44, line: 865, baseType: !528, size: 32, offset: 2496)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1803, file: !44, line: 867, baseType: !337, size: 32, offset: 2528)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1803, file: !44, line: 869, baseType: !220, size: 64, offset: 2560)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1803, file: !44, line: 869, baseType: !220, size: 64, offset: 2624)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1803, file: !44, line: 869, baseType: !220, size: 64, offset: 2688)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1803, file: !44, line: 869, baseType: !220, size: 64, offset: 2752)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1803, file: !44, line: 870, baseType: !220, size: 64, offset: 2816)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1803, file: !44, line: 870, baseType: !220, size: 64, offset: 2880)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1803, file: !44, line: 870, baseType: !220, size: 64, offset: 2944)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1803, file: !44, line: 871, baseType: !220, size: 64, offset: 3008)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1803, file: !44, line: 871, baseType: !220, size: 64, offset: 3072)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1803, file: !44, line: 871, baseType: !220, size: 64, offset: 3136)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1803, file: !44, line: 871, baseType: !220, size: 64, offset: 3200)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1803, file: !44, line: 873, baseType: !2602, size: 3328, offset: 3264)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 3328, elements: !2603)
!2603 = !{!2604}
!2604 = !DISubrange(count: 52)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1803, file: !44, line: 875, baseType: !2606, size: 1280, offset: 6592)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2038, size: 1280, elements: !275)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1803, file: !44, line: 877, baseType: !2608, size: 64, offset: 7872)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1803, file: !44, line: 880, baseType: !2611, size: 1088, offset: 7936)
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2612, line: 72, baseType: !2613)
!2612 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2612, line: 23, size: 1088, elements: !2614)
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2622, !2623, !2624, !2625, !2652, !2653, !2654}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2613, file: !2612, line: 28, baseType: !263, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2613, file: !2612, line: 38, baseType: !744, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2613, file: !2612, line: 40, baseType: !220, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2613, file: !2612, line: 43, baseType: !1396, size: 320, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2613, file: !2612, line: 44, baseType: !2620, size: 64, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2612, line: 44, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2613, file: !2612, line: 48, baseType: !220, size: 64, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2613, file: !2612, line: 59, baseType: !738, size: 256, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2613, file: !2612, line: 60, baseType: !217, size: 64, offset: 896)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2613, file: !2612, line: 61, baseType: !2626, size: 64, offset: 960)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2628)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2629, line: 13, size: 1216, elements: !2630)
!2629 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2628, file: !2629, line: 14, baseType: !217, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2628, file: !2629, line: 15, baseType: !220, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2628, file: !2629, line: 17, baseType: !220, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2628, file: !2629, line: 17, baseType: !220, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2628, file: !2629, line: 18, baseType: !220, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2628, file: !2629, line: 18, baseType: !220, size: 64, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2628, file: !2629, line: 19, baseType: !2638, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2628, file: !2629, line: 21, baseType: !439, size: 64, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2628, file: !2629, line: 23, baseType: !439, size: 64, offset: 512)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2628, file: !2629, line: 24, baseType: !439, size: 64, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2628, file: !2629, line: 25, baseType: !439, size: 64, offset: 640)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2628, file: !2629, line: 26, baseType: !439, size: 64, offset: 704)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2628, file: !2629, line: 27, baseType: !439, size: 64, offset: 768)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2628, file: !2629, line: 28, baseType: !439, size: 64, offset: 832)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2628, file: !2629, line: 29, baseType: !439, size: 64, offset: 896)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2628, file: !2629, line: 30, baseType: !439, size: 64, offset: 960)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2628, file: !2629, line: 31, baseType: !439, size: 64, offset: 1024)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2628, file: !2629, line: 32, baseType: !439, size: 64, offset: 1088)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2628, file: !2629, line: 33, baseType: !439, size: 64, offset: 1152)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2613, file: !2612, line: 63, baseType: !357, size: 32, offset: 1024)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2613, file: !2612, line: 69, baseType: !372, size: 16, offset: 1056)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2613, file: !2612, line: 70, baseType: !873, size: 16, offset: 1072)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1803, file: !44, line: 882, baseType: !220, size: 64, offset: 9024)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1803, file: !44, line: 885, baseType: !337, size: 32, offset: 9088)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1803, file: !44, line: 886, baseType: !2658, size: 64, offset: 9152)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1803, file: !44, line: 901, baseType: !2063, size: 64, offset: 9216)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1803, file: !44, line: 904, baseType: !1826, size: 64, offset: 9280)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1803, file: !44, line: 906, baseType: !2663, size: 64, offset: 9344)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1803, file: !44, line: 930, baseType: !357, size: 32, offset: 9408)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1803, file: !44, line: 933, baseType: !357, size: 32, offset: 9440)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1803, file: !44, line: 935, baseType: !2668, size: 64, offset: 9472)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2668, file: !74, line: 104, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1803, file: !44, line: 940, baseType: !742, size: 64, offset: 9536)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1803, file: !44, line: 942, baseType: !995, size: 256, offset: 9600)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1800, file: !44, line: 986, baseType: !2676, offset: 10240)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !1886)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1503, file: !1178, line: 882, baseType: !1799, size: 64, offset: 9792)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1503, file: !1178, line: 884, baseType: !115, size: 32, offset: 9856)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1503, file: !1178, line: 885, baseType: !115, size: 32, offset: 9888)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1503, file: !1178, line: 886, baseType: !115, size: 32, offset: 9920)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1503, file: !1178, line: 888, baseType: !115, size: 32, offset: 9952)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1503, file: !1178, line: 890, baseType: !220, size: 64, offset: 9984)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1503, file: !1178, line: 893, baseType: !13, size: 32, offset: 10048)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1503, file: !1178, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1503, file: !1178, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1503, file: !1178, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1503, file: !1178, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1503, file: !1178, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1503, file: !1178, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1503, file: !1178, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1503, file: !1178, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1503, file: !1178, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1503, file: !1178, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1503, file: !1178, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1503, file: !1178, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1503, file: !1178, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1503, file: !1178, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1503, file: !1178, line: 969, baseType: !220, size: 64, offset: 10176)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1503, file: !1178, line: 971, baseType: !2700, size: 448, offset: 10240)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !2701)
!2701 = !{!2702, !2703, !2708}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2700, file: !68, line: 26, baseType: !220, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2700, file: !68, line: 27, baseType: !2704, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!439, !2707}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !2700, file: !68, line: 28, baseType: !2709, size: 320, offset: 128)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2700, file: !68, line: 28, size: 320, elements: !2710)
!2710 = !{!2711, !2720, !2745}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2709, file: !68, line: 37, baseType: !2712, size: 320)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2709, file: !68, line: 30, size: 320, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717, !2718, !2719}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2712, file: !68, line: 31, baseType: !299, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2712, file: !68, line: 32, baseType: !229, size: 32, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2712, file: !68, line: 33, baseType: !229, size: 32, offset: 96)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2712, file: !68, line: 34, baseType: !229, size: 32, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2712, file: !68, line: 35, baseType: !263, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2712, file: !68, line: 36, baseType: !299, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2709, file: !68, line: 47, baseType: !2721, size: 192)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2709, file: !68, line: 39, size: 192, elements: !2722)
!2722 = !{!2723, !2724, !2725, !2744}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2721, file: !68, line: 40, baseType: !1670, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2721, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, scope: !2721, file: !68, line: 42, baseType: !2726, size: 64, offset: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2721, file: !68, line: 42, size: 64, elements: !2727)
!2727 = !{!2728, !2736}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2726, file: !68, line: 43, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2731, line: 7, size: 128, elements: !2732)
!2731 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2732 = !{!2733, !2735}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2730, file: !2731, line: 8, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !437, line: 93, baseType: !640)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2730, file: !2731, line: 9, baseType: !640, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2726, file: !68, line: 44, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2739, line: 7, size: 64, elements: !2740)
!2739 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2740 = !{!2741, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2738, file: !2739, line: 8, baseType: !2742, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2739, line: 5, baseType: !734)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2738, file: !2739, line: 9, baseType: !734, size: 32, offset: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2721, file: !68, line: 46, baseType: !263, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2709, file: !68, line: 55, baseType: !2746, size: 256)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2709, file: !68, line: 49, size: 256, elements: !2747)
!2747 = !{!2748, !2751, !2752, !2753, !2754}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2746, file: !68, line: 50, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !68, line: 14, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2746, file: !68, line: 51, baseType: !115, size: 32, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2746, file: !68, line: 52, baseType: !115, size: 32, offset: 96)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2746, file: !68, line: 53, baseType: !220, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2746, file: !68, line: 54, baseType: !220, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1503, file: !1178, line: 973, baseType: !2756, size: 32, offset: 10688)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !219, line: 27, baseType: !2757)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !437, line: 28, baseType: !115)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1503, file: !1178, line: 974, baseType: !2756, size: 32, offset: 10720)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1503, file: !1178, line: 978, baseType: !220, size: 64, offset: 10752)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1503, file: !1178, line: 987, baseType: !1502, size: 64, offset: 10816)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1503, file: !1178, line: 990, baseType: !1502, size: 64, offset: 10880)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1503, file: !1178, line: 995, baseType: !239, size: 128, offset: 10944)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1503, file: !1178, line: 996, baseType: !239, size: 128, offset: 11072)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1503, file: !1178, line: 997, baseType: !1502, size: 64, offset: 11200)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1503, file: !1178, line: 1005, baseType: !239, size: 128, offset: 11264)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1503, file: !1178, line: 1006, baseType: !239, size: 128, offset: 11392)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1503, file: !1178, line: 1009, baseType: !1867, size: 64, offset: 11520)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1503, file: !1178, line: 1010, baseType: !2769, size: 512, offset: 11584)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 512, elements: !275)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1503, file: !1178, line: 1011, baseType: !239, size: 128, offset: 12096)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1503, file: !1178, line: 1012, baseType: !239, size: 128, offset: 12224)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1503, file: !1178, line: 1014, baseType: !686, size: 64, offset: 12352)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1503, file: !1178, line: 1017, baseType: !226, size: 64, offset: 12416)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1503, file: !1178, line: 1020, baseType: !226, size: 64, offset: 12480)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1503, file: !1178, line: 1023, baseType: !217, size: 64, offset: 12544)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1503, file: !1178, line: 1025, baseType: !263, size: 64, offset: 12608)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1503, file: !1178, line: 1026, baseType: !263, size: 64, offset: 12672)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1503, file: !1178, line: 1031, baseType: !263, size: 64, offset: 12736)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1503, file: !1178, line: 1032, baseType: !2780, size: 192, offset: 12800)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1178, line: 324, size: 192, elements: !2781)
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2780, file: !1178, line: 326, baseType: !263, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2780, file: !1178, line: 327, baseType: !263, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2780, file: !1178, line: 328, baseType: !696, size: 32, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1503, file: !1178, line: 1041, baseType: !220, size: 64, offset: 12992)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1503, file: !1178, line: 1042, baseType: !220, size: 64, offset: 13056)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1503, file: !1178, line: 1045, baseType: !263, size: 64, offset: 13120)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1503, file: !1178, line: 1048, baseType: !263, size: 64, offset: 13184)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1503, file: !1178, line: 1051, baseType: !220, size: 64, offset: 13248)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1503, file: !1178, line: 1052, baseType: !220, size: 64, offset: 13312)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1503, file: !1178, line: 1055, baseType: !2792, size: 640, offset: 13376)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2793, line: 132, size: 640, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2794 = !{!2795, !2801, !2802}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2792, file: !2793, line: 133, baseType: !2796, size: 576)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2797, size: 576, elements: !404)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2793, line: 117, size: 192, elements: !2798)
!2798 = !{!2799, !2800}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2797, file: !2793, line: 118, baseType: !263, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2797, file: !2793, line: 119, baseType: !1679, size: 128, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2792, file: !2793, line: 134, baseType: !13, size: 32, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2792, file: !2793, line: 135, baseType: !13, size: 32, offset: 608)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1503, file: !1178, line: 1058, baseType: !2804, size: 448, offset: 14016)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2793, line: 144, size: 448, elements: !2805)
!2805 = !{!2806, !2807, !2808}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2804, file: !2793, line: 145, baseType: !957, size: 128, align: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2804, file: !2793, line: 146, baseType: !738, size: 256, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2804, file: !2793, line: 147, baseType: !13, size: 32, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1503, file: !1178, line: 1064, baseType: !1893, size: 64, offset: 14464)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1503, file: !1178, line: 1067, baseType: !1893, size: 64, offset: 14528)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1503, file: !1178, line: 1070, baseType: !1893, size: 64, offset: 14592)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1503, file: !1178, line: 1074, baseType: !1920, size: 64, offset: 14656)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1503, file: !1178, line: 1084, baseType: !2814, size: 128, offset: 14720)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2815)
!2815 = !{!2816}
!2816 = !DISubrange(count: 16)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1503, file: !1178, line: 1086, baseType: !2818, size: 64, offset: 14848)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1178, line: 55, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1503, file: !1178, line: 1089, baseType: !2821, size: 64, offset: 14912)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2822, line: 12, size: 64, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2821, file: !2822, line: 13, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2822, line: 8, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1503, file: !1178, line: 1090, baseType: !2828, size: 128, offset: 14976)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2829, line: 13, size: 128, elements: !2830)
!2829 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2830 = !{!2831}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2828, file: !2829, line: 14, baseType: !239, size: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1503, file: !1178, line: 1097, baseType: !2833, size: 64, offset: 15104)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1178, line: 50, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1503, file: !1178, line: 1100, baseType: !2836, size: 64, offset: 15168)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1178, line: 1100, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1503, file: !1178, line: 1103, baseType: !2839, size: 64, offset: 15232)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1178, line: 53, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1503, file: !1178, line: 1107, baseType: !2842, size: 64, offset: 15296)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2844, line: 35, flags: DIFlagFwdDecl)
!2844 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1503, file: !1178, line: 1110, baseType: !2846, size: 64, offset: 15360)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2848, line: 93, size: 8768, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2897, !2906, !2907, !2909, !2910, !2911, !2914, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2952, !2953, !2960, !2970, !2973, !2974, !2977, !2978, !2979, !2980, !2981, !2982}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2847, file: !2848, line: 94, baseType: !1516, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2847, file: !2848, line: 95, baseType: !357, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2847, file: !2848, line: 96, baseType: !115, size: 32, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2847, file: !2848, line: 97, baseType: !115, size: 32, offset: 96)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2847, file: !2848, line: 98, baseType: !239, size: 128, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2847, file: !2848, line: 100, baseType: !1489, size: 192, offset: 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2847, file: !2848, line: 103, baseType: !1502, size: 64, offset: 448)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2847, file: !2848, line: 106, baseType: !2858, size: 192, offset: 512)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2068, line: 32, size: 192, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2858, file: !2068, line: 33, baseType: !239, size: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2858, file: !2068, line: 34, baseType: !2862, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2863, line: 25, baseType: !2864)
!2863 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2863, line: 23, size: 64, elements: !2865)
!2865 = !{!2866}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2864, file: !2863, line: 24, baseType: !1750, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2847, file: !2848, line: 109, baseType: !1104, size: 64, offset: 704)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2847, file: !2848, line: 112, baseType: !115, size: 32, offset: 768)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2847, file: !2848, line: 114, baseType: !115, size: 32, offset: 800)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2847, file: !2848, line: 115, baseType: !1502, size: 64, offset: 832)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2847, file: !2848, line: 118, baseType: !115, size: 32, offset: 896)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2847, file: !2848, line: 119, baseType: !13, size: 32, offset: 928)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2847, file: !2848, line: 121, baseType: !2874, size: 64, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2848, line: 80, size: 448, elements: !2876)
!2876 = !{!2877, !2878, !2884}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2875, file: !2848, line: 81, baseType: !357, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2875, file: !2848, line: 82, baseType: !2879, size: 128, offset: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2848, line: 75, size: 128, elements: !2880)
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2879, file: !2848, line: 76, baseType: !1502, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2879, file: !2848, line: 77, baseType: !2883, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2875, file: !2848, line: 83, baseType: !687, size: 256, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2847, file: !2848, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2847, file: !2848, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2847, file: !2848, line: 138, baseType: !13, size: 32, offset: 1056)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2847, file: !2848, line: 139, baseType: !239, size: 128, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2847, file: !2848, line: 142, baseType: !1623, size: 512, offset: 1216)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2847, file: !2848, line: 143, baseType: !1631, size: 64, offset: 1728)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2847, file: !2848, line: 150, baseType: !2892, size: 256, offset: 1792)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2893, size: 256, elements: !857)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2848, line: 38, size: 128, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2893, file: !2848, line: 39, baseType: !263, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2893, file: !2848, line: 40, baseType: !263, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2847, file: !2848, line: 156, baseType: !2898, size: 192, offset: 2048)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2848, line: 66, size: 192, elements: !2899)
!2899 = !{!2900}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2898, file: !2848, line: 67, baseType: !2901, size: 192)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2848, line: 47, size: 192, elements: !2902)
!2902 = !{!2903, !2904, !2905}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2901, file: !2848, line: 48, baseType: !744, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2901, file: !2848, line: 49, baseType: !744, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2901, file: !2848, line: 50, baseType: !744, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2847, file: !2848, line: 160, baseType: !2792, size: 640, offset: 2240)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2847, file: !2848, line: 163, baseType: !2908, size: 256, offset: 2880)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1867, size: 256, elements: !275)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2847, file: !2848, line: 169, baseType: !1867, size: 64, offset: 3136)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2847, file: !2848, line: 172, baseType: !115, size: 32, offset: 3200)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2847, file: !2848, line: 174, baseType: !2912, size: 64, offset: 3264)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2848, line: 174, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2847, file: !2848, line: 185, baseType: !2915, size: 64, offset: 3328)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !524, line: 860, baseType: !2916)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 853, size: 64, elements: !2917)
!2917 = !{!2918, !2919}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2916, file: !524, line: 858, baseType: !523, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2916, file: !524, line: 859, baseType: !337, size: 32, offset: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2847, file: !2848, line: 186, baseType: !263, size: 64, offset: 3392)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2847, file: !2848, line: 186, baseType: !263, size: 64, offset: 3456)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2847, file: !2848, line: 186, baseType: !263, size: 64, offset: 3520)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2847, file: !2848, line: 186, baseType: !263, size: 64, offset: 3584)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2847, file: !2848, line: 187, baseType: !263, size: 64, offset: 3648)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2847, file: !2848, line: 188, baseType: !263, size: 64, offset: 3712)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2847, file: !2848, line: 189, baseType: !2780, size: 192, offset: 3776)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2847, file: !2848, line: 190, baseType: !220, size: 64, offset: 3968)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2847, file: !2848, line: 190, baseType: !220, size: 64, offset: 4032)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2847, file: !2848, line: 190, baseType: !220, size: 64, offset: 4096)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2847, file: !2848, line: 190, baseType: !220, size: 64, offset: 4160)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2847, file: !2848, line: 191, baseType: !220, size: 64, offset: 4224)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2847, file: !2848, line: 191, baseType: !220, size: 64, offset: 4288)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2847, file: !2848, line: 191, baseType: !220, size: 64, offset: 4352)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2847, file: !2848, line: 191, baseType: !220, size: 64, offset: 4416)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2847, file: !2848, line: 192, baseType: !220, size: 64, offset: 4480)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2847, file: !2848, line: 192, baseType: !220, size: 64, offset: 4544)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2847, file: !2848, line: 192, baseType: !220, size: 64, offset: 4608)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2847, file: !2848, line: 192, baseType: !220, size: 64, offset: 4672)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2847, file: !2848, line: 193, baseType: !220, size: 64, offset: 4736)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2847, file: !2848, line: 193, baseType: !220, size: 64, offset: 4800)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2847, file: !2848, line: 194, baseType: !2942, size: 448, offset: 4864)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2943, line: 12, size: 448, elements: !2944)
!2943 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2951}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2942, file: !2943, line: 15, baseType: !263, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2942, file: !2943, line: 17, baseType: !263, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2942, file: !2943, line: 19, baseType: !263, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2942, file: !2943, line: 21, baseType: !263, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2942, file: !2943, line: 29, baseType: !263, size: 64, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2942, file: !2943, line: 35, baseType: !263, size: 64, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2942, file: !2943, line: 44, baseType: !263, size: 64, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2847, file: !2848, line: 202, baseType: !265, size: 64, offset: 5312)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2847, file: !2848, line: 213, baseType: !2954, size: 2048, offset: 5376)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2955, size: 2048, elements: !2815)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2956, line: 43, size: 128, elements: !2957)
!2956 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2955, file: !2956, line: 44, baseType: !452, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2955, file: !2956, line: 45, baseType: !452, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2847, file: !2848, line: 216, baseType: !2961, size: 448, offset: 7424)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2848, line: 30, size: 448, elements: !2962)
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968, !2969}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2961, file: !2848, line: 31, baseType: !115, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2961, file: !2848, line: 32, baseType: !439, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2961, file: !2848, line: 33, baseType: !220, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2961, file: !2848, line: 34, baseType: !263, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2961, file: !2848, line: 34, baseType: !263, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2961, file: !2848, line: 35, baseType: !220, size: 64, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2961, file: !2848, line: 35, baseType: !220, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2847, file: !2848, line: 219, baseType: !2971, size: 64, offset: 7872)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2848, line: 219, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2847, file: !2848, line: 222, baseType: !13, size: 32, offset: 7936)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2847, file: !2848, line: 223, baseType: !2975, size: 64, offset: 8000)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2848, line: 223, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2847, file: !2848, line: 230, baseType: !818, size: 8, offset: 8064)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2847, file: !2848, line: 231, baseType: !875, size: 16, offset: 8080)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2847, file: !2848, line: 232, baseType: !875, size: 16, offset: 8096)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2847, file: !2848, line: 234, baseType: !1799, size: 64, offset: 8128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2847, file: !2848, line: 237, baseType: !738, size: 256, offset: 8192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2847, file: !2848, line: 243, baseType: !1396, size: 320, offset: 8448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1503, file: !1178, line: 1111, baseType: !2984, size: 64, offset: 15424)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2848, line: 20, size: 16640, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2985, file: !2848, line: 21, baseType: !337, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2985, file: !2848, line: 22, baseType: !1516, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2985, file: !2848, line: 23, baseType: !1489, size: 192, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2985, file: !2848, line: 24, baseType: !2991, size: 16384, offset: 256)
!2991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2992, size: 16384, elements: !408)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2068, line: 51, size: 256, elements: !2993)
!2993 = !{!2994}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2992, file: !2068, line: 52, baseType: !2995, size: 256)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2068, line: 37, size: 256, elements: !2996)
!2996 = !{!2997, !3004, !3005, !3009}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2995, file: !2068, line: 39, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2999, line: 83, baseType: !3000)
!2999 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2999, line: 82, baseType: !3002)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !115}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2995, file: !2068, line: 40, baseType: !220, size: 64, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2995, file: !2068, line: 46, baseType: !3006, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2999, line: 86, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2999, line: 85, baseType: !1099)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2995, file: !2068, line: 48, baseType: !2862, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1503, file: !1178, line: 1112, baseType: !2862, size: 64, offset: 15488)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1503, file: !1178, line: 1113, baseType: !2862, size: 64, offset: 15552)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1503, file: !1178, line: 1115, baseType: !2862, size: 64, offset: 15616)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1503, file: !1178, line: 1116, baseType: !2858, size: 192, offset: 15680)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1503, file: !1178, line: 1117, baseType: !220, size: 64, offset: 15872)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1503, file: !1178, line: 1118, baseType: !450, size: 64, offset: 15936)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1503, file: !1178, line: 1119, baseType: !13, size: 32, offset: 16000)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1503, file: !1178, line: 1121, baseType: !956, size: 64, offset: 16064)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1503, file: !1178, line: 1125, baseType: !3019, size: 64, offset: 16128)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1178, line: 43, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1503, file: !1178, line: 1127, baseType: !488, size: 32, offset: 16192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1503, file: !1178, line: 1128, baseType: !13, size: 32, offset: 16224)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1503, file: !1178, line: 1130, baseType: !3024, size: 128, offset: 16256)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3025, line: 37, size: 128, elements: !3026)
!3025 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3026 = !{!3027, !3028, !3029}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3024, file: !3025, line: 38, baseType: !115, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3024, file: !3025, line: 39, baseType: !357, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3024, file: !3025, line: 40, baseType: !3030, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3025, line: 24, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1503, file: !1178, line: 1131, baseType: !3033, size: 256, offset: 16384)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3034, line: 12, size: 256, elements: !3035)
!3034 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3035 = !{!3036, !3037, !3038, !3039}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3033, file: !3034, line: 13, baseType: !403, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3033, file: !3034, line: 14, baseType: !220, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3033, file: !3034, line: 15, baseType: !220, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3033, file: !3034, line: 16, baseType: !818, size: 8, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1503, file: !1178, line: 1134, baseType: !263, size: 64, offset: 16640)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1503, file: !1178, line: 1135, baseType: !263, size: 64, offset: 16704)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1503, file: !1178, line: 1138, baseType: !337, size: 32, offset: 16768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1503, file: !1178, line: 1141, baseType: !696, size: 32, offset: 16800)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1503, file: !1178, line: 1143, baseType: !3045, size: 64, offset: 16832)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1178, line: 735, size: 64, elements: !3046)
!3046 = !{!3047}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3045, file: !1178, line: 736, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1503, file: !1178, line: 1147, baseType: !1682, size: 128, offset: 16896)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1503, file: !1178, line: 1149, baseType: !1502, size: 64, offset: 17024)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1503, file: !1178, line: 1151, baseType: !3052, size: 64, offset: 17088)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1178, line: 1151, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1503, file: !1178, line: 1188, baseType: !217, size: 64, offset: 17152)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1503, file: !1178, line: 1191, baseType: !3056, size: 64, offset: 17216)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1178, line: 44, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1503, file: !1178, line: 1194, baseType: !3059, size: 64, offset: 17280)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1178, line: 45, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1503, file: !1178, line: 1197, baseType: !3062, size: 64, offset: 17344)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1178, line: 61, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1503, file: !1178, line: 1199, baseType: !3065, size: 64, offset: 17408)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3067, line: 99, size: 128, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3066, file: !3067, line: 100, baseType: !742, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3066, file: !3067, line: 101, baseType: !357, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3066, file: !3067, line: 103, baseType: !316, size: 16, offset: 96)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1503, file: !1178, line: 1202, baseType: !3073, size: 64, offset: 17472)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1178, line: 48, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1503, file: !1178, line: 1205, baseType: !220, size: 64, offset: 17536)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1503, file: !1178, line: 1206, baseType: !3077, size: 64, offset: 17600)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2068, line: 14, baseType: !3079)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2068, line: 12, size: 384, elements: !3080)
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, scope: !3079, file: !2068, line: 13, baseType: !3082, size: 384)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3079, file: !2068, line: 13, size: 384, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3082, file: !2068, line: 13, baseType: !115, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3082, file: !2068, line: 13, baseType: !115, size: 32, offset: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3082, file: !2068, line: 13, baseType: !115, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3082, file: !2068, line: 13, baseType: !3088, size: 256, offset: 128)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3089, line: 37, size: 256, elements: !3090)
!3089 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3090 = !{!3091, !3096, !3109, !3115, !3124, !3151, !3156}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3088, file: !3089, line: 42, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 39, size: 64, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3092, file: !3089, line: 40, baseType: !2757, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3092, file: !3089, line: 41, baseType: !494, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3088, file: !3089, line: 50, baseType: !3097, size: 192)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 45, size: 192, elements: !3098)
!3098 = !{!3099, !3101, !3102, !3108}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3097, file: !3089, line: 46, baseType: !3100, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !437, line: 95, baseType: !115)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3097, file: !3089, line: 47, baseType: !115, size: 32, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3097, file: !3089, line: 48, baseType: !3103, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3089, line: 11, baseType: !3104)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3089, line: 8, size: 64, elements: !3105)
!3105 = !{!3106, !3107}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3104, file: !3089, line: 9, baseType: !115, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3104, file: !3089, line: 10, baseType: !217, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3097, file: !3089, line: 49, baseType: !115, size: 32, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3088, file: !3089, line: 57, baseType: !3110, size: 128)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 53, size: 128, elements: !3111)
!3111 = !{!3112, !3113, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3110, file: !3089, line: 54, baseType: !2757, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3110, file: !3089, line: 55, baseType: !494, size: 32, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3110, file: !3089, line: 56, baseType: !3103, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3088, file: !3089, line: 66, baseType: !3116, size: 256)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 60, size: 256, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3121, !3123}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3116, file: !3089, line: 61, baseType: !2757, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3116, file: !3089, line: 62, baseType: !494, size: 32, offset: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3116, file: !3089, line: 63, baseType: !115, size: 32, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3116, file: !3089, line: 64, baseType: !3122, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !437, line: 94, baseType: !438)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3116, file: !3089, line: 65, baseType: !3122, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3088, file: !3089, line: 105, baseType: !3125, size: 256)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 69, size: 256, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3125, file: !3089, line: 70, baseType: !217, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, scope: !3125, file: !3089, line: 79, baseType: !3129, size: 192, offset: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3125, file: !3089, line: 79, size: 192, elements: !3130)
!3130 = !{!3131, !3132, !3133, !3140, !3145}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3129, file: !3089, line: 81, baseType: !115, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3129, file: !3089, line: 86, baseType: !875, size: 16)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3129, file: !3089, line: 92, baseType: !3134, size: 192)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3129, file: !3089, line: 88, size: 192, elements: !3135)
!3135 = !{!3136, !3138, !3139}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3134, file: !3089, line: 89, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1666)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3134, file: !3089, line: 90, baseType: !217, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3134, file: !3089, line: 91, baseType: !217, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3129, file: !3089, line: 97, baseType: !3141, size: 96)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3129, file: !3089, line: 94, size: 96, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3141, file: !3089, line: 95, baseType: !3137, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3141, file: !3089, line: 96, baseType: !231, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3129, file: !3089, line: 103, baseType: !3146, size: 128)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3129, file: !3089, line: 99, size: 128, elements: !3147)
!3147 = !{!3148, !3149, !3150}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3146, file: !3089, line: 100, baseType: !220, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3146, file: !3089, line: 101, baseType: !231, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3146, file: !3089, line: 102, baseType: !231, size: 32, offset: 96)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3088, file: !3089, line: 111, baseType: !3152, size: 128)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 108, size: 128, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3152, file: !3089, line: 109, baseType: !439, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3152, file: !3089, line: 110, baseType: !115, size: 32, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3088, file: !3089, line: 118, baseType: !3157, size: 128)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 114, size: 128, elements: !3158)
!3158 = !{!3159, !3160, !3161}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3157, file: !3089, line: 115, baseType: !217, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3157, file: !3089, line: 116, baseType: !115, size: 32, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3157, file: !3089, line: 117, baseType: !13, size: 32, offset: 96)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1503, file: !1178, line: 1208, baseType: !2942, size: 448, offset: 17664)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1503, file: !1178, line: 1215, baseType: !263, size: 64, offset: 18112)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1503, file: !1178, line: 1217, baseType: !263, size: 64, offset: 18176)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1503, file: !1178, line: 1219, baseType: !263, size: 64, offset: 18240)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1503, file: !1178, line: 1223, baseType: !3167, size: 64, offset: 18304)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3168, line: 99, baseType: !3169)
!3168 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3168, line: 99, size: 64, elements: !3170)
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3169, file: !3168, line: 99, baseType: !1750, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1503, file: !1178, line: 1225, baseType: !523, size: 32, offset: 18368)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1503, file: !1178, line: 1226, baseType: !115, size: 32, offset: 18400)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1503, file: !1178, line: 1227, baseType: !115, size: 32, offset: 18432)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1503, file: !1178, line: 1231, baseType: !3176, size: 64, offset: 18496)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1178, line: 1231, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1503, file: !1178, line: 1233, baseType: !239, size: 128, offset: 18560)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1503, file: !1178, line: 1240, baseType: !3180, size: 64, offset: 18688)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1178, line: 62, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1503, file: !1178, line: 1242, baseType: !3183, size: 64, offset: 18752)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1178, line: 1242, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1503, file: !1178, line: 1244, baseType: !239, size: 128, offset: 18816)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1503, file: !1178, line: 1245, baseType: !3187, size: 64, offset: 18944)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1178, line: 51, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1503, file: !1178, line: 1246, baseType: !738, size: 256, offset: 19008)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1503, file: !1178, line: 1247, baseType: !13, size: 32, offset: 19264)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1503, file: !1178, line: 1250, baseType: !3192, size: 64, offset: 19328)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1178, line: 57, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1503, file: !1178, line: 1251, baseType: !738, size: 256, offset: 19392)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1503, file: !1178, line: 1252, baseType: !239, size: 128, offset: 19648)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1503, file: !1178, line: 1259, baseType: !2447, size: 64, offset: 19776)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1503, file: !1178, line: 1260, baseType: !875, size: 16, offset: 19840)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1503, file: !1178, line: 1261, baseType: !875, size: 16, offset: 19856)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1503, file: !1178, line: 1314, baseType: !3200, size: 64, offset: 19904)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3202, line: 62, size: 256, align: 256, elements: !3203)
!3202 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3201, file: !3202, line: 75, baseType: !231, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3201, file: !3202, line: 90, baseType: !231, size: 32, offset: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3201, file: !3202, line: 112, baseType: !264, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3201, file: !3202, line: 132, baseType: !231, size: 32, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3201, file: !3202, line: 140, baseType: !231, size: 32, offset: 160)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3201, file: !3202, line: 149, baseType: !231, size: 32, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3201, file: !3202, line: 154, baseType: !3211, offset: 224)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1886)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1503, file: !1178, line: 1315, baseType: !229, size: 32, offset: 19968)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1503, file: !1178, line: 1316, baseType: !229, size: 32, offset: 20000)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1503, file: !1178, line: 1321, baseType: !220, size: 64, offset: 20032)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1503, file: !1178, line: 1325, baseType: !115, size: 32, offset: 20096)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1503, file: !1178, line: 1326, baseType: !115, size: 32, offset: 20128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1503, file: !1178, line: 1327, baseType: !115, size: 32, offset: 20160)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1503, file: !1178, line: 1328, baseType: !115, size: 32, offset: 20192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1503, file: !1178, line: 1329, baseType: !957, size: 128, align: 64, offset: 20224)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1503, file: !1178, line: 1332, baseType: !3221, size: 128, offset: 20352)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3222, line: 51, size: 128, elements: !3223)
!3222 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3223 = !{!3224, !3229, !3230}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3221, file: !3222, line: 60, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3226, line: 7, size: 64, elements: !3227)
!3226 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3227 = !{!3228}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3225, file: !3226, line: 12, baseType: !1747, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3221, file: !3222, line: 63, baseType: !818, size: 8, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3221, file: !3222, line: 70, baseType: !818, size: 8, offset: 72)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1503, file: !1178, line: 1335, baseType: !2499, size: 64, offset: 20480)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1503, file: !1178, line: 1337, baseType: !3233, size: 128, offset: 20544)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3222, line: 39, size: 128, elements: !3234)
!3234 = !{!3235, !3236, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3233, file: !3222, line: 40, baseType: !2287, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3233, file: !3222, line: 42, baseType: !231, size: 32, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3233, file: !3222, line: 43, baseType: !231, size: 32, offset: 96)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1503, file: !1178, line: 1340, baseType: !3239, size: 64, offset: 20672)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1178, line: 69, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1503, file: !1178, line: 1351, baseType: !115, size: 32, offset: 20736)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1503, file: !1178, line: 1352, baseType: !115, size: 32, offset: 20768)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1503, file: !1178, line: 1354, baseType: !220, size: 64, offset: 20800)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1503, file: !1178, line: 1364, baseType: !263, size: 64, offset: 20864)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1503, file: !1178, line: 1365, baseType: !263, size: 64, offset: 20928)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1503, file: !1178, line: 1412, baseType: !220, size: 64, offset: 20992)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1503, file: !1178, line: 1453, baseType: !3248, size: 64, offset: 21056)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1178, line: 1453, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1503, file: !1178, line: 1457, baseType: !3251, size: 64, offset: 21120)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !3253)
!3253 = !{!3254, !3255, !3274, !3277, !3278, !3311, !3321}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3252, file: !74, line: 62, baseType: !73, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !74, line: 64, baseType: !3256, size: 192, offset: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !74, line: 64, size: 192, elements: !3257)
!3257 = !{!3258, !3269}
!3258 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !74, line: 65, baseType: !3259, size: 192)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !74, line: 65, size: 192, elements: !3260)
!3260 = !{!3261, !3268}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3259, file: !74, line: 66, baseType: !3262, size: 128)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3263, line: 50, size: 128, elements: !3264)
!3263 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3264 = !{!3265, !3266, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3262, file: !3263, line: 52, baseType: !220, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3262, file: !3263, line: 54, baseType: !13, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3262, file: !3263, line: 55, baseType: !13, size: 32, offset: 96)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3259, file: !74, line: 67, baseType: !220, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !74, line: 70, baseType: !3270, size: 192)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !74, line: 70, size: 192, elements: !3271)
!3271 = !{!3272, !3273}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3270, file: !74, line: 71, baseType: !957, size: 128, align: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3270, file: !74, line: 72, baseType: !220, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3252, file: !74, line: 76, baseType: !3275, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3252, file: !74, line: 77, baseType: !220, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3252, file: !74, line: 79, baseType: !3279, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3263, line: 25, size: 256, elements: !3281)
!3281 = !{!3282, !3288, !3292}
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3263, line: 26, baseType: !3283, size: 128)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3263, line: 26, size: 128, elements: !3284)
!3284 = !{!3285, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3283, file: !3263, line: 27, baseType: !3286, size: 128)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 128, elements: !2815)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3283, file: !3263, line: 28, baseType: !3286, size: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3280, file: !3263, line: 31, baseType: !3289, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3291)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3263, line: 23, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3263, line: 33, baseType: !3293, size: 64, offset: 192)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3263, line: 33, size: 64, elements: !3294)
!3294 = !{!3295, !3301, !3306}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3293, file: !3263, line: 38, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 34, size: 64, elements: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3296, file: !3263, line: 35, baseType: !734, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3296, file: !3263, line: 36, baseType: !365, size: 8, offset: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3296, file: !3263, line: 37, baseType: !365, size: 8, offset: 40)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3293, file: !3263, line: 42, baseType: !3302, size: 16)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 39, size: 16, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3302, file: !3263, line: 40, baseType: !365, size: 8)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3302, file: !3263, line: 41, baseType: !365, size: 8, offset: 8)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3293, file: !3263, line: 46, baseType: !3307, size: 16)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 43, size: 16, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3307, file: !3263, line: 44, baseType: !365, size: 8)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3307, file: !3263, line: 45, baseType: !365, size: 8, offset: 8)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3252, file: !74, line: 81, baseType: !3312, size: 64, offset: 448)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3313, file: !74, line: 86, baseType: !3275, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3313, file: !74, line: 87, baseType: !220, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3313, file: !74, line: 88, baseType: !220, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3313, file: !74, line: 89, baseType: !220, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3313, file: !74, line: 90, baseType: !818, size: 8, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3313, file: !74, line: 92, baseType: !3312, size: 64, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3252, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1503, file: !1178, line: 1463, baseType: !3323, offset: 21184)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1178, line: 739, elements: !1024)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1503, file: !1178, line: 1470, baseType: !957, size: 128, align: 64, offset: 21184)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1503, file: !1178, line: 1471, baseType: !1516, size: 32, offset: 21312)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1503, file: !1178, line: 1472, baseType: !115, size: 32, offset: 21344)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1503, file: !1178, line: 1474, baseType: !1502, size: 64, offset: 21376)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1503, file: !1178, line: 1475, baseType: !977, size: 320, offset: 21440)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1503, file: !1178, line: 1478, baseType: !3330, size: 64, offset: 21760)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2140, line: 49, size: 512, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3339, !3340, !3341, !3342}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3331, file: !2140, line: 50, baseType: !3330, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3331, file: !2140, line: 51, baseType: !217, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3331, file: !2140, line: 52, baseType: !220, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !2140, line: 53, baseType: !220, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3331, file: !2140, line: 54, baseType: !3338, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3331, file: !2140, line: 56, baseType: !13, size: 32, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3331, file: !2140, line: 58, baseType: !13, size: 32, offset: 352)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3331, file: !2140, line: 59, baseType: !262, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3331, file: !2140, line: 60, baseType: !2638, size: 64, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1503, file: !1178, line: 1482, baseType: !1516, size: 32, offset: 21824)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1503, file: !1178, line: 1489, baseType: !217, size: 64, offset: 21888)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1503, file: !1178, line: 1504, baseType: !217, size: 64, offset: 21952)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1503, file: !1178, line: 1505, baseType: !264, size: 64, offset: 22016)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1503, file: !1178, line: 1506, baseType: !263, size: 64, offset: 22080)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1503, file: !1178, line: 1507, baseType: !264, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1503, file: !1178, line: 1508, baseType: !264, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1503, file: !1178, line: 1509, baseType: !264, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1503, file: !1178, line: 1510, baseType: !957, size: 128, align: 64, offset: 22208)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1503, file: !1178, line: 1511, baseType: !115, size: 32, offset: 22336)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1503, file: !1178, line: 1515, baseType: !3354, size: 64, offset: 22400)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1530, line: 56, size: 64, elements: !3355)
!3355 = !{!3356}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3354, file: !1530, line: 57, baseType: !1533, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1503, file: !1178, line: 1518, baseType: !3354, size: 64, offset: 22464)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1503, file: !1178, line: 1528, baseType: !957, size: 128, align: 64, offset: 22528)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1503, file: !1178, line: 1552, baseType: !3360, size: 35328, offset: 23040)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3361, line: 430, size: 35328, elements: !3362)
!3361 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3362 = !{!3363, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3392, !3393, !3394, !3395, !3396, !3397, !3400, !3401, !3402, !3403}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3360, file: !3361, line: 432, baseType: !3364, size: 192)
!3364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3365, size: 192, elements: !404)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3366, line: 16, size: 64, elements: !3367)
!3366 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3367 = !{!3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3365, file: !3366, line: 17, baseType: !372, size: 16)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3365, file: !3366, line: 18, baseType: !372, size: 16, offset: 16)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3365, file: !3366, line: 19, baseType: !372, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3365, file: !3366, line: 19, baseType: !372, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3365, file: !3366, line: 19, baseType: !372, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3365, file: !3366, line: 19, baseType: !372, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3365, file: !3366, line: 19, baseType: !372, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3365, file: !3366, line: 20, baseType: !372, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3365, file: !3366, line: 20, baseType: !372, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3365, file: !3366, line: 20, baseType: !372, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3365, file: !3366, line: 20, baseType: !372, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3365, file: !3366, line: 20, baseType: !372, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3365, file: !3366, line: 20, baseType: !372, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3360, file: !3361, line: 436, baseType: !220, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3360, file: !3361, line: 440, baseType: !316, size: 16, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3360, file: !3361, line: 441, baseType: !316, size: 16, offset: 272)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3360, file: !3361, line: 442, baseType: !316, size: 16, offset: 288)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3360, file: !3361, line: 443, baseType: !316, size: 16, offset: 304)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3360, file: !3361, line: 447, baseType: !220, size: 64, offset: 320)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3360, file: !3361, line: 448, baseType: !220, size: 64, offset: 384)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3360, file: !3361, line: 459, baseType: !3389, size: 256, offset: 448)
!3389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3390, size: 256, elements: !275)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3361, line: 428, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3360, file: !3361, line: 461, baseType: !220, size: 64, offset: 704)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3360, file: !3361, line: 463, baseType: !220, size: 64, offset: 768)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3360, file: !3361, line: 465, baseType: !220, size: 64, offset: 832)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3360, file: !3361, line: 466, baseType: !220, size: 64, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3360, file: !3361, line: 467, baseType: !220, size: 64, offset: 960)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3360, file: !3361, line: 473, baseType: !3398, size: 64, offset: 1024)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3361, line: 10, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3360, file: !3361, line: 480, baseType: !220, size: 64, offset: 1088)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3360, file: !3361, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3360, file: !3361, line: 491, baseType: !229, size: 32, offset: 1184)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3360, file: !3361, line: 501, baseType: !3404, size: 33792, offset: 1536)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3405, line: 448, size: 33792, elements: !3406)
!3405 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3406 = !{!3407, !3408, !3409, !3571, !3572, !3578, !3579}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3404, file: !3405, line: 461, baseType: !13, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3404, file: !3405, line: 468, baseType: !220, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3404, file: !3405, line: 476, baseType: !3410, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3405, line: 356, size: 33280, align: 512, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3411, file: !3405, line: 358, baseType: !13, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3411, file: !3405, line: 361, baseType: !13, size: 32, offset: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3411, file: !3405, line: 364, baseType: !263, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3411, file: !3405, line: 367, baseType: !263, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3411, file: !3405, line: 370, baseType: !263, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3411, file: !3405, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3411, file: !3405, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3411, file: !3405, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3411, file: !3405, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3411, file: !3405, line: 397, baseType: !3423, size: 32768, offset: 512)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3405, line: 348, size: 32768, elements: !3424)
!3424 = !{!3425, !3440, !3477, !3554, !3567}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3423, file: !3405, line: 349, baseType: !3426, size: 896)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3405, line: 12, size: 896, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3439}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3426, file: !3405, line: 13, baseType: !229, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3426, file: !3405, line: 14, baseType: !229, size: 32, offset: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3426, file: !3405, line: 15, baseType: !229, size: 32, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3426, file: !3405, line: 16, baseType: !229, size: 32, offset: 96)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3426, file: !3405, line: 17, baseType: !229, size: 32, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3426, file: !3405, line: 18, baseType: !229, size: 32, offset: 160)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3426, file: !3405, line: 19, baseType: !229, size: 32, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3426, file: !3405, line: 22, baseType: !3436, size: 640, offset: 224)
!3436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 640, elements: !3437)
!3437 = !{!3438}
!3438 = !DISubrange(count: 20)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3426, file: !3405, line: 25, baseType: !229, size: 32, offset: 864)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3423, file: !3405, line: 350, baseType: !3441, size: 4096, align: 128)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3405, line: 34, size: 4096, align: 128, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3462, !3463, !3464, !3466, !3468, !3472}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3441, file: !3405, line: 35, baseType: !372, size: 16)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3441, file: !3405, line: 36, baseType: !372, size: 16, offset: 16)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3441, file: !3405, line: 37, baseType: !372, size: 16, offset: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3441, file: !3405, line: 38, baseType: !372, size: 16, offset: 48)
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !3441, file: !3405, line: 39, baseType: !3448, size: 128, offset: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3441, file: !3405, line: 39, size: 128, elements: !3449)
!3449 = !{!3450, !3455}
!3450 = !DIDerivedType(tag: DW_TAG_member, scope: !3448, file: !3405, line: 40, baseType: !3451, size: 128)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3448, file: !3405, line: 40, size: 128, elements: !3452)
!3452 = !{!3453, !3454}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3451, file: !3405, line: 41, baseType: !263, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3451, file: !3405, line: 42, baseType: !263, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, scope: !3448, file: !3405, line: 44, baseType: !3456, size: 128)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3448, file: !3405, line: 44, size: 128, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3461}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3456, file: !3405, line: 45, baseType: !229, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3456, file: !3405, line: 46, baseType: !229, size: 32, offset: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3456, file: !3405, line: 47, baseType: !229, size: 32, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3456, file: !3405, line: 48, baseType: !229, size: 32, offset: 96)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3441, file: !3405, line: 51, baseType: !229, size: 32, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3441, file: !3405, line: 52, baseType: !229, size: 32, offset: 224)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3441, file: !3405, line: 55, baseType: !3465, size: 1024, offset: 256)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 1024, elements: !559)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3441, file: !3405, line: 58, baseType: !3467, size: 2048, offset: 1280)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 2048, elements: !408)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3441, file: !3405, line: 60, baseType: !3469, size: 384, offset: 3328)
!3469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 384, elements: !3470)
!3470 = !{!3471}
!3471 = !DISubrange(count: 12)
!3472 = !DIDerivedType(tag: DW_TAG_member, scope: !3441, file: !3405, line: 62, baseType: !3473, size: 384, offset: 3712)
!3473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3441, file: !3405, line: 62, size: 384, elements: !3474)
!3474 = !{!3475, !3476}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3473, file: !3405, line: 63, baseType: !3469, size: 384)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3473, file: !3405, line: 64, baseType: !3469, size: 384)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3423, file: !3405, line: 351, baseType: !3478, size: 1088)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3405, line: 79, size: 1088, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3553}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3478, file: !3405, line: 80, baseType: !229, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3478, file: !3405, line: 81, baseType: !229, size: 32, offset: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3478, file: !3405, line: 82, baseType: !229, size: 32, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3478, file: !3405, line: 83, baseType: !229, size: 32, offset: 96)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3478, file: !3405, line: 84, baseType: !229, size: 32, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3478, file: !3405, line: 85, baseType: !229, size: 32, offset: 160)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3478, file: !3405, line: 86, baseType: !229, size: 32, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3478, file: !3405, line: 88, baseType: !3436, size: 640, offset: 224)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3478, file: !3405, line: 89, baseType: !365, size: 8, offset: 864)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3478, file: !3405, line: 90, baseType: !365, size: 8, offset: 872)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3478, file: !3405, line: 91, baseType: !365, size: 8, offset: 880)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3478, file: !3405, line: 92, baseType: !365, size: 8, offset: 888)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3478, file: !3405, line: 93, baseType: !365, size: 8, offset: 896)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3478, file: !3405, line: 94, baseType: !365, size: 8, offset: 904)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3478, file: !3405, line: 95, baseType: !3495, size: 64, offset: 960)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3497, line: 11, size: 128, elements: !3498)
!3497 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3498 = !{!3499, !3500}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3496, file: !3497, line: 12, baseType: !439, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3496, file: !3497, line: 13, baseType: !3501, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3503, line: 103, size: 1344, elements: !3504)
!3503 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3504 = !{!3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3533, !3534, !3535}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3502, file: !3503, line: 109, baseType: !220, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3502, file: !3503, line: 110, baseType: !220, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3502, file: !3503, line: 111, baseType: !220, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3502, file: !3503, line: 112, baseType: !220, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3502, file: !3503, line: 113, baseType: !220, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3502, file: !3503, line: 114, baseType: !220, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3502, file: !3503, line: 117, baseType: !220, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3502, file: !3503, line: 118, baseType: !220, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3502, file: !3503, line: 119, baseType: !220, size: 64, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3502, file: !3503, line: 120, baseType: !220, size: 64, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3502, file: !3503, line: 121, baseType: !220, size: 64, offset: 640)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3502, file: !3503, line: 122, baseType: !220, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3502, file: !3503, line: 123, baseType: !220, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3502, file: !3503, line: 124, baseType: !220, size: 64, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3502, file: !3503, line: 125, baseType: !220, size: 64, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3502, file: !3503, line: 139, baseType: !220, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3502, file: !3503, line: 142, baseType: !220, size: 64, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !3503, line: 144, baseType: !3523, size: 64, offset: 1088)
!3523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3502, file: !3503, line: 144, size: 64, elements: !3524)
!3524 = !{!3525, !3526, !3527}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3523, file: !3503, line: 146, baseType: !372, size: 16)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3523, file: !3503, line: 148, baseType: !263, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3523, file: !3503, line: 150, baseType: !3528, size: 64)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3503, line: 59, size: 64, elements: !3529)
!3529 = !{!3530, !3531, !3532}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3528, file: !3503, line: 61, baseType: !263, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3528, file: !3503, line: 63, baseType: !263, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3528, file: !3503, line: 65, baseType: !263, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3502, file: !3503, line: 153, baseType: !220, size: 64, offset: 1152)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3502, file: !3503, line: 154, baseType: !220, size: 64, offset: 1216)
!3535 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !3503, line: 156, baseType: !3536, size: 64, offset: 1280)
!3536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3502, file: !3503, line: 156, size: 64, elements: !3537)
!3537 = !{!3538, !3539, !3540}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3536, file: !3503, line: 158, baseType: !372, size: 16)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3536, file: !3503, line: 160, baseType: !263, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3536, file: !3503, line: 162, baseType: !3541, size: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3503, line: 69, size: 64, elements: !3542)
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3541, file: !3503, line: 71, baseType: !263, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3541, file: !3503, line: 73, baseType: !263, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3541, file: !3503, line: 75, baseType: !263, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3541, file: !3503, line: 77, baseType: !263, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3541, file: !3503, line: 80, baseType: !263, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3541, file: !3503, line: 83, baseType: !263, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3541, file: !3503, line: 86, baseType: !263, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3541, file: !3503, line: 88, baseType: !263, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3541, file: !3503, line: 93, baseType: !263, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3541, file: !3503, line: 100, baseType: !263, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3478, file: !3405, line: 96, baseType: !229, size: 32, offset: 1024)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3423, file: !3405, line: 352, baseType: !3555, size: 4608, align: 512)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3405, line: 333, size: 4608, align: 512, elements: !3556)
!3556 = !{!3557, !3558, !3565}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3555, file: !3405, line: 334, baseType: !3441, size: 4096, align: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3555, file: !3405, line: 335, baseType: !3559, size: 512, offset: 4096)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3405, line: 312, size: 512, elements: !3560)
!3560 = !{!3561, !3562, !3563}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3559, file: !3405, line: 313, baseType: !263, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3559, file: !3405, line: 314, baseType: !263, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3559, file: !3405, line: 315, baseType: !3564, size: 384, offset: 128)
!3564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 384, elements: !1969)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3555, file: !3405, line: 336, baseType: !3566, offset: 4608)
!3566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, elements: !1886)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3423, file: !3405, line: 353, baseType: !3568, size: 32768)
!3568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 32768, elements: !3569)
!3569 = !{!3570}
!3570 = !DISubrange(count: 4096)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3404, file: !3405, line: 484, baseType: !3410, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3404, file: !3405, line: 491, baseType: !3573, size: 128, offset: 256)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3405, line: 404, size: 128, elements: !3574)
!3574 = !{!3575, !3576, !3577}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3573, file: !3405, line: 424, baseType: !263, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3573, file: !3405, line: 432, baseType: !13, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3573, file: !3405, line: 440, baseType: !13, size: 32, offset: 96)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3404, file: !3405, line: 498, baseType: !3573, size: 128, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3404, file: !3405, line: 508, baseType: !3411, size: 33280, align: 512, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1479, file: !1480, line: 16, baseType: !1489, size: 192, offset: 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1479, file: !1480, line: 17, baseType: !357, size: 32, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !629, file: !20, line: 1240, baseType: !217, size: 64, offset: 6912)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !629, file: !20, line: 1243, baseType: !229, size: 32, offset: 6976)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !629, file: !20, line: 1245, baseType: !1236, size: 64, offset: 7040)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !629, file: !20, line: 1246, baseType: !1236, size: 64, offset: 7104)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !629, file: !20, line: 1248, baseType: !231, size: 32, offset: 7168)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !629, file: !20, line: 1249, baseType: !3588, size: 64, offset: 7232)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !629, file: !20, line: 1252, baseType: !3591, size: 256, offset: 7296)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !559)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !629, file: !20, line: 1253, baseType: !3593, size: 128, offset: 7552)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3594, line: 21, baseType: !3595)
!3594 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3594, line: 19, size: 128, elements: !3596)
!3596 = !{!3597}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3595, file: !3594, line: 20, baseType: !3598, size: 128)
!3598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 128, elements: !2815)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !629, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !629, file: !20, line: 1261, baseType: !738, size: 256, offset: 7744)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !629, file: !20, line: 1267, baseType: !268, size: 64, offset: 8000)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !629, file: !20, line: 1269, baseType: !575, size: 64, offset: 8064)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !629, file: !20, line: 1271, baseType: !3604, size: 448, offset: 8128)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1245, line: 63, size: 448, elements: !3605)
!3605 = !{!3606, !3611, !3612, !3613, !3614, !3615, !3616}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3604, file: !1245, line: 64, baseType: !3607, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!220, !3610, !1243}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3604, file: !1245, line: 66, baseType: !3607, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3604, file: !1245, line: 69, baseType: !439, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3604, file: !1245, line: 70, baseType: !115, size: 32, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3604, file: !1245, line: 71, baseType: !13, size: 32, offset: 224)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3604, file: !1245, line: 74, baseType: !239, size: 128, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3604, file: !1245, line: 85, baseType: !3617, size: 64, offset: 384)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !629, file: !20, line: 1274, baseType: !742, size: 64, offset: 8576)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !629, file: !20, line: 1280, baseType: !742, size: 64, offset: 8640)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !629, file: !20, line: 1283, baseType: !115, size: 32, offset: 8704)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !629, file: !20, line: 1286, baseType: !2549, size: 32, offset: 8736)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !629, file: !20, line: 1289, baseType: !1057, size: 64, offset: 8768)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !629, file: !20, line: 1290, baseType: !1104, size: 64, offset: 8832)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !629, file: !20, line: 1297, baseType: !2063, size: 64, offset: 8896)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !629, file: !20, line: 1304, baseType: !3626, size: 64, offset: 8960)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3627, line: 49, size: 64, elements: !3628)
!3627 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3628 = !{!3629}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3626, file: !3627, line: 50, baseType: !3630, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3627, line: 41, size: 512, align: 512, elements: !3632)
!3632 = !{!3633, !3634, !3639}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3631, file: !3627, line: 43, baseType: !337, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3631, file: !3627, line: 45, baseType: !3635, size: 192, offset: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3627, line: 29, size: 192, elements: !3636)
!3636 = !{!3637, !3638}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3635, file: !3627, line: 30, baseType: !239, size: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3635, file: !3627, line: 32, baseType: !439, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3631, file: !3627, line: 46, baseType: !439, size: 64, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !629, file: !20, line: 1305, baseType: !3626, size: 64, offset: 9024)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !629, file: !20, line: 1306, baseType: !957, size: 128, align: 64, offset: 9088)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !629, file: !20, line: 1307, baseType: !995, size: 256, offset: 9216)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !629, file: !20, line: 1309, baseType: !738, size: 256, offset: 9472)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !629, file: !20, line: 1314, baseType: !115, size: 32, offset: 9728)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !629, file: !20, line: 1317, baseType: !337, size: 32, align: 512, offset: 10240)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !629, file: !20, line: 1318, baseType: !239, size: 128, offset: 10304)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !629, file: !20, line: 1320, baseType: !337, size: 32, offset: 10432)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !629, file: !20, line: 1321, baseType: !239, size: 128, offset: 10496)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !623, file: !624, line: 73, baseType: !115, size: 32, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !623, file: !624, line: 74, baseType: !3651, size: 64, offset: 192)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1910, line: 42, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !577, file: !519, line: 141, baseType: !3655, size: 64, offset: 704)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!115, !1306, !818}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !577, file: !519, line: 142, baseType: !3659, size: 64, offset: 768)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!517, !517, !3662}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !518, file: !519, line: 96, baseType: !628, size: 64, offset: 832)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !518, file: !519, line: 97, baseType: !220, size: 64, offset: 896)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !518, file: !519, line: 98, baseType: !217, size: 64, offset: 960)
!3667 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !519, line: 100, baseType: !3668, size: 128, offset: 1024)
!3668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !519, line: 100, size: 128, elements: !3669)
!3669 = !{!3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3668, file: !519, line: 101, baseType: !239, size: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3668, file: !519, line: 102, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !518, file: !519, line: 104, baseType: !239, size: 128, offset: 1152)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !518, file: !519, line: 105, baseType: !239, size: 128, offset: 1280)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !518, file: !519, line: 113, baseType: !3676, size: 128, offset: 1408)
!3676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !519, line: 109, size: 128, elements: !3677)
!3677 = !{!3678, !3679, !3680}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3676, file: !519, line: 110, baseType: !981, size: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3676, file: !519, line: 111, baseType: !533, size: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3676, file: !519, line: 112, baseType: !957, size: 128, align: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !511, file: !20, line: 1968, baseType: !3682, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!268, !517, !482, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3687, line: 10, size: 128, elements: !3688)
!3687 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3688 = !{!3689, !3690}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3686, file: !3687, line: 11, baseType: !781, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3686, file: !3687, line: 12, baseType: !217, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !511, file: !20, line: 1969, baseType: !3692, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!115, !3651, !482, !115}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !511, file: !20, line: 1970, baseType: !3696, size: 64, offset: 192)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!505, !482, !115, !818}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !511, file: !20, line: 1972, baseType: !3700, size: 64, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!115, !517, !403, !115}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !511, file: !20, line: 1974, baseType: !3704, size: 64, offset: 320)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!115, !3651, !482, !517, !445, !818}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !511, file: !20, line: 1976, baseType: !3708, size: 64, offset: 384)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!115, !517, !482, !517}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !511, file: !20, line: 1977, baseType: !3712, size: 64, offset: 448)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!115, !482, !517}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !511, file: !20, line: 1978, baseType: !3716, size: 64, offset: 512)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!115, !3651, !482, !517, !268}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !511, file: !20, line: 1980, baseType: !3720, size: 64, offset: 576)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!115, !3651, !482, !517, !445}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !511, file: !20, line: 1982, baseType: !3712, size: 64, offset: 640)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !511, file: !20, line: 1983, baseType: !3725, size: 64, offset: 704)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!115, !3651, !482, !517, !445, !633}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !511, file: !20, line: 1985, baseType: !3729, size: 64, offset: 768)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!115, !3651, !482, !517, !482, !517, !13}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !511, file: !20, line: 1987, baseType: !3733, size: 64, offset: 832)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!115, !3651, !517, !3736}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3738)
!3738 = !{!3739, !3740, !3741, !3751, !3760, !3761, !3766, !3767, !3768}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3737, file: !20, line: 227, baseType: !13, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3737, file: !20, line: 228, baseType: !445, size: 16, offset: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3737, file: !20, line: 241, baseType: !3742, size: 32, offset: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3737, file: !20, line: 241, size: 32, elements: !3743)
!3743 = !{!3744, !3745}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3742, file: !20, line: 242, baseType: !488, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3742, file: !20, line: 243, baseType: !3746, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3747, line: 16, baseType: !3748)
!3747 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3747, line: 14, size: 32, elements: !3749)
!3749 = !{!3750}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3748, file: !3747, line: 15, baseType: !493, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, scope: !3737, file: !20, line: 245, baseType: !3752, size: 32, offset: 96)
!3752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3737, file: !20, line: 245, size: 32, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3752, file: !20, line: 246, baseType: !497, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3752, file: !20, line: 247, baseType: !3756, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3747, line: 20, baseType: !3757)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3747, line: 18, size: 32, elements: !3758)
!3758 = !{!3759}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3757, file: !3747, line: 19, baseType: !501, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3737, file: !20, line: 249, baseType: !638, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3737, file: !20, line: 250, baseType: !3762, size: 128, offset: 192)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1237, line: 13, size: 128, elements: !3763)
!3763 = !{!3764, !3765}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3762, file: !1237, line: 14, baseType: !1236, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3762, file: !1237, line: 15, baseType: !439, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3737, file: !20, line: 251, baseType: !3762, size: 128, offset: 320)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3737, file: !20, line: 252, baseType: !3762, size: 128, offset: 448)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3737, file: !20, line: 259, baseType: !1826, size: 64, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !511, file: !20, line: 1988, baseType: !3770, size: 64, offset: 896)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!115, !3651, !1306, !3773, !229, !13}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3775, line: 22, size: 1280, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3774, file: !3775, line: 23, baseType: !229, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3774, file: !3775, line: 24, baseType: !445, size: 16, offset: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3774, file: !3775, line: 25, baseType: !13, size: 32, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3774, file: !3775, line: 26, baseType: !1948, size: 32, offset: 96)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3774, file: !3775, line: 27, baseType: !263, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3774, file: !3775, line: 28, baseType: !263, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3774, file: !3775, line: 41, baseType: !263, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3774, file: !3775, line: 42, baseType: !633, size: 32, offset: 320)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3774, file: !3775, line: 43, baseType: !633, size: 32, offset: 352)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3774, file: !3775, line: 44, baseType: !488, size: 32, offset: 384)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3774, file: !3775, line: 45, baseType: !497, size: 32, offset: 416)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3774, file: !3775, line: 46, baseType: !638, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3774, file: !3775, line: 47, baseType: !3762, size: 128, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3774, file: !3775, line: 48, baseType: !3762, size: 128, offset: 640)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3774, file: !3775, line: 49, baseType: !3762, size: 128, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3774, file: !3775, line: 50, baseType: !3762, size: 128, offset: 896)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3774, file: !3775, line: 51, baseType: !263, size: 64, offset: 1024)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3774, file: !3775, line: 52, baseType: !263, size: 64, offset: 1088)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3774, file: !3775, line: 53, baseType: !229, size: 32, offset: 1152)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3774, file: !3775, line: 54, baseType: !229, size: 32, offset: 1184)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3774, file: !3775, line: 55, baseType: !263, size: 64, offset: 1216)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !511, file: !20, line: 1990, baseType: !3799, size: 64, offset: 960)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!435, !517, !403, !450}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !511, file: !20, line: 1991, baseType: !3803, size: 64, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!115, !482, !3806, !263, !263}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !511, file: !20, line: 1993, baseType: !3809, size: 64, offset: 1088)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!115, !482, !115}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !511, file: !20, line: 1994, baseType: !3813, size: 64, offset: 1152)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!115, !482, !517, !1826, !13, !445}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !511, file: !20, line: 1997, baseType: !3817, size: 64, offset: 1216)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!115, !3651, !482, !1826, !445}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !511, file: !20, line: 1999, baseType: !3821, size: 64, offset: 1280)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!505, !3651, !517, !115}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !511, file: !20, line: 2001, baseType: !3825, size: 64, offset: 1344)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!115, !3651, !517, !505, !115}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !511, file: !20, line: 2003, baseType: !3829, size: 64, offset: 1408)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!115, !3651, !517, !3832}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !511, file: !20, line: 2005, baseType: !3835, size: 64, offset: 1472)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!115, !517, !3832}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !511, file: !20, line: 2006, baseType: !3839, size: 64, offset: 1536)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!3842, !482}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3844)
!3844 = !{!3845, !3852}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3843, file: !20, line: 3193, baseType: !3846, size: 128)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3847, line: 296, size: 128, elements: !3848)
!3847 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3848 = !{!3849, !3850, !3851}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3846, file: !3847, line: 297, baseType: !337, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3846, file: !3847, line: 299, baseType: !1248, size: 32, offset: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3846, file: !3847, line: 300, baseType: !217, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3843, file: !20, line: 3194, baseType: !229, size: 32, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !483, file: !20, line: 655, baseType: !628, size: 64, offset: 448)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !483, file: !20, line: 656, baseType: !478, size: 64, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !483, file: !20, line: 659, baseType: !217, size: 64, offset: 576)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !483, file: !20, line: 663, baseType: !220, size: 64, offset: 640)
!3857 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !20, line: 671, baseType: !3858, size: 32, offset: 704)
!3858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !20, line: 671, size: 32, elements: !3859)
!3859 = !{!3860, !3862}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3858, file: !20, line: 672, baseType: !3861, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3858, file: !20, line: 673, baseType: !13, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !483, file: !20, line: 675, baseType: !633, size: 32, offset: 736)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !483, file: !20, line: 676, baseType: !638, size: 64, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !483, file: !20, line: 677, baseType: !3762, size: 128, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !483, file: !20, line: 678, baseType: !3762, size: 128, offset: 960)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !483, file: !20, line: 679, baseType: !3762, size: 128, offset: 1088)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !483, file: !20, line: 680, baseType: !337, size: 32, offset: 1216)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !483, file: !20, line: 681, baseType: !316, size: 16, offset: 1248)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !483, file: !20, line: 682, baseType: !365, size: 8, offset: 1264)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !483, file: !20, line: 683, baseType: !365, size: 8, offset: 1272)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !483, file: !20, line: 684, baseType: !1384, size: 64, offset: 1280)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !483, file: !20, line: 691, baseType: !220, size: 64, offset: 1344)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !483, file: !20, line: 692, baseType: !1396, size: 320, offset: 1408)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !483, file: !20, line: 694, baseType: !220, size: 64, offset: 1728)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !483, file: !20, line: 695, baseType: !220, size: 64, offset: 1792)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !483, file: !20, line: 697, baseType: !981, size: 128, offset: 1856)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !483, file: !20, line: 698, baseType: !239, size: 128, offset: 1984)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !483, file: !20, line: 707, baseType: !239, size: 128, offset: 2112)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !483, file: !20, line: 708, baseType: !239, size: 128, offset: 2240)
!3881 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !20, line: 709, baseType: !3882, size: 128, offset: 2368)
!3882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !20, line: 709, size: 128, elements: !3883)
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3882, file: !20, line: 710, baseType: !1104, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3882, file: !20, line: 711, baseType: !957, size: 128, align: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !483, file: !20, line: 713, baseType: !744, size: 64, offset: 2496)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !483, file: !20, line: 714, baseType: !744, size: 64, offset: 2560)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !483, file: !20, line: 715, baseType: !357, size: 32, offset: 2624)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !483, file: !20, line: 716, baseType: !357, size: 32, offset: 2656)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !483, file: !20, line: 717, baseType: !357, size: 32, offset: 2688)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !483, file: !20, line: 719, baseType: !357, size: 32, offset: 2720)
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !20, line: 721, baseType: !3893, size: 64, offset: 2752)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !20, line: 721, size: 64, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3893, file: !20, line: 722, baseType: !2094, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3893, file: !20, line: 723, baseType: !1127, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !483, file: !20, line: 725, baseType: !3898, size: 64, offset: 2816)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !483, file: !20, line: 726, baseType: !479, size: 1536, align: 64, offset: 2880)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !483, file: !20, line: 727, baseType: !239, size: 128, offset: 4416)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !20, line: 728, baseType: !3903, size: 64, offset: 4544)
!3903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !20, line: 728, size: 64, elements: !3904)
!3904 = !{!3905, !3906, !3909, !3910}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3903, file: !20, line: 729, baseType: !2499, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3903, file: !20, line: 730, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3903, file: !20, line: 731, baseType: !403, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3903, file: !20, line: 732, baseType: !13, size: 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !483, file: !20, line: 735, baseType: !231, size: 32, offset: 4608)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !483, file: !20, line: 738, baseType: !231, size: 32, offset: 4640)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !483, file: !20, line: 739, baseType: !3588, size: 64, offset: 4672)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !483, file: !20, line: 750, baseType: !217, size: 64, offset: 4736)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !479, file: !20, line: 474, baseType: !3846, size: 128, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !479, file: !20, line: 475, baseType: !1396, size: 320, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !479, file: !20, line: 476, baseType: !1248, size: 32, offset: 512)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !479, file: !20, line: 477, baseType: !357, size: 32, offset: 544)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !479, file: !20, line: 482, baseType: !1682, size: 128, offset: 576)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !479, file: !20, line: 483, baseType: !220, size: 64, offset: 704)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !479, file: !20, line: 484, baseType: !220, size: 64, offset: 768)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !479, file: !20, line: 485, baseType: !3923, size: 64, offset: 832)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3925)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !3926)
!3926 = !{!3927, !3931, !4001, !4005, !4009, !4015, !4019, !4023, !4028, !4032, !4036, !4040, !4041, !4045, !4049, !4053, !4058, !4062, !4069, !4070}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3925, file: !20, line: 405, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!115, !2287, !1139}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3925, file: !20, line: 406, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!115, !1826, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !3937)
!3937 = !{!3938, !3968, !3982}
!3938 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !44, line: 295, baseType: !3939, size: 512)
!3939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3936, file: !44, line: 295, size: 512, elements: !3940)
!3940 = !{!3941, !3967}
!3941 = !DIDerivedType(tag: DW_TAG_member, scope: !3939, file: !44, line: 296, baseType: !3942, size: 448)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3939, file: !44, line: 296, size: 448, elements: !3943)
!3943 = !{!3944, !3945, !3954, !3955, !3956, !3965, !3966}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3942, file: !44, line: 298, baseType: !220, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, scope: !3942, file: !44, line: 299, baseType: !3946, size: 128, offset: 64)
!3946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3942, file: !44, line: 299, size: 128, elements: !3947)
!3947 = !{!3948, !3949}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3946, file: !44, line: 300, baseType: !239, size: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !3946, file: !44, line: 302, baseType: !3950, size: 128)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3946, file: !44, line: 302, size: 128, elements: !3951)
!3951 = !{!3952, !3953}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3950, file: !44, line: 303, baseType: !217, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3950, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3942, file: !44, line: 310, baseType: !478, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3942, file: !44, line: 311, baseType: !220, size: 64, offset: 256)
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !3942, file: !44, line: 312, baseType: !3957, size: 64, offset: 320)
!3957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3942, file: !44, line: 312, size: 64, elements: !3958)
!3958 = !{!3959, !3960}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3957, file: !44, line: 313, baseType: !217, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3957, file: !44, line: 314, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !3962)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !3963)
!3963 = !{!3964}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3962, file: !44, line: 256, baseType: !220, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3942, file: !44, line: 316, baseType: !357, size: 32, offset: 384)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3942, file: !44, line: 317, baseType: !357, size: 32, offset: 416)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3939, file: !44, line: 323, baseType: !2288, size: 512, align: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !44, line: 325, baseType: !3969, size: 512, offset: 512)
!3969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3936, file: !44, line: 325, size: 512, elements: !3970)
!3970 = !{!3971, !3981}
!3971 = !DIDerivedType(tag: DW_TAG_member, scope: !3969, file: !44, line: 326, baseType: !3972, size: 320)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3969, file: !44, line: 326, size: 320, elements: !3973)
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979, !3980}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3972, file: !44, line: 327, baseType: !220, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3972, file: !44, line: 328, baseType: !220, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3972, file: !44, line: 329, baseType: !220, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3972, file: !44, line: 331, baseType: !357, size: 32, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3972, file: !44, line: 332, baseType: !357, size: 32, offset: 224)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3972, file: !44, line: 333, baseType: !357, size: 32, offset: 256)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3972, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3969, file: !44, line: 339, baseType: !2288, size: 512, align: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !44, line: 341, baseType: !3983, size: 512, offset: 1024)
!3983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3936, file: !44, line: 341, size: 512, elements: !3984)
!3984 = !{!3985, !3994, !4000}
!3985 = !DIDerivedType(tag: DW_TAG_member, scope: !3983, file: !44, line: 342, baseType: !3986, size: 384)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3983, file: !44, line: 342, size: 384, elements: !3987)
!3987 = !{!3988, !3989, !3990, !3991, !3992, !3993}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3986, file: !44, line: 343, baseType: !220, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3986, file: !44, line: 344, baseType: !220, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3986, file: !44, line: 346, baseType: !217, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3986, file: !44, line: 347, baseType: !217, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3986, file: !44, line: 348, baseType: !217, size: 64, offset: 256)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3986, file: !44, line: 349, baseType: !217, size: 64, offset: 320)
!3994 = !DIDerivedType(tag: DW_TAG_member, scope: !3983, file: !44, line: 352, baseType: !3995, size: 256)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3983, file: !44, line: 352, size: 256, elements: !3996)
!3996 = !{!3997, !3998, !3999}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3995, file: !44, line: 353, baseType: !220, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3995, file: !44, line: 354, baseType: !220, size: 64, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3995, file: !44, line: 356, baseType: !239, size: 128, offset: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3983, file: !44, line: 359, baseType: !2288, size: 512, align: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3925, file: !20, line: 409, baseType: !4002, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!115, !478, !1139}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3925, file: !20, line: 412, baseType: !4006, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!818, !478, !3935}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3925, file: !20, line: 414, baseType: !4010, size: 64, offset: 256)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !4013}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3925, file: !20, line: 416, baseType: !4016, size: 64, offset: 320)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!115, !1826, !478, !638, !13, !3338, !2514}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3925, file: !20, line: 419, baseType: !4020, size: 64, offset: 384)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!115, !1826, !478, !638, !13, !13, !2287, !217}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3925, file: !20, line: 424, baseType: !4024, size: 64, offset: 448)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!4027, !478, !4027}
!4027 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !219, line: 131, baseType: !263)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3925, file: !20, line: 425, baseType: !4029, size: 64, offset: 512)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{null, !3935, !450, !450}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3925, file: !20, line: 426, baseType: !4033, size: 64, offset: 576)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!818, !3935, !1248}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3925, file: !20, line: 427, baseType: !4037, size: 64, offset: 640)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !3935}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3925, file: !20, line: 428, baseType: !2113, size: 64, offset: 704)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3925, file: !20, line: 433, baseType: !4042, size: 64, offset: 768)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!115, !478, !3935, !3935, !80}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3925, file: !20, line: 435, baseType: !4046, size: 64, offset: 832)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!115, !3935}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3925, file: !20, line: 436, baseType: !4050, size: 64, offset: 896)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!818, !3935, !450, !450}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3925, file: !20, line: 438, baseType: !4054, size: 64, offset: 960)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{null, !3935, !4057, !4057}
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3925, file: !20, line: 439, baseType: !4059, size: 64, offset: 1024)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!115, !478, !2287}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3925, file: !20, line: 442, baseType: !4063, size: 64, offset: 1088)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!115, !4066, !1826, !4068}
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3925, file: !20, line: 444, baseType: !2506, size: 64, offset: 1152)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3925, file: !20, line: 445, baseType: !4071, size: 64, offset: 1216)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!115, !2116, !2138}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !20, line: 486, baseType: !220, size: 64, offset: 896)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !479, file: !20, line: 487, baseType: !1396, size: 320, offset: 960)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !479, file: !20, line: 488, baseType: !2549, size: 32, offset: 1280)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !479, file: !20, line: 489, baseType: !337, size: 32, offset: 1312)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !479, file: !20, line: 490, baseType: !239, size: 128, offset: 1344)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !479, file: !20, line: 491, baseType: !217, size: 64, offset: 1472)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !469, file: !429, line: 180, baseType: !4081, size: 64, offset: 320)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!435, !1826, !330, !468, !403, !638, !450}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !469, file: !429, line: 182, baseType: !4081, size: 64, offset: 384)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !469, file: !429, line: 184, baseType: !4086, size: 64, offset: 448)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!115, !1826, !330, !468, !2178}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !457, file: !429, line: 90, baseType: !4090, size: 64, offset: 192)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !457, file: !429, line: 91, baseType: !4092, size: 64, offset: 256)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !419, file: !325, line: 120, baseType: !4094, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!4097, !386}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4099)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !4100)
!4100 = !{!4101, !4102, !4106, !4110, !4116, !4120}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4099, file: !88, line: 40, baseType: !87, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4099, file: !88, line: 41, baseType: !4103, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!818}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4099, file: !88, line: 42, baseType: !4107, size: 64, offset: 128)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!217}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4099, file: !88, line: 43, baseType: !4111, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!2638, !4114}
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4099, file: !88, line: 44, baseType: !4117, size: 64, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!2638}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4099, file: !88, line: 45, baseType: !781, size: 64, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !419, file: !325, line: 121, baseType: !4122, size: 64, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!2638, !386}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !419, file: !325, line: 122, baseType: !4126, size: 64, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !386, !4129, !4130}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !324, file: !325, line: 70, baseType: !4132, size: 64, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !653, line: 190, size: 1152, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4226, !4227, !4228, !4229, !4230, !4233}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4133, file: !653, line: 191, baseType: !357, size: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4133, file: !653, line: 192, baseType: !357, size: 32, offset: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4133, file: !653, line: 202, baseType: !4132, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4133, file: !653, line: 203, baseType: !268, size: 64, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4133, file: !653, line: 205, baseType: !850, size: 192, align: 64, offset: 192)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4133, file: !653, line: 207, baseType: !2638, size: 64, offset: 384)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4133, file: !653, line: 208, baseType: !13, size: 32, offset: 448)
!4142 = !DIDerivedType(tag: DW_TAG_member, scope: !4133, file: !653, line: 209, baseType: !4143, size: 256, offset: 512)
!4143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4133, file: !653, line: 209, size: 256, elements: !4144)
!4144 = !{!4145, !4154, !4158}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4143, file: !653, line: 210, baseType: !4146, size: 256)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !653, line: 153, size: 256, elements: !4147)
!4147 = !{!4148, !4149, !4150, !4153}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4146, file: !653, line: 154, baseType: !220, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4146, file: !653, line: 156, baseType: !1685, size: 64, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4146, file: !653, line: 162, baseType: !4151, size: 64, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !653, line: 162, flags: DIFlagFwdDecl)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4146, file: !653, line: 167, baseType: !220, size: 64, offset: 192)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4143, file: !653, line: 211, baseType: !4155, size: 64)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !653, line: 170, size: 64, elements: !4156)
!4156 = !{!4157}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4155, file: !653, line: 171, baseType: !4132, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4143, file: !653, line: 212, baseType: !4159, size: 256)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !653, line: 174, size: 256, elements: !4160)
!4160 = !{!4161, !4221, !4224, !4225}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4159, file: !653, line: 175, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4164)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !653, line: 271, size: 768, elements: !4165)
!4165 = !{!4166, !4186, !4190, !4194, !4198, !4202, !4206, !4210, !4211, !4212, !4213, !4217}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4164, file: !653, line: 276, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!115, !4170}
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !653, line: 251, size: 1216, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4171, file: !653, line: 253, baseType: !4132, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4171, file: !653, line: 254, baseType: !1826, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4171, file: !653, line: 255, baseType: !1176, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4171, file: !653, line: 256, baseType: !217, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4171, file: !653, line: 259, baseType: !738, size: 256, offset: 256)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4171, file: !653, line: 260, baseType: !738, size: 256, offset: 512)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4171, file: !653, line: 261, baseType: !115, size: 32, offset: 768)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4171, file: !653, line: 262, baseType: !239, size: 128, offset: 832)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4171, file: !653, line: 263, baseType: !403, size: 64, offset: 960)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4171, file: !653, line: 265, baseType: !450, size: 64, offset: 1024)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4171, file: !653, line: 266, baseType: !818, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4171, file: !653, line: 267, baseType: !818, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4171, file: !653, line: 268, baseType: !2223, size: 64, offset: 1152)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4164, file: !653, line: 277, baseType: !4187, size: 64, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{null, !4170}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4164, file: !653, line: 290, baseType: !4191, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!115, !1176, !217}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4164, file: !653, line: 292, baseType: !4195, size: 64, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!217, !1176, !2107}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4164, file: !653, line: 293, baseType: !4199, size: 64, offset: 256)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!217, !1176, !217, !2107}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4164, file: !653, line: 294, baseType: !4203, size: 64, offset: 320)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{null, !1176, !217}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4164, file: !653, line: 296, baseType: !4207, size: 64, offset: 384)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!435, !4170, !403, !450, !638}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4164, file: !653, line: 306, baseType: !450, size: 64, offset: 448)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4164, file: !653, line: 313, baseType: !818, size: 8, offset: 512)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4164, file: !653, line: 314, baseType: !4207, size: 64, offset: 576)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4164, file: !653, line: 317, baseType: !4214, size: 64, offset: 640)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!2165, !4170, !2167}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4164, file: !653, line: 320, baseType: !4218, size: 64, offset: 704)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!115, !4170, !2178}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4159, file: !653, line: 176, baseType: !4222, size: 64, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !653, line: 35, flags: DIFlagFwdDecl)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4159, file: !653, line: 177, baseType: !638, size: 64, offset: 128)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4159, file: !653, line: 178, baseType: !4132, size: 64, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4133, file: !653, line: 215, baseType: !217, size: 64, offset: 768)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4133, file: !653, line: 221, baseType: !263, size: 64, offset: 832)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4133, file: !653, line: 223, baseType: !316, size: 16, offset: 896)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4133, file: !653, line: 224, baseType: !445, size: 16, offset: 912)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4133, file: !653, line: 225, baseType: !4231, size: 64, offset: 960)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !653, line: 36, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4133, file: !653, line: 227, baseType: !957, size: 128, align: 64, offset: 1024)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !324, file: !325, line: 71, baseType: !4235, size: 32, offset: 448)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4236, line: 19, size: 32, elements: !4237)
!4236 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4237 = !{!4238}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4235, file: !4236, line: 20, baseType: !1516, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !324, file: !325, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !324, file: !325, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !324, file: !325, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !324, file: !325, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !324, file: !325, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !321, file: !100, line: 707, baseType: !320, size: 64, offset: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !321, file: !100, line: 709, baseType: !4246, size: 64, offset: 576)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !321, file: !100, line: 711, baseType: !268, size: 64, offset: 640)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !321, file: !100, line: 712, baseType: !4250, size: 64, offset: 704)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4252)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4262, !4267, !4271}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4252, file: !100, line: 90, baseType: !268, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4252, file: !100, line: 91, baseType: !454, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4252, file: !100, line: 92, baseType: !4257, size: 64, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!115, !4260, !398}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4252, file: !100, line: 93, baseType: !4263, size: 64, offset: 192)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!403, !4260, !4266, !4129, !4130}
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4252, file: !100, line: 95, baseType: !4268, size: 64, offset: 256)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !320}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4252, file: !100, line: 97, baseType: !4272, size: 64, offset: 320)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4275)
!4275 = !{!4276, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4274, file: !107, line: 287, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!115, !320}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4274, file: !107, line: 288, baseType: !4268, size: 64, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4274, file: !107, line: 289, baseType: !4277, size: 64, offset: 128)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4274, file: !107, line: 290, baseType: !4277, size: 64, offset: 192)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4274, file: !107, line: 291, baseType: !4277, size: 64, offset: 256)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4274, file: !107, line: 292, baseType: !4277, size: 64, offset: 320)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4274, file: !107, line: 293, baseType: !4277, size: 64, offset: 384)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4274, file: !107, line: 294, baseType: !4277, size: 64, offset: 448)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4274, file: !107, line: 295, baseType: !4277, size: 64, offset: 512)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4274, file: !107, line: 296, baseType: !4277, size: 64, offset: 576)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4274, file: !107, line: 297, baseType: !4277, size: 64, offset: 640)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4274, file: !107, line: 298, baseType: !4277, size: 64, offset: 704)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4274, file: !107, line: 299, baseType: !4277, size: 64, offset: 768)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4274, file: !107, line: 300, baseType: !4277, size: 64, offset: 832)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4274, file: !107, line: 301, baseType: !4277, size: 64, offset: 896)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4274, file: !107, line: 302, baseType: !4277, size: 64, offset: 960)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4274, file: !107, line: 303, baseType: !4277, size: 64, offset: 1024)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4274, file: !107, line: 304, baseType: !4277, size: 64, offset: 1088)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4274, file: !107, line: 305, baseType: !4277, size: 64, offset: 1152)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4274, file: !107, line: 306, baseType: !4277, size: 64, offset: 1216)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4274, file: !107, line: 307, baseType: !4277, size: 64, offset: 1280)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4274, file: !107, line: 308, baseType: !4277, size: 64, offset: 1344)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4274, file: !107, line: 309, baseType: !4277, size: 64, offset: 1408)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !321, file: !100, line: 714, baseType: !4303, size: 64, offset: 768)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4305)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4306, line: 80, size: 1344, elements: !4307)
!4306 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4307 = !{!4308, !4309, !4310, !4311, !4312, !4313, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4386}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4305, file: !4306, line: 81, baseType: !268, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4305, file: !4306, line: 82, baseType: !268, size: 64, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4305, file: !4306, line: 83, baseType: !454, size: 64, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4305, file: !4306, line: 84, baseType: !454, size: 64, offset: 192)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4305, file: !4306, line: 85, baseType: !454, size: 64, offset: 256)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4305, file: !4306, line: 87, baseType: !4314, size: 64, offset: 320)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!115, !320, !4317}
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4323, !4324, !4325, !4326, !4339, !4349, !4350, !4351, !4352, !4353, !4361, !4362, !4363, !4364, !4365, !4366}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4318, file: !94, line: 97, baseType: !268, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4318, file: !94, line: 98, baseType: !4303, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4318, file: !94, line: 100, baseType: !667, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4318, file: !94, line: 101, baseType: !268, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4318, file: !94, line: 103, baseType: !818, size: 8, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4318, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4318, file: !94, line: 106, baseType: !4327, size: 64, offset: 320)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4329)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4330, line: 282, size: 1600, elements: !4331)
!4330 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4331 = !{!4332, !4333, !4334, !4338}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4329, file: !4330, line: 283, baseType: !3591, size: 256)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4329, file: !4330, line: 284, baseType: !3591, size: 256, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4329, file: !4330, line: 285, baseType: !4335, size: 1024, offset: 512)
!4335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4336)
!4336 = !{!4337}
!4337 = !DISubrange(count: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4329, file: !4330, line: 286, baseType: !2638, size: 64, offset: 1536)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4318, file: !94, line: 107, baseType: !4340, size: 64, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4342)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4330, line: 217, size: 256, elements: !4343)
!4343 = !{!4344, !4345, !4347, !4348}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4342, file: !4330, line: 218, baseType: !3598, size: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4342, file: !4330, line: 219, baseType: !4346, size: 64, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4330, line: 15, baseType: !220)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4342, file: !4330, line: 220, baseType: !231, size: 32, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4342, file: !4330, line: 221, baseType: !231, size: 32, offset: 224)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4318, file: !94, line: 109, baseType: !4277, size: 64, offset: 448)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4318, file: !94, line: 110, baseType: !4268, size: 64, offset: 512)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4318, file: !94, line: 111, baseType: !4277, size: 64, offset: 576)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4318, file: !94, line: 112, baseType: !4268, size: 64, offset: 640)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4318, file: !94, line: 113, baseType: !4354, size: 64, offset: 704)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!115, !320, !4357}
!4357 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4358)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4359)
!4359 = !{!4360}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4358, file: !107, line: 59, baseType: !115, size: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4318, file: !94, line: 114, baseType: !4277, size: 64, offset: 768)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4318, file: !94, line: 115, baseType: !454, size: 64, offset: 832)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4318, file: !94, line: 116, baseType: !454, size: 64, offset: 896)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4318, file: !94, line: 118, baseType: !4272, size: 64, offset: 960)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4318, file: !94, line: 119, baseType: !4268, size: 64, offset: 1024)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4318, file: !94, line: 121, baseType: !4367, size: 64, offset: 1088)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4305, file: !4306, line: 88, baseType: !4257, size: 64, offset: 384)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4305, file: !4306, line: 89, baseType: !4277, size: 64, offset: 448)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4305, file: !4306, line: 90, baseType: !4268, size: 64, offset: 512)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4305, file: !4306, line: 91, baseType: !4268, size: 64, offset: 576)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4305, file: !4306, line: 92, baseType: !4268, size: 64, offset: 640)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4305, file: !4306, line: 94, baseType: !4277, size: 64, offset: 704)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4305, file: !4306, line: 95, baseType: !4277, size: 64, offset: 768)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4305, file: !4306, line: 97, baseType: !4354, size: 64, offset: 832)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4305, file: !4306, line: 98, baseType: !4277, size: 64, offset: 896)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4305, file: !4306, line: 100, baseType: !4277, size: 64, offset: 960)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4305, file: !4306, line: 102, baseType: !4277, size: 64, offset: 1024)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4305, file: !4306, line: 103, baseType: !4268, size: 64, offset: 1088)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4305, file: !4306, line: 105, baseType: !4272, size: 64, offset: 1152)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4305, file: !4306, line: 107, baseType: !4383, size: 64, offset: 1216)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4385)
!4385 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4306, line: 107, flags: DIFlagFwdDecl)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4305, file: !4306, line: 109, baseType: !818, size: 8, offset: 1280)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !321, file: !100, line: 715, baseType: !4317, size: 64, offset: 832)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !321, file: !100, line: 717, baseType: !217, size: 64, offset: 896)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !321, file: !100, line: 719, baseType: !217, size: 64, offset: 960)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !321, file: !100, line: 721, baseType: !738, size: 256, offset: 1024)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !321, file: !100, line: 725, baseType: !4392, size: 448, offset: 1280)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4393)
!4393 = !{!4394, !4395, !4396, !4397}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4392, file: !100, line: 518, baseType: !239, size: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4392, file: !100, line: 519, baseType: !239, size: 128, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4392, file: !100, line: 520, baseType: !239, size: 128, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4392, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !321, file: !100, line: 726, baseType: !4399, size: 2496, offset: 1728)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4483, !4487}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4399, file: !107, line: 664, baseType: !4357, size: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4399, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4399, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4399, file: !107, line: 667, baseType: !818, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4399, file: !107, line: 668, baseType: !818, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4399, file: !107, line: 669, baseType: !818, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4399, file: !107, line: 670, baseType: !818, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4399, file: !107, line: 671, baseType: !818, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4399, file: !107, line: 672, baseType: !818, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4399, file: !107, line: 673, baseType: !818, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4399, file: !107, line: 674, baseType: !818, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4399, file: !107, line: 675, baseType: !229, size: 32, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4399, file: !107, line: 676, baseType: !337, size: 32, offset: 96)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4399, file: !107, line: 678, baseType: !239, size: 128, offset: 128)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4399, file: !107, line: 679, baseType: !687, size: 256, offset: 256)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4399, file: !107, line: 680, baseType: !4417, size: 64, offset: 512)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4419, line: 43, size: 1536, elements: !4420)
!4419 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4418, file: !4419, line: 44, baseType: !268, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4418, file: !4419, line: 45, baseType: !115, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4418, file: !4419, line: 46, baseType: !239, size: 128, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4418, file: !4419, line: 47, baseType: !337, size: 32, offset: 256)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4418, file: !4419, line: 48, baseType: !4426, size: 64, offset: 320)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4418, file: !4419, line: 49, baseType: !977, size: 320, offset: 384)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4418, file: !4419, line: 50, baseType: !220, size: 64, offset: 704)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4418, file: !4419, line: 51, baseType: !1631, size: 64, offset: 768)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4418, file: !4419, line: 52, baseType: !1631, size: 64, offset: 832)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4418, file: !4419, line: 53, baseType: !1631, size: 64, offset: 896)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4418, file: !4419, line: 54, baseType: !1631, size: 64, offset: 960)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4418, file: !4419, line: 55, baseType: !1631, size: 64, offset: 1024)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4418, file: !4419, line: 56, baseType: !220, size: 64, offset: 1088)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4418, file: !4419, line: 57, baseType: !220, size: 64, offset: 1152)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4418, file: !4419, line: 58, baseType: !220, size: 64, offset: 1216)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4418, file: !4419, line: 59, baseType: !220, size: 64, offset: 1280)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4418, file: !4419, line: 60, baseType: !220, size: 64, offset: 1344)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4418, file: !4419, line: 61, baseType: !320, size: 64, offset: 1408)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4418, file: !4419, line: 62, baseType: !818, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4418, file: !4419, line: 63, baseType: !818, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4399, file: !107, line: 681, baseType: !818, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4399, file: !107, line: 682, baseType: !818, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4399, file: !107, line: 683, baseType: !818, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4399, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4399, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4399, file: !107, line: 690, baseType: !1623, size: 512, offset: 640)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4399, file: !107, line: 691, baseType: !263, size: 64, offset: 1152)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4399, file: !107, line: 692, baseType: !995, size: 256, offset: 1216)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4399, file: !107, line: 693, baseType: !1489, size: 192, offset: 1472)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4399, file: !107, line: 694, baseType: !4426, size: 64, offset: 1664)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4399, file: !107, line: 695, baseType: !357, size: 32, offset: 1728)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4399, file: !107, line: 696, baseType: !357, size: 32, offset: 1760)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4399, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4399, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4399, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4399, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4399, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4399, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4399, file: !107, line: 703, baseType: !818, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4399, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4399, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4399, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4399, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4399, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4399, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4399, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4399, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4399, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4399, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4399, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4399, file: !107, line: 715, baseType: !263, size: 64, offset: 2048)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4399, file: !107, line: 716, baseType: !263, size: 64, offset: 2112)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4399, file: !107, line: 717, baseType: !263, size: 64, offset: 2176)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4399, file: !107, line: 718, baseType: !263, size: 64, offset: 2240)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4399, file: !107, line: 720, baseType: !4478, size: 64, offset: 2304)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4480)
!4480 = !{!4481, !4482}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4479, file: !107, line: 633, baseType: !337, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4479, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4399, file: !107, line: 721, baseType: !4484, size: 64, offset: 2368)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{null, !320, !734}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4399, file: !107, line: 722, baseType: !4488, size: 64, offset: 2432)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !321, file: !100, line: 727, baseType: !4491, size: 64, offset: 4224)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4493)
!4493 = !{!4494, !4495, !4496, !4500, !4501, !4502}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4492, file: !107, line: 743, baseType: !4274, size: 1472)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4492, file: !107, line: 744, baseType: !4277, size: 64, offset: 1472)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4492, file: !107, line: 745, baseType: !4497, size: 64, offset: 1536)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{null, !320, !818}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4492, file: !107, line: 746, baseType: !4277, size: 64, offset: 1600)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4492, file: !107, line: 747, baseType: !4268, size: 64, offset: 1664)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4492, file: !107, line: 748, baseType: !4268, size: 64, offset: 1728)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !321, file: !100, line: 736, baseType: !4504, size: 128, offset: 4288)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4505)
!4505 = !{!4506, !4510}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4504, file: !100, line: 531, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4509, line: 13, flags: DIFlagFwdDecl)
!4509 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4504, file: !100, line: 532, baseType: !4511, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !321, file: !100, line: 738, baseType: !4514, size: 64, offset: 4416)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4516)
!4516 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !321, file: !100, line: 740, baseType: !4518, size: 64, offset: 4480)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !321, file: !100, line: 741, baseType: !263, size: 64, offset: 4544)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !321, file: !100, line: 746, baseType: !263, size: 64, offset: 4608)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !321, file: !100, line: 747, baseType: !4522, size: 64, offset: 4672)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4524)
!4524 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !321, file: !100, line: 749, baseType: !4526, size: 64, offset: 4736)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !4528)
!4528 = !{!4529, !4530, !4531}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4527, file: !100, line: 433, baseType: !13, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4527, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4527, file: !100, line: 435, baseType: !220, size: 64, offset: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !321, file: !100, line: 751, baseType: !239, size: 128, offset: 4800)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !321, file: !100, line: 762, baseType: !4534, size: 64, offset: 4928)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !321, file: !100, line: 770, baseType: !4537, offset: 4992)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4538, line: 5, elements: !1024)
!4538 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !321, file: !100, line: 772, baseType: !4540, size: 64, offset: 4992)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4542, line: 18, flags: DIFlagFwdDecl)
!4542 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !321, file: !100, line: 773, baseType: !4544, size: 64, offset: 5056)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4546, line: 41, size: 512, elements: !4547)
!4546 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4547 = !{!4548, !4549, !4642, !4643, !4644, !4645}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4545, file: !4546, line: 42, baseType: !4544, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4545, file: !4546, line: 43, baseType: !4550, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4552)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4546, line: 125, size: 1408, elements: !4553)
!4553 = !{!4554, !4558, !4562, !4568, !4572, !4573, !4577, !4581, !4585, !4589, !4593, !4594, !4598, !4602, !4606, !4617, !4618, !4619, !4620, !4630, !4634, !4638}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4552, file: !4546, line: 126, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!4544, !4544}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4552, file: !4546, line: 127, baseType: !4559, size: 64, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{null, !4544}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4552, file: !4546, line: 128, baseType: !4563, size: 64, offset: 128)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!818, !4566}
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4545)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4552, file: !4546, line: 129, baseType: !4569, size: 64, offset: 192)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!2638, !4566, !4260}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4552, file: !4546, line: 131, baseType: !4563, size: 64, offset: 256)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4552, file: !4546, line: 133, baseType: !4574, size: 64, offset: 320)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!122, !4566}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4552, file: !4546, line: 134, baseType: !4578, size: 64, offset: 384)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!818, !4566, !268}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4552, file: !4546, line: 136, baseType: !4582, size: 64, offset: 448)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!115, !4566, !268, !13, !217, !450}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4552, file: !4546, line: 141, baseType: !4586, size: 64, offset: 512)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!115, !4566, !268, !1072, !450}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4552, file: !4546, line: 144, baseType: !4590, size: 64, offset: 576)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!268, !4566}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4552, file: !4546, line: 145, baseType: !4590, size: 64, offset: 640)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4552, file: !4546, line: 146, baseType: !4595, size: 64, offset: 704)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!4544, !4566}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4552, file: !4546, line: 148, baseType: !4599, size: 64, offset: 768)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!4544, !4566, !4544}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4552, file: !4546, line: 151, baseType: !4603, size: 64, offset: 832)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!4544, !4566, !268}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4552, file: !4546, line: 153, baseType: !4607, size: 64, offset: 896)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!115, !4566, !268, !268, !13, !13, !4610}
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4546, line: 94, size: 640, elements: !4612)
!4612 = !{!4613, !4614, !4615}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4611, file: !4546, line: 95, baseType: !4544, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4611, file: !4546, line: 96, baseType: !13, size: 32, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4611, file: !4546, line: 97, baseType: !4616, size: 512, offset: 128)
!4616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 512, elements: !1666)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4552, file: !4546, line: 158, baseType: !4599, size: 64, offset: 960)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4552, file: !4546, line: 161, baseType: !4595, size: 64, offset: 1024)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4552, file: !4546, line: 163, baseType: !4555, size: 64, offset: 1088)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4552, file: !4546, line: 164, baseType: !4621, size: 64, offset: 1152)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!115, !4566, !4624}
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4546, line: 73, size: 128, elements: !4626)
!4626 = !{!4627, !4628, !4629}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4625, file: !4546, line: 74, baseType: !13, size: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4625, file: !4546, line: 75, baseType: !13, size: 32, offset: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4625, file: !4546, line: 76, baseType: !4566, size: 64, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4552, file: !4546, line: 166, baseType: !4631, size: 64, offset: 1216)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!217, !4544, !115}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4552, file: !4546, line: 167, baseType: !4635, size: 64, offset: 1280)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!115, !4566, !13}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4552, file: !4546, line: 168, baseType: !4639, size: 64, offset: 1344)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!115, !4544}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4545, file: !4546, line: 44, baseType: !320, size: 64, offset: 128)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4545, file: !4546, line: 45, baseType: !239, size: 128, offset: 192)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4545, file: !4546, line: 46, baseType: !239, size: 128, offset: 320)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4545, file: !4546, line: 47, baseType: !365, size: 8, offset: 448)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !321, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !321, file: !100, line: 778, baseType: !633, size: 32, offset: 5152)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !321, file: !100, line: 779, baseType: !229, size: 32, offset: 5184)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !321, file: !100, line: 781, baseType: !337, size: 32, offset: 5216)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !321, file: !100, line: 782, baseType: !239, size: 128, offset: 5248)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !321, file: !100, line: 784, baseType: !4652, size: 64, offset: 5376)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4654)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4655, line: 52, size: 768, elements: !4656)
!4655 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4656 = !{!4657, !4658, !4659, !4660, !4661, !4665, !4669, !4670, !4671, !4672, !4676, !4680}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4654, file: !4655, line: 53, baseType: !268, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4654, file: !4655, line: 55, baseType: !454, size: 64, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4654, file: !4655, line: 56, baseType: !454, size: 64, offset: 128)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4654, file: !4655, line: 58, baseType: !4257, size: 64, offset: 192)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4654, file: !4655, line: 59, baseType: !4662, size: 64, offset: 256)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!403, !4260, !4266}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4654, file: !4655, line: 61, baseType: !4666, size: 64, offset: 320)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{null, !4652}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4654, file: !4655, line: 62, baseType: !4268, size: 64, offset: 384)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4654, file: !4655, line: 64, baseType: !4277, size: 64, offset: 448)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4654, file: !4655, line: 66, baseType: !4097, size: 64, offset: 512)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4654, file: !4655, line: 67, baseType: !4673, size: 64, offset: 576)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!2638, !4260}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4654, file: !4655, line: 69, baseType: !4677, size: 64, offset: 640)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{null, !4260, !4129, !4130}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4654, file: !4655, line: 71, baseType: !4272, size: 64, offset: 704)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !321, file: !100, line: 785, baseType: !454, size: 64, offset: 5440)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !321, file: !100, line: 787, baseType: !4268, size: 64, offset: 5504)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !321, file: !100, line: 788, baseType: !4684, size: 64, offset: 5568)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !321, file: !100, line: 789, baseType: !4687, size: 64, offset: 5632)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !321, file: !100, line: 791, baseType: !4690, size: 64, offset: 5696)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !4692)
!4692 = !{!4693, !4694, !4695, !4696, !4697}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4691, file: !100, line: 598, baseType: !128, size: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4691, file: !100, line: 599, baseType: !137, size: 32, offset: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4691, file: !100, line: 600, baseType: !142, size: 32, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4691, file: !100, line: 601, baseType: !818, size: 8, offset: 96)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4691, file: !100, line: 602, baseType: !818, size: 8, offset: 104)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !321, file: !100, line: 793, baseType: !147, size: 32, offset: 5760)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !321, file: !100, line: 795, baseType: !818, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !321, file: !100, line: 796, baseType: !818, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !321, file: !100, line: 797, baseType: !818, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !321, file: !100, line: 798, baseType: !818, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !321, file: !100, line: 799, baseType: !818, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !246, file: !236, line: 676, baseType: !321, size: 5824, offset: 2240)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !246, file: !236, line: 677, baseType: !468, size: 64, offset: 8064)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !246, file: !236, line: 678, baseType: !468, size: 64, offset: 8128)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !246, file: !236, line: 679, baseType: !13, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !246, file: !236, line: 680, baseType: !13, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !235, file: !236, line: 325, baseType: !245, size: 64, offset: 192)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !235, file: !236, line: 327, baseType: !217, size: 64, offset: 256)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !235, file: !236, line: 328, baseType: !306, size: 64, offset: 320)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !235, file: !236, line: 329, baseType: !4713, size: 64, offset: 384)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !236, line: 76, size: 832, elements: !4715)
!4715 = !{!4716, !4717, !4718, !4721, !4722}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4714, file: !236, line: 77, baseType: !245, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4714, file: !236, line: 78, baseType: !239, size: 128, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4714, file: !236, line: 79, baseType: !4719, size: 64, offset: 192)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !236, line: 79, flags: DIFlagFwdDecl)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4714, file: !236, line: 80, baseType: !310, size: 8, offset: 256)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4714, file: !236, line: 81, baseType: !324, size: 512, offset: 320)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !235, file: !236, line: 331, baseType: !13, size: 32, offset: 448)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !235, file: !236, line: 332, baseType: !316, size: 16, offset: 480)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !235, file: !236, line: 333, baseType: !316, size: 16, offset: 496)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !235, file: !236, line: 334, baseType: !316, size: 16, offset: 512)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !235, file: !236, line: 335, baseType: !316, size: 16, offset: 528)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !235, file: !236, line: 336, baseType: !13, size: 32, offset: 544)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !235, file: !236, line: 337, baseType: !365, size: 8, offset: 576)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !235, file: !236, line: 338, baseType: !365, size: 8, offset: 584)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !235, file: !236, line: 344, baseType: !4732, size: 64, offset: 640)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !236, line: 319, flags: DIFlagFwdDecl)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !235, file: !236, line: 345, baseType: !234, size: 64, offset: 704)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !235, file: !236, line: 347, baseType: !229, size: 32, offset: 768)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !235, file: !236, line: 348, baseType: !365, size: 8, offset: 800)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !235, file: !236, line: 349, baseType: !365, size: 8, offset: 808)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !235, file: !236, line: 350, baseType: !365, size: 8, offset: 816)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !235, file: !236, line: 351, baseType: !365, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !235, file: !236, line: 352, baseType: !365, size: 8, offset: 832)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !235, file: !236, line: 353, baseType: !365, size: 8, offset: 840)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !235, file: !236, line: 354, baseType: !372, size: 16, offset: 848)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !235, file: !236, line: 355, baseType: !233, size: 64, offset: 896)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !235, file: !236, line: 357, baseType: !4745, size: 64, offset: 960)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !236, line: 918, size: 2368, elements: !4747)
!4747 = !{!4748, !4749, !4750, !4763, !4767, !4771, !4775, !4779, !4780, !4784, !4785, !4789, !4809, !4810, !4811, !4812, !4817}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4746, file: !236, line: 919, baseType: !239, size: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4746, file: !236, line: 920, baseType: !268, size: 64, offset: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4746, file: !236, line: 921, baseType: !4751, size: 64, offset: 192)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4753)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4330, line: 44, size: 320, elements: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4753, file: !4330, line: 45, baseType: !231, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4753, file: !4330, line: 45, baseType: !231, size: 32, offset: 32)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4753, file: !4330, line: 46, baseType: !231, size: 32, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4753, file: !4330, line: 46, baseType: !231, size: 32, offset: 96)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4753, file: !4330, line: 47, baseType: !231, size: 32, offset: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4753, file: !4330, line: 47, baseType: !231, size: 32, offset: 160)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4753, file: !4330, line: 48, baseType: !4346, size: 64, offset: 192)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4753, file: !4330, line: 49, baseType: !231, size: 32, offset: 256)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4746, file: !236, line: 922, baseType: !4764, size: 64, offset: 256)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!115, !234, !4751}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4746, file: !236, line: 923, baseType: !4768, size: 64, offset: 320)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !234}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4746, file: !236, line: 924, baseType: !4772, size: 64, offset: 384)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!115, !234, !4357}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4746, file: !236, line: 925, baseType: !4776, size: 64, offset: 448)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!115, !234}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4746, file: !236, line: 926, baseType: !4768, size: 64, offset: 512)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4746, file: !236, line: 927, baseType: !4781, size: 64, offset: 576)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!115, !234, !115}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4746, file: !236, line: 928, baseType: !4781, size: 64, offset: 640)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4746, file: !236, line: 929, baseType: !4786, size: 64, offset: 704)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!229, !234}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4746, file: !236, line: 930, baseType: !4790, size: 64, offset: 768)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4792)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !236, line: 837, size: 448, elements: !4793)
!4793 = !{!4794, !4800, !4804, !4805, !4806, !4807, !4808}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4792, file: !236, line: 839, baseType: !4795, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!4798, !234, !4799}
!4798 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !236, line: 814, baseType: !13)
!4799 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !236, line: 196, baseType: !13)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4792, file: !236, line: 843, baseType: !4801, size: 64, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!4798, !234}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4792, file: !236, line: 846, baseType: !4801, size: 64, offset: 128)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4792, file: !236, line: 849, baseType: !4768, size: 64, offset: 192)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4792, file: !236, line: 850, baseType: !4768, size: 64, offset: 256)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4792, file: !236, line: 853, baseType: !4768, size: 64, offset: 320)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4792, file: !236, line: 856, baseType: !4768, size: 64, offset: 384)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4746, file: !236, line: 931, baseType: !454, size: 64, offset: 832)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4746, file: !236, line: 932, baseType: !454, size: 64, offset: 896)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4746, file: !236, line: 933, baseType: !4318, size: 1152, offset: 960)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4746, file: !236, line: 934, baseType: !4813, size: 192, offset: 2112)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !236, line: 801, size: 192, elements: !4814)
!4814 = !{!4815, !4816}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4813, file: !236, line: 802, baseType: !337, size: 32)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4813, file: !236, line: 803, baseType: !239, size: 128, offset: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4746, file: !236, line: 935, baseType: !818, size: 8, offset: 2304)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !235, file: !236, line: 358, baseType: !263, size: 64, offset: 1024)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !235, file: !236, line: 364, baseType: !4527, size: 128, offset: 1088)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !235, file: !236, line: 366, baseType: !4821, size: 32, offset: 1216)
!4821 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !236, line: 171, baseType: !115)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !235, file: !236, line: 369, baseType: !365, size: 8, offset: 1248)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !235, file: !236, line: 370, baseType: !13, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !235, file: !236, line: 371, baseType: !13, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !235, file: !236, line: 373, baseType: !13, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !235, file: !236, line: 374, baseType: !13, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !235, file: !236, line: 375, baseType: !13, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !235, file: !236, line: 376, baseType: !13, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !235, file: !236, line: 377, baseType: !13, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !235, file: !236, line: 378, baseType: !13, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !235, file: !236, line: 379, baseType: !13, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !235, file: !236, line: 380, baseType: !13, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !235, file: !236, line: 382, baseType: !13, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !235, file: !236, line: 383, baseType: !13, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !235, file: !236, line: 384, baseType: !13, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !235, file: !236, line: 385, baseType: !13, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !235, file: !236, line: 388, baseType: !13, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !235, file: !236, line: 390, baseType: !13, size: 32, offset: 1280)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !235, file: !236, line: 391, baseType: !13, size: 32, offset: 1312)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !235, file: !236, line: 394, baseType: !4841, size: 64, offset: 1344)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !236, line: 316, flags: DIFlagFwdDecl)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !235, file: !236, line: 395, baseType: !372, size: 16, offset: 1408)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !235, file: !236, line: 396, baseType: !13, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !235, file: !236, line: 399, baseType: !13, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !235, file: !236, line: 400, baseType: !13, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !235, file: !236, line: 402, baseType: !4799, size: 32, offset: 1440)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !235, file: !236, line: 403, baseType: !321, size: 5824, offset: 1472)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !235, file: !236, line: 405, baseType: !115, size: 32, offset: 7296)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !235, file: !236, line: 411, baseType: !13, size: 32, offset: 7328)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !235, file: !236, line: 412, baseType: !4852, size: 5632, offset: 7360)
!4852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 5632, elements: !4853)
!4853 = !{!4854}
!4854 = !DISubrange(count: 11)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !235, file: !236, line: 413, baseType: !257, size: 512, offset: 12992)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !235, file: !236, line: 415, baseType: !818, size: 8, offset: 13504)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !235, file: !236, line: 417, baseType: !13, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !235, file: !236, line: 418, baseType: !13, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !235, file: !236, line: 419, baseType: !13, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !235, file: !236, line: 420, baseType: !13, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !235, file: !236, line: 421, baseType: !13, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !235, file: !236, line: 423, baseType: !13, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !235, file: !236, line: 424, baseType: !13, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !235, file: !236, line: 425, baseType: !13, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !235, file: !236, line: 426, baseType: !13, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !235, file: !236, line: 427, baseType: !13, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !235, file: !236, line: 428, baseType: !13, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !235, file: !236, line: 429, baseType: !13, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !235, file: !236, line: 430, baseType: !13, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !235, file: !236, line: 431, baseType: !13, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !235, file: !236, line: 432, baseType: !13, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !235, file: !236, line: 433, baseType: !13, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !235, file: !236, line: 434, baseType: !13, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !235, file: !236, line: 435, baseType: !13, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !235, file: !236, line: 436, baseType: !13, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !235, file: !236, line: 437, baseType: !13, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !235, file: !236, line: 438, baseType: !13, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !235, file: !236, line: 439, baseType: !13, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !235, file: !236, line: 440, baseType: !13, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !235, file: !236, line: 441, baseType: !13, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !235, file: !236, line: 442, baseType: !13, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !235, file: !236, line: 443, baseType: !13, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !235, file: !236, line: 451, baseType: !13, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !235, file: !236, line: 457, baseType: !13, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !235, file: !236, line: 458, baseType: !13, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !235, file: !236, line: 459, baseType: !13, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !235, file: !236, line: 460, baseType: !13, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !235, file: !236, line: 461, baseType: !13, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !235, file: !236, line: 462, baseType: !13, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !235, file: !236, line: 463, baseType: !13, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !235, file: !236, line: 464, baseType: !13, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !235, file: !236, line: 465, baseType: !13, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !235, file: !236, line: 466, baseType: !13, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !235, file: !236, line: 467, baseType: !13, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !235, file: !236, line: 468, baseType: !4896, size: 16, offset: 13552)
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !236, line: 222, baseType: !316)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !235, file: !236, line: 469, baseType: !357, size: 32, offset: 13568)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !235, file: !236, line: 471, baseType: !337, size: 32, offset: 13600)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !235, file: !236, line: 472, baseType: !4900, size: 512, offset: 13632)
!4900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 512, elements: !2815)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !235, file: !236, line: 473, baseType: !1104, size: 64, offset: 14144)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !235, file: !236, line: 474, baseType: !4903, size: 704, offset: 14208)
!4903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 704, elements: !4853)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !235, file: !236, line: 475, baseType: !4903, size: 704, offset: 14912)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !235, file: !236, line: 487, baseType: !217, size: 64, offset: 15616)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !235, file: !236, line: 488, baseType: !696, size: 32, offset: 15680)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !235, file: !236, line: 490, baseType: !4908, size: 320, offset: 15744)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !236, line: 309, size: 320, elements: !4909)
!4909 = !{!4910, !4911, !4912}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4908, file: !236, line: 310, baseType: !738, size: 256)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4908, file: !236, line: 311, baseType: !13, size: 32, offset: 256)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4908, file: !236, line: 312, baseType: !365, size: 8, offset: 288)
!4913 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !236, line: 497, baseType: !4914, size: 64, offset: 16064)
!4914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !236, line: 497, size: 64, elements: !4915)
!4915 = !{!4916, !4919}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4914, file: !236, line: 498, baseType: !4917, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !236, line: 317, flags: DIFlagFwdDecl)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4914, file: !236, line: 499, baseType: !234, size: 64)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !235, file: !236, line: 501, baseType: !372, size: 16, offset: 16128)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !235, file: !236, line: 502, baseType: !365, size: 8, offset: 16144)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !235, file: !236, line: 505, baseType: !372, size: 16, offset: 16160)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !235, file: !236, line: 506, baseType: !229, size: 32, offset: 16192)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !235, file: !236, line: 507, baseType: !13, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !235, file: !236, line: 510, baseType: !372, size: 16, offset: 16240)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !235, file: !236, line: 511, baseType: !372, size: 16, offset: 16256)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !235, file: !236, line: 519, baseType: !372, size: 16, offset: 16272)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !235, file: !236, line: 520, baseType: !262, size: 64, offset: 16320)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !235, file: !236, line: 521, baseType: !450, size: 64, offset: 16384)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !235, file: !236, line: 526, baseType: !268, size: 64, offset: 16448)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !235, file: !236, line: 528, baseType: !220, size: 64, offset: 16512)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !235, file: !236, line: 531, baseType: !4933, size: 56, offset: 16576)
!4933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 56, elements: !859)
!4934 = !{!0, !4935, !4940, !4942, !4944, !4946, !4948, !7, !4950, !4955, !4960, !4965, !4970, !4972}
!4935 = !DIGlobalVariableExpression(var: !4936, expr: !DIExpression())
!4936 = distinct !DIGlobalVariable(scope: null, file: !2, line: 290, type: !4937, isLocal: true, isDefinition: true)
!4937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !4938)
!4938 = !{!4939}
!4939 = !DISubrange(count: 18)
!4940 = !DIGlobalVariableExpression(var: !4941, expr: !DIExpression())
!4941 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_hcd_pci_probe296", scope: !9, file: !2, line: 293, type: !217, isLocal: true, isDefinition: true)
!4942 = !DIGlobalVariableExpression(var: !4943, expr: !DIExpression())
!4943 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_hcd_pci_remove297", scope: !9, file: !2, line: 353, type: !217, isLocal: true, isDefinition: true)
!4944 = !DIGlobalVariableExpression(var: !4945, expr: !DIExpression())
!4945 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_hcd_pci_shutdown298", scope: !9, file: !2, line: 375, type: !217, isLocal: true, isDefinition: true)
!4946 = !DIGlobalVariableExpression(var: !4947, expr: !DIExpression())
!4947 = distinct !DIGlobalVariable(name: "usb_hcd_pci_pm_ops", scope: !9, file: !2, line: 622, type: !4273, isLocal: false, isDefinition: true)
!4948 = !DIGlobalVariableExpression(var: !4949, expr: !DIExpression())
!4949 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_hcd_pci_pm_ops299", scope: !9, file: !2, line: 639, type: !217, isLocal: true, isDefinition: true)
!4950 = !DIGlobalVariableExpression(var: !4951, expr: !DIExpression())
!4951 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !4952, isLocal: true, isDefinition: true)
!4952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 120, elements: !4953)
!4953 = !{!4954}
!4954 = !DISubrange(count: 15)
!4955 = !DIGlobalVariableExpression(var: !4956, expr: !DIExpression())
!4956 = distinct !DIGlobalVariable(scope: null, file: !2, line: 491, type: !4957, isLocal: true, isDefinition: true)
!4957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !4958)
!4958 = !{!4959}
!4959 = !DISubrange(count: 35)
!4960 = !DIGlobalVariableExpression(var: !4961, expr: !DIExpression())
!4961 = distinct !DIGlobalVariable(scope: null, file: !2, line: 510, type: !4962, isLocal: true, isDefinition: true)
!4962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !4963)
!4963 = !{!4964}
!4964 = !DISubrange(count: 27)
!4965 = !DIGlobalVariableExpression(var: !4966, expr: !DIExpression())
!4966 = distinct !DIGlobalVariable(scope: null, file: !2, line: 555, type: !4967, isLocal: true, isDefinition: true)
!4967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 176, elements: !4968)
!4968 = !{!4969}
!4969 = !DISubrange(count: 22)
!4970 = !DIGlobalVariableExpression(var: !4971, expr: !DIExpression())
!4971 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !4962, isLocal: true, isDefinition: true)
!4972 = !DIGlobalVariableExpression(var: !4973, expr: !DIExpression())
!4973 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !4974, isLocal: true, isDefinition: true)
!4974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !4975)
!4975 = !{!4976}
!4976 = !DISubrange(count: 37)
!4977 = !{i32 7, !"Dwarf Version", i32 5}
!4978 = !{i32 2, !"Debug Info Version", i32 3}
!4979 = !{i32 1, !"wchar_size", i32 2}
!4980 = !{i32 8, !"cf-protection-branch", i32 1}
!4981 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4982 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4983 = !{i32 1, !"Code Model", i32 2}
!4984 = !{i32 1, !"override-stack-alignment", i32 8}
!4985 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4986 = distinct !DISubprogram(name: "usb_hcd_pci_probe", scope: !2, file: !2, line: 172, type: !4987, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5589)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!115, !234, !4989}
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4991)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !200, line: 237, size: 3008, elements: !4992)
!4992 = !{!4993, !4994, !4995, !4996, !5473, !5474, !5478, !5479, !5483, !5487, !5488, !5492, !5493, !5494, !5498, !5502, !5503, !5507, !5511, !5512, !5516, !5520, !5521, !5522, !5526, !5530, !5534, !5538, !5539, !5543, !5547, !5552, !5556, !5560, !5561, !5562, !5563, !5567, !5568, !5572, !5573, !5574, !5578, !5582, !5583, !5584, !5588}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4991, file: !200, line: 238, baseType: !268, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4991, file: !200, line: 239, baseType: !268, size: 64, offset: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !4991, file: !200, line: 240, baseType: !450, size: 64, offset: 128)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4991, file: !200, line: 243, baseType: !4997, size: 64, offset: 192)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!5000, !5001}
!5000 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !154, line: 17, baseType: !153)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !200, line: 68, size: 4864, elements: !5003)
!5003 = !{!5004, !5330, !5331, !5332, !5333, !5337, !5338, !5402, !5403, !5404, !5405, !5408, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5457, !5458, !5460, !5461, !5462, !5463, !5468, !5469, !5472}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5002, file: !200, line: 73, baseType: !5005, size: 1152)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !188, line: 451, size: 1152, elements: !5006)
!5006 = !{!5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5025, !5321, !5322, !5323, !5324, !5325, !5326, !5329}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !5005, file: !188, line: 452, baseType: !320, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !5005, file: !188, line: 453, baseType: !320, size: 64, offset: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !5005, file: !188, line: 454, baseType: !115, size: 32, offset: 128)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !5005, file: !188, line: 455, baseType: !268, size: 64, offset: 192)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !5005, file: !188, line: 456, baseType: !365, size: 8, offset: 256)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !5005, file: !188, line: 460, baseType: !365, size: 8, offset: 264)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !5005, file: !188, line: 461, baseType: !13, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5005, file: !188, line: 462, baseType: !13, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !5005, file: !188, line: 463, baseType: !13, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !5005, file: !188, line: 468, baseType: !13, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !5005, file: !188, line: 469, baseType: !13, size: 32, offset: 288)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !5005, file: !188, line: 471, baseType: !115, size: 32, offset: 320)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !5005, file: !188, line: 473, baseType: !738, size: 256, offset: 384)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !5005, file: !188, line: 475, baseType: !5021, size: 128, offset: 640)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !188, line: 444, size: 128, elements: !5022)
!5022 = !{!5023}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !5021, file: !188, line: 445, baseType: !5024, size: 128)
!5024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !857)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !5005, file: !188, line: 476, baseType: !5026, size: 64, offset: 768)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !188, line: 652, size: 10816, elements: !5028)
!5028 = !{!5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5048, !5049, !5051, !5052, !5054, !5095, !5096, !5113, !5183, !5267, !5268, !5270, !5271, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5310, !5317, !5318, !5319, !5320}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !5027, file: !188, line: 653, baseType: !115, size: 32)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !5027, file: !188, line: 654, baseType: !2814, size: 128, offset: 32)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !5027, file: !188, line: 655, baseType: !229, size: 32, offset: 160)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5027, file: !188, line: 656, baseType: !159, size: 32, offset: 192)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5027, file: !188, line: 657, baseType: !171, size: 32, offset: 224)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !5027, file: !188, line: 658, baseType: !13, size: 32, offset: 256)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !5027, file: !188, line: 659, baseType: !13, size: 32, offset: 288)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_rate", scope: !5027, file: !188, line: 660, baseType: !180, size: 32, offset: 320)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !5027, file: !188, line: 662, baseType: !5038, size: 64, offset: 384)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !200, line: 558, size: 640, elements: !5040)
!5040 = !{!5041, !5042, !5043, !5044, !5045, !5046, !5047}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !5039, file: !200, line: 559, baseType: !5026, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !5039, file: !200, line: 560, baseType: !115, size: 32, offset: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !5039, file: !200, line: 561, baseType: !13, size: 32, offset: 96)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5039, file: !200, line: 562, baseType: !217, size: 64, offset: 128)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5039, file: !200, line: 565, baseType: !337, size: 32, offset: 192)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !5039, file: !200, line: 566, baseType: !239, size: 128, offset: 256)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !5039, file: !200, line: 567, baseType: !995, size: 256, offset: 384)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !5027, file: !188, line: 663, baseType: !115, size: 32, offset: 448)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !5027, file: !188, line: 665, baseType: !5050, size: 64, offset: 480)
!5050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !857)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5027, file: !188, line: 667, baseType: !5026, size: 64, offset: 576)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5027, file: !188, line: 668, baseType: !5053, size: 64, offset: 640)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5027, file: !188, line: 669, baseType: !5055, size: 640, offset: 704)
!5055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !188, line: 66, size: 640, elements: !5056)
!5056 = !{!5057, !5069, !5077, !5085, !5086, !5087, !5090, !5092, !5093, !5094}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5055, file: !188, line: 67, baseType: !5058, size: 72)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !160, line: 407, size: 72, elements: !5059)
!5059 = !{!5060, !5061, !5062, !5063, !5064, !5066, !5067, !5068}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5058, file: !160, line: 408, baseType: !366, size: 8)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5058, file: !160, line: 409, baseType: !366, size: 8, offset: 8)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !5058, file: !160, line: 411, baseType: !366, size: 8, offset: 16)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5058, file: !160, line: 412, baseType: !366, size: 8, offset: 24)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !5058, file: !160, line: 413, baseType: !5065, size: 16, offset: 32)
!5065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2166, line: 36, baseType: !373)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !5058, file: !160, line: 414, baseType: !366, size: 8, offset: 48)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !5058, file: !160, line: 418, baseType: !366, size: 8, offset: 56)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !5058, file: !160, line: 419, baseType: !366, size: 8, offset: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !5055, file: !188, line: 68, baseType: !5070, size: 48, offset: 72)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !160, line: 689, size: 48, elements: !5071)
!5071 = !{!5072, !5073, !5074, !5075, !5076}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5070, file: !160, line: 690, baseType: !366, size: 8)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5070, file: !160, line: 691, baseType: !366, size: 8, offset: 8)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !5070, file: !160, line: 693, baseType: !366, size: 8, offset: 16)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5070, file: !160, line: 694, baseType: !366, size: 8, offset: 24)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !5070, file: !160, line: 695, baseType: !5065, size: 16, offset: 32)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !5055, file: !188, line: 69, baseType: !5078, size: 64, offset: 120)
!5078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !160, line: 677, size: 64, elements: !5079)
!5079 = !{!5080, !5081, !5082, !5083}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5078, file: !160, line: 678, baseType: !366, size: 8)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5078, file: !160, line: 679, baseType: !366, size: 8, offset: 8)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !5078, file: !160, line: 680, baseType: !5065, size: 16, offset: 16)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !5078, file: !160, line: 681, baseType: !5084, size: 32, offset: 32)
!5084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2166, line: 38, baseType: !231)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5055, file: !188, line: 70, baseType: !239, size: 128, offset: 192)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5055, file: !188, line: 71, baseType: !217, size: 64, offset: 320)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !5055, file: !188, line: 72, baseType: !5088, size: 64, offset: 384)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !188, line: 47, flags: DIFlagFwdDecl)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5055, file: !188, line: 74, baseType: !5091, size: 64, offset: 448)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5055, file: !188, line: 75, baseType: !115, size: 32, offset: 512)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5055, file: !188, line: 76, baseType: !115, size: 32, offset: 544)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !5055, file: !188, line: 77, baseType: !115, size: 32, offset: 576)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5027, file: !188, line: 671, baseType: !321, size: 5824, offset: 1344)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !5027, file: !188, line: 673, baseType: !5097, size: 144, offset: 7168)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !160, line: 286, size: 144, elements: !5098)
!5098 = !{!5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5097, file: !160, line: 287, baseType: !366, size: 8)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5097, file: !160, line: 288, baseType: !366, size: 8, offset: 8)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !5097, file: !160, line: 290, baseType: !5065, size: 16, offset: 16)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !5097, file: !160, line: 291, baseType: !366, size: 8, offset: 32)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !5097, file: !160, line: 292, baseType: !366, size: 8, offset: 40)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !5097, file: !160, line: 293, baseType: !366, size: 8, offset: 48)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !5097, file: !160, line: 294, baseType: !366, size: 8, offset: 56)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !5097, file: !160, line: 295, baseType: !5065, size: 16, offset: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !5097, file: !160, line: 296, baseType: !5065, size: 16, offset: 80)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !5097, file: !160, line: 297, baseType: !5065, size: 16, offset: 96)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !5097, file: !160, line: 298, baseType: !366, size: 8, offset: 112)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !5097, file: !160, line: 299, baseType: !366, size: 8, offset: 120)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !5097, file: !160, line: 300, baseType: !366, size: 8, offset: 128)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !5097, file: !160, line: 301, baseType: !366, size: 8, offset: 136)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !5027, file: !188, line: 674, baseType: !5114, size: 64, offset: 7360)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !188, line: 424, size: 384, elements: !5116)
!5116 = !{!5117, !5125, !5133, !5145, !5167, !5176}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5115, file: !188, line: 425, baseType: !5118, size: 64)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !160, line: 844, size: 40, elements: !5120)
!5120 = !{!5121, !5122, !5123, !5124}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5119, file: !160, line: 845, baseType: !366, size: 8)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5119, file: !160, line: 846, baseType: !366, size: 8, offset: 8)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5119, file: !160, line: 848, baseType: !5065, size: 16, offset: 16)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !5119, file: !160, line: 849, baseType: !366, size: 8, offset: 32)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !5115, file: !188, line: 427, baseType: !5126, size: 64, offset: 64)
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !160, line: 895, size: 56, elements: !5128)
!5128 = !{!5129, !5130, !5131, !5132}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5127, file: !160, line: 896, baseType: !366, size: 8)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5127, file: !160, line: 897, baseType: !366, size: 8, offset: 8)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5127, file: !160, line: 898, baseType: !366, size: 8, offset: 16)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5127, file: !160, line: 899, baseType: !5084, size: 32, offset: 24)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !5115, file: !188, line: 428, baseType: !5134, size: 64, offset: 128)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !160, line: 917, size: 80, elements: !5136)
!5136 = !{!5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5135, file: !160, line: 918, baseType: !366, size: 8)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5135, file: !160, line: 919, baseType: !366, size: 8, offset: 8)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5135, file: !160, line: 920, baseType: !366, size: 8, offset: 16)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5135, file: !160, line: 921, baseType: !366, size: 8, offset: 24)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !5135, file: !160, line: 923, baseType: !5065, size: 16, offset: 32)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !5135, file: !160, line: 928, baseType: !366, size: 8, offset: 48)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5135, file: !160, line: 929, baseType: !366, size: 8, offset: 56)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5135, file: !160, line: 930, baseType: !5065, size: 16, offset: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !5115, file: !188, line: 429, baseType: !5146, size: 64, offset: 192)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !160, line: 971, size: 128, elements: !5148)
!5148 = !{!5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5147, file: !160, line: 972, baseType: !366, size: 8)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5147, file: !160, line: 973, baseType: !366, size: 8, offset: 8)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5147, file: !160, line: 974, baseType: !366, size: 8, offset: 16)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5147, file: !160, line: 975, baseType: !366, size: 8, offset: 24)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5147, file: !160, line: 976, baseType: !5084, size: 32, offset: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !5147, file: !160, line: 979, baseType: !5065, size: 16, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !5147, file: !160, line: 983, baseType: !5065, size: 16, offset: 80)
!5156 = !DIDerivedType(tag: DW_TAG_member, scope: !5147, file: !160, line: 984, baseType: !5157, size: 32, offset: 96)
!5157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5147, file: !160, line: 984, size: 32, elements: !5158)
!5158 = !{!5159, !5160}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_padding", scope: !5157, file: !160, line: 985, baseType: !5084, size: 32)
!5160 = !DIDerivedType(tag: DW_TAG_member, scope: !5157, file: !160, line: 987, baseType: !5161)
!5161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5157, file: !160, line: 987, elements: !5162)
!5162 = !{!5163, !5165}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_bmSublinkSpeedAttr", scope: !5161, file: !160, line: 987, baseType: !5164)
!5164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5161, file: !160, line: 987, elements: !1024)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !5161, file: !160, line: 987, baseType: !5166)
!5166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5084, elements: !1886)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !5115, file: !188, line: 430, baseType: !5168, size: 64, offset: 256)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !160, line: 940, size: 160, elements: !5170)
!5170 = !{!5171, !5172, !5173, !5174, !5175}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5169, file: !160, line: 941, baseType: !366, size: 8)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5169, file: !160, line: 942, baseType: !366, size: 8, offset: 8)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5169, file: !160, line: 943, baseType: !366, size: 8, offset: 16)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5169, file: !160, line: 944, baseType: !366, size: 8, offset: 24)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !5169, file: !160, line: 945, baseType: !3598, size: 128, offset: 32)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !5115, file: !188, line: 431, baseType: !5177, size: 64, offset: 320)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !160, line: 1113, size: 24, elements: !5179)
!5179 = !{!5180, !5181, !5182}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5178, file: !160, line: 1114, baseType: !366, size: 8)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5178, file: !160, line: 1115, baseType: !366, size: 8, offset: 8)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5178, file: !160, line: 1116, baseType: !366, size: 8, offset: 16)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5027, file: !188, line: 675, baseType: !5184, size: 64, offset: 7424)
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5185, size: 64)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !188, line: 402, size: 5440, elements: !5186)
!5186 = !{!5187, !5198, !5199, !5212, !5256, !5265, !5266}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5185, file: !188, line: 403, baseType: !5188, size: 72)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !160, line: 346, size: 72, elements: !5189)
!5189 = !{!5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5188, file: !160, line: 347, baseType: !366, size: 8)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5188, file: !160, line: 348, baseType: !366, size: 8, offset: 8)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5188, file: !160, line: 350, baseType: !5065, size: 16, offset: 16)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !5188, file: !160, line: 351, baseType: !366, size: 8, offset: 32)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !5188, file: !160, line: 352, baseType: !366, size: 8, offset: 40)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !5188, file: !160, line: 353, baseType: !366, size: 8, offset: 48)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5188, file: !160, line: 354, baseType: !366, size: 8, offset: 56)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !5188, file: !160, line: 355, baseType: !366, size: 8, offset: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5185, file: !188, line: 405, baseType: !403, size: 64, offset: 128)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5185, file: !188, line: 409, baseType: !5200, size: 1024, offset: 192)
!5200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5201, size: 1024, elements: !2815)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !160, line: 783, size: 64, elements: !5203)
!5203 = !{!5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5202, file: !160, line: 784, baseType: !366, size: 8)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5202, file: !160, line: 785, baseType: !366, size: 8, offset: 8)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !5202, file: !160, line: 787, baseType: !366, size: 8, offset: 16)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !5202, file: !160, line: 788, baseType: !366, size: 8, offset: 24)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !5202, file: !160, line: 789, baseType: !366, size: 8, offset: 32)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !5202, file: !160, line: 790, baseType: !366, size: 8, offset: 40)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !5202, file: !160, line: 791, baseType: !366, size: 8, offset: 48)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !5202, file: !160, line: 792, baseType: !366, size: 8, offset: 56)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !5185, file: !188, line: 413, baseType: !5213, size: 2048, offset: 1216)
!5213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5214, size: 2048, elements: !559)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !188, line: 241, size: 6784, elements: !5216)
!5216 = !{!5217, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255}
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5215, file: !188, line: 244, baseType: !5218, size: 64)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !188, line: 81, size: 320, elements: !5220)
!5220 = !{!5221, !5233, !5234, !5235, !5237}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5219, file: !188, line: 82, baseType: !5222, size: 72)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !160, line: 389, size: 72, elements: !5223)
!5223 = !{!5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5222, file: !160, line: 390, baseType: !366, size: 8)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5222, file: !160, line: 391, baseType: !366, size: 8, offset: 8)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !5222, file: !160, line: 393, baseType: !366, size: 8, offset: 16)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !5222, file: !160, line: 394, baseType: !366, size: 8, offset: 24)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !5222, file: !160, line: 395, baseType: !366, size: 8, offset: 32)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !5222, file: !160, line: 396, baseType: !366, size: 8, offset: 40)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !5222, file: !160, line: 397, baseType: !366, size: 8, offset: 48)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !5222, file: !160, line: 398, baseType: !366, size: 8, offset: 56)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !5222, file: !160, line: 399, baseType: !366, size: 8, offset: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5219, file: !188, line: 84, baseType: !115, size: 32, offset: 96)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5219, file: !188, line: 85, baseType: !5091, size: 64, offset: 128)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !5219, file: !188, line: 90, baseType: !5236, size: 64, offset: 192)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5219, file: !188, line: 92, baseType: !403, size: 64, offset: 256)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !5215, file: !188, line: 246, baseType: !5218, size: 64, offset: 64)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5215, file: !188, line: 248, baseType: !13, size: 32, offset: 128)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5215, file: !188, line: 252, baseType: !5201, size: 64, offset: 192)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5215, file: !188, line: 254, baseType: !115, size: 32, offset: 256)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !5215, file: !188, line: 256, baseType: !187, size: 32, offset: 288)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !5215, file: !188, line: 257, baseType: !13, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !5215, file: !188, line: 258, baseType: !13, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !5215, file: !188, line: 259, baseType: !13, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !5215, file: !188, line: 260, baseType: !13, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !5215, file: !188, line: 261, baseType: !13, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !5215, file: !188, line: 262, baseType: !13, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !5215, file: !188, line: 263, baseType: !13, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5215, file: !188, line: 264, baseType: !13, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "wireless_status", scope: !5215, file: !188, line: 265, baseType: !194, size: 32, offset: 352)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "wireless_status_work", scope: !5215, file: !188, line: 266, baseType: !995, size: 256, offset: 384)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5215, file: !188, line: 268, baseType: !321, size: 5824, offset: 640)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !5215, file: !188, line: 269, baseType: !320, size: 64, offset: 6464)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !5215, file: !188, line: 270, baseType: !995, size: 256, offset: 6528)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !5185, file: !188, line: 417, baseType: !5257, size: 2048, offset: 3264)
!5257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5258, size: 2048, elements: !559)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !188, line: 350, size: 64, elements: !5260)
!5260 = !{!5261, !5262, !5263}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5259, file: !188, line: 351, baseType: !13, size: 32)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5259, file: !188, line: 352, baseType: !4235, size: 32, offset: 32)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5259, file: !188, line: 356, baseType: !5264, offset: 64)
!5264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5219, elements: !1886)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5185, file: !188, line: 419, baseType: !5091, size: 64, offset: 5312)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5185, file: !188, line: 420, baseType: !115, size: 32, offset: 5376)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !5027, file: !188, line: 677, baseType: !5184, size: 64, offset: 7488)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !5027, file: !188, line: 678, baseType: !5269, size: 1024, offset: 7552)
!5269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5236, size: 1024, elements: !2815)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !5027, file: !188, line: 679, baseType: !5269, size: 1024, offset: 8576)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !5027, file: !188, line: 681, baseType: !5272, size: 64, offset: 9600)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !5027, file: !188, line: 683, baseType: !316, size: 16, offset: 9664)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !5027, file: !188, line: 684, baseType: !365, size: 8, offset: 9680)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5027, file: !188, line: 685, baseType: !365, size: 8, offset: 9688)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !5027, file: !188, line: 686, baseType: !365, size: 8, offset: 9696)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !5027, file: !188, line: 688, baseType: !13, size: 1, offset: 9704, flags: DIFlagBitField, extraData: i64 9704)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !5027, file: !188, line: 689, baseType: !13, size: 1, offset: 9705, flags: DIFlagBitField, extraData: i64 9704)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "reset_in_progress", scope: !5027, file: !188, line: 690, baseType: !13, size: 1, offset: 9706, flags: DIFlagBitField, extraData: i64 9704)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !5027, file: !188, line: 691, baseType: !13, size: 1, offset: 9707, flags: DIFlagBitField, extraData: i64 9704)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5027, file: !188, line: 692, baseType: !13, size: 1, offset: 9708, flags: DIFlagBitField, extraData: i64 9704)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !5027, file: !188, line: 693, baseType: !13, size: 1, offset: 9709, flags: DIFlagBitField, extraData: i64 9704)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5027, file: !188, line: 694, baseType: !13, size: 1, offset: 9710, flags: DIFlagBitField, extraData: i64 9704)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_devinit_allow", scope: !5027, file: !188, line: 695, baseType: !13, size: 1, offset: 9711, flags: DIFlagBitField, extraData: i64 9704)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !5027, file: !188, line: 696, baseType: !13, size: 1, offset: 9712, flags: DIFlagBitField, extraData: i64 9704)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !5027, file: !188, line: 697, baseType: !13, size: 1, offset: 9713, flags: DIFlagBitField, extraData: i64 9704)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !5027, file: !188, line: 698, baseType: !13, size: 1, offset: 9714, flags: DIFlagBitField, extraData: i64 9704)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !5027, file: !188, line: 699, baseType: !13, size: 1, offset: 9715, flags: DIFlagBitField, extraData: i64 9704)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !5027, file: !188, line: 700, baseType: !13, size: 1, offset: 9716, flags: DIFlagBitField, extraData: i64 9704)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !5027, file: !188, line: 701, baseType: !13, size: 1, offset: 9717, flags: DIFlagBitField, extraData: i64 9704)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !5027, file: !188, line: 702, baseType: !115, size: 32, offset: 9728)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5027, file: !188, line: 705, baseType: !403, size: 64, offset: 9792)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !5027, file: !188, line: 706, baseType: !403, size: 64, offset: 9856)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !5027, file: !188, line: 707, baseType: !403, size: 64, offset: 9920)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !5027, file: !188, line: 709, baseType: !239, size: 128, offset: 9984)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !5027, file: !188, line: 711, baseType: !115, size: 32, offset: 10112)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5027, file: !188, line: 713, baseType: !229, size: 32, offset: 10144)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !5027, file: !188, line: 714, baseType: !357, size: 32, offset: 10176)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !5027, file: !188, line: 716, baseType: !220, size: 64, offset: 10240)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !5027, file: !188, line: 718, baseType: !220, size: 64, offset: 10304)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !5027, file: !188, line: 720, baseType: !13, size: 1, offset: 10368, flags: DIFlagBitField, extraData: i64 10368)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5027, file: !188, line: 721, baseType: !13, size: 1, offset: 10369, flags: DIFlagBitField, extraData: i64 10368)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !5027, file: !188, line: 722, baseType: !13, size: 1, offset: 10370, flags: DIFlagBitField, extraData: i64 10368)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !5027, file: !188, line: 724, baseType: !115, size: 32, offset: 10400)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !5027, file: !188, line: 725, baseType: !5306, size: 64, offset: 10432)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !188, line: 523, size: 64, elements: !5307)
!5307 = !{!5308, !5309}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !5306, file: !188, line: 527, baseType: !13, size: 32)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5306, file: !188, line: 533, baseType: !115, size: 32, offset: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !5027, file: !188, line: 726, baseType: !5311, size: 128, offset: 10496)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !188, line: 543, size: 128, elements: !5312)
!5312 = !{!5313, !5314, !5315, !5316}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !5311, file: !188, line: 550, baseType: !13, size: 32)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !5311, file: !188, line: 556, baseType: !13, size: 32, offset: 32)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !5311, file: !188, line: 566, baseType: !13, size: 32, offset: 64)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5311, file: !188, line: 572, baseType: !115, size: 32, offset: 96)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !5027, file: !188, line: 727, baseType: !5311, size: 128, offset: 10624)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !5027, file: !188, line: 728, baseType: !13, size: 32, offset: 10752)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !5027, file: !188, line: 730, baseType: !372, size: 16, offset: 10784)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !5027, file: !188, line: 731, baseType: !13, size: 1, offset: 10800, flags: DIFlagBitField, extraData: i64 10800)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !5005, file: !188, line: 477, baseType: !5053, size: 64, offset: 832)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !5005, file: !188, line: 479, baseType: !115, size: 32, offset: 896)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !5005, file: !188, line: 486, baseType: !115, size: 32, offset: 928)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !5005, file: !188, line: 487, baseType: !115, size: 32, offset: 960)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !5005, file: !188, line: 489, baseType: !13, size: 32, offset: 992)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "mon_bus", scope: !5005, file: !188, line: 492, baseType: !5327, size: 64, offset: 1024)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DICompositeType(tag: DW_TAG_structure_type, name: "mon_bus", file: !188, line: 492, flags: DIFlagFwdDecl)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "monitored", scope: !5005, file: !188, line: 493, baseType: !115, size: 32, offset: 1088)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5002, file: !200, line: 74, baseType: !4235, size: 32, offset: 1152)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !5002, file: !200, line: 76, baseType: !268, size: 64, offset: 1216)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5002, file: !200, line: 77, baseType: !115, size: 32, offset: 1280)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !5002, file: !200, line: 81, baseType: !5334, size: 192, offset: 1312)
!5334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !5335)
!5335 = !{!5336}
!5336 = !DISubrange(count: 24)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !5002, file: !200, line: 83, baseType: !977, size: 320, offset: 1536)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !5002, file: !200, line: 84, baseType: !5339, size: 64, offset: 1856)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !188, line: 1598, size: 1472, elements: !5341)
!5341 = !{!5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5367, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5394}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5340, file: !188, line: 1600, baseType: !4235, size: 32)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !5340, file: !188, line: 1601, baseType: !115, size: 32, offset: 32)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5340, file: !188, line: 1602, baseType: !217, size: 64, offset: 64)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !5340, file: !188, line: 1603, baseType: !357, size: 32, offset: 128)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !5340, file: !188, line: 1604, baseType: !357, size: 32, offset: 160)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5340, file: !188, line: 1607, baseType: !239, size: 128, offset: 192)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !5340, file: !188, line: 1609, baseType: !239, size: 128, offset: 320)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !5340, file: !188, line: 1610, baseType: !5350, size: 64, offset: 448)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !188, line: 1397, size: 448, elements: !5352)
!5352 = !{!5353, !5354, !5355, !5356, !5357}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5351, file: !188, line: 1398, baseType: !239, size: 128)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5351, file: !188, line: 1399, baseType: !1489, size: 192, offset: 128)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5351, file: !188, line: 1400, baseType: !337, size: 32, offset: 320)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !5351, file: !188, line: 1401, baseType: !357, size: 32, offset: 352)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !5351, file: !188, line: 1402, baseType: !13, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5340, file: !188, line: 1611, baseType: !5026, size: 64, offset: 512)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !5340, file: !188, line: 1612, baseType: !5236, size: 64, offset: 576)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5340, file: !188, line: 1613, baseType: !13, size: 32, offset: 640)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5340, file: !188, line: 1614, baseType: !13, size: 32, offset: 672)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5340, file: !188, line: 1615, baseType: !115, size: 32, offset: 704)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !5340, file: !188, line: 1616, baseType: !13, size: 32, offset: 736)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !5340, file: !188, line: 1617, baseType: !217, size: 64, offset: 768)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !5340, file: !188, line: 1618, baseType: !5366, size: 64, offset: 832)
!5366 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !219, line: 149, baseType: !263)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5340, file: !188, line: 1619, baseType: !5368, size: 64, offset: 896)
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5370, line: 11, size: 256, elements: !5371)
!5370 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5371 = !{!5372, !5373, !5374, !5375, !5376, !5377}
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5369, file: !5370, line: 12, baseType: !220, size: 64)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5369, file: !5370, line: 13, baseType: !13, size: 32, offset: 64)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5369, file: !5370, line: 14, baseType: !13, size: 32, offset: 96)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5369, file: !5370, line: 15, baseType: !5366, size: 64, offset: 128)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5369, file: !5370, line: 17, baseType: !13, size: 32, offset: 192)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5369, file: !5370, line: 20, baseType: !13, size: 32, offset: 224)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !5340, file: !188, line: 1620, baseType: !115, size: 32, offset: 960)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !5340, file: !188, line: 1621, baseType: !115, size: 32, offset: 992)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !5340, file: !188, line: 1622, baseType: !229, size: 32, offset: 1024)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5340, file: !188, line: 1623, baseType: !229, size: 32, offset: 1056)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !5340, file: !188, line: 1624, baseType: !5091, size: 64, offset: 1088)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !5340, file: !188, line: 1625, baseType: !5366, size: 64, offset: 1152)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !5340, file: !188, line: 1626, baseType: !115, size: 32, offset: 1216)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !5340, file: !188, line: 1627, baseType: !115, size: 32, offset: 1248)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5340, file: !188, line: 1628, baseType: !115, size: 32, offset: 1280)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !5340, file: !188, line: 1630, baseType: !115, size: 32, offset: 1312)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5340, file: !188, line: 1631, baseType: !217, size: 64, offset: 1344)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5340, file: !188, line: 1632, baseType: !5390, size: 64, offset: 1408)
!5390 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !188, line: 1413, baseType: !5391)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{null, !5339}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !5340, file: !188, line: 1633, baseType: !5395, offset: 1472)
!5395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5396, elements: !1886)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !188, line: 1388, size: 128, elements: !5397)
!5397 = !{!5398, !5399, !5400, !5401}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5396, file: !188, line: 1389, baseType: !13, size: 32)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5396, file: !188, line: 1390, baseType: !13, size: 32, offset: 32)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5396, file: !188, line: 1391, baseType: !13, size: 32, offset: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5396, file: !188, line: 1392, baseType: !115, size: 32, offset: 96)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !5002, file: !200, line: 86, baseType: !995, size: 256, offset: 1920)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !5002, file: !200, line: 88, baseType: !995, size: 256, offset: 2176)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5002, file: !200, line: 93, baseType: !4989, size: 64, offset: 2432)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !5002, file: !200, line: 99, baseType: !5406, size: 64, offset: 2496)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !200, line: 99, flags: DIFlagFwdDecl)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !5002, file: !200, line: 100, baseType: !5409, size: 64, offset: 2560)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !200, line: 100, flags: DIFlagFwdDecl)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5002, file: !200, line: 106, baseType: !220, size: 64, offset: 2624)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !5002, file: !200, line: 140, baseType: !199, size: 32, offset: 2688)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !5002, file: !200, line: 143, baseType: !13, size: 1, offset: 2720, flags: DIFlagBitField, extraData: i64 2720)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !5002, file: !200, line: 144, baseType: !13, size: 1, offset: 2721, flags: DIFlagBitField, extraData: i64 2720)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !5002, file: !200, line: 145, baseType: !13, size: 1, offset: 2722, flags: DIFlagBitField, extraData: i64 2720)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !5002, file: !200, line: 146, baseType: !13, size: 1, offset: 2723, flags: DIFlagBitField, extraData: i64 2720)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !5002, file: !200, line: 152, baseType: !13, size: 1, offset: 2724, flags: DIFlagBitField, extraData: i64 2720)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !5002, file: !200, line: 156, baseType: !13, size: 1, offset: 2725, flags: DIFlagBitField, extraData: i64 2720)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !5002, file: !200, line: 157, baseType: !13, size: 1, offset: 2726, flags: DIFlagBitField, extraData: i64 2720)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !5002, file: !200, line: 158, baseType: !13, size: 1, offset: 2727, flags: DIFlagBitField, extraData: i64 2720)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !5002, file: !200, line: 159, baseType: !13, size: 1, offset: 2728, flags: DIFlagBitField, extraData: i64 2720)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !5002, file: !200, line: 160, baseType: !13, size: 1, offset: 2729, flags: DIFlagBitField, extraData: i64 2720)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !5002, file: !200, line: 161, baseType: !13, size: 1, offset: 2730, flags: DIFlagBitField, extraData: i64 2720)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5002, file: !200, line: 164, baseType: !13, size: 32, offset: 2752)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5002, file: !200, line: 165, baseType: !217, size: 64, offset: 2816)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !5002, file: !200, line: 166, baseType: !261, size: 64, offset: 2880)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !5002, file: !200, line: 167, baseType: !261, size: 64, offset: 2944)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !5002, file: !200, line: 168, baseType: !13, size: 32, offset: 3008)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !5002, file: !200, line: 170, baseType: !5430, size: 576, offset: 3072)
!5430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !200, line: 53, size: 576, elements: !5431)
!5431 = !{!5432, !5433, !5434, !5435, !5436, !5456}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !5430, file: !200, line: 54, baseType: !818, size: 8)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio", scope: !5430, file: !200, line: 55, baseType: !818, size: 8, offset: 8)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5430, file: !200, line: 56, baseType: !337, size: 32, offset: 32)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5430, file: !200, line: 57, baseType: !239, size: 128, offset: 64)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !5430, file: !200, line: 58, baseType: !5437, size: 320, offset: 192)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !308, line: 642, size: 320, elements: !5438)
!5438 = !{!5439, !5441, !5442, !5443, !5444, !5455}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5437, file: !308, line: 644, baseType: !5440, size: 64)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5437, file: !308, line: 645, baseType: !220, size: 64, offset: 64)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5437, file: !308, line: 646, baseType: !357, size: 32, offset: 128)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !5437, file: !308, line: 647, baseType: !818, size: 8, offset: 160)
!5444 = !DIDerivedType(tag: DW_TAG_member, scope: !5437, file: !308, line: 648, baseType: !5445, size: 64, offset: 192)
!5445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5437, file: !308, line: 648, size: 64, elements: !5446)
!5446 = !{!5447, !5451}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5445, file: !308, line: 649, baseType: !5448, size: 64)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{null, !220}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5445, file: !308, line: 650, baseType: !5452, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{null, !5440}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5437, file: !308, line: 652, baseType: !220, size: 64, offset: 256)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !5430, file: !200, line: 59, baseType: !5236, size: 64, offset: 512)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !5002, file: !200, line: 171, baseType: !5430, size: 576, offset: 3648)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !5002, file: !200, line: 184, baseType: !5459, size: 64, offset: 4224)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !5002, file: !200, line: 185, baseType: !5459, size: 64, offset: 4288)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !5002, file: !200, line: 186, baseType: !5001, size: 64, offset: 4352)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !5002, file: !200, line: 187, baseType: !5001, size: 64, offset: 4416)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !5002, file: !200, line: 191, baseType: !5464, size: 256, offset: 4480)
!5464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5465, size: 256, elements: !275)
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !5467, line: 21, flags: DIFlagFwdDecl)
!5467 = !DIFile(filename: "./include/linux/dmapool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2251a22dc002bfda2e28854c0503e9f1")
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5002, file: !200, line: 193, baseType: !115, size: 32, offset: 4736)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !5002, file: !200, line: 208, baseType: !5470, size: 64, offset: 4800)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !200, line: 208, flags: DIFlagFwdDecl)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !5002, file: !200, line: 219, baseType: !2676, align: 64, offset: 4864)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4991, file: !200, line: 245, baseType: !115, size: 32, offset: 256)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4991, file: !200, line: 258, baseType: !5475, size: 64, offset: 320)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!115, !5001}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4991, file: !200, line: 259, baseType: !5475, size: 64, offset: 384)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !4991, file: !200, line: 265, baseType: !5480, size: 64, offset: 448)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!115, !5001, !818}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !4991, file: !200, line: 268, baseType: !5484, size: 64, offset: 512)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!115, !5001, !4357}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "pci_poweroff_late", scope: !4991, file: !200, line: 271, baseType: !5480, size: 64, offset: 576)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4991, file: !200, line: 274, baseType: !5489, size: 64, offset: 640)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{null, !5001}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4991, file: !200, line: 277, baseType: !5489, size: 64, offset: 704)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !4991, file: !200, line: 280, baseType: !5475, size: 64, offset: 768)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !4991, file: !200, line: 283, baseType: !5495, size: 64, offset: 832)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!115, !5001, !5339, !1248}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !4991, file: !200, line: 285, baseType: !5499, size: 64, offset: 896)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{!115, !5001, !5339, !115}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !4991, file: !200, line: 297, baseType: !5495, size: 64, offset: 960)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !4991, file: !200, line: 299, baseType: !5504, size: 64, offset: 1024)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{null, !5001, !5339}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !4991, file: !200, line: 302, baseType: !5508, size: 64, offset: 1088)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{null, !5001, !5236}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !4991, file: !200, line: 307, baseType: !5508, size: 64, offset: 1152)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !4991, file: !200, line: 311, baseType: !5513, size: 64, offset: 1216)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!115, !5001, !403}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !4991, file: !200, line: 312, baseType: !5517, size: 64, offset: 1280)
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5518, size: 64)
!5518 = !DISubroutineType(types: !5519)
!5519 = !{!115, !5001, !372, !372, !372, !403, !372}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !4991, file: !200, line: 315, baseType: !5475, size: 64, offset: 1344)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !4991, file: !200, line: 316, baseType: !5475, size: 64, offset: 1408)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !4991, file: !200, line: 317, baseType: !5523, size: 64, offset: 1472)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!115, !5001, !13}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !4991, file: !200, line: 318, baseType: !5527, size: 64, offset: 1536)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!220, !5001}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !4991, file: !200, line: 321, baseType: !5531, size: 64, offset: 1600)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{null, !5001, !115}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !4991, file: !200, line: 323, baseType: !5535, size: 64, offset: 1664)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DISubroutineType(types: !5537)
!5537 = !{!115, !5001, !115}
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !4991, file: !200, line: 326, baseType: !5508, size: 64, offset: 1728)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !4991, file: !200, line: 331, baseType: !5540, size: 64, offset: 1792)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!115, !5001, !5026}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !4991, file: !200, line: 333, baseType: !5544, size: 64, offset: 1856)
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5545, size: 64)
!5545 = !DISubroutineType(types: !5546)
!5546 = !{null, !5001, !5026}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !4991, file: !200, line: 335, baseType: !5548, size: 64, offset: 1920)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!115, !5001, !5026, !5551, !13, !13, !1248}
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !4991, file: !200, line: 341, baseType: !5553, size: 64, offset: 1984)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!115, !5001, !5026, !5551, !13, !1248}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !4991, file: !200, line: 356, baseType: !5557, size: 64, offset: 2048)
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{!115, !5001, !5026, !5236}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !4991, file: !200, line: 359, baseType: !5557, size: 64, offset: 2112)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !4991, file: !200, line: 366, baseType: !5540, size: 64, offset: 2176)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !4991, file: !200, line: 374, baseType: !5544, size: 64, offset: 2240)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !4991, file: !200, line: 376, baseType: !5564, size: 64, offset: 2304)
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5565, size: 64)
!5565 = !DISubroutineType(types: !5566)
!5566 = !{!115, !5001, !5026, !13}
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !4991, file: !200, line: 379, baseType: !5540, size: 64, offset: 2368)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !4991, file: !200, line: 383, baseType: !5569, size: 64, offset: 2432)
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{!115, !5001, !5026, !5038, !1248}
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !4991, file: !200, line: 385, baseType: !5540, size: 64, offset: 2496)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !4991, file: !200, line: 389, baseType: !5540, size: 64, offset: 2560)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !4991, file: !200, line: 390, baseType: !5575, size: 64, offset: 2624)
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5576 = !DISubroutineType(types: !5577)
!5577 = !{!115, !5001, !5026, !115}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !4991, file: !200, line: 393, baseType: !5579, size: 64, offset: 2688)
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!115, !5001, !5026, !205}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !4991, file: !200, line: 398, baseType: !5579, size: 64, offset: 2752)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !4991, file: !200, line: 400, baseType: !5535, size: 64, offset: 2816)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !4991, file: !200, line: 402, baseType: !5585, size: 64, offset: 2880)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = !DISubroutineType(types: !5587)
!5587 = !{!115, !5001, !115, !818}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "submit_single_step_set_feature", scope: !4991, file: !200, line: 405, baseType: !5499, size: 64, offset: 2944)
!5589 = !{!5590, !5591, !5592, !5593, !5594, !5595, !5598, !5599, !5600}
!5590 = !DILocalVariable(name: "dev", arg: 1, scope: !4986, file: !2, line: 172, type: !234)
!5591 = !DILocalVariable(name: "driver", arg: 2, scope: !4986, file: !2, line: 172, type: !4989)
!5592 = !DILocalVariable(name: "hcd", scope: !4986, file: !2, line: 174, type: !5001)
!5593 = !DILocalVariable(name: "retval", scope: !4986, file: !2, line: 175, type: !115)
!5594 = !DILocalVariable(name: "hcd_irq", scope: !4986, file: !2, line: 176, type: !115)
!5595 = !DILocalVariable(name: "region", scope: !5596, file: !2, line: 232, type: !115)
!5596 = distinct !DILexicalBlock(scope: !5597, file: !2, line: 230, column: 9)
!5597 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 212, column: 6)
!5598 = !DILabel(scope: !4986, name: "put_hcd", file: !2, line: 283)
!5599 = !DILabel(scope: !4986, name: "free_irq_vectors", file: !2, line: 285)
!5600 = !DILabel(scope: !4986, name: "disable_pci", file: !2, line: 288)
!5601 = !DILocation(line: 172, column: 39, scope: !4986)
!5602 = !DILocation(line: 172, column: 68, scope: !4986)
!5603 = !DILocation(line: 174, column: 2, scope: !4986)
!5604 = !DILocation(line: 174, column: 19, scope: !4986)
!5605 = !DILocation(line: 175, column: 2, scope: !4986)
!5606 = !DILocation(line: 175, column: 8, scope: !4986)
!5607 = !DILocation(line: 176, column: 2, scope: !4986)
!5608 = !DILocation(line: 176, column: 8, scope: !4986)
!5609 = !DILocation(line: 178, column: 6, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 178, column: 6)
!5611 = !DILocation(line: 178, column: 6, scope: !4986)
!5612 = !DILocation(line: 179, column: 3, scope: !5610)
!5613 = !DILocation(line: 181, column: 7, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 181, column: 6)
!5615 = !DILocation(line: 181, column: 6, scope: !4986)
!5616 = !DILocation(line: 182, column: 3, scope: !5614)
!5617 = !DILocation(line: 184, column: 24, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 184, column: 6)
!5619 = !DILocation(line: 184, column: 6, scope: !5618)
!5620 = !DILocation(line: 184, column: 29, scope: !5618)
!5621 = !DILocation(line: 184, column: 6, scope: !4986)
!5622 = !DILocation(line: 185, column: 3, scope: !5618)
!5623 = !DILocation(line: 191, column: 7, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 191, column: 6)
!5625 = !DILocation(line: 191, column: 15, scope: !5624)
!5626 = !DILocation(line: 191, column: 21, scope: !5624)
!5627 = !DILocation(line: 191, column: 33, scope: !5624)
!5628 = !DILocation(line: 191, column: 6, scope: !4986)
!5629 = !DILocation(line: 192, column: 34, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5624, file: !2, line: 191, column: 45)
!5631 = !DILocation(line: 192, column: 12, scope: !5630)
!5632 = !DILocation(line: 192, column: 10, scope: !5630)
!5633 = !DILocation(line: 193, column: 7, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5630, file: !2, line: 193, column: 7)
!5635 = !DILocation(line: 193, column: 14, scope: !5634)
!5636 = !DILocation(line: 193, column: 7, scope: !5630)
!5637 = !DILocation(line: 194, column: 4, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5639, file: !2, line: 194, column: 4)
!5639 = distinct !DILexicalBlock(scope: !5634, file: !2, line: 193, column: 19)
!5640 = !DILocation(line: 194, column: 4, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 194, column: 4)
!5642 = !DILocation(line: 197, column: 11, scope: !5639)
!5643 = !DILocation(line: 198, column: 4, scope: !5639)
!5644 = !DILocation(line: 200, column: 28, scope: !5630)
!5645 = !DILocation(line: 200, column: 13, scope: !5630)
!5646 = !DILocation(line: 200, column: 11, scope: !5630)
!5647 = !DILocation(line: 201, column: 2, scope: !5630)
!5648 = !DILocation(line: 203, column: 23, scope: !4986)
!5649 = !DILocation(line: 203, column: 32, scope: !4986)
!5650 = !DILocation(line: 203, column: 37, scope: !4986)
!5651 = !DILocation(line: 203, column: 51, scope: !4986)
!5652 = !DILocation(line: 203, column: 42, scope: !4986)
!5653 = !DILocation(line: 203, column: 8, scope: !4986)
!5654 = !DILocation(line: 203, column: 6, scope: !4986)
!5655 = !DILocation(line: 204, column: 7, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 204, column: 6)
!5657 = !DILocation(line: 204, column: 6, scope: !4986)
!5658 = !DILocation(line: 205, column: 10, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5656, file: !2, line: 204, column: 12)
!5660 = !DILocation(line: 206, column: 3, scope: !5659)
!5661 = !DILocation(line: 209, column: 57, scope: !4986)
!5662 = !DILocation(line: 209, column: 25, scope: !4986)
!5663 = !DILocation(line: 209, column: 62, scope: !4986)
!5664 = !DILocation(line: 210, column: 4, scope: !4986)
!5665 = !DILocation(line: 210, column: 12, scope: !4986)
!5666 = !DILocation(line: 210, column: 18, scope: !4986)
!5667 = !DILocation(line: 0, scope: !4986)
!5668 = !DILocation(line: 209, column: 24, scope: !4986)
!5669 = !DILocation(line: 209, column: 2, scope: !4986)
!5670 = !DILocation(line: 209, column: 7, scope: !4986)
!5671 = !DILocation(line: 209, column: 22, scope: !4986)
!5672 = !DILocation(line: 212, column: 6, scope: !5597)
!5673 = !DILocation(line: 212, column: 14, scope: !5597)
!5674 = !DILocation(line: 212, column: 20, scope: !5597)
!5675 = !DILocation(line: 212, column: 6, scope: !4986)
!5676 = !DILocation(line: 214, column: 21, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5597, file: !2, line: 212, column: 34)
!5678 = !DILocation(line: 214, column: 3, scope: !5677)
!5679 = !DILocation(line: 214, column: 8, scope: !5677)
!5680 = !DILocation(line: 214, column: 19, scope: !5677)
!5681 = !DILocation(line: 215, column: 19, scope: !5677)
!5682 = !DILocation(line: 215, column: 3, scope: !5677)
!5683 = !DILocation(line: 215, column: 8, scope: !5677)
!5684 = !DILocation(line: 215, column: 17, scope: !5677)
!5685 = !DILocation(line: 216, column: 8, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5677, file: !2, line: 216, column: 7)
!5687 = !DILocation(line: 216, column: 7, scope: !5677)
!5688 = !DILocation(line: 219, column: 11, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5686, file: !2, line: 217, column: 42)
!5690 = !DILocation(line: 220, column: 4, scope: !5689)
!5691 = !DILocation(line: 222, column: 29, scope: !5677)
!5692 = !DILocation(line: 222, column: 34, scope: !5677)
!5693 = !DILocation(line: 222, column: 39, scope: !5677)
!5694 = !DILocation(line: 222, column: 44, scope: !5677)
!5695 = !DILocation(line: 223, column: 5, scope: !5677)
!5696 = !DILocation(line: 223, column: 10, scope: !5677)
!5697 = !DILocation(line: 222, column: 15, scope: !5677)
!5698 = !DILocation(line: 222, column: 3, scope: !5677)
!5699 = !DILocation(line: 222, column: 8, scope: !5677)
!5700 = !DILocation(line: 222, column: 13, scope: !5677)
!5701 = !DILocation(line: 224, column: 7, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5677, file: !2, line: 224, column: 7)
!5703 = !DILocation(line: 224, column: 12, scope: !5702)
!5704 = !DILocation(line: 224, column: 17, scope: !5702)
!5705 = !DILocation(line: 224, column: 7, scope: !5677)
!5706 = !DILocation(line: 226, column: 11, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5702, file: !2, line: 224, column: 26)
!5708 = !DILocation(line: 227, column: 4, scope: !5707)
!5709 = !DILocation(line: 230, column: 2, scope: !5677)
!5710 = !DILocation(line: 232, column: 3, scope: !5596)
!5711 = !DILocation(line: 232, column: 7, scope: !5596)
!5712 = !DILocation(line: 234, column: 15, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5596, file: !2, line: 234, column: 3)
!5714 = !DILocation(line: 234, column: 8, scope: !5713)
!5715 = !DILocation(line: 234, column: 20, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5713, file: !2, line: 234, column: 3)
!5717 = !DILocation(line: 234, column: 27, scope: !5716)
!5718 = !DILocation(line: 234, column: 3, scope: !5713)
!5719 = !DILocation(line: 235, column: 10, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5721, file: !2, line: 235, column: 8)
!5721 = distinct !DILexicalBlock(scope: !5716, file: !2, line: 234, column: 57)
!5722 = !DILocation(line: 235, column: 42, scope: !5720)
!5723 = !DILocation(line: 235, column: 8, scope: !5721)
!5724 = !DILocation(line: 237, column: 5, scope: !5720)
!5725 = !DILocation(line: 239, column: 22, scope: !5721)
!5726 = !DILocation(line: 239, column: 4, scope: !5721)
!5727 = !DILocation(line: 239, column: 9, scope: !5721)
!5728 = !DILocation(line: 239, column: 20, scope: !5721)
!5729 = !DILocation(line: 240, column: 20, scope: !5721)
!5730 = !DILocation(line: 240, column: 4, scope: !5721)
!5731 = !DILocation(line: 240, column: 9, scope: !5721)
!5732 = !DILocation(line: 240, column: 18, scope: !5721)
!5733 = !DILocation(line: 241, column: 8, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5721, file: !2, line: 241, column: 8)
!5735 = !DILocation(line: 241, column: 8, scope: !5721)
!5736 = !DILocation(line: 243, column: 5, scope: !5734)
!5737 = !DILocation(line: 244, column: 3, scope: !5721)
!5738 = !DILocation(line: 234, column: 53, scope: !5716)
!5739 = !DILocation(line: 234, column: 3, scope: !5716)
!5740 = distinct !{!5740, !5718, !5741, !5742, !5743}
!5741 = !DILocation(line: 244, column: 3, scope: !5713)
!5742 = !{!"llvm.loop.mustprogress"}
!5743 = !{!"llvm.loop.unroll.disable"}
!5744 = !DILocation(line: 245, column: 7, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5596, file: !2, line: 245, column: 7)
!5746 = !DILocation(line: 245, column: 14, scope: !5745)
!5747 = !DILocation(line: 245, column: 7, scope: !5596)
!5748 = !DILocation(line: 247, column: 11, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5745, file: !2, line: 245, column: 35)
!5750 = !DILocation(line: 248, column: 4, scope: !5749)
!5751 = !DILocation(line: 250, column: 2, scope: !5597)
!5752 = !DILocation(line: 252, column: 17, scope: !4986)
!5753 = !DILocation(line: 252, column: 2, scope: !4986)
!5754 = !DILocation(line: 255, column: 6, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 255, column: 6)
!5756 = !DILocation(line: 255, column: 11, scope: !5755)
!5757 = !DILocation(line: 255, column: 17, scope: !5755)
!5758 = !DILocation(line: 255, column: 6, scope: !4986)
!5759 = !DILocation(line: 256, column: 3, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 255, column: 29)
!5761 = !DILocation(line: 257, column: 20, scope: !5760)
!5762 = !DILocation(line: 257, column: 25, scope: !5760)
!5763 = !DILocation(line: 257, column: 30, scope: !5760)
!5764 = !DILocation(line: 257, column: 3, scope: !5760)
!5765 = !DILocation(line: 258, column: 22, scope: !5760)
!5766 = !DILocation(line: 258, column: 27, scope: !5760)
!5767 = !DILocation(line: 258, column: 3, scope: !5760)
!5768 = !DILocation(line: 259, column: 24, scope: !5760)
!5769 = !DILocation(line: 259, column: 29, scope: !5760)
!5770 = !DILocation(line: 259, column: 12, scope: !5760)
!5771 = !DILocation(line: 259, column: 10, scope: !5760)
!5772 = !DILocation(line: 260, column: 7, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5760, file: !2, line: 260, column: 7)
!5774 = !DILocation(line: 260, column: 14, scope: !5773)
!5775 = !DILocation(line: 260, column: 7, scope: !5760)
!5776 = !DILocation(line: 261, column: 21, scope: !5773)
!5777 = !DILocation(line: 261, column: 26, scope: !5773)
!5778 = !DILocation(line: 261, column: 4, scope: !5773)
!5779 = !DILocation(line: 262, column: 22, scope: !5760)
!5780 = !DILocation(line: 262, column: 27, scope: !5760)
!5781 = !DILocation(line: 262, column: 3, scope: !5760)
!5782 = !DILocation(line: 263, column: 3, scope: !5760)
!5783 = !DILocation(line: 264, column: 2, scope: !5760)
!5784 = !DILocation(line: 265, column: 3, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 264, column: 9)
!5786 = !DILocation(line: 266, column: 20, scope: !5785)
!5787 = !DILocation(line: 266, column: 25, scope: !5785)
!5788 = !DILocation(line: 266, column: 30, scope: !5785)
!5789 = !DILocation(line: 266, column: 3, scope: !5785)
!5790 = !DILocation(line: 267, column: 24, scope: !5785)
!5791 = !DILocation(line: 267, column: 29, scope: !5785)
!5792 = !DILocation(line: 267, column: 12, scope: !5785)
!5793 = !DILocation(line: 267, column: 10, scope: !5785)
!5794 = !DILocation(line: 268, column: 7, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5785, file: !2, line: 268, column: 7)
!5796 = !DILocation(line: 268, column: 14, scope: !5795)
!5797 = !DILocation(line: 268, column: 7, scope: !5785)
!5798 = !DILocation(line: 269, column: 21, scope: !5795)
!5799 = !DILocation(line: 269, column: 26, scope: !5795)
!5800 = !DILocation(line: 269, column: 4, scope: !5795)
!5801 = !DILocation(line: 271, column: 23, scope: !5795)
!5802 = !DILocation(line: 271, column: 28, scope: !5795)
!5803 = !DILocation(line: 271, column: 4, scope: !5795)
!5804 = !DILocation(line: 272, column: 3, scope: !5785)
!5805 = !DILocation(line: 275, column: 6, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 275, column: 6)
!5807 = !DILocation(line: 275, column: 13, scope: !5806)
!5808 = !DILocation(line: 275, column: 6, scope: !4986)
!5809 = !DILocation(line: 276, column: 3, scope: !5806)
!5810 = !DILocation(line: 277, column: 23, scope: !4986)
!5811 = !DILocation(line: 277, column: 28, scope: !4986)
!5812 = !DILocation(line: 277, column: 33, scope: !4986)
!5813 = !DILocation(line: 277, column: 2, scope: !4986)
!5814 = !DILocation(line: 279, column: 23, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 279, column: 6)
!5816 = !DILocation(line: 279, column: 6, scope: !5815)
!5817 = !DILocation(line: 279, column: 6, scope: !4986)
!5818 = !DILocation(line: 280, column: 26, scope: !5815)
!5819 = !DILocation(line: 280, column: 31, scope: !5815)
!5820 = !DILocation(line: 280, column: 3, scope: !5815)
!5821 = !DILocation(line: 281, column: 9, scope: !4986)
!5822 = !DILocation(line: 281, column: 2, scope: !4986)
!5823 = !DILocation(line: 283, column: 1, scope: !4986)
!5824 = !DILocation(line: 284, column: 14, scope: !4986)
!5825 = !DILocation(line: 284, column: 2, scope: !4986)
!5826 = !DILocation(line: 285, column: 1, scope: !4986)
!5827 = !DILocation(line: 286, column: 7, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 286, column: 6)
!5829 = !DILocation(line: 286, column: 15, scope: !5828)
!5830 = !DILocation(line: 286, column: 21, scope: !5828)
!5831 = !DILocation(line: 286, column: 33, scope: !5828)
!5832 = !DILocation(line: 286, column: 6, scope: !4986)
!5833 = !DILocation(line: 287, column: 24, scope: !5828)
!5834 = !DILocation(line: 287, column: 3, scope: !5828)
!5835 = !DILocation(line: 286, column: 35, scope: !5828)
!5836 = !DILocation(line: 288, column: 1, scope: !4986)
!5837 = !DILocation(line: 289, column: 21, scope: !4986)
!5838 = !DILocation(line: 289, column: 2, scope: !4986)
!5839 = !DILocation(line: 290, column: 2, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !4986, file: !2, line: 290, column: 2)
!5841 = !DILocation(line: 290, column: 2, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5840, file: !2, line: 290, column: 2)
!5843 = !DILocation(line: 291, column: 9, scope: !4986)
!5844 = !DILocation(line: 291, column: 2, scope: !4986)
!5845 = !DILocation(line: 292, column: 1, scope: !4986)
!5846 = !DISubprogram(name: "usb_disabled", scope: !188, file: !188, line: 1352, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5847 = !DISubprogram(name: "pci_enable_device", scope: !236, file: !236, line: 1290, type: !4777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5848 = !DISubprogram(name: "pci_alloc_irq_vectors", scope: !236, file: !236, line: 1651, type: !5849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{!115, !234, !13, !13, !13}
!5851 = !DISubprogram(name: "_dev_err", scope: !5852, file: !5852, line: 50, type: !5853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5852 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5853 = !DISubroutineType(types: !5854)
!5854 = !{null, !4260, !268, null}
!5855 = distinct !DISubprogram(name: "pci_name", scope: !236, file: !236, line: 2119, type: !5856, scopeLine: 2120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5860)
!5856 = !DISubroutineType(types: !5857)
!5857 = !{!268, !5858}
!5858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5859, size: 64)
!5859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!5860 = !{!5861}
!5861 = !DILocalVariable(name: "pdev", arg: 1, scope: !5855, file: !236, line: 2119, type: !5858)
!5862 = !DILocation(line: 2119, column: 58, scope: !5855)
!5863 = !DILocation(line: 2121, column: 19, scope: !5855)
!5864 = !DILocation(line: 2121, column: 25, scope: !5855)
!5865 = !DILocation(line: 2121, column: 9, scope: !5855)
!5866 = !DILocation(line: 2121, column: 2, scope: !5855)
!5867 = !DISubprogram(name: "pci_irq_vector", scope: !236, file: !236, line: 1663, type: !5868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5868 = !DISubroutineType(types: !5869)
!5869 = !{!115, !234, !13}
!5870 = !DISubprogram(name: "usb_create_hcd", scope: !200, file: !200, line: 454, type: !5871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5871 = !DISubroutineType(types: !5872)
!5872 = !{!5001, !4989, !320, !268}
!5873 = !DISubprogram(name: "usb_hcd_amd_remote_wakeup_quirk", scope: !200, file: !200, line: 488, type: !4777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5874 = distinct !DISubprogram(name: "resource_size", scope: !258, file: !258, line: 219, type: !5875, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5879)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{!261, !5877}
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5878, size: 64)
!5878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!5879 = !{!5880}
!5880 = !DILocalVariable(name: "res", arg: 1, scope: !5874, file: !258, line: 219, type: !5877)
!5881 = !DILocation(line: 219, column: 68, scope: !5874)
!5882 = !DILocation(line: 221, column: 9, scope: !5874)
!5883 = !DILocation(line: 221, column: 14, scope: !5874)
!5884 = !DILocation(line: 221, column: 20, scope: !5874)
!5885 = !DILocation(line: 221, column: 25, scope: !5874)
!5886 = !DILocation(line: 221, column: 18, scope: !5874)
!5887 = !DILocation(line: 221, column: 31, scope: !5874)
!5888 = !DILocation(line: 221, column: 2, scope: !5874)
!5889 = !DISubprogram(name: "__devm_request_region", scope: !258, file: !258, line: 308, type: !5890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!256, !320, !256, !261, !261, !268}
!5892 = !DISubprogram(name: "devm_ioremap", scope: !5893, file: !5893, line: 56, type: !5894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5893 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!5894 = !DISubroutineType(types: !5895)
!5895 = !{!217, !320, !261, !261}
!5896 = !DISubprogram(name: "pci_set_master", scope: !236, file: !236, line: 1319, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5897 = !DISubprogram(name: "down_write", scope: !1397, file: !1397, line: 187, type: !5898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5898 = !DISubroutineType(types: !5899)
!5899 = !{null, !5900}
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!5901 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !100, file: !100, line: 921, type: !5902, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5904)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{null, !320, !217}
!5904 = !{!5905, !5906}
!5905 = !DILocalVariable(name: "dev", arg: 1, scope: !5901, file: !100, line: 921, type: !320)
!5906 = !DILocalVariable(name: "data", arg: 2, scope: !5901, file: !100, line: 921, type: !217)
!5907 = !DILocation(line: 921, column: 51, scope: !5901)
!5908 = !DILocation(line: 921, column: 62, scope: !5901)
!5909 = !DILocation(line: 923, column: 21, scope: !5901)
!5910 = !DILocation(line: 923, column: 2, scope: !5901)
!5911 = !DILocation(line: 923, column: 7, scope: !5901)
!5912 = !DILocation(line: 923, column: 19, scope: !5901)
!5913 = !DILocation(line: 924, column: 1, scope: !5901)
!5914 = distinct !DISubprogram(name: "for_each_companion", scope: !2, file: !2, line: 45, type: !5915, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5921)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{null, !234, !5001, !5917}
!5917 = !DIDerivedType(tag: DW_TAG_typedef, name: "companion_fn", file: !2, line: 41, baseType: !5918)
!5918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5919, size: 64)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{null, !234, !5001, !234, !5001}
!5921 = !{!5922, !5923, !5924, !5925, !5926, !5927}
!5922 = !DILocalVariable(name: "pdev", arg: 1, scope: !5914, file: !2, line: 45, type: !234)
!5923 = !DILocalVariable(name: "hcd", arg: 2, scope: !5914, file: !2, line: 45, type: !5001)
!5924 = !DILocalVariable(name: "fn", arg: 3, scope: !5914, file: !2, line: 46, type: !5917)
!5925 = !DILocalVariable(name: "companion", scope: !5914, file: !2, line: 48, type: !234)
!5926 = !DILocalVariable(name: "companion_hcd", scope: !5914, file: !2, line: 49, type: !5001)
!5927 = !DILocalVariable(name: "slot", scope: !5914, file: !2, line: 50, type: !13)
!5928 = !DILocation(line: 45, column: 48, scope: !5914)
!5929 = !DILocation(line: 45, column: 70, scope: !5914)
!5930 = !DILocation(line: 46, column: 16, scope: !5914)
!5931 = !DILocation(line: 48, column: 2, scope: !5914)
!5932 = !DILocation(line: 48, column: 19, scope: !5914)
!5933 = !DILocation(line: 49, column: 2, scope: !5914)
!5934 = !DILocation(line: 49, column: 19, scope: !5914)
!5935 = !DILocation(line: 50, column: 2, scope: !5914)
!5936 = !DILocation(line: 50, column: 16, scope: !5914)
!5937 = !DILocation(line: 50, column: 23, scope: !5914)
!5938 = !DILocation(line: 57, column: 12, scope: !5914)
!5939 = !DILocation(line: 58, column: 2, scope: !5914)
!5940 = !DILocation(line: 59, column: 7, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5942, file: !2, line: 59, column: 7)
!5942 = distinct !DILexicalBlock(scope: !5914, file: !2, line: 58, column: 30)
!5943 = !DILocation(line: 59, column: 18, scope: !5941)
!5944 = !DILocation(line: 59, column: 25, scope: !5941)
!5945 = !DILocation(line: 59, column: 31, scope: !5941)
!5946 = !DILocation(line: 59, column: 22, scope: !5941)
!5947 = !DILocation(line: 59, column: 35, scope: !5941)
!5948 = !DILocation(line: 60, column: 5, scope: !5941)
!5949 = !DILocation(line: 60, column: 35, scope: !5941)
!5950 = !DILocation(line: 60, column: 32, scope: !5941)
!5951 = !DILocation(line: 59, column: 7, scope: !5942)
!5952 = !DILocation(line: 61, column: 4, scope: !5941)
!5953 = distinct !{!5953, !5939, !5954, !5742, !5743}
!5954 = !DILocation(line: 75, column: 2, scope: !5914)
!5955 = !DILocation(line: 67, column: 7, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5942, file: !2, line: 67, column: 7)
!5957 = !DILocation(line: 67, column: 18, scope: !5956)
!5958 = !DILocation(line: 67, column: 24, scope: !5956)
!5959 = !DILocation(line: 67, column: 35, scope: !5956)
!5960 = !DILocation(line: 67, column: 38, scope: !5956)
!5961 = !DILocation(line: 67, column: 49, scope: !5956)
!5962 = !DILocation(line: 67, column: 55, scope: !5956)
!5963 = !DILocation(line: 67, column: 66, scope: !5956)
!5964 = !DILocation(line: 68, column: 5, scope: !5956)
!5965 = !DILocation(line: 68, column: 16, scope: !5956)
!5966 = !DILocation(line: 68, column: 22, scope: !5956)
!5967 = !DILocation(line: 67, column: 7, scope: !5942)
!5968 = !DILocation(line: 69, column: 4, scope: !5956)
!5969 = !DILocation(line: 71, column: 35, scope: !5942)
!5970 = !DILocation(line: 71, column: 19, scope: !5942)
!5971 = !DILocation(line: 71, column: 17, scope: !5942)
!5972 = !DILocation(line: 72, column: 8, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5942, file: !2, line: 72, column: 7)
!5974 = !DILocation(line: 72, column: 22, scope: !5973)
!5975 = !DILocation(line: 72, column: 26, scope: !5973)
!5976 = !DILocation(line: 72, column: 41, scope: !5973)
!5977 = !DILocation(line: 72, column: 46, scope: !5973)
!5978 = !DILocation(line: 72, column: 7, scope: !5942)
!5979 = !DILocation(line: 73, column: 4, scope: !5973)
!5980 = !DILocation(line: 74, column: 3, scope: !5942)
!5981 = !DILocation(line: 74, column: 6, scope: !5942)
!5982 = !DILocation(line: 74, column: 12, scope: !5942)
!5983 = !DILocation(line: 74, column: 17, scope: !5942)
!5984 = !DILocation(line: 74, column: 28, scope: !5942)
!5985 = !DILocation(line: 76, column: 1, scope: !5914)
!5986 = distinct !DISubprogram(name: "ehci_pre_add", scope: !2, file: !2, line: 84, type: !5919, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5987)
!5987 = !{!5988, !5989, !5990, !5991, !5992}
!5988 = !DILocalVariable(name: "pdev", arg: 1, scope: !5986, file: !2, line: 84, type: !234)
!5989 = !DILocalVariable(name: "hcd", arg: 2, scope: !5986, file: !2, line: 84, type: !5001)
!5990 = !DILocalVariable(name: "companion", arg: 3, scope: !5986, file: !2, line: 85, type: !234)
!5991 = !DILocalVariable(name: "companion_hcd", arg: 4, scope: !5986, file: !2, line: 85, type: !5001)
!5992 = !DILocalVariable(name: "udev", scope: !5986, file: !2, line: 87, type: !5026)
!5993 = !DILocation(line: 84, column: 42, scope: !5986)
!5994 = !DILocation(line: 84, column: 64, scope: !5986)
!5995 = !DILocation(line: 85, column: 19, scope: !5986)
!5996 = !DILocation(line: 85, column: 46, scope: !5986)
!5997 = !DILocation(line: 87, column: 2, scope: !5986)
!5998 = !DILocation(line: 87, column: 21, scope: !5986)
!5999 = !DILocation(line: 89, column: 22, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5986, file: !2, line: 89, column: 6)
!6001 = !DILocation(line: 89, column: 6, scope: !6000)
!6002 = !DILocation(line: 89, column: 6, scope: !5986)
!6003 = !DILocation(line: 90, column: 10, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !6000, file: !2, line: 89, column: 34)
!6005 = !DILocation(line: 90, column: 25, scope: !6004)
!6006 = !DILocation(line: 90, column: 30, scope: !6004)
!6007 = !DILocation(line: 90, column: 8, scope: !6004)
!6008 = !DILocation(line: 91, column: 3, scope: !6004)
!6009 = !DILocation(line: 92, column: 25, scope: !6004)
!6010 = !DILocation(line: 92, column: 3, scope: !6004)
!6011 = !DILocation(line: 93, column: 2, scope: !6004)
!6012 = !DILocation(line: 94, column: 1, scope: !5986)
!6013 = !DISubprogram(name: "usb_add_hcd", scope: !200, file: !200, line: 462, type: !6014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6014 = !DISubroutineType(types: !6015)
!6015 = !{!115, !5001, !13, !220}
!6016 = distinct !DISubprogram(name: "ehci_post_add", scope: !2, file: !2, line: 101, type: !5919, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6017)
!6017 = !{!6018, !6019, !6020, !6021, !6022}
!6018 = !DILocalVariable(name: "pdev", arg: 1, scope: !6016, file: !2, line: 101, type: !234)
!6019 = !DILocalVariable(name: "hcd", arg: 2, scope: !6016, file: !2, line: 101, type: !5001)
!6020 = !DILocalVariable(name: "companion", arg: 3, scope: !6016, file: !2, line: 102, type: !234)
!6021 = !DILocalVariable(name: "companion_hcd", arg: 4, scope: !6016, file: !2, line: 102, type: !5001)
!6022 = !DILocalVariable(name: "udev", scope: !6016, file: !2, line: 104, type: !5026)
!6023 = !DILocation(line: 101, column: 43, scope: !6016)
!6024 = !DILocation(line: 101, column: 65, scope: !6016)
!6025 = !DILocation(line: 102, column: 19, scope: !6016)
!6026 = !DILocation(line: 102, column: 46, scope: !6016)
!6027 = !DILocation(line: 104, column: 2, scope: !6016)
!6028 = !DILocation(line: 104, column: 21, scope: !6016)
!6029 = !DILocation(line: 106, column: 22, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6016, file: !2, line: 106, column: 6)
!6031 = !DILocation(line: 106, column: 6, scope: !6030)
!6032 = !DILocation(line: 106, column: 6, scope: !6016)
!6033 = !DILocation(line: 107, column: 24, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6035, file: !2, line: 107, column: 7)
!6035 = distinct !DILexicalBlock(scope: !6030, file: !2, line: 106, column: 34)
!6036 = !DILocation(line: 107, column: 30, scope: !6034)
!6037 = !DILocation(line: 107, column: 7, scope: !6034)
!6038 = !DILocation(line: 107, column: 7, scope: !6035)
!6039 = !DILocation(line: 110, column: 40, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6034, file: !2, line: 107, column: 36)
!6041 = !DILocation(line: 110, column: 45, scope: !6040)
!6042 = !DILocation(line: 110, column: 4, scope: !6040)
!6043 = !DILocation(line: 110, column: 19, scope: !6040)
!6044 = !DILocation(line: 110, column: 24, scope: !6040)
!6045 = !DILocation(line: 110, column: 37, scope: !6040)
!6046 = !DILocation(line: 111, column: 3, scope: !6040)
!6047 = !DILocation(line: 112, column: 10, scope: !6035)
!6048 = !DILocation(line: 112, column: 25, scope: !6035)
!6049 = !DILocation(line: 112, column: 30, scope: !6035)
!6050 = !DILocation(line: 112, column: 8, scope: !6035)
!6051 = !DILocation(line: 113, column: 25, scope: !6035)
!6052 = !DILocation(line: 113, column: 3, scope: !6035)
!6053 = !DILocation(line: 114, column: 3, scope: !6035)
!6054 = !DILocation(line: 115, column: 2, scope: !6035)
!6055 = !DILocation(line: 116, column: 1, scope: !6016)
!6056 = !DISubprogram(name: "up_write", scope: !1397, file: !1397, line: 203, type: !5898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6057 = !DISubprogram(name: "down_read", scope: !1397, file: !1397, line: 175, type: !5898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6058 = distinct !DISubprogram(name: "non_ehci_add", scope: !2, file: !2, line: 122, type: !5919, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6059)
!6059 = !{!6060, !6061, !6062, !6063}
!6060 = !DILocalVariable(name: "pdev", arg: 1, scope: !6058, file: !2, line: 122, type: !234)
!6061 = !DILocalVariable(name: "hcd", arg: 2, scope: !6058, file: !2, line: 122, type: !5001)
!6062 = !DILocalVariable(name: "companion", arg: 3, scope: !6058, file: !2, line: 123, type: !234)
!6063 = !DILocalVariable(name: "companion_hcd", arg: 4, scope: !6058, file: !2, line: 123, type: !5001)
!6064 = !DILocation(line: 122, column: 42, scope: !6058)
!6065 = !DILocation(line: 122, column: 64, scope: !6058)
!6066 = !DILocation(line: 123, column: 19, scope: !6058)
!6067 = !DILocation(line: 123, column: 46, scope: !6058)
!6068 = !DILocation(line: 125, column: 22, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6058, file: !2, line: 125, column: 6)
!6070 = !DILocation(line: 125, column: 6, scope: !6069)
!6071 = !DILocation(line: 125, column: 28, scope: !6069)
!6072 = !DILocation(line: 125, column: 31, scope: !6069)
!6073 = !DILocation(line: 125, column: 42, scope: !6069)
!6074 = !DILocation(line: 125, column: 48, scope: !6069)
!6075 = !DILocation(line: 125, column: 6, scope: !6058)
!6076 = !DILocation(line: 128, column: 29, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6069, file: !2, line: 125, column: 60)
!6078 = !DILocation(line: 128, column: 44, scope: !6077)
!6079 = !DILocation(line: 128, column: 3, scope: !6077)
!6080 = !DILocation(line: 128, column: 8, scope: !6077)
!6081 = !DILocation(line: 128, column: 13, scope: !6077)
!6082 = !DILocation(line: 128, column: 26, scope: !6077)
!6083 = !DILocation(line: 129, column: 2, scope: !6077)
!6084 = !DILocation(line: 130, column: 1, scope: !6058)
!6085 = !DISubprogram(name: "up_read", scope: !1397, file: !1397, line: 198, type: !5898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6086 = !DISubprogram(name: "device_wakeup_enable", scope: !4419, file: !4419, line: 109, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6087 = !DISubprogram(name: "pci_dev_run_wake", scope: !236, file: !236, line: 1405, type: !6088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!818, !234}
!6090 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !6091, file: !6091, line: 138, type: !4269, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6092)
!6091 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95dc537c0e4be945b3dc143d0bbabcd4")
!6092 = !{!6093}
!6093 = !DILocalVariable(name: "dev", arg: 1, scope: !6090, file: !6091, line: 138, type: !320)
!6094 = !DILocation(line: 138, column: 57, scope: !6090)
!6095 = !DILocation(line: 140, column: 21, scope: !6090)
!6096 = !DILocation(line: 140, column: 26, scope: !6090)
!6097 = !DILocation(line: 140, column: 32, scope: !6090)
!6098 = !DILocation(line: 140, column: 2, scope: !6090)
!6099 = !DILocation(line: 141, column: 1, scope: !6090)
!6100 = !DISubprogram(name: "usb_put_hcd", scope: !200, file: !200, line: 460, type: !5490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6101 = !DISubprogram(name: "pci_free_irq_vectors", scope: !236, file: !236, line: 1662, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6102 = !DISubprogram(name: "pci_disable_device", scope: !236, file: !236, line: 1316, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6103 = distinct !DISubprogram(name: "usb_hcd_pci_remove", scope: !2, file: !2, line: 311, type: !4769, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6104)
!6104 = !{!6105, !6106, !6107}
!6105 = !DILocalVariable(name: "dev", arg: 1, scope: !6103, file: !2, line: 311, type: !234)
!6106 = !DILocalVariable(name: "hcd", scope: !6103, file: !2, line: 313, type: !5001)
!6107 = !DILocalVariable(name: "hcd_driver_flags", scope: !6103, file: !2, line: 314, type: !115)
!6108 = !DILocation(line: 311, column: 41, scope: !6103)
!6109 = !DILocation(line: 313, column: 2, scope: !6103)
!6110 = !DILocation(line: 313, column: 19, scope: !6103)
!6111 = !DILocation(line: 314, column: 2, scope: !6103)
!6112 = !DILocation(line: 314, column: 8, scope: !6103)
!6113 = !DILocation(line: 316, column: 24, scope: !6103)
!6114 = !DILocation(line: 316, column: 8, scope: !6103)
!6115 = !DILocation(line: 316, column: 6, scope: !6103)
!6116 = !DILocation(line: 317, column: 7, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6103, file: !2, line: 317, column: 6)
!6118 = !DILocation(line: 317, column: 6, scope: !6103)
!6119 = !DILocation(line: 318, column: 3, scope: !6117)
!6120 = !DILocation(line: 320, column: 21, scope: !6103)
!6121 = !DILocation(line: 320, column: 26, scope: !6103)
!6122 = !DILocation(line: 320, column: 34, scope: !6103)
!6123 = !DILocation(line: 320, column: 19, scope: !6103)
!6124 = !DILocation(line: 322, column: 23, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6103, file: !2, line: 322, column: 6)
!6126 = !DILocation(line: 322, column: 6, scope: !6125)
!6127 = !DILocation(line: 322, column: 6, scope: !6103)
!6128 = !DILocation(line: 323, column: 28, scope: !6125)
!6129 = !DILocation(line: 323, column: 33, scope: !6125)
!6130 = !DILocation(line: 323, column: 3, scope: !6125)
!6131 = !DILocation(line: 329, column: 2, scope: !6103)
!6132 = !DILocation(line: 329, column: 2, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6103, file: !2, line: 329, column: 2)
!6134 = !DILocation(line: 330, column: 17, scope: !6103)
!6135 = !DILocation(line: 330, column: 2, scope: !6103)
!6136 = !DILocation(line: 331, column: 2, scope: !6103)
!6137 = !DILocation(line: 331, column: 2, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6103, file: !2, line: 331, column: 2)
!6139 = !DILocation(line: 334, column: 6, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6103, file: !2, line: 334, column: 6)
!6141 = !DILocation(line: 334, column: 11, scope: !6140)
!6142 = !DILocation(line: 334, column: 17, scope: !6140)
!6143 = !DILocation(line: 334, column: 6, scope: !6103)
!6144 = !DILocation(line: 335, column: 3, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6140, file: !2, line: 334, column: 29)
!6146 = !DILocation(line: 336, column: 22, scope: !6145)
!6147 = !DILocation(line: 336, column: 27, scope: !6145)
!6148 = !DILocation(line: 336, column: 3, scope: !6145)
!6149 = !DILocation(line: 337, column: 18, scope: !6145)
!6150 = !DILocation(line: 337, column: 3, scope: !6145)
!6151 = !DILocation(line: 338, column: 20, scope: !6145)
!6152 = !DILocation(line: 338, column: 25, scope: !6145)
!6153 = !DILocation(line: 338, column: 3, scope: !6145)
!6154 = !DILocation(line: 339, column: 3, scope: !6145)
!6155 = !DILocation(line: 340, column: 2, scope: !6145)
!6156 = !DILocation(line: 342, column: 3, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6140, file: !2, line: 340, column: 9)
!6158 = !DILocation(line: 343, column: 3, scope: !6157)
!6159 = !DILocation(line: 343, column: 8, scope: !6157)
!6160 = !DILocation(line: 343, column: 13, scope: !6157)
!6161 = !DILocation(line: 343, column: 26, scope: !6157)
!6162 = !DILocation(line: 344, column: 18, scope: !6157)
!6163 = !DILocation(line: 344, column: 3, scope: !6157)
!6164 = !DILocation(line: 345, column: 20, scope: !6157)
!6165 = !DILocation(line: 345, column: 25, scope: !6157)
!6166 = !DILocation(line: 345, column: 3, scope: !6157)
!6167 = !DILocation(line: 346, column: 3, scope: !6157)
!6168 = !DILocation(line: 348, column: 14, scope: !6103)
!6169 = !DILocation(line: 348, column: 2, scope: !6103)
!6170 = !DILocation(line: 349, column: 7, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6103, file: !2, line: 349, column: 6)
!6172 = !DILocation(line: 349, column: 24, scope: !6171)
!6173 = !DILocation(line: 349, column: 36, scope: !6171)
!6174 = !DILocation(line: 349, column: 6, scope: !6103)
!6175 = !DILocation(line: 350, column: 24, scope: !6171)
!6176 = !DILocation(line: 350, column: 3, scope: !6171)
!6177 = !DILocation(line: 351, column: 21, scope: !6103)
!6178 = !DILocation(line: 351, column: 2, scope: !6103)
!6179 = !DILocation(line: 352, column: 1, scope: !6103)
!6180 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !236, file: !236, line: 2109, type: !6181, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6183)
!6181 = !DISubroutineType(types: !6182)
!6182 = !{!217, !234}
!6183 = !{!6184}
!6184 = !DILocalVariable(name: "pdev", arg: 1, scope: !6180, file: !236, line: 2109, type: !234)
!6185 = !DILocation(line: 2109, column: 53, scope: !6180)
!6186 = !DILocation(line: 2111, column: 26, scope: !6180)
!6187 = !DILocation(line: 2111, column: 32, scope: !6180)
!6188 = !DILocation(line: 2111, column: 9, scope: !6180)
!6189 = !DILocation(line: 2111, column: 2, scope: !6180)
!6190 = distinct !DISubprogram(name: "pm_runtime_get_noresume", scope: !6091, file: !6091, line: 127, type: !4269, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6191)
!6191 = !{!6192}
!6192 = !DILocalVariable(name: "dev", arg: 1, scope: !6190, file: !6091, line: 127, type: !320)
!6193 = !DILocation(line: 127, column: 59, scope: !6190)
!6194 = !DILocation(line: 129, column: 14, scope: !6190)
!6195 = !DILocation(line: 129, column: 19, scope: !6190)
!6196 = !DILocation(line: 129, column: 25, scope: !6190)
!6197 = !DILocation(line: 129, column: 2, scope: !6190)
!6198 = !DILocation(line: 130, column: 1, scope: !6190)
!6199 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6200, file: !6200, line: 70, type: !1099, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6200 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!6201 = !DILocation(line: 72, column: 2, scope: !6199)
!6202 = !DILocation(line: 73, column: 1, scope: !6199)
!6203 = !DISubprogram(name: "usb_hcd_irq", scope: !200, file: !200, line: 509, type: !6204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6204 = !DISubroutineType(types: !6205)
!6205 = !{!5000, !115, !217}
!6206 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !6200, file: !6200, line: 75, type: !1099, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6207 = !DILocation(line: 77, column: 2, scope: !6206)
!6208 = !DILocation(line: 78, column: 1, scope: !6206)
!6209 = distinct !DISubprogram(name: "ehci_remove", scope: !2, file: !2, line: 133, type: !5919, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6210)
!6210 = !{!6211, !6212, !6213, !6214}
!6211 = !DILocalVariable(name: "pdev", arg: 1, scope: !6209, file: !2, line: 133, type: !234)
!6212 = !DILocalVariable(name: "hcd", arg: 2, scope: !6209, file: !2, line: 133, type: !5001)
!6213 = !DILocalVariable(name: "companion", arg: 3, scope: !6209, file: !2, line: 134, type: !234)
!6214 = !DILocalVariable(name: "companion_hcd", arg: 4, scope: !6209, file: !2, line: 134, type: !5001)
!6215 = !DILocation(line: 133, column: 41, scope: !6209)
!6216 = !DILocation(line: 133, column: 63, scope: !6209)
!6217 = !DILocation(line: 134, column: 19, scope: !6209)
!6218 = !DILocation(line: 134, column: 46, scope: !6209)
!6219 = !DILocation(line: 136, column: 22, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6209, file: !2, line: 136, column: 6)
!6221 = !DILocation(line: 136, column: 6, scope: !6220)
!6222 = !DILocation(line: 136, column: 6, scope: !6209)
!6223 = !DILocation(line: 137, column: 3, scope: !6220)
!6224 = !DILocation(line: 137, column: 18, scope: !6220)
!6225 = !DILocation(line: 137, column: 23, scope: !6220)
!6226 = !DILocation(line: 137, column: 36, scope: !6220)
!6227 = !DILocation(line: 138, column: 1, scope: !6209)
!6228 = !DISubprogram(name: "usb_remove_hcd", scope: !200, file: !200, line: 464, type: !5490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6229 = distinct !DISubprogram(name: "usb_hcd_pci_shutdown", scope: !2, file: !2, line: 359, type: !4769, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6230)
!6230 = !{!6231, !6232}
!6231 = !DILocalVariable(name: "dev", arg: 1, scope: !6229, file: !2, line: 359, type: !234)
!6232 = !DILocalVariable(name: "hcd", scope: !6229, file: !2, line: 361, type: !5001)
!6233 = !DILocation(line: 359, column: 43, scope: !6229)
!6234 = !DILocation(line: 361, column: 2, scope: !6229)
!6235 = !DILocation(line: 361, column: 19, scope: !6229)
!6236 = !DILocation(line: 363, column: 24, scope: !6229)
!6237 = !DILocation(line: 363, column: 8, scope: !6229)
!6238 = !DILocation(line: 363, column: 6, scope: !6229)
!6239 = !DILocation(line: 364, column: 7, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6229, file: !2, line: 364, column: 6)
!6241 = !DILocation(line: 364, column: 6, scope: !6229)
!6242 = !DILocation(line: 365, column: 3, scope: !6240)
!6243 = !DILocation(line: 367, column: 6, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6229, file: !2, line: 367, column: 6)
!6245 = !DILocation(line: 367, column: 52, scope: !6244)
!6246 = !DILocation(line: 368, column: 4, scope: !6244)
!6247 = !DILocation(line: 368, column: 9, scope: !6244)
!6248 = !DILocation(line: 368, column: 17, scope: !6244)
!6249 = !DILocation(line: 367, column: 6, scope: !6229)
!6250 = !DILocation(line: 369, column: 3, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6244, file: !2, line: 368, column: 27)
!6252 = !DILocation(line: 369, column: 8, scope: !6251)
!6253 = !DILocation(line: 369, column: 16, scope: !6251)
!6254 = !DILocation(line: 369, column: 25, scope: !6251)
!6255 = !DILocation(line: 370, column: 30, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 370, column: 7)
!6257 = !DILocation(line: 370, column: 7, scope: !6256)
!6258 = !DILocation(line: 370, column: 35, scope: !6256)
!6259 = !DILocation(line: 370, column: 38, scope: !6256)
!6260 = !DILocation(line: 370, column: 43, scope: !6256)
!6261 = !DILocation(line: 370, column: 47, scope: !6256)
!6262 = !DILocation(line: 370, column: 7, scope: !6251)
!6263 = !DILocation(line: 371, column: 13, scope: !6256)
!6264 = !DILocation(line: 371, column: 18, scope: !6256)
!6265 = !DILocation(line: 371, column: 23, scope: !6256)
!6266 = !DILocation(line: 371, column: 4, scope: !6256)
!6267 = !DILocation(line: 372, column: 22, scope: !6251)
!6268 = !DILocation(line: 372, column: 3, scope: !6251)
!6269 = !DILocation(line: 373, column: 2, scope: !6251)
!6270 = !DILocation(line: 374, column: 1, scope: !6229)
!6271 = distinct !DISubprogram(name: "const_test_bit", scope: !6272, file: !6272, line: 166, type: !6273, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6278)
!6272 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6273 = !DISubroutineType(types: !6274)
!6274 = !{!818, !220, !6275}
!6275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6276, size: 64)
!6276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6277)
!6277 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !220)
!6278 = !{!6279, !6280, !6281, !6282, !6283}
!6279 = !DILocalVariable(name: "nr", arg: 1, scope: !6271, file: !6272, line: 166, type: !220)
!6280 = !DILocalVariable(name: "addr", arg: 2, scope: !6271, file: !6272, line: 166, type: !6275)
!6281 = !DILocalVariable(name: "p", scope: !6271, file: !6272, line: 168, type: !221)
!6282 = !DILocalVariable(name: "mask", scope: !6271, file: !6272, line: 169, type: !220)
!6283 = !DILocalVariable(name: "val", scope: !6271, file: !6272, line: 170, type: !220)
!6284 = !DILocation(line: 166, column: 30, scope: !6271)
!6285 = !DILocation(line: 166, column: 64, scope: !6271)
!6286 = !DILocation(line: 168, column: 2, scope: !6271)
!6287 = !DILocation(line: 168, column: 23, scope: !6271)
!6288 = !DILocation(line: 168, column: 50, scope: !6271)
!6289 = !DILocation(line: 168, column: 57, scope: !6271)
!6290 = !DILocation(line: 168, column: 55, scope: !6271)
!6291 = !DILocation(line: 169, column: 2, scope: !6271)
!6292 = !DILocation(line: 169, column: 16, scope: !6271)
!6293 = !DILocation(line: 169, column: 23, scope: !6271)
!6294 = !DILocation(line: 170, column: 2, scope: !6271)
!6295 = !DILocation(line: 170, column: 16, scope: !6271)
!6296 = !DILocation(line: 170, column: 23, scope: !6271)
!6297 = !DILocation(line: 170, column: 22, scope: !6271)
!6298 = !DILocation(line: 172, column: 12, scope: !6271)
!6299 = !DILocation(line: 172, column: 18, scope: !6271)
!6300 = !DILocation(line: 172, column: 16, scope: !6271)
!6301 = !DILocation(line: 172, column: 10, scope: !6271)
!6302 = !DILocation(line: 172, column: 9, scope: !6271)
!6303 = !DILocation(line: 173, column: 1, scope: !6271)
!6304 = !DILocation(line: 172, column: 2, scope: !6271)
!6305 = distinct !DISubprogram(name: "_test_bit", scope: !6306, file: !6306, line: 139, type: !6273, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6307)
!6306 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6307 = !{!6308, !6309}
!6308 = !DILocalVariable(name: "nr", arg: 1, scope: !6305, file: !6306, line: 139, type: !220)
!6309 = !DILocalVariable(name: "addr", arg: 2, scope: !6305, file: !6306, line: 139, type: !6275)
!6310 = !DILocation(line: 139, column: 25, scope: !6305)
!6311 = !DILocation(line: 139, column: 59, scope: !6305)
!6312 = !DILocation(line: 141, column: 25, scope: !6305)
!6313 = !DILocation(line: 141, column: 32, scope: !6305)
!6314 = !DILocation(line: 141, column: 30, scope: !6305)
!6315 = !DILocation(line: 141, column: 2, scope: !6305)
!6316 = !DILocation(line: 142, column: 23, scope: !6305)
!6317 = !DILocation(line: 142, column: 27, scope: !6305)
!6318 = !DILocation(line: 142, column: 9, scope: !6305)
!6319 = !DILocation(line: 142, column: 2, scope: !6305)
!6320 = !DISubprogram(name: "usb_hcd_is_primary_hcd", scope: !200, file: !200, line: 461, type: !5476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6321 = !DISubprogram(name: "free_irq", scope: !308, file: !308, line: 196, type: !6322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!2638, !13, !217}
!6324 = distinct !DISubprogram(name: "hcd_pci_suspend", scope: !2, file: !2, line: 519, type: !4278, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6325)
!6325 = !{!6326}
!6326 = !DILocalVariable(name: "dev", arg: 1, scope: !6324, file: !2, line: 519, type: !320)
!6327 = !DILocation(line: 519, column: 43, scope: !6324)
!6328 = !DILocation(line: 521, column: 24, scope: !6324)
!6329 = !DILocation(line: 521, column: 29, scope: !6324)
!6330 = !DILocation(line: 521, column: 9, scope: !6324)
!6331 = !DILocation(line: 521, column: 2, scope: !6324)
!6332 = distinct !DISubprogram(name: "hcd_pci_resume", scope: !2, file: !2, line: 580, type: !4278, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6333)
!6333 = !{!6334}
!6334 = !DILocalVariable(name: "dev", arg: 1, scope: !6332, file: !2, line: 580, type: !320)
!6335 = !DILocation(line: 580, column: 42, scope: !6332)
!6336 = !DILocation(line: 582, column: 23, scope: !6332)
!6337 = !DILocation(line: 582, column: 28, scope: !6332)
!6338 = !DILocation(line: 582, column: 9, scope: !6332)
!6339 = !DILocation(line: 582, column: 2, scope: !6332)
!6340 = distinct !DISubprogram(name: "hcd_pci_restore", scope: !2, file: !2, line: 585, type: !4278, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6341)
!6341 = !{!6342}
!6342 = !DILocalVariable(name: "dev", arg: 1, scope: !6340, file: !2, line: 585, type: !320)
!6343 = !DILocation(line: 585, column: 43, scope: !6340)
!6344 = !DILocation(line: 587, column: 23, scope: !6340)
!6345 = !DILocation(line: 587, column: 28, scope: !6340)
!6346 = !DILocation(line: 587, column: 9, scope: !6340)
!6347 = !DILocation(line: 587, column: 2, scope: !6340)
!6348 = distinct !DISubprogram(name: "hcd_pci_poweroff_late", scope: !2, file: !2, line: 563, type: !4278, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6349)
!6349 = !{!6350, !6351, !6352, !6354}
!6350 = !DILocalVariable(name: "dev", arg: 1, scope: !6348, file: !2, line: 563, type: !320)
!6351 = !DILocalVariable(name: "pci_dev", scope: !6348, file: !2, line: 565, type: !234)
!6352 = !DILocalVariable(name: "__mptr", scope: !6353, file: !2, line: 565, type: !217)
!6353 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 565, column: 29)
!6354 = !DILocalVariable(name: "hcd", scope: !6348, file: !2, line: 566, type: !5001)
!6355 = !DILocation(line: 563, column: 49, scope: !6348)
!6356 = !DILocation(line: 565, column: 2, scope: !6348)
!6357 = !DILocation(line: 565, column: 19, scope: !6348)
!6358 = !DILocation(line: 565, column: 29, scope: !6353)
!6359 = !DILocation(line: 565, column: 29, scope: !6348)
!6360 = !DILocation(line: 566, column: 2, scope: !6348)
!6361 = !DILocation(line: 566, column: 19, scope: !6348)
!6362 = !DILocation(line: 566, column: 41, scope: !6348)
!6363 = !DILocation(line: 566, column: 25, scope: !6348)
!6364 = !DILocation(line: 568, column: 6, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 568, column: 6)
!6366 = !DILocation(line: 568, column: 11, scope: !6365)
!6367 = !DILocation(line: 568, column: 19, scope: !6365)
!6368 = !DILocation(line: 568, column: 37, scope: !6365)
!6369 = !DILocation(line: 568, column: 41, scope: !6365)
!6370 = !DILocation(line: 568, column: 6, scope: !6348)
!6371 = !DILocation(line: 569, column: 10, scope: !6365)
!6372 = !DILocation(line: 569, column: 15, scope: !6365)
!6373 = !DILocation(line: 569, column: 23, scope: !6365)
!6374 = !DILocation(line: 569, column: 41, scope: !6365)
!6375 = !DILocation(line: 569, column: 64, scope: !6365)
!6376 = !DILocation(line: 569, column: 46, scope: !6365)
!6377 = !DILocation(line: 569, column: 3, scope: !6365)
!6378 = !DILocation(line: 571, column: 2, scope: !6348)
!6379 = !DILocation(line: 572, column: 1, scope: !6348)
!6380 = distinct !DISubprogram(name: "hcd_pci_suspend_noirq", scope: !2, file: !2, line: 524, type: !4278, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6381)
!6381 = !{!6382, !6383, !6384, !6386, !6387}
!6382 = !DILocalVariable(name: "dev", arg: 1, scope: !6380, file: !2, line: 524, type: !320)
!6383 = !DILocalVariable(name: "pci_dev", scope: !6380, file: !2, line: 526, type: !234)
!6384 = !DILocalVariable(name: "__mptr", scope: !6385, file: !2, line: 526, type: !217)
!6385 = distinct !DILexicalBlock(scope: !6380, file: !2, line: 526, column: 29)
!6386 = !DILocalVariable(name: "hcd", scope: !6380, file: !2, line: 527, type: !5001)
!6387 = !DILocalVariable(name: "retval", scope: !6380, file: !2, line: 528, type: !115)
!6388 = !DILocation(line: 524, column: 49, scope: !6380)
!6389 = !DILocation(line: 526, column: 2, scope: !6380)
!6390 = !DILocation(line: 526, column: 19, scope: !6380)
!6391 = !DILocation(line: 526, column: 29, scope: !6385)
!6392 = !DILocation(line: 526, column: 29, scope: !6380)
!6393 = !DILocation(line: 527, column: 2, scope: !6380)
!6394 = !DILocation(line: 527, column: 19, scope: !6380)
!6395 = !DILocation(line: 527, column: 41, scope: !6380)
!6396 = !DILocation(line: 527, column: 25, scope: !6380)
!6397 = !DILocation(line: 528, column: 2, scope: !6380)
!6398 = !DILocation(line: 528, column: 8, scope: !6380)
!6399 = !DILocation(line: 530, column: 36, scope: !6380)
!6400 = !DILocation(line: 530, column: 11, scope: !6380)
!6401 = !DILocation(line: 530, column: 9, scope: !6380)
!6402 = !DILocation(line: 531, column: 6, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6380, file: !2, line: 531, column: 6)
!6404 = !DILocation(line: 531, column: 6, scope: !6380)
!6405 = !DILocation(line: 532, column: 10, scope: !6403)
!6406 = !DILocation(line: 532, column: 3, scope: !6403)
!6407 = !DILocation(line: 534, column: 17, scope: !6380)
!6408 = !DILocation(line: 534, column: 2, scope: !6380)
!6409 = !DILocation(line: 540, column: 6, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6380, file: !2, line: 540, column: 6)
!6411 = !DILocation(line: 540, column: 6, scope: !6380)
!6412 = !DILocation(line: 541, column: 28, scope: !6410)
!6413 = !DILocation(line: 541, column: 3, scope: !6410)
!6414 = !DILocation(line: 547, column: 32, scope: !6380)
!6415 = !DILocation(line: 547, column: 11, scope: !6380)
!6416 = !DILocation(line: 547, column: 9, scope: !6380)
!6417 = !DILocation(line: 548, column: 6, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6380, file: !2, line: 548, column: 6)
!6419 = !DILocation(line: 548, column: 13, scope: !6418)
!6420 = !DILocation(line: 548, column: 6, scope: !6380)
!6421 = !DILocation(line: 550, column: 10, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6418, file: !2, line: 548, column: 22)
!6423 = !DILocation(line: 551, column: 2, scope: !6422)
!6424 = !DILocation(line: 551, column: 13, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6418, file: !2, line: 551, column: 13)
!6426 = !DILocation(line: 551, column: 20, scope: !6425)
!6427 = !DILocation(line: 551, column: 13, scope: !6418)
!6428 = !DILocation(line: 554, column: 2, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6425, file: !2, line: 551, column: 26)
!6430 = !DILocation(line: 555, column: 3, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6425, file: !2, line: 554, column: 9)
!6432 = !DILocation(line: 555, column: 3, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6431, file: !2, line: 555, column: 3)
!6434 = !DILocation(line: 556, column: 10, scope: !6431)
!6435 = !DILocation(line: 556, column: 3, scope: !6431)
!6436 = !DILocation(line: 559, column: 20, scope: !6380)
!6437 = !DILocation(line: 559, column: 2, scope: !6380)
!6438 = !DILocation(line: 560, column: 9, scope: !6380)
!6439 = !DILocation(line: 560, column: 2, scope: !6380)
!6440 = !DILocation(line: 561, column: 1, scope: !6380)
!6441 = distinct !DISubprogram(name: "hcd_pci_resume_noirq", scope: !2, file: !2, line: 574, type: !4278, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6442)
!6442 = !{!6443, !6444}
!6443 = !DILocalVariable(name: "dev", arg: 1, scope: !6441, file: !2, line: 574, type: !320)
!6444 = !DILocalVariable(name: "__mptr", scope: !6445, file: !2, line: 576, type: !217)
!6445 = distinct !DILexicalBlock(scope: !6441, file: !2, line: 576, column: 20)
!6446 = !DILocation(line: 574, column: 48, scope: !6441)
!6447 = !DILocation(line: 576, column: 20, scope: !6445)
!6448 = !DILocation(line: 576, column: 20, scope: !6441)
!6449 = !DILocation(line: 576, column: 2, scope: !6441)
!6450 = !DILocation(line: 577, column: 2, scope: !6441)
!6451 = distinct !DISubprogram(name: "check_root_hub_suspended", scope: !2, file: !2, line: 400, type: !4278, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6452)
!6452 = !{!6453, !6454}
!6453 = !DILocalVariable(name: "dev", arg: 1, scope: !6451, file: !2, line: 400, type: !320)
!6454 = !DILocalVariable(name: "hcd", scope: !6451, file: !2, line: 402, type: !5001)
!6455 = !DILocation(line: 400, column: 52, scope: !6451)
!6456 = !DILocation(line: 402, column: 2, scope: !6451)
!6457 = !DILocation(line: 402, column: 19, scope: !6451)
!6458 = !DILocation(line: 402, column: 41, scope: !6451)
!6459 = !DILocation(line: 402, column: 25, scope: !6451)
!6460 = !DILocation(line: 404, column: 6, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6451, file: !2, line: 404, column: 6)
!6462 = !DILocation(line: 404, column: 6, scope: !6451)
!6463 = !DILocation(line: 405, column: 3, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6465, file: !2, line: 405, column: 3)
!6465 = distinct !DILexicalBlock(scope: !6461, file: !2, line: 404, column: 27)
!6466 = !DILocation(line: 405, column: 3, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6464, file: !2, line: 405, column: 3)
!6468 = !DILocation(line: 406, column: 3, scope: !6465)
!6469 = !DILocation(line: 408, column: 6, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6451, file: !2, line: 408, column: 6)
!6471 = !DILocation(line: 408, column: 11, scope: !6470)
!6472 = !DILocation(line: 408, column: 6, scope: !6451)
!6473 = !DILocation(line: 409, column: 9, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6470, file: !2, line: 408, column: 23)
!6475 = !DILocation(line: 409, column: 14, scope: !6474)
!6476 = !DILocation(line: 409, column: 7, scope: !6474)
!6477 = !DILocation(line: 410, column: 7, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6474, file: !2, line: 410, column: 7)
!6479 = !DILocation(line: 410, column: 7, scope: !6474)
!6480 = !DILocation(line: 411, column: 4, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6482, file: !2, line: 411, column: 4)
!6482 = distinct !DILexicalBlock(scope: !6478, file: !2, line: 410, column: 28)
!6483 = !DILocation(line: 411, column: 4, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6481, file: !2, line: 411, column: 4)
!6485 = !DILocation(line: 412, column: 4, scope: !6482)
!6486 = !DILocation(line: 414, column: 2, scope: !6474)
!6487 = !DILocation(line: 415, column: 2, scope: !6451)
!6488 = !DILocation(line: 416, column: 1, scope: !6451)
!6489 = distinct !DISubprogram(name: "hcd_pci_runtime_suspend", scope: !2, file: !2, line: 601, type: !4278, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6490)
!6490 = !{!6491, !6492, !6493}
!6491 = !DILocalVariable(name: "dev", arg: 1, scope: !6489, file: !2, line: 601, type: !320)
!6492 = !DILocalVariable(name: "retval", scope: !6489, file: !2, line: 603, type: !115)
!6493 = !DILocalVariable(name: "__mptr", scope: !6494, file: !2, line: 607, type: !217)
!6494 = distinct !DILexicalBlock(scope: !6495, file: !2, line: 607, column: 21)
!6495 = distinct !DILexicalBlock(scope: !6489, file: !2, line: 606, column: 6)
!6496 = !DILocation(line: 601, column: 51, scope: !6489)
!6497 = !DILocation(line: 603, column: 2, scope: !6489)
!6498 = !DILocation(line: 603, column: 6, scope: !6489)
!6499 = !DILocation(line: 605, column: 26, scope: !6489)
!6500 = !DILocation(line: 605, column: 31, scope: !6489)
!6501 = !DILocation(line: 605, column: 11, scope: !6489)
!6502 = !DILocation(line: 605, column: 9, scope: !6489)
!6503 = !DILocation(line: 606, column: 6, scope: !6495)
!6504 = !DILocation(line: 606, column: 13, scope: !6495)
!6505 = !DILocation(line: 606, column: 6, scope: !6489)
!6506 = !DILocation(line: 607, column: 21, scope: !6494)
!6507 = !DILocation(line: 607, column: 21, scope: !6495)
!6508 = !DILocation(line: 607, column: 3, scope: !6495)
!6509 = !DILocation(line: 609, column: 9, scope: !6489)
!6510 = !DILocation(line: 610, column: 1, scope: !6489)
!6511 = !DILocation(line: 609, column: 2, scope: !6489)
!6512 = distinct !DISubprogram(name: "hcd_pci_runtime_resume", scope: !2, file: !2, line: 612, type: !4278, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6513)
!6513 = !{!6514, !6515, !6516}
!6514 = !DILocalVariable(name: "dev", arg: 1, scope: !6512, file: !2, line: 612, type: !320)
!6515 = !DILocalVariable(name: "retval", scope: !6512, file: !2, line: 614, type: !115)
!6516 = !DILocalVariable(name: "__mptr", scope: !6517, file: !2, line: 616, type: !217)
!6517 = distinct !DILexicalBlock(scope: !6512, file: !2, line: 616, column: 20)
!6518 = !DILocation(line: 612, column: 50, scope: !6512)
!6519 = !DILocation(line: 614, column: 2, scope: !6512)
!6520 = !DILocation(line: 614, column: 6, scope: !6512)
!6521 = !DILocation(line: 616, column: 20, scope: !6517)
!6522 = !DILocation(line: 616, column: 20, scope: !6512)
!6523 = !DILocation(line: 616, column: 2, scope: !6512)
!6524 = !DILocation(line: 617, column: 25, scope: !6512)
!6525 = !DILocation(line: 617, column: 30, scope: !6512)
!6526 = !DILocation(line: 617, column: 11, scope: !6512)
!6527 = !DILocation(line: 617, column: 9, scope: !6512)
!6528 = !DILocation(line: 619, column: 9, scope: !6512)
!6529 = !DILocation(line: 620, column: 1, scope: !6512)
!6530 = !DILocation(line: 619, column: 2, scope: !6512)
!6531 = distinct !DISubprogram(name: "dev_name", scope: !100, file: !100, line: 858, type: !6532, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6534)
!6532 = !DISubroutineType(types: !6533)
!6533 = !{!268, !4260}
!6534 = !{!6535}
!6535 = !DILocalVariable(name: "dev", arg: 1, scope: !6531, file: !100, line: 858, type: !4260)
!6536 = !DILocation(line: 858, column: 57, scope: !6531)
!6537 = !DILocation(line: 861, column: 6, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6531, file: !100, line: 861, column: 6)
!6539 = !DILocation(line: 861, column: 11, scope: !6538)
!6540 = !DILocation(line: 861, column: 6, scope: !6531)
!6541 = !DILocation(line: 862, column: 10, scope: !6538)
!6542 = !DILocation(line: 862, column: 15, scope: !6538)
!6543 = !DILocation(line: 862, column: 3, scope: !6538)
!6544 = !DILocation(line: 864, column: 23, scope: !6531)
!6545 = !DILocation(line: 864, column: 28, scope: !6531)
!6546 = !DILocation(line: 864, column: 9, scope: !6531)
!6547 = !DILocation(line: 864, column: 2, scope: !6531)
!6548 = !DILocation(line: 865, column: 1, scope: !6531)
!6549 = distinct !DISubprogram(name: "kobject_name", scope: !325, file: !325, line: 87, type: !391, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6550)
!6550 = !{!6551}
!6551 = !DILocalVariable(name: "kobj", arg: 1, scope: !6549, file: !325, line: 87, type: !386)
!6552 = !DILocation(line: 87, column: 62, scope: !6549)
!6553 = !DILocation(line: 89, column: 9, scope: !6549)
!6554 = !DILocation(line: 89, column: 15, scope: !6549)
!6555 = !DILocation(line: 89, column: 2, scope: !6549)
!6556 = !DISubprogram(name: "pci_get_device", scope: !236, file: !236, line: 1176, type: !6557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6557 = !DISubroutineType(types: !6558)
!6558 = !{!234, !13, !13, !234}
!6559 = distinct !DISubprogram(name: "is_ohci_or_uhci", scope: !2, file: !2, line: 36, type: !4777, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6560)
!6560 = !{!6561}
!6561 = !DILocalVariable(name: "pdev", arg: 1, scope: !6559, file: !2, line: 36, type: !234)
!6562 = !DILocation(line: 36, column: 51, scope: !6559)
!6563 = !DILocation(line: 38, column: 9, scope: !6559)
!6564 = !DILocation(line: 38, column: 15, scope: !6559)
!6565 = !DILocation(line: 38, column: 21, scope: !6559)
!6566 = !DILocation(line: 38, column: 32, scope: !6559)
!6567 = !DILocation(line: 38, column: 35, scope: !6559)
!6568 = !DILocation(line: 38, column: 41, scope: !6559)
!6569 = !DILocation(line: 38, column: 47, scope: !6559)
!6570 = !DILocation(line: 38, column: 2, scope: !6559)
!6571 = distinct !DISubprogram(name: "device_lock", scope: !100, file: !100, line: 990, type: !4269, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6572)
!6572 = !{!6573}
!6573 = !DILocalVariable(name: "dev", arg: 1, scope: !6571, file: !100, line: 990, type: !320)
!6574 = !DILocation(line: 990, column: 47, scope: !6571)
!6575 = !DILocation(line: 992, column: 14, scope: !6571)
!6576 = !DILocation(line: 992, column: 19, scope: !6571)
!6577 = !DILocation(line: 992, column: 2, scope: !6571)
!6578 = !DILocation(line: 993, column: 1, scope: !6571)
!6579 = !DISubprogram(name: "usb_set_configuration", scope: !6580, file: !6580, line: 51, type: !6581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6580 = !DIFile(filename: "drivers/usb/core/usb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "590c23c9b7ee07b74c349fd52cb82ac1")
!6581 = !DISubroutineType(types: !6582)
!6582 = !{!115, !5026, !115}
!6583 = !DISubprogram(name: "mutex_lock", scope: !739, file: !739, line: 227, type: !6584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6584 = !DISubroutineType(types: !6585)
!6585 = !{null, !5459}
!6586 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !100, file: !100, line: 916, type: !6587, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6589)
!6587 = !DISubroutineType(types: !6588)
!6588 = !{!217, !4260}
!6589 = !{!6590}
!6590 = !DILocalVariable(name: "dev", arg: 1, scope: !6586, file: !100, line: 916, type: !4260)
!6591 = !DILocation(line: 916, column: 58, scope: !6586)
!6592 = !DILocation(line: 918, column: 9, scope: !6586)
!6593 = !DILocation(line: 918, column: 14, scope: !6586)
!6594 = !DILocation(line: 918, column: 2, scope: !6586)
!6595 = distinct !DISubprogram(name: "device_unlock", scope: !100, file: !100, line: 1005, type: !4269, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6596)
!6596 = !{!6597}
!6597 = !DILocalVariable(name: "dev", arg: 1, scope: !6595, file: !100, line: 1005, type: !320)
!6598 = !DILocation(line: 1005, column: 49, scope: !6595)
!6599 = !DILocation(line: 1007, column: 16, scope: !6595)
!6600 = !DILocation(line: 1007, column: 21, scope: !6595)
!6601 = !DILocation(line: 1007, column: 2, scope: !6595)
!6602 = !DILocation(line: 1008, column: 1, scope: !6595)
!6603 = !DISubprogram(name: "mutex_unlock", scope: !739, file: !739, line: 246, type: !6584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6604 = distinct !DISubprogram(name: "atomic_add_unless", scope: !6605, file: !6605, line: 1504, type: !6606, scopeLine: 1505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6609)
!6605 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6606 = !DISubroutineType(types: !6607)
!6607 = !{!818, !6608, !115, !115}
!6608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!6609 = !{!6610, !6611, !6612}
!6610 = !DILocalVariable(name: "v", arg: 1, scope: !6604, file: !6605, line: 1504, type: !6608)
!6611 = !DILocalVariable(name: "a", arg: 2, scope: !6604, file: !6605, line: 1504, type: !115)
!6612 = !DILocalVariable(name: "u", arg: 3, scope: !6604, file: !6605, line: 1504, type: !115)
!6613 = !DILocation(line: 1504, column: 29, scope: !6604)
!6614 = !DILocation(line: 1504, column: 36, scope: !6604)
!6615 = !DILocation(line: 1504, column: 43, scope: !6604)
!6616 = !DILocation(line: 1506, column: 2, scope: !6604)
!6617 = !DILocation(line: 1506, column: 2, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6604, file: !6605, line: 1506, column: 2)
!6619 = !DILocation(line: 1507, column: 31, scope: !6604)
!6620 = !DILocation(line: 1507, column: 2, scope: !6604)
!6621 = !DILocation(line: 1508, column: 31, scope: !6604)
!6622 = !DILocation(line: 1508, column: 34, scope: !6604)
!6623 = !DILocation(line: 1508, column: 37, scope: !6604)
!6624 = !DILocation(line: 1508, column: 9, scope: !6604)
!6625 = !DILocation(line: 1508, column: 2, scope: !6604)
!6626 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6627, file: !6627, line: 94, type: !6628, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6633)
!6627 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6628 = !DISubroutineType(types: !6629)
!6629 = !{null, !6630, !450}
!6630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6631, size: 64)
!6631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6632)
!6632 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6633 = !{!6634, !6635}
!6634 = !DILocalVariable(name: "v", arg: 1, scope: !6626, file: !6627, line: 94, type: !6630)
!6635 = !DILocalVariable(name: "size", arg: 2, scope: !6626, file: !6627, line: 94, type: !450)
!6636 = !DILocation(line: 94, column: 79, scope: !6626)
!6637 = !DILocation(line: 94, column: 89, scope: !6626)
!6638 = !DILocation(line: 96, column: 20, scope: !6626)
!6639 = !DILocation(line: 96, column: 23, scope: !6626)
!6640 = !DILocation(line: 96, column: 2, scope: !6626)
!6641 = !DILocation(line: 97, column: 2, scope: !6626)
!6642 = !DILocation(line: 98, column: 1, scope: !6626)
!6643 = distinct !DISubprogram(name: "raw_atomic_add_unless", scope: !6644, file: !6644, line: 2428, type: !6606, scopeLine: 2429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6645)
!6644 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6645 = !{!6646, !6647, !6648}
!6646 = !DILocalVariable(name: "v", arg: 1, scope: !6643, file: !6644, line: 2428, type: !6608)
!6647 = !DILocalVariable(name: "a", arg: 2, scope: !6643, file: !6644, line: 2428, type: !115)
!6648 = !DILocalVariable(name: "u", arg: 3, scope: !6643, file: !6644, line: 2428, type: !115)
!6649 = !DILocation(line: 2428, column: 33, scope: !6643)
!6650 = !DILocation(line: 2428, column: 40, scope: !6643)
!6651 = !DILocation(line: 2428, column: 47, scope: !6643)
!6652 = !DILocation(line: 2433, column: 37, scope: !6643)
!6653 = !DILocation(line: 2433, column: 40, scope: !6643)
!6654 = !DILocation(line: 2433, column: 43, scope: !6643)
!6655 = !DILocation(line: 2433, column: 9, scope: !6643)
!6656 = !DILocation(line: 2433, column: 49, scope: !6643)
!6657 = !DILocation(line: 2433, column: 46, scope: !6643)
!6658 = !DILocation(line: 2433, column: 2, scope: !6643)
!6659 = distinct !DISubprogram(name: "kasan_check_write", scope: !6660, file: !6660, line: 44, type: !6661, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6663)
!6660 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6661 = !DISubroutineType(types: !6662)
!6662 = !{!818, !6630, !13}
!6663 = !{!6664, !6665}
!6664 = !DILocalVariable(name: "p", arg: 1, scope: !6659, file: !6660, line: 44, type: !6630)
!6665 = !DILocalVariable(name: "size", arg: 2, scope: !6659, file: !6660, line: 44, type: !13)
!6666 = !DILocation(line: 44, column: 59, scope: !6659)
!6667 = !DILocation(line: 44, column: 75, scope: !6659)
!6668 = !DILocation(line: 46, column: 2, scope: !6659)
!6669 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6670, file: !6670, line: 229, type: !6671, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6673)
!6670 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6671 = !DISubroutineType(types: !6672)
!6672 = !{null, !6630, !450, !115}
!6673 = !{!6674, !6675, !6676}
!6674 = !DILocalVariable(name: "ptr", arg: 1, scope: !6669, file: !6670, line: 229, type: !6630)
!6675 = !DILocalVariable(name: "size", arg: 2, scope: !6669, file: !6670, line: 229, type: !450)
!6676 = !DILocalVariable(name: "type", arg: 3, scope: !6669, file: !6670, line: 230, type: !115)
!6677 = !DILocation(line: 229, column: 60, scope: !6669)
!6678 = !DILocation(line: 229, column: 72, scope: !6669)
!6679 = !DILocation(line: 230, column: 15, scope: !6669)
!6680 = !DILocation(line: 230, column: 23, scope: !6669)
!6681 = distinct !DISubprogram(name: "raw_atomic_fetch_add_unless", scope: !6644, file: !6644, line: 2399, type: !6682, scopeLine: 2400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6684)
!6682 = !DISubroutineType(types: !6683)
!6683 = !{!115, !6608, !115, !115}
!6684 = !{!6685, !6686, !6687, !6688}
!6685 = !DILocalVariable(name: "v", arg: 1, scope: !6681, file: !6644, line: 2399, type: !6608)
!6686 = !DILocalVariable(name: "a", arg: 2, scope: !6681, file: !6644, line: 2399, type: !115)
!6687 = !DILocalVariable(name: "u", arg: 3, scope: !6681, file: !6644, line: 2399, type: !115)
!6688 = !DILocalVariable(name: "c", scope: !6681, file: !6644, line: 2404, type: !115)
!6689 = !DILocation(line: 2399, column: 39, scope: !6681)
!6690 = !DILocation(line: 2399, column: 46, scope: !6681)
!6691 = !DILocation(line: 2399, column: 53, scope: !6681)
!6692 = !DILocation(line: 2404, column: 2, scope: !6681)
!6693 = !DILocation(line: 2404, column: 6, scope: !6681)
!6694 = !DILocation(line: 2404, column: 26, scope: !6681)
!6695 = !DILocation(line: 2404, column: 10, scope: !6681)
!6696 = !DILocation(line: 2406, column: 2, scope: !6681)
!6697 = !DILocation(line: 2407, column: 7, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6699, file: !6644, line: 2407, column: 7)
!6699 = distinct !DILexicalBlock(scope: !6681, file: !6644, line: 2406, column: 5)
!6700 = !DILocation(line: 2407, column: 7, scope: !6699)
!6701 = !DILocation(line: 2408, column: 4, scope: !6698)
!6702 = !DILocation(line: 2409, column: 2, scope: !6699)
!6703 = !DILocation(line: 2409, column: 35, scope: !6681)
!6704 = !DILocation(line: 2409, column: 42, scope: !6681)
!6705 = !DILocation(line: 2409, column: 46, scope: !6681)
!6706 = !DILocation(line: 2409, column: 44, scope: !6681)
!6707 = !DILocation(line: 2409, column: 12, scope: !6681)
!6708 = !DILocation(line: 2409, column: 11, scope: !6681)
!6709 = distinct !{!6709, !6696, !6710, !5742, !5743}
!6710 = !DILocation(line: 2409, column: 48, scope: !6681)
!6711 = !DILocation(line: 2411, column: 9, scope: !6681)
!6712 = !DILocation(line: 2413, column: 1, scope: !6681)
!6713 = !DILocation(line: 2411, column: 2, scope: !6681)
!6714 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6644, file: !6644, line: 442, type: !6715, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6719)
!6715 = !DISubroutineType(types: !6716)
!6716 = !{!115, !6717}
!6717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6718, size: 64)
!6718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!6719 = !{!6720}
!6720 = !DILocalVariable(name: "v", arg: 1, scope: !6714, file: !6644, line: 442, type: !6717)
!6721 = !DILocation(line: 442, column: 33, scope: !6714)
!6722 = !DILocation(line: 444, column: 26, scope: !6714)
!6723 = !DILocation(line: 444, column: 9, scope: !6714)
!6724 = !DILocation(line: 444, column: 2, scope: !6714)
!6725 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg", scope: !6644, file: !6644, line: 2109, type: !6726, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6728)
!6726 = !DISubroutineType(types: !6727)
!6727 = !{!818, !6608, !226, !115}
!6728 = !{!6729, !6730, !6731}
!6729 = !DILocalVariable(name: "v", arg: 1, scope: !6725, file: !6644, line: 2109, type: !6608)
!6730 = !DILocalVariable(name: "old", arg: 2, scope: !6725, file: !6644, line: 2109, type: !226)
!6731 = !DILocalVariable(name: "new", arg: 3, scope: !6725, file: !6644, line: 2109, type: !115)
!6732 = !DILocation(line: 2109, column: 34, scope: !6725)
!6733 = !DILocation(line: 2109, column: 42, scope: !6725)
!6734 = !DILocation(line: 2109, column: 51, scope: !6725)
!6735 = !DILocation(line: 2112, column: 33, scope: !6725)
!6736 = !DILocation(line: 2112, column: 36, scope: !6725)
!6737 = !DILocation(line: 2112, column: 41, scope: !6725)
!6738 = !DILocation(line: 2112, column: 9, scope: !6725)
!6739 = !DILocation(line: 2112, column: 2, scope: !6725)
!6740 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6741, file: !6741, line: 17, type: !6715, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6742)
!6741 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6742 = !{!6743}
!6743 = !DILocalVariable(name: "v", arg: 1, scope: !6740, file: !6741, line: 17, type: !6717)
!6744 = !DILocation(line: 17, column: 61, scope: !6740)
!6745 = !DILocation(line: 23, column: 9, scope: !6740)
!6746 = !DILocation(line: 23, column: 2, scope: !6740)
!6747 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !6741, file: !6741, line: 113, type: !6726, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6748)
!6748 = !{!6749, !6750, !6751, !6752, !6754, !6755, !6756, !6757}
!6749 = !DILocalVariable(name: "v", arg: 1, scope: !6747, file: !6741, line: 113, type: !6608)
!6750 = !DILocalVariable(name: "old", arg: 2, scope: !6747, file: !6741, line: 113, type: !226)
!6751 = !DILocalVariable(name: "new", arg: 3, scope: !6747, file: !6741, line: 113, type: !115)
!6752 = !DILocalVariable(name: "success", scope: !6753, file: !6741, line: 115, type: !818)
!6753 = distinct !DILexicalBlock(scope: !6747, file: !6741, line: 115, column: 9)
!6754 = !DILocalVariable(name: "_old", scope: !6753, file: !6741, line: 115, type: !226)
!6755 = !DILocalVariable(name: "__old", scope: !6753, file: !6741, line: 115, type: !115)
!6756 = !DILocalVariable(name: "__new", scope: !6753, file: !6741, line: 115, type: !115)
!6757 = !DILocalVariable(name: "__ptr", scope: !6753, file: !6741, line: 115, type: !227)
!6758 = !DILocation(line: 113, column: 63, scope: !6747)
!6759 = !DILocation(line: 113, column: 71, scope: !6747)
!6760 = !DILocation(line: 113, column: 80, scope: !6747)
!6761 = !DILocation(line: 115, column: 9, scope: !6753)
!6762 = !{i64 2148815600, i64 2148815639, i64 2148815660, i64 2148815697, i64 2148815720, i64 2148815729, i64 2148816027}
!6763 = !DILocation(line: 115, column: 9, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6753, file: !6741, line: 115, column: 9)
!6765 = !{i8 0, i8 2}
!6766 = !DILocation(line: 115, column: 9, scope: !6747)
!6767 = !DILocation(line: 115, column: 2, scope: !6747)
!6768 = distinct !DISubprogram(name: "atomic_inc", scope: !6605, file: !6605, line: 433, type: !6769, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6771)
!6769 = !DISubroutineType(types: !6770)
!6770 = !{null, !6608}
!6771 = !{!6772}
!6772 = !DILocalVariable(name: "v", arg: 1, scope: !6768, file: !6605, line: 433, type: !6608)
!6773 = !DILocation(line: 433, column: 22, scope: !6768)
!6774 = !DILocation(line: 435, column: 31, scope: !6768)
!6775 = !DILocation(line: 435, column: 2, scope: !6768)
!6776 = !DILocation(line: 436, column: 17, scope: !6768)
!6777 = !DILocation(line: 436, column: 2, scope: !6768)
!6778 = !DILocation(line: 437, column: 1, scope: !6768)
!6779 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6644, file: !6644, line: 976, type: !6769, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6780)
!6780 = !{!6781}
!6781 = !DILocalVariable(name: "v", arg: 1, scope: !6779, file: !6644, line: 976, type: !6608)
!6782 = !DILocation(line: 976, column: 26, scope: !6779)
!6783 = !DILocation(line: 979, column: 18, scope: !6779)
!6784 = !DILocation(line: 979, column: 2, scope: !6779)
!6785 = !DILocation(line: 983, column: 1, scope: !6779)
!6786 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6741, file: !6741, line: 51, type: !6769, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6787)
!6787 = !{!6788}
!6788 = !DILocalVariable(name: "v", arg: 1, scope: !6786, file: !6741, line: 51, type: !6608)
!6789 = !DILocation(line: 51, column: 55, scope: !6786)
!6790 = !DILocation(line: 54, column: 16, scope: !6786)
!6791 = !DILocation(line: 54, column: 19, scope: !6786)
!6792 = !DILocation(line: 53, column: 2, scope: !6786)
!6793 = !{i64 2148797220, i64 2148797259, i64 2148797280, i64 2148797317, i64 2148797340, i64 2148797210}
!6794 = !DILocation(line: 55, column: 1, scope: !6786)
!6795 = distinct !DISubprogram(name: "native_irq_disable", scope: !6200, file: !6200, line: 35, type: !1099, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6796 = !DILocation(line: 37, column: 2, scope: !6795)
!6797 = !{i64 1895220}
!6798 = !DILocation(line: 38, column: 1, scope: !6795)
!6799 = distinct !DISubprogram(name: "native_irq_enable", scope: !6200, file: !6200, line: 40, type: !1099, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6800 = !DILocation(line: 42, column: 2, scope: !6799)
!6801 = !{i64 1895312}
!6802 = !DILocation(line: 43, column: 1, scope: !6799)
!6803 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6627, file: !6627, line: 66, type: !6628, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6804)
!6804 = !{!6805, !6806}
!6805 = !DILocalVariable(name: "v", arg: 1, scope: !6803, file: !6627, line: 66, type: !6630)
!6806 = !DILocalVariable(name: "size", arg: 2, scope: !6803, file: !6627, line: 66, type: !450)
!6807 = !DILocation(line: 66, column: 73, scope: !6803)
!6808 = !DILocation(line: 66, column: 83, scope: !6803)
!6809 = !DILocation(line: 68, column: 19, scope: !6803)
!6810 = !DILocation(line: 68, column: 22, scope: !6803)
!6811 = !DILocation(line: 68, column: 2, scope: !6803)
!6812 = !DILocation(line: 69, column: 2, scope: !6803)
!6813 = !DILocation(line: 70, column: 1, scope: !6803)
!6814 = distinct !DISubprogram(name: "arch_test_bit", scope: !6815, file: !6815, line: 237, type: !6273, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6816)
!6815 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6816 = !{!6817, !6818}
!6817 = !DILocalVariable(name: "nr", arg: 1, scope: !6814, file: !6815, line: 237, type: !220)
!6818 = !DILocalVariable(name: "addr", arg: 2, scope: !6814, file: !6815, line: 237, type: !6275)
!6819 = !DILocation(line: 237, column: 29, scope: !6814)
!6820 = !DILocation(line: 237, column: 63, scope: !6814)
!6821 = !DILocation(line: 239, column: 30, scope: !6814)
!6822 = !DILocation(line: 239, column: 9, scope: !6814)
!6823 = !DILocation(line: 239, column: 54, scope: !6814)
!6824 = !DILocation(line: 239, column: 58, scope: !6814)
!6825 = !DILocation(line: 239, column: 36, scope: !6814)
!6826 = !DILocation(line: 240, column: 26, scope: !6814)
!6827 = !DILocation(line: 240, column: 30, scope: !6814)
!6828 = !DILocation(line: 240, column: 8, scope: !6814)
!6829 = !DILocation(line: 239, column: 2, scope: !6814)
!6830 = distinct !DISubprogram(name: "kasan_check_read", scope: !6660, file: !6660, line: 40, type: !6661, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6831)
!6831 = !{!6832, !6833}
!6832 = !DILocalVariable(name: "p", arg: 1, scope: !6830, file: !6660, line: 40, type: !6630)
!6833 = !DILocalVariable(name: "size", arg: 2, scope: !6830, file: !6660, line: 40, type: !13)
!6834 = !DILocation(line: 40, column: 58, scope: !6830)
!6835 = !DILocation(line: 40, column: 74, scope: !6830)
!6836 = !DILocation(line: 42, column: 2, scope: !6830)
!6837 = distinct !DISubprogram(name: "constant_test_bit", scope: !6815, file: !6815, line: 204, type: !6838, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6840)
!6838 = !DISubroutineType(types: !6839)
!6839 = !{!818, !439, !6275}
!6840 = !{!6841, !6842}
!6841 = !DILocalVariable(name: "nr", arg: 1, scope: !6837, file: !6815, line: 204, type: !439)
!6842 = !DILocalVariable(name: "addr", arg: 2, scope: !6837, file: !6815, line: 204, type: !6275)
!6843 = !DILocation(line: 204, column: 52, scope: !6837)
!6844 = !DILocation(line: 204, column: 86, scope: !6837)
!6845 = !DILocation(line: 206, column: 19, scope: !6837)
!6846 = !DILocation(line: 206, column: 22, scope: !6837)
!6847 = !DILocation(line: 206, column: 15, scope: !6837)
!6848 = !DILocation(line: 207, column: 4, scope: !6837)
!6849 = !DILocation(line: 207, column: 9, scope: !6837)
!6850 = !DILocation(line: 207, column: 12, scope: !6837)
!6851 = !DILocation(line: 206, column: 44, scope: !6837)
!6852 = !DILocation(line: 207, column: 37, scope: !6837)
!6853 = !DILocation(line: 206, column: 2, scope: !6837)
!6854 = distinct !DISubprogram(name: "variable_test_bit", scope: !6815, file: !6815, line: 224, type: !6838, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6855)
!6855 = !{!6856, !6857, !6858}
!6856 = !DILocalVariable(name: "nr", arg: 1, scope: !6854, file: !6815, line: 224, type: !439)
!6857 = !DILocalVariable(name: "addr", arg: 2, scope: !6854, file: !6815, line: 224, type: !6275)
!6858 = !DILocalVariable(name: "oldbit", scope: !6854, file: !6815, line: 226, type: !818)
!6859 = !DILocation(line: 224, column: 52, scope: !6854)
!6860 = !DILocation(line: 224, column: 86, scope: !6854)
!6861 = !DILocation(line: 226, column: 2, scope: !6854)
!6862 = !DILocation(line: 226, column: 7, scope: !6854)
!6863 = !DILocation(line: 231, column: 33, scope: !6854)
!6864 = !DILocation(line: 231, column: 46, scope: !6854)
!6865 = !DILocation(line: 228, column: 2, scope: !6854)
!6866 = !{i64 2147815178, i64 2147815252}
!6867 = !DILocation(line: 233, column: 9, scope: !6854)
!6868 = !DILocation(line: 234, column: 1, scope: !6854)
!6869 = !DILocation(line: 233, column: 2, scope: !6854)
!6870 = distinct !DISubprogram(name: "suspend_common", scope: !2, file: !2, line: 418, type: !4355, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6871)
!6871 = !{!6872, !6873, !6874, !6875, !6877, !6878, !6879}
!6872 = !DILocalVariable(name: "dev", arg: 1, scope: !6870, file: !2, line: 418, type: !320)
!6873 = !DILocalVariable(name: "msg", arg: 2, scope: !6870, file: !2, line: 418, type: !4357)
!6874 = !DILocalVariable(name: "pci_dev", scope: !6870, file: !2, line: 420, type: !234)
!6875 = !DILocalVariable(name: "__mptr", scope: !6876, file: !2, line: 420, type: !217)
!6876 = distinct !DILexicalBlock(scope: !6870, file: !2, line: 420, column: 29)
!6877 = !DILocalVariable(name: "hcd", scope: !6870, file: !2, line: 421, type: !5001)
!6878 = !DILocalVariable(name: "do_wakeup", scope: !6870, file: !2, line: 422, type: !818)
!6879 = !DILocalVariable(name: "retval", scope: !6870, file: !2, line: 423, type: !115)
!6880 = !DILocation(line: 418, column: 42, scope: !6870)
!6881 = !DILocation(line: 418, column: 60, scope: !6870)
!6882 = !DILocation(line: 420, column: 2, scope: !6870)
!6883 = !DILocation(line: 420, column: 19, scope: !6870)
!6884 = !DILocation(line: 420, column: 29, scope: !6876)
!6885 = !DILocation(line: 420, column: 29, scope: !6870)
!6886 = !DILocation(line: 421, column: 2, scope: !6870)
!6887 = !DILocation(line: 421, column: 19, scope: !6870)
!6888 = !DILocation(line: 421, column: 41, scope: !6870)
!6889 = !DILocation(line: 421, column: 25, scope: !6870)
!6890 = !DILocation(line: 422, column: 2, scope: !6870)
!6891 = !DILocation(line: 422, column: 9, scope: !6870)
!6892 = !DILocation(line: 423, column: 2, scope: !6870)
!6893 = !DILocation(line: 423, column: 8, scope: !6870)
!6894 = !DILocation(line: 425, column: 14, scope: !6870)
!6895 = !DILocation(line: 425, column: 59, scope: !6870)
!6896 = !DILocation(line: 425, column: 41, scope: !6870)
!6897 = !DILocation(line: 425, column: 12, scope: !6870)
!6898 = !DILocation(line: 432, column: 36, scope: !6870)
!6899 = !DILocation(line: 432, column: 11, scope: !6870)
!6900 = !DILocation(line: 432, column: 9, scope: !6870)
!6901 = !DILocation(line: 433, column: 6, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6870, file: !2, line: 433, column: 6)
!6903 = !DILocation(line: 433, column: 6, scope: !6870)
!6904 = !DILocation(line: 434, column: 10, scope: !6902)
!6905 = !DILocation(line: 434, column: 3, scope: !6902)
!6906 = !DILocation(line: 436, column: 6, scope: !6907)
!6907 = distinct !DILexicalBlock(scope: !6870, file: !2, line: 436, column: 6)
!6908 = !DILocation(line: 436, column: 11, scope: !6907)
!6909 = !DILocation(line: 436, column: 19, scope: !6907)
!6910 = !DILocation(line: 436, column: 31, scope: !6907)
!6911 = !DILocation(line: 436, column: 35, scope: !6907)
!6912 = !DILocation(line: 436, column: 6, scope: !6870)
!6913 = !DILocation(line: 440, column: 7, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6915, file: !2, line: 440, column: 7)
!6915 = distinct !DILexicalBlock(scope: !6907, file: !2, line: 436, column: 50)
!6916 = !DILocation(line: 440, column: 17, scope: !6914)
!6917 = !DILocation(line: 440, column: 20, scope: !6914)
!6918 = !DILocation(line: 440, column: 7, scope: !6915)
!6919 = !DILocation(line: 441, column: 4, scope: !6914)
!6920 = !DILocation(line: 442, column: 7, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6915, file: !2, line: 442, column: 7)
!6922 = !DILocation(line: 442, column: 17, scope: !6921)
!6923 = !DILocation(line: 442, column: 20, scope: !6921)
!6924 = !DILocation(line: 442, column: 25, scope: !6921)
!6925 = !DILocation(line: 442, column: 36, scope: !6921)
!6926 = !DILocation(line: 443, column: 5, scope: !6921)
!6927 = !DILocation(line: 442, column: 7, scope: !6915)
!6928 = !DILocation(line: 444, column: 4, scope: !6921)
!6929 = !DILocation(line: 445, column: 12, scope: !6915)
!6930 = !DILocation(line: 445, column: 17, scope: !6915)
!6931 = !DILocation(line: 445, column: 25, scope: !6915)
!6932 = !DILocation(line: 445, column: 37, scope: !6915)
!6933 = !DILocation(line: 445, column: 42, scope: !6915)
!6934 = !DILocation(line: 445, column: 10, scope: !6915)
!6935 = !DILocation(line: 446, column: 3, scope: !6915)
!6936 = !DILocation(line: 446, column: 3, scope: !6937)
!6937 = distinct !DILexicalBlock(scope: !6915, file: !2, line: 446, column: 3)
!6938 = !DILocation(line: 449, column: 8, scope: !6939)
!6939 = distinct !DILexicalBlock(scope: !6915, file: !2, line: 449, column: 7)
!6940 = !DILocation(line: 449, column: 15, scope: !6939)
!6941 = !DILocation(line: 449, column: 20, scope: !6939)
!6942 = !DILocation(line: 449, column: 23, scope: !6939)
!6943 = !DILocation(line: 449, column: 33, scope: !6939)
!6944 = !DILocation(line: 449, column: 36, scope: !6939)
!6945 = !DILocation(line: 449, column: 61, scope: !6939)
!6946 = !DILocation(line: 450, column: 6, scope: !6939)
!6947 = !DILocation(line: 450, column: 13, scope: !6939)
!6948 = !DILocation(line: 450, column: 18, scope: !6939)
!6949 = !DILocation(line: 450, column: 21, scope: !6939)
!6950 = !DILocation(line: 450, column: 31, scope: !6939)
!6951 = !DILocation(line: 450, column: 34, scope: !6939)
!6952 = !DILocation(line: 450, column: 39, scope: !6939)
!6953 = !DILocation(line: 450, column: 50, scope: !6939)
!6954 = !DILocation(line: 451, column: 6, scope: !6939)
!6955 = !DILocation(line: 449, column: 7, scope: !6915)
!6956 = !DILocation(line: 452, column: 8, scope: !6957)
!6957 = distinct !DILexicalBlock(scope: !6958, file: !2, line: 452, column: 8)
!6958 = distinct !DILexicalBlock(scope: !6939, file: !2, line: 451, column: 44)
!6959 = !DILocation(line: 452, column: 13, scope: !6957)
!6960 = !DILocation(line: 452, column: 21, scope: !6957)
!6961 = !DILocation(line: 452, column: 8, scope: !6958)
!6962 = !DILocation(line: 453, column: 5, scope: !6957)
!6963 = !DILocation(line: 453, column: 10, scope: !6957)
!6964 = !DILocation(line: 453, column: 18, scope: !6957)
!6965 = !DILocation(line: 453, column: 29, scope: !6957)
!6966 = !DILocation(line: 454, column: 11, scope: !6958)
!6967 = !DILocation(line: 455, column: 3, scope: !6958)
!6968 = !DILocation(line: 456, column: 7, scope: !6969)
!6969 = distinct !DILexicalBlock(scope: !6915, file: !2, line: 456, column: 7)
!6970 = !DILocation(line: 456, column: 7, scope: !6915)
!6971 = !DILocation(line: 457, column: 11, scope: !6969)
!6972 = !DILocation(line: 457, column: 4, scope: !6969)
!6973 = !DILocation(line: 458, column: 2, scope: !6915)
!6974 = !DILocation(line: 464, column: 7, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6870, file: !2, line: 464, column: 6)
!6976 = !DILocation(line: 464, column: 12, scope: !6975)
!6977 = !DILocation(line: 464, column: 6, scope: !6870)
!6978 = !DILocation(line: 465, column: 34, scope: !6975)
!6979 = !DILocation(line: 465, column: 19, scope: !6975)
!6980 = !DILocation(line: 465, column: 3, scope: !6975)
!6981 = !DILocation(line: 472, column: 21, scope: !6870)
!6982 = !DILocation(line: 472, column: 2, scope: !6870)
!6983 = !DILocation(line: 473, column: 9, scope: !6870)
!6984 = !DILocation(line: 473, column: 2, scope: !6870)
!6985 = !DILocation(line: 474, column: 1, scope: !6870)
!6986 = distinct !DISubprogram(name: "device_may_wakeup", scope: !4419, file: !4419, line: 82, type: !6987, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6989)
!6987 = !DISubroutineType(types: !6988)
!6988 = !{!818, !320}
!6989 = !{!6990}
!6990 = !DILocalVariable(name: "dev", arg: 1, scope: !6986, file: !4419, line: 82, type: !320)
!6991 = !DILocation(line: 82, column: 53, scope: !6986)
!6992 = !DILocation(line: 84, column: 9, scope: !6986)
!6993 = !DILocation(line: 84, column: 14, scope: !6986)
!6994 = !DILocation(line: 84, column: 20, scope: !6986)
!6995 = !DILocation(line: 84, column: 31, scope: !6986)
!6996 = !DILocation(line: 84, column: 36, scope: !6986)
!6997 = !DILocation(line: 84, column: 41, scope: !6986)
!6998 = !DILocation(line: 84, column: 47, scope: !6986)
!6999 = !DILocation(line: 84, column: 35, scope: !6986)
!7000 = !DILocation(line: 84, column: 34, scope: !6986)
!7001 = !DILocation(line: 0, scope: !6986)
!7002 = !DILocation(line: 84, column: 2, scope: !6986)
!7003 = !DISubprogram(name: "__suspend_report_result", scope: !107, file: !107, line: 822, type: !7004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7004 = !DISubroutineType(types: !7005)
!7005 = !{null, !268, !320, !217, !115}
!7006 = !DISubprogram(name: "synchronize_irq", scope: !7007, file: !7007, line: 13, type: !7008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7007 = !DIFile(filename: "./include/linux/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e28e97c9e9f6f4db7783a84a063e2e35")
!7008 = !DISubroutineType(types: !7009)
!7009 = !{null, !13}
!7010 = distinct !DISubprogram(name: "resume_common", scope: !2, file: !2, line: 476, type: !4355, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7011)
!7011 = !{!7012, !7013, !7014, !7015, !7017, !7018}
!7012 = !DILocalVariable(name: "dev", arg: 1, scope: !7010, file: !2, line: 476, type: !320)
!7013 = !DILocalVariable(name: "msg", arg: 2, scope: !7010, file: !2, line: 476, type: !4357)
!7014 = !DILocalVariable(name: "pci_dev", scope: !7010, file: !2, line: 478, type: !234)
!7015 = !DILocalVariable(name: "__mptr", scope: !7016, file: !2, line: 478, type: !217)
!7016 = distinct !DILexicalBlock(scope: !7010, file: !2, line: 478, column: 29)
!7017 = !DILocalVariable(name: "hcd", scope: !7010, file: !2, line: 479, type: !5001)
!7018 = !DILocalVariable(name: "retval", scope: !7010, file: !2, line: 480, type: !115)
!7019 = !DILocation(line: 476, column: 41, scope: !7010)
!7020 = !DILocation(line: 476, column: 59, scope: !7010)
!7021 = !DILocation(line: 478, column: 2, scope: !7010)
!7022 = !DILocation(line: 478, column: 19, scope: !7010)
!7023 = !DILocation(line: 478, column: 29, scope: !7016)
!7024 = !DILocation(line: 478, column: 29, scope: !7010)
!7025 = !DILocation(line: 479, column: 2, scope: !7010)
!7026 = !DILocation(line: 479, column: 19, scope: !7010)
!7027 = !DILocation(line: 479, column: 41, scope: !7010)
!7028 = !DILocation(line: 479, column: 25, scope: !7010)
!7029 = !DILocation(line: 480, column: 2, scope: !7010)
!7030 = !DILocation(line: 480, column: 8, scope: !7010)
!7031 = !DILocation(line: 482, column: 6, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !7010, file: !2, line: 482, column: 6)
!7033 = !DILocation(line: 482, column: 26, scope: !7032)
!7034 = !DILocation(line: 483, column: 5, scope: !7032)
!7035 = !DILocation(line: 483, column: 10, scope: !7032)
!7036 = !DILocation(line: 483, column: 21, scope: !7032)
!7037 = !DILocation(line: 484, column: 5, scope: !7032)
!7038 = !DILocation(line: 482, column: 6, scope: !7010)
!7039 = !DILocation(line: 486, column: 3, scope: !7040)
!7040 = distinct !DILexicalBlock(scope: !7032, file: !2, line: 484, column: 39)
!7041 = !DILocation(line: 489, column: 29, scope: !7010)
!7042 = !DILocation(line: 489, column: 11, scope: !7010)
!7043 = !DILocation(line: 489, column: 9, scope: !7010)
!7044 = !DILocation(line: 490, column: 6, scope: !7045)
!7045 = distinct !DILexicalBlock(scope: !7010, file: !2, line: 490, column: 6)
!7046 = !DILocation(line: 490, column: 13, scope: !7045)
!7047 = !DILocation(line: 490, column: 6, scope: !7010)
!7048 = !DILocation(line: 491, column: 3, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !7050, file: !2, line: 491, column: 3)
!7050 = distinct !DILexicalBlock(scope: !7045, file: !2, line: 490, column: 18)
!7051 = !DILocation(line: 491, column: 3, scope: !7052)
!7052 = distinct !DILexicalBlock(scope: !7049, file: !2, line: 491, column: 3)
!7053 = !DILocation(line: 492, column: 10, scope: !7050)
!7054 = !DILocation(line: 492, column: 3, scope: !7050)
!7055 = !DILocation(line: 495, column: 17, scope: !7010)
!7056 = !DILocation(line: 495, column: 2, scope: !7010)
!7057 = !DILocation(line: 497, column: 6, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !7010, file: !2, line: 497, column: 6)
!7059 = !DILocation(line: 497, column: 11, scope: !7058)
!7060 = !DILocation(line: 497, column: 19, scope: !7058)
!7061 = !DILocation(line: 497, column: 30, scope: !7058)
!7062 = !DILocation(line: 497, column: 34, scope: !7058)
!7063 = !DILocation(line: 497, column: 6, scope: !7010)
!7064 = !DILocation(line: 504, column: 7, scope: !7065)
!7065 = distinct !DILexicalBlock(scope: !7066, file: !2, line: 504, column: 7)
!7066 = distinct !DILexicalBlock(scope: !7058, file: !2, line: 497, column: 49)
!7067 = !DILocation(line: 504, column: 16, scope: !7065)
!7068 = !DILocation(line: 504, column: 22, scope: !7065)
!7069 = !DILocation(line: 504, column: 33, scope: !7065)
!7070 = !DILocation(line: 504, column: 40, scope: !7065)
!7071 = !DILocation(line: 504, column: 46, scope: !7065)
!7072 = !DILocation(line: 504, column: 7, scope: !7066)
!7073 = !DILocation(line: 505, column: 23, scope: !7065)
!7074 = !DILocation(line: 505, column: 32, scope: !7065)
!7075 = !DILocation(line: 505, column: 4, scope: !7065)
!7076 = !DILocation(line: 508, column: 12, scope: !7066)
!7077 = !DILocation(line: 508, column: 17, scope: !7066)
!7078 = !DILocation(line: 508, column: 25, scope: !7066)
!7079 = !DILocation(line: 508, column: 36, scope: !7066)
!7080 = !DILocation(line: 508, column: 10, scope: !7066)
!7081 = !DILocation(line: 509, column: 7, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7066, file: !2, line: 509, column: 7)
!7083 = !DILocation(line: 509, column: 7, scope: !7066)
!7084 = !DILocation(line: 510, column: 4, scope: !7085)
!7085 = distinct !DILexicalBlock(scope: !7086, file: !2, line: 510, column: 4)
!7086 = distinct !DILexicalBlock(scope: !7082, file: !2, line: 509, column: 15)
!7087 = !DILocation(line: 510, column: 4, scope: !7088)
!7088 = distinct !DILexicalBlock(scope: !7085, file: !2, line: 510, column: 4)
!7089 = !DILocation(line: 511, column: 16, scope: !7086)
!7090 = !DILocation(line: 511, column: 4, scope: !7086)
!7091 = !DILocation(line: 512, column: 3, scope: !7086)
!7092 = !DILocation(line: 513, column: 2, scope: !7066)
!7093 = !DILocation(line: 514, column: 9, scope: !7010)
!7094 = !DILocation(line: 514, column: 2, scope: !7010)
!7095 = !DILocation(line: 515, column: 1, scope: !7010)
!7096 = distinct !DISubprogram(name: "ehci_wait_for_companions", scope: !2, file: !2, line: 143, type: !5919, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7097)
!7097 = !{!7098, !7099, !7100, !7101}
!7098 = !DILocalVariable(name: "pdev", arg: 1, scope: !7096, file: !2, line: 143, type: !234)
!7099 = !DILocalVariable(name: "hcd", arg: 2, scope: !7096, file: !2, line: 143, type: !5001)
!7100 = !DILocalVariable(name: "companion", arg: 3, scope: !7096, file: !2, line: 144, type: !234)
!7101 = !DILocalVariable(name: "companion_hcd", arg: 4, scope: !7096, file: !2, line: 144, type: !5001)
!7102 = !DILocation(line: 143, column: 54, scope: !7096)
!7103 = !DILocation(line: 143, column: 76, scope: !7096)
!7104 = !DILocation(line: 144, column: 19, scope: !7096)
!7105 = !DILocation(line: 144, column: 46, scope: !7096)
!7106 = !DILocation(line: 146, column: 22, scope: !7107)
!7107 = distinct !DILexicalBlock(scope: !7096, file: !2, line: 146, column: 6)
!7108 = !DILocation(line: 146, column: 6, scope: !7107)
!7109 = !DILocation(line: 146, column: 6, scope: !7096)
!7110 = !DILocation(line: 147, column: 27, scope: !7107)
!7111 = !DILocation(line: 147, column: 33, scope: !7107)
!7112 = !DILocation(line: 147, column: 39, scope: !7107)
!7113 = !DILocation(line: 147, column: 50, scope: !7107)
!7114 = !DILocation(line: 147, column: 3, scope: !7107)
!7115 = !DILocation(line: 148, column: 1, scope: !7096)
!7116 = !DISubprogram(name: "usb_hc_died", scope: !200, file: !200, line: 511, type: !5490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7117 = !DISubprogram(name: "device_pm_wait_for_dev", scope: !107, file: !107, line: 829, type: !7118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7118 = !DISubroutineType(types: !7119)
!7119 = !{!115, !320, !320}
!7120 = !DISubprogram(name: "pci_save_state", scope: !236, file: !236, line: 1388, type: !4777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7121 = !DISubprogram(name: "device_set_wakeup_enable", scope: !4419, file: !4419, line: 112, type: !7122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7122 = !DISubroutineType(types: !7123)
!7123 = !{!115, !320, !818}
!7124 = !DISubprogram(name: "pci_prepare_to_sleep", scope: !236, file: !236, line: 1403, type: !4777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7125 = distinct !DISubprogram(name: "powermac_set_asic", scope: !2, file: !2, line: 395, type: !7126, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7128)
!7126 = !DISubroutineType(types: !7127)
!7127 = !{null, !234, !115}
!7128 = !{!7129, !7130}
!7129 = !DILocalVariable(name: "pci_dev", arg: 1, scope: !7125, file: !2, line: 395, type: !234)
!7130 = !DILocalVariable(name: "enable", arg: 2, scope: !7125, file: !2, line: 395, type: !115)
!7131 = !DILocation(line: 395, column: 54, scope: !7125)
!7132 = !DILocation(line: 395, column: 67, scope: !7125)
!7133 = !DILocation(line: 396, column: 2, scope: !7125)
!7134 = !DISubprogram(name: "_dev_warn", scope: !5852, file: !5852, line: 52, type: !5853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
