; ModuleID = 'drivers/pci/pcie/portdrv.c'
source_filename = "drivers/pci/pcie/portdrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcie_port_find_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pcie_port_find_device ; .previous"
module asm ".section\09\22.initcall6.init..kmod_pcieportdrv__296_843_pcie_portdrv_init\22, \22a\22\09\09"
module asm "__initcall__kmod_pcieportdrv__296_843_pcie_portdrv_init6:\09\09\09"
module asm ".long\09__initstub__kmod_pcieportdrv__296_843_pcie_portdrv_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.portdrv_service_data = type { ptr, ptr, i32 }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
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
%struct.pcie_port_service_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.device_driver }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [48 x i8], [0 x i64] }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }

@__UNIQUE_ID___addressable_pcie_port_find_device295 = internal global ptr @pcie_port_find_device, section ".discard.addressable", align 8, !dbg !0
@pcie_ports_disabled = hidden global i8 0, align 1, !dbg !4968
@pcie_port_bus_type = external dso_local global %struct.bus_type, align 8
@__setup_str_pcie_port_setup = internal constant [12 x i8] c"pcie_ports=\00", section ".init.rodata", align 1, !dbg !4974
@__setup_pcie_port_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pcie_port_setup, ptr @pcie_port_setup, i32 0 }, section ".init.setup", align 8, !dbg !4955
@__UNIQUE_ID___addressable___initstub__kmod_pcieportdrv__296_843_pcie_portdrv_init6297 = internal global ptr @__initstub__kmod_pcieportdrv__296_843_pcie_portdrv_init6, section ".discard.addressable", align 8, !dbg !4966
@pcie_ports_native = hidden global i8 0, align 1, !dbg !4970
@pcie_ports_dpc_native = hidden global i8 0, align 1, !dbg !4972
@.str = private unnamed_addr constant [7 x i8] c"compat\00", align 1, !dbg !4977
@.str.1 = private unnamed_addr constant [7 x i8] c"native\00", align 1, !dbg !4980
@.str.2 = private unnamed_addr constant [11 x i8] c"dpc-native\00", align 1, !dbg !4982
@pcie_portdrv_dmi_table = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @dmi_pcie_pme_disable_msi, ptr @.str.4, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"MICRO-STAR INTERNATIONAL CO., LTD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"U-100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !4993
@pcie_portdriver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @port_pci_ids, ptr @pcie_portdrv_probe, ptr @pcie_portdrv_remove, ptr null, ptr null, ptr @pcie_portdrv_shutdown, ptr null, ptr null, ptr null, ptr @pcie_portdrv_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcie_portdrv_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer, i8 1 }, align 8, !dbg !5023
@.str.3 = private unnamed_addr constant [12 x i8] c"pcieportdrv\00", align 1, !dbg !4985
@.str.4 = private unnamed_addr constant [15 x i8] c"MSI Wind U-100\00", align 1, !dbg !4988
@.str.5 = private unnamed_addr constant [56 x i8] c"\015%s detected: will not use MSI for PCIe PME signaling\0A\00", align 1, !dbg !5016
@pcie_pme_msi_disabled = external dso_local global i8, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pcieport\00", align 1, !dbg !5018
@port_pci_ids = internal constant [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 394240, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 394241, i32 -1, i64 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 526080, i32 -1, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5025
@pcie_portdrv_err_handler = internal constant %struct.pci_error_handlers { ptr @pcie_portdrv_error_detected, ptr @pcie_portdrv_mmio_enabled, ptr @pcie_portdrv_slot_reset, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5035
@pcie_portdrv_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pcie_port_device_suspend, ptr @pcie_port_device_resume, ptr @pcie_port_device_suspend, ptr @pcie_port_device_resume, ptr @pcie_port_device_suspend, ptr @pcie_port_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcie_port_device_resume_noirq, ptr null, ptr null, ptr null, ptr @pcie_port_device_resume_noirq, ptr @pcie_port_runtime_suspend, ptr @pcie_port_device_runtime_resume, ptr @pcie_port_runtime_idle }, align 8, !dbg !5037
@.str.7 = private unnamed_addr constant [12 x i8] c"%s:pcie%03x\00", align 1, !dbg !5028
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5030
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_pcie_port_find_device295, ptr @__setup_pcie_port_setup, ptr @__UNIQUE_ID___addressable___initstub__kmod_pcieportdrv__296_843_pcie_portdrv_init6297], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pcie_port_find_device(ptr noundef %dev, i32 noundef %service) #0 align 16 !dbg !5048 {
entry:
  %dev.addr = alloca ptr, align 8
  %service.addr = alloca i32, align 4
  %device = alloca ptr, align 8
  %pdrvs = alloca %struct.portdrv_service_data, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5052, metadata !DIExpression()), !dbg !5056
  store i32 %service, ptr %service.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %service.addr, metadata !5053, metadata !DIExpression()), !dbg !5057
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #15, !dbg !5058
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5054, metadata !DIExpression()), !dbg !5059
  call void @llvm.lifetime.start.p0(i64 24, ptr %pdrvs) #15, !dbg !5060
  call void @llvm.dbg.declare(metadata ptr %pdrvs, metadata !5055, metadata !DIExpression()), !dbg !5061
  %dev1 = getelementptr inbounds %struct.portdrv_service_data, ptr %pdrvs, i32 0, i32 1, !dbg !5062
  store ptr null, ptr %dev1, align 8, !dbg !5063
  %0 = load i32, ptr %service.addr, align 4, !dbg !5064
  %service2 = getelementptr inbounds %struct.portdrv_service_data, ptr %pdrvs, i32 0, i32 2, !dbg !5065
  store i32 %0, ptr %service2, align 8, !dbg !5066
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5067
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 37, !dbg !5068
  %call = call i32 @device_for_each_child(ptr noundef %dev3, ptr noundef %pdrvs, ptr noundef @find_service_iter) #16, !dbg !5069
  %dev4 = getelementptr inbounds %struct.portdrv_service_data, ptr %pdrvs, i32 0, i32 1, !dbg !5070
  %2 = load ptr, ptr %dev4, align 8, !dbg !5070
  store ptr %2, ptr %device, align 8, !dbg !5071
  %3 = load ptr, ptr %device, align 8, !dbg !5072
  call void @llvm.lifetime.end.p0(i64 24, ptr %pdrvs) #15, !dbg !5073
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #15, !dbg !5073
  ret ptr %3, !dbg !5074
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5075 dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @find_service_iter(ptr noundef %device, ptr noundef %data) #0 align 16 !dbg !5081 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %service_driver = alloca ptr, align 8
  %pdrvs = alloca ptr, align 8
  %service = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5083, metadata !DIExpression()), !dbg !5092
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5084, metadata !DIExpression()), !dbg !5093
  call void @llvm.lifetime.start.p0(i64 8, ptr %service_driver) #15, !dbg !5094
  call void @llvm.dbg.declare(metadata ptr %service_driver, metadata !5085, metadata !DIExpression()), !dbg !5095
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdrvs) #15, !dbg !5096
  call void @llvm.dbg.declare(metadata ptr %pdrvs, metadata !5086, metadata !DIExpression()), !dbg !5097
  call void @llvm.lifetime.start.p0(i64 4, ptr %service) #15, !dbg !5098
  call void @llvm.dbg.declare(metadata ptr %service, metadata !5087, metadata !DIExpression()), !dbg !5099
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5100
  store ptr %0, ptr %pdrvs, align 8, !dbg !5101
  %1 = load ptr, ptr %pdrvs, align 8, !dbg !5102
  %service1 = getelementptr inbounds %struct.portdrv_service_data, ptr %1, i32 0, i32 2, !dbg !5103
  %2 = load i32, ptr %service1, align 8, !dbg !5103
  store i32 %2, ptr %service, align 4, !dbg !5104
  %3 = load ptr, ptr %device.addr, align 8, !dbg !5105
  %bus = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5, !dbg !5106
  %4 = load ptr, ptr %bus, align 8, !dbg !5106
  %cmp = icmp eq ptr %4, @pcie_port_bus_type, !dbg !5107
  br i1 %cmp, label %land.lhs.true, label %if.end6, !dbg !5108

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %device.addr, align 8, !dbg !5109
  %driver = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6, !dbg !5110
  %6 = load ptr, ptr %driver, align 8, !dbg !5110
  %tobool = icmp ne ptr %6, null, !dbg !5109
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5111

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5112
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5088, metadata !DIExpression()), !dbg !5112
  %7 = load ptr, ptr %device.addr, align 8, !dbg !5112
  %driver2 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 6, !dbg !5112
  %8 = load ptr, ptr %driver2, align 8, !dbg !5112
  store ptr %8, ptr %__mptr, align 8, !dbg !5112
  %9 = load ptr, ptr %__mptr, align 8, !dbg !5112
  %add.ptr = getelementptr i8, ptr %9, i64 -80, !dbg !5112
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5112
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5113
  %10 = load ptr, ptr %tmp, align 8, !dbg !5112
  store ptr %10, ptr %service_driver, align 8, !dbg !5114
  %11 = load ptr, ptr %service_driver, align 8, !dbg !5115
  %service3 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %11, i32 0, i32 10, !dbg !5117
  %12 = load i32, ptr %service3, align 4, !dbg !5117
  %13 = load i32, ptr %service, align 4, !dbg !5118
  %cmp4 = icmp eq i32 %12, %13, !dbg !5119
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !5120

if.then5:                                         ; preds = %if.then
  %14 = load ptr, ptr %service_driver, align 8, !dbg !5121
  %15 = load ptr, ptr %pdrvs, align 8, !dbg !5123
  %drv = getelementptr inbounds %struct.portdrv_service_data, ptr %15, i32 0, i32 0, !dbg !5124
  store ptr %14, ptr %drv, align 8, !dbg !5125
  %16 = load ptr, ptr %device.addr, align 8, !dbg !5126
  %17 = load ptr, ptr %pdrvs, align 8, !dbg !5127
  %dev = getelementptr inbounds %struct.portdrv_service_data, ptr %17, i32 0, i32 1, !dbg !5128
  store ptr %16, ptr %dev, align 8, !dbg !5129
  store i32 1, ptr %retval, align 4, !dbg !5130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5130

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !5131

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !5132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5132

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %service) #15, !dbg !5133
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdrvs) #15, !dbg !5133
  call void @llvm.lifetime.end.p0(i64 8, ptr %service_driver) #15, !dbg !5133
  %18 = load i32, ptr %retval, align 4, !dbg !5133
  ret i32 %18, !dbg !5133
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcie_port_service_register(ptr noundef %new) #0 align 16 !dbg !5134 {
entry:
  %retval = alloca i32, align 4
  %new.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5138, metadata !DIExpression()), !dbg !5139
  %0 = load i8, ptr @pcie_ports_disabled, align 1, !dbg !5140, !range !5142, !noundef !990
  %tobool = trunc i8 %0 to i1, !dbg !5140
  br i1 %tobool, label %if.then, label %if.end, !dbg !5143

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5144
  br label %return, !dbg !5144

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %new.addr, align 8, !dbg !5145
  %name = getelementptr inbounds %struct.pcie_port_service_driver, ptr %1, i32 0, i32 0, !dbg !5146
  %2 = load ptr, ptr %name, align 8, !dbg !5146
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5147
  %driver = getelementptr inbounds %struct.pcie_port_service_driver, ptr %3, i32 0, i32 11, !dbg !5148
  %name1 = getelementptr inbounds %struct.device_driver, ptr %driver, i32 0, i32 0, !dbg !5149
  store ptr %2, ptr %name1, align 8, !dbg !5150
  %4 = load ptr, ptr %new.addr, align 8, !dbg !5151
  %driver2 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %4, i32 0, i32 11, !dbg !5152
  %bus = getelementptr inbounds %struct.device_driver, ptr %driver2, i32 0, i32 1, !dbg !5153
  store ptr @pcie_port_bus_type, ptr %bus, align 8, !dbg !5154
  %5 = load ptr, ptr %new.addr, align 8, !dbg !5155
  %driver3 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %5, i32 0, i32 11, !dbg !5156
  %probe = getelementptr inbounds %struct.device_driver, ptr %driver3, i32 0, i32 8, !dbg !5157
  store ptr @pcie_port_probe_service, ptr %probe, align 8, !dbg !5158
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5159
  %driver4 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %6, i32 0, i32 11, !dbg !5160
  %remove = getelementptr inbounds %struct.device_driver, ptr %driver4, i32 0, i32 10, !dbg !5161
  store ptr @pcie_port_remove_service, ptr %remove, align 8, !dbg !5162
  %7 = load ptr, ptr %new.addr, align 8, !dbg !5163
  %driver5 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %7, i32 0, i32 11, !dbg !5164
  %shutdown = getelementptr inbounds %struct.device_driver, ptr %driver5, i32 0, i32 11, !dbg !5165
  store ptr @pcie_port_shutdown_service, ptr %shutdown, align 8, !dbg !5166
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5167
  %driver6 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %8, i32 0, i32 11, !dbg !5168
  %call = call i32 @driver_register(ptr noundef %driver6) #16, !dbg !5169
  store i32 %call, ptr %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !5171
  ret i32 %9, !dbg !5171
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_probe_service(ptr noundef %dev) #0 align 16 !dbg !5172 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pciedev = alloca ptr, align 8
  %driver = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5174, metadata !DIExpression()), !dbg !5182
  call void @llvm.lifetime.start.p0(i64 8, ptr %pciedev) #15, !dbg !5183
  call void @llvm.dbg.declare(metadata ptr %pciedev, metadata !5175, metadata !DIExpression()), !dbg !5184
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver) #15, !dbg !5185
  call void @llvm.dbg.declare(metadata ptr %driver, metadata !5176, metadata !DIExpression()), !dbg !5186
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !5187
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5177, metadata !DIExpression()), !dbg !5188
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5189
  %tobool = icmp ne ptr %0, null, !dbg !5189
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5191

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5192
  %driver1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6, !dbg !5193
  %2 = load ptr, ptr %driver1, align 8, !dbg !5193
  %tobool2 = icmp ne ptr %2, null, !dbg !5192
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5194

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !5195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5195

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5196
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5178, metadata !DIExpression()), !dbg !5196
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5196
  %driver3 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6, !dbg !5196
  %4 = load ptr, ptr %driver3, align 8, !dbg !5196
  store ptr %4, ptr %__mptr, align 8, !dbg !5196
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5196
  %add.ptr = getelementptr i8, ptr %5, i64 -80, !dbg !5196
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5196
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5197
  %6 = load ptr, ptr %tmp, align 8, !dbg !5196
  store ptr %6, ptr %driver, align 8, !dbg !5198
  %7 = load ptr, ptr %driver, align 8, !dbg !5199
  %tobool4 = icmp ne ptr %7, null, !dbg !5199
  br i1 %tobool4, label %lor.lhs.false5, label %if.then7, !dbg !5201

lor.lhs.false5:                                   ; preds = %if.end
  %8 = load ptr, ptr %driver, align 8, !dbg !5202
  %probe = getelementptr inbounds %struct.pcie_port_service_driver, ptr %8, i32 0, i32 1, !dbg !5203
  %9 = load ptr, ptr %probe, align 8, !dbg !5203
  %tobool6 = icmp ne ptr %9, null, !dbg !5202
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5204

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5205

if.end8:                                          ; preds = %lor.lhs.false5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #15, !dbg !5206
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !5180, metadata !DIExpression()), !dbg !5206
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5206
  store ptr %10, ptr %__mptr9, align 8, !dbg !5206
  %11 = load ptr, ptr %__mptr9, align 8, !dbg !5206
  %add.ptr11 = getelementptr i8, ptr %11, i64 -32, !dbg !5206
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !5206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #15, !dbg !5207
  %12 = load ptr, ptr %tmp10, align 8, !dbg !5206
  store ptr %12, ptr %pciedev, align 8, !dbg !5208
  %13 = load ptr, ptr %driver, align 8, !dbg !5209
  %probe12 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %13, i32 0, i32 1, !dbg !5210
  %14 = load ptr, ptr %probe12, align 8, !dbg !5210
  %15 = load ptr, ptr %pciedev, align 8, !dbg !5211
  %call = call i32 %14(ptr noundef %15) #16, !dbg !5209
  store i32 %call, ptr %status, align 4, !dbg !5212
  %16 = load i32, ptr %status, align 4, !dbg !5213
  %tobool13 = icmp ne i32 %16, 0, !dbg !5213
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5215

if.then14:                                        ; preds = %if.end8
  %17 = load i32, ptr %status, align 4, !dbg !5216
  store i32 %17, ptr %retval, align 4, !dbg !5217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5217

if.end15:                                         ; preds = %if.end8
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5218
  %call16 = call ptr @get_device(ptr noundef %18) #16, !dbg !5219
  store i32 0, ptr %retval, align 4, !dbg !5220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5220

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !5221
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver) #15, !dbg !5221
  call void @llvm.lifetime.end.p0(i64 8, ptr %pciedev) #15, !dbg !5221
  %19 = load i32, ptr %retval, align 4, !dbg !5221
  ret i32 %19, !dbg !5221
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_remove_service(ptr noundef %dev) #0 align 16 !dbg !5222 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pciedev = alloca ptr, align 8
  %driver = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5224, metadata !DIExpression()), !dbg !5231
  call void @llvm.lifetime.start.p0(i64 8, ptr %pciedev) #15, !dbg !5232
  call void @llvm.dbg.declare(metadata ptr %pciedev, metadata !5225, metadata !DIExpression()), !dbg !5233
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver) #15, !dbg !5234
  call void @llvm.dbg.declare(metadata ptr %driver, metadata !5226, metadata !DIExpression()), !dbg !5235
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5236
  %tobool = icmp ne ptr %0, null, !dbg !5236
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5238

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5239
  %driver1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6, !dbg !5240
  %2 = load ptr, ptr %driver1, align 8, !dbg !5240
  %tobool2 = icmp ne ptr %2, null, !dbg !5239
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5241

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5242

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5243
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5227, metadata !DIExpression()), !dbg !5243
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5243
  store ptr %3, ptr %__mptr, align 8, !dbg !5243
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5243
  %add.ptr = getelementptr i8, ptr %4, i64 -32, !dbg !5243
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5243
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5244
  %5 = load ptr, ptr %tmp, align 8, !dbg !5243
  store ptr %5, ptr %pciedev, align 8, !dbg !5245
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #15, !dbg !5246
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5229, metadata !DIExpression()), !dbg !5246
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5246
  %driver4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 6, !dbg !5246
  %7 = load ptr, ptr %driver4, align 8, !dbg !5246
  store ptr %7, ptr %__mptr3, align 8, !dbg !5246
  %8 = load ptr, ptr %__mptr3, align 8, !dbg !5246
  %add.ptr6 = getelementptr i8, ptr %8, i64 -80, !dbg !5246
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #15, !dbg !5247
  %9 = load ptr, ptr %tmp5, align 8, !dbg !5246
  store ptr %9, ptr %driver, align 8, !dbg !5248
  %10 = load ptr, ptr %driver, align 8, !dbg !5249
  %tobool7 = icmp ne ptr %10, null, !dbg !5249
  br i1 %tobool7, label %land.lhs.true, label %if.end11, !dbg !5251

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %driver, align 8, !dbg !5252
  %remove = getelementptr inbounds %struct.pcie_port_service_driver, ptr %11, i32 0, i32 2, !dbg !5253
  %12 = load ptr, ptr %remove, align 8, !dbg !5253
  %tobool8 = icmp ne ptr %12, null, !dbg !5252
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5254

if.then9:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %driver, align 8, !dbg !5255
  %remove10 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %13, i32 0, i32 2, !dbg !5257
  %14 = load ptr, ptr %remove10, align 8, !dbg !5257
  %15 = load ptr, ptr %pciedev, align 8, !dbg !5258
  call void %14(ptr noundef %15) #16, !dbg !5255
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5259
  call void @put_device(ptr noundef %16) #16, !dbg !5260
  br label %if.end11, !dbg !5261

if.end11:                                         ; preds = %if.then9, %land.lhs.true, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5262

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver) #15, !dbg !5263
  call void @llvm.lifetime.end.p0(i64 8, ptr %pciedev) #15, !dbg !5263
  %17 = load i32, ptr %retval, align 4, !dbg !5263
  ret i32 %17, !dbg !5263
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcie_port_shutdown_service(ptr noundef %dev) #0 align 16 !dbg !5264 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  ret void, !dbg !5268
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5269 dso_local i32 @driver_register(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcie_port_service_unregister(ptr noundef %drv) #0 align 16 !dbg !5272 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !5278
  %driver = getelementptr inbounds %struct.pcie_port_service_driver, ptr %0, i32 0, i32 11, !dbg !5279
  call void @driver_unregister(ptr noundef %driver) #16, !dbg !5280
  ret void, !dbg !5281
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5282 dso_local void @driver_unregister(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pcie_port_setup(ptr noundef %str) #4 section ".init.text" align 16 !dbg !5285 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5289
  %call = call i32 @strncmp(ptr noundef %0, ptr noundef @.str, i64 noundef 6) #16, !dbg !5291
  %tobool = icmp ne i32 %call, 0, !dbg !5291
  br i1 %tobool, label %if.else, label %if.then, !dbg !5292

if.then:                                          ; preds = %entry
  store i8 1, ptr @pcie_ports_disabled, align 1, !dbg !5293
  br label %if.end9, !dbg !5294

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !5295
  %call1 = call i32 @strncmp(ptr noundef %1, ptr noundef @.str.1, i64 noundef 6) #16, !dbg !5297
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5297
  br i1 %tobool2, label %if.else4, label %if.then3, !dbg !5298

if.then3:                                         ; preds = %if.else
  store i8 1, ptr @pcie_ports_native, align 1, !dbg !5299
  br label %if.end8, !dbg !5300

if.else4:                                         ; preds = %if.else
  %2 = load ptr, ptr %str.addr, align 8, !dbg !5301
  %call5 = call i32 @strncmp(ptr noundef %2, ptr noundef @.str.2, i64 noundef 10) #16, !dbg !5303
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5303
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !5304

if.then7:                                         ; preds = %if.else4
  store i8 1, ptr @pcie_ports_dpc_native, align 1, !dbg !5305
  br label %if.end, !dbg !5306

if.end:                                           ; preds = %if.then7, %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  ret i32 1, !dbg !5307
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pcieportdrv__296_843_pcie_portdrv_init6() #4 section ".init.text" align 16 !dbg !5308 {
entry:
  %call = call i32 @pcie_portdrv_init() #17, !dbg !5309
  ret i32 %call, !dbg !5309
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pcie_portdrv_init() #4 section ".init.text" align 16 !dbg !5310 {
entry:
  %retval = alloca i32, align 4
  %0 = load i8, ptr @pcie_ports_disabled, align 1, !dbg !5311, !range !5142, !noundef !990
  %tobool = trunc i8 %0 to i1, !dbg !5311
  br i1 %tobool, label %if.then, label %if.end, !dbg !5313

if.then:                                          ; preds = %entry
  store i32 -13, ptr %retval, align 4, !dbg !5314
  br label %return, !dbg !5314

if.end:                                           ; preds = %entry
  call void @pcie_init_services() #17, !dbg !5315
  %call = call i32 @dmi_check_system(ptr noundef @pcie_portdrv_dmi_table) #16, !dbg !5316
  %call1 = call i32 @__pci_register_driver(ptr noundef @pcie_portdriver, ptr noundef null, ptr noundef @.str.3) #16, !dbg !5317
  store i32 %call1, ptr %retval, align 4, !dbg !5318
  br label %return, !dbg !5318

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !5319
  ret i32 %1, !dbg !5319
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5320 dso_local ptr @get_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5323 dso_local void @put_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5324 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pcie_init_services() #4 section ".init.text" align 16 !dbg !5328 {
entry:
  %call = call i32 @pcie_aer_init() #16, !dbg !5329
  %call1 = call i32 @pcie_pme_init() #16, !dbg !5330
  %call2 = call i32 @pcie_dpc_init() #16, !dbg !5331
  %call3 = call i32 @pcie_hp_init() #16, !dbg !5332
  ret void, !dbg !5333
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5334 dso_local i32 @dmi_check_system(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5336 dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_aer_init() #5 align 16 !dbg !5339 {
entry:
  ret i32 0, !dbg !5340
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5341 dso_local i32 @pcie_pme_init() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_dpc_init() #5 align 16 !dbg !5342 {
entry:
  ret i32 0, !dbg !5343
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_hp_init() #5 align 16 !dbg !5344 {
entry:
  ret i32 0, !dbg !5345
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @dmi_pcie_pme_disable_msi(ptr noundef %d) #4 section ".init.text" align 16 !dbg !5346 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  br label %do.body, !dbg !5350

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5352

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %d.addr, align 8, !dbg !5350
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1, !dbg !5350
  %1 = load ptr, ptr %ident, align 8, !dbg !5350
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %1) #17, !dbg !5350
  store i32 %call, ptr %tmp, align 4, !dbg !5352
  %2 = load i32, ptr %tmp, align 4, !dbg !5350
  call void @pcie_pme_disable_msi() #16, !dbg !5354
  ret i32 0, !dbg !5355
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5356 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcie_pme_disable_msi() #5 align 16 !dbg !5360 {
entry:
  store i8 1, ptr @pcie_pme_msi_disabled, align 1, !dbg !5361
  ret void, !dbg !5362
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_portdrv_probe(ptr noundef %dev, ptr noundef %id) #0 align 16 !dbg !5363 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5365, metadata !DIExpression()), !dbg !5369
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5366, metadata !DIExpression()), !dbg !5370
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !5371
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5367, metadata !DIExpression()), !dbg !5372
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5373
  %call = call i32 @pci_pcie_type(ptr noundef %0) #16, !dbg !5374
  store i32 %call, ptr %type, align 4, !dbg !5372
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !5375
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5368, metadata !DIExpression()), !dbg !5376
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5377
  %call1 = call zeroext i1 @pci_is_pcie(ptr noundef %1) #16, !dbg !5379
  br i1 %call1, label %lor.lhs.false, label %if.then, !dbg !5380

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %type, align 4, !dbg !5381
  %cmp = icmp ne i32 %2, 4, !dbg !5382
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5383

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !5384
  %cmp2 = icmp ne i32 %3, 5, !dbg !5385
  br i1 %cmp2, label %land.lhs.true3, label %if.end, !dbg !5386

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %type, align 4, !dbg !5387
  %cmp4 = icmp ne i32 %4, 6, !dbg !5388
  br i1 %cmp4, label %land.lhs.true5, label %if.end, !dbg !5389

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %5 = load i32, ptr %type, align 4, !dbg !5390
  %cmp6 = icmp ne i32 %5, 10, !dbg !5391
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5392

if.then:                                          ; preds = %land.lhs.true5, %entry
  store i32 -19, ptr %retval, align 4, !dbg !5393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5393

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %lor.lhs.false
  %6 = load i32, ptr %type, align 4, !dbg !5394
  %cmp7 = icmp eq i32 %6, 10, !dbg !5396
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5397

if.then8:                                         ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5398
  call void @pcie_link_rcec(ptr noundef %7) #16, !dbg !5399
  br label %if.end9, !dbg !5399

if.end9:                                          ; preds = %if.then8, %if.end
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5400
  %call10 = call i32 @pcie_port_device_register(ptr noundef %8) #16, !dbg !5401
  store i32 %call10, ptr %status, align 4, !dbg !5402
  %9 = load i32, ptr %status, align 4, !dbg !5403
  %tobool = icmp ne i32 %9, 0, !dbg !5403
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !5405

if.then11:                                        ; preds = %if.end9
  %10 = load i32, ptr %status, align 4, !dbg !5406
  store i32 %10, ptr %retval, align 4, !dbg !5407
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5407

if.end12:                                         ; preds = %if.end9
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5408
  %call13 = call i32 @pci_save_state(ptr noundef %11) #16, !dbg !5409
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5410
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37, !dbg !5411
  call void @dev_pm_set_driver_flags(ptr noundef %dev14, i32 noundef 5) #16, !dbg !5412
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5413
  %call15 = call zeroext i1 @pci_bridge_d3_possible(ptr noundef %13) #16, !dbg !5415
  br i1 %call15, label %if.then16, label %if.end23, !dbg !5416

if.then16:                                        ; preds = %if.end12
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5417
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 37, !dbg !5419
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev17, i32 noundef 100) #16, !dbg !5420
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5421
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37, !dbg !5422
  call void @pm_runtime_use_autosuspend(ptr noundef %dev18) #16, !dbg !5423
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5424
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 37, !dbg !5425
  call void @pm_runtime_mark_last_busy(ptr noundef %dev19) #16, !dbg !5426
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5427
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 37, !dbg !5428
  %call21 = call i32 @pm_runtime_put_autosuspend(ptr noundef %dev20) #16, !dbg !5429
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5430
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 37, !dbg !5431
  call void @pm_runtime_allow(ptr noundef %dev22) #16, !dbg !5432
  br label %if.end23, !dbg !5433

if.end23:                                         ; preds = %if.then16, %if.end12
  store i32 0, ptr %retval, align 4, !dbg !5434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5434

cleanup:                                          ; preds = %if.end23, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !5435
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !5435
  %19 = load i32, ptr %retval, align 4, !dbg !5435
  ret i32 %19, !dbg !5435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcie_portdrv_remove(ptr noundef %dev) #0 align 16 !dbg !5436 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5440
  %call = call zeroext i1 @pci_bridge_d3_possible(ptr noundef %0) #16, !dbg !5442
  br i1 %call, label %if.then, label %if.end, !dbg !5443

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5444
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 37, !dbg !5446
  call void @pm_runtime_forbid(ptr noundef %dev1) #16, !dbg !5447
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5448
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 37, !dbg !5449
  call void @pm_runtime_get_noresume(ptr noundef %dev2) #16, !dbg !5450
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5451
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5452
  call void @pm_runtime_dont_use_autosuspend(ptr noundef %dev3) #16, !dbg !5453
  br label %if.end, !dbg !5454

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5455
  call void @pcie_port_device_remove(ptr noundef %4) #16, !dbg !5456
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5457
  call void @pci_disable_device(ptr noundef %5) #16, !dbg !5458
  ret void, !dbg !5459
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcie_portdrv_shutdown(ptr noundef %dev) #0 align 16 !dbg !5460 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5462, metadata !DIExpression()), !dbg !5463
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5464
  %call = call zeroext i1 @pci_bridge_d3_possible(ptr noundef %0) #16, !dbg !5466
  br i1 %call, label %if.then, label %if.end, !dbg !5467

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5468
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 37, !dbg !5470
  call void @pm_runtime_forbid(ptr noundef %dev1) #16, !dbg !5471
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5472
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 37, !dbg !5473
  call void @pm_runtime_get_noresume(ptr noundef %dev2) #16, !dbg !5474
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5475
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5476
  call void @pm_runtime_dont_use_autosuspend(ptr noundef %dev3) #16, !dbg !5477
  br label %if.end, !dbg !5478

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5479
  call void @pcie_port_device_remove(ptr noundef %4) #16, !dbg !5480
  ret void, !dbg !5481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_type(ptr noundef %dev) #5 align 16 !dbg !5482 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5488, metadata !DIExpression()), !dbg !5489
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5490
  %call = call zeroext i16 @pcie_caps_reg(ptr noundef %0) #16, !dbg !5491
  %conv = zext i16 %call to i32, !dbg !5491
  %and = and i32 %conv, 240, !dbg !5492
  %shr = ashr i32 %and, 4, !dbg !5493
  ret i32 %shr, !dbg !5494
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_pcie(ptr noundef %dev) #5 align 16 !dbg !5495 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5501
  %call = call i32 @pci_pcie_cap(ptr noundef %0) #16, !dbg !5502
  %tobool = icmp ne i32 %call, 0, !dbg !5502
  ret i1 %tobool, !dbg !5503
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5504 dso_local void @pcie_link_rcec(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_device_register(ptr noundef %dev) #0 align 16 !dbg !5505 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %capabilities = alloca i32, align 4
  %i = alloca i32, align 4
  %nr_service = alloca i32, align 4
  %irqs = alloca [5 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %service = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5507, metadata !DIExpression()), !dbg !5522
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5508, metadata !DIExpression()), !dbg !5524
  call void @llvm.lifetime.start.p0(i64 4, ptr %capabilities) #15, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %capabilities, metadata !5509, metadata !DIExpression()), !dbg !5525
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5510, metadata !DIExpression()), !dbg !5526
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_service) #15, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %nr_service, metadata !5511, metadata !DIExpression()), !dbg !5527
  call void @llvm.lifetime.start.p0(i64 20, ptr %irqs) #15, !dbg !5528
  call void @llvm.dbg.declare(metadata ptr %irqs, metadata !5512, metadata !DIExpression()), !dbg !5529
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5530
  %call = call i32 @pci_enable_device(ptr noundef %0) #16, !dbg !5531
  store i32 %call, ptr %status, align 4, !dbg !5532
  %1 = load i32, ptr %status, align 4, !dbg !5533
  %tobool = icmp ne i32 %1, 0, !dbg !5533
  br i1 %tobool, label %if.then, label %if.end, !dbg !5535

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !5536
  store i32 %2, ptr %retval, align 4, !dbg !5537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !5537

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5538
  %call1 = call i32 @get_port_device_capability(ptr noundef %3) #16, !dbg !5539
  store i32 %call1, ptr %capabilities, align 4, !dbg !5540
  %4 = load i32, ptr %capabilities, align 4, !dbg !5541
  %tobool2 = icmp ne i32 %4, 0, !dbg !5541
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5543

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !5544

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5545
  call void @pci_set_master(ptr noundef %5) #16, !dbg !5546
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5547
  %arraydecay = getelementptr inbounds [5 x i32], ptr %irqs, i64 0, i64 0, !dbg !5548
  %7 = load i32, ptr %capabilities, align 4, !dbg !5549
  %call5 = call i32 @pcie_init_service_irqs(ptr noundef %6, ptr noundef %arraydecay, i32 noundef %7) #16, !dbg !5550
  store i32 %call5, ptr %status, align 4, !dbg !5551
  %8 = load i32, ptr %status, align 4, !dbg !5552
  %tobool6 = icmp ne i32 %8, 0, !dbg !5552
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !5554

if.then7:                                         ; preds = %if.end4
  %9 = load i32, ptr %capabilities, align 4, !dbg !5555
  %and = and i32 %9, 4, !dbg !5555
  store i32 %and, ptr %capabilities, align 4, !dbg !5555
  %10 = load i32, ptr %capabilities, align 4, !dbg !5557
  %tobool8 = icmp ne i32 %10, 0, !dbg !5557
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5559

if.then9:                                         ; preds = %if.then7
  br label %error_disable, !dbg !5560

if.end10:                                         ; preds = %if.then7
  br label %if.end11, !dbg !5561

if.end11:                                         ; preds = %if.end10, %if.end4
  store i32 -19, ptr %status, align 4, !dbg !5562
  store i32 0, ptr %nr_service, align 4, !dbg !5563
  store i32 0, ptr %i, align 4, !dbg !5564
  br label %for.cond, !dbg !5565

for.cond:                                         ; preds = %for.inc, %if.end11
  %11 = load i32, ptr %i, align 4, !dbg !5566
  %cmp = icmp slt i32 %11, 5, !dbg !5567
  br i1 %cmp, label %for.body, label %for.end, !dbg !5568

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %service) #15, !dbg !5569
  call void @llvm.dbg.declare(metadata ptr %service, metadata !5516, metadata !DIExpression()), !dbg !5570
  %12 = load i32, ptr %i, align 4, !dbg !5571
  %shl = shl i32 1, %12, !dbg !5572
  store i32 %shl, ptr %service, align 4, !dbg !5570
  %13 = load i32, ptr %capabilities, align 4, !dbg !5573
  %14 = load i32, ptr %service, align 4, !dbg !5575
  %and12 = and i32 %13, %14, !dbg !5576
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5576
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5577

if.then14:                                        ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5578

if.end15:                                         ; preds = %for.body
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5579
  %16 = load i32, ptr %service, align 4, !dbg !5581
  %17 = load i32, ptr %i, align 4, !dbg !5582
  %idxprom = sext i32 %17 to i64, !dbg !5583
  %arrayidx = getelementptr [5 x i32], ptr %irqs, i64 0, i64 %idxprom, !dbg !5583
  %18 = load i32, ptr %arrayidx, align 4, !dbg !5583
  %call16 = call i32 @pcie_device_init(ptr noundef %15, i32 noundef %16, i32 noundef %18) #16, !dbg !5584
  %tobool17 = icmp ne i32 %call16, 0, !dbg !5584
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5585

if.then18:                                        ; preds = %if.end15
  %19 = load i32, ptr %nr_service, align 4, !dbg !5586
  %inc = add i32 %19, 1, !dbg !5586
  store i32 %inc, ptr %nr_service, align 4, !dbg !5586
  br label %if.end19, !dbg !5587

if.end19:                                         ; preds = %if.then18, %if.end15
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5588
  br label %cleanup, !dbg !5588

cleanup:                                          ; preds = %if.end19, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %service) #15, !dbg !5588
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5589

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %20 = load i32, ptr %i, align 4, !dbg !5590
  %inc20 = add i32 %20, 1, !dbg !5590
  store i32 %inc20, ptr %i, align 4, !dbg !5590
  br label %for.cond, !dbg !5591, !llvm.loop !5592

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %nr_service, align 4, !dbg !5596
  %tobool21 = icmp ne i32 %21, 0, !dbg !5596
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !5598

if.then22:                                        ; preds = %for.end
  br label %error_cleanup_irqs, !dbg !5599

if.end23:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !5600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !5600

error_cleanup_irqs:                               ; preds = %if.then22
  call void @llvm.dbg.label(metadata !5520), !dbg !5601
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5602
  call void @pci_free_irq_vectors(ptr noundef %22) #16, !dbg !5603
  br label %error_disable, !dbg !5603

error_disable:                                    ; preds = %error_cleanup_irqs, %if.then9
  call void @llvm.dbg.label(metadata !5521), !dbg !5604
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !5605
  call void @pci_disable_device(ptr noundef %23) #16, !dbg !5606
  %24 = load i32, ptr %status, align 4, !dbg !5607
  store i32 %24, ptr %retval, align 4, !dbg !5608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !5608

cleanup24:                                        ; preds = %error_disable, %if.end23, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr %irqs) #15, !dbg !5609
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_service) #15, !dbg !5609
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5609
  call void @llvm.lifetime.end.p0(i64 4, ptr %capabilities) #15, !dbg !5609
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !5609
  %25 = load i32, ptr %retval, align 4, !dbg !5609
  ret i32 %25, !dbg !5609

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5610 dso_local i32 @pci_save_state(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_pm_set_driver_flags(ptr noundef %dev, i32 noundef %flags) #5 align 16 !dbg !5611 {
entry:
  %dev.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5615, metadata !DIExpression()), !dbg !5617
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5616, metadata !DIExpression()), !dbg !5618
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5619
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5620
  %power = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !5621
  %driver_flags = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 2, !dbg !5622
  store i32 %0, ptr %driver_flags, align 8, !dbg !5623
  ret void, !dbg !5624
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5625 dso_local zeroext i1 @pci_bridge_d3_possible(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5626 dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pm_runtime_use_autosuspend(ptr noundef %dev) #5 align 16 !dbg !5630 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5632, metadata !DIExpression()), !dbg !5633
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5634
  call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext true) #16, !dbg !5635
  ret void, !dbg !5636
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pm_runtime_mark_last_busy(ptr noundef %dev) #5 align 16 !dbg !5637 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  br label %do.body, !dbg !5641

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5642

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5644

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5642

do.body2:                                         ; preds = %do.end
  %call = call i64 @ktime_get_mono_fast_ns() #16, !dbg !5646
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5646
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !5646
  %last_busy = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 22, !dbg !5646
  store volatile i64 %call, ptr %last_busy, align 8, !dbg !5646
  br label %do.end3, !dbg !5646

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5642

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !5648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pm_runtime_put_autosuspend(ptr noundef %dev) #5 align 16 !dbg !5649 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5653
  %call = call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #16, !dbg !5654
  ret i32 %call, !dbg !5655
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5656 dso_local void @pm_runtime_allow(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @pcie_caps_reg(ptr noundef %dev) #5 align 16 !dbg !5657 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5663
  %pcie_flags_reg = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23, !dbg !5664
  %1 = load i16, ptr %pcie_flags_reg, align 2, !dbg !5664
  ret i16 %1, !dbg !5665
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_cap(ptr noundef %dev) #5 align 16 !dbg !5666 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5670
  %pcie_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 17, !dbg !5671
  %1 = load i8, ptr %pcie_cap, align 4, !dbg !5671
  %conv = zext i8 %1 to i32, !dbg !5670
  ret i32 %conv, !dbg !5672
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5673 dso_local i32 @pci_enable_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_port_device_capability(ptr noundef %dev) #0 align 16 !dbg !5674 {
entry:
  %dev.addr = alloca ptr, align 8
  %host = alloca ptr, align 8
  %services = alloca i32, align 4
  %linkcap = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5676, metadata !DIExpression()), !dbg !5728
  call void @llvm.lifetime.start.p0(i64 8, ptr %host) #15, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %host, metadata !5677, metadata !DIExpression()), !dbg !5730
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5731
  %bus = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !5732
  %1 = load ptr, ptr %bus, align 8, !dbg !5732
  %call = call ptr @pci_find_host_bridge(ptr noundef %1) #16, !dbg !5733
  store ptr %call, ptr %host, align 8, !dbg !5730
  call void @llvm.lifetime.start.p0(i64 4, ptr %services) #15, !dbg !5734
  call void @llvm.dbg.declare(metadata ptr %services, metadata !5724, metadata !DIExpression()), !dbg !5735
  store i32 0, ptr %services, align 4, !dbg !5735
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5736
  %is_hotplug_bridge = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5738
  %bf.load = load i40, ptr %is_hotplug_bridge, align 1, !dbg !5738
  %bf.lshr = lshr i40 %bf.load, 24, !dbg !5738
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5738
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5738
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5736
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5739

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5740
  %call1 = call i32 @pci_pcie_type(ptr noundef %3) #16, !dbg !5741
  %cmp = icmp eq i32 %call1, 4, !dbg !5742
  br i1 %cmp, label %land.lhs.true4, label %lor.lhs.false, !dbg !5743

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5744
  %call2 = call i32 @pci_pcie_type(ptr noundef %4) #16, !dbg !5745
  %cmp3 = icmp eq i32 %call2, 6, !dbg !5746
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !5747

land.lhs.true4:                                   ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load i8, ptr @pcie_ports_native, align 1, !dbg !5748, !range !5142, !noundef !990
  %tobool5 = trunc i8 %5 to i1, !dbg !5748
  br i1 %tobool5, label %if.then, label %lor.lhs.false6, !dbg !5749

lor.lhs.false6:                                   ; preds = %land.lhs.true4
  %6 = load ptr, ptr %host, align 8, !dbg !5750
  %native_pcie_hotplug = getelementptr inbounds %struct.pci_host_bridge, ptr %6, i32 0, i32 13, !dbg !5751
  %bf.load7 = load i16, ptr %native_pcie_hotplug, align 64, !dbg !5751
  %bf.lshr8 = lshr i16 %bf.load7, 4, !dbg !5751
  %bf.clear9 = and i16 %bf.lshr8, 1, !dbg !5751
  %bf.cast10 = zext i16 %bf.clear9 to i32, !dbg !5751
  %tobool11 = icmp ne i32 %bf.cast10, 0, !dbg !5750
  br i1 %tobool11, label %if.then, label %if.end, !dbg !5752

if.then:                                          ; preds = %lor.lhs.false6, %land.lhs.true4
  %7 = load i32, ptr %services, align 4, !dbg !5753
  %or = or i32 %7, 4, !dbg !5753
  store i32 %or, ptr %services, align 4, !dbg !5753
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5755
  %call12 = call i32 @pcie_capability_clear_word(ptr noundef %8, i32 noundef 24, i16 noundef zeroext 48) #16, !dbg !5756
  br label %if.end, !dbg !5757

if.end:                                           ; preds = %if.then, %lor.lhs.false6, %lor.lhs.false, %entry
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5758
  %call13 = call i32 @pci_pcie_type(ptr noundef %9) #16, !dbg !5760
  %cmp14 = icmp eq i32 %call13, 4, !dbg !5761
  br i1 %cmp14, label %land.lhs.true18, label %lor.lhs.false15, !dbg !5762

lor.lhs.false15:                                  ; preds = %if.end
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5763
  %call16 = call i32 @pci_pcie_type(ptr noundef %10) #16, !dbg !5764
  %cmp17 = icmp eq i32 %call16, 10, !dbg !5765
  br i1 %cmp17, label %land.lhs.true18, label %if.end28, !dbg !5766

land.lhs.true18:                                  ; preds = %lor.lhs.false15, %if.end
  %11 = load i8, ptr @pcie_ports_native, align 1, !dbg !5767, !range !5142, !noundef !990
  %tobool19 = trunc i8 %11 to i1, !dbg !5767
  br i1 %tobool19, label %if.then26, label %lor.lhs.false20, !dbg !5768

lor.lhs.false20:                                  ; preds = %land.lhs.true18
  %12 = load ptr, ptr %host, align 8, !dbg !5769
  %native_pme = getelementptr inbounds %struct.pci_host_bridge, ptr %12, i32 0, i32 13, !dbg !5770
  %bf.load21 = load i16, ptr %native_pme, align 64, !dbg !5770
  %bf.lshr22 = lshr i16 %bf.load21, 6, !dbg !5770
  %bf.clear23 = and i16 %bf.lshr22, 1, !dbg !5770
  %bf.cast24 = zext i16 %bf.clear23 to i32, !dbg !5770
  %tobool25 = icmp ne i32 %bf.cast24, 0, !dbg !5769
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !5771

if.then26:                                        ; preds = %lor.lhs.false20, %land.lhs.true18
  %13 = load i32, ptr %services, align 4, !dbg !5772
  %or27 = or i32 %13, 1, !dbg !5772
  store i32 %or27, ptr %services, align 4, !dbg !5772
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5774
  call void @pcie_pme_interrupt_enable(ptr noundef %14, i1 noundef zeroext false) #16, !dbg !5775
  br label %if.end28, !dbg !5776

if.end28:                                         ; preds = %if.then26, %lor.lhs.false20, %lor.lhs.false15
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5777
  %call29 = call zeroext i16 @pci_find_ext_capability(ptr noundef %15, i32 noundef 29) #16, !dbg !5779
  %conv = zext i16 %call29 to i32, !dbg !5779
  %tobool30 = icmp ne i32 %conv, 0, !dbg !5779
  br i1 %tobool30, label %land.lhs.true31, label %if.end41, !dbg !5780

land.lhs.true31:                                  ; preds = %if.end28
  %call32 = call zeroext i1 @pci_aer_available() #16, !dbg !5781
  br i1 %call32, label %land.lhs.true34, label %if.end41, !dbg !5782

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %16 = load i8, ptr @pcie_ports_dpc_native, align 1, !dbg !5783, !range !5142, !noundef !990
  %tobool35 = trunc i8 %16 to i1, !dbg !5783
  br i1 %tobool35, label %if.then39, label %lor.lhs.false37, !dbg !5784

lor.lhs.false37:                                  ; preds = %land.lhs.true34
  %17 = load i32, ptr %services, align 4, !dbg !5785
  %and = and i32 %17, 2, !dbg !5786
  %tobool38 = icmp ne i32 %and, 0, !dbg !5786
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !5787

if.then39:                                        ; preds = %lor.lhs.false37, %land.lhs.true34
  %18 = load i32, ptr %services, align 4, !dbg !5788
  %or40 = or i32 %18, 8, !dbg !5788
  store i32 %or40, ptr %services, align 4, !dbg !5788
  br label %if.end41, !dbg !5789

if.end41:                                         ; preds = %if.then39, %lor.lhs.false37, %land.lhs.true31, %if.end28
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !5790
  %call42 = call i32 @pci_pcie_type(ptr noundef %19) #16, !dbg !5791
  %cmp43 = icmp eq i32 %call42, 6, !dbg !5792
  br i1 %cmp43, label %if.then49, label %lor.lhs.false45, !dbg !5793

lor.lhs.false45:                                  ; preds = %if.end41
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !5794
  %call46 = call i32 @pci_pcie_type(ptr noundef %20) #16, !dbg !5795
  %cmp47 = icmp eq i32 %call46, 4, !dbg !5796
  br i1 %cmp47, label %if.then49, label %if.end56, !dbg !5797

if.then49:                                        ; preds = %lor.lhs.false45, %if.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr %linkcap) #15, !dbg !5798
  call void @llvm.dbg.declare(metadata ptr %linkcap, metadata !5725, metadata !DIExpression()), !dbg !5799
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5800
  %call50 = call i32 @pcie_capability_read_dword(ptr noundef %21, i32 noundef 12, ptr noundef %linkcap) #16, !dbg !5801
  %22 = load i32, ptr %linkcap, align 4, !dbg !5802
  %and51 = and i32 %22, 2097152, !dbg !5804
  %tobool52 = icmp ne i32 %and51, 0, !dbg !5804
  br i1 %tobool52, label %if.then53, label %if.end55, !dbg !5805

if.then53:                                        ; preds = %if.then49
  %23 = load i32, ptr %services, align 4, !dbg !5806
  %or54 = or i32 %23, 16, !dbg !5806
  store i32 %or54, ptr %services, align 4, !dbg !5806
  br label %if.end55, !dbg !5807

if.end55:                                         ; preds = %if.then53, %if.then49
  call void @llvm.lifetime.end.p0(i64 4, ptr %linkcap) #15, !dbg !5808
  br label %if.end56, !dbg !5809

if.end56:                                         ; preds = %if.end55, %lor.lhs.false45
  %24 = load i32, ptr %services, align 4, !dbg !5810
  call void @llvm.lifetime.end.p0(i64 4, ptr %services) #15, !dbg !5811
  call void @llvm.lifetime.end.p0(i64 8, ptr %host) #15, !dbg !5811
  ret i32 %24, !dbg !5812
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5813 dso_local void @pci_set_master(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_init_service_irqs(ptr noundef %dev, ptr noundef %irqs, i32 noundef %mask) #0 align 16 !dbg !5814 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %irqs.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5818, metadata !DIExpression()), !dbg !5824
  store ptr %irqs, ptr %irqs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irqs.addr, metadata !5819, metadata !DIExpression()), !dbg !5825
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5820, metadata !DIExpression()), !dbg !5826
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5827
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5821, metadata !DIExpression()), !dbg !5828
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5827
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5822, metadata !DIExpression()), !dbg !5829
  store i32 0, ptr %i, align 4, !dbg !5830
  br label %for.cond, !dbg !5832

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5833
  %cmp = icmp slt i32 %0, 5, !dbg !5835
  br i1 %cmp, label %for.body, label %for.end, !dbg !5836

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %irqs.addr, align 8, !dbg !5837
  %2 = load i32, ptr %i, align 4, !dbg !5838
  %idxprom = sext i32 %2 to i64, !dbg !5837
  %arrayidx = getelementptr i32, ptr %1, i64 %idxprom, !dbg !5837
  store i32 -1, ptr %arrayidx, align 4, !dbg !5839
  br label %for.inc, !dbg !5837

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !5840
  %inc = add i32 %3, 1, !dbg !5840
  store i32 %inc, ptr %i, align 4, !dbg !5840
  br label %for.cond, !dbg !5841, !llvm.loop !5842

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %mask.addr, align 4, !dbg !5844
  %and = and i32 %4, 1, !dbg !5846
  %tobool = icmp ne i32 %and, 0, !dbg !5846
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5847

land.lhs.true:                                    ; preds = %for.end
  %call = call zeroext i1 @pcie_pme_no_msi() #16, !dbg !5848
  br i1 %call, label %if.then, label %if.end, !dbg !5849

if.then:                                          ; preds = %land.lhs.true
  br label %legacy_irq, !dbg !5850

if.end:                                           ; preds = %land.lhs.true, %for.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5851
  %6 = load ptr, ptr %irqs.addr, align 8, !dbg !5853
  %7 = load i32, ptr %mask.addr, align 4, !dbg !5854
  %call1 = call i32 @pcie_port_enable_irq_vec(ptr noundef %5, ptr noundef %6, i32 noundef %7) #16, !dbg !5855
  %cmp2 = icmp eq i32 %call1, 0, !dbg !5856
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5857

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5858

if.end4:                                          ; preds = %if.end
  br label %legacy_irq, !dbg !5859

legacy_irq:                                       ; preds = %if.end4, %if.then
  call void @llvm.dbg.label(metadata !5823), !dbg !5860
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5861
  %call5 = call i32 @pci_alloc_irq_vectors(ptr noundef %8, i32 noundef 1, i32 noundef 1, i32 noundef 1) #16, !dbg !5862
  store i32 %call5, ptr %ret, align 4, !dbg !5863
  %9 = load i32, ptr %ret, align 4, !dbg !5864
  %cmp6 = icmp slt i32 %9, 0, !dbg !5866
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5867

if.then7:                                         ; preds = %legacy_irq
  store i32 -19, ptr %retval, align 4, !dbg !5868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5868

if.end8:                                          ; preds = %legacy_irq
  store i32 0, ptr %i, align 4, !dbg !5869
  br label %for.cond9, !dbg !5871

for.cond9:                                        ; preds = %for.inc15, %if.end8
  %10 = load i32, ptr %i, align 4, !dbg !5872
  %cmp10 = icmp slt i32 %10, 5, !dbg !5874
  br i1 %cmp10, label %for.body11, label %for.end17, !dbg !5875

for.body11:                                       ; preds = %for.cond9
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5876
  %call12 = call i32 @pci_irq_vector(ptr noundef %11, i32 noundef 0) #16, !dbg !5877
  %12 = load ptr, ptr %irqs.addr, align 8, !dbg !5878
  %13 = load i32, ptr %i, align 4, !dbg !5879
  %idxprom13 = sext i32 %13 to i64, !dbg !5878
  %arrayidx14 = getelementptr i32, ptr %12, i64 %idxprom13, !dbg !5878
  store i32 %call12, ptr %arrayidx14, align 4, !dbg !5880
  br label %for.inc15, !dbg !5878

for.inc15:                                        ; preds = %for.body11
  %14 = load i32, ptr %i, align 4, !dbg !5881
  %inc16 = add i32 %14, 1, !dbg !5881
  store i32 %inc16, ptr %i, align 4, !dbg !5881
  br label %for.cond9, !dbg !5882, !llvm.loop !5883

for.end17:                                        ; preds = %for.cond9
  store i32 0, ptr %retval, align 4, !dbg !5885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5885

cleanup:                                          ; preds = %for.end17, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5886
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5886
  %15 = load i32, ptr %retval, align 4, !dbg !5886
  ret i32 %15, !dbg !5886
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_device_init(ptr noundef %pdev, i32 noundef %service, i32 noundef %irq) #0 align 16 !dbg !5887 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %service.addr = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %pcie = alloca ptr, align 8
  %device = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5891, metadata !DIExpression()), !dbg !5897
  store i32 %service, ptr %service.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %service.addr, metadata !5892, metadata !DIExpression()), !dbg !5898
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5893, metadata !DIExpression()), !dbg !5899
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #15, !dbg !5900
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5894, metadata !DIExpression()), !dbg !5901
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcie) #15, !dbg !5902
  call void @llvm.dbg.declare(metadata ptr %pcie, metadata !5895, metadata !DIExpression()), !dbg !5903
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #15, !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5896, metadata !DIExpression()), !dbg !5905
  %call = call noalias ptr @kzalloc(i64 noundef 760, i32 noundef 3264) #18, !dbg !5906
  store ptr %call, ptr %pcie, align 8, !dbg !5907
  %0 = load ptr, ptr %pcie, align 8, !dbg !5908
  %tobool = icmp ne ptr %0, null, !dbg !5908
  br i1 %tobool, label %if.end, label %if.then, !dbg !5910

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5911

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5912
  %2 = load ptr, ptr %pcie, align 8, !dbg !5913
  %port = getelementptr inbounds %struct.pcie_device, ptr %2, i32 0, i32 1, !dbg !5914
  store ptr %1, ptr %port, align 8, !dbg !5915
  %3 = load i32, ptr %irq.addr, align 4, !dbg !5916
  %4 = load ptr, ptr %pcie, align 8, !dbg !5917
  %irq2 = getelementptr inbounds %struct.pcie_device, ptr %4, i32 0, i32 0, !dbg !5918
  store i32 %3, ptr %irq2, align 8, !dbg !5919
  %5 = load i32, ptr %service.addr, align 4, !dbg !5920
  %6 = load ptr, ptr %pcie, align 8, !dbg !5921
  %service3 = getelementptr inbounds %struct.pcie_device, ptr %6, i32 0, i32 2, !dbg !5922
  store i32 %5, ptr %service3, align 8, !dbg !5923
  %7 = load ptr, ptr %pcie, align 8, !dbg !5924
  %device4 = getelementptr inbounds %struct.pcie_device, ptr %7, i32 0, i32 4, !dbg !5925
  store ptr %device4, ptr %device, align 8, !dbg !5926
  %8 = load ptr, ptr %device, align 8, !dbg !5927
  %bus = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 5, !dbg !5928
  store ptr @pcie_port_bus_type, ptr %bus, align 8, !dbg !5929
  %9 = load ptr, ptr %device, align 8, !dbg !5930
  %release = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 32, !dbg !5931
  store ptr @release_pcie_device, ptr %release, align 8, !dbg !5932
  %10 = load ptr, ptr %device, align 8, !dbg !5933
  %11 = load ptr, ptr %pdev.addr, align 8, !dbg !5934
  %call5 = call ptr @pci_name(ptr noundef %11) #16, !dbg !5935
  %12 = load ptr, ptr %pdev.addr, align 8, !dbg !5936
  %call6 = call i32 @pci_pcie_type(ptr noundef %12) #16, !dbg !5936
  %sub = sub i32 %call6, 4, !dbg !5936
  %shl = shl i32 %sub, 8, !dbg !5936
  %13 = load i32, ptr %service.addr, align 4, !dbg !5936
  %or = or i32 %shl, %13, !dbg !5936
  %call7 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %10, ptr noundef @.str.7, ptr noundef %call5, i32 noundef %or) #16, !dbg !5937
  %14 = load ptr, ptr %pdev.addr, align 8, !dbg !5938
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 37, !dbg !5939
  %15 = load ptr, ptr %device, align 8, !dbg !5940
  %parent = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1, !dbg !5941
  store ptr %dev, ptr %parent, align 8, !dbg !5942
  %16 = load ptr, ptr %device, align 8, !dbg !5943
  call void @device_enable_async_suspend(ptr noundef %16) #16, !dbg !5944
  %17 = load ptr, ptr %device, align 8, !dbg !5945
  %call8 = call i32 @device_register(ptr noundef %17) #16, !dbg !5946
  store i32 %call8, ptr %retval1, align 4, !dbg !5947
  %18 = load i32, ptr %retval1, align 4, !dbg !5948
  %tobool9 = icmp ne i32 %18, 0, !dbg !5948
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5950

if.then10:                                        ; preds = %if.end
  %19 = load ptr, ptr %device, align 8, !dbg !5951
  call void @put_device(ptr noundef %19) #16, !dbg !5953
  %20 = load i32, ptr %retval1, align 4, !dbg !5954
  store i32 %20, ptr %retval, align 4, !dbg !5955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5955

if.end11:                                         ; preds = %if.end
  %21 = load ptr, ptr %device, align 8, !dbg !5956
  call void @pm_runtime_no_callbacks(ptr noundef %21) #16, !dbg !5957
  store i32 0, ptr %retval, align 4, !dbg !5958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5958

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #15, !dbg !5959
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcie) #15, !dbg !5959
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #15, !dbg !5959
  %22 = load i32, ptr %retval, align 4, !dbg !5959
  ret i32 %22, !dbg !5959
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5960 dso_local void @pci_free_irq_vectors(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5961 dso_local void @pci_disable_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5962 dso_local ptr @pci_find_host_bridge(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_capability_clear_word(ptr noundef %dev, i32 noundef %pos, i16 noundef zeroext %clear) #5 align 16 !dbg !5965 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %clear.addr = alloca i16, align 2
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5969, metadata !DIExpression()), !dbg !5972
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5970, metadata !DIExpression()), !dbg !5973
  store i16 %clear, ptr %clear.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !5971, metadata !DIExpression()), !dbg !5974
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5975
  %1 = load i32, ptr %pos.addr, align 4, !dbg !5976
  %2 = load i16, ptr %clear.addr, align 2, !dbg !5977
  %call = call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext 0) #16, !dbg !5978
  ret i32 %call, !dbg !5979
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5980 dso_local void @pcie_pme_interrupt_enable(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5983 dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_aer_available() #5 align 16 !dbg !5986 {
entry:
  ret i1 false, !dbg !5987
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5988 dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef %pos, i16 noundef zeroext %clear, i16 noundef zeroext %set) #5 align 16 !dbg !5991 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %clear.addr = alloca i16, align 2
  %set.addr = alloca i16, align 2
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5995, metadata !DIExpression()), !dbg !5999
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5996, metadata !DIExpression()), !dbg !6000
  store i16 %clear, ptr %clear.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !5997, metadata !DIExpression()), !dbg !6001
  store i16 %set, ptr %set.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !5998, metadata !DIExpression()), !dbg !6002
  %0 = load i32, ptr %pos.addr, align 4, !dbg !6003
  switch i32 %0, label %sw.default [
    i32 16, label %sw.bb
    i32 28, label %sw.bb
  ], !dbg !6004

sw.bb:                                            ; preds = %entry, %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6005
  %2 = load i32, ptr %pos.addr, align 4, !dbg !6007
  %3 = load i16, ptr %clear.addr, align 2, !dbg !6008
  %4 = load i16, ptr %set.addr, align 2, !dbg !6009
  %call = call i32 @pcie_capability_clear_and_set_word_locked(ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #16, !dbg !6010
  store i32 %call, ptr %retval, align 4, !dbg !6011
  br label %return, !dbg !6011

sw.default:                                       ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6012
  %6 = load i32, ptr %pos.addr, align 4, !dbg !6013
  %7 = load i16, ptr %clear.addr, align 2, !dbg !6014
  %8 = load i16, ptr %set.addr, align 2, !dbg !6015
  %call1 = call i32 @pcie_capability_clear_and_set_word_unlocked(ptr noundef %5, i32 noundef %6, i16 noundef zeroext %7, i16 noundef zeroext %8) #16, !dbg !6016
  store i32 %call1, ptr %retval, align 4, !dbg !6017
  br label %return, !dbg !6017

return:                                           ; preds = %sw.default, %sw.bb
  %9 = load i32, ptr %retval, align 4, !dbg !6018
  ret i32 %9, !dbg !6018
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6019 dso_local i32 @pcie_capability_clear_and_set_word_locked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6020 dso_local i32 @pcie_capability_clear_and_set_word_unlocked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcie_pme_no_msi() #5 align 16 !dbg !6021 {
entry:
  %0 = load i8, ptr @pcie_pme_msi_disabled, align 1, !dbg !6022, !range !5142, !noundef !990
  %tobool = trunc i8 %0 to i1, !dbg !6022
  ret i1 %tobool, !dbg !6023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_enable_irq_vec(ptr noundef %dev, ptr noundef %irqs, i32 noundef %mask) #0 align 16 !dbg !6024 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %irqs.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %nr_entries = alloca i32, align 4
  %nvec = alloca i32, align 4
  %pcie_irq = alloca i32, align 4
  %pme = alloca i32, align 4
  %aer = alloca i32, align 4
  %dpc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6026, metadata !DIExpression()), !dbg !6035
  store ptr %irqs, ptr %irqs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %irqs.addr, metadata !6027, metadata !DIExpression()), !dbg !6036
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6028, metadata !DIExpression()), !dbg !6037
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_entries) #15, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %nr_entries, metadata !6029, metadata !DIExpression()), !dbg !6039
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvec) #15, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %nvec, metadata !6030, metadata !DIExpression()), !dbg !6040
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcie_irq) #15, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %pcie_irq, metadata !6031, metadata !DIExpression()), !dbg !6041
  call void @llvm.lifetime.start.p0(i64 4, ptr %pme) #15, !dbg !6042
  call void @llvm.dbg.declare(metadata ptr %pme, metadata !6032, metadata !DIExpression()), !dbg !6043
  store i32 0, ptr %pme, align 4, !dbg !6043
  call void @llvm.lifetime.start.p0(i64 4, ptr %aer) #15, !dbg !6042
  call void @llvm.dbg.declare(metadata ptr %aer, metadata !6033, metadata !DIExpression()), !dbg !6044
  store i32 0, ptr %aer, align 4, !dbg !6044
  call void @llvm.lifetime.start.p0(i64 4, ptr %dpc) #15, !dbg !6042
  call void @llvm.dbg.declare(metadata ptr %dpc, metadata !6034, metadata !DIExpression()), !dbg !6045
  store i32 0, ptr %dpc, align 4, !dbg !6045
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6046
  %call = call i32 @pci_alloc_irq_vectors(ptr noundef %0, i32 noundef 1, i32 noundef 32, i32 noundef 6) #16, !dbg !6047
  store i32 %call, ptr %nr_entries, align 4, !dbg !6048
  %1 = load i32, ptr %nr_entries, align 4, !dbg !6049
  %cmp = icmp slt i32 %1, 0, !dbg !6051
  br i1 %cmp, label %if.then, label %if.end, !dbg !6052

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %nr_entries, align 4, !dbg !6053
  store i32 %2, ptr %retval, align 4, !dbg !6054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6054

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6055
  %4 = load i32, ptr %mask.addr, align 4, !dbg !6056
  %call1 = call i32 @pcie_message_numbers(ptr noundef %3, i32 noundef %4, ptr noundef %pme, ptr noundef %aer, ptr noundef %dpc) #16, !dbg !6057
  store i32 %call1, ptr %nvec, align 4, !dbg !6058
  %5 = load i32, ptr %nvec, align 4, !dbg !6059
  %6 = load i32, ptr %nr_entries, align 4, !dbg !6061
  %cmp2 = icmp sgt i32 %5, %6, !dbg !6062
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6063

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6064
  call void @pci_free_irq_vectors(ptr noundef %7) #16, !dbg !6066
  store i32 -5, ptr %retval, align 4, !dbg !6067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6067

if.end4:                                          ; preds = %if.end
  %8 = load i32, ptr %nvec, align 4, !dbg !6068
  %9 = load i32, ptr %nr_entries, align 4, !dbg !6070
  %cmp5 = icmp ne i32 %8, %9, !dbg !6071
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !6072

if.then6:                                         ; preds = %if.end4
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !6073
  call void @pci_free_irq_vectors(ptr noundef %10) #16, !dbg !6075
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !6076
  %12 = load i32, ptr %nvec, align 4, !dbg !6077
  %13 = load i32, ptr %nvec, align 4, !dbg !6078
  %call7 = call i32 @pci_alloc_irq_vectors(ptr noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef 6) #16, !dbg !6079
  store i32 %call7, ptr %nr_entries, align 4, !dbg !6080
  %14 = load i32, ptr %nr_entries, align 4, !dbg !6081
  %cmp8 = icmp slt i32 %14, 0, !dbg !6083
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !6084

if.then9:                                         ; preds = %if.then6
  %15 = load i32, ptr %nr_entries, align 4, !dbg !6085
  store i32 %15, ptr %retval, align 4, !dbg !6086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6086

if.end10:                                         ; preds = %if.then6
  br label %if.end11, !dbg !6087

if.end11:                                         ; preds = %if.end10, %if.end4
  %16 = load i32, ptr %mask.addr, align 4, !dbg !6088
  %and = and i32 %16, 21, !dbg !6090
  %tobool = icmp ne i32 %and, 0, !dbg !6090
  br i1 %tobool, label %if.then12, label %if.end16, !dbg !6091

if.then12:                                        ; preds = %if.end11
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !6092
  %18 = load i32, ptr %pme, align 4, !dbg !6094
  %call13 = call i32 @pci_irq_vector(ptr noundef %17, i32 noundef %18) #16, !dbg !6095
  store i32 %call13, ptr %pcie_irq, align 4, !dbg !6096
  %19 = load i32, ptr %pcie_irq, align 4, !dbg !6097
  %20 = load ptr, ptr %irqs.addr, align 8, !dbg !6098
  %arrayidx = getelementptr i32, ptr %20, i64 0, !dbg !6098
  store i32 %19, ptr %arrayidx, align 4, !dbg !6099
  %21 = load i32, ptr %pcie_irq, align 4, !dbg !6100
  %22 = load ptr, ptr %irqs.addr, align 8, !dbg !6101
  %arrayidx14 = getelementptr i32, ptr %22, i64 2, !dbg !6101
  store i32 %21, ptr %arrayidx14, align 4, !dbg !6102
  %23 = load i32, ptr %pcie_irq, align 4, !dbg !6103
  %24 = load ptr, ptr %irqs.addr, align 8, !dbg !6104
  %arrayidx15 = getelementptr i32, ptr %24, i64 4, !dbg !6104
  store i32 %23, ptr %arrayidx15, align 4, !dbg !6105
  br label %if.end16, !dbg !6106

if.end16:                                         ; preds = %if.then12, %if.end11
  %25 = load i32, ptr %mask.addr, align 4, !dbg !6107
  %and17 = and i32 %25, 2, !dbg !6109
  %tobool18 = icmp ne i32 %and17, 0, !dbg !6109
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !6110

if.then19:                                        ; preds = %if.end16
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !6111
  %27 = load i32, ptr %aer, align 4, !dbg !6112
  %call20 = call i32 @pci_irq_vector(ptr noundef %26, i32 noundef %27) #16, !dbg !6113
  %28 = load ptr, ptr %irqs.addr, align 8, !dbg !6114
  %arrayidx21 = getelementptr i32, ptr %28, i64 1, !dbg !6114
  store i32 %call20, ptr %arrayidx21, align 4, !dbg !6115
  br label %if.end22, !dbg !6114

if.end22:                                         ; preds = %if.then19, %if.end16
  %29 = load i32, ptr %mask.addr, align 4, !dbg !6116
  %and23 = and i32 %29, 8, !dbg !6118
  %tobool24 = icmp ne i32 %and23, 0, !dbg !6118
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !6119

if.then25:                                        ; preds = %if.end22
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !6120
  %31 = load i32, ptr %dpc, align 4, !dbg !6121
  %call26 = call i32 @pci_irq_vector(ptr noundef %30, i32 noundef %31) #16, !dbg !6122
  %32 = load ptr, ptr %irqs.addr, align 8, !dbg !6123
  %arrayidx27 = getelementptr i32, ptr %32, i64 3, !dbg !6123
  store i32 %call26, ptr %arrayidx27, align 4, !dbg !6124
  br label %if.end28, !dbg !6123

if.end28:                                         ; preds = %if.then25, %if.end22
  store i32 0, ptr %retval, align 4, !dbg !6125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6125

cleanup:                                          ; preds = %if.end28, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dpc) #15, !dbg !6126
  call void @llvm.lifetime.end.p0(i64 4, ptr %aer) #15, !dbg !6126
  call void @llvm.lifetime.end.p0(i64 4, ptr %pme) #15, !dbg !6126
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcie_irq) #15, !dbg !6126
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvec) #15, !dbg !6126
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_entries) #15, !dbg !6126
  %33 = load i32, ptr %retval, align 4, !dbg !6126
  ret i32 %33, !dbg !6126
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6127 dso_local i32 @pci_alloc_irq_vectors(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6130 dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_message_numbers(ptr noundef %dev, i32 noundef %mask, ptr noundef %pme, ptr noundef %aer, ptr noundef %dpc) #0 align 16 !dbg !6133 {
entry:
  %dev.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %pme.addr = alloca ptr, align 8
  %aer.addr = alloca ptr, align 8
  %dpc.addr = alloca ptr, align 8
  %nvec = alloca i32, align 4
  %pos = alloca i32, align 4
  %reg16 = alloca i16, align 2
  %__UNIQUE_ID___x293 = alloca i32, align 4
  %__UNIQUE_ID___y294 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6137, metadata !DIExpression()), !dbg !6152
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6138, metadata !DIExpression()), !dbg !6153
  store ptr %pme, ptr %pme.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pme.addr, metadata !6139, metadata !DIExpression()), !dbg !6154
  store ptr %aer, ptr %aer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aer.addr, metadata !6140, metadata !DIExpression()), !dbg !6155
  store ptr %dpc, ptr %dpc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dpc.addr, metadata !6141, metadata !DIExpression()), !dbg !6156
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvec) #15, !dbg !6157
  call void @llvm.dbg.declare(metadata ptr %nvec, metadata !6142, metadata !DIExpression()), !dbg !6158
  store i32 0, ptr %nvec, align 4, !dbg !6158
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #15, !dbg !6157
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6143, metadata !DIExpression()), !dbg !6159
  call void @llvm.lifetime.start.p0(i64 2, ptr %reg16) #15, !dbg !6160
  call void @llvm.dbg.declare(metadata ptr %reg16, metadata !6144, metadata !DIExpression()), !dbg !6161
  %0 = load i32, ptr %mask.addr, align 4, !dbg !6162
  %and = and i32 %0, 21, !dbg !6164
  %tobool = icmp ne i32 %and, 0, !dbg !6164
  br i1 %tobool, label %if.then, label %if.end, !dbg !6165

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6166
  %call = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 2, ptr noundef %reg16) #16, !dbg !6168
  %2 = load i16, ptr %reg16, align 2, !dbg !6169
  %conv = zext i16 %2 to i32, !dbg !6169
  %and1 = and i32 %conv, 15872, !dbg !6170
  %shr = ashr i32 %and1, 9, !dbg !6171
  %3 = load ptr, ptr %pme.addr, align 8, !dbg !6172
  store i32 %shr, ptr %3, align 4, !dbg !6173
  %4 = load ptr, ptr %pme.addr, align 8, !dbg !6174
  %5 = load i32, ptr %4, align 4, !dbg !6175
  %add = add i32 %5, 1, !dbg !6176
  store i32 %add, ptr %nvec, align 4, !dbg !6177
  br label %if.end, !dbg !6178

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %mask.addr, align 4, !dbg !6179
  %and2 = and i32 %6, 8, !dbg !6180
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6180
  br i1 %tobool3, label %if.then4, label %if.end16, !dbg !6181

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6182
  %call5 = call zeroext i16 @pci_find_ext_capability(ptr noundef %7, i32 noundef 29) #16, !dbg !6183
  %conv6 = zext i16 %call5 to i32, !dbg !6183
  store i32 %conv6, ptr %pos, align 4, !dbg !6184
  %8 = load i32, ptr %pos, align 4, !dbg !6185
  %tobool7 = icmp ne i32 %8, 0, !dbg !6185
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !6186

if.then8:                                         ; preds = %if.then4
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6187
  %10 = load i32, ptr %pos, align 4, !dbg !6188
  %add9 = add i32 %10, 4, !dbg !6189
  %call10 = call i32 @pci_read_config_word(ptr noundef %9, i32 noundef %add9, ptr noundef %reg16) #16, !dbg !6190
  %11 = load i16, ptr %reg16, align 2, !dbg !6191
  %conv11 = zext i16 %11 to i32, !dbg !6191
  %and12 = and i32 %conv11, 31, !dbg !6192
  %12 = load ptr, ptr %dpc.addr, align 8, !dbg !6193
  store i32 %and12, ptr %12, align 4, !dbg !6194
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x293) #15, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x293, metadata !6145, metadata !DIExpression()), !dbg !6195
  %13 = load i32, ptr %nvec, align 4, !dbg !6195
  store i32 %13, ptr %__UNIQUE_ID___x293, align 4, !dbg !6195
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y294) #15, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y294, metadata !6151, metadata !DIExpression()), !dbg !6195
  %14 = load ptr, ptr %dpc.addr, align 8, !dbg !6195
  %15 = load i32, ptr %14, align 4, !dbg !6195
  %add13 = add i32 %15, 1, !dbg !6195
  store i32 %add13, ptr %__UNIQUE_ID___y294, align 4, !dbg !6195
  %16 = load i32, ptr %__UNIQUE_ID___x293, align 4, !dbg !6195
  %17 = load i32, ptr %__UNIQUE_ID___y294, align 4, !dbg !6195
  %cmp = icmp ugt i32 %16, %17, !dbg !6195
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6195

cond.true:                                        ; preds = %if.then8
  %18 = load i32, ptr %__UNIQUE_ID___x293, align 4, !dbg !6195
  br label %cond.end, !dbg !6195

cond.false:                                       ; preds = %if.then8
  %19 = load i32, ptr %__UNIQUE_ID___y294, align 4, !dbg !6195
  br label %cond.end, !dbg !6195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !6195
  store i32 %cond, ptr %tmp, align 4, !dbg !6195
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y294) #15, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x293) #15, !dbg !6196
  %20 = load i32, ptr %tmp, align 4, !dbg !6195
  store i32 %20, ptr %nvec, align 4, !dbg !6197
  br label %if.end15, !dbg !6198

if.end15:                                         ; preds = %cond.end, %if.then4
  br label %if.end16, !dbg !6199

if.end16:                                         ; preds = %if.end15, %if.end
  %21 = load i32, ptr %nvec, align 4, !dbg !6200
  call void @llvm.lifetime.end.p0(i64 2, ptr %reg16) #15, !dbg !6201
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #15, !dbg !6201
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvec) #15, !dbg !6201
  ret i32 %21, !dbg !6202
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6203 dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6207 dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6210 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6214, metadata !DIExpression()), !dbg !6216
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6215, metadata !DIExpression()), !dbg !6217
  %0 = load i64, ptr %size.addr, align 8, !dbg !6218
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6219
  %or = or i32 %1, 256, !dbg !6220
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !6221
  ret ptr %call, !dbg !6222
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @release_pcie_device(ptr noundef %dev) #0 align 16 !dbg !6223 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6225, metadata !DIExpression()), !dbg !6228
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6226, metadata !DIExpression()), !dbg !6229
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6229
  store ptr %0, ptr %__mptr, align 8, !dbg !6229
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6229
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !6229
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6229
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6230
  %2 = load ptr, ptr %tmp, align 8, !dbg !6229
  call void @kfree(ptr noundef %2) #16, !dbg !6231
  ret void, !dbg !6232
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6233 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_name(ptr noundef %pdev) #5 align 16 !dbg !6236 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6240, metadata !DIExpression()), !dbg !6241
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6242
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !6243
  %call = call ptr @dev_name(ptr noundef %dev) #16, !dbg !6244
  ret ptr %call, !dbg !6245
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_enable_async_suspend(ptr noundef %dev) #5 align 16 !dbg !6246 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6248, metadata !DIExpression()), !dbg !6249
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6250
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !6252
  %is_prepared = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !6253
  %bf.load = load i16, ptr %is_prepared, align 4, !dbg !6253
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !6253
  %bf.clear = and i16 %bf.lshr, 1, !dbg !6253
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !6253
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !6254

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6255
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !6256
  %async_suspend = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 1, !dbg !6257
  %bf.load2 = load i16, ptr %async_suspend, align 4, !dbg !6258
  %bf.clear3 = and i16 %bf.load2, -3, !dbg !6258
  %bf.set = or i16 %bf.clear3, 2, !dbg !6258
  store i16 %bf.set, ptr %async_suspend, align 4, !dbg !6258
  br label %if.end, !dbg !6255

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6259
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6260 dso_local i32 @device_register(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6261 dso_local void @pm_runtime_no_callbacks(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6262 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6264, metadata !DIExpression()), !dbg !6269
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6265, metadata !DIExpression()), !dbg !6270
  %0 = load i64, ptr %size.addr, align 8, !dbg !6271
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6272
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6273

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6274
  %tobool = icmp ne i64 %2, 0, !dbg !6274
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6275

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6266, metadata !DIExpression()), !dbg !6277
  %3 = load i64, ptr %size.addr, align 8, !dbg !6278
  %cmp = icmp ugt i64 %3, 8192, !dbg !6280
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6281

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6282
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6283
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6284
  store ptr %call, ptr %retval, align 8, !dbg !6285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6285

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6286
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6286
  store i32 %call2, ptr %index, align 4, !dbg !6287
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6288
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6289
  %9 = ptrtoint ptr %8 to i64, !dbg !6289
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6290
  %idxprom = zext i32 %call3 to i64, !dbg !6291
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6291
  %10 = load i32, ptr %index, align 4, !dbg !6292
  %idxprom4 = zext i32 %10 to i64, !dbg !6291
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6291
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6291
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6293
  %13 = load i64, ptr %size.addr, align 8, !dbg !6294
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !6295
  store ptr %call6, ptr %retval, align 8, !dbg !6296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6296

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6297
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6298
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6299
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6300
  store ptr %call8, ptr %retval, align 8, !dbg !6301
  br label %return, !dbg !6301

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6302
  ret ptr %16, !dbg !6302
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6303 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6304 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6308, metadata !DIExpression()), !dbg !6310
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6309, metadata !DIExpression()), !dbg !6311
  %0 = load i64, ptr %size.addr, align 8, !dbg !6312
  %tobool = icmp ne i64 %0, 0, !dbg !6312
  br i1 %tobool, label %if.end, label %if.then, !dbg !6314

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6315
  br label %return, !dbg !6315

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6316
  %cmp = icmp ule i64 %1, 8, !dbg !6318
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6319

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6320
  br label %return, !dbg !6320

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6321
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6323
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6324

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6325
  %cmp4 = icmp ule i64 %3, 96, !dbg !6326
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6327

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6328
  br label %return, !dbg !6328

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6329
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6331
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6332

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6333
  %cmp9 = icmp ule i64 %5, 192, !dbg !6334
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6335

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6336
  br label %return, !dbg !6336

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6337
  %cmp12 = icmp ule i64 %6, 8, !dbg !6339
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6340

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6341
  br label %return, !dbg !6341

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6342
  %cmp15 = icmp ule i64 %7, 16, !dbg !6344
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6345

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6346
  br label %return, !dbg !6346

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6347
  %cmp18 = icmp ule i64 %8, 32, !dbg !6349
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6350

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6351
  br label %return, !dbg !6351

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6352
  %cmp21 = icmp ule i64 %9, 64, !dbg !6354
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6355

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6356
  br label %return, !dbg !6356

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6357
  %cmp24 = icmp ule i64 %10, 128, !dbg !6359
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6360

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6361
  br label %return, !dbg !6361

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6362
  %cmp27 = icmp ule i64 %11, 256, !dbg !6364
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6365

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6366
  br label %return, !dbg !6366

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6367
  %cmp30 = icmp ule i64 %12, 512, !dbg !6369
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6370

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6371
  br label %return, !dbg !6371

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6372
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6374
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6375

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6377
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6379
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6380

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6381
  br label %return, !dbg !6381

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6382
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6384
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6385

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6386
  br label %return, !dbg !6386

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6387
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6389
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6390

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6391
  br label %return, !dbg !6391

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6392
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6394
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6395

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6396
  br label %return, !dbg !6396

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6397
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6399
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6400

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6401
  br label %return, !dbg !6401

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6402
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6404
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6405

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6406
  br label %return, !dbg !6406

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6407
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6409
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6410

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6411
  br label %return, !dbg !6411

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6412
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6414
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6415

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6416
  br label %return, !dbg !6416

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6417
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6419
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6420

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6421
  br label %return, !dbg !6421

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6422
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6424
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6425

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6426
  br label %return, !dbg !6426

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6427
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6429
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6430

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6431
  br label %return, !dbg !6431

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6432, !range !5142, !noundef !990
  %tobool69 = trunc i8 %25 to i1, !dbg !6432
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6434

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6435

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #20, !dbg !6436, !srcloc !6439
  unreachable, !dbg !6436

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6440

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6441

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6442

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6444

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6442

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #15, !dbg !6446, !srcloc !6448
  br label %do.end75, !dbg !6446

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6442

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6449
  br label %return, !dbg !6449

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6450
  ret i32 %26, !dbg !6450
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6451 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6457 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6461, metadata !DIExpression()), !dbg !6463
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6462, metadata !DIExpression()), !dbg !6464
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6465
  %and = and i32 %0, 17, !dbg !6465
  %cmp = icmp eq i32 %and, 0, !dbg !6465
  %lnot = xor i1 %cmp, true, !dbg !6465
  %lnot1 = xor i1 %lnot, true, !dbg !6465
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6465
  %conv = sext i32 %lnot.ext to i64, !dbg !6465
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6465
  %tobool = icmp ne i64 %expval, 0, !dbg !6465
  br i1 %tobool, label %if.then, label %if.end, !dbg !6467

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6468
  br label %return, !dbg !6468

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6469
  %and2 = and i32 %1, 1, !dbg !6471
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6471
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6472

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6473
  br label %return, !dbg !6473

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6474
  br label %return, !dbg !6474

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6476
  ret i32 %2, !dbg !6476
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6477 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6478 dso_local void @__compiletime_assert_204() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6479 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !6482 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6486, metadata !DIExpression()), !dbg !6487
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6488
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6490
  %1 = load ptr, ptr %init_name, align 8, !dbg !6490
  %tobool = icmp ne ptr %1, null, !dbg !6488
  br i1 %tobool, label %if.then, label %if.end, !dbg !6491

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6492
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6493
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6493
  store ptr %3, ptr %retval, align 8, !dbg !6494
  br label %return, !dbg !6494

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6495
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6496
  %call = call ptr @kobject_name(ptr noundef %kobj) #16, !dbg !6497
  store ptr %call, ptr %retval, align 8, !dbg !6498
  br label %return, !dbg !6498

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6499
  ret ptr %5, !dbg !6499
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !6500 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6502, metadata !DIExpression()), !dbg !6503
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6504
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6505
  %1 = load ptr, ptr %name, align 8, !dbg !6505
  ret ptr %1, !dbg !6506
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6507 dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6508 dso_local i64 @ktime_get_mono_fast_ns() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6512 dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6515 dso_local void @pm_runtime_forbid(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pm_runtime_get_noresume(ptr noundef %dev) #5 align 16 !dbg !6516 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6518, metadata !DIExpression()), !dbg !6519
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6520
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !6521
  %usage_count = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 13, !dbg !6522
  call void @atomic_inc(ptr noundef %usage_count) #16, !dbg !6523
  ret void, !dbg !6524
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pm_runtime_dont_use_autosuspend(ptr noundef %dev) #5 align 16 !dbg !6525 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6527, metadata !DIExpression()), !dbg !6528
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6529
  call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext false) #16, !dbg !6530
  ret void, !dbg !6531
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcie_port_device_remove(ptr noundef %dev) #0 align 16 !dbg !6532 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6534, metadata !DIExpression()), !dbg !6535
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6536
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !6537
  %call = call i32 @device_for_each_child(ptr noundef %dev1, ptr noundef null, ptr noundef @remove_iter) #16, !dbg !6538
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6539
  call void @pci_free_irq_vectors(ptr noundef %1) #16, !dbg !6540
  ret void, !dbg !6541
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #11 align 16 !dbg !6542 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6548, metadata !DIExpression()), !dbg !6549
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6550
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !6551
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6552
  call void @raw_atomic_inc(ptr noundef %1) #16, !dbg !6553
  ret void, !dbg !6554
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !6555 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6563, metadata !DIExpression()), !dbg !6565
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6564, metadata !DIExpression()), !dbg !6566
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6567
  %1 = load i64, ptr %size.addr, align 8, !dbg !6568
  %conv = trunc i64 %1 to i32, !dbg !6568
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !6569
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6570
  %3 = load i64, ptr %size.addr, align 8, !dbg !6570
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !6570
  ret void, !dbg !6571
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #11 align 16 !dbg !6572 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6575, metadata !DIExpression()), !dbg !6576
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6577
  call void @arch_atomic_inc(ptr noundef %0) #16, !dbg !6578
  ret void, !dbg !6579
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6580 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6585, metadata !DIExpression()), !dbg !6587
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6586, metadata !DIExpression()), !dbg !6588
  ret i1 true, !dbg !6589
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6590 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6595, metadata !DIExpression()), !dbg !6598
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6596, metadata !DIExpression()), !dbg !6599
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6597, metadata !DIExpression()), !dbg !6600
  ret void, !dbg !6601
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #11 align 16 !dbg !6602 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6605, metadata !DIExpression()), !dbg !6606
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6607
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6608
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !6609, !srcloc !6610
  ret void, !dbg !6611
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @remove_iter(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !6612 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6614, metadata !DIExpression()), !dbg !6616
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6615, metadata !DIExpression()), !dbg !6617
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6618
  %bus = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5, !dbg !6620
  %1 = load ptr, ptr %bus, align 8, !dbg !6620
  %cmp = icmp eq ptr %1, @pcie_port_bus_type, !dbg !6621
  br i1 %cmp, label %if.then, label %if.end, !dbg !6622

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6623
  call void @device_unregister(ptr noundef %2) #16, !dbg !6624
  br label %if.end, !dbg !6624

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !6625
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6626 dso_local void @device_unregister(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_portdrv_error_detected(ptr noundef %dev, i32 noundef %error) #0 align 16 !dbg !6627 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6629, metadata !DIExpression()), !dbg !6631
  store i32 %error, ptr %error.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6630, metadata !DIExpression()), !dbg !6632
  %0 = load i32, ptr %error.addr, align 4, !dbg !6633
  %cmp = icmp eq i32 %0, 2, !dbg !6635
  br i1 %cmp, label %if.then, label %if.end, !dbg !6636

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !6637
  br label %return, !dbg !6637

if.end:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !6638
  br label %return, !dbg !6638

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !6639
  ret i32 %1, !dbg !6639
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_portdrv_mmio_enabled(ptr noundef %dev) #0 align 16 !dbg !6640 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6642, metadata !DIExpression()), !dbg !6643
  ret i32 5, !dbg !6644
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_portdrv_slot_reset(ptr noundef %dev) #0 align 16 !dbg !6645 {
entry:
  %dev.addr = alloca ptr, align 8
  %off = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6647, metadata !DIExpression()), !dbg !6649
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #15, !dbg !6650
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6648, metadata !DIExpression()), !dbg !6651
  store i64 64, ptr %off, align 8, !dbg !6651
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6652
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !6653
  %call = call i32 @device_for_each_child(ptr noundef %dev1, ptr noundef %off, ptr noundef @pcie_port_device_iter) #16, !dbg !6654
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6655
  call void @pci_restore_state(ptr noundef %1) #16, !dbg !6656
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6657
  %call2 = call i32 @pci_save_state(ptr noundef %2) #16, !dbg !6658
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #15, !dbg !6659
  ret i32 5, !dbg !6660
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_device_iter(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !6661 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %service_driver = alloca ptr, align 8
  %offset = alloca i64, align 8
  %cb = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6663, metadata !DIExpression()), !dbg !6675
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6664, metadata !DIExpression()), !dbg !6676
  call void @llvm.lifetime.start.p0(i64 8, ptr %service_driver) #15, !dbg !6677
  call void @llvm.dbg.declare(metadata ptr %service_driver, metadata !6665, metadata !DIExpression()), !dbg !6678
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #15, !dbg !6679
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6666, metadata !DIExpression()), !dbg !6680
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6681
  %1 = load i64, ptr %0, align 8, !dbg !6682
  store i64 %1, ptr %offset, align 8, !dbg !6680
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #15, !dbg !6683
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !6667, metadata !DIExpression()), !dbg !6684
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6685
  %bus = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 5, !dbg !6686
  %3 = load ptr, ptr %bus, align 8, !dbg !6686
  %cmp = icmp eq ptr %3, @pcie_port_bus_type, !dbg !6687
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !6688

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6689
  %driver = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 6, !dbg !6690
  %5 = load ptr, ptr %driver, align 8, !dbg !6690
  %tobool = icmp ne ptr %5, null, !dbg !6689
  br i1 %tobool, label %if.then, label %if.end8, !dbg !6691

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6692
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6668, metadata !DIExpression()), !dbg !6692
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6692
  %driver1 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 6, !dbg !6692
  %7 = load ptr, ptr %driver1, align 8, !dbg !6692
  store ptr %7, ptr %__mptr, align 8, !dbg !6692
  %8 = load ptr, ptr %__mptr, align 8, !dbg !6692
  %add.ptr = getelementptr i8, ptr %8, i64 -80, !dbg !6692
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6692
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6693
  %9 = load ptr, ptr %tmp, align 8, !dbg !6692
  store ptr %9, ptr %service_driver, align 8, !dbg !6694
  %10 = load ptr, ptr %service_driver, align 8, !dbg !6695
  %11 = load i64, ptr %offset, align 8, !dbg !6696
  %add.ptr2 = getelementptr i8, ptr %10, i64 %11, !dbg !6697
  %12 = load ptr, ptr %add.ptr2, align 8, !dbg !6698
  store ptr %12, ptr %cb, align 8, !dbg !6699
  %13 = load ptr, ptr %cb, align 8, !dbg !6700
  %tobool3 = icmp ne ptr %13, null, !dbg !6700
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6701

if.then4:                                         ; preds = %if.then
  %14 = load ptr, ptr %cb, align 8, !dbg !6702
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #15, !dbg !6703
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !6672, metadata !DIExpression()), !dbg !6703
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !6703
  store ptr %15, ptr %__mptr5, align 8, !dbg !6703
  %16 = load ptr, ptr %__mptr5, align 8, !dbg !6703
  %add.ptr7 = getelementptr i8, ptr %16, i64 -32, !dbg !6703
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #15, !dbg !6704
  %17 = load ptr, ptr %tmp6, align 8, !dbg !6703
  %call = call i32 %14(ptr noundef %17) #16, !dbg !6702
  store i32 %call, ptr %retval, align 4, !dbg !6705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6705

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !6706

if.end8:                                          ; preds = %if.end, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !6707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6707

cleanup:                                          ; preds = %if.end8, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #15, !dbg !6708
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #15, !dbg !6708
  call void @llvm.lifetime.end.p0(i64 8, ptr %service_driver) #15, !dbg !6708
  %18 = load i32, ptr %retval, align 4, !dbg !6708
  ret i32 %18, !dbg !6708
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6709 dso_local void @pci_restore_state(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_device_suspend(ptr noundef %dev) #0 align 16 !dbg !6710 {
entry:
  %dev.addr = alloca ptr, align 8
  %off = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6712, metadata !DIExpression()), !dbg !6714
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #15, !dbg !6715
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6713, metadata !DIExpression()), !dbg !6716
  store i64 24, ptr %off, align 8, !dbg !6716
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6717
  %call = call i32 @device_for_each_child(ptr noundef %0, ptr noundef %off, ptr noundef @pcie_port_device_iter) #16, !dbg !6718
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #15, !dbg !6719
  ret i32 %call, !dbg !6720
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_device_resume(ptr noundef %dev) #0 align 16 !dbg !6721 {
entry:
  %dev.addr = alloca ptr, align 8
  %off = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6723, metadata !DIExpression()), !dbg !6725
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #15, !dbg !6726
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6724, metadata !DIExpression()), !dbg !6727
  store i64 40, ptr %off, align 8, !dbg !6727
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6728
  %call = call i32 @device_for_each_child(ptr noundef %0, ptr noundef %off, ptr noundef @pcie_port_device_iter) #16, !dbg !6729
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #15, !dbg !6730
  ret i32 %call, !dbg !6731
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_device_resume_noirq(ptr noundef %dev) #0 align 16 !dbg !6732 {
entry:
  %dev.addr = alloca ptr, align 8
  %off = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6734, metadata !DIExpression()), !dbg !6736
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #15, !dbg !6737
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6735, metadata !DIExpression()), !dbg !6738
  store i64 32, ptr %off, align 8, !dbg !6738
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6739
  %call = call i32 @device_for_each_child(ptr noundef %0, ptr noundef %off, ptr noundef @pcie_port_device_iter) #16, !dbg !6740
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #15, !dbg !6741
  ret i32 %call, !dbg !6742
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_runtime_suspend(ptr noundef %dev) #0 align 16 !dbg !6743 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6745, metadata !DIExpression()), !dbg !6749
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6750
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6746, metadata !DIExpression()), !dbg !6750
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6750
  store ptr %0, ptr %__mptr, align 8, !dbg !6750
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6750
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !6750
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6750
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6751
  %2 = load ptr, ptr %tmp, align 8, !dbg !6750
  %bridge_d3 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 30, !dbg !6752
  %bf.load = load i24, ptr %bridge_d3, align 1, !dbg !6752
  %bf.lshr = lshr i24 %bf.load, 11, !dbg !6752
  %bf.clear = and i24 %bf.lshr, 1, !dbg !6752
  %bf.cast = zext i24 %bf.clear to i32, !dbg !6752
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6751
  br i1 %tobool, label %if.end, label %if.then, !dbg !6753

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !6754
  br label %return, !dbg !6754

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6755
  %call = call i32 @pcie_port_device_runtime_suspend(ptr noundef %3) #16, !dbg !6756
  store i32 %call, ptr %retval, align 4, !dbg !6757
  br label %return, !dbg !6757

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !6758
  ret i32 %4, !dbg !6758
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_device_runtime_resume(ptr noundef %dev) #0 align 16 !dbg !6759 {
entry:
  %dev.addr = alloca ptr, align 8
  %off = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6761, metadata !DIExpression()), !dbg !6763
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #15, !dbg !6764
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6762, metadata !DIExpression()), !dbg !6765
  store i64 56, ptr %off, align 8, !dbg !6765
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6766
  %call = call i32 @device_for_each_child(ptr noundef %0, ptr noundef %off, ptr noundef @pcie_port_device_iter) #16, !dbg !6767
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #15, !dbg !6768
  ret i32 %call, !dbg !6769
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_runtime_idle(ptr noundef %dev) #0 align 16 !dbg !6770 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6772, metadata !DIExpression()), !dbg !6775
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6776
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6773, metadata !DIExpression()), !dbg !6776
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6776
  store ptr %0, ptr %__mptr, align 8, !dbg !6776
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6776
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !6776
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6776
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6777
  %2 = load ptr, ptr %tmp, align 8, !dbg !6776
  %bridge_d3 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 30, !dbg !6778
  %bf.load = load i24, ptr %bridge_d3, align 1, !dbg !6778
  %bf.lshr = lshr i24 %bf.load, 11, !dbg !6778
  %bf.clear = and i24 %bf.lshr, 1, !dbg !6778
  %bf.cast = zext i24 %bf.clear to i32, !dbg !6778
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6777
  %3 = zext i1 %tobool to i64, !dbg !6777
  %cond = select i1 %tobool, i32 0, i32 -16, !dbg !6777
  ret i32 %cond, !dbg !6779
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_port_device_runtime_suspend(ptr noundef %dev) #0 align 16 !dbg !6780 {
entry:
  %dev.addr = alloca ptr, align 8
  %off = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6782, metadata !DIExpression()), !dbg !6784
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #15, !dbg !6785
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6783, metadata !DIExpression()), !dbg !6786
  store i64 48, ptr %off, align 8, !dbg !6786
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6787
  %call = call i32 @device_for_each_child(ptr noundef %0, ptr noundef %off, ptr noundef @pcie_port_device_iter) #16, !dbg !6788
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #15, !dbg !6789
  ret i32 %call, !dbg !6790
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046}
!llvm.ident = !{!5047}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcie_port_find_device295", scope: !2, file: !3, line: 491, type: !171, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/pcie/.portdrv.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/pcie/pcieportdrv\22 -D KBUILD_BASENAME=\22portdrv\22 -D KBUILD_MODNAME=\22pcieportdrv\22 -D __KBUILD_MODNAME=kmod_pcieportdrv -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/pcie/portdrv.ll drivers/pci/pcie/portdrv.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !170, globals: !4954, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/pcie/portdrv.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4db01b40fe294299dac2420c8a52bba")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146, !156, !162}
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
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !147, line: 364, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!150 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!151 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!152 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!153 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!154 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!155 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !157, line: 198, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!158 = !{!159, !160, !161}
!159 = !DIEnumerator(name: "pci_channel_io_normal", value: 1)
!160 = !DIEnumerator(name: "pci_channel_io_frozen", value: 2)
!161 = !DIEnumerator(name: "pci_channel_io_perm_failure", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_ers_result", file: !157, line: 816, baseType: !7, size: 32, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169}
!164 = !DIEnumerator(name: "PCI_ERS_RESULT_NONE", value: 1)
!165 = !DIEnumerator(name: "PCI_ERS_RESULT_CAN_RECOVER", value: 2)
!166 = !DIEnumerator(name: "PCI_ERS_RESULT_NEED_RESET", value: 3)
!167 = !DIEnumerator(name: "PCI_ERS_RESULT_DISCONNECT", value: 4)
!168 = !DIEnumerator(name: "PCI_ERS_RESULT_RECOVERED", value: 5)
!169 = !DIEnumerator(name: "PCI_ERS_RESULT_NO_AER_DRIVER", value: 6)
!170 = !{!171, !172, !176, !188, !632, !1215, !230, !4949, !4951, !4952, !193}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "portdrv_service_data", file: !3, line: 33, size: 192, elements: !174)
!174 = !{!175, !4947, !4948}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !173, file: !3, line: 34, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_port_service_driver", file: !178, line: 76, size: 1792, elements: !179)
!178 = !DIFile(filename: "drivers/pci/pcie/portdrv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a1f3798a8f2f0c1256e463e7e1f544c")
!179 = !{!180, !184, !4934, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !178, line: 77, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !177, file: !178, line: 78, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!109, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_device", file: !178, line: 57, size: 6080, elements: !190)
!190 = !{!191, !192, !4931, !4932, !4933}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !189, file: !178, line: 58, baseType: !109, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !189, file: !178, line: 59, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !157, line: 322, size: 16640, elements: !195)
!195 = !{!196, !203, !4677, !4678, !4679, !4680, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4791, !4792, !4793, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4870, !4871, !4872, !4874, !4875, !4877, !4878, !4879, !4880, !4886, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !194, file: !157, line: 323, baseType: !197, size: 128)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !198, line: 190, size: 128, elements: !199)
!198 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!199 = !{!200, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !198, line: 191, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !197, file: !198, line: 191, baseType: !201, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !194, file: !157, line: 324, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !157, line: 647, size: 8256, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !237, !238, !239, !266, !267, !271, !273, !274, !275, !276, !280, !282, !284, !4672, !4673, !4674, !4675, !4676}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !157, line: 648, baseType: !197, size: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !157, line: 649, baseType: !204, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !205, file: !157, line: 650, baseType: !197, size: 128, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !205, file: !157, line: 651, baseType: !197, size: 128, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !205, file: !157, line: 652, baseType: !193, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !205, file: !157, line: 653, baseType: !197, size: 128, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !205, file: !157, line: 655, baseType: !214, size: 256, offset: 640)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !235)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !217, line: 21, size: 512, elements: !218)
!217 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!218 = !{!219, !227, !228, !229, !231, !232, !233, !234}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !216, file: !217, line: 22, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !198, line: 164, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !198, line: 159, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !223, line: 23, baseType: !224)
!223 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !225, line: 31, baseType: !226)
!225 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!226 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !216, file: !217, line: 23, baseType: !220, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !217, line: 24, baseType: !181, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !217, line: 25, baseType: !230, size: 64, offset: 192)
!230 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !216, file: !217, line: 26, baseType: !230, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !217, line: 27, baseType: !215, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !216, file: !217, line: 27, baseType: !215, size: 64, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !216, file: !217, line: 27, baseType: !215, size: 64, offset: 448)
!235 = !{!236}
!236 = !DISubrange(count: 4)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !205, file: !157, line: 656, baseType: !197, size: 128, offset: 896)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !205, file: !157, line: 657, baseType: !216, size: 512, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !205, file: !157, line: 659, baseType: !240, size: 64, offset: 1536)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !157, line: 773, size: 320, elements: !242)
!242 = !{!243, !247, !251, !255, !262}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !241, file: !157, line: 774, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!109, !204}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !241, file: !157, line: 775, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !204}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !241, file: !157, line: 776, baseType: !252, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!171, !204, !7, !109}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !241, file: !157, line: 777, baseType: !256, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!109, !204, !7, !109, !109, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !223, line: 21, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !225, line: 27, baseType: !7)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !241, file: !157, line: 778, baseType: !263, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!109, !204, !7, !109, !109, !260}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !205, file: !157, line: 660, baseType: !171, size: 64, offset: 1600)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !205, file: !157, line: 661, baseType: !268, size: 64, offset: 1664)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !270, line: 131, flags: DIFlagFwdDecl)
!270 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!271 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !205, file: !157, line: 663, baseType: !272, size: 8, offset: 1728)
!272 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !205, file: !157, line: 664, baseType: !272, size: 8, offset: 1736)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !205, file: !157, line: 665, baseType: !272, size: 8, offset: 1744)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !205, file: !157, line: 666, baseType: !272, size: 8, offset: 1752)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !157, line: 671, baseType: !277, size: 384, offset: 1760)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 384, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 48)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !205, file: !157, line: 673, baseType: !281, size: 16, offset: 2144)
!281 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !205, file: !157, line: 674, baseType: !283, size: 16, offset: 2160)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !157, line: 255, baseType: !281)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !205, file: !157, line: 675, baseType: !285, size: 64, offset: 2176)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !287)
!287 = !{!288, !4211, !4212, !4215, !4216, !4269, !4354, !4355, !4356, !4357, !4358, !4365, !4457, !4470, !4480, !4484, !4486, !4487, !4488, !4492, !4499, !4500, !4503, !4506, !4510, !4614, !4615, !4616, !4617, !4618, !4619, !4649, !4650, !4651, !4654, !4657, !4666, !4667, !4668, !4669, !4670, !4671}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !286, file: !94, line: 706, baseType: !289, size: 512)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !290, line: 64, size: 512, elements: !291)
!290 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!291 = !{!292, !293, !294, !296, !381, !4098, !4201, !4206, !4207, !4208, !4209, !4210}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !290, line: 65, baseType: !181, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !289, file: !290, line: 66, baseType: !197, size: 128, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !289, file: !290, line: 67, baseType: !295, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !289, file: !290, line: 68, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !290, line: 168, size: 768, elements: !299)
!299 = !{!300, !301, !340, !341}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !298, file: !290, line: 169, baseType: !197, size: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !298, file: !290, line: 170, baseType: !302, size: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !303, line: 29, baseType: !304)
!303 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !303, line: 17, size: 32, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !303, line: 18, baseType: !307, size: 32)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !303, line: 18, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !307, file: !303, line: 19, baseType: !310, size: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !311, line: 14, size: 32, elements: !312)
!311 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !310, file: !311, line: 15, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !315, line: 44, baseType: !316)
!315 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !315, line: 14, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !315, line: 15, baseType: !319, size: 32)
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !315, line: 15, size: 32, elements: !320)
!320 = !{!321, !326, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !319, file: !315, line: 16, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !198, line: 174, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !198, line: 172, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !323, file: !198, line: 173, baseType: !109, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !315, line: 24, baseType: !327, size: 16)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !315, line: 24, size: 16, elements: !328)
!328 = !{!329, !332}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !327, file: !315, line: 25, baseType: !330, size: 8)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !223, line: 17, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !225, line: 21, baseType: !272)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !327, file: !315, line: 26, baseType: !330, size: 8, offset: 8)
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !315, line: 28, baseType: !334, size: 32)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !315, line: 28, size: 32, elements: !335)
!335 = !{!336, !339}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !334, file: !315, line: 29, baseType: !337, size: 16)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !223, line: 19, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !225, line: 24, baseType: !281)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !334, file: !315, line: 30, baseType: !337, size: 16, offset: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !298, file: !290, line: 171, baseType: !289, size: 512, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !298, file: !290, line: 172, baseType: !342, size: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !290, line: 133, size: 192, elements: !345)
!345 = !{!346, !353, !358}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !344, file: !290, line: 134, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!109, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !290, line: 135, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!181, !351}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !344, file: !290, line: 136, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!109, !351, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !290, line: 125, size: 20736, elements: !365)
!365 = !{!366, !371, !375, !376, !380}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !364, file: !290, line: 126, baseType: !367, size: 192)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 192, elements: !369)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!369 = !{!370}
!370 = !DISubrange(count: 3)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !364, file: !290, line: 127, baseType: !372, size: 4096, offset: 192)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 4096, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !364, file: !290, line: 128, baseType: !109, size: 32, offset: 4288)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !364, file: !290, line: 129, baseType: !377, size: 16384, offset: 4320)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 16384, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 2048)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !364, file: !290, line: 130, baseType: !109, size: 32, offset: 20704)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !289, file: !290, line: 69, baseType: !382, size: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !290, line: 116, size: 384, elements: !385)
!385 = !{!386, !390, !418, !4060, !4088, !4092}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !384, file: !290, line: 117, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !295}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !384, file: !290, line: 118, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !394, line: 254, size: 128, elements: !395)
!394 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!395 = !{!396, !411}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !393, file: !394, line: 255, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!400, !295, !405, !368}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !198, line: 66, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !402, line: 73, baseType: !403)
!402 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !402, line: 15, baseType: !404)
!404 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !394, line: 30, size: 128, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !394, line: 31, baseType: !181, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !406, file: !394, line: 32, baseType: !410, size: 16, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !198, line: 24, baseType: !281)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !393, file: !394, line: 256, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!400, !295, !405, !181, !415}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !198, line: 61, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !402, line: 72, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !402, line: 16, baseType: !230)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !384, file: !290, line: 119, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !394, line: 84, size: 320, elements: !423)
!423 = !{!424, !425, !429, !4056, !4058}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !422, file: !394, line: 85, baseType: !181, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !422, file: !394, line: 86, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!410, !295, !405, !109}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !422, file: !394, line: 88, baseType: !430, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!410, !295, !433, !109}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !394, line: 175, size: 512, elements: !435)
!435 = !{!436, !437, !438, !439, !4047, !4051, !4052}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !434, file: !394, line: 176, baseType: !406, size: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !434, file: !394, line: 177, baseType: !415, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !434, file: !394, line: 178, baseType: !171, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !434, file: !394, line: 179, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !445)
!445 = !{!446, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !4041, !4042, !4043, !4044, !4045, !4046}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !444, file: !14, line: 473, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !449)
!449 = !{!450, !451, !452, !460, !461, !468, !469, !472, !473, !3820, !3821, !3822, !3823, !3824, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3864, !3867, !3868, !3869, !3878, !3879, !3880, !3881}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !448, file: !14, line: 642, baseType: !410, size: 16)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !448, file: !14, line: 643, baseType: !281, size: 16, offset: 16)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !448, file: !14, line: 644, baseType: !453, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !454, line: 23, baseType: !455)
!454 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 21, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !455, file: !454, line: 22, baseType: !458, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !198, line: 37, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !402, line: 49, baseType: !7)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !448, file: !14, line: 645, baseType: !197, size: 128, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !448, file: !14, line: 646, baseType: !462, size: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !454, line: 28, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 26, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !463, file: !454, line: 27, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !198, line: 38, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !402, line: 50, baseType: !7)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !448, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !448, file: !14, line: 650, baseType: !470, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !448, file: !14, line: 651, baseType: !470, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !448, file: !14, line: 654, baseType: !474, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !477)
!477 = !{!478, !3648, !3658, !3662, !3666, !3670, !3674, !3678, !3682, !3686, !3690, !3691, !3695, !3699, !3736, !3765, !3769, !3775, !3779, !3783, !3787, !3791, !3795, !3801, !3805}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !476, file: !14, line: 1967, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !447, !482, !7}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !484, line: 82, size: 1536, elements: !485)
!484 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!485 = !{!486, !487, !497, !505, !506, !521, !522, !526, !539, !3631, !3632, !3633, !3634, !3640, !3641, !3642}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !483, file: !484, line: 84, baseType: !7, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !483, file: !484, line: 85, baseType: !488, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !489, line: 275, baseType: !490)
!489 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !489, line: 275, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !490, file: !489, line: 275, baseType: !493, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !489, line: 69, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !489, line: 64, size: 32, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !494, file: !489, line: 65, baseType: !7, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !483, file: !484, line: 86, baseType: !498, size: 128, offset: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !499, line: 38, size: 128, elements: !500)
!499 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!500 = !{!501, !503}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !499, line: 39, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !498, file: !499, line: 39, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !483, file: !484, line: 87, baseType: !482, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !483, file: !484, line: 88, baseType: !507, size: 128, offset: 256)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !484, line: 49, size: 128, elements: !508)
!508 = !{!509, !518}
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !484, line: 50, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !484, line: 50, size: 64, elements: !511)
!511 = !{!512, !517}
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !484, line: 51, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !510, file: !484, line: 51, size: 64, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !513, file: !484, line: 52, baseType: !260, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !513, file: !484, line: 52, baseType: !260, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !510, file: !484, line: 54, baseType: !222, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !507, file: !484, line: 56, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !483, file: !484, line: 89, baseType: !447, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !483, file: !484, line: 91, baseType: !523, size: 256, offset: 448)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 256, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !483, file: !484, line: 94, baseType: !527, size: 64, offset: 704)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !528, line: 25, size: 64, elements: !529)
!528 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !528, line: 26, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !528, line: 26, size: 64, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !531, file: !528, line: 28, baseType: !224, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !528, line: 30, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !531, file: !528, line: 30, size: 64, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !535, file: !528, line: 31, baseType: !302, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !535, file: !528, line: 32, baseType: !109, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !483, file: !484, line: 95, baseType: !540, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !484, line: 128, size: 1024, align: 512, elements: !543)
!543 = !{!544, !548, !549, !556, !562, !566, !570, !574, !575, !579, !583, !3621, !3625}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !542, file: !484, line: 129, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!109, !482, !7}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !542, file: !484, line: 130, baseType: !545, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !542, file: !484, line: 131, baseType: !550, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!109, !553, !555}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !542, file: !484, line: 132, baseType: !557, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!109, !553, !7, !181, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !542, file: !484, line: 134, baseType: !563, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!109, !553}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !542, file: !484, line: 135, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!109, !482}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !542, file: !484, line: 136, baseType: !571, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !482}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !542, file: !484, line: 137, baseType: !571, size: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !542, file: !484, line: 138, baseType: !576, size: 64, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !482, !447}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !542, file: !484, line: 139, baseType: !580, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!368, !482, !368, !109}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !542, file: !484, line: 140, baseType: !584, size: 64, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!587, !3620}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !589, line: 70, size: 256, elements: !590)
!589 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!590 = !{!591, !592, !3616, !3617}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !588, file: !589, line: 71, baseType: !482, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !588, file: !589, line: 72, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !595)
!595 = !{!596, !597, !600, !601, !602, !606, !1084, !1224, !1264, !1354, !1358, !1359, !1360, !1361, !1362, !1371, !1372, !1373, !1374, !1379, !1383, !1384, !1387, !1390, !1393, !1396, !1397, !1398, !1439, !3549, !3550, !3551, !3552, !3553, !3554, !3557, !3559, !3566, !3567, !3568, !3569, !3570, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !594, file: !14, line: 1191, baseType: !197, size: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !594, file: !14, line: 1192, baseType: !598, size: 32, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !198, line: 21, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !198, line: 18, baseType: !260)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !594, file: !14, line: 1193, baseType: !272, size: 8, offset: 160)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !594, file: !14, line: 1194, baseType: !230, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !594, file: !14, line: 1195, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !198, line: 52, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !402, line: 88, baseType: !605)
!605 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !594, file: !14, line: 1196, baseType: !607, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !609)
!609 = !{!610, !611, !612, !619, !623, !627, !631, !1069, !1070, !1074, !1076, !1077, !1078, !1080, !1081, !1082, !1083}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !608, file: !14, line: 2367, baseType: !181, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !608, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !608, file: !14, line: 2376, baseType: !613, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!109, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !618, line: 32, flags: DIFlagFwdDecl)
!618 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!619 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !608, file: !14, line: 2377, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !608, file: !14, line: 2378, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!482, !607, !109, !181, !171}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !608, file: !14, line: 2380, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !593}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !608, file: !14, line: 2381, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !634)
!634 = !{!635, !636, !637, !641, !663, !689, !690, !691, !692, !696, !701, !702, !722, !778, !779, !780, !781, !782, !785, !786, !787, !795, !799, !826, !847, !848, !849, !850, !859, !882, !883, !886, !889, !890, !891, !892, !893, !894, !895, !900, !901, !1027, !1035, !1036, !1037, !1039, !1043, !1044, !1048, !1049, !1050, !1051, !1053, !1054, !1055, !1062, !1063, !1064, !1068}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !633, file: !6, line: 403, baseType: !5, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !633, file: !6, line: 406, baseType: !197, size: 128, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !633, file: !6, line: 409, baseType: !638, size: 448, offset: 192)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 448, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 56)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !633, file: !6, line: 417, baseType: !642, size: 768, offset: 640)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !643)
!643 = !{!644, !645, !646, !647, !650}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !642, file: !6, line: 46, baseType: !289, size: 512)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !642, file: !6, line: 47, baseType: !632, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !642, file: !6, line: 48, baseType: !295, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !642, file: !6, line: 49, baseType: !648, size: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !642, file: !6, line: 50, baseType: !651, size: 64, offset: 704)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !653, line: 26, size: 256, elements: !654)
!653 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !652, file: !653, line: 27, baseType: !7, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !652, file: !653, line: 28, baseType: !657, size: 192, offset: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !658, line: 43, size: 192, elements: !659)
!658 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!659 = !{!660, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !657, file: !658, line: 44, baseType: !661, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !311, line: 23, baseType: !310)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !657, file: !658, line: 45, baseType: !197, size: 128, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !633, file: !6, line: 418, baseType: !664, size: 64, offset: 1408)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !666)
!666 = !{!667, !668, !673, !677, !681, !685}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !665, file: !6, line: 54, baseType: !406, size: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !665, file: !6, line: 55, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!400, !664, !672, !368}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !665, file: !6, line: 57, baseType: !674, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!400, !664, !672, !181, !415}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !665, file: !6, line: 59, baseType: !678, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !632, !181}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !665, file: !6, line: 60, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!109, !632}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !665, file: !6, line: 61, baseType: !686, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !632}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !633, file: !6, line: 419, baseType: !181, size: 64, offset: 1472)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !633, file: !6, line: 420, baseType: !181, size: 64, offset: 1536)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !633, file: !6, line: 421, baseType: !295, size: 64, offset: 1600)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !633, file: !6, line: 424, baseType: !693, size: 64, offset: 1664)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !633, file: !6, line: 425, baseType: !697, size: 64, offset: 1728)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !223, line: 20, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !225, line: 26, baseType: !109)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !633, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !633, file: !6, line: 435, baseType: !703, size: 256, offset: 1856)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !704, line: 66, size: 256, elements: !705)
!704 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!705 = !{!706, !715, !716, !721}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !703, file: !704, line: 67, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !708, line: 13, baseType: !709)
!708 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !198, line: 181, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !198, line: 179, size: 64, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !710, file: !198, line: 180, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !223, line: 22, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !225, line: 30, baseType: !605)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !703, file: !704, line: 68, baseType: !661, size: 32, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !703, file: !704, line: 70, baseType: !717, size: 32, offset: 96)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !718, line: 15, size: 32, elements: !719)
!718 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !717, file: !718, line: 20, baseType: !322, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !703, file: !704, line: 72, baseType: !197, size: 128, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !633, file: !6, line: 437, baseType: !723, size: 64, offset: 2112)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !725, line: 69, size: 320, elements: !726)
!725 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!726 = !{!727, !728, !729, !749, !751, !755, !756}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !724, file: !725, line: 70, baseType: !181, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !724, file: !725, line: 71, baseType: !632, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !724, file: !725, line: 72, baseType: !730, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !725, line: 47, size: 256, elements: !733)
!733 = !{!734, !735, !741, !745}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !725, line: 49, baseType: !7, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !732, file: !725, line: 51, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!109, !181, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !732, file: !725, line: 53, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!109, !368, !739}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !732, file: !725, line: 55, baseType: !746, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !171}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !724, file: !725, line: 73, baseType: !750, size: 16, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !724, file: !725, line: 74, baseType: !752, size: 8, offset: 208)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !223, line: 16, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !225, line: 20, baseType: !754)
!754 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !725, line: 75, baseType: !330, size: 8, offset: 216)
!756 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 76, baseType: !757, size: 64, offset: 256)
!757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 76, size: 64, elements: !758)
!758 = !{!759, !760, !767}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !757, file: !725, line: 77, baseType: !171, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !757, file: !725, line: 78, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !725, line: 86, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !763, file: !725, line: 87, baseType: !7, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !763, file: !725, line: 88, baseType: !368, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !757, file: !725, line: 79, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !725, line: 92, size: 256, elements: !771)
!771 = !{!772, !773, !774, !776, !777}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !770, file: !725, line: 94, baseType: !7, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !770, file: !725, line: 95, baseType: !7, size: 32, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !770, file: !725, line: 96, baseType: !775, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !770, file: !725, line: 97, baseType: !730, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !770, file: !725, line: 98, baseType: !171, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !633, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !633, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !633, file: !6, line: 442, baseType: !693, size: 64, offset: 2240)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !633, file: !6, line: 443, baseType: !697, size: 64, offset: 2304)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !633, file: !6, line: 444, baseType: !783, size: 8, offset: 2368)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !198, line: 35, baseType: !784)
!784 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !633, file: !6, line: 451, baseType: !783, size: 8, offset: 2376)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !633, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !633, file: !6, line: 455, baseType: !788, size: 64, offset: 2432)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !790, line: 23, size: 96, elements: !791)
!790 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !789, file: !790, line: 24, baseType: !109, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !789, file: !790, line: 24, baseType: !109, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !789, file: !790, line: 24, baseType: !109, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !633, file: !6, line: 458, baseType: !796, size: 64, offset: 2496)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!109}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !633, file: !6, line: 460, baseType: !800, size: 4032, align: 512, offset: 2560)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 4032, elements: !824)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !802)
!802 = !{!803, !804, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !801, file: !6, line: 363, baseType: !171, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !801, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !801, file: !6, line: 367, baseType: !806, size: 448, offset: 128)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !806, file: !6, line: 320, baseType: !632, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !806, file: !6, line: 321, baseType: !810, size: 384, offset: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !811, line: 40, size: 384, elements: !812)
!811 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !810, file: !811, line: 41, baseType: !814, size: 384, align: 64)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 384, align: 64, elements: !822)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !816, line: 5, size: 192, align: 64, elements: !817)
!816 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!817 = !{!818, !819, !821}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !815, file: !816, line: 6, baseType: !230, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !815, file: !816, line: 7, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !815, file: !816, line: 8, baseType: !820, size: 64, offset: 128)
!822 = !{!823}
!823 = !DISubrange(count: 2)
!824 = !{!825}
!825 = !DISubrange(count: 7)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !633, file: !6, line: 463, baseType: !827, size: 192, offset: 6592)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !828, line: 8, size: 192, elements: !829)
!828 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!829 = !{!830, !831, !833}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !827, file: !828, line: 10, baseType: !7, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !827, file: !828, line: 11, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !827, file: !828, line: 12, baseType: !834, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !836, line: 59, size: 48, elements: !837)
!836 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!837 = !{!838, !842, !843, !844, !845, !846}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !835, file: !836, line: 60, baseType: !839, size: 16)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !223, line: 18, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !225, line: 23, baseType: !841)
!841 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !835, file: !836, line: 61, baseType: !839, size: 16, offset: 16)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !835, file: !836, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !835, file: !836, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !835, file: !836, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !835, file: !836, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !633, file: !6, line: 465, baseType: !230, size: 64, offset: 6784)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !633, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !633, file: !6, line: 470, baseType: !197, size: 128, offset: 6912)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !633, file: !6, line: 471, baseType: !851, size: 64, offset: 7040)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !853, line: 33, size: 96, elements: !854)
!853 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!854 = !{!855, !856, !857, !858}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !852, file: !853, line: 37, baseType: !109, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !852, file: !853, line: 43, baseType: !109, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !852, file: !853, line: 45, baseType: !281, size: 16, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !852, file: !853, line: 47, baseType: !281, size: 16, offset: 80)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !633, file: !6, line: 476, baseType: !860, size: 64, offset: 7104)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !862)
!862 = !{!863, !879, !880, !881}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !861, file: !6, line: 379, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !866, line: 204, baseType: !867)
!866 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !866, line: 197, size: 192, elements: !868)
!868 = !{!869, !871, !872, !873, !875, !877}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !867, file: !866, line: 198, baseType: !870, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !866, line: 21, baseType: !261)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !867, file: !866, line: 199, baseType: !272, size: 8, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !867, file: !866, line: 200, baseType: !272, size: 8, offset: 40)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !867, file: !866, line: 201, baseType: !874, size: 16, offset: 48)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !866, line: 17, baseType: !338)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !867, file: !866, line: 202, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !866, line: 16, baseType: !224)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !867, file: !866, line: 203, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !866, line: 22, baseType: !224)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !861, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !861, file: !6, line: 381, baseType: !368, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !861, file: !6, line: 382, baseType: !368, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !633, file: !6, line: 477, baseType: !861, size: 256, offset: 7168)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !633, file: !6, line: 480, baseType: !884, size: 64, offset: 7424)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !633, file: !6, line: 483, baseType: !887, size: 64, offset: 7488)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !633, file: !6, line: 488, baseType: !368, size: 64, offset: 7552)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !633, file: !6, line: 492, baseType: !171, size: 64, offset: 7616)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !633, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !633, file: !6, line: 495, baseType: !171, size: 64, offset: 7744)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !633, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !633, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !633, file: !6, line: 500, baseType: !896, size: 64, offset: 7872)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !898, line: 45, baseType: !899)
!898 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !633, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !633, file: !6, line: 504, baseType: !902, size: 64, offset: 8000)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !905, line: 96, size: 192, elements: !906)
!905 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!906 = !{!907, !908, !987, !991}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !904, file: !905, line: 97, baseType: !7, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !904, file: !905, line: 98, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !905, line: 24, size: 3072, elements: !911)
!911 = !{!912, !914, !915, !916, !917, !939, !940, !941, !942, !960, !972, !973, !984, !985, !986}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !910, file: !905, line: 26, baseType: !913, size: 128)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 128, elements: !822)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !910, file: !905, line: 27, baseType: !913, size: 128, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !910, file: !905, line: 28, baseType: !109, size: 32, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !910, file: !905, line: 31, baseType: !302, size: 32, align: 512, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !910, file: !905, line: 32, baseType: !918, size: 960, offset: 576)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !919, line: 206, size: 960, elements: !920)
!919 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!920 = !{!921, !930, !933, !935, !936, !938}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !918, file: !919, line: 207, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !198, line: 232, size: 128, align: 64, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !923, file: !198, line: 233, baseType: !922, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !923, file: !198, line: 234, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !922}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !918, file: !919, line: 208, baseType: !931, size: 256, offset: 64)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 256, elements: !235)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !918, file: !919, line: 209, baseType: !934, size: 256, offset: 320)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !235)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !918, file: !919, line: 213, baseType: !404, size: 64, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !918, file: !919, line: 215, baseType: !937, size: 256, offset: 640)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 256, elements: !235)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !918, file: !919, line: 216, baseType: !330, size: 8, offset: 896)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !910, file: !905, line: 33, baseType: !230, size: 64, offset: 1536)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !910, file: !905, line: 34, baseType: !230, size: 64, offset: 1600)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !910, file: !905, line: 35, baseType: !783, size: 8, offset: 1664)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !910, file: !905, line: 36, baseType: !943, size: 320, offset: 1728)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !944, line: 11, size: 320, elements: !945)
!944 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!945 = !{!946, !953, !954, !959}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !943, file: !944, line: 16, baseType: !947, size: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !198, line: 198, size: 128, elements: !948)
!948 = !{!949, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !947, file: !198, line: 199, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !947, file: !198, line: 199, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !943, file: !944, line: 17, baseType: !230, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !943, file: !944, line: 18, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !958}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !943, file: !944, line: 19, baseType: !260, size: 32, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !910, file: !905, line: 37, baseType: !961, size: 256, offset: 2048)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !962, line: 98, size: 256, elements: !963)
!962 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !961, file: !962, line: 99, baseType: !707, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !961, file: !962, line: 100, baseType: !197, size: 128, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !961, file: !962, line: 101, baseType: !967, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !962, line: 21, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !910, file: !905, line: 38, baseType: !923, size: 128, align: 64, offset: 2304)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !910, file: !905, line: 39, baseType: !974, size: 64, offset: 2432)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !905, line: 49, size: 768, elements: !976)
!976 = !{!977, !978, !979, !980, !981, !982, !983}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !975, file: !905, line: 50, baseType: !302, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !975, file: !905, line: 51, baseType: !934, size: 256, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !975, file: !905, line: 53, baseType: !934, size: 256, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !975, file: !905, line: 54, baseType: !230, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !975, file: !905, line: 55, baseType: !974, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !975, file: !905, line: 56, baseType: !109, size: 32, offset: 704)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !975, file: !905, line: 57, baseType: !109, size: 32, offset: 736)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !910, file: !905, line: 40, baseType: !230, size: 64, offset: 2496)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !910, file: !905, line: 42, baseType: !109, size: 32, offset: 2560)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !910, file: !905, line: 43, baseType: !903, size: 64, offset: 2624)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !904, file: !905, line: 99, baseType: !988, offset: 128)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !989, line: 211, elements: !990)
!989 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!990 = !{}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !904, file: !905, line: 100, baseType: !992, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !905, line: 63, size: 3008, elements: !994)
!994 = !{!995, !996, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1026}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !993, file: !905, line: 64, baseType: !974, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !993, file: !905, line: 65, baseType: !997, size: 192, offset: 64)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, size: 192, elements: !369)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !993, file: !905, line: 67, baseType: !109, size: 32, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !993, file: !905, line: 68, baseType: !703, size: 256, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !993, file: !905, line: 69, baseType: !302, size: 32, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !993, file: !905, line: 70, baseType: !703, size: 256, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !993, file: !905, line: 71, baseType: !230, size: 64, offset: 896)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !993, file: !905, line: 72, baseType: !230, size: 64, offset: 960)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !993, file: !905, line: 73, baseType: !230, size: 64, offset: 1024)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !993, file: !905, line: 74, baseType: !230, size: 64, offset: 1088)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !993, file: !905, line: 75, baseType: !230, size: 64, offset: 1152)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !993, file: !905, line: 76, baseType: !230, size: 64, offset: 1216)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !993, file: !905, line: 77, baseType: !230, size: 64, offset: 1280)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !993, file: !905, line: 78, baseType: !230, size: 64, offset: 1344)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !993, file: !905, line: 79, baseType: !783, size: 8, offset: 1408)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !993, file: !905, line: 80, baseType: !230, size: 64, offset: 1472)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !993, file: !905, line: 81, baseType: !703, size: 256, offset: 1536)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !993, file: !905, line: 82, baseType: !652, size: 256, offset: 1792)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !993, file: !905, line: 84, baseType: !322, size: 32, offset: 2048)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !993, file: !905, line: 87, baseType: !230, size: 64, offset: 2112)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !993, file: !905, line: 88, baseType: !230, size: 64, offset: 2176)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !993, file: !905, line: 89, baseType: !1018, size: 704, offset: 2240)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !962, line: 111, size: 704, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1025}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1018, file: !962, line: 112, baseType: !961, size: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1018, file: !962, line: 113, baseType: !943, size: 320, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1018, file: !962, line: 116, baseType: !1023, size: 64, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !962, line: 18, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1018, file: !962, line: 117, baseType: !109, size: 32, offset: 640)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !993, file: !905, line: 90, baseType: !903, size: 64, offset: 2944)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !633, file: !6, line: 515, baseType: !1028, size: 64, offset: 8064)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1030, line: 117, size: 128, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1029, file: !1030, line: 118, baseType: !699, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1029, file: !1030, line: 119, baseType: !699, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1029, file: !1030, line: 120, baseType: !404, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !633, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !633, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !633, file: !6, line: 520, baseType: !1038, size: 64, offset: 8192)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !633, file: !6, line: 523, baseType: !1040, size: 64, offset: 8256)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !633, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !633, file: !6, line: 525, baseType: !1045, size: 64, offset: 8384)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !633, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !633, file: !6, line: 533, baseType: !171, size: 64, offset: 8512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !633, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !633, file: !6, line: 535, baseType: !1052, size: 64, offset: 8640)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !633, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !633, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !633, file: !6, line: 540, baseType: !1056, size: 64, offset: 8768)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1058, line: 32, size: 64, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1057, file: !1058, line: 33, baseType: !699, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1057, file: !1058, line: 34, baseType: !699, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !633, file: !6, line: 563, baseType: !197, size: 128, offset: 8832)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !633, file: !6, line: 565, baseType: !197, size: 128, offset: 8960)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !633, file: !6, line: 568, baseType: !1065, size: 64, offset: 9088)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !633, file: !6, line: 570, baseType: !322, size: 32, offset: 9152)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !14, line: 2382, baseType: !607, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !608, file: !14, line: 2383, baseType: !1071, size: 64, offset: 512)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !198, line: 194, size: 64, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1071, file: !198, line: 195, baseType: !950, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !608, file: !14, line: 2385, baseType: !1075, offset: 576)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !989, line: 206, elements: !990)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !608, file: !14, line: 2386, baseType: !1075, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !608, file: !14, line: 2387, baseType: !1075, offset: 576)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !608, file: !14, line: 2388, baseType: !1079, offset: 576)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, elements: !369)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !608, file: !14, line: 2390, baseType: !1075, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !608, file: !14, line: 2391, baseType: !1075, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !608, file: !14, line: 2392, baseType: !1075, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !608, file: !14, line: 2393, baseType: !1075, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !594, file: !14, line: 1197, baseType: !1085, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1088)
!1088 = !{!1089, !1093, !1097, !1098, !1102, !1108, !1112, !1113, !1114, !1118, !1122, !1126, !1127, !1128, !1134, !1138, !1139, !1146, !1147, !1148, !1149, !1153, !1157, !1206, !1222, !1223}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1087, file: !14, line: 2058, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!447, !593}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1087, file: !14, line: 2059, baseType: !1094, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !447}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1087, file: !14, line: 2060, baseType: !1094, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1087, file: !14, line: 2062, baseType: !1099, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !447, !109}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1087, file: !14, line: 2063, baseType: !1103, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!109, !447, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1087, file: !14, line: 2064, baseType: !1109, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!109, !447}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1087, file: !14, line: 2065, baseType: !1094, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1087, file: !14, line: 2066, baseType: !628, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1087, file: !14, line: 2067, baseType: !1115, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!109, !593, !109}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1087, file: !14, line: 2068, baseType: !1119, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!109, !593, !13}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1087, file: !14, line: 2069, baseType: !1123, size: 64, offset: 640)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!109, !593}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1087, file: !14, line: 2070, baseType: !1119, size: 64, offset: 704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1087, file: !14, line: 2071, baseType: !1123, size: 64, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1087, file: !14, line: 2072, baseType: !1129, size: 64, offset: 832)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!109, !482, !1132}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1087, file: !14, line: 2073, baseType: !1135, size: 64, offset: 896)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!109, !593, !832, !368}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1087, file: !14, line: 2074, baseType: !628, size: 64, offset: 960)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1087, file: !14, line: 2076, baseType: !1140, size: 64, offset: 1024)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!109, !1143, !482}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1145, line: 66, flags: DIFlagFwdDecl)
!1145 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1087, file: !14, line: 2077, baseType: !1140, size: 64, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1087, file: !14, line: 2078, baseType: !1140, size: 64, offset: 1152)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1087, file: !14, line: 2079, baseType: !1140, size: 64, offset: 1216)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1087, file: !14, line: 2081, baseType: !1150, size: 64, offset: 1280)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!400, !593, !109, !368, !415, !603}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1087, file: !14, line: 2082, baseType: !1154, size: 64, offset: 1344)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!400, !593, !109, !181, !415, !603}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1087, file: !14, line: 2083, baseType: !1158, size: 64, offset: 1408)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!1161, !447}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1189, !1190, !1191}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1163, file: !19, line: 297, baseType: !947, size: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1163, file: !19, line: 298, baseType: !197, size: 128, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1163, file: !19, line: 299, baseType: !197, size: 128, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1163, file: !19, line: 300, baseType: !197, size: 128, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1163, file: !19, line: 301, baseType: !703, size: 256, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1163, file: !19, line: 302, baseType: !302, size: 32, offset: 768)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1163, file: !19, line: 303, baseType: !322, size: 32, offset: 800)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1163, file: !19, line: 304, baseType: !593, size: 64, offset: 832)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1163, file: !19, line: 305, baseType: !1174, size: 64, offset: 896)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1175)
!1175 = !{!1176, !1188}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !19, line: 69, baseType: !1177, size: 32)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !19, line: 69, size: 32, elements: !1178)
!1178 = !{!1179, !1180, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1177, file: !19, line: 70, baseType: !453, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1177, file: !19, line: 71, baseType: !462, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1177, file: !19, line: 72, baseType: !1182, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1183, line: 24, baseType: !1184)
!1183 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1183, line: 22, size: 32, elements: !1185)
!1185 = !{!1186}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1184, file: !1183, line: 23, baseType: !1187, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1183, line: 20, baseType: !459)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1174, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1163, file: !19, line: 306, baseType: !603, size: 64, offset: 960)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1163, file: !19, line: 307, baseType: !230, size: 64, offset: 1024)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1163, file: !19, line: 308, baseType: !1192, size: 576, offset: 1088)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1193)
!1193 = !{!1194, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1205}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1192, file: !19, line: 206, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !605)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1192, file: !19, line: 207, baseType: !1195, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1192, file: !19, line: 208, baseType: !1195, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1192, file: !19, line: 209, baseType: !1195, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1192, file: !19, line: 210, baseType: !1195, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1192, file: !19, line: 211, baseType: !1195, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1192, file: !19, line: 212, baseType: !1195, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1192, file: !19, line: 213, baseType: !1203, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1204, line: 8, baseType: !714)
!1204 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1192, file: !19, line: 214, baseType: !1203, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1087, file: !14, line: 2085, baseType: !1207, size: 64, offset: 1472)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!404, !593, !1210}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1212, line: 15, size: 256, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1213 = !{!1214, !1216, !1217, !1218, !1219}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1211, file: !1212, line: 16, baseType: !1215, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !198, line: 154, baseType: !7)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1211, file: !1212, line: 19, baseType: !109, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1211, file: !1212, line: 26, baseType: !230, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1211, file: !1212, line: 33, baseType: !230, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1211, file: !1212, line: 36, baseType: !1220, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1087, file: !14, line: 2087, baseType: !1207, size: 64, offset: 1536)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1087, file: !14, line: 2089, baseType: !628, size: 64, offset: 1600)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !594, file: !14, line: 1198, baseType: !1225, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1228)
!1228 = !{!1229, !1233, !1237, !1241, !1242, !1243, !1244, !1245, !1250, !1255, !1259}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1227, file: !19, line: 325, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!109, !1162}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1227, file: !19, line: 326, baseType: !1234, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!1162, !593, !109}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1227, file: !19, line: 327, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !1162}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1227, file: !19, line: 328, baseType: !1230, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1227, file: !19, line: 329, baseType: !1230, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1227, file: !19, line: 330, baseType: !1230, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1227, file: !19, line: 331, baseType: !1115, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1227, file: !19, line: 334, baseType: !1246, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1249, !447}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1227, file: !19, line: 335, baseType: !1251, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!109, !447, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1227, file: !19, line: 337, baseType: !1256, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!109, !447, !1249}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1227, file: !19, line: 339, baseType: !1260, size: 64, offset: 640)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!109, !593, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !594, file: !14, line: 1199, baseType: !1265, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1268)
!1268 = !{!1269, !1280, !1281, !1285, !1286, !1287, !1302, !1325, !1329, !1330, !1353}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1267, file: !19, line: 431, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!109, !593, !109, !109, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1276, line: 8, size: 128, elements: !1277)
!1276 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1275, file: !1276, line: 9, baseType: !587, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1275, file: !1276, line: 10, baseType: !482, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1267, file: !19, line: 432, baseType: !1115, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1267, file: !19, line: 433, baseType: !1282, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!109, !593, !7}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1267, file: !19, line: 434, baseType: !1282, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1267, file: !19, line: 435, baseType: !1115, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1267, file: !19, line: 436, baseType: !1288, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!109, !593, !109, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1292, file: !19, line: 418, baseType: !109, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1292, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1292, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1292, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1292, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1292, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1292, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1292, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1267, file: !19, line: 437, baseType: !1303, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!109, !593, !1174, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1307, file: !19, line: 346, baseType: !109, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1307, file: !19, line: 347, baseType: !222, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1307, file: !19, line: 348, baseType: !222, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1307, file: !19, line: 349, baseType: !222, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1307, file: !19, line: 350, baseType: !222, size: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1307, file: !19, line: 351, baseType: !222, size: 64, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1307, file: !19, line: 352, baseType: !222, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1307, file: !19, line: 353, baseType: !713, size: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1307, file: !19, line: 355, baseType: !713, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1307, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1307, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1307, file: !19, line: 358, baseType: !222, size: 64, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1307, file: !19, line: 359, baseType: !222, size: 64, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1307, file: !19, line: 360, baseType: !222, size: 64, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1307, file: !19, line: 361, baseType: !713, size: 64, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1307, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1267, file: !19, line: 438, baseType: !1326, size: 64, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!109, !593, !1263, !1306}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1267, file: !19, line: 440, baseType: !1303, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1267, file: !19, line: 441, baseType: !1331, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!109, !593, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1335, file: !19, line: 412, baseType: !7, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1335, file: !19, line: 413, baseType: !1339, size: 1344, offset: 64)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1340, size: 1344, elements: !369)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1352}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1340, file: !19, line: 398, baseType: !7, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1340, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1340, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1340, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1340, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1340, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1340, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1340, file: !19, line: 406, baseType: !226, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1340, file: !19, line: 407, baseType: !1351, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !198, line: 132, baseType: !222)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1340, file: !19, line: 408, baseType: !1351, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1267, file: !19, line: 442, baseType: !1282, size: 64, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !594, file: !14, line: 1200, baseType: !1355, size: 64, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1357)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !594, file: !14, line: 1201, baseType: !230, size: 64, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !594, file: !14, line: 1202, baseType: !230, size: 64, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !594, file: !14, line: 1203, baseType: !230, size: 64, offset: 768)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !594, file: !14, line: 1204, baseType: !482, size: 64, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !594, file: !14, line: 1205, baseType: !1363, size: 320, offset: 896)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1364, line: 48, size: 320, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1365 = !{!1366, !1367, !1368, !1369, !1370}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1363, file: !1364, line: 49, baseType: !707, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1363, file: !1364, line: 55, baseType: !707, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1363, file: !1364, line: 57, baseType: !717, size: 32, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1363, file: !1364, line: 59, baseType: !661, size: 32, offset: 160)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1363, file: !1364, line: 60, baseType: !197, size: 128, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !594, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !594, file: !14, line: 1207, baseType: !322, size: 32, offset: 1248)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !594, file: !14, line: 1209, baseType: !171, size: 64, offset: 1280)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !594, file: !14, line: 1211, baseType: !1375, size: 64, offset: 1344)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !594, file: !14, line: 1223, baseType: !1380, size: 64, offset: 1408)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !499, line: 34, size: 64, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1380, file: !499, line: 35, baseType: !502, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !594, file: !14, line: 1224, baseType: !197, size: 128, offset: 1472)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !594, file: !14, line: 1225, baseType: !1385, size: 64, offset: 1600)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !594, file: !14, line: 1226, baseType: !1388, size: 64, offset: 1664)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !594, file: !14, line: 1227, baseType: !1391, size: 64, offset: 1728)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !594, file: !14, line: 1228, baseType: !1394, size: 64, offset: 1792)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !594, file: !14, line: 1229, baseType: !947, size: 128, offset: 1856)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !594, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !594, file: !14, line: 1231, baseType: !1399, size: 2496, offset: 2048)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1405, !1437}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1399, file: !19, line: 522, baseType: !7, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1399, file: !19, line: 523, baseType: !1363, size: 320, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1399, file: !19, line: 524, baseType: !1404, size: 192, offset: 384)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 192, elements: !369)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1399, file: !19, line: 525, baseType: !1406, size: 1728, offset: 576)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1407, size: 1728, elements: !369)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1408)
!1408 = !{!1409, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1407, file: !19, line: 223, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1412)
!1412 = !{!1413, !1414, !1427, !1428}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1411, file: !19, line: 446, baseType: !109, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1411, file: !19, line: 447, baseType: !1415, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1417, file: !19, line: 313, baseType: !1115, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1417, file: !19, line: 314, baseType: !1115, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1417, file: !19, line: 315, baseType: !1115, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1417, file: !19, line: 316, baseType: !1115, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1417, file: !19, line: 317, baseType: !1230, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1417, file: !19, line: 318, baseType: !1230, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1417, file: !19, line: 319, baseType: !1230, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1417, file: !19, line: 320, baseType: !1260, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1411, file: !19, line: 448, baseType: !632, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1411, file: !19, line: 449, baseType: !1410, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1407, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1407, file: !19, line: 226, baseType: !197, size: 128, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1407, file: !19, line: 227, baseType: !230, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1407, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1407, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1407, file: !19, line: 230, baseType: !1195, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1407, file: !19, line: 231, baseType: !1195, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1407, file: !19, line: 232, baseType: !171, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1399, file: !19, line: 526, baseType: !1438, size: 192, offset: 2304)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1415, size: 192, elements: !369)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !594, file: !14, line: 1233, baseType: !1440, size: 2368, offset: 4544)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1441)
!1441 = !{!1442, !1443, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1440, file: !14, line: 1185, baseType: !281, size: 16)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1440, file: !14, line: 1186, baseType: !281, size: 16, offset: 16)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1440, file: !14, line: 1187, baseType: !1445, size: 2304, offset: 64)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1446, size: 2304, elements: !369)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1447, line: 12, size: 768, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1448 = !{!1449, !1463, !1464, !3547, !3548}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1446, file: !1447, line: 13, baseType: !1450, size: 384)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1451, line: 17, size: 384, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1452 = !{!1453, !1454, !1455, !1462}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1450, file: !1451, line: 18, baseType: !109, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1450, file: !1451, line: 19, baseType: !109, size: 32, offset: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1450, file: !1451, line: 20, baseType: !1456, size: 192, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1457, line: 41, baseType: !1458)
!1457 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1457, line: 37, size: 192, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1458, file: !1457, line: 38, baseType: !302, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1458, file: !1457, line: 39, baseType: !197, size: 128, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1450, file: !1451, line: 22, baseType: !923, size: 128, align: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1446, file: !1447, line: 14, baseType: !775, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1446, file: !1447, line: 15, baseType: !1465, size: 64, offset: 448)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1466, line: 16, size: 64, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1465, file: !1466, line: 17, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1145, line: 746, size: 58368, elements: !1471)
!1471 = !{!1472, !1480, !1481, !1482, !1488, !1489, !1490, !1491, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1562, !1573, !1668, !1672, !1675, !1706, !1707, !1708, !1709, !1720, !1722, !1723, !1724, !1725, !1726, !1727, !1738, !1739, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1756, !1757, !1764, !1765, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2723, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2771, !2777, !2778, !2779, !2780, !2781, !2785, !2788, !2795, !2800, !2803, !2806, !2809, !2812, !2950, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2988, !2989, !2990, !2999, !3007, !3008, !3009, !3010, !3011, !3016, !3017, !3018, !3021, !3022, !3025, !3028, !3031, !3039, !3042, !3043, !3129, !3130, !3131, !3132, !3133, !3139, !3140, !3141, !3142, !3145, !3146, !3149, !3152, !3153, !3156, !3157, !3158, !3161, !3162, !3163, !3164, !3165, !3166, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3198, !3199, !3205, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3217, !3289, !3291, !3292, !3293, !3294, !3295, !3296, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3324, !3325, !3326}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1470, file: !1145, line: 752, baseType: !1473, size: 192)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1474, line: 56, size: 192, elements: !1475)
!1474 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1475 = !{!1476, !1477, !1478, !1479}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1473, file: !1474, line: 57, baseType: !230, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1473, file: !1474, line: 58, baseType: !230, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1473, file: !1474, line: 59, baseType: !260, size: 32, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1473, file: !1474, line: 61, baseType: !260, size: 32, offset: 160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1470, file: !1145, line: 754, baseType: !7, size: 32, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1470, file: !1145, line: 767, baseType: !171, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1470, file: !1145, line: 768, baseType: !1483, size: 32, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1484, line: 113, baseType: !1485)
!1484 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1484, line: 111, size: 32, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1485, file: !1484, line: 112, baseType: !322, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1470, file: !1145, line: 770, baseType: !7, size: 32, offset: 352)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1470, file: !1145, line: 771, baseType: !7, size: 32, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1470, file: !1145, line: 774, baseType: !109, size: 32, offset: 416)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1470, file: !1145, line: 775, baseType: !1492, size: 128, offset: 448)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1493, line: 58, size: 128, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1494 = !{!1495, !1501, !1506, !1507}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1492, file: !1493, line: 59, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1497, line: 60, size: 64, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1496, file: !1497, line: 61, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !1493, line: 60, baseType: !1502, size: 32, offset: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1492, file: !1493, line: 60, size: 32, elements: !1503)
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1502, file: !1493, line: 61, baseType: !7, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1502, file: !1493, line: 62, baseType: !322, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1492, file: !1493, line: 65, baseType: !337, size: 16, offset: 96)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1492, file: !1493, line: 65, baseType: !337, size: 16, offset: 112)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1470, file: !1145, line: 776, baseType: !7, size: 32, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1470, file: !1145, line: 777, baseType: !230, size: 64, offset: 640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1470, file: !1145, line: 778, baseType: !1469, size: 64, offset: 704)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1470, file: !1145, line: 787, baseType: !109, size: 32, offset: 768)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1470, file: !1145, line: 788, baseType: !109, size: 32, offset: 800)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1470, file: !1145, line: 790, baseType: !109, size: 32, offset: 832)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1470, file: !1145, line: 792, baseType: !109, size: 32, offset: 864)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1470, file: !1145, line: 793, baseType: !109, size: 32, offset: 896)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1470, file: !1145, line: 794, baseType: !109, size: 32, offset: 928)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1470, file: !1145, line: 795, baseType: !7, size: 32, offset: 960)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1470, file: !1145, line: 797, baseType: !1519, size: 2048, offset: 1024)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1145, line: 551, size: 2048, elements: !1520)
!1520 = !{!1521, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1541, !1544, !1545, !1546}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1519, file: !1145, line: 553, baseType: !1522, size: 128)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1145, line: 411, size: 128, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1522, file: !1145, line: 412, baseType: !230, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1522, file: !1145, line: 413, baseType: !260, size: 32, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1519, file: !1145, line: 554, baseType: !815, size: 192, align: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1519, file: !1145, line: 555, baseType: !222, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1519, file: !1145, line: 556, baseType: !222, size: 64, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1519, file: !1145, line: 558, baseType: !197, size: 128, offset: 448)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1519, file: !1145, line: 559, baseType: !7, size: 32, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1519, file: !1145, line: 561, baseType: !222, size: 64, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1519, file: !1145, line: 562, baseType: !222, size: 64, offset: 704)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1519, file: !1145, line: 563, baseType: !222, size: 64, offset: 768)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1519, file: !1145, line: 564, baseType: !222, size: 64, offset: 832)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1519, file: !1145, line: 565, baseType: !713, size: 64, offset: 896)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1519, file: !1145, line: 566, baseType: !222, size: 64, offset: 960)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1519, file: !1145, line: 568, baseType: !222, size: 64, offset: 1024)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1519, file: !1145, line: 571, baseType: !109, size: 32, offset: 1088)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1519, file: !1145, line: 572, baseType: !1540, size: 64, offset: 1152)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1519, file: !1145, line: 574, baseType: !1542, size: 64, offset: 1216)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1145, line: 49, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1519, file: !1145, line: 576, baseType: !1542, size: 64, offset: 1280)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1519, file: !1145, line: 578, baseType: !230, size: 64, offset: 1344)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1519, file: !1145, line: 588, baseType: !1547, size: 512, align: 512, offset: 1536)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1145, line: 497, size: 512, align: 512, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1547, file: !1145, line: 498, baseType: !222, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1547, file: !1145, line: 499, baseType: !222, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1547, file: !1145, line: 500, baseType: !222, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1547, file: !1145, line: 501, baseType: !260, size: 32, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1547, file: !1145, line: 502, baseType: !260, size: 32, offset: 224)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1547, file: !1145, line: 503, baseType: !230, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1547, file: !1145, line: 504, baseType: !230, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1547, file: !1145, line: 505, baseType: !230, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1547, file: !1145, line: 506, baseType: !1558, size: 64, align: 64, offset: 448)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1145, line: 445, size: 64, align: 64, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1558, file: !1145, line: 446, baseType: !7, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1558, file: !1145, line: 447, baseType: !7, size: 32, offset: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1470, file: !1145, line: 798, baseType: !1563, size: 384, offset: 3072)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1145, line: 592, size: 384, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1568, !1569, !1570, !1571}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1563, file: !1145, line: 593, baseType: !197, size: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1563, file: !1145, line: 594, baseType: !230, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1563, file: !1145, line: 595, baseType: !230, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1563, file: !1145, line: 596, baseType: !7, size: 32, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1563, file: !1145, line: 597, baseType: !281, size: 16, offset: 288)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1563, file: !1145, line: 598, baseType: !281, size: 16, offset: 304)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1563, file: !1145, line: 600, baseType: !1572, size: 64, offset: 320)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1470, file: !1145, line: 799, baseType: !1574, size: 1792, offset: 3456)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1145, line: 610, size: 1792, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1665, !1666}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1574, file: !1145, line: 611, baseType: !815, size: 192, align: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1574, file: !1145, line: 618, baseType: !222, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1574, file: !1145, line: 619, baseType: !222, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1574, file: !1145, line: 620, baseType: !222, size: 64, offset: 320)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1574, file: !1145, line: 621, baseType: !222, size: 64, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1574, file: !1145, line: 622, baseType: !222, size: 64, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1574, file: !1145, line: 629, baseType: !713, size: 64, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1574, file: !1145, line: 630, baseType: !222, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1574, file: !1145, line: 631, baseType: !7, size: 32, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1574, file: !1145, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1574, file: !1145, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1574, file: !1145, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1574, file: !1145, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1574, file: !1145, line: 662, baseType: !1590, size: 512, offset: 704)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1591)
!1591 = !{!1592, !1600, !1601, !1606, !1661, !1662, !1663, !1664}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1590, file: !25, line: 119, baseType: !1593, size: 256)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1594, line: 9, size: 256, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1593, file: !1594, line: 10, baseType: !815, size: 192, align: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1593, file: !1594, line: 11, baseType: !1598, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1599, line: 29, baseType: !713)
!1599 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1590, file: !25, line: 120, baseType: !1598, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1590, file: !25, line: 121, baseType: !1602, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!24, !1605}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1590, file: !25, line: 122, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1609)
!1609 = !{!1610, !1635, !1636, !1639, !1644, !1645, !1656, !1660}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1608, file: !25, line: 160, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1612, file: !25, line: 216, baseType: !661, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1612, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1612, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1612, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1612, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1612, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1612, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1612, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1612, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1612, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1612, file: !25, line: 227, baseType: !281, size: 16, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1612, file: !25, line: 228, baseType: !281, size: 16, offset: 208)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1612, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1612, file: !25, line: 235, baseType: !1598, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1612, file: !25, line: 236, baseType: !1605, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1612, file: !25, line: 237, baseType: !1598, size: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1612, file: !25, line: 238, baseType: !1605, size: 64, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1612, file: !25, line: 239, baseType: !1632, size: 4096, align: 512, offset: 512)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1608, size: 4096, align: 512, elements: !1633)
!1633 = !{!1634}
!1634 = !DISubrange(count: 8)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1608, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1608, file: !25, line: 162, baseType: !1637, size: 32, offset: 96)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !198, line: 32, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !402, line: 96, baseType: !109)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1608, file: !25, line: 163, baseType: !1640, size: 32, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !489, line: 274, baseType: !1641)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !489, line: 274, size: 32, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1641, file: !489, line: 274, baseType: !493, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1608, file: !25, line: 164, baseType: !1605, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1608, file: !25, line: 165, baseType: !1646, size: 128, offset: 256)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1594, line: 14, size: 128, elements: !1647)
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1646, file: !1594, line: 15, baseType: !1649, size: 128)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !816, line: 26, size: 128, elements: !1650)
!1650 = !{!1651, !1655}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1649, file: !816, line: 27, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !816, line: 12, size: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1652, file: !816, line: 13, baseType: !820, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1649, file: !816, line: 28, baseType: !820, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1608, file: !25, line: 166, baseType: !1657, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1598}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1608, file: !25, line: 167, baseType: !1598, size: 64, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1590, file: !25, line: 123, baseType: !330, size: 8, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1590, file: !25, line: 124, baseType: !330, size: 8, offset: 456)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1590, file: !25, line: 125, baseType: !330, size: 8, offset: 464)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1590, file: !25, line: 126, baseType: !330, size: 8, offset: 472)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1574, file: !1145, line: 671, baseType: !1590, size: 512, offset: 1216)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1574, file: !1145, line: 679, baseType: !1667, size: 64, offset: 1728)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1470, file: !1145, line: 800, baseType: !1669, size: 64, offset: 5248)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1145, line: 800, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1470, file: !1145, line: 809, baseType: !1673, size: 64, offset: 5312)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1145, line: 70, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1470, file: !1145, line: 825, baseType: !1676, size: 2048, align: 512, offset: 5632)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1145, line: 509, size: 2048, align: 512, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1676, file: !1145, line: 511, baseType: !222, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1676, file: !1145, line: 512, baseType: !222, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1676, file: !1145, line: 513, baseType: !222, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1676, file: !1145, line: 514, baseType: !222, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1676, file: !1145, line: 515, baseType: !222, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1676, file: !1145, line: 516, baseType: !222, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1676, file: !1145, line: 518, baseType: !222, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1676, file: !1145, line: 519, baseType: !222, size: 64, offset: 448)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1676, file: !1145, line: 520, baseType: !713, size: 64, offset: 512)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1676, file: !1145, line: 522, baseType: !222, size: 64, offset: 576)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1676, file: !1145, line: 523, baseType: !222, size: 64, offset: 640)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1676, file: !1145, line: 524, baseType: !713, size: 64, offset: 704)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1676, file: !1145, line: 526, baseType: !713, size: 64, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1676, file: !1145, line: 527, baseType: !222, size: 64, offset: 832)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1676, file: !1145, line: 529, baseType: !222, size: 64, offset: 896)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1676, file: !1145, line: 530, baseType: !222, size: 64, offset: 960)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1676, file: !1145, line: 531, baseType: !222, size: 64, offset: 1024)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1676, file: !1145, line: 532, baseType: !222, size: 64, offset: 1088)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1676, file: !1145, line: 533, baseType: !222, size: 64, offset: 1152)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1676, file: !1145, line: 535, baseType: !222, size: 64, offset: 1216)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1676, file: !1145, line: 536, baseType: !222, size: 64, offset: 1280)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1676, file: !1145, line: 537, baseType: !222, size: 64, offset: 1344)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1676, file: !1145, line: 538, baseType: !222, size: 64, offset: 1408)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1676, file: !1145, line: 539, baseType: !222, size: 64, offset: 1472)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1676, file: !1145, line: 540, baseType: !222, size: 64, offset: 1536)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1676, file: !1145, line: 541, baseType: !222, size: 64, offset: 1600)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1676, file: !1145, line: 542, baseType: !222, size: 64, offset: 1664)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1676, file: !1145, line: 543, baseType: !222, size: 64, offset: 1728)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1470, file: !1145, line: 833, baseType: !7, size: 32, offset: 7680)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1470, file: !1145, line: 836, baseType: !7, size: 32, offset: 7712)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1470, file: !1145, line: 837, baseType: !109, size: 32, offset: 7744)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1470, file: !1145, line: 838, baseType: !1710, size: 64, offset: 7808)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1713, line: 19, baseType: !1714)
!1713 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1713, line: 19, size: 64, elements: !1715)
!1715 = !{!1716}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1714, file: !1713, line: 19, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 64, elements: !1718)
!1718 = !{!1719}
!1719 = !DISubrange(count: 1)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1470, file: !1145, line: 839, baseType: !1721, size: 64, offset: 7872)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1470, file: !1145, line: 840, baseType: !1712, size: 64, offset: 7936)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1470, file: !1145, line: 841, baseType: !171, size: 64, offset: 8000)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1470, file: !1145, line: 843, baseType: !281, size: 16, offset: 8064)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1470, file: !1145, line: 845, baseType: !281, size: 16, offset: 8080)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1470, file: !1145, line: 848, baseType: !109, size: 32, offset: 8096)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1470, file: !1145, line: 849, baseType: !1728, size: 32, offset: 8128)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1145, line: 718, size: 32, elements: !1729)
!1729 = !{!1730, !1737}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1728, file: !1145, line: 724, baseType: !1731, size: 32)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1728, file: !1145, line: 719, size: 32, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1731, file: !1145, line: 720, baseType: !330, size: 8)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1731, file: !1145, line: 721, baseType: !330, size: 8, offset: 8)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1731, file: !1145, line: 722, baseType: !330, size: 8, offset: 16)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1731, file: !1145, line: 723, baseType: !330, size: 8, offset: 24)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1728, file: !1145, line: 725, baseType: !260, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1470, file: !1145, line: 850, baseType: !197, size: 128, offset: 8192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1470, file: !1145, line: 851, baseType: !1740, size: 64, offset: 8320)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1145, line: 60, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1470, file: !1145, line: 855, baseType: !230, size: 64, offset: 8384)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1470, file: !1145, line: 856, baseType: !330, size: 8, offset: 8448)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1470, file: !1145, line: 857, baseType: !330, size: 8, offset: 8456)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1470, file: !1145, line: 858, baseType: !109, size: 32, offset: 8480)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1470, file: !1145, line: 859, baseType: !197, size: 128, offset: 8512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1470, file: !1145, line: 860, baseType: !109, size: 32, offset: 8640)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1470, file: !1145, line: 861, baseType: !197, size: 128, offset: 8704)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1470, file: !1145, line: 873, baseType: !1750, size: 256, offset: 8832)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1145, line: 376, size: 256, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1750, file: !1145, line: 381, baseType: !230, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1750, file: !1145, line: 384, baseType: !226, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1750, file: !1145, line: 389, baseType: !226, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1750, file: !1145, line: 392, baseType: !226, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1470, file: !1145, line: 875, baseType: !197, size: 128, offset: 9088)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1470, file: !1145, line: 877, baseType: !1758, size: 320, offset: 9216)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1759, line: 86, size: 320, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1760 = !{!1761, !1762, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1758, file: !1759, line: 87, baseType: !109, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1758, file: !1759, line: 88, baseType: !197, size: 128, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1758, file: !1759, line: 89, baseType: !197, size: 128, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1470, file: !1145, line: 878, baseType: !815, size: 192, align: 64, offset: 9536)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1470, file: !1145, line: 881, baseType: !1766, size: 64, offset: 9728)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1768)
!1768 = !{!1769, !2643}
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !38, line: 734, baseType: !1770, size: 10240)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !38, line: 734, size: 10240, elements: !1771)
!1771 = !{!1772, !1776, !1789, !2520, !2521, !2522, !2523, !2524, !2525, !2532, !2533, !2534, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2573, !2575, !2578, !2623, !2624, !2625, !2628, !2629, !2630, !2633, !2634, !2635, !2641, !2642}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !38, line: 739, baseType: !1773, size: 512, align: 512)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1770, file: !38, line: 739, size: 512, align: 512, elements: !1774)
!1774 = !{!1775}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1773, file: !38, line: 747, baseType: !322, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1770, file: !38, line: 750, baseType: !1777, size: 128, offset: 512)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1778, line: 218, size: 128, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1779 = !{!1780, !1787, !1788}
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !1778, line: 219, baseType: !1781, size: 32)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1777, file: !1778, line: 219, size: 32, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1781, file: !1778, line: 220, baseType: !302, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1781, file: !1778, line: 221, baseType: !1785)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1778, line: 197, baseType: !1786)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1778, line: 197, elements: !990)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1777, file: !1778, line: 223, baseType: !7, size: 32, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1777, file: !1778, line: 224, baseType: !171, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1770, file: !38, line: 752, baseType: !1790, size: 64, offset: 640)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!230, !1793, !230, !230, !230, !230}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1795)
!1795 = !{!1796, !1802, !1803, !1805, !1806, !1807, !1808, !1809, !1859, !2049, !2058, !2059, !2060, !2510, !2511, !2512, !2513, !2515, !2516, !2519}
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !14, line: 995, baseType: !1797, size: 128)
!1797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1794, file: !14, line: 995, size: 128, elements: !1798)
!1798 = !{!1799, !1800, !1801}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1797, file: !14, line: 996, baseType: !1496, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1797, file: !14, line: 997, baseType: !923, size: 128, align: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1797, file: !14, line: 998, baseType: !7, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1794, file: !14, line: 1005, baseType: !302, size: 32, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1794, file: !14, line: 1006, baseType: !1804, size: 32, offset: 160)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !198, line: 156, baseType: !7)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1794, file: !14, line: 1007, baseType: !707, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1794, file: !14, line: 1008, baseType: !703, size: 256, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1794, file: !14, line: 1009, baseType: !603, size: 64, offset: 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1794, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1794, file: !14, line: 1011, baseType: !1810, size: 256, offset: 640)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1811)
!1811 = !{!1812, !1833, !1855, !1856, !1857, !1858}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1810, file: !14, line: 949, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1814, line: 34, baseType: !1815)
!1814 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1814, line: 25, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1815, file: !1814, line: 26, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1819, line: 27, baseType: !1820)
!1819 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1819, line: 13, size: 64, elements: !1821)
!1821 = !{!1822, !1832}
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1819, line: 14, baseType: !1823, size: 32)
!1823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1819, line: 14, size: 32, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1823, file: !1819, line: 15, baseType: !322, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !1819, line: 16, baseType: !1827, size: 32)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1823, file: !1819, line: 16, size: 32, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1827, file: !1819, line: 18, baseType: !330, size: 8)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1827, file: !1819, line: 19, baseType: !1831, size: 24, offset: 8)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 24, elements: !369)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1820, file: !1819, line: 26, baseType: !314, size: 32, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1810, file: !14, line: 950, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1840, !1842, !1843, !1844, !1845}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1835, file: !30, line: 61, baseType: !1483, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1835, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1835, file: !30, line: 63, baseType: !302, size: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1835, file: !30, line: 65, baseType: !1841, size: 256, offset: 128)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 256, elements: !235)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1835, file: !30, line: 66, baseType: !1071, size: 64, offset: 384)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1835, file: !30, line: 68, baseType: !1456, size: 192, offset: 448)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1835, file: !30, line: 69, baseType: !923, size: 128, align: 64, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1835, file: !30, line: 70, baseType: !1846, offset: 768)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1847, elements: !1853)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1847, file: !30, line: 55, baseType: !109, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1847, file: !30, line: 56, baseType: !1851, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1853 = !{!1854}
!1854 = !DISubrange(count: -1)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1810, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1810, file: !14, line: 952, baseType: !453, size: 32, offset: 160)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1810, file: !14, line: 952, baseType: !453, size: 32, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1810, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1794, file: !14, line: 1012, baseType: !1860, size: 64, offset: 896)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1862)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1863, line: 110, size: 1472, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1881, !1882, !1883, !1884, !1885, !1886, !1994, !1995, !1996, !1997, !1998, !2029, !2032, !2036, !2044}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1862, file: !1863, line: 111, baseType: !707, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1862, file: !1863, line: 112, baseType: !453, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1862, file: !1863, line: 113, baseType: !462, size: 32, offset: 96)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1862, file: !1863, line: 114, baseType: !453, size: 32, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1862, file: !1863, line: 115, baseType: !462, size: 32, offset: 160)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1862, file: !1863, line: 116, baseType: !453, size: 32, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1862, file: !1863, line: 117, baseType: !462, size: 32, offset: 224)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1862, file: !1863, line: 118, baseType: !453, size: 32, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1862, file: !1863, line: 119, baseType: !462, size: 32, offset: 288)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1862, file: !1863, line: 120, baseType: !7, size: 32, offset: 320)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1862, file: !1863, line: 121, baseType: !1876, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1877, line: 24, baseType: !1878)
!1877 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1877, line: 24, size: 64, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1878, file: !1877, line: 24, baseType: !222, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1862, file: !1863, line: 122, baseType: !1876, size: 64, offset: 448)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1862, file: !1863, line: 123, baseType: !1876, size: 64, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1862, file: !1863, line: 124, baseType: !1876, size: 64, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1862, file: !1863, line: 125, baseType: !1876, size: 64, offset: 640)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1862, file: !1863, line: 127, baseType: !272, size: 8, offset: 704)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1862, file: !1863, line: 129, baseType: !1887, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1889, line: 195, size: 1728, elements: !1890)
!1889 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1890 = !{!1891, !1892, !1895, !1900, !1901, !1904, !1905, !1910, !1911, !1912, !1913, !1916, !1917, !1918, !1919, !1920, !1958, !1979}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1888, file: !1889, line: 196, baseType: !1483, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1888, file: !1889, line: 197, baseType: !1893, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1889, line: 28, baseType: !1894)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !198, line: 104, baseType: !699)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !1889, line: 198, baseType: !1896, size: 192, offset: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1888, file: !1889, line: 198, size: 192, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1896, file: !1889, line: 199, baseType: !197, size: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1896, file: !1889, line: 200, baseType: !815, size: 192, align: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1888, file: !1889, line: 205, baseType: !1363, size: 320, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1888, file: !1889, line: 206, baseType: !1902, size: 64, offset: 576)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1889, line: 206, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1888, file: !1889, line: 207, baseType: !171, size: 64, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !1889, line: 208, baseType: !1906, size: 64, offset: 704)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1888, file: !1889, line: 208, size: 64, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1906, file: !1889, line: 209, baseType: !1203, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1906, file: !1889, line: 210, baseType: !1203, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1888, file: !1889, line: 212, baseType: !1203, size: 64, offset: 768)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1888, file: !1889, line: 213, baseType: !453, size: 32, offset: 832)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1888, file: !1889, line: 214, baseType: !462, size: 32, offset: 864)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1888, file: !1889, line: 215, baseType: !1914, size: 32, offset: 896)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1889, line: 31, baseType: !1915)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !198, line: 110, baseType: !260)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1888, file: !1889, line: 216, baseType: !281, size: 16, offset: 928)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1888, file: !1889, line: 217, baseType: !281, size: 16, offset: 944)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1888, file: !1889, line: 221, baseType: !841, size: 16, offset: 960)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1888, file: !1889, line: 228, baseType: !230, size: 64, offset: 1024)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !1889, line: 245, baseType: !1921, size: 320, offset: 1088)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1888, file: !1889, line: 245, size: 320, elements: !1922)
!1922 = !{!1923, !1950}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1921, file: !1889, line: 246, baseType: !1924, size: 320)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1889, line: 114, size: 320, elements: !1925)
!1925 = !{!1926, !1927, !1939, !1942, !1949}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1924, file: !1889, line: 116, baseType: !230, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, scope: !1924, file: !1889, line: 117, baseType: !1928, size: 64, offset: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1924, file: !1889, line: 117, size: 64, elements: !1929)
!1929 = !{!1930, !1938}
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1928, file: !1889, line: 118, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1928, file: !1889, line: 118, size: 64, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1931, file: !1889, line: 120, baseType: !337, size: 16)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1931, file: !1889, line: 121, baseType: !1935, size: 48, offset: 16)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 48, elements: !1936)
!1936 = !{!1937}
!1937 = !DISubrange(count: 6)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1928, file: !1889, line: 127, baseType: !230, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1924, file: !1889, line: 129, baseType: !1940, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1889, line: 102, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1924, file: !1889, line: 130, baseType: !1943, size: 64, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1889, line: 108, size: 192, elements: !1945)
!1945 = !{!1946, !1947, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1944, file: !1889, line: 109, baseType: !923, size: 128, align: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1944, file: !1889, line: 110, baseType: !1483, size: 32, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1944, file: !1889, line: 111, baseType: !783, size: 8, offset: 160)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1924, file: !1889, line: 131, baseType: !181, size: 64, offset: 256)
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1889, line: 247, baseType: !1951, size: 320)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1889, line: 247, size: 320, elements: !1952)
!1952 = !{!1953, !1954, !1955, !1956, !1957}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1951, file: !1889, line: 248, baseType: !230, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1951, file: !1889, line: 249, baseType: !230, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1951, file: !1889, line: 250, baseType: !1940, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1951, file: !1889, line: 251, baseType: !1943, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1951, file: !1889, line: 252, baseType: !368, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !1889, line: 260, baseType: !1959, size: 256, offset: 1408)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1888, file: !1889, line: 260, size: 256, elements: !1960)
!1960 = !{!1961, !1967}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1959, file: !1889, line: 261, baseType: !1962, size: 256)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1889, line: 134, size: 256, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1962, file: !1889, line: 135, baseType: !171, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1962, file: !1889, line: 136, baseType: !1966, size: 256)
!1966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !235)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !1889, line: 262, baseType: !1968, size: 256)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !1889, line: 262, size: 256, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1968, file: !1889, line: 264, baseType: !197, size: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1968, file: !1889, line: 265, baseType: !1972, size: 128, offset: 128)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1973, line: 22, size: 128, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1974 = !{!1975, !1978}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1972, file: !1973, line: 23, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1973, line: 23, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1972, file: !1973, line: 24, baseType: !230, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1888, file: !1889, line: 280, baseType: !1980, size: 64, offset: 1664)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1889, line: 176, size: 192, elements: !1982)
!1982 = !{!1983, !1992, !1993}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1981, file: !1889, line: 177, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1889, line: 171, baseType: !1985)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!109, !1887, !1988, !1990, !1887}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1962)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1981, file: !1889, line: 178, baseType: !1887, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1981, file: !1889, line: 179, baseType: !1940, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1862, file: !1863, line: 130, baseType: !1887, size: 64, offset: 832)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1862, file: !1863, line: 131, baseType: !1887, size: 64, offset: 896)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1862, file: !1863, line: 132, baseType: !1887, size: 64, offset: 960)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1862, file: !1863, line: 135, baseType: !171, size: 64, offset: 1024)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1862, file: !1863, line: 137, baseType: !1999, size: 64, offset: 1088)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2001, line: 14, size: 1088, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2002 = !{!2003, !2004, !2013, !2014, !2015, !2016, !2017, !2018}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2000, file: !2001, line: 15, baseType: !1483, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2000, file: !2001, line: 17, baseType: !2005, size: 320, offset: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2006, line: 22, size: 320, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2007 = !{!2008, !2009, !2010, !2011}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2005, file: !2006, line: 23, baseType: !661, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2005, file: !2006, line: 24, baseType: !713, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2005, file: !2006, line: 26, baseType: !197, size: 128, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2005, file: !2006, line: 28, baseType: !2012, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2000, file: !2001, line: 19, baseType: !230, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2000, file: !2001, line: 20, baseType: !707, size: 64, offset: 448)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2000, file: !2001, line: 23, baseType: !947, size: 128, offset: 512)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2000, file: !2001, line: 24, baseType: !453, size: 32, offset: 640)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2000, file: !2001, line: 29, baseType: !707, size: 64, offset: 704)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2000, file: !2001, line: 36, baseType: !2019, size: 320, offset: 768)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2020, line: 15, size: 320, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027, !2028}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2019, file: !2020, line: 16, baseType: !661, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2019, file: !2020, line: 18, baseType: !109, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2019, file: !2020, line: 19, baseType: !109, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2019, file: !2020, line: 20, baseType: !109, size: 32, offset: 96)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2019, file: !2020, line: 21, baseType: !109, size: 32, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2019, file: !2020, line: 22, baseType: !230, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2019, file: !2020, line: 23, baseType: !230, size: 64, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1862, file: !1863, line: 138, baseType: !2030, size: 64, offset: 1152)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1862, file: !1863, line: 139, baseType: !2033, size: 64, offset: 1216)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2035, line: 16, flags: DIFlagFwdDecl)
!2035 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1862, file: !1863, line: 140, baseType: !2037, size: 64, offset: 1280)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1863, line: 25, size: 64, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2038, file: !1863, line: 26, baseType: !322, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2038, file: !1863, line: 27, baseType: !109, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2038, file: !1863, line: 28, baseType: !2043, offset: 64)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, elements: !1853)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !1863, line: 142, baseType: !2045, size: 128, offset: 1344)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1862, file: !1863, line: 142, size: 128, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2045, file: !1863, line: 143, baseType: !109, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2045, file: !1863, line: 144, baseType: !923, size: 128, align: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1794, file: !14, line: 1013, baseType: !2050, size: 256, offset: 960)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2050, file: !14, line: 971, baseType: !230, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2050, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2050, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2050, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2050, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2050, file: !14, line: 976, baseType: !603, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1794, file: !14, line: 1014, baseType: !1275, size: 128, offset: 1216)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1794, file: !14, line: 1015, baseType: !447, size: 64, offset: 1344)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1794, file: !14, line: 1016, baseType: !2061, size: 64, offset: 1408)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2063)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2064)
!2064 = !{!2065, !2066, !2070, !2075, !2079, !2108, !2109, !2115, !2128, !2136, !2140, !2141, !2432, !2433, !2437, !2442, !2443, !2447, !2451, !2457, !2458, !2462, !2463, !2469, !2473, !2477, !2483, !2487, !2491, !2495, !2499, !2500, !2506}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2063, file: !14, line: 1915, baseType: !632, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2063, file: !14, line: 1916, baseType: !2067, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!603, !1793, !603, !109}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2063, file: !14, line: 1917, baseType: !2071, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!400, !1793, !368, !415, !2074}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2063, file: !14, line: 1918, baseType: !2076, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!400, !1793, !181, !415, !2074}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2063, file: !14, line: 1919, baseType: !2080, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!400, !2083, !2105}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2092, !2093, !2094, !2095}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2084, file: !14, line: 374, baseType: !1793, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2084, file: !14, line: 375, baseType: !603, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2084, file: !14, line: 376, baseType: !2089, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !2083, !404}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2084, file: !14, line: 377, baseType: !171, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2084, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2084, file: !14, line: 379, baseType: !337, size: 16, offset: 288)
!2095 = !DIDerivedType(tag: DW_TAG_member, scope: !2084, file: !14, line: 380, baseType: !2096, size: 64, offset: 320)
!2096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2084, file: !14, line: 380, size: 64, elements: !2097)
!2097 = !{!2098, !2101}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2096, file: !14, line: 386, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2096, file: !14, line: 395, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!400, !171}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2107, line: 17, flags: DIFlagFwdDecl)
!2107 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2063, file: !14, line: 1920, baseType: !2080, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2063, file: !14, line: 1921, baseType: !2110, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!109, !2083, !2113, !7}
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2063, file: !14, line: 1923, baseType: !2116, size: 64, offset: 448)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!109, !1793, !2119}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2121)
!2121 = !{!2122, !2127}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2120, file: !14, line: 1859, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2124)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!783, !2119, !181, !109, !603, !222, !7}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2120, file: !14, line: 1860, baseType: !603, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2063, file: !14, line: 1924, baseType: !2129, size: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!2132, !1793, !2134}
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2133, line: 59, baseType: !7)
!2133 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !618, line: 31, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2063, file: !14, line: 1925, baseType: !2137, size: 64, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!404, !1793, !7, !230}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2063, file: !14, line: 1926, baseType: !2137, size: 64, offset: 640)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2063, file: !14, line: 1927, baseType: !2142, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!109, !1793, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2147)
!2147 = !{!2148, !2157, !2158, !2166, !2173, !2174, !2179, !2180, !2185, !2186, !2189, !2425, !2426, !2427, !2428, !2429, !2430}
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2146, file: !38, line: 628, baseType: !2149, size: 128)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2146, file: !38, line: 628, size: 128, elements: !2150)
!2150 = !{!2151, !2156}
!2151 = !DIDerivedType(tag: DW_TAG_member, scope: !2149, file: !38, line: 629, baseType: !2152, size: 128)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !38, line: 629, size: 128, elements: !2153)
!2153 = !{!2154, !2155}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2152, file: !38, line: 631, baseType: !230, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2152, file: !38, line: 632, baseType: !230, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2149, file: !38, line: 635, baseType: !923, size: 128, align: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2146, file: !38, line: 639, baseType: !1766, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2146, file: !38, line: 640, baseType: !2159, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2160, line: 297, baseType: !2161)
!2160 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2160, line: 297, size: 64, elements: !2162)
!2162 = !{!2163}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2161, file: !2160, line: 297, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2165, line: 19, baseType: !230)
!2165 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2166 = !DIDerivedType(tag: DW_TAG_member, scope: !2146, file: !38, line: 646, baseType: !2167, size: 64, offset: 256)
!2167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2146, file: !38, line: 646, size: 64, elements: !2168)
!2168 = !{!2169, !2172}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2167, file: !38, line: 647, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2171)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !230)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2167, file: !38, line: 648, baseType: !2171, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2146, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2146, file: !38, line: 667, baseType: !2175, size: 64, offset: 384)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2177)
!2177 = !{!2178}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2176, file: !38, line: 580, baseType: !1363, size: 320)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2146, file: !38, line: 670, baseType: !783, size: 8, offset: 448)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2146, file: !38, line: 681, baseType: !2181, size: 256, offset: 512)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2146, file: !38, line: 678, size: 256, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2181, file: !38, line: 679, baseType: !815, size: 192, align: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2181, file: !38, line: 680, baseType: !230, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2146, file: !38, line: 689, baseType: !197, size: 128, offset: 768)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2146, file: !38, line: 691, baseType: !2187, size: 64, offset: 896)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2146, file: !38, line: 694, baseType: !2190, size: 64, offset: 960)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2193, line: 563, size: 1024, elements: !2194)
!2193 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2194 = !{!2195, !2199, !2200, !2204, !2208, !2212, !2389, !2393, !2397, !2401, !2402, !2403, !2407, !2411, !2417, !2421}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2192, file: !2193, line: 564, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !2145}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2192, file: !2193, line: 569, baseType: !2196, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2192, file: !2193, line: 571, baseType: !2201, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!109, !2145, !230}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2192, file: !2193, line: 572, baseType: !2205, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!109, !2145}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2192, file: !2193, line: 578, baseType: !2209, size: 64, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!109, !2145, !230, !230, !230}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2192, file: !2193, line: 580, baseType: !2213, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2216, !2217}
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2193, line: 512, size: 896, elements: !2219)
!2219 = !{!2220, !2228, !2229, !2236, !2243, !2253, !2382, !2383, !2385, !2387}
!2220 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !2193, line: 513, baseType: !2221, size: 320)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2218, file: !2193, line: 513, size: 320, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2227}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2221, file: !2193, line: 514, baseType: !2145, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2221, file: !2193, line: 515, baseType: !1215, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2221, file: !2193, line: 516, baseType: !230, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2221, file: !2193, line: 517, baseType: !230, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2221, file: !2193, line: 518, baseType: !230, size: 64, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2218, file: !2193, line: 520, baseType: !37, size: 32, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2218, file: !2193, line: 522, baseType: !2230, size: 64, offset: 384)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2165, line: 22, baseType: !2232)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2165, line: 22, size: 64, elements: !2233)
!2233 = !{!2234}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2232, file: !2165, line: 22, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2165, line: 15, baseType: !230)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2218, file: !2193, line: 524, baseType: !2237, size: 64, offset: 448)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2160, line: 372, baseType: !2239)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2160, line: 372, size: 64, elements: !2240)
!2240 = !{!2241}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2239, file: !2160, line: 372, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2165, line: 16, baseType: !230)
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !2193, line: 527, baseType: !2244, size: 64, offset: 512)
!2244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2218, file: !2193, line: 527, size: 64, elements: !2245)
!2245 = !{!2246, !2252}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2244, file: !2193, line: 528, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2165, line: 21, baseType: !2248)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2165, line: 21, size: 64, elements: !2249)
!2249 = !{!2250}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2248, file: !2165, line: 21, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2165, line: 14, baseType: !230)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2244, file: !2193, line: 529, baseType: !2231, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2218, file: !2193, line: 534, baseType: !2254, size: 64, offset: 576)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2256)
!2256 = !{!2257, !2258, !2376, !2381}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2255, file: !38, line: 75, baseType: !230, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !38, line: 83, baseType: !2259, size: 320, offset: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !38, line: 83, size: 320, elements: !2260)
!2260 = !{!2261, !2282, !2296, !2300, !2375}
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !38, line: 84, baseType: !2262, size: 320)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2259, file: !38, line: 84, size: 320, elements: !2263)
!2263 = !{!2264, !2275, !2276, !2281}
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2262, file: !38, line: 90, baseType: !2265, size: 128)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2262, file: !38, line: 90, size: 128, elements: !2266)
!2266 = !{!2267, !2268, !2273, !2274}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2265, file: !38, line: 91, baseType: !197, size: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !38, line: 94, baseType: !2269, size: 128)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !38, line: 94, size: 128, elements: !2270)
!2270 = !{!2271, !2272}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2269, file: !38, line: 96, baseType: !171, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2269, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2265, file: !38, line: 102, baseType: !197, size: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2265, file: !38, line: 103, baseType: !197, size: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2262, file: !38, line: 106, baseType: !443, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2262, file: !38, line: 107, baseType: !2277, size: 64, offset: 192)
!2277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2262, file: !38, line: 107, size: 64, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2277, file: !38, line: 108, baseType: !230, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2277, file: !38, line: 109, baseType: !230, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2262, file: !38, line: 117, baseType: !230, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !38, line: 119, baseType: !2283, size: 320)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2259, file: !38, line: 119, size: 320, elements: !2284)
!2284 = !{!2285, !2286, !2289, !2290, !2291}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2283, file: !38, line: 124, baseType: !230, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2283, file: !38, line: 125, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2283, file: !38, line: 126, baseType: !230, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2283, file: !38, line: 127, baseType: !230, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, scope: !2283, file: !38, line: 128, baseType: !2292, size: 64, offset: 256)
!2292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2283, file: !38, line: 128, size: 64, elements: !2293)
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2292, file: !38, line: 133, baseType: !230, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2292, file: !38, line: 138, baseType: !707, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !38, line: 141, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2259, file: !38, line: 141, size: 64, elements: !2298)
!2298 = !{!2299}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2297, file: !38, line: 142, baseType: !230, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !38, line: 144, baseType: !2301, size: 128)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2259, file: !38, line: 144, size: 128, elements: !2302)
!2302 = !{!2303, !2374}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2301, file: !38, line: 146, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2306)
!2306 = !{!2307, !2317, !2338, !2339, !2340, !2341, !2342, !2356, !2357, !2358}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2305, file: !54, line: 127, baseType: !2308, size: 384)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2309)
!2309 = !{!2310, !2311, !2313, !2314, !2315, !2316}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2308, file: !54, line: 22, baseType: !230, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2308, file: !54, line: 23, baseType: !2312, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2308, file: !54, line: 24, baseType: !2312, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2308, file: !54, line: 25, baseType: !230, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2308, file: !54, line: 26, baseType: !230, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2308, file: !54, line: 27, baseType: !230, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2305, file: !54, line: 128, baseType: !2318, size: 128, offset: 384)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2319, line: 105, size: 128, elements: !2320)
!2319 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2320 = !{!2321, !2322}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2318, file: !2319, line: 110, baseType: !230, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2318, file: !2319, line: 118, baseType: !2323, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2319, line: 95, size: 448, elements: !2325)
!2325 = !{!2326, !2327, !2333, !2334, !2335, !2336, !2337}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2324, file: !2319, line: 96, baseType: !707, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2324, file: !2319, line: 97, baseType: !2328, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2319, line: 60, baseType: !2330)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !2332}
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2324, file: !2319, line: 98, baseType: !2328, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2324, file: !2319, line: 99, baseType: !783, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2324, file: !2319, line: 100, baseType: !783, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2324, file: !2319, line: 101, baseType: !923, size: 128, align: 64, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2324, file: !2319, line: 102, baseType: !2332, size: 64, offset: 384)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2305, file: !54, line: 129, baseType: !652, size: 256, offset: 512)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2305, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2305, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2305, file: !54, line: 132, baseType: !230, size: 64, offset: 832)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2305, file: !54, line: 133, baseType: !2343, size: 64, offset: 896)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2345)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2346)
!2346 = !{!2347, !2351, !2352}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2345, file: !54, line: 83, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !2254}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2345, file: !54, line: 89, baseType: !2213, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2345, file: !54, line: 100, baseType: !2353, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!109, !2304, !230, !230, !109}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2305, file: !54, line: 134, baseType: !171, size: 64, offset: 960)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2305, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2358 = !DIDerivedType(tag: DW_TAG_member, scope: !2305, file: !54, line: 136, baseType: !2359, size: 128, offset: 1088)
!2359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2305, file: !54, line: 136, size: 128, elements: !2360)
!2360 = !{!2361, !2367}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2359, file: !54, line: 137, baseType: !2362, size: 128)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2363, line: 6, size: 128, elements: !2364)
!2363 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2364 = !{!2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2362, file: !2363, line: 7, baseType: !222, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2362, file: !2363, line: 8, baseType: !222, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !2359, file: !54, line: 138, baseType: !2368)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2359, file: !54, line: 138, elements: !2369)
!2369 = !{!2370, !2372}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2368, file: !54, line: 138, baseType: !2371)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2368, file: !54, line: 138, elements: !990)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2368, file: !54, line: 138, baseType: !2373)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2362, elements: !1853)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2301, file: !38, line: 147, baseType: !171, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2259, file: !38, line: 161, baseType: !923, size: 128, align: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !38, line: 164, baseType: !2377, size: 32, offset: 384)
!2377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !38, line: 164, size: 32, elements: !2378)
!2378 = !{!2379, !2380}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2377, file: !38, line: 169, baseType: !322, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2377, file: !38, line: 177, baseType: !7, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2255, file: !38, line: 181, baseType: !322, size: 32, offset: 416)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2218, file: !2193, line: 535, baseType: !2254, size: 64, offset: 640)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2218, file: !2193, line: 541, baseType: !2384, size: 64, offset: 704)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2218, file: !2193, line: 545, baseType: !2386, size: 64, offset: 768)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2218, file: !2193, line: 549, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2160, line: 520, baseType: !2254)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2192, file: !2193, line: 581, baseType: !2390, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!2216, !2217, !7}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2192, file: !2193, line: 582, baseType: !2394, size: 64, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!2216, !2217, !230, !230}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2192, file: !2193, line: 584, baseType: !2398, size: 64, offset: 512)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!230, !2145}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2192, file: !2193, line: 588, baseType: !2213, size: 64, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2192, file: !2193, line: 591, baseType: !2213, size: 64, offset: 640)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2192, file: !2193, line: 597, baseType: !2404, size: 64, offset: 704)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!109, !2145, !230, !171, !109, !109}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2192, file: !2193, line: 603, baseType: !2408, size: 64, offset: 768)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!181, !2145}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2192, file: !2193, line: 613, baseType: !2412, size: 64, offset: 832)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!109, !2145, !2415}
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2192, file: !2193, line: 625, baseType: !2418, size: 64, offset: 896)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!2415, !2145, !230}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2192, file: !2193, line: 633, baseType: !2422, size: 64, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!2254, !2145, !230}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2146, file: !38, line: 697, baseType: !230, size: 64, offset: 1024)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2146, file: !38, line: 699, baseType: !1793, size: 64, offset: 1088)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2146, file: !38, line: 700, baseType: !171, size: 64, offset: 1152)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2146, file: !38, line: 711, baseType: !707, size: 64, offset: 1216)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2146, file: !38, line: 717, baseType: !2415, size: 64, offset: 1280)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2146, file: !38, line: 722, baseType: !2431, offset: 1344)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !990)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2063, file: !14, line: 1928, baseType: !230, size: 64, offset: 768)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2063, file: !14, line: 1929, baseType: !2434, size: 64, offset: 832)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!109, !447, !1793}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2063, file: !14, line: 1930, baseType: !2438, size: 64, offset: 896)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!109, !1793, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !171)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2063, file: !14, line: 1931, baseType: !2434, size: 64, offset: 960)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2063, file: !14, line: 1932, baseType: !2444, size: 64, offset: 1024)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!109, !1793, !603, !603, !109}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2063, file: !14, line: 1933, baseType: !2448, size: 64, offset: 1088)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!109, !109, !1793, !109}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2063, file: !14, line: 1934, baseType: !2452, size: 64, offset: 1152)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!109, !1793, !109, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2063, file: !14, line: 1935, baseType: !1790, size: 64, offset: 1216)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2063, file: !14, line: 1936, baseType: !2459, size: 64, offset: 1280)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!109, !109}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2063, file: !14, line: 1937, baseType: !2452, size: 64, offset: 1344)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2063, file: !14, line: 1938, baseType: !2464, size: 64, offset: 1408)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!400, !2467, !1793, !2074, !415, !7}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1145, line: 59, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2063, file: !14, line: 1939, baseType: !2470, size: 64, offset: 1472)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!400, !1793, !2074, !2467, !415, !7}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2063, file: !14, line: 1940, baseType: !2474, size: 64, offset: 1536)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !1793}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2063, file: !14, line: 1941, baseType: !2478, size: 64, offset: 1600)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!109, !1793, !109, !2481, !2482}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2063, file: !14, line: 1942, baseType: !2484, size: 64, offset: 1664)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!404, !1793, !109, !603, !603}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2063, file: !14, line: 1944, baseType: !2488, size: 64, offset: 1728)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !1143, !1793}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2063, file: !14, line: 1948, baseType: !2492, size: 64, offset: 1792)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!400, !1793, !603, !1793, !603, !415, !7}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2063, file: !14, line: 1950, baseType: !2496, size: 64, offset: 1856)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!603, !1793, !603, !1793, !603, !603, !7}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2063, file: !14, line: 1953, baseType: !2444, size: 64, offset: 1920)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2063, file: !14, line: 1954, baseType: !2501, size: 64, offset: 1984)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!109, !2504, !7}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2063, file: !14, line: 1955, baseType: !2507, size: 64, offset: 2048)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!109, !2504, !2113, !7}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1794, file: !14, line: 1018, baseType: !222, size: 64, offset: 1472)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1794, file: !14, line: 1020, baseType: !171, size: 64, offset: 1536)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1794, file: !14, line: 1023, baseType: !171, size: 64, offset: 1600)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1794, file: !14, line: 1027, baseType: !2514, size: 64, offset: 1664)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1794, file: !14, line: 1029, baseType: !443, size: 64, offset: 1728)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1794, file: !14, line: 1030, baseType: !2517, size: 32, offset: 1792)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2518, line: 8, baseType: !260)
!2518 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1794, file: !14, line: 1031, baseType: !2517, size: 32, offset: 1824)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1770, file: !38, line: 756, baseType: !230, size: 64, offset: 704)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1770, file: !38, line: 757, baseType: !230, size: 64, offset: 768)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1770, file: !38, line: 760, baseType: !230, size: 64, offset: 832)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1770, file: !38, line: 761, baseType: !230, size: 64, offset: 896)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1770, file: !38, line: 763, baseType: !230, size: 64, offset: 960)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1770, file: !38, line: 764, baseType: !2526, size: 64, offset: 1024)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2160, line: 299, baseType: !2528)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2160, line: 299, size: 64, elements: !2529)
!2529 = !{!2530}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2528, file: !2160, line: 299, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2165, line: 18, baseType: !230)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1770, file: !38, line: 773, baseType: !322, size: 32, offset: 1088)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1770, file: !38, line: 785, baseType: !322, size: 32, offset: 1120)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1770, file: !38, line: 795, baseType: !2535, size: 64, offset: 1152)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2537)
!2537 = !{!2538, !2539}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2536, file: !38, line: 727, baseType: !222, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2536, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1770, file: !38, line: 801, baseType: !230, size: 64, offset: 1216)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1770, file: !38, line: 804, baseType: !707, size: 64, offset: 1280)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1770, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1770, file: !38, line: 808, baseType: !302, size: 32, offset: 1376)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1770, file: !38, line: 823, baseType: !1363, size: 320, offset: 1408)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1770, file: !38, line: 825, baseType: !197, size: 128, offset: 1728)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1770, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1770, file: !38, line: 849, baseType: !230, size: 64, offset: 1920)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1770, file: !38, line: 850, baseType: !230, size: 64, offset: 1984)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1770, file: !38, line: 852, baseType: !230, size: 64, offset: 2048)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1770, file: !38, line: 853, baseType: !230, size: 64, offset: 2112)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1770, file: !38, line: 854, baseType: !709, size: 64, offset: 2176)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1770, file: !38, line: 855, baseType: !230, size: 64, offset: 2240)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1770, file: !38, line: 856, baseType: !230, size: 64, offset: 2304)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1770, file: !38, line: 857, baseType: !230, size: 64, offset: 2368)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1770, file: !38, line: 858, baseType: !230, size: 64, offset: 2432)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1770, file: !38, line: 865, baseType: !493, size: 32, offset: 2496)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1770, file: !38, line: 867, baseType: !302, size: 32, offset: 2528)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1770, file: !38, line: 869, baseType: !230, size: 64, offset: 2560)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1770, file: !38, line: 869, baseType: !230, size: 64, offset: 2624)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1770, file: !38, line: 869, baseType: !230, size: 64, offset: 2688)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1770, file: !38, line: 869, baseType: !230, size: 64, offset: 2752)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1770, file: !38, line: 870, baseType: !230, size: 64, offset: 2816)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1770, file: !38, line: 870, baseType: !230, size: 64, offset: 2880)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1770, file: !38, line: 870, baseType: !230, size: 64, offset: 2944)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1770, file: !38, line: 871, baseType: !230, size: 64, offset: 3008)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1770, file: !38, line: 871, baseType: !230, size: 64, offset: 3072)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1770, file: !38, line: 871, baseType: !230, size: 64, offset: 3136)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1770, file: !38, line: 871, baseType: !230, size: 64, offset: 3200)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1770, file: !38, line: 873, baseType: !2570, size: 3328, offset: 3264)
!2570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 3328, elements: !2571)
!2571 = !{!2572}
!2572 = !DISubrange(count: 52)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1770, file: !38, line: 875, baseType: !2574, size: 1280, offset: 6592)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2005, size: 1280, elements: !235)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1770, file: !38, line: 877, baseType: !2576, size: 64, offset: 7872)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1770, file: !38, line: 880, baseType: !2579, size: 1088, offset: 7936)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2580, line: 72, baseType: !2581)
!2580 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2580, line: 23, size: 1088, elements: !2582)
!2582 = !{!2583, !2584, !2585, !2586, !2587, !2590, !2591, !2592, !2593, !2620, !2621, !2622}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2581, file: !2580, line: 28, baseType: !222, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2581, file: !2580, line: 38, baseType: !709, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2581, file: !2580, line: 40, baseType: !230, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2581, file: !2580, line: 43, baseType: !1363, size: 320, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2581, file: !2580, line: 44, baseType: !2588, size: 64, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2580, line: 44, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2581, file: !2580, line: 48, baseType: !230, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2581, file: !2580, line: 59, baseType: !703, size: 256, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2581, file: !2580, line: 60, baseType: !171, size: 64, offset: 896)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2581, file: !2580, line: 61, baseType: !2594, size: 64, offset: 960)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2596)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2597, line: 13, size: 1216, elements: !2598)
!2597 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2596, file: !2597, line: 14, baseType: !171, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2596, file: !2597, line: 15, baseType: !230, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2596, file: !2597, line: 17, baseType: !230, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2596, file: !2597, line: 17, baseType: !230, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2596, file: !2597, line: 18, baseType: !230, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2596, file: !2597, line: 18, baseType: !230, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2596, file: !2597, line: 19, baseType: !2606, size: 64, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2596, file: !2597, line: 21, baseType: !404, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2596, file: !2597, line: 23, baseType: !404, size: 64, offset: 512)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2596, file: !2597, line: 24, baseType: !404, size: 64, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2596, file: !2597, line: 25, baseType: !404, size: 64, offset: 640)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2596, file: !2597, line: 26, baseType: !404, size: 64, offset: 704)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2596, file: !2597, line: 27, baseType: !404, size: 64, offset: 768)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2596, file: !2597, line: 28, baseType: !404, size: 64, offset: 832)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2596, file: !2597, line: 29, baseType: !404, size: 64, offset: 896)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2596, file: !2597, line: 30, baseType: !404, size: 64, offset: 960)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2596, file: !2597, line: 31, baseType: !404, size: 64, offset: 1024)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2596, file: !2597, line: 32, baseType: !404, size: 64, offset: 1088)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2596, file: !2597, line: 33, baseType: !404, size: 64, offset: 1152)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2581, file: !2580, line: 63, baseType: !322, size: 32, offset: 1024)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2581, file: !2580, line: 69, baseType: !337, size: 16, offset: 1056)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2581, file: !2580, line: 70, baseType: !839, size: 16, offset: 1072)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1770, file: !38, line: 882, baseType: !230, size: 64, offset: 9024)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1770, file: !38, line: 885, baseType: !302, size: 32, offset: 9088)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1770, file: !38, line: 886, baseType: !2626, size: 64, offset: 9152)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1770, file: !38, line: 901, baseType: !2030, size: 64, offset: 9216)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1770, file: !38, line: 904, baseType: !1793, size: 64, offset: 9280)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1770, file: !38, line: 906, baseType: !2631, size: 64, offset: 9344)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1770, file: !38, line: 930, baseType: !322, size: 32, offset: 9408)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1770, file: !38, line: 933, baseType: !322, size: 32, offset: 9440)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1770, file: !38, line: 935, baseType: !2636, size: 64, offset: 9472)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2637)
!2637 = !{!2638}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2636, file: !68, line: 104, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1770, file: !38, line: 940, baseType: !707, size: 64, offset: 9536)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1770, file: !38, line: 942, baseType: !961, size: 256, offset: 9600)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1767, file: !38, line: 986, baseType: !2644, offset: 10240)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, elements: !1853)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1470, file: !1145, line: 882, baseType: !1766, size: 64, offset: 9792)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1470, file: !1145, line: 884, baseType: !109, size: 32, offset: 9856)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1470, file: !1145, line: 885, baseType: !109, size: 32, offset: 9888)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1470, file: !1145, line: 886, baseType: !109, size: 32, offset: 9920)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1470, file: !1145, line: 888, baseType: !109, size: 32, offset: 9952)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1470, file: !1145, line: 890, baseType: !230, size: 64, offset: 9984)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1470, file: !1145, line: 893, baseType: !7, size: 32, offset: 10048)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1470, file: !1145, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1470, file: !1145, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1470, file: !1145, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1470, file: !1145, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1470, file: !1145, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1470, file: !1145, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1470, file: !1145, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1470, file: !1145, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1470, file: !1145, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1470, file: !1145, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1470, file: !1145, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1470, file: !1145, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1470, file: !1145, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1470, file: !1145, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1470, file: !1145, line: 969, baseType: !230, size: 64, offset: 10176)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1470, file: !1145, line: 971, baseType: !2668, size: 448, offset: 10240)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2669)
!2669 = !{!2670, !2671, !2676}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2668, file: !62, line: 26, baseType: !230, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2668, file: !62, line: 27, baseType: !2672, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!404, !2675}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, scope: !2668, file: !62, line: 28, baseType: !2677, size: 320, offset: 128)
!2677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2668, file: !62, line: 28, size: 320, elements: !2678)
!2678 = !{!2679, !2688, !2713}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2677, file: !62, line: 37, baseType: !2680, size: 320)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !62, line: 30, size: 320, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2680, file: !62, line: 31, baseType: !259, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2680, file: !62, line: 32, baseType: !260, size: 32, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2680, file: !62, line: 33, baseType: !260, size: 32, offset: 96)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2680, file: !62, line: 34, baseType: !260, size: 32, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2680, file: !62, line: 35, baseType: !222, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2680, file: !62, line: 36, baseType: !259, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2677, file: !62, line: 47, baseType: !2689, size: 192)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !62, line: 39, size: 192, elements: !2690)
!2690 = !{!2691, !2692, !2693, !2712}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2689, file: !62, line: 40, baseType: !1637, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2689, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, scope: !2689, file: !62, line: 42, baseType: !2694, size: 64, offset: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2689, file: !62, line: 42, size: 64, elements: !2695)
!2695 = !{!2696, !2704}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2694, file: !62, line: 43, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2699, line: 7, size: 128, elements: !2700)
!2699 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2700 = !{!2701, !2703}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2698, file: !2699, line: 8, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !402, line: 93, baseType: !605)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2698, file: !2699, line: 9, baseType: !605, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2694, file: !62, line: 44, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2707, line: 7, size: 64, elements: !2708)
!2707 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2708 = !{!2709, !2711}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2706, file: !2707, line: 8, baseType: !2710, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2707, line: 5, baseType: !699)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2706, file: !2707, line: 9, baseType: !699, size: 32, offset: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2689, file: !62, line: 46, baseType: !222, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2677, file: !62, line: 55, baseType: !2714, size: 256)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !62, line: 49, size: 256, elements: !2715)
!2715 = !{!2716, !2719, !2720, !2721, !2722}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2714, file: !62, line: 50, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2714, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2714, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2714, file: !62, line: 53, baseType: !230, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2714, file: !62, line: 54, baseType: !230, size: 64, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1470, file: !1145, line: 973, baseType: !2724, size: 32, offset: 10688)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !198, line: 27, baseType: !2725)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !402, line: 28, baseType: !109)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1470, file: !1145, line: 974, baseType: !2724, size: 32, offset: 10720)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1470, file: !1145, line: 978, baseType: !230, size: 64, offset: 10752)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1470, file: !1145, line: 987, baseType: !1469, size: 64, offset: 10816)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1470, file: !1145, line: 990, baseType: !1469, size: 64, offset: 10880)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1470, file: !1145, line: 995, baseType: !197, size: 128, offset: 10944)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1470, file: !1145, line: 996, baseType: !197, size: 128, offset: 11072)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1470, file: !1145, line: 997, baseType: !1469, size: 64, offset: 11200)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1470, file: !1145, line: 1005, baseType: !197, size: 128, offset: 11264)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1470, file: !1145, line: 1006, baseType: !197, size: 128, offset: 11392)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1470, file: !1145, line: 1009, baseType: !1834, size: 64, offset: 11520)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1470, file: !1145, line: 1010, baseType: !2737, size: 512, offset: 11584)
!2737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 512, elements: !235)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1470, file: !1145, line: 1011, baseType: !197, size: 128, offset: 12096)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1470, file: !1145, line: 1012, baseType: !197, size: 128, offset: 12224)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1470, file: !1145, line: 1014, baseType: !651, size: 64, offset: 12352)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1470, file: !1145, line: 1017, baseType: !832, size: 64, offset: 12416)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1470, file: !1145, line: 1020, baseType: !832, size: 64, offset: 12480)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1470, file: !1145, line: 1023, baseType: !171, size: 64, offset: 12544)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1470, file: !1145, line: 1025, baseType: !222, size: 64, offset: 12608)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1470, file: !1145, line: 1026, baseType: !222, size: 64, offset: 12672)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1470, file: !1145, line: 1031, baseType: !222, size: 64, offset: 12736)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1470, file: !1145, line: 1032, baseType: !2748, size: 192, offset: 12800)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1145, line: 324, size: 192, elements: !2749)
!2749 = !{!2750, !2751, !2752}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2748, file: !1145, line: 326, baseType: !222, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2748, file: !1145, line: 327, baseType: !222, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2748, file: !1145, line: 328, baseType: !661, size: 32, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1470, file: !1145, line: 1041, baseType: !230, size: 64, offset: 12992)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1470, file: !1145, line: 1042, baseType: !230, size: 64, offset: 13056)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1470, file: !1145, line: 1045, baseType: !222, size: 64, offset: 13120)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1470, file: !1145, line: 1048, baseType: !222, size: 64, offset: 13184)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1470, file: !1145, line: 1051, baseType: !230, size: 64, offset: 13248)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1470, file: !1145, line: 1052, baseType: !230, size: 64, offset: 13312)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1470, file: !1145, line: 1055, baseType: !2760, size: 640, offset: 13376)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2761, line: 132, size: 640, elements: !2762)
!2761 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2762 = !{!2763, !2769, !2770}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2760, file: !2761, line: 133, baseType: !2764, size: 576)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2765, size: 576, elements: !369)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2761, line: 117, size: 192, elements: !2766)
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2765, file: !2761, line: 118, baseType: !222, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2765, file: !2761, line: 119, baseType: !1646, size: 128, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2760, file: !2761, line: 134, baseType: !7, size: 32, offset: 576)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2760, file: !2761, line: 135, baseType: !7, size: 32, offset: 608)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1470, file: !1145, line: 1058, baseType: !2772, size: 448, offset: 14016)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2761, line: 144, size: 448, elements: !2773)
!2773 = !{!2774, !2775, !2776}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2772, file: !2761, line: 145, baseType: !923, size: 128, align: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2772, file: !2761, line: 146, baseType: !703, size: 256, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2772, file: !2761, line: 147, baseType: !7, size: 32, offset: 384)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1470, file: !1145, line: 1064, baseType: !1860, size: 64, offset: 14464)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1470, file: !1145, line: 1067, baseType: !1860, size: 64, offset: 14528)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1470, file: !1145, line: 1070, baseType: !1860, size: 64, offset: 14592)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1470, file: !1145, line: 1074, baseType: !1887, size: 64, offset: 14656)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1470, file: !1145, line: 1084, baseType: !2782, size: 128, offset: 14720)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 128, elements: !2783)
!2783 = !{!2784}
!2784 = !DISubrange(count: 16)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1470, file: !1145, line: 1086, baseType: !2786, size: 64, offset: 14848)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1145, line: 55, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1470, file: !1145, line: 1089, baseType: !2789, size: 64, offset: 14912)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2790, line: 12, size: 64, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2791 = !{!2792}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2789, file: !2790, line: 13, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2790, line: 8, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1470, file: !1145, line: 1090, baseType: !2796, size: 128, offset: 14976)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2797, line: 13, size: 128, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2796, file: !2797, line: 14, baseType: !197, size: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1470, file: !1145, line: 1097, baseType: !2801, size: 64, offset: 15104)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1145, line: 50, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1470, file: !1145, line: 1100, baseType: !2804, size: 64, offset: 15168)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1145, line: 1100, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1470, file: !1145, line: 1103, baseType: !2807, size: 64, offset: 15232)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1145, line: 53, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1470, file: !1145, line: 1107, baseType: !2810, size: 64, offset: 15296)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1145, line: 56, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1470, file: !1145, line: 1110, baseType: !2813, size: 64, offset: 15360)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2815, line: 93, size: 8768, elements: !2816)
!2815 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2816 = !{!2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2864, !2873, !2874, !2876, !2877, !2878, !2881, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2919, !2920, !2927, !2937, !2940, !2941, !2944, !2945, !2946, !2947, !2948, !2949}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2814, file: !2815, line: 94, baseType: !1483, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2814, file: !2815, line: 95, baseType: !322, size: 32, offset: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2814, file: !2815, line: 96, baseType: !109, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2814, file: !2815, line: 97, baseType: !109, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2814, file: !2815, line: 98, baseType: !197, size: 128, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2814, file: !2815, line: 100, baseType: !1456, size: 192, offset: 256)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2814, file: !2815, line: 103, baseType: !1469, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2814, file: !2815, line: 106, baseType: !2825, size: 192, offset: 512)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2035, line: 32, size: 192, elements: !2826)
!2826 = !{!2827, !2828}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2825, file: !2035, line: 33, baseType: !197, size: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2825, file: !2035, line: 34, baseType: !2829, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2830, line: 25, baseType: !2831)
!2830 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2830, line: 23, size: 64, elements: !2832)
!2832 = !{!2833}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2831, file: !2830, line: 24, baseType: !1717, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2814, file: !2815, line: 109, baseType: !1071, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2814, file: !2815, line: 112, baseType: !109, size: 32, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2814, file: !2815, line: 114, baseType: !109, size: 32, offset: 800)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2814, file: !2815, line: 115, baseType: !1469, size: 64, offset: 832)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2814, file: !2815, line: 118, baseType: !109, size: 32, offset: 896)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2814, file: !2815, line: 119, baseType: !7, size: 32, offset: 928)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2814, file: !2815, line: 121, baseType: !2841, size: 64, offset: 960)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2815, line: 80, size: 448, elements: !2843)
!2843 = !{!2844, !2845, !2851}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2842, file: !2815, line: 81, baseType: !322, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2842, file: !2815, line: 82, baseType: !2846, size: 128, offset: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2815, line: 75, size: 128, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2846, file: !2815, line: 76, baseType: !1469, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2846, file: !2815, line: 77, baseType: !2850, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2842, file: !2815, line: 83, baseType: !652, size: 256, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2814, file: !2815, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2814, file: !2815, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2814, file: !2815, line: 138, baseType: !7, size: 32, offset: 1056)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2814, file: !2815, line: 139, baseType: !197, size: 128, offset: 1088)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2814, file: !2815, line: 142, baseType: !1590, size: 512, offset: 1216)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2814, file: !2815, line: 143, baseType: !1598, size: 64, offset: 1728)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2814, file: !2815, line: 150, baseType: !2859, size: 256, offset: 1792)
!2859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2860, size: 256, elements: !822)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2815, line: 38, size: 128, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2860, file: !2815, line: 39, baseType: !222, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2860, file: !2815, line: 40, baseType: !222, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2814, file: !2815, line: 156, baseType: !2865, size: 192, offset: 2048)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2815, line: 66, size: 192, elements: !2866)
!2866 = !{!2867}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2865, file: !2815, line: 67, baseType: !2868, size: 192)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2815, line: 47, size: 192, elements: !2869)
!2869 = !{!2870, !2871, !2872}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2868, file: !2815, line: 48, baseType: !709, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2868, file: !2815, line: 49, baseType: !709, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2868, file: !2815, line: 50, baseType: !709, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2814, file: !2815, line: 160, baseType: !2760, size: 640, offset: 2240)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2814, file: !2815, line: 163, baseType: !2875, size: 256, offset: 2880)
!2875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1834, size: 256, elements: !235)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2814, file: !2815, line: 169, baseType: !1834, size: 64, offset: 3136)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2814, file: !2815, line: 172, baseType: !109, size: 32, offset: 3200)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2814, file: !2815, line: 174, baseType: !2879, size: 64, offset: 3264)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2815, line: 174, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2814, file: !2815, line: 185, baseType: !2882, size: 64, offset: 3328)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !489, line: 860, baseType: !2883)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 853, size: 64, elements: !2884)
!2884 = !{!2885, !2886}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2883, file: !489, line: 858, baseType: !488, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2883, file: !489, line: 859, baseType: !302, size: 32, offset: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2814, file: !2815, line: 186, baseType: !222, size: 64, offset: 3392)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2814, file: !2815, line: 186, baseType: !222, size: 64, offset: 3456)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2814, file: !2815, line: 186, baseType: !222, size: 64, offset: 3520)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2814, file: !2815, line: 186, baseType: !222, size: 64, offset: 3584)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2814, file: !2815, line: 187, baseType: !222, size: 64, offset: 3648)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2814, file: !2815, line: 188, baseType: !222, size: 64, offset: 3712)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2814, file: !2815, line: 189, baseType: !2748, size: 192, offset: 3776)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2814, file: !2815, line: 190, baseType: !230, size: 64, offset: 3968)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2814, file: !2815, line: 190, baseType: !230, size: 64, offset: 4032)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2814, file: !2815, line: 190, baseType: !230, size: 64, offset: 4096)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2814, file: !2815, line: 190, baseType: !230, size: 64, offset: 4160)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2814, file: !2815, line: 191, baseType: !230, size: 64, offset: 4224)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2814, file: !2815, line: 191, baseType: !230, size: 64, offset: 4288)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2814, file: !2815, line: 191, baseType: !230, size: 64, offset: 4352)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2814, file: !2815, line: 191, baseType: !230, size: 64, offset: 4416)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2814, file: !2815, line: 192, baseType: !230, size: 64, offset: 4480)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2814, file: !2815, line: 192, baseType: !230, size: 64, offset: 4544)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2814, file: !2815, line: 192, baseType: !230, size: 64, offset: 4608)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2814, file: !2815, line: 192, baseType: !230, size: 64, offset: 4672)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2814, file: !2815, line: 193, baseType: !230, size: 64, offset: 4736)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2814, file: !2815, line: 193, baseType: !230, size: 64, offset: 4800)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2814, file: !2815, line: 194, baseType: !2909, size: 448, offset: 4864)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2910, line: 12, size: 448, elements: !2911)
!2910 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2917, !2918}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2909, file: !2910, line: 15, baseType: !222, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2909, file: !2910, line: 17, baseType: !222, size: 64, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2909, file: !2910, line: 19, baseType: !222, size: 64, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2909, file: !2910, line: 21, baseType: !222, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2909, file: !2910, line: 29, baseType: !222, size: 64, offset: 256)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2909, file: !2910, line: 35, baseType: !222, size: 64, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2909, file: !2910, line: 44, baseType: !222, size: 64, offset: 384)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2814, file: !2815, line: 202, baseType: !226, size: 64, offset: 5312)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2814, file: !2815, line: 213, baseType: !2921, size: 2048, offset: 5376)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2922, size: 2048, elements: !2783)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2923, line: 43, size: 128, elements: !2924)
!2923 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2922, file: !2923, line: 44, baseType: !417, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2922, file: !2923, line: 45, baseType: !417, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2814, file: !2815, line: 216, baseType: !2928, size: 448, offset: 7424)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2815, line: 30, size: 448, elements: !2929)
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2928, file: !2815, line: 31, baseType: !109, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2928, file: !2815, line: 32, baseType: !404, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2928, file: !2815, line: 33, baseType: !230, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2928, file: !2815, line: 34, baseType: !222, size: 64, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2928, file: !2815, line: 34, baseType: !222, size: 64, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2928, file: !2815, line: 35, baseType: !230, size: 64, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2928, file: !2815, line: 35, baseType: !230, size: 64, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2814, file: !2815, line: 219, baseType: !2938, size: 64, offset: 7872)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2815, line: 219, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2814, file: !2815, line: 222, baseType: !7, size: 32, offset: 7936)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2814, file: !2815, line: 223, baseType: !2942, size: 64, offset: 8000)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2815, line: 223, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2814, file: !2815, line: 230, baseType: !783, size: 8, offset: 8064)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2814, file: !2815, line: 231, baseType: !841, size: 16, offset: 8080)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2814, file: !2815, line: 232, baseType: !841, size: 16, offset: 8096)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2814, file: !2815, line: 234, baseType: !1766, size: 64, offset: 8128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2814, file: !2815, line: 237, baseType: !703, size: 256, offset: 8192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2814, file: !2815, line: 243, baseType: !1363, size: 320, offset: 8448)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1470, file: !1145, line: 1111, baseType: !2951, size: 64, offset: 15424)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2815, line: 20, size: 16640, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2952, file: !2815, line: 21, baseType: !302, size: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2952, file: !2815, line: 22, baseType: !1483, size: 32, offset: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2952, file: !2815, line: 23, baseType: !1456, size: 192, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2952, file: !2815, line: 24, baseType: !2958, size: 16384, offset: 256)
!2958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2959, size: 16384, elements: !373)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2035, line: 51, size: 256, elements: !2960)
!2960 = !{!2961}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2959, file: !2035, line: 52, baseType: !2962, size: 256)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2035, line: 37, size: 256, elements: !2963)
!2963 = !{!2964, !2971, !2972, !2976}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2962, file: !2035, line: 39, baseType: !2965, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2966, line: 83, baseType: !2967)
!2966 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2966, line: 82, baseType: !2969)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{null, !109}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2962, file: !2035, line: 40, baseType: !230, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2962, file: !2035, line: 46, baseType: !2973, size: 64, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2966, line: 86, baseType: !2974)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2966, line: 85, baseType: !1066)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2962, file: !2035, line: 48, baseType: !2829, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1470, file: !1145, line: 1112, baseType: !2829, size: 64, offset: 15488)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1470, file: !1145, line: 1113, baseType: !2829, size: 64, offset: 15552)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1470, file: !1145, line: 1115, baseType: !2829, size: 64, offset: 15616)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1470, file: !1145, line: 1116, baseType: !2825, size: 192, offset: 15680)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1470, file: !1145, line: 1117, baseType: !230, size: 64, offset: 15872)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1470, file: !1145, line: 1118, baseType: !415, size: 64, offset: 15936)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1470, file: !1145, line: 1119, baseType: !7, size: 32, offset: 16000)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1470, file: !1145, line: 1121, baseType: !922, size: 64, offset: 16064)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1470, file: !1145, line: 1125, baseType: !2986, size: 64, offset: 16128)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1145, line: 43, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1470, file: !1145, line: 1127, baseType: !453, size: 32, offset: 16192)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1470, file: !1145, line: 1128, baseType: !7, size: 32, offset: 16224)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1470, file: !1145, line: 1130, baseType: !2991, size: 128, offset: 16256)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2992, line: 37, size: 128, elements: !2993)
!2992 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2993 = !{!2994, !2995, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2991, file: !2992, line: 38, baseType: !109, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2991, file: !2992, line: 39, baseType: !322, size: 32, offset: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2991, file: !2992, line: 40, baseType: !2997, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2992, line: 24, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1470, file: !1145, line: 1131, baseType: !3000, size: 256, offset: 16384)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3001, line: 12, size: 256, elements: !3002)
!3001 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3002 = !{!3003, !3004, !3005, !3006}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3000, file: !3001, line: 13, baseType: !368, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3000, file: !3001, line: 14, baseType: !230, size: 64, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3000, file: !3001, line: 15, baseType: !230, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3000, file: !3001, line: 16, baseType: !783, size: 8, offset: 192)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1470, file: !1145, line: 1134, baseType: !222, size: 64, offset: 16640)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1470, file: !1145, line: 1135, baseType: !222, size: 64, offset: 16704)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1470, file: !1145, line: 1138, baseType: !302, size: 32, offset: 16768)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1470, file: !1145, line: 1141, baseType: !661, size: 32, offset: 16800)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1470, file: !1145, line: 1143, baseType: !3012, size: 64, offset: 16832)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1145, line: 735, size: 64, elements: !3013)
!3013 = !{!3014}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3012, file: !1145, line: 736, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1470, file: !1145, line: 1147, baseType: !1649, size: 128, offset: 16896)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1470, file: !1145, line: 1149, baseType: !1469, size: 64, offset: 17024)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1470, file: !1145, line: 1151, baseType: !3019, size: 64, offset: 17088)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1145, line: 1151, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1470, file: !1145, line: 1188, baseType: !171, size: 64, offset: 17152)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1470, file: !1145, line: 1191, baseType: !3023, size: 64, offset: 17216)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1145, line: 44, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1470, file: !1145, line: 1194, baseType: !3026, size: 64, offset: 17280)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1145, line: 45, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1470, file: !1145, line: 1197, baseType: !3029, size: 64, offset: 17344)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1145, line: 61, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1470, file: !1145, line: 1199, baseType: !3032, size: 64, offset: 17408)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3034, line: 99, size: 128, elements: !3035)
!3034 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3035 = !{!3036, !3037, !3038}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3033, file: !3034, line: 100, baseType: !707, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3033, file: !3034, line: 101, baseType: !322, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3033, file: !3034, line: 103, baseType: !281, size: 16, offset: 96)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1470, file: !1145, line: 1202, baseType: !3040, size: 64, offset: 17472)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1145, line: 48, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1470, file: !1145, line: 1205, baseType: !230, size: 64, offset: 17536)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1470, file: !1145, line: 1206, baseType: !3044, size: 64, offset: 17600)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2035, line: 14, baseType: !3046)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2035, line: 12, size: 384, elements: !3047)
!3047 = !{!3048}
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !3046, file: !2035, line: 13, baseType: !3049, size: 384)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3046, file: !2035, line: 13, size: 384, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3049, file: !2035, line: 13, baseType: !109, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3049, file: !2035, line: 13, baseType: !109, size: 32, offset: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3049, file: !2035, line: 13, baseType: !109, size: 32, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3049, file: !2035, line: 13, baseType: !3055, size: 256, offset: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3056, line: 37, size: 256, elements: !3057)
!3056 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3057 = !{!3058, !3063, !3076, !3082, !3091, !3118, !3123}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3055, file: !3056, line: 42, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3055, file: !3056, line: 39, size: 64, elements: !3060)
!3060 = !{!3061, !3062}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3059, file: !3056, line: 40, baseType: !2725, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3059, file: !3056, line: 41, baseType: !459, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3055, file: !3056, line: 50, baseType: !3064, size: 192)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3055, file: !3056, line: 45, size: 192, elements: !3065)
!3065 = !{!3066, !3068, !3069, !3075}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3064, file: !3056, line: 46, baseType: !3067, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !402, line: 95, baseType: !109)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3064, file: !3056, line: 47, baseType: !109, size: 32, offset: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3064, file: !3056, line: 48, baseType: !3070, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3056, line: 11, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3056, line: 8, size: 64, elements: !3072)
!3072 = !{!3073, !3074}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3071, file: !3056, line: 9, baseType: !109, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3071, file: !3056, line: 10, baseType: !171, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3064, file: !3056, line: 49, baseType: !109, size: 32, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3055, file: !3056, line: 57, baseType: !3077, size: 128)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3055, file: !3056, line: 53, size: 128, elements: !3078)
!3078 = !{!3079, !3080, !3081}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3077, file: !3056, line: 54, baseType: !2725, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3077, file: !3056, line: 55, baseType: !459, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3077, file: !3056, line: 56, baseType: !3070, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3055, file: !3056, line: 66, baseType: !3083, size: 256)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3055, file: !3056, line: 60, size: 256, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3090}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3083, file: !3056, line: 61, baseType: !2725, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3083, file: !3056, line: 62, baseType: !459, size: 32, offset: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3083, file: !3056, line: 63, baseType: !109, size: 32, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3083, file: !3056, line: 64, baseType: !3089, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !402, line: 94, baseType: !403)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3083, file: !3056, line: 65, baseType: !3089, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3055, file: !3056, line: 105, baseType: !3092, size: 256)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3055, file: !3056, line: 69, size: 256, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3092, file: !3056, line: 70, baseType: !171, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3092, file: !3056, line: 79, baseType: !3096, size: 192, offset: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3092, file: !3056, line: 79, size: 192, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3107, !3112}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3096, file: !3056, line: 81, baseType: !109, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3096, file: !3056, line: 86, baseType: !841, size: 16)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3096, file: !3056, line: 92, baseType: !3101, size: 192)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3096, file: !3056, line: 88, size: 192, elements: !3102)
!3102 = !{!3103, !3105, !3106}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3101, file: !3056, line: 89, baseType: !3104, size: 64)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 64, elements: !1633)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3101, file: !3056, line: 90, baseType: !171, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3101, file: !3056, line: 91, baseType: !171, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3096, file: !3056, line: 97, baseType: !3108, size: 96)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3096, file: !3056, line: 94, size: 96, elements: !3109)
!3109 = !{!3110, !3111}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3108, file: !3056, line: 95, baseType: !3104, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3108, file: !3056, line: 96, baseType: !261, size: 32, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3096, file: !3056, line: 103, baseType: !3113, size: 128)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3096, file: !3056, line: 99, size: 128, elements: !3114)
!3114 = !{!3115, !3116, !3117}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3113, file: !3056, line: 100, baseType: !230, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3113, file: !3056, line: 101, baseType: !261, size: 32, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3113, file: !3056, line: 102, baseType: !261, size: 32, offset: 96)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3055, file: !3056, line: 111, baseType: !3119, size: 128)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3055, file: !3056, line: 108, size: 128, elements: !3120)
!3120 = !{!3121, !3122}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3119, file: !3056, line: 109, baseType: !404, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3119, file: !3056, line: 110, baseType: !109, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3055, file: !3056, line: 118, baseType: !3124, size: 128)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3055, file: !3056, line: 114, size: 128, elements: !3125)
!3125 = !{!3126, !3127, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3124, file: !3056, line: 115, baseType: !171, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3124, file: !3056, line: 116, baseType: !109, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3124, file: !3056, line: 117, baseType: !7, size: 32, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1470, file: !1145, line: 1208, baseType: !2909, size: 448, offset: 17664)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1470, file: !1145, line: 1215, baseType: !222, size: 64, offset: 18112)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1470, file: !1145, line: 1217, baseType: !222, size: 64, offset: 18176)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1470, file: !1145, line: 1219, baseType: !222, size: 64, offset: 18240)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1470, file: !1145, line: 1223, baseType: !3134, size: 64, offset: 18304)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3135, line: 99, baseType: !3136)
!3135 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3135, line: 99, size: 64, elements: !3137)
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3136, file: !3135, line: 99, baseType: !1717, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1470, file: !1145, line: 1225, baseType: !488, size: 32, offset: 18368)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1470, file: !1145, line: 1226, baseType: !109, size: 32, offset: 18400)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1470, file: !1145, line: 1227, baseType: !109, size: 32, offset: 18432)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1470, file: !1145, line: 1231, baseType: !3143, size: 64, offset: 18496)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1145, line: 1231, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1470, file: !1145, line: 1233, baseType: !197, size: 128, offset: 18560)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1470, file: !1145, line: 1240, baseType: !3147, size: 64, offset: 18688)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1145, line: 62, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1470, file: !1145, line: 1242, baseType: !3150, size: 64, offset: 18752)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1145, line: 1242, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1470, file: !1145, line: 1244, baseType: !197, size: 128, offset: 18816)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1470, file: !1145, line: 1245, baseType: !3154, size: 64, offset: 18944)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1145, line: 51, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1470, file: !1145, line: 1246, baseType: !703, size: 256, offset: 19008)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1470, file: !1145, line: 1247, baseType: !7, size: 32, offset: 19264)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1470, file: !1145, line: 1250, baseType: !3159, size: 64, offset: 19328)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1145, line: 57, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1470, file: !1145, line: 1251, baseType: !703, size: 256, offset: 19392)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1470, file: !1145, line: 1252, baseType: !197, size: 128, offset: 19648)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1470, file: !1145, line: 1259, baseType: !2415, size: 64, offset: 19776)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1470, file: !1145, line: 1260, baseType: !841, size: 16, offset: 19840)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1470, file: !1145, line: 1261, baseType: !841, size: 16, offset: 19856)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1470, file: !1145, line: 1314, baseType: !3167, size: 64, offset: 19904)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3169, line: 62, size: 256, align: 256, elements: !3170)
!3169 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176, !3177}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3168, file: !3169, line: 75, baseType: !261, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3168, file: !3169, line: 90, baseType: !261, size: 32, offset: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3168, file: !3169, line: 112, baseType: !224, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3168, file: !3169, line: 132, baseType: !261, size: 32, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3168, file: !3169, line: 140, baseType: !261, size: 32, offset: 160)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3168, file: !3169, line: 149, baseType: !261, size: 32, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3168, file: !3169, line: 154, baseType: !3178, offset: 224)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, elements: !1853)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1470, file: !1145, line: 1315, baseType: !260, size: 32, offset: 19968)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1470, file: !1145, line: 1316, baseType: !260, size: 32, offset: 20000)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1470, file: !1145, line: 1321, baseType: !230, size: 64, offset: 20032)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1470, file: !1145, line: 1325, baseType: !109, size: 32, offset: 20096)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1470, file: !1145, line: 1326, baseType: !109, size: 32, offset: 20128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1470, file: !1145, line: 1327, baseType: !109, size: 32, offset: 20160)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1470, file: !1145, line: 1328, baseType: !109, size: 32, offset: 20192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1470, file: !1145, line: 1329, baseType: !923, size: 128, align: 64, offset: 20224)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1470, file: !1145, line: 1332, baseType: !3188, size: 128, offset: 20352)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3189, line: 51, size: 128, elements: !3190)
!3189 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3190 = !{!3191, !3196, !3197}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3188, file: !3189, line: 60, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3193, line: 7, size: 64, elements: !3194)
!3193 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3192, file: !3193, line: 12, baseType: !1714, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3188, file: !3189, line: 63, baseType: !783, size: 8, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3188, file: !3189, line: 70, baseType: !783, size: 8, offset: 72)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1470, file: !1145, line: 1335, baseType: !2467, size: 64, offset: 20480)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1470, file: !1145, line: 1337, baseType: !3200, size: 128, offset: 20544)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3189, line: 39, size: 128, elements: !3201)
!3201 = !{!3202, !3203, !3204}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3200, file: !3189, line: 40, baseType: !2254, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3200, file: !3189, line: 42, baseType: !261, size: 32, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3200, file: !3189, line: 43, baseType: !261, size: 32, offset: 96)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1470, file: !1145, line: 1340, baseType: !3206, size: 64, offset: 20672)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1145, line: 69, flags: DIFlagFwdDecl)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1470, file: !1145, line: 1351, baseType: !109, size: 32, offset: 20736)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1470, file: !1145, line: 1352, baseType: !109, size: 32, offset: 20768)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1470, file: !1145, line: 1354, baseType: !230, size: 64, offset: 20800)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1470, file: !1145, line: 1364, baseType: !222, size: 64, offset: 20864)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1470, file: !1145, line: 1365, baseType: !222, size: 64, offset: 20928)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1470, file: !1145, line: 1412, baseType: !230, size: 64, offset: 20992)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1470, file: !1145, line: 1453, baseType: !3215, size: 64, offset: 21056)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1145, line: 1453, flags: DIFlagFwdDecl)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1470, file: !1145, line: 1457, baseType: !3218, size: 64, offset: 21120)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3220)
!3220 = !{!3221, !3222, !3241, !3244, !3245, !3278, !3288}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3219, file: !68, line: 62, baseType: !67, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, scope: !3219, file: !68, line: 64, baseType: !3223, size: 192, offset: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3219, file: !68, line: 64, size: 192, elements: !3224)
!3224 = !{!3225, !3236}
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3223, file: !68, line: 65, baseType: !3226, size: 192)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3223, file: !68, line: 65, size: 192, elements: !3227)
!3227 = !{!3228, !3235}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3226, file: !68, line: 66, baseType: !3229, size: 128)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3230, line: 50, size: 128, elements: !3231)
!3230 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3229, file: !3230, line: 52, baseType: !230, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3229, file: !3230, line: 54, baseType: !7, size: 32, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3229, file: !3230, line: 55, baseType: !7, size: 32, offset: 96)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3226, file: !68, line: 67, baseType: !230, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, scope: !3223, file: !68, line: 70, baseType: !3237, size: 192)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3223, file: !68, line: 70, size: 192, elements: !3238)
!3238 = !{!3239, !3240}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3237, file: !68, line: 71, baseType: !923, size: 128, align: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3237, file: !68, line: 72, baseType: !230, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3219, file: !68, line: 76, baseType: !3242, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3219, file: !68, line: 77, baseType: !230, size: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3219, file: !68, line: 79, baseType: !3246, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3230, line: 25, size: 256, elements: !3248)
!3248 = !{!3249, !3255, !3259}
!3249 = !DIDerivedType(tag: DW_TAG_member, scope: !3247, file: !3230, line: 26, baseType: !3250, size: 128)
!3250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3247, file: !3230, line: 26, size: 128, elements: !3251)
!3251 = !{!3252, !3254}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3250, file: !3230, line: 27, baseType: !3253, size: 128)
!3253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 128, elements: !2783)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3250, file: !3230, line: 28, baseType: !3253, size: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3247, file: !3230, line: 31, baseType: !3256, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3258)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3230, line: 23, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, scope: !3247, file: !3230, line: 33, baseType: !3260, size: 64, offset: 192)
!3260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3247, file: !3230, line: 33, size: 64, elements: !3261)
!3261 = !{!3262, !3268, !3273}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3260, file: !3230, line: 38, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3260, file: !3230, line: 34, size: 64, elements: !3264)
!3264 = !{!3265, !3266, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3263, file: !3230, line: 35, baseType: !699, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3263, file: !3230, line: 36, baseType: !330, size: 8, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3263, file: !3230, line: 37, baseType: !330, size: 8, offset: 40)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3260, file: !3230, line: 42, baseType: !3269, size: 16)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3260, file: !3230, line: 39, size: 16, elements: !3270)
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3269, file: !3230, line: 40, baseType: !330, size: 8)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3269, file: !3230, line: 41, baseType: !330, size: 8, offset: 8)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3260, file: !3230, line: 46, baseType: !3274, size: 16)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3260, file: !3230, line: 43, size: 16, elements: !3275)
!3275 = !{!3276, !3277}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3274, file: !3230, line: 44, baseType: !330, size: 8)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3274, file: !3230, line: 45, baseType: !330, size: 8, offset: 8)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3219, file: !68, line: 81, baseType: !3279, size: 64, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3280, file: !68, line: 86, baseType: !3242, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3280, file: !68, line: 87, baseType: !230, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3280, file: !68, line: 88, baseType: !230, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3280, file: !68, line: 89, baseType: !230, size: 64, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3280, file: !68, line: 90, baseType: !783, size: 8, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3280, file: !68, line: 92, baseType: !3279, size: 64, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3219, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1470, file: !1145, line: 1463, baseType: !3290, offset: 21184)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1145, line: 739, elements: !990)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1470, file: !1145, line: 1470, baseType: !923, size: 128, align: 64, offset: 21184)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1470, file: !1145, line: 1471, baseType: !1483, size: 32, offset: 21312)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1470, file: !1145, line: 1472, baseType: !109, size: 32, offset: 21344)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1470, file: !1145, line: 1474, baseType: !1469, size: 64, offset: 21376)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1470, file: !1145, line: 1475, baseType: !943, size: 320, offset: 21440)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1470, file: !1145, line: 1478, baseType: !3297, size: 64, offset: 21760)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2107, line: 49, size: 512, elements: !3299)
!3299 = !{!3300, !3301, !3302, !3303, !3304, !3306, !3307, !3308, !3309}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3298, file: !2107, line: 50, baseType: !3297, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3298, file: !2107, line: 51, baseType: !171, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3298, file: !2107, line: 52, baseType: !230, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3298, file: !2107, line: 53, baseType: !230, size: 64, offset: 192)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3298, file: !2107, line: 54, baseType: !3305, size: 64, offset: 256)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3298, file: !2107, line: 56, baseType: !7, size: 32, offset: 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3298, file: !2107, line: 58, baseType: !7, size: 32, offset: 352)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3298, file: !2107, line: 59, baseType: !221, size: 64, offset: 384)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3298, file: !2107, line: 60, baseType: !2606, size: 64, offset: 448)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1470, file: !1145, line: 1482, baseType: !1483, size: 32, offset: 21824)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1470, file: !1145, line: 1489, baseType: !171, size: 64, offset: 21888)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1470, file: !1145, line: 1504, baseType: !171, size: 64, offset: 21952)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1470, file: !1145, line: 1505, baseType: !224, size: 64, offset: 22016)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1470, file: !1145, line: 1506, baseType: !222, size: 64, offset: 22080)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1470, file: !1145, line: 1507, baseType: !224, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1470, file: !1145, line: 1508, baseType: !224, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1470, file: !1145, line: 1509, baseType: !224, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1470, file: !1145, line: 1510, baseType: !923, size: 128, align: 64, offset: 22208)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1470, file: !1145, line: 1511, baseType: !109, size: 32, offset: 22336)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1470, file: !1145, line: 1515, baseType: !3321, size: 64, offset: 22400)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1497, line: 56, size: 64, elements: !3322)
!3322 = !{!3323}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3321, file: !1497, line: 57, baseType: !1500, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1470, file: !1145, line: 1518, baseType: !3321, size: 64, offset: 22464)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1470, file: !1145, line: 1528, baseType: !923, size: 128, align: 64, offset: 22528)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1470, file: !1145, line: 1552, baseType: !3327, size: 35328, offset: 23040)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3328, line: 430, size: 35328, elements: !3329)
!3328 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3329 = !{!3330, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3359, !3360, !3361, !3362, !3363, !3364, !3367, !3368, !3369, !3370}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3327, file: !3328, line: 432, baseType: !3331, size: 192)
!3331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3332, size: 192, elements: !369)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3333, line: 16, size: 64, elements: !3334)
!3333 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3332, file: !3333, line: 17, baseType: !337, size: 16)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3332, file: !3333, line: 18, baseType: !337, size: 16, offset: 16)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3332, file: !3333, line: 19, baseType: !337, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3332, file: !3333, line: 19, baseType: !337, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3332, file: !3333, line: 19, baseType: !337, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3332, file: !3333, line: 19, baseType: !337, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3332, file: !3333, line: 19, baseType: !337, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3332, file: !3333, line: 20, baseType: !337, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3332, file: !3333, line: 20, baseType: !337, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3332, file: !3333, line: 20, baseType: !337, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3332, file: !3333, line: 20, baseType: !337, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3332, file: !3333, line: 20, baseType: !337, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3332, file: !3333, line: 20, baseType: !337, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3327, file: !3328, line: 436, baseType: !230, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3327, file: !3328, line: 440, baseType: !281, size: 16, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3327, file: !3328, line: 441, baseType: !281, size: 16, offset: 272)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3327, file: !3328, line: 442, baseType: !281, size: 16, offset: 288)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3327, file: !3328, line: 443, baseType: !281, size: 16, offset: 304)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3327, file: !3328, line: 447, baseType: !230, size: 64, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3327, file: !3328, line: 448, baseType: !230, size: 64, offset: 384)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3327, file: !3328, line: 459, baseType: !3356, size: 256, offset: 448)
!3356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3357, size: 256, elements: !235)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3328, line: 428, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3327, file: !3328, line: 461, baseType: !230, size: 64, offset: 704)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3327, file: !3328, line: 463, baseType: !230, size: 64, offset: 768)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3327, file: !3328, line: 465, baseType: !230, size: 64, offset: 832)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3327, file: !3328, line: 466, baseType: !230, size: 64, offset: 896)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3327, file: !3328, line: 467, baseType: !230, size: 64, offset: 960)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3327, file: !3328, line: 473, baseType: !3365, size: 64, offset: 1024)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3328, line: 10, flags: DIFlagFwdDecl)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3327, file: !3328, line: 480, baseType: !230, size: 64, offset: 1088)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3327, file: !3328, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3327, file: !3328, line: 491, baseType: !260, size: 32, offset: 1184)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3327, file: !3328, line: 501, baseType: !3371, size: 33792, offset: 1536)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3372, line: 448, size: 33792, elements: !3373)
!3372 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3373 = !{!3374, !3375, !3376, !3538, !3539, !3545, !3546}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3371, file: !3372, line: 461, baseType: !7, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3371, file: !3372, line: 468, baseType: !230, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3371, file: !3372, line: 476, baseType: !3377, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3372, line: 356, size: 33280, align: 512, elements: !3379)
!3379 = !{!3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3378, file: !3372, line: 358, baseType: !7, size: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3378, file: !3372, line: 361, baseType: !7, size: 32, offset: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3378, file: !3372, line: 364, baseType: !222, size: 64, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3378, file: !3372, line: 367, baseType: !222, size: 64, offset: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3378, file: !3372, line: 370, baseType: !222, size: 64, offset: 192)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3378, file: !3372, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3378, file: !3372, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3378, file: !3372, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3378, file: !3372, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3378, file: !3372, line: 397, baseType: !3390, size: 32768, offset: 512)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3372, line: 348, size: 32768, elements: !3391)
!3391 = !{!3392, !3407, !3444, !3521, !3534}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3390, file: !3372, line: 349, baseType: !3393, size: 896)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3372, line: 12, size: 896, elements: !3394)
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3406}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3393, file: !3372, line: 13, baseType: !260, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3393, file: !3372, line: 14, baseType: !260, size: 32, offset: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3393, file: !3372, line: 15, baseType: !260, size: 32, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3393, file: !3372, line: 16, baseType: !260, size: 32, offset: 96)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3393, file: !3372, line: 17, baseType: !260, size: 32, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3393, file: !3372, line: 18, baseType: !260, size: 32, offset: 160)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3393, file: !3372, line: 19, baseType: !260, size: 32, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3393, file: !3372, line: 22, baseType: !3403, size: 640, offset: 224)
!3403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 640, elements: !3404)
!3404 = !{!3405}
!3405 = !DISubrange(count: 20)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3393, file: !3372, line: 25, baseType: !260, size: 32, offset: 864)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3390, file: !3372, line: 350, baseType: !3408, size: 4096, align: 128)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3372, line: 34, size: 4096, align: 128, elements: !3409)
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3429, !3430, !3431, !3433, !3435, !3439}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3408, file: !3372, line: 35, baseType: !337, size: 16)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3408, file: !3372, line: 36, baseType: !337, size: 16, offset: 16)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3408, file: !3372, line: 37, baseType: !337, size: 16, offset: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3408, file: !3372, line: 38, baseType: !337, size: 16, offset: 48)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3408, file: !3372, line: 39, baseType: !3415, size: 128, offset: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3408, file: !3372, line: 39, size: 128, elements: !3416)
!3416 = !{!3417, !3422}
!3417 = !DIDerivedType(tag: DW_TAG_member, scope: !3415, file: !3372, line: 40, baseType: !3418, size: 128)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3415, file: !3372, line: 40, size: 128, elements: !3419)
!3419 = !{!3420, !3421}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3418, file: !3372, line: 41, baseType: !222, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3418, file: !3372, line: 42, baseType: !222, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !3415, file: !3372, line: 44, baseType: !3423, size: 128)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3415, file: !3372, line: 44, size: 128, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3428}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3423, file: !3372, line: 45, baseType: !260, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3423, file: !3372, line: 46, baseType: !260, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3423, file: !3372, line: 47, baseType: !260, size: 32, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3423, file: !3372, line: 48, baseType: !260, size: 32, offset: 96)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3408, file: !3372, line: 51, baseType: !260, size: 32, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3408, file: !3372, line: 52, baseType: !260, size: 32, offset: 224)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3408, file: !3372, line: 55, baseType: !3432, size: 1024, offset: 256)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1024, elements: !524)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3408, file: !3372, line: 58, baseType: !3434, size: 2048, offset: 1280)
!3434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2048, elements: !373)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3408, file: !3372, line: 60, baseType: !3436, size: 384, offset: 3328)
!3436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 384, elements: !3437)
!3437 = !{!3438}
!3438 = !DISubrange(count: 12)
!3439 = !DIDerivedType(tag: DW_TAG_member, scope: !3408, file: !3372, line: 62, baseType: !3440, size: 384, offset: 3712)
!3440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3408, file: !3372, line: 62, size: 384, elements: !3441)
!3441 = !{!3442, !3443}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3440, file: !3372, line: 63, baseType: !3436, size: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3440, file: !3372, line: 64, baseType: !3436, size: 384)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3390, file: !3372, line: 351, baseType: !3445, size: 1088)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3372, line: 79, size: 1088, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3520}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3445, file: !3372, line: 80, baseType: !260, size: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3445, file: !3372, line: 81, baseType: !260, size: 32, offset: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3445, file: !3372, line: 82, baseType: !260, size: 32, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3445, file: !3372, line: 83, baseType: !260, size: 32, offset: 96)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3445, file: !3372, line: 84, baseType: !260, size: 32, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3445, file: !3372, line: 85, baseType: !260, size: 32, offset: 160)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3445, file: !3372, line: 86, baseType: !260, size: 32, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3445, file: !3372, line: 88, baseType: !3403, size: 640, offset: 224)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3445, file: !3372, line: 89, baseType: !330, size: 8, offset: 864)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3445, file: !3372, line: 90, baseType: !330, size: 8, offset: 872)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3445, file: !3372, line: 91, baseType: !330, size: 8, offset: 880)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3445, file: !3372, line: 92, baseType: !330, size: 8, offset: 888)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3445, file: !3372, line: 93, baseType: !330, size: 8, offset: 896)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3445, file: !3372, line: 94, baseType: !330, size: 8, offset: 904)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3445, file: !3372, line: 95, baseType: !3462, size: 64, offset: 960)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3464, line: 11, size: 128, elements: !3465)
!3464 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3465 = !{!3466, !3467}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3463, file: !3464, line: 12, baseType: !404, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3463, file: !3464, line: 13, baseType: !3468, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3470, line: 103, size: 1344, elements: !3471)
!3470 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3500, !3501, !3502}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3469, file: !3470, line: 109, baseType: !230, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3469, file: !3470, line: 110, baseType: !230, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3469, file: !3470, line: 111, baseType: !230, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3469, file: !3470, line: 112, baseType: !230, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3469, file: !3470, line: 113, baseType: !230, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3469, file: !3470, line: 114, baseType: !230, size: 64, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3469, file: !3470, line: 117, baseType: !230, size: 64, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3469, file: !3470, line: 118, baseType: !230, size: 64, offset: 448)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3469, file: !3470, line: 119, baseType: !230, size: 64, offset: 512)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3469, file: !3470, line: 120, baseType: !230, size: 64, offset: 576)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3469, file: !3470, line: 121, baseType: !230, size: 64, offset: 640)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3469, file: !3470, line: 122, baseType: !230, size: 64, offset: 704)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3469, file: !3470, line: 123, baseType: !230, size: 64, offset: 768)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3469, file: !3470, line: 124, baseType: !230, size: 64, offset: 832)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3469, file: !3470, line: 125, baseType: !230, size: 64, offset: 896)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3469, file: !3470, line: 139, baseType: !230, size: 64, offset: 960)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3469, file: !3470, line: 142, baseType: !230, size: 64, offset: 1024)
!3489 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !3470, line: 144, baseType: !3490, size: 64, offset: 1088)
!3490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !3470, line: 144, size: 64, elements: !3491)
!3491 = !{!3492, !3493, !3494}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3490, file: !3470, line: 146, baseType: !337, size: 16)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3490, file: !3470, line: 148, baseType: !222, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3490, file: !3470, line: 150, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3470, line: 59, size: 64, elements: !3496)
!3496 = !{!3497, !3498, !3499}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3495, file: !3470, line: 61, baseType: !222, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3495, file: !3470, line: 63, baseType: !222, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3495, file: !3470, line: 65, baseType: !222, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3469, file: !3470, line: 153, baseType: !230, size: 64, offset: 1152)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3469, file: !3470, line: 154, baseType: !230, size: 64, offset: 1216)
!3502 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !3470, line: 156, baseType: !3503, size: 64, offset: 1280)
!3503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !3470, line: 156, size: 64, elements: !3504)
!3504 = !{!3505, !3506, !3507}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3503, file: !3470, line: 158, baseType: !337, size: 16)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3503, file: !3470, line: 160, baseType: !222, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3503, file: !3470, line: 162, baseType: !3508, size: 64)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3470, line: 69, size: 64, elements: !3509)
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3508, file: !3470, line: 71, baseType: !222, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3508, file: !3470, line: 73, baseType: !222, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3508, file: !3470, line: 75, baseType: !222, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3508, file: !3470, line: 77, baseType: !222, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3508, file: !3470, line: 80, baseType: !222, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3508, file: !3470, line: 83, baseType: !222, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3508, file: !3470, line: 86, baseType: !222, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3508, file: !3470, line: 88, baseType: !222, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3508, file: !3470, line: 93, baseType: !222, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3508, file: !3470, line: 100, baseType: !222, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3445, file: !3372, line: 96, baseType: !260, size: 32, offset: 1024)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3390, file: !3372, line: 352, baseType: !3522, size: 4608, align: 512)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3372, line: 333, size: 4608, align: 512, elements: !3523)
!3523 = !{!3524, !3525, !3532}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3522, file: !3372, line: 334, baseType: !3408, size: 4096, align: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3522, file: !3372, line: 335, baseType: !3526, size: 512, offset: 4096)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3372, line: 312, size: 512, elements: !3527)
!3527 = !{!3528, !3529, !3530}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3526, file: !3372, line: 313, baseType: !222, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3526, file: !3372, line: 314, baseType: !222, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3526, file: !3372, line: 315, baseType: !3531, size: 384, offset: 128)
!3531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 384, elements: !1936)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3522, file: !3372, line: 336, baseType: !3533, offset: 4608)
!3533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, elements: !1853)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3390, file: !3372, line: 353, baseType: !3535, size: 32768)
!3535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 32768, elements: !3536)
!3536 = !{!3537}
!3537 = !DISubrange(count: 4096)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3371, file: !3372, line: 484, baseType: !3377, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3371, file: !3372, line: 491, baseType: !3540, size: 128, offset: 256)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3372, line: 404, size: 128, elements: !3541)
!3541 = !{!3542, !3543, !3544}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3540, file: !3372, line: 424, baseType: !222, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3540, file: !3372, line: 432, baseType: !7, size: 32, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3540, file: !3372, line: 440, baseType: !7, size: 32, offset: 96)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3371, file: !3372, line: 498, baseType: !3540, size: 128, offset: 384)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3371, file: !3372, line: 508, baseType: !3378, size: 33280, align: 512, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1446, file: !1447, line: 16, baseType: !1456, size: 192, offset: 512)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1446, file: !1447, line: 17, baseType: !322, size: 32, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !594, file: !14, line: 1240, baseType: !171, size: 64, offset: 6912)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !594, file: !14, line: 1243, baseType: !260, size: 32, offset: 6976)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !594, file: !14, line: 1245, baseType: !1203, size: 64, offset: 7040)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !594, file: !14, line: 1246, baseType: !1203, size: 64, offset: 7104)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !594, file: !14, line: 1248, baseType: !261, size: 32, offset: 7168)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !594, file: !14, line: 1249, baseType: !3555, size: 64, offset: 7232)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !594, file: !14, line: 1252, baseType: !3558, size: 256, offset: 7296)
!3558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, elements: !524)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !594, file: !14, line: 1253, baseType: !3560, size: 128, offset: 7552)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3561, line: 21, baseType: !3562)
!3561 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3561, line: 19, size: 128, elements: !3563)
!3563 = !{!3564}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3562, file: !3561, line: 20, baseType: !3565, size: 128)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 128, elements: !2783)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !594, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !594, file: !14, line: 1261, baseType: !703, size: 256, offset: 7744)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !594, file: !14, line: 1267, baseType: !181, size: 64, offset: 8000)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !594, file: !14, line: 1269, baseType: !540, size: 64, offset: 8064)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !594, file: !14, line: 1271, baseType: !3571, size: 448, offset: 8128)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1212, line: 63, size: 448, elements: !3572)
!3572 = !{!3573, !3578, !3579, !3580, !3581, !3582, !3583}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3571, file: !1212, line: 64, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!230, !3577, !1210}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3571, file: !1212, line: 66, baseType: !3574, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3571, file: !1212, line: 69, baseType: !404, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3571, file: !1212, line: 70, baseType: !109, size: 32, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3571, file: !1212, line: 71, baseType: !7, size: 32, offset: 224)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3571, file: !1212, line: 74, baseType: !197, size: 128, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3571, file: !1212, line: 85, baseType: !3584, size: 64, offset: 384)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !594, file: !14, line: 1274, baseType: !707, size: 64, offset: 8576)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !594, file: !14, line: 1280, baseType: !707, size: 64, offset: 8640)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !594, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !594, file: !14, line: 1286, baseType: !2517, size: 32, offset: 8736)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !594, file: !14, line: 1289, baseType: !1023, size: 64, offset: 8768)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !594, file: !14, line: 1290, baseType: !1071, size: 64, offset: 8832)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !594, file: !14, line: 1297, baseType: !2030, size: 64, offset: 8896)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !594, file: !14, line: 1304, baseType: !3593, size: 64, offset: 8960)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3594, line: 49, size: 64, elements: !3595)
!3594 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3595 = !{!3596}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3593, file: !3594, line: 50, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3594, line: 41, size: 512, align: 512, elements: !3599)
!3599 = !{!3600, !3601, !3606}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3598, file: !3594, line: 43, baseType: !302, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3598, file: !3594, line: 45, baseType: !3602, size: 192, offset: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3594, line: 29, size: 192, elements: !3603)
!3603 = !{!3604, !3605}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3602, file: !3594, line: 30, baseType: !197, size: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3602, file: !3594, line: 32, baseType: !404, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3598, file: !3594, line: 46, baseType: !404, size: 64, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !594, file: !14, line: 1305, baseType: !3593, size: 64, offset: 9024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !594, file: !14, line: 1306, baseType: !923, size: 128, align: 64, offset: 9088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !594, file: !14, line: 1307, baseType: !961, size: 256, offset: 9216)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !594, file: !14, line: 1309, baseType: !703, size: 256, offset: 9472)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !594, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !594, file: !14, line: 1317, baseType: !302, size: 32, align: 512, offset: 10240)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !594, file: !14, line: 1318, baseType: !197, size: 128, offset: 10304)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !594, file: !14, line: 1320, baseType: !302, size: 32, offset: 10432)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !594, file: !14, line: 1321, baseType: !197, size: 128, offset: 10496)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !588, file: !589, line: 73, baseType: !109, size: 32, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !588, file: !589, line: 74, baseType: !3618, size: 64, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1877, line: 42, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !542, file: !484, line: 141, baseType: !3622, size: 64, offset: 704)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!109, !1273, !783}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !542, file: !484, line: 142, baseType: !3626, size: 64, offset: 768)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!482, !482, !3629}
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !483, file: !484, line: 96, baseType: !593, size: 64, offset: 832)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !483, file: !484, line: 97, baseType: !230, size: 64, offset: 896)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !483, file: !484, line: 98, baseType: !171, size: 64, offset: 960)
!3634 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !484, line: 100, baseType: !3635, size: 128, offset: 1024)
!3635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !484, line: 100, size: 128, elements: !3636)
!3636 = !{!3637, !3638}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3635, file: !484, line: 101, baseType: !197, size: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3635, file: !484, line: 102, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !483, file: !484, line: 104, baseType: !197, size: 128, offset: 1152)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !483, file: !484, line: 105, baseType: !197, size: 128, offset: 1280)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !483, file: !484, line: 113, baseType: !3643, size: 128, offset: 1408)
!3643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !483, file: !484, line: 109, size: 128, elements: !3644)
!3644 = !{!3645, !3646, !3647}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3643, file: !484, line: 110, baseType: !947, size: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3643, file: !484, line: 111, baseType: !498, size: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3643, file: !484, line: 112, baseType: !923, size: 128, align: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !476, file: !14, line: 1968, baseType: !3649, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!181, !482, !447, !3652}
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3654, line: 10, size: 128, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3655 = !{!3656, !3657}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3653, file: !3654, line: 11, baseType: !746, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3653, file: !3654, line: 12, baseType: !171, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !476, file: !14, line: 1969, baseType: !3659, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!109, !3618, !447, !109}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !476, file: !14, line: 1970, baseType: !3663, size: 64, offset: 192)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!470, !447, !109, !783}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !476, file: !14, line: 1972, baseType: !3667, size: 64, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!109, !482, !368, !109}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !476, file: !14, line: 1974, baseType: !3671, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!109, !3618, !447, !482, !410, !783}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !476, file: !14, line: 1976, baseType: !3675, size: 64, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!109, !482, !447, !482}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !476, file: !14, line: 1977, baseType: !3679, size: 64, offset: 448)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!109, !447, !482}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !476, file: !14, line: 1978, baseType: !3683, size: 64, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!109, !3618, !447, !482, !181}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !476, file: !14, line: 1980, baseType: !3687, size: 64, offset: 576)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!109, !3618, !447, !482, !410}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !476, file: !14, line: 1982, baseType: !3679, size: 64, offset: 640)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !476, file: !14, line: 1983, baseType: !3692, size: 64, offset: 704)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!109, !3618, !447, !482, !410, !598}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !476, file: !14, line: 1985, baseType: !3696, size: 64, offset: 768)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!109, !3618, !447, !482, !447, !482, !7}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !476, file: !14, line: 1987, baseType: !3700, size: 64, offset: 832)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!109, !3618, !482, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3705)
!3705 = !{!3706, !3707, !3708, !3718, !3727, !3728, !3733, !3734, !3735}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3704, file: !14, line: 227, baseType: !7, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3704, file: !14, line: 228, baseType: !410, size: 16, offset: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !3704, file: !14, line: 241, baseType: !3709, size: 32, offset: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3704, file: !14, line: 241, size: 32, elements: !3710)
!3710 = !{!3711, !3712}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3709, file: !14, line: 242, baseType: !453, size: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3709, file: !14, line: 243, baseType: !3713, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3714, line: 16, baseType: !3715)
!3714 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3714, line: 14, size: 32, elements: !3716)
!3716 = !{!3717}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3715, file: !3714, line: 15, baseType: !458, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, scope: !3704, file: !14, line: 245, baseType: !3719, size: 32, offset: 96)
!3719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3704, file: !14, line: 245, size: 32, elements: !3720)
!3720 = !{!3721, !3722}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3719, file: !14, line: 246, baseType: !462, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3719, file: !14, line: 247, baseType: !3723, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3714, line: 20, baseType: !3724)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3714, line: 18, size: 32, elements: !3725)
!3725 = !{!3726}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3724, file: !3714, line: 19, baseType: !466, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3704, file: !14, line: 249, baseType: !603, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3704, file: !14, line: 250, baseType: !3729, size: 128, offset: 192)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1204, line: 13, size: 128, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3729, file: !1204, line: 14, baseType: !1203, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3729, file: !1204, line: 15, baseType: !404, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3704, file: !14, line: 251, baseType: !3729, size: 128, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3704, file: !14, line: 252, baseType: !3729, size: 128, offset: 448)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3704, file: !14, line: 259, baseType: !1793, size: 64, offset: 576)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !476, file: !14, line: 1988, baseType: !3737, size: 64, offset: 896)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!109, !3618, !1273, !3740, !260, !7}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3742, line: 22, size: 1280, elements: !3743)
!3742 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3743 = !{!3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3741, file: !3742, line: 23, baseType: !260, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3741, file: !3742, line: 24, baseType: !410, size: 16, offset: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3741, file: !3742, line: 25, baseType: !7, size: 32, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3741, file: !3742, line: 26, baseType: !1915, size: 32, offset: 96)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3741, file: !3742, line: 27, baseType: !222, size: 64, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3741, file: !3742, line: 28, baseType: !222, size: 64, offset: 192)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3741, file: !3742, line: 41, baseType: !222, size: 64, offset: 256)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3741, file: !3742, line: 42, baseType: !598, size: 32, offset: 320)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3741, file: !3742, line: 43, baseType: !598, size: 32, offset: 352)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3741, file: !3742, line: 44, baseType: !453, size: 32, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3741, file: !3742, line: 45, baseType: !462, size: 32, offset: 416)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3741, file: !3742, line: 46, baseType: !603, size: 64, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3741, file: !3742, line: 47, baseType: !3729, size: 128, offset: 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3741, file: !3742, line: 48, baseType: !3729, size: 128, offset: 640)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3741, file: !3742, line: 49, baseType: !3729, size: 128, offset: 768)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3741, file: !3742, line: 50, baseType: !3729, size: 128, offset: 896)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3741, file: !3742, line: 51, baseType: !222, size: 64, offset: 1024)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3741, file: !3742, line: 52, baseType: !222, size: 64, offset: 1088)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3741, file: !3742, line: 53, baseType: !260, size: 32, offset: 1152)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3741, file: !3742, line: 54, baseType: !260, size: 32, offset: 1184)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3741, file: !3742, line: 55, baseType: !222, size: 64, offset: 1216)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !476, file: !14, line: 1990, baseType: !3766, size: 64, offset: 960)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!400, !482, !368, !415}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !476, file: !14, line: 1991, baseType: !3770, size: 64, offset: 1024)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!109, !447, !3773, !222, !222}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !476, file: !14, line: 1993, baseType: !3776, size: 64, offset: 1088)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!109, !447, !109}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !476, file: !14, line: 1994, baseType: !3780, size: 64, offset: 1152)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!109, !447, !482, !1793, !7, !410}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !476, file: !14, line: 1997, baseType: !3784, size: 64, offset: 1216)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!109, !3618, !447, !1793, !410}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !476, file: !14, line: 1999, baseType: !3788, size: 64, offset: 1280)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!470, !3618, !482, !109}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !476, file: !14, line: 2001, baseType: !3792, size: 64, offset: 1344)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!109, !3618, !482, !470, !109}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !476, file: !14, line: 2003, baseType: !3796, size: 64, offset: 1408)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!109, !3618, !482, !3799}
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !476, file: !14, line: 2005, baseType: !3802, size: 64, offset: 1472)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!109, !482, !3799}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !476, file: !14, line: 2006, baseType: !3806, size: 64, offset: 1536)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!3809, !447}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3811)
!3811 = !{!3812, !3819}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3810, file: !14, line: 3193, baseType: !3813, size: 128)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3814, line: 296, size: 128, elements: !3815)
!3814 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3815 = !{!3816, !3817, !3818}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3813, file: !3814, line: 297, baseType: !302, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3813, file: !3814, line: 299, baseType: !1215, size: 32, offset: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3813, file: !3814, line: 300, baseType: !171, size: 64, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3810, file: !14, line: 3194, baseType: !260, size: 32, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !448, file: !14, line: 655, baseType: !593, size: 64, offset: 448)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !448, file: !14, line: 656, baseType: !443, size: 64, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !448, file: !14, line: 659, baseType: !171, size: 64, offset: 576)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !448, file: !14, line: 663, baseType: !230, size: 64, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !14, line: 671, baseType: !3825, size: 32, offset: 704)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !14, line: 671, size: 32, elements: !3826)
!3826 = !{!3827, !3829}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3825, file: !14, line: 672, baseType: !3828, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3825, file: !14, line: 673, baseType: !7, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !448, file: !14, line: 675, baseType: !598, size: 32, offset: 736)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !448, file: !14, line: 676, baseType: !603, size: 64, offset: 768)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !448, file: !14, line: 677, baseType: !3729, size: 128, offset: 832)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !448, file: !14, line: 678, baseType: !3729, size: 128, offset: 960)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !448, file: !14, line: 679, baseType: !3729, size: 128, offset: 1088)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !448, file: !14, line: 680, baseType: !302, size: 32, offset: 1216)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !448, file: !14, line: 681, baseType: !281, size: 16, offset: 1248)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !448, file: !14, line: 682, baseType: !330, size: 8, offset: 1264)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !448, file: !14, line: 683, baseType: !330, size: 8, offset: 1272)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !448, file: !14, line: 684, baseType: !1351, size: 64, offset: 1280)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !448, file: !14, line: 691, baseType: !230, size: 64, offset: 1344)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !448, file: !14, line: 692, baseType: !1363, size: 320, offset: 1408)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !448, file: !14, line: 694, baseType: !230, size: 64, offset: 1728)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !448, file: !14, line: 695, baseType: !230, size: 64, offset: 1792)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !448, file: !14, line: 697, baseType: !947, size: 128, offset: 1856)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !448, file: !14, line: 698, baseType: !197, size: 128, offset: 1984)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !448, file: !14, line: 707, baseType: !197, size: 128, offset: 2112)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !448, file: !14, line: 708, baseType: !197, size: 128, offset: 2240)
!3848 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !14, line: 709, baseType: !3849, size: 128, offset: 2368)
!3849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !14, line: 709, size: 128, elements: !3850)
!3850 = !{!3851, !3852}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3849, file: !14, line: 710, baseType: !1071, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3849, file: !14, line: 711, baseType: !923, size: 128, align: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !448, file: !14, line: 713, baseType: !709, size: 64, offset: 2496)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !448, file: !14, line: 714, baseType: !709, size: 64, offset: 2560)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !448, file: !14, line: 715, baseType: !322, size: 32, offset: 2624)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !448, file: !14, line: 716, baseType: !322, size: 32, offset: 2656)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !448, file: !14, line: 717, baseType: !322, size: 32, offset: 2688)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !448, file: !14, line: 719, baseType: !322, size: 32, offset: 2720)
!3859 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !14, line: 721, baseType: !3860, size: 64, offset: 2752)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !14, line: 721, size: 64, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3860, file: !14, line: 722, baseType: !2061, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3860, file: !14, line: 723, baseType: !1094, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !448, file: !14, line: 725, baseType: !3865, size: 64, offset: 2816)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !448, file: !14, line: 726, baseType: !444, size: 1536, align: 64, offset: 2880)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !448, file: !14, line: 727, baseType: !197, size: 128, offset: 4416)
!3869 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !14, line: 728, baseType: !3870, size: 64, offset: 4544)
!3870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !14, line: 728, size: 64, elements: !3871)
!3871 = !{!3872, !3873, !3876, !3877}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3870, file: !14, line: 729, baseType: !2467, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3870, file: !14, line: 730, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3870, file: !14, line: 731, baseType: !368, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3870, file: !14, line: 732, baseType: !7, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !448, file: !14, line: 735, baseType: !261, size: 32, offset: 4608)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !448, file: !14, line: 738, baseType: !261, size: 32, offset: 4640)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !448, file: !14, line: 739, baseType: !3555, size: 64, offset: 4672)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !448, file: !14, line: 750, baseType: !171, size: 64, offset: 4736)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !444, file: !14, line: 474, baseType: !3813, size: 128, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !444, file: !14, line: 475, baseType: !1363, size: 320, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !444, file: !14, line: 476, baseType: !1215, size: 32, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !444, file: !14, line: 477, baseType: !322, size: 32, offset: 544)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !444, file: !14, line: 482, baseType: !1649, size: 128, offset: 576)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !444, file: !14, line: 483, baseType: !230, size: 64, offset: 704)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !444, file: !14, line: 484, baseType: !230, size: 64, offset: 768)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !444, file: !14, line: 485, baseType: !3890, size: 64, offset: 832)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3892)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3893)
!3893 = !{!3894, !3898, !3968, !3972, !3976, !3982, !3986, !3990, !3995, !3999, !4003, !4007, !4008, !4012, !4016, !4020, !4025, !4029, !4036, !4037}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3892, file: !14, line: 405, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!109, !2254, !1106}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3892, file: !14, line: 406, baseType: !3899, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!109, !1793, !3902}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3904)
!3904 = !{!3905, !3935, !3949}
!3905 = !DIDerivedType(tag: DW_TAG_member, scope: !3903, file: !38, line: 295, baseType: !3906, size: 512)
!3906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3903, file: !38, line: 295, size: 512, elements: !3907)
!3907 = !{!3908, !3934}
!3908 = !DIDerivedType(tag: DW_TAG_member, scope: !3906, file: !38, line: 296, baseType: !3909, size: 448)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3906, file: !38, line: 296, size: 448, elements: !3910)
!3910 = !{!3911, !3912, !3921, !3922, !3923, !3932, !3933}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3909, file: !38, line: 298, baseType: !230, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, scope: !3909, file: !38, line: 299, baseType: !3913, size: 128, offset: 64)
!3913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3909, file: !38, line: 299, size: 128, elements: !3914)
!3914 = !{!3915, !3916}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3913, file: !38, line: 300, baseType: !197, size: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, scope: !3913, file: !38, line: 302, baseType: !3917, size: 128)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3913, file: !38, line: 302, size: 128, elements: !3918)
!3918 = !{!3919, !3920}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3917, file: !38, line: 303, baseType: !171, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3917, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3909, file: !38, line: 310, baseType: !443, size: 64, offset: 192)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3909, file: !38, line: 311, baseType: !230, size: 64, offset: 256)
!3923 = !DIDerivedType(tag: DW_TAG_member, scope: !3909, file: !38, line: 312, baseType: !3924, size: 64, offset: 320)
!3924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3909, file: !38, line: 312, size: 64, elements: !3925)
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3924, file: !38, line: 313, baseType: !171, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3924, file: !38, line: 314, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3929)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3930)
!3930 = !{!3931}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3929, file: !38, line: 256, baseType: !230, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3909, file: !38, line: 316, baseType: !322, size: 32, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3909, file: !38, line: 317, baseType: !322, size: 32, offset: 416)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3906, file: !38, line: 323, baseType: !2255, size: 512, align: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, scope: !3903, file: !38, line: 325, baseType: !3936, size: 512, offset: 512)
!3936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3903, file: !38, line: 325, size: 512, elements: !3937)
!3937 = !{!3938, !3948}
!3938 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !38, line: 326, baseType: !3939, size: 320)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3936, file: !38, line: 326, size: 320, elements: !3940)
!3940 = !{!3941, !3942, !3943, !3944, !3945, !3946, !3947}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3939, file: !38, line: 327, baseType: !230, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3939, file: !38, line: 328, baseType: !230, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3939, file: !38, line: 329, baseType: !230, size: 64, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3939, file: !38, line: 331, baseType: !322, size: 32, offset: 192)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3939, file: !38, line: 332, baseType: !322, size: 32, offset: 224)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3939, file: !38, line: 333, baseType: !322, size: 32, offset: 256)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3939, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3936, file: !38, line: 339, baseType: !2255, size: 512, align: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !3903, file: !38, line: 341, baseType: !3950, size: 512, offset: 1024)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3903, file: !38, line: 341, size: 512, elements: !3951)
!3951 = !{!3952, !3961, !3967}
!3952 = !DIDerivedType(tag: DW_TAG_member, scope: !3950, file: !38, line: 342, baseType: !3953, size: 384)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3950, file: !38, line: 342, size: 384, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959, !3960}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3953, file: !38, line: 343, baseType: !230, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3953, file: !38, line: 344, baseType: !230, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3953, file: !38, line: 346, baseType: !171, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3953, file: !38, line: 347, baseType: !171, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3953, file: !38, line: 348, baseType: !171, size: 64, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3953, file: !38, line: 349, baseType: !171, size: 64, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3950, file: !38, line: 352, baseType: !3962, size: 256)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3950, file: !38, line: 352, size: 256, elements: !3963)
!3963 = !{!3964, !3965, !3966}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3962, file: !38, line: 353, baseType: !230, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3962, file: !38, line: 354, baseType: !230, size: 64, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3962, file: !38, line: 356, baseType: !197, size: 128, offset: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3950, file: !38, line: 359, baseType: !2255, size: 512, align: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3892, file: !14, line: 409, baseType: !3969, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!109, !443, !1106}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3892, file: !14, line: 412, baseType: !3973, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!783, !443, !3902}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3892, file: !14, line: 414, baseType: !3977, size: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !3980}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3892, file: !14, line: 416, baseType: !3983, size: 64, offset: 320)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!109, !1793, !443, !603, !7, !3305, !2482}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3892, file: !14, line: 419, baseType: !3987, size: 64, offset: 384)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!109, !1793, !443, !603, !7, !7, !2254, !171}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3892, file: !14, line: 424, baseType: !3991, size: 64, offset: 448)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!3994, !443, !3994}
!3994 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !198, line: 131, baseType: !222)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3892, file: !14, line: 425, baseType: !3996, size: 64, offset: 512)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3902, !415, !415}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3892, file: !14, line: 426, baseType: !4000, size: 64, offset: 576)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!783, !3902, !1215}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3892, file: !14, line: 427, baseType: !4004, size: 64, offset: 640)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{null, !3902}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3892, file: !14, line: 428, baseType: !2080, size: 64, offset: 704)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3892, file: !14, line: 433, baseType: !4009, size: 64, offset: 768)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!109, !443, !3902, !3902, !74}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3892, file: !14, line: 435, baseType: !4013, size: 64, offset: 832)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!109, !3902}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3892, file: !14, line: 436, baseType: !4017, size: 64, offset: 896)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!783, !3902, !415, !415}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3892, file: !14, line: 438, baseType: !4021, size: 64, offset: 960)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{null, !3902, !4024, !4024}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3892, file: !14, line: 439, baseType: !4026, size: 64, offset: 1024)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!109, !443, !2254}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3892, file: !14, line: 442, baseType: !4030, size: 64, offset: 1088)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!109, !4033, !1793, !4035}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3892, file: !14, line: 444, baseType: !2474, size: 64, offset: 1152)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3892, file: !14, line: 445, baseType: !4038, size: 64, offset: 1216)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!109, !2083, !2105}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !14, line: 486, baseType: !230, size: 64, offset: 896)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !444, file: !14, line: 487, baseType: !1363, size: 320, offset: 960)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !444, file: !14, line: 488, baseType: !2517, size: 32, offset: 1280)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !444, file: !14, line: 489, baseType: !302, size: 32, offset: 1312)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !444, file: !14, line: 490, baseType: !197, size: 128, offset: 1344)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !444, file: !14, line: 491, baseType: !171, size: 64, offset: 1472)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !434, file: !394, line: 180, baseType: !4048, size: 64, offset: 320)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!400, !1793, !295, !433, !368, !603, !415}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !434, file: !394, line: 182, baseType: !4048, size: 64, offset: 384)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !434, file: !394, line: 184, baseType: !4053, size: 64, offset: 448)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!109, !1793, !295, !433, !2145}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !422, file: !394, line: 90, baseType: !4057, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !422, file: !394, line: 91, baseType: !4059, size: 64, offset: 256)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !384, file: !290, line: 120, baseType: !4061, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!4064, !351}
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4066)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4067)
!4067 = !{!4068, !4069, !4073, !4077, !4083, !4087}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4066, file: !82, line: 40, baseType: !81, size: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4066, file: !82, line: 41, baseType: !4070, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!783}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4066, file: !82, line: 42, baseType: !4074, size: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!171}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4066, file: !82, line: 43, baseType: !4078, size: 64, offset: 192)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!2606, !4081}
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4066, file: !82, line: 44, baseType: !4084, size: 64, offset: 256)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!2606}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4066, file: !82, line: 45, baseType: !746, size: 64, offset: 320)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !384, file: !290, line: 121, baseType: !4089, size: 64, offset: 256)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!2606, !351}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !384, file: !290, line: 122, baseType: !4093, size: 64, offset: 320)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{null, !351, !4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !289, file: !290, line: 70, baseType: !4099, size: 64, offset: 384)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !618, line: 190, size: 1152, elements: !4101)
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4193, !4194, !4195, !4196, !4197, !4200}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4100, file: !618, line: 191, baseType: !322, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4100, file: !618, line: 192, baseType: !322, size: 32, offset: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4100, file: !618, line: 202, baseType: !4099, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4100, file: !618, line: 203, baseType: !181, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4100, file: !618, line: 205, baseType: !815, size: 192, align: 64, offset: 192)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4100, file: !618, line: 207, baseType: !2606, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4100, file: !618, line: 208, baseType: !7, size: 32, offset: 448)
!4109 = !DIDerivedType(tag: DW_TAG_member, scope: !4100, file: !618, line: 209, baseType: !4110, size: 256, offset: 512)
!4110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4100, file: !618, line: 209, size: 256, elements: !4111)
!4111 = !{!4112, !4121, !4125}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4110, file: !618, line: 210, baseType: !4113, size: 256)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !618, line: 153, size: 256, elements: !4114)
!4114 = !{!4115, !4116, !4117, !4120}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4113, file: !618, line: 154, baseType: !230, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4113, file: !618, line: 156, baseType: !1652, size: 64, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4113, file: !618, line: 162, baseType: !4118, size: 64, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !618, line: 162, flags: DIFlagFwdDecl)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4113, file: !618, line: 167, baseType: !230, size: 64, offset: 192)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4110, file: !618, line: 211, baseType: !4122, size: 64)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !618, line: 170, size: 64, elements: !4123)
!4123 = !{!4124}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4122, file: !618, line: 171, baseType: !4099, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4110, file: !618, line: 212, baseType: !4126, size: 256)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !618, line: 174, size: 256, elements: !4127)
!4127 = !{!4128, !4188, !4191, !4192}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4126, file: !618, line: 175, baseType: !4129, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4131)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !618, line: 271, size: 768, elements: !4132)
!4132 = !{!4133, !4153, !4157, !4161, !4165, !4169, !4173, !4177, !4178, !4179, !4180, !4184}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4131, file: !618, line: 276, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!109, !4137}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !618, line: 251, size: 1216, elements: !4139)
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4138, file: !618, line: 253, baseType: !4099, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4138, file: !618, line: 254, baseType: !1793, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4138, file: !618, line: 255, baseType: !1143, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4138, file: !618, line: 256, baseType: !171, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4138, file: !618, line: 259, baseType: !703, size: 256, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4138, file: !618, line: 260, baseType: !703, size: 256, offset: 512)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4138, file: !618, line: 261, baseType: !109, size: 32, offset: 768)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4138, file: !618, line: 262, baseType: !197, size: 128, offset: 832)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4138, file: !618, line: 263, baseType: !368, size: 64, offset: 960)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4138, file: !618, line: 265, baseType: !415, size: 64, offset: 1024)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4138, file: !618, line: 266, baseType: !783, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4138, file: !618, line: 267, baseType: !783, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4138, file: !618, line: 268, baseType: !2190, size: 64, offset: 1152)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4131, file: !618, line: 277, baseType: !4154, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !4137}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4131, file: !618, line: 290, baseType: !4158, size: 64, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!109, !1143, !171}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4131, file: !618, line: 292, baseType: !4162, size: 64, offset: 192)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!171, !1143, !2074}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4131, file: !618, line: 293, baseType: !4166, size: 64, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!171, !1143, !171, !2074}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4131, file: !618, line: 294, baseType: !4170, size: 64, offset: 320)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !1143, !171}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4131, file: !618, line: 296, baseType: !4174, size: 64, offset: 384)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!400, !4137, !368, !415, !603}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4131, file: !618, line: 306, baseType: !415, size: 64, offset: 448)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4131, file: !618, line: 313, baseType: !783, size: 8, offset: 512)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4131, file: !618, line: 314, baseType: !4174, size: 64, offset: 576)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4131, file: !618, line: 317, baseType: !4181, size: 64, offset: 640)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!2132, !4137, !2134}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4131, file: !618, line: 320, baseType: !4185, size: 64, offset: 704)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!109, !4137, !2145}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4126, file: !618, line: 176, baseType: !4189, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !618, line: 35, flags: DIFlagFwdDecl)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4126, file: !618, line: 177, baseType: !603, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4126, file: !618, line: 178, baseType: !4099, size: 64, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4100, file: !618, line: 215, baseType: !171, size: 64, offset: 768)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4100, file: !618, line: 221, baseType: !222, size: 64, offset: 832)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4100, file: !618, line: 223, baseType: !281, size: 16, offset: 896)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4100, file: !618, line: 224, baseType: !410, size: 16, offset: 912)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4100, file: !618, line: 225, baseType: !4198, size: 64, offset: 960)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !618, line: 36, flags: DIFlagFwdDecl)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4100, file: !618, line: 227, baseType: !923, size: 128, align: 64, offset: 1024)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !289, file: !290, line: 71, baseType: !4202, size: 32, offset: 448)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4203, line: 19, size: 32, elements: !4204)
!4203 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4204 = !{!4205}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4202, file: !4203, line: 20, baseType: !1483, size: 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !289, file: !290, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !289, file: !290, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !289, file: !290, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !289, file: !290, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !289, file: !290, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !94, line: 707, baseType: !285, size: 64, offset: 512)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !286, file: !94, line: 709, baseType: !4213, size: 64, offset: 576)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !286, file: !94, line: 711, baseType: !181, size: 64, offset: 640)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !286, file: !94, line: 712, baseType: !4217, size: 64, offset: 704)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4219)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4220)
!4220 = !{!4221, !4222, !4223, !4229, !4234, !4238}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4219, file: !94, line: 90, baseType: !181, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4219, file: !94, line: 91, baseType: !419, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4219, file: !94, line: 92, baseType: !4224, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!109, !4227, !363}
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4219, file: !94, line: 93, baseType: !4230, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!368, !4227, !4233, !4096, !4097}
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4219, file: !94, line: 95, baseType: !4235, size: 64, offset: 256)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !285}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4219, file: !94, line: 97, baseType: !4239, size: 64, offset: 320)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4241)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4242)
!4242 = !{!4243, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4241, file: !101, line: 287, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!109, !285}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4241, file: !101, line: 288, baseType: !4235, size: 64, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4241, file: !101, line: 289, baseType: !4244, size: 64, offset: 128)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4241, file: !101, line: 290, baseType: !4244, size: 64, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4241, file: !101, line: 291, baseType: !4244, size: 64, offset: 256)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4241, file: !101, line: 292, baseType: !4244, size: 64, offset: 320)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4241, file: !101, line: 293, baseType: !4244, size: 64, offset: 384)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4241, file: !101, line: 294, baseType: !4244, size: 64, offset: 448)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4241, file: !101, line: 295, baseType: !4244, size: 64, offset: 512)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4241, file: !101, line: 296, baseType: !4244, size: 64, offset: 576)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4241, file: !101, line: 297, baseType: !4244, size: 64, offset: 640)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4241, file: !101, line: 298, baseType: !4244, size: 64, offset: 704)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4241, file: !101, line: 299, baseType: !4244, size: 64, offset: 768)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4241, file: !101, line: 300, baseType: !4244, size: 64, offset: 832)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4241, file: !101, line: 301, baseType: !4244, size: 64, offset: 896)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4241, file: !101, line: 302, baseType: !4244, size: 64, offset: 960)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4241, file: !101, line: 303, baseType: !4244, size: 64, offset: 1024)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4241, file: !101, line: 304, baseType: !4244, size: 64, offset: 1088)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4241, file: !101, line: 305, baseType: !4244, size: 64, offset: 1152)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4241, file: !101, line: 306, baseType: !4244, size: 64, offset: 1216)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4241, file: !101, line: 307, baseType: !4244, size: 64, offset: 1280)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4241, file: !101, line: 308, baseType: !4244, size: 64, offset: 1344)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4241, file: !101, line: 309, baseType: !4244, size: 64, offset: 1408)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !286, file: !94, line: 714, baseType: !4270, size: 64, offset: 768)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4272)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4273, line: 80, size: 1344, elements: !4274)
!4273 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4353}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4272, file: !4273, line: 81, baseType: !181, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4272, file: !4273, line: 82, baseType: !181, size: 64, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4272, file: !4273, line: 83, baseType: !419, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4272, file: !4273, line: 84, baseType: !419, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4272, file: !4273, line: 85, baseType: !419, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4272, file: !4273, line: 87, baseType: !4281, size: 64, offset: 320)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!109, !285, !4284}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292, !4293, !4306, !4316, !4317, !4318, !4319, !4320, !4328, !4329, !4330, !4331, !4332, !4333}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4285, file: !88, line: 97, baseType: !181, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4285, file: !88, line: 98, baseType: !4270, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4285, file: !88, line: 100, baseType: !632, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4285, file: !88, line: 101, baseType: !181, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4285, file: !88, line: 103, baseType: !783, size: 8, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4285, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4285, file: !88, line: 106, baseType: !4294, size: 64, offset: 320)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4296)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4297, line: 282, size: 1600, elements: !4298)
!4297 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4298 = !{!4299, !4300, !4301, !4305}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4296, file: !4297, line: 283, baseType: !3558, size: 256)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4296, file: !4297, line: 284, baseType: !3558, size: 256, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4296, file: !4297, line: 285, baseType: !4302, size: 1024, offset: 512)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 1024, elements: !4303)
!4303 = !{!4304}
!4304 = !DISubrange(count: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4296, file: !4297, line: 286, baseType: !2606, size: 64, offset: 1536)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4285, file: !88, line: 107, baseType: !4307, size: 64, offset: 384)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4309)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4297, line: 217, size: 256, elements: !4310)
!4310 = !{!4311, !4312, !4314, !4315}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4309, file: !4297, line: 218, baseType: !3565, size: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4309, file: !4297, line: 219, baseType: !4313, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4297, line: 15, baseType: !230)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4309, file: !4297, line: 220, baseType: !261, size: 32, offset: 192)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4309, file: !4297, line: 221, baseType: !261, size: 32, offset: 224)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4285, file: !88, line: 109, baseType: !4244, size: 64, offset: 448)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4285, file: !88, line: 110, baseType: !4235, size: 64, offset: 512)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4285, file: !88, line: 111, baseType: !4244, size: 64, offset: 576)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4285, file: !88, line: 112, baseType: !4235, size: 64, offset: 640)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4285, file: !88, line: 113, baseType: !4321, size: 64, offset: 704)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!109, !285, !4324}
!4324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4325)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4326)
!4326 = !{!4327}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4325, file: !101, line: 59, baseType: !109, size: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4285, file: !88, line: 114, baseType: !4244, size: 64, offset: 768)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4285, file: !88, line: 115, baseType: !419, size: 64, offset: 832)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4285, file: !88, line: 116, baseType: !419, size: 64, offset: 896)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4285, file: !88, line: 118, baseType: !4239, size: 64, offset: 960)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4285, file: !88, line: 119, baseType: !4235, size: 64, offset: 1024)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4285, file: !88, line: 121, baseType: !4334, size: 64, offset: 1088)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4272, file: !4273, line: 88, baseType: !4224, size: 64, offset: 384)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4272, file: !4273, line: 89, baseType: !4244, size: 64, offset: 448)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4272, file: !4273, line: 90, baseType: !4235, size: 64, offset: 512)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4272, file: !4273, line: 91, baseType: !4235, size: 64, offset: 576)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4272, file: !4273, line: 92, baseType: !4235, size: 64, offset: 640)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4272, file: !4273, line: 94, baseType: !4244, size: 64, offset: 704)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4272, file: !4273, line: 95, baseType: !4244, size: 64, offset: 768)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4272, file: !4273, line: 97, baseType: !4321, size: 64, offset: 832)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4272, file: !4273, line: 98, baseType: !4244, size: 64, offset: 896)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4272, file: !4273, line: 100, baseType: !4244, size: 64, offset: 960)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4272, file: !4273, line: 102, baseType: !4244, size: 64, offset: 1024)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4272, file: !4273, line: 103, baseType: !4235, size: 64, offset: 1088)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4272, file: !4273, line: 105, baseType: !4239, size: 64, offset: 1152)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4272, file: !4273, line: 107, baseType: !4350, size: 64, offset: 1216)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4352)
!4352 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4273, line: 107, flags: DIFlagFwdDecl)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4272, file: !4273, line: 109, baseType: !783, size: 8, offset: 1280)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !286, file: !94, line: 715, baseType: !4284, size: 64, offset: 832)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !286, file: !94, line: 717, baseType: !171, size: 64, offset: 896)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !286, file: !94, line: 719, baseType: !171, size: 64, offset: 960)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !286, file: !94, line: 721, baseType: !703, size: 256, offset: 1024)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !286, file: !94, line: 725, baseType: !4359, size: 448, offset: 1280)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4359, file: !94, line: 518, baseType: !197, size: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4359, file: !94, line: 519, baseType: !197, size: 128, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4359, file: !94, line: 520, baseType: !197, size: 128, offset: 256)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4359, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !286, file: !94, line: 726, baseType: !4366, size: 2496, offset: 1728)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4367)
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4450, !4454}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4366, file: !101, line: 664, baseType: !4324, size: 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4366, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4366, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4366, file: !101, line: 667, baseType: !783, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4366, file: !101, line: 668, baseType: !783, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4366, file: !101, line: 669, baseType: !783, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4366, file: !101, line: 670, baseType: !783, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4366, file: !101, line: 671, baseType: !783, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4366, file: !101, line: 672, baseType: !783, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4366, file: !101, line: 673, baseType: !783, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4366, file: !101, line: 674, baseType: !783, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4366, file: !101, line: 675, baseType: !260, size: 32, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4366, file: !101, line: 676, baseType: !302, size: 32, offset: 96)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4366, file: !101, line: 678, baseType: !197, size: 128, offset: 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4366, file: !101, line: 679, baseType: !652, size: 256, offset: 256)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4366, file: !101, line: 680, baseType: !4384, size: 64, offset: 512)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4386, line: 43, size: 1536, elements: !4387)
!4386 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4387 = !{!4388, !4389, !4390, !4391, !4392, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4385, file: !4386, line: 44, baseType: !181, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4385, file: !4386, line: 45, baseType: !109, size: 32, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4385, file: !4386, line: 46, baseType: !197, size: 128, offset: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4385, file: !4386, line: 47, baseType: !302, size: 32, offset: 256)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4385, file: !4386, line: 48, baseType: !4393, size: 64, offset: 320)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4385, file: !4386, line: 49, baseType: !943, size: 320, offset: 384)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4385, file: !4386, line: 50, baseType: !230, size: 64, offset: 704)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4385, file: !4386, line: 51, baseType: !1598, size: 64, offset: 768)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4385, file: !4386, line: 52, baseType: !1598, size: 64, offset: 832)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4385, file: !4386, line: 53, baseType: !1598, size: 64, offset: 896)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4385, file: !4386, line: 54, baseType: !1598, size: 64, offset: 960)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4385, file: !4386, line: 55, baseType: !1598, size: 64, offset: 1024)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4385, file: !4386, line: 56, baseType: !230, size: 64, offset: 1088)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4385, file: !4386, line: 57, baseType: !230, size: 64, offset: 1152)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4385, file: !4386, line: 58, baseType: !230, size: 64, offset: 1216)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4385, file: !4386, line: 59, baseType: !230, size: 64, offset: 1280)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4385, file: !4386, line: 60, baseType: !230, size: 64, offset: 1344)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4385, file: !4386, line: 61, baseType: !285, size: 64, offset: 1408)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4385, file: !4386, line: 62, baseType: !783, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4385, file: !4386, line: 63, baseType: !783, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4366, file: !101, line: 681, baseType: !783, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4366, file: !101, line: 682, baseType: !783, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4366, file: !101, line: 683, baseType: !783, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4366, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4366, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4366, file: !101, line: 690, baseType: !1590, size: 512, offset: 640)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4366, file: !101, line: 691, baseType: !222, size: 64, offset: 1152)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4366, file: !101, line: 692, baseType: !961, size: 256, offset: 1216)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4366, file: !101, line: 693, baseType: !1456, size: 192, offset: 1472)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4366, file: !101, line: 694, baseType: !4393, size: 64, offset: 1664)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4366, file: !101, line: 695, baseType: !322, size: 32, offset: 1728)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4366, file: !101, line: 696, baseType: !322, size: 32, offset: 1760)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4366, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4366, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4366, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4366, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4366, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4366, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4366, file: !101, line: 703, baseType: !783, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4366, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4366, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4366, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4366, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4366, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4366, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4366, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4366, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4366, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4366, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4366, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4366, file: !101, line: 715, baseType: !222, size: 64, offset: 2048)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4366, file: !101, line: 716, baseType: !222, size: 64, offset: 2112)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4366, file: !101, line: 717, baseType: !222, size: 64, offset: 2176)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4366, file: !101, line: 718, baseType: !222, size: 64, offset: 2240)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4366, file: !101, line: 720, baseType: !4445, size: 64, offset: 2304)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4447)
!4447 = !{!4448, !4449}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4446, file: !101, line: 633, baseType: !302, size: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4446, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4366, file: !101, line: 721, baseType: !4451, size: 64, offset: 2368)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{null, !285, !699}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4366, file: !101, line: 722, baseType: !4455, size: 64, offset: 2432)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !286, file: !94, line: 727, baseType: !4458, size: 64, offset: 4224)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4460)
!4460 = !{!4461, !4462, !4463, !4467, !4468, !4469}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4459, file: !101, line: 743, baseType: !4241, size: 1472)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4459, file: !101, line: 744, baseType: !4244, size: 64, offset: 1472)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4459, file: !101, line: 745, baseType: !4464, size: 64, offset: 1536)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !285, !783}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4459, file: !101, line: 746, baseType: !4244, size: 64, offset: 1600)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4459, file: !101, line: 747, baseType: !4235, size: 64, offset: 1664)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4459, file: !101, line: 748, baseType: !4235, size: 64, offset: 1728)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !286, file: !94, line: 736, baseType: !4471, size: 128, offset: 4288)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4472)
!4472 = !{!4473, !4477}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4471, file: !94, line: 531, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4476, line: 13, flags: DIFlagFwdDecl)
!4476 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4471, file: !94, line: 532, baseType: !4478, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !286, file: !94, line: 738, baseType: !4481, size: 64, offset: 4416)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4483)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !286, file: !94, line: 740, baseType: !4485, size: 64, offset: 4480)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !286, file: !94, line: 741, baseType: !222, size: 64, offset: 4544)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !286, file: !94, line: 746, baseType: !222, size: 64, offset: 4608)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !286, file: !94, line: 747, baseType: !4489, size: 64, offset: 4672)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4491)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !286, file: !94, line: 749, baseType: !4493, size: 64, offset: 4736)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4495)
!4495 = !{!4496, !4497, !4498}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4494, file: !94, line: 433, baseType: !7, size: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4494, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4494, file: !94, line: 435, baseType: !230, size: 64, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !286, file: !94, line: 751, baseType: !197, size: 128, offset: 4800)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !286, file: !94, line: 762, baseType: !4501, size: 64, offset: 4928)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !286, file: !94, line: 770, baseType: !4504, offset: 4992)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4505, line: 5, elements: !990)
!4505 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !286, file: !94, line: 772, baseType: !4507, size: 64, offset: 4992)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4509, line: 18, flags: DIFlagFwdDecl)
!4509 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !286, file: !94, line: 773, baseType: !4511, size: 64, offset: 5056)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4513, line: 41, size: 512, elements: !4514)
!4513 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4514 = !{!4515, !4516, !4610, !4611, !4612, !4613}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4512, file: !4513, line: 42, baseType: !4511, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4512, file: !4513, line: 43, baseType: !4517, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4519)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4513, line: 125, size: 1408, elements: !4520)
!4520 = !{!4521, !4525, !4529, !4535, !4539, !4540, !4545, !4549, !4553, !4557, !4561, !4562, !4566, !4570, !4574, !4585, !4586, !4587, !4588, !4598, !4602, !4606}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4519, file: !4513, line: 126, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!4511, !4511}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4519, file: !4513, line: 127, baseType: !4526, size: 64, offset: 64)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{null, !4511}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4519, file: !4513, line: 128, baseType: !4530, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!783, !4533}
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4512)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4519, file: !4513, line: 129, baseType: !4536, size: 64, offset: 192)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!2606, !4533, !4227}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4519, file: !4513, line: 131, baseType: !4530, size: 64, offset: 256)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4519, file: !4513, line: 133, baseType: !4541, size: 64, offset: 320)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!4544, !4533}
!4544 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4513, line: 132, flags: DIFlagFwdDecl)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4519, file: !4513, line: 134, baseType: !4546, size: 64, offset: 384)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!783, !4533, !181}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4519, file: !4513, line: 136, baseType: !4550, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!109, !4533, !181, !7, !171, !415}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4519, file: !4513, line: 141, baseType: !4554, size: 64, offset: 512)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!109, !4533, !181, !1038, !415}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4519, file: !4513, line: 144, baseType: !4558, size: 64, offset: 576)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!181, !4533}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4519, file: !4513, line: 145, baseType: !4558, size: 64, offset: 640)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4519, file: !4513, line: 146, baseType: !4563, size: 64, offset: 704)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!4511, !4533}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4519, file: !4513, line: 148, baseType: !4567, size: 64, offset: 768)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!4511, !4533, !4511}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4519, file: !4513, line: 151, baseType: !4571, size: 64, offset: 832)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!4511, !4533, !181}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4519, file: !4513, line: 153, baseType: !4575, size: 64, offset: 896)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!109, !4533, !181, !181, !7, !7, !4578}
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4513, line: 94, size: 640, elements: !4580)
!4580 = !{!4581, !4582, !4583}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4579, file: !4513, line: 95, baseType: !4511, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4579, file: !4513, line: 96, baseType: !7, size: 32, offset: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4579, file: !4513, line: 97, baseType: !4584, size: 512, offset: 128)
!4584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 512, elements: !1633)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4519, file: !4513, line: 158, baseType: !4567, size: 64, offset: 960)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4519, file: !4513, line: 161, baseType: !4563, size: 64, offset: 1024)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4519, file: !4513, line: 163, baseType: !4522, size: 64, offset: 1088)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4519, file: !4513, line: 164, baseType: !4589, size: 64, offset: 1152)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!109, !4533, !4592}
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4513, line: 73, size: 128, elements: !4594)
!4594 = !{!4595, !4596, !4597}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4593, file: !4513, line: 74, baseType: !7, size: 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4593, file: !4513, line: 75, baseType: !7, size: 32, offset: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4593, file: !4513, line: 76, baseType: !4533, size: 64, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4519, file: !4513, line: 166, baseType: !4599, size: 64, offset: 1216)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!171, !4511, !109}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4519, file: !4513, line: 167, baseType: !4603, size: 64, offset: 1280)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!109, !4533, !7}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4519, file: !4513, line: 168, baseType: !4607, size: 64, offset: 1344)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!109, !4511}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4512, file: !4513, line: 44, baseType: !285, size: 64, offset: 128)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4512, file: !4513, line: 45, baseType: !197, size: 128, offset: 192)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4512, file: !4513, line: 46, baseType: !197, size: 128, offset: 320)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4512, file: !4513, line: 47, baseType: !330, size: 8, offset: 448)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !286, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !286, file: !94, line: 778, baseType: !598, size: 32, offset: 5152)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !286, file: !94, line: 779, baseType: !260, size: 32, offset: 5184)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !286, file: !94, line: 781, baseType: !302, size: 32, offset: 5216)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !286, file: !94, line: 782, baseType: !197, size: 128, offset: 5248)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !286, file: !94, line: 784, baseType: !4620, size: 64, offset: 5376)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4622)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4623, line: 52, size: 768, elements: !4624)
!4623 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4624 = !{!4625, !4626, !4627, !4628, !4629, !4633, !4637, !4638, !4639, !4640, !4644, !4648}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4622, file: !4623, line: 53, baseType: !181, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4622, file: !4623, line: 55, baseType: !419, size: 64, offset: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4622, file: !4623, line: 56, baseType: !419, size: 64, offset: 128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4622, file: !4623, line: 58, baseType: !4224, size: 64, offset: 192)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4622, file: !4623, line: 59, baseType: !4630, size: 64, offset: 256)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!368, !4227, !4233}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4622, file: !4623, line: 61, baseType: !4634, size: 64, offset: 320)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{null, !4620}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4622, file: !4623, line: 62, baseType: !4235, size: 64, offset: 384)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4622, file: !4623, line: 64, baseType: !4244, size: 64, offset: 448)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4622, file: !4623, line: 66, baseType: !4064, size: 64, offset: 512)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4622, file: !4623, line: 67, baseType: !4641, size: 64, offset: 576)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!2606, !4227}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4622, file: !4623, line: 69, baseType: !4645, size: 64, offset: 640)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{null, !4227, !4096, !4097}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4622, file: !4623, line: 71, baseType: !4239, size: 64, offset: 704)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !286, file: !94, line: 785, baseType: !419, size: 64, offset: 5440)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !286, file: !94, line: 787, baseType: !4235, size: 64, offset: 5504)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !286, file: !94, line: 788, baseType: !4652, size: 64, offset: 5568)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !286, file: !94, line: 789, baseType: !4655, size: 64, offset: 5632)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !286, file: !94, line: 791, baseType: !4658, size: 64, offset: 5696)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4660)
!4660 = !{!4661, !4662, !4663, !4664, !4665}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4659, file: !94, line: 598, baseType: !116, size: 32)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4659, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4659, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4659, file: !94, line: 601, baseType: !783, size: 8, offset: 96)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4659, file: !94, line: 602, baseType: !783, size: 8, offset: 104)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !286, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !286, file: !94, line: 795, baseType: !783, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !286, file: !94, line: 796, baseType: !783, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !286, file: !94, line: 797, baseType: !783, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !286, file: !94, line: 798, baseType: !783, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !286, file: !94, line: 799, baseType: !783, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !205, file: !157, line: 676, baseType: !286, size: 5824, offset: 2240)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !205, file: !157, line: 677, baseType: !433, size: 64, offset: 8064)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !205, file: !157, line: 678, baseType: !433, size: 64, offset: 8128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !205, file: !157, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !205, file: !157, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !194, file: !157, line: 325, baseType: !204, size: 64, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !194, file: !157, line: 327, baseType: !171, size: 64, offset: 256)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !194, file: !157, line: 328, baseType: !268, size: 64, offset: 320)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !194, file: !157, line: 329, baseType: !4681, size: 64, offset: 384)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !157, line: 76, size: 832, elements: !4683)
!4683 = !{!4684, !4685, !4686, !4689, !4690}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4682, file: !157, line: 77, baseType: !204, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4682, file: !157, line: 78, baseType: !197, size: 128, offset: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4682, file: !157, line: 79, baseType: !4687, size: 64, offset: 192)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !157, line: 79, flags: DIFlagFwdDecl)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4682, file: !157, line: 80, baseType: !272, size: 8, offset: 256)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4682, file: !157, line: 81, baseType: !289, size: 512, offset: 320)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !194, file: !157, line: 331, baseType: !7, size: 32, offset: 448)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !194, file: !157, line: 332, baseType: !281, size: 16, offset: 480)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !194, file: !157, line: 333, baseType: !281, size: 16, offset: 496)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !194, file: !157, line: 334, baseType: !281, size: 16, offset: 512)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !194, file: !157, line: 335, baseType: !281, size: 16, offset: 528)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !194, file: !157, line: 336, baseType: !7, size: 32, offset: 544)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !194, file: !157, line: 337, baseType: !330, size: 8, offset: 576)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !194, file: !157, line: 338, baseType: !330, size: 8, offset: 584)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !194, file: !157, line: 344, baseType: !4700, size: 64, offset: 640)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4702, line: 415, size: 64, elements: !4703)
!4702 = !DIFile(filename: "drivers/pci/pcie/../pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4703 = !{!4704, !4705, !4706}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4701, file: !4702, line: 416, baseType: !330, size: 8)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4701, file: !4702, line: 417, baseType: !330, size: 8, offset: 8)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4701, file: !4702, line: 418, baseType: !260, size: 32, offset: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !194, file: !157, line: 345, baseType: !193, size: 64, offset: 704)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !194, file: !157, line: 347, baseType: !260, size: 32, offset: 768)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !194, file: !157, line: 348, baseType: !330, size: 8, offset: 800)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !194, file: !157, line: 349, baseType: !330, size: 8, offset: 808)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !194, file: !157, line: 350, baseType: !330, size: 8, offset: 816)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !194, file: !157, line: 351, baseType: !330, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !194, file: !157, line: 352, baseType: !330, size: 8, offset: 832)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !194, file: !157, line: 353, baseType: !330, size: 8, offset: 840)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !194, file: !157, line: 354, baseType: !337, size: 16, offset: 848)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !194, file: !157, line: 355, baseType: !1052, size: 64, offset: 896)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !194, file: !157, line: 357, baseType: !4718, size: 64, offset: 960)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !157, line: 918, size: 2368, elements: !4720)
!4720 = !{!4721, !4722, !4723, !4736, !4740, !4744, !4748, !4752, !4753, !4757, !4758, !4762, !4782, !4783, !4784, !4785, !4790}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4719, file: !157, line: 919, baseType: !197, size: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4719, file: !157, line: 920, baseType: !181, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4719, file: !157, line: 921, baseType: !4724, size: 64, offset: 192)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4726)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4297, line: 44, size: 320, elements: !4727)
!4727 = !{!4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4726, file: !4297, line: 45, baseType: !261, size: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4726, file: !4297, line: 45, baseType: !261, size: 32, offset: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4726, file: !4297, line: 46, baseType: !261, size: 32, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4726, file: !4297, line: 46, baseType: !261, size: 32, offset: 96)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4726, file: !4297, line: 47, baseType: !261, size: 32, offset: 128)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4726, file: !4297, line: 47, baseType: !261, size: 32, offset: 160)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4726, file: !4297, line: 48, baseType: !4313, size: 64, offset: 192)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4726, file: !4297, line: 49, baseType: !261, size: 32, offset: 256)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4719, file: !157, line: 922, baseType: !4737, size: 64, offset: 256)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!109, !193, !4724}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4719, file: !157, line: 923, baseType: !4741, size: 64, offset: 320)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{null, !193}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4719, file: !157, line: 924, baseType: !4745, size: 64, offset: 384)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!109, !193, !4324}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4719, file: !157, line: 925, baseType: !4749, size: 64, offset: 448)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!109, !193}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4719, file: !157, line: 926, baseType: !4741, size: 64, offset: 512)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4719, file: !157, line: 927, baseType: !4754, size: 64, offset: 576)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!109, !193, !109}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4719, file: !157, line: 928, baseType: !4754, size: 64, offset: 640)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4719, file: !157, line: 929, baseType: !4759, size: 64, offset: 704)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!260, !193}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4719, file: !157, line: 930, baseType: !4763, size: 64, offset: 768)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4765)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !157, line: 837, size: 448, elements: !4766)
!4766 = !{!4767, !4773, !4777, !4778, !4779, !4780, !4781}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4765, file: !157, line: 839, baseType: !4768, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!4771, !193, !4772}
!4771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !157, line: 814, baseType: !7)
!4772 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !157, line: 196, baseType: !7)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4765, file: !157, line: 843, baseType: !4774, size: 64, offset: 64)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!4771, !193}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4765, file: !157, line: 846, baseType: !4774, size: 64, offset: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4765, file: !157, line: 849, baseType: !4741, size: 64, offset: 192)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4765, file: !157, line: 850, baseType: !4741, size: 64, offset: 256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4765, file: !157, line: 853, baseType: !4741, size: 64, offset: 320)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4765, file: !157, line: 856, baseType: !4741, size: 64, offset: 384)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4719, file: !157, line: 931, baseType: !419, size: 64, offset: 832)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4719, file: !157, line: 932, baseType: !419, size: 64, offset: 896)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4719, file: !157, line: 933, baseType: !4285, size: 1152, offset: 960)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4719, file: !157, line: 934, baseType: !4786, size: 192, offset: 2112)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !157, line: 801, size: 192, elements: !4787)
!4787 = !{!4788, !4789}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4786, file: !157, line: 802, baseType: !302, size: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4786, file: !157, line: 803, baseType: !197, size: 128, offset: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4719, file: !157, line: 935, baseType: !783, size: 8, offset: 2304)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !194, file: !157, line: 358, baseType: !222, size: 64, offset: 1024)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !194, file: !157, line: 364, baseType: !4494, size: 128, offset: 1088)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !194, file: !157, line: 366, baseType: !4794, size: 32, offset: 1216)
!4794 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !157, line: 171, baseType: !109)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !194, file: !157, line: 369, baseType: !330, size: 8, offset: 1248)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !194, file: !157, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !194, file: !157, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !194, file: !157, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !194, file: !157, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !194, file: !157, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !194, file: !157, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !194, file: !157, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !194, file: !157, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !194, file: !157, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !194, file: !157, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !194, file: !157, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !194, file: !157, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !194, file: !157, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !194, file: !157, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !194, file: !157, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !194, file: !157, line: 390, baseType: !7, size: 32, offset: 1280)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !194, file: !157, line: 391, baseType: !7, size: 32, offset: 1312)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !194, file: !157, line: 394, baseType: !4814, size: 64, offset: 1344)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !157, line: 316, flags: DIFlagFwdDecl)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !194, file: !157, line: 395, baseType: !337, size: 16, offset: 1408)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !194, file: !157, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !194, file: !157, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !194, file: !157, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !194, file: !157, line: 402, baseType: !4772, size: 32, offset: 1440)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !194, file: !157, line: 403, baseType: !286, size: 5824, offset: 1472)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !194, file: !157, line: 405, baseType: !109, size: 32, offset: 7296)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !194, file: !157, line: 411, baseType: !7, size: 32, offset: 7328)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !194, file: !157, line: 412, baseType: !4825, size: 5632, offset: 7360)
!4825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 5632, elements: !4826)
!4826 = !{!4827}
!4827 = !DISubrange(count: 11)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !194, file: !157, line: 413, baseType: !216, size: 512, offset: 12992)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !194, file: !157, line: 415, baseType: !783, size: 8, offset: 13504)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !194, file: !157, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !194, file: !157, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !194, file: !157, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !194, file: !157, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !194, file: !157, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !194, file: !157, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !194, file: !157, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !194, file: !157, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !194, file: !157, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !194, file: !157, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !194, file: !157, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !194, file: !157, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !194, file: !157, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !194, file: !157, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !194, file: !157, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !194, file: !157, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !194, file: !157, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !194, file: !157, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !194, file: !157, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !194, file: !157, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !194, file: !157, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !194, file: !157, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !194, file: !157, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !194, file: !157, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !194, file: !157, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !194, file: !157, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !194, file: !157, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !194, file: !157, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !194, file: !157, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !194, file: !157, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !194, file: !157, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !194, file: !157, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !194, file: !157, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !194, file: !157, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !194, file: !157, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !194, file: !157, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !194, file: !157, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !194, file: !157, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !194, file: !157, line: 468, baseType: !4869, size: 16, offset: 13552)
!4869 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !157, line: 222, baseType: !281)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !194, file: !157, line: 469, baseType: !322, size: 32, offset: 13568)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !194, file: !157, line: 471, baseType: !302, size: 32, offset: 13600)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !194, file: !157, line: 472, baseType: !4873, size: 512, offset: 13632)
!4873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 512, elements: !2783)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !194, file: !157, line: 473, baseType: !1071, size: 64, offset: 14144)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !194, file: !157, line: 474, baseType: !4876, size: 704, offset: 14208)
!4876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 704, elements: !4826)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !194, file: !157, line: 475, baseType: !4876, size: 704, offset: 14912)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !194, file: !157, line: 487, baseType: !171, size: 64, offset: 15616)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !194, file: !157, line: 488, baseType: !661, size: 32, offset: 15680)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !194, file: !157, line: 490, baseType: !4881, size: 320, offset: 15744)
!4881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !157, line: 309, size: 320, elements: !4882)
!4882 = !{!4883, !4884, !4885}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4881, file: !157, line: 310, baseType: !703, size: 256)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4881, file: !157, line: 311, baseType: !7, size: 32, offset: 256)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4881, file: !157, line: 312, baseType: !330, size: 8, offset: 288)
!4886 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !157, line: 497, baseType: !4887, size: 64, offset: 16064)
!4887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !157, line: 497, size: 64, elements: !4888)
!4888 = !{!4889, !4916}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4887, file: !157, line: 498, baseType: !4890, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4702, line: 294, size: 1024, elements: !4892)
!4892 = !{!4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4915}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4891, file: !4702, line: 295, baseType: !109, size: 32)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4891, file: !4702, line: 296, baseType: !109, size: 32, offset: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4891, file: !4702, line: 297, baseType: !260, size: 32, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4891, file: !4702, line: 298, baseType: !337, size: 16, offset: 96)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4891, file: !4702, line: 299, baseType: !337, size: 16, offset: 112)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4891, file: !4702, line: 300, baseType: !337, size: 16, offset: 128)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4891, file: !4702, line: 301, baseType: !337, size: 16, offset: 144)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4891, file: !4702, line: 302, baseType: !337, size: 16, offset: 160)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4891, file: !4702, line: 303, baseType: !337, size: 16, offset: 176)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4891, file: !4702, line: 304, baseType: !337, size: 16, offset: 192)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4891, file: !4702, line: 305, baseType: !260, size: 32, offset: 224)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4891, file: !4702, line: 306, baseType: !330, size: 8, offset: 256)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4891, file: !4702, line: 307, baseType: !330, size: 8, offset: 264)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4891, file: !4702, line: 308, baseType: !337, size: 16, offset: 272)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4891, file: !4702, line: 309, baseType: !193, size: 64, offset: 320)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4891, file: !4702, line: 310, baseType: !193, size: 64, offset: 384)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4891, file: !4702, line: 311, baseType: !260, size: 32, offset: 448)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4891, file: !4702, line: 312, baseType: !330, size: 8, offset: 480)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4891, file: !4702, line: 313, baseType: !337, size: 16, offset: 496)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4891, file: !4702, line: 314, baseType: !337, size: 16, offset: 512)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4891, file: !4702, line: 315, baseType: !4914, size: 384, offset: 576)
!4914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 384, elements: !1936)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4891, file: !4702, line: 316, baseType: !783, size: 8, offset: 960)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4887, file: !157, line: 499, baseType: !193, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !194, file: !157, line: 501, baseType: !337, size: 16, offset: 16128)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !194, file: !157, line: 502, baseType: !330, size: 8, offset: 16144)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !194, file: !157, line: 505, baseType: !337, size: 16, offset: 16160)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !194, file: !157, line: 506, baseType: !260, size: 32, offset: 16192)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !194, file: !157, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !194, file: !157, line: 510, baseType: !337, size: 16, offset: 16240)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !194, file: !157, line: 511, baseType: !337, size: 16, offset: 16256)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !194, file: !157, line: 519, baseType: !337, size: 16, offset: 16272)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !194, file: !157, line: 520, baseType: !221, size: 64, offset: 16320)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !194, file: !157, line: 521, baseType: !415, size: 64, offset: 16384)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !194, file: !157, line: 526, baseType: !181, size: 64, offset: 16448)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !194, file: !157, line: 528, baseType: !230, size: 64, offset: 16512)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !194, file: !157, line: 531, baseType: !4930, size: 56, offset: 16576)
!4930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 56, elements: !824)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !189, file: !178, line: 60, baseType: !260, size: 32, offset: 128)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "priv_data", scope: !189, file: !178, line: 61, baseType: !171, size: 64, offset: 192)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !189, file: !178, line: 62, baseType: !286, size: 5824, offset: 256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !177, file: !178, line: 79, baseType: !4935, size: 64, offset: 128)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{null, !188}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !177, file: !178, line: 80, baseType: !185, size: 64, offset: 192)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !177, file: !178, line: 81, baseType: !185, size: 64, offset: 256)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !177, file: !178, line: 82, baseType: !185, size: 64, offset: 320)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !177, file: !178, line: 83, baseType: !185, size: 64, offset: 384)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !177, file: !178, line: 84, baseType: !185, size: 64, offset: 448)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !177, file: !178, line: 86, baseType: !185, size: 64, offset: 512)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "port_type", scope: !177, file: !178, line: 88, baseType: !109, size: 32, offset: 576)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !177, file: !178, line: 89, baseType: !260, size: 32, offset: 608)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !177, file: !178, line: 91, baseType: !4285, size: 1152, offset: 640)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !173, file: !3, line: 35, baseType: !285, size: 64, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !173, file: !3, line: 36, baseType: !260, size: 32, offset: 128)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !222)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcie_callback_t", file: !3, line: 378, baseType: !185)
!4954 = !{!0, !4955, !4966, !4968, !4970, !4972, !4974, !4977, !4980, !4982, !4985, !4988, !4993, !5016, !5018, !5023, !5025, !5028, !5030, !5035, !5037}
!4955 = !DIGlobalVariableExpression(var: !4956, expr: !DIExpression())
!4956 = distinct !DIGlobalVariable(name: "__setup_pcie_port_setup", scope: !2, file: !3, line: 627, type: !4957, isLocal: true, isDefinition: true, align: 64)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4958, line: 324, size: 192, elements: !4959)
!4958 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4959 = !{!4960, !4961, !4965}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4957, file: !4958, line: 325, baseType: !181, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4957, file: !4958, line: 326, baseType: !4962, size: 64, offset: 64)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!109, !368}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4957, file: !4958, line: 327, baseType: !109, size: 32, offset: 128)
!4966 = !DIGlobalVariableExpression(var: !4967, expr: !DIExpression())
!4967 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pcieportdrv__296_843_pcie_portdrv_init6297", scope: !2, file: !3, line: 843, type: !171, isLocal: true, isDefinition: true)
!4968 = !DIGlobalVariableExpression(var: !4969, expr: !DIExpression())
!4969 = distinct !DIGlobalVariable(name: "pcie_ports_disabled", scope: !2, file: !3, line: 601, type: !783, isLocal: false, isDefinition: true)
!4970 = !DIGlobalVariableExpression(var: !4971, expr: !DIExpression())
!4971 = distinct !DIGlobalVariable(name: "pcie_ports_native", scope: !2, file: !3, line: 608, type: !783, isLocal: false, isDefinition: true)
!4972 = !DIGlobalVariableExpression(var: !4973, expr: !DIExpression())
!4973 = distinct !DIGlobalVariable(name: "pcie_ports_dpc_native", scope: !2, file: !3, line: 614, type: !783, isLocal: false, isDefinition: true)
!4974 = !DIGlobalVariableExpression(var: !4975, expr: !DIExpression())
!4975 = distinct !DIGlobalVariable(name: "__setup_str_pcie_port_setup", scope: !2, file: !3, line: 627, type: !4976, isLocal: true, isDefinition: true, align: 8)
!4976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 96, elements: !3437)
!4977 = !DIGlobalVariableExpression(var: !4978, expr: !DIExpression())
!4978 = distinct !DIGlobalVariable(scope: null, file: !3, line: 618, type: !4979, isLocal: true, isDefinition: true)
!4979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 56, elements: !824)
!4980 = !DIGlobalVariableExpression(var: !4981, expr: !DIExpression())
!4981 = distinct !DIGlobalVariable(scope: null, file: !3, line: 620, type: !4979, isLocal: true, isDefinition: true)
!4982 = !DIGlobalVariableExpression(var: !4983, expr: !DIExpression())
!4983 = distinct !DIGlobalVariable(scope: null, file: !3, line: 622, type: !4984, isLocal: true, isDefinition: true)
!4984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 88, elements: !4826)
!4985 = !DIGlobalVariableExpression(var: !4986, expr: !DIExpression())
!4986 = distinct !DIGlobalVariable(scope: null, file: !3, line: 841, type: !4987, isLocal: true, isDefinition: true)
!4987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 96, elements: !3437)
!4988 = !DIGlobalVariableExpression(var: !4989, expr: !DIExpression())
!4989 = distinct !DIGlobalVariable(scope: null, file: !3, line: 815, type: !4990, isLocal: true, isDefinition: true)
!4990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 120, elements: !4991)
!4991 = !{!4992}
!4992 = !DISubrange(count: 15)
!4993 = !DIGlobalVariableExpression(var: !4994, expr: !DIExpression())
!4994 = distinct !DIGlobalVariable(name: "pcie_portdrv_dmi_table", scope: !2, file: !3, line: 809, type: !4995, isLocal: true, isDefinition: true)
!4995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4996, size: 5504, elements: !822)
!4996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4997)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !4297, line: 587, size: 2752, elements: !4998)
!4998 = !{!4999, !5004, !5005, !5015}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4997, file: !4297, line: 588, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!109, !5003}
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !4997, file: !4297, line: 589, baseType: !181, size: 64, offset: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !4997, file: !4297, line: 590, baseType: !5006, size: 2560, offset: 128)
!5006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5007, size: 2560, elements: !235)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !4297, line: 581, size: 640, elements: !5008)
!5008 = !{!5009, !5010, !5011}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5007, file: !4297, line: 582, baseType: !272, size: 7, flags: DIFlagBitField, extraData: i64 0)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !5007, file: !4297, line: 583, baseType: !272, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !5007, file: !4297, line: 584, baseType: !5012, size: 632, offset: 8)
!5012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 632, elements: !5013)
!5013 = !{!5014}
!5014 = !DISubrange(count: 79)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4997, file: !4297, line: 591, baseType: !171, size: 64, offset: 2688)
!5016 = !DIGlobalVariableExpression(var: !5017, expr: !DIExpression())
!5017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 803, type: !638, isLocal: true, isDefinition: true)
!5018 = !DIGlobalVariableExpression(var: !5019, expr: !DIExpression())
!5019 = distinct !DIGlobalVariable(scope: null, file: !3, line: 787, type: !5020, isLocal: true, isDefinition: true)
!5020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 72, elements: !5021)
!5021 = !{!5022}
!5022 = !DISubrange(count: 9)
!5023 = !DIGlobalVariableExpression(var: !5024, expr: !DIExpression())
!5024 = distinct !DIGlobalVariable(name: "pcie_portdriver", scope: !2, file: !3, line: 786, type: !4719, isLocal: true, isDefinition: true)
!5025 = !DIGlobalVariableExpression(var: !5026, expr: !DIExpression())
!5026 = distinct !DIGlobalVariable(name: "port_pci_ids", scope: !2, file: !3, line: 770, type: !5027, isLocal: true, isDefinition: true)
!5027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4725, size: 1280, elements: !235)
!5028 = !DIGlobalVariableExpression(var: !5029, expr: !DIExpression())
!5029 = distinct !DIGlobalVariable(scope: null, file: !3, line: 302, type: !4987, isLocal: true, isDefinition: true)
!5030 = !DIGlobalVariableExpression(var: !5031, expr: !DIExpression())
!5031 = distinct !DIGlobalVariable(scope: null, file: !147, line: 480, type: !5032, isLocal: true, isDefinition: true)
!5032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 168, elements: !5033)
!5033 = !{!5034}
!5034 = !DISubrange(count: 21)
!5035 = !DIGlobalVariableExpression(var: !5036, expr: !DIExpression())
!5036 = distinct !DIGlobalVariable(name: "pcie_portdrv_err_handler", scope: !2, file: !3, line: 780, type: !4764, isLocal: true, isDefinition: true)
!5037 = !DIGlobalVariableExpression(var: !5038, expr: !DIExpression())
!5038 = distinct !DIGlobalVariable(name: "pcie_portdrv_pm_ops", scope: !2, file: !3, line: 650, type: !4240, isLocal: true, isDefinition: true)
!5039 = !{i32 7, !"Dwarf Version", i32 5}
!5040 = !{i32 2, !"Debug Info Version", i32 3}
!5041 = !{i32 1, !"wchar_size", i32 2}
!5042 = !{i32 8, !"cf-protection-branch", i32 1}
!5043 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5044 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5045 = !{i32 1, !"Code Model", i32 2}
!5046 = !{i32 1, !"override-stack-alignment", i32 8}
!5047 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5048 = distinct !DISubprogram(name: "pcie_port_find_device", scope: !3, file: !3, line: 478, type: !5049, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5051)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!285, !193, !260}
!5051 = !{!5052, !5053, !5054, !5055}
!5052 = !DILocalVariable(name: "dev", arg: 1, scope: !5048, file: !3, line: 478, type: !193)
!5053 = !DILocalVariable(name: "service", arg: 2, scope: !5048, file: !3, line: 479, type: !260)
!5054 = !DILocalVariable(name: "device", scope: !5048, file: !3, line: 481, type: !285)
!5055 = !DILocalVariable(name: "pdrvs", scope: !5048, file: !3, line: 482, type: !173)
!5056 = !DILocation(line: 478, column: 54, scope: !5048)
!5057 = !DILocation(line: 479, column: 15, scope: !5048)
!5058 = !DILocation(line: 481, column: 2, scope: !5048)
!5059 = !DILocation(line: 481, column: 17, scope: !5048)
!5060 = !DILocation(line: 482, column: 2, scope: !5048)
!5061 = !DILocation(line: 482, column: 30, scope: !5048)
!5062 = !DILocation(line: 484, column: 8, scope: !5048)
!5063 = !DILocation(line: 484, column: 12, scope: !5048)
!5064 = !DILocation(line: 485, column: 18, scope: !5048)
!5065 = !DILocation(line: 485, column: 8, scope: !5048)
!5066 = !DILocation(line: 485, column: 16, scope: !5048)
!5067 = !DILocation(line: 486, column: 25, scope: !5048)
!5068 = !DILocation(line: 486, column: 30, scope: !5048)
!5069 = !DILocation(line: 486, column: 2, scope: !5048)
!5070 = !DILocation(line: 488, column: 17, scope: !5048)
!5071 = !DILocation(line: 488, column: 9, scope: !5048)
!5072 = !DILocation(line: 489, column: 9, scope: !5048)
!5073 = !DILocation(line: 490, column: 1, scope: !5048)
!5074 = !DILocation(line: 489, column: 2, scope: !5048)
!5075 = !DISubprogram(name: "device_for_each_child", scope: !94, file: !94, line: 1062, type: !5076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!109, !285, !171, !5078}
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!109, !285, !171}
!5081 = distinct !DISubprogram(name: "find_service_iter", scope: !3, file: !3, line: 450, type: !5079, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5082)
!5082 = !{!5083, !5084, !5085, !5086, !5087, !5088}
!5083 = !DILocalVariable(name: "device", arg: 1, scope: !5081, file: !3, line: 450, type: !285)
!5084 = !DILocalVariable(name: "data", arg: 2, scope: !5081, file: !3, line: 450, type: !171)
!5085 = !DILocalVariable(name: "service_driver", scope: !5081, file: !3, line: 452, type: !176)
!5086 = !DILocalVariable(name: "pdrvs", scope: !5081, file: !3, line: 453, type: !172)
!5087 = !DILocalVariable(name: "service", scope: !5081, file: !3, line: 454, type: !260)
!5088 = !DILocalVariable(name: "__mptr", scope: !5089, file: !3, line: 460, type: !171)
!5089 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 460, column: 20)
!5090 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 459, column: 60)
!5091 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 459, column: 6)
!5092 = !DILocation(line: 450, column: 45, scope: !5081)
!5093 = !DILocation(line: 450, column: 59, scope: !5081)
!5094 = !DILocation(line: 452, column: 2, scope: !5081)
!5095 = !DILocation(line: 452, column: 35, scope: !5081)
!5096 = !DILocation(line: 453, column: 2, scope: !5081)
!5097 = !DILocation(line: 453, column: 31, scope: !5081)
!5098 = !DILocation(line: 454, column: 2, scope: !5081)
!5099 = !DILocation(line: 454, column: 6, scope: !5081)
!5100 = !DILocation(line: 456, column: 42, scope: !5081)
!5101 = !DILocation(line: 456, column: 8, scope: !5081)
!5102 = !DILocation(line: 457, column: 12, scope: !5081)
!5103 = !DILocation(line: 457, column: 19, scope: !5081)
!5104 = !DILocation(line: 457, column: 10, scope: !5081)
!5105 = !DILocation(line: 459, column: 6, scope: !5091)
!5106 = !DILocation(line: 459, column: 14, scope: !5091)
!5107 = !DILocation(line: 459, column: 18, scope: !5091)
!5108 = !DILocation(line: 459, column: 41, scope: !5091)
!5109 = !DILocation(line: 459, column: 44, scope: !5091)
!5110 = !DILocation(line: 459, column: 52, scope: !5091)
!5111 = !DILocation(line: 459, column: 6, scope: !5081)
!5112 = !DILocation(line: 460, column: 20, scope: !5089)
!5113 = !DILocation(line: 460, column: 20, scope: !5090)
!5114 = !DILocation(line: 460, column: 18, scope: !5090)
!5115 = !DILocation(line: 461, column: 7, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 461, column: 7)
!5117 = !DILocation(line: 461, column: 23, scope: !5116)
!5118 = !DILocation(line: 461, column: 34, scope: !5116)
!5119 = !DILocation(line: 461, column: 31, scope: !5116)
!5120 = !DILocation(line: 461, column: 7, scope: !5090)
!5121 = !DILocation(line: 462, column: 17, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 461, column: 43)
!5123 = !DILocation(line: 462, column: 4, scope: !5122)
!5124 = !DILocation(line: 462, column: 11, scope: !5122)
!5125 = !DILocation(line: 462, column: 15, scope: !5122)
!5126 = !DILocation(line: 463, column: 17, scope: !5122)
!5127 = !DILocation(line: 463, column: 4, scope: !5122)
!5128 = !DILocation(line: 463, column: 11, scope: !5122)
!5129 = !DILocation(line: 463, column: 15, scope: !5122)
!5130 = !DILocation(line: 464, column: 4, scope: !5122)
!5131 = !DILocation(line: 466, column: 2, scope: !5090)
!5132 = !DILocation(line: 468, column: 2, scope: !5081)
!5133 = !DILocation(line: 469, column: 1, scope: !5081)
!5134 = distinct !DISubprogram(name: "pcie_port_service_register", scope: !3, file: !3, line: 577, type: !5135, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5137)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!109, !176}
!5137 = !{!5138}
!5138 = !DILocalVariable(name: "new", arg: 1, scope: !5134, file: !3, line: 577, type: !176)
!5139 = !DILocation(line: 577, column: 65, scope: !5134)
!5140 = !DILocation(line: 579, column: 6, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 579, column: 6)
!5142 = !{i8 0, i8 2}
!5143 = !DILocation(line: 579, column: 6, scope: !5134)
!5144 = !DILocation(line: 580, column: 3, scope: !5141)
!5145 = !DILocation(line: 582, column: 21, scope: !5134)
!5146 = !DILocation(line: 582, column: 26, scope: !5134)
!5147 = !DILocation(line: 582, column: 2, scope: !5134)
!5148 = !DILocation(line: 582, column: 7, scope: !5134)
!5149 = !DILocation(line: 582, column: 14, scope: !5134)
!5150 = !DILocation(line: 582, column: 19, scope: !5134)
!5151 = !DILocation(line: 583, column: 2, scope: !5134)
!5152 = !DILocation(line: 583, column: 7, scope: !5134)
!5153 = !DILocation(line: 583, column: 14, scope: !5134)
!5154 = !DILocation(line: 583, column: 18, scope: !5134)
!5155 = !DILocation(line: 584, column: 2, scope: !5134)
!5156 = !DILocation(line: 584, column: 7, scope: !5134)
!5157 = !DILocation(line: 584, column: 14, scope: !5134)
!5158 = !DILocation(line: 584, column: 20, scope: !5134)
!5159 = !DILocation(line: 585, column: 2, scope: !5134)
!5160 = !DILocation(line: 585, column: 7, scope: !5134)
!5161 = !DILocation(line: 585, column: 14, scope: !5134)
!5162 = !DILocation(line: 585, column: 21, scope: !5134)
!5163 = !DILocation(line: 586, column: 2, scope: !5134)
!5164 = !DILocation(line: 586, column: 7, scope: !5134)
!5165 = !DILocation(line: 586, column: 14, scope: !5134)
!5166 = !DILocation(line: 586, column: 23, scope: !5134)
!5167 = !DILocation(line: 588, column: 26, scope: !5134)
!5168 = !DILocation(line: 588, column: 31, scope: !5134)
!5169 = !DILocation(line: 588, column: 9, scope: !5134)
!5170 = !DILocation(line: 588, column: 2, scope: !5134)
!5171 = !DILocation(line: 589, column: 1, scope: !5134)
!5172 = distinct !DISubprogram(name: "pcie_port_probe_service", scope: !3, file: !3, line: 514, type: !4245, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5173)
!5173 = !{!5174, !5175, !5176, !5177, !5178, !5180}
!5174 = !DILocalVariable(name: "dev", arg: 1, scope: !5172, file: !3, line: 514, type: !285)
!5175 = !DILocalVariable(name: "pciedev", scope: !5172, file: !3, line: 516, type: !188)
!5176 = !DILocalVariable(name: "driver", scope: !5172, file: !3, line: 517, type: !176)
!5177 = !DILocalVariable(name: "status", scope: !5172, file: !3, line: 518, type: !109)
!5178 = !DILocalVariable(name: "__mptr", scope: !5179, file: !3, line: 523, type: !171)
!5179 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 523, column: 11)
!5180 = !DILocalVariable(name: "__mptr", scope: !5181, file: !3, line: 527, type: !171)
!5181 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 527, column: 12)
!5182 = !DILocation(line: 514, column: 51, scope: !5172)
!5183 = !DILocation(line: 516, column: 2, scope: !5172)
!5184 = !DILocation(line: 516, column: 22, scope: !5172)
!5185 = !DILocation(line: 517, column: 2, scope: !5172)
!5186 = !DILocation(line: 517, column: 35, scope: !5172)
!5187 = !DILocation(line: 518, column: 2, scope: !5172)
!5188 = !DILocation(line: 518, column: 6, scope: !5172)
!5189 = !DILocation(line: 520, column: 7, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 520, column: 6)
!5191 = !DILocation(line: 520, column: 11, scope: !5190)
!5192 = !DILocation(line: 520, column: 15, scope: !5190)
!5193 = !DILocation(line: 520, column: 20, scope: !5190)
!5194 = !DILocation(line: 520, column: 6, scope: !5172)
!5195 = !DILocation(line: 521, column: 3, scope: !5190)
!5196 = !DILocation(line: 523, column: 11, scope: !5179)
!5197 = !DILocation(line: 523, column: 11, scope: !5172)
!5198 = !DILocation(line: 523, column: 9, scope: !5172)
!5199 = !DILocation(line: 524, column: 7, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 524, column: 6)
!5201 = !DILocation(line: 524, column: 14, scope: !5200)
!5202 = !DILocation(line: 524, column: 18, scope: !5200)
!5203 = !DILocation(line: 524, column: 26, scope: !5200)
!5204 = !DILocation(line: 524, column: 6, scope: !5172)
!5205 = !DILocation(line: 525, column: 3, scope: !5200)
!5206 = !DILocation(line: 527, column: 12, scope: !5181)
!5207 = !DILocation(line: 527, column: 12, scope: !5172)
!5208 = !DILocation(line: 527, column: 10, scope: !5172)
!5209 = !DILocation(line: 528, column: 11, scope: !5172)
!5210 = !DILocation(line: 528, column: 19, scope: !5172)
!5211 = !DILocation(line: 528, column: 25, scope: !5172)
!5212 = !DILocation(line: 528, column: 9, scope: !5172)
!5213 = !DILocation(line: 529, column: 6, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 529, column: 6)
!5215 = !DILocation(line: 529, column: 6, scope: !5172)
!5216 = !DILocation(line: 530, column: 10, scope: !5214)
!5217 = !DILocation(line: 530, column: 3, scope: !5214)
!5218 = !DILocation(line: 532, column: 13, scope: !5172)
!5219 = !DILocation(line: 532, column: 2, scope: !5172)
!5220 = !DILocation(line: 533, column: 2, scope: !5172)
!5221 = !DILocation(line: 534, column: 1, scope: !5172)
!5222 = distinct !DISubprogram(name: "pcie_port_remove_service", scope: !3, file: !3, line: 545, type: !4245, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5223)
!5223 = !{!5224, !5225, !5226, !5227, !5229}
!5224 = !DILocalVariable(name: "dev", arg: 1, scope: !5222, file: !3, line: 545, type: !285)
!5225 = !DILocalVariable(name: "pciedev", scope: !5222, file: !3, line: 547, type: !188)
!5226 = !DILocalVariable(name: "driver", scope: !5222, file: !3, line: 548, type: !176)
!5227 = !DILocalVariable(name: "__mptr", scope: !5228, file: !3, line: 553, type: !171)
!5228 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 553, column: 12)
!5229 = !DILocalVariable(name: "__mptr", scope: !5230, file: !3, line: 554, type: !171)
!5230 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 554, column: 11)
!5231 = !DILocation(line: 545, column: 52, scope: !5222)
!5232 = !DILocation(line: 547, column: 2, scope: !5222)
!5233 = !DILocation(line: 547, column: 22, scope: !5222)
!5234 = !DILocation(line: 548, column: 2, scope: !5222)
!5235 = !DILocation(line: 548, column: 35, scope: !5222)
!5236 = !DILocation(line: 550, column: 7, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 550, column: 6)
!5238 = !DILocation(line: 550, column: 11, scope: !5237)
!5239 = !DILocation(line: 550, column: 15, scope: !5237)
!5240 = !DILocation(line: 550, column: 20, scope: !5237)
!5241 = !DILocation(line: 550, column: 6, scope: !5222)
!5242 = !DILocation(line: 551, column: 3, scope: !5237)
!5243 = !DILocation(line: 553, column: 12, scope: !5228)
!5244 = !DILocation(line: 553, column: 12, scope: !5222)
!5245 = !DILocation(line: 553, column: 10, scope: !5222)
!5246 = !DILocation(line: 554, column: 11, scope: !5230)
!5247 = !DILocation(line: 554, column: 11, scope: !5222)
!5248 = !DILocation(line: 554, column: 9, scope: !5222)
!5249 = !DILocation(line: 555, column: 6, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 555, column: 6)
!5251 = !DILocation(line: 555, column: 13, scope: !5250)
!5252 = !DILocation(line: 555, column: 16, scope: !5250)
!5253 = !DILocation(line: 555, column: 24, scope: !5250)
!5254 = !DILocation(line: 555, column: 6, scope: !5222)
!5255 = !DILocation(line: 556, column: 3, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 555, column: 32)
!5257 = !DILocation(line: 556, column: 11, scope: !5256)
!5258 = !DILocation(line: 556, column: 18, scope: !5256)
!5259 = !DILocation(line: 557, column: 14, scope: !5256)
!5260 = !DILocation(line: 557, column: 3, scope: !5256)
!5261 = !DILocation(line: 558, column: 2, scope: !5256)
!5262 = !DILocation(line: 559, column: 2, scope: !5222)
!5263 = !DILocation(line: 560, column: 1, scope: !5222)
!5264 = distinct !DISubprogram(name: "pcie_port_shutdown_service", scope: !3, file: !3, line: 571, type: !4236, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5265)
!5265 = !{!5266}
!5266 = !DILocalVariable(name: "dev", arg: 1, scope: !5264, file: !3, line: 571, type: !285)
!5267 = !DILocation(line: 571, column: 55, scope: !5264)
!5268 = !DILocation(line: 571, column: 61, scope: !5264)
!5269 = !DISubprogram(name: "driver_register", scope: !88, file: !88, line: 125, type: !5270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!109, !4284}
!5272 = distinct !DISubprogram(name: "pcie_port_service_unregister", scope: !3, file: !3, line: 595, type: !5273, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5275)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{null, !176}
!5275 = !{!5276}
!5276 = !DILocalVariable(name: "drv", arg: 1, scope: !5272, file: !3, line: 595, type: !176)
!5277 = !DILocation(line: 595, column: 68, scope: !5272)
!5278 = !DILocation(line: 597, column: 21, scope: !5272)
!5279 = !DILocation(line: 597, column: 26, scope: !5272)
!5280 = !DILocation(line: 597, column: 2, scope: !5272)
!5281 = !DILocation(line: 598, column: 1, scope: !5272)
!5282 = !DISubprogram(name: "driver_unregister", scope: !88, file: !88, line: 126, type: !5283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{null, !4284}
!5285 = distinct !DISubprogram(name: "pcie_port_setup", scope: !3, file: !3, line: 616, type: !4963, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5286)
!5286 = !{!5287}
!5287 = !DILocalVariable(name: "str", arg: 1, scope: !5285, file: !3, line: 616, type: !368)
!5288 = !DILocation(line: 616, column: 41, scope: !5285)
!5289 = !DILocation(line: 618, column: 15, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 618, column: 6)
!5291 = !DILocation(line: 618, column: 7, scope: !5290)
!5292 = !DILocation(line: 618, column: 6, scope: !5285)
!5293 = !DILocation(line: 619, column: 23, scope: !5290)
!5294 = !DILocation(line: 619, column: 3, scope: !5290)
!5295 = !DILocation(line: 620, column: 20, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 620, column: 11)
!5297 = !DILocation(line: 620, column: 12, scope: !5296)
!5298 = !DILocation(line: 620, column: 11, scope: !5290)
!5299 = !DILocation(line: 621, column: 21, scope: !5296)
!5300 = !DILocation(line: 621, column: 3, scope: !5296)
!5301 = !DILocation(line: 622, column: 20, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 622, column: 11)
!5303 = !DILocation(line: 622, column: 12, scope: !5302)
!5304 = !DILocation(line: 622, column: 11, scope: !5296)
!5305 = !DILocation(line: 623, column: 25, scope: !5302)
!5306 = !DILocation(line: 623, column: 3, scope: !5302)
!5307 = !DILocation(line: 625, column: 2, scope: !5285)
!5308 = distinct !DISubprogram(name: "__initstub__kmod_pcieportdrv__296_843_pcie_portdrv_init6", scope: !3, file: !3, line: 843, type: !797, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5309 = !DILocation(line: 843, column: 1, scope: !5308)
!5310 = distinct !DISubprogram(name: "pcie_portdrv_init", scope: !3, file: !3, line: 833, type: !797, scopeLine: 834, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5311 = !DILocation(line: 835, column: 6, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 835, column: 6)
!5313 = !DILocation(line: 835, column: 6, scope: !5310)
!5314 = !DILocation(line: 836, column: 3, scope: !5312)
!5315 = !DILocation(line: 838, column: 2, scope: !5310)
!5316 = !DILocation(line: 839, column: 2, scope: !5310)
!5317 = !DILocation(line: 841, column: 9, scope: !5310)
!5318 = !DILocation(line: 841, column: 2, scope: !5310)
!5319 = !DILocation(line: 842, column: 1, scope: !5310)
!5320 = !DISubprogram(name: "get_device", scope: !94, file: !94, line: 1230, type: !5321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!285, !285}
!5323 = !DISubprogram(name: "put_device", scope: !94, file: !94, line: 1231, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5324 = !DISubprogram(name: "strncmp", scope: !5325, file: !5325, line: 91, type: !5326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5325 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5326 = !DISubroutineType(types: !5327)
!5327 = !{!109, !181, !181, !416}
!5328 = distinct !DISubprogram(name: "pcie_init_services", scope: !3, file: !3, line: 825, type: !1066, scopeLine: 826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5329 = !DILocation(line: 827, column: 2, scope: !5328)
!5330 = !DILocation(line: 828, column: 2, scope: !5328)
!5331 = !DILocation(line: 829, column: 2, scope: !5328)
!5332 = !DILocation(line: 830, column: 2, scope: !5328)
!5333 = !DILocation(line: 831, column: 1, scope: !5328)
!5334 = !DISubprogram(name: "dmi_check_system", scope: !5335, file: !5335, line: 100, type: !5001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5335 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!5336 = !DISubprogram(name: "__pci_register_driver", scope: !157, file: !157, line: 1557, type: !5337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5337 = !DISubroutineType(types: !5338)
!5338 = !{!109, !4718, !632, !181}
!5339 = distinct !DISubprogram(name: "pcie_aer_init", scope: !178, file: !178, line: 33, type: !797, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5340 = !DILocation(line: 33, column: 41, scope: !5339)
!5341 = !DISubprogram(name: "pcie_pme_init", scope: !178, file: !178, line: 43, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5342 = distinct !DISubprogram(name: "pcie_dpc_init", scope: !178, file: !178, line: 51, type: !797, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5343 = !DILocation(line: 51, column: 41, scope: !5342)
!5344 = distinct !DISubprogram(name: "pcie_hp_init", scope: !178, file: !178, line: 39, type: !797, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5345 = !DILocation(line: 39, column: 40, scope: !5344)
!5346 = distinct !DISubprogram(name: "dmi_pcie_pme_disable_msi", scope: !3, file: !3, line: 801, type: !5001, scopeLine: 802, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5347)
!5347 = !{!5348}
!5348 = !DILocalVariable(name: "d", arg: 1, scope: !5346, file: !3, line: 801, type: !5003)
!5349 = !DILocation(line: 801, column: 72, scope: !5346)
!5350 = !DILocation(line: 803, column: 2, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 803, column: 2)
!5352 = !DILocation(line: 803, column: 2, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 803, column: 2)
!5354 = !DILocation(line: 805, column: 2, scope: !5346)
!5355 = !DILocation(line: 806, column: 2, scope: !5346)
!5356 = !DISubprogram(name: "_printk", scope: !5357, file: !5357, line: 153, type: !5358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5357 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5358 = !DISubroutineType(types: !5359)
!5359 = !{!109, !181, null}
!5360 = distinct !DISubprogram(name: "pcie_pme_disable_msi", scope: !178, file: !178, line: 106, type: !1066, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5361 = !DILocation(line: 108, column: 24, scope: !5360)
!5362 = !DILocation(line: 109, column: 1, scope: !5360)
!5363 = distinct !DISubprogram(name: "pcie_portdrv_probe", scope: !3, file: !3, line: 679, type: !4738, scopeLine: 681, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5364)
!5364 = !{!5365, !5366, !5367, !5368}
!5365 = !DILocalVariable(name: "dev", arg: 1, scope: !5363, file: !3, line: 679, type: !193)
!5366 = !DILocalVariable(name: "id", arg: 2, scope: !5363, file: !3, line: 680, type: !4724)
!5367 = !DILocalVariable(name: "type", scope: !5363, file: !3, line: 682, type: !109)
!5368 = !DILocalVariable(name: "status", scope: !5363, file: !3, line: 683, type: !109)
!5369 = !DILocation(line: 679, column: 47, scope: !5363)
!5370 = !DILocation(line: 680, column: 34, scope: !5363)
!5371 = !DILocation(line: 682, column: 2, scope: !5363)
!5372 = !DILocation(line: 682, column: 6, scope: !5363)
!5373 = !DILocation(line: 682, column: 27, scope: !5363)
!5374 = !DILocation(line: 682, column: 13, scope: !5363)
!5375 = !DILocation(line: 683, column: 2, scope: !5363)
!5376 = !DILocation(line: 683, column: 6, scope: !5363)
!5377 = !DILocation(line: 685, column: 19, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 685, column: 6)
!5379 = !DILocation(line: 685, column: 7, scope: !5378)
!5380 = !DILocation(line: 685, column: 24, scope: !5378)
!5381 = !DILocation(line: 686, column: 8, scope: !5378)
!5382 = !DILocation(line: 686, column: 13, scope: !5378)
!5383 = !DILocation(line: 686, column: 40, scope: !5378)
!5384 = !DILocation(line: 687, column: 8, scope: !5378)
!5385 = !DILocation(line: 687, column: 13, scope: !5378)
!5386 = !DILocation(line: 687, column: 39, scope: !5378)
!5387 = !DILocation(line: 688, column: 8, scope: !5378)
!5388 = !DILocation(line: 688, column: 13, scope: !5378)
!5389 = !DILocation(line: 688, column: 41, scope: !5378)
!5390 = !DILocation(line: 689, column: 8, scope: !5378)
!5391 = !DILocation(line: 689, column: 13, scope: !5378)
!5392 = !DILocation(line: 685, column: 6, scope: !5363)
!5393 = !DILocation(line: 690, column: 3, scope: !5378)
!5394 = !DILocation(line: 692, column: 6, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 692, column: 6)
!5396 = !DILocation(line: 692, column: 11, scope: !5395)
!5397 = !DILocation(line: 692, column: 6, scope: !5363)
!5398 = !DILocation(line: 693, column: 18, scope: !5395)
!5399 = !DILocation(line: 693, column: 3, scope: !5395)
!5400 = !DILocation(line: 695, column: 37, scope: !5363)
!5401 = !DILocation(line: 695, column: 11, scope: !5363)
!5402 = !DILocation(line: 695, column: 9, scope: !5363)
!5403 = !DILocation(line: 696, column: 6, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 696, column: 6)
!5405 = !DILocation(line: 696, column: 6, scope: !5363)
!5406 = !DILocation(line: 697, column: 10, scope: !5404)
!5407 = !DILocation(line: 697, column: 3, scope: !5404)
!5408 = !DILocation(line: 699, column: 17, scope: !5363)
!5409 = !DILocation(line: 699, column: 2, scope: !5363)
!5410 = !DILocation(line: 701, column: 27, scope: !5363)
!5411 = !DILocation(line: 701, column: 32, scope: !5363)
!5412 = !DILocation(line: 701, column: 2, scope: !5363)
!5413 = !DILocation(line: 704, column: 29, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 704, column: 6)
!5415 = !DILocation(line: 704, column: 6, scope: !5414)
!5416 = !DILocation(line: 704, column: 6, scope: !5363)
!5417 = !DILocation(line: 710, column: 37, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 704, column: 35)
!5419 = !DILocation(line: 710, column: 42, scope: !5418)
!5420 = !DILocation(line: 710, column: 3, scope: !5418)
!5421 = !DILocation(line: 711, column: 31, scope: !5418)
!5422 = !DILocation(line: 711, column: 36, scope: !5418)
!5423 = !DILocation(line: 711, column: 3, scope: !5418)
!5424 = !DILocation(line: 712, column: 30, scope: !5418)
!5425 = !DILocation(line: 712, column: 35, scope: !5418)
!5426 = !DILocation(line: 712, column: 3, scope: !5418)
!5427 = !DILocation(line: 713, column: 31, scope: !5418)
!5428 = !DILocation(line: 713, column: 36, scope: !5418)
!5429 = !DILocation(line: 713, column: 3, scope: !5418)
!5430 = !DILocation(line: 714, column: 21, scope: !5418)
!5431 = !DILocation(line: 714, column: 26, scope: !5418)
!5432 = !DILocation(line: 714, column: 3, scope: !5418)
!5433 = !DILocation(line: 715, column: 2, scope: !5418)
!5434 = !DILocation(line: 717, column: 2, scope: !5363)
!5435 = !DILocation(line: 718, column: 1, scope: !5363)
!5436 = distinct !DISubprogram(name: "pcie_portdrv_remove", scope: !3, file: !3, line: 720, type: !4742, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5437)
!5437 = !{!5438}
!5438 = !DILocalVariable(name: "dev", arg: 1, scope: !5436, file: !3, line: 720, type: !193)
!5439 = !DILocation(line: 720, column: 49, scope: !5436)
!5440 = !DILocation(line: 722, column: 29, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 722, column: 6)
!5442 = !DILocation(line: 722, column: 6, scope: !5441)
!5443 = !DILocation(line: 722, column: 6, scope: !5436)
!5444 = !DILocation(line: 723, column: 22, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 722, column: 35)
!5446 = !DILocation(line: 723, column: 27, scope: !5445)
!5447 = !DILocation(line: 723, column: 3, scope: !5445)
!5448 = !DILocation(line: 724, column: 28, scope: !5445)
!5449 = !DILocation(line: 724, column: 33, scope: !5445)
!5450 = !DILocation(line: 724, column: 3, scope: !5445)
!5451 = !DILocation(line: 725, column: 36, scope: !5445)
!5452 = !DILocation(line: 725, column: 41, scope: !5445)
!5453 = !DILocation(line: 725, column: 3, scope: !5445)
!5454 = !DILocation(line: 726, column: 2, scope: !5445)
!5455 = !DILocation(line: 728, column: 26, scope: !5436)
!5456 = !DILocation(line: 728, column: 2, scope: !5436)
!5457 = !DILocation(line: 730, column: 21, scope: !5436)
!5458 = !DILocation(line: 730, column: 2, scope: !5436)
!5459 = !DILocation(line: 731, column: 1, scope: !5436)
!5460 = distinct !DISubprogram(name: "pcie_portdrv_shutdown", scope: !3, file: !3, line: 733, type: !4742, scopeLine: 734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5461)
!5461 = !{!5462}
!5462 = !DILocalVariable(name: "dev", arg: 1, scope: !5460, file: !3, line: 733, type: !193)
!5463 = !DILocation(line: 733, column: 51, scope: !5460)
!5464 = !DILocation(line: 735, column: 29, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 735, column: 6)
!5466 = !DILocation(line: 735, column: 6, scope: !5465)
!5467 = !DILocation(line: 735, column: 6, scope: !5460)
!5468 = !DILocation(line: 736, column: 22, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 735, column: 35)
!5470 = !DILocation(line: 736, column: 27, scope: !5469)
!5471 = !DILocation(line: 736, column: 3, scope: !5469)
!5472 = !DILocation(line: 737, column: 28, scope: !5469)
!5473 = !DILocation(line: 737, column: 33, scope: !5469)
!5474 = !DILocation(line: 737, column: 3, scope: !5469)
!5475 = !DILocation(line: 738, column: 36, scope: !5469)
!5476 = !DILocation(line: 738, column: 41, scope: !5469)
!5477 = !DILocation(line: 738, column: 3, scope: !5469)
!5478 = !DILocation(line: 739, column: 2, scope: !5469)
!5479 = !DILocation(line: 741, column: 26, scope: !5460)
!5480 = !DILocation(line: 741, column: 2, scope: !5460)
!5481 = !DILocation(line: 742, column: 1, scope: !5460)
!5482 = distinct !DISubprogram(name: "pci_pcie_type", scope: !157, file: !157, line: 2442, type: !5483, scopeLine: 2443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5487)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!109, !5485}
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!5487 = !{!5488}
!5488 = !DILocalVariable(name: "dev", arg: 1, scope: !5482, file: !157, line: 2442, type: !5485)
!5489 = !DILocation(line: 2442, column: 55, scope: !5482)
!5490 = !DILocation(line: 2444, column: 24, scope: !5482)
!5491 = !DILocation(line: 2444, column: 10, scope: !5482)
!5492 = !DILocation(line: 2444, column: 29, scope: !5482)
!5493 = !DILocation(line: 2444, column: 51, scope: !5482)
!5494 = !DILocation(line: 2444, column: 2, scope: !5482)
!5495 = distinct !DISubprogram(name: "pci_is_pcie", scope: !157, file: !157, line: 2424, type: !5496, scopeLine: 2425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5498)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!783, !193}
!5498 = !{!5499}
!5499 = !DILocalVariable(name: "dev", arg: 1, scope: !5495, file: !157, line: 2424, type: !193)
!5500 = !DILocation(line: 2424, column: 48, scope: !5495)
!5501 = !DILocation(line: 2426, column: 22, scope: !5495)
!5502 = !DILocation(line: 2426, column: 9, scope: !5495)
!5503 = !DILocation(line: 2426, column: 2, scope: !5495)
!5504 = !DISubprogram(name: "pcie_link_rcec", scope: !4702, file: !4702, line: 439, type: !4742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5505 = distinct !DISubprogram(name: "pcie_port_device_register", scope: !3, file: !3, line: 326, type: !4750, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5506)
!5506 = !{!5507, !5508, !5509, !5510, !5511, !5512, !5516, !5520, !5521}
!5507 = !DILocalVariable(name: "dev", arg: 1, scope: !5505, file: !3, line: 326, type: !193)
!5508 = !DILocalVariable(name: "status", scope: !5505, file: !3, line: 328, type: !109)
!5509 = !DILocalVariable(name: "capabilities", scope: !5505, file: !3, line: 328, type: !109)
!5510 = !DILocalVariable(name: "i", scope: !5505, file: !3, line: 328, type: !109)
!5511 = !DILocalVariable(name: "nr_service", scope: !5505, file: !3, line: 328, type: !109)
!5512 = !DILocalVariable(name: "irqs", scope: !5505, file: !3, line: 329, type: !5513)
!5513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 160, elements: !5514)
!5514 = !{!5515}
!5515 = !DISubrange(count: 5)
!5516 = !DILocalVariable(name: "service", scope: !5517, file: !3, line: 360, type: !109)
!5517 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 359, column: 53)
!5518 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 359, column: 2)
!5519 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 359, column: 2)
!5520 = !DILabel(scope: !5505, name: "error_cleanup_irqs", file: !3, line: 371)
!5521 = !DILabel(scope: !5505, name: "error_disable", file: !3, line: 373)
!5522 = !DILocation(line: 326, column: 54, scope: !5505)
!5523 = !DILocation(line: 328, column: 2, scope: !5505)
!5524 = !DILocation(line: 328, column: 6, scope: !5505)
!5525 = !DILocation(line: 328, column: 14, scope: !5505)
!5526 = !DILocation(line: 328, column: 28, scope: !5505)
!5527 = !DILocation(line: 328, column: 31, scope: !5505)
!5528 = !DILocation(line: 329, column: 2, scope: !5505)
!5529 = !DILocation(line: 329, column: 6, scope: !5505)
!5530 = !DILocation(line: 332, column: 29, scope: !5505)
!5531 = !DILocation(line: 332, column: 11, scope: !5505)
!5532 = !DILocation(line: 332, column: 9, scope: !5505)
!5533 = !DILocation(line: 333, column: 6, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 333, column: 6)
!5535 = !DILocation(line: 333, column: 6, scope: !5505)
!5536 = !DILocation(line: 334, column: 10, scope: !5534)
!5537 = !DILocation(line: 334, column: 3, scope: !5534)
!5538 = !DILocation(line: 337, column: 44, scope: !5505)
!5539 = !DILocation(line: 337, column: 17, scope: !5505)
!5540 = !DILocation(line: 337, column: 15, scope: !5505)
!5541 = !DILocation(line: 338, column: 7, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 338, column: 6)
!5543 = !DILocation(line: 338, column: 6, scope: !5505)
!5544 = !DILocation(line: 339, column: 3, scope: !5542)
!5545 = !DILocation(line: 341, column: 17, scope: !5505)
!5546 = !DILocation(line: 341, column: 2, scope: !5505)
!5547 = !DILocation(line: 349, column: 34, scope: !5505)
!5548 = !DILocation(line: 349, column: 39, scope: !5505)
!5549 = !DILocation(line: 349, column: 45, scope: !5505)
!5550 = !DILocation(line: 349, column: 11, scope: !5505)
!5551 = !DILocation(line: 349, column: 9, scope: !5505)
!5552 = !DILocation(line: 350, column: 6, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 350, column: 6)
!5554 = !DILocation(line: 350, column: 6, scope: !5505)
!5555 = !DILocation(line: 351, column: 16, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 350, column: 14)
!5557 = !DILocation(line: 352, column: 8, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 352, column: 7)
!5559 = !DILocation(line: 352, column: 7, scope: !5556)
!5560 = !DILocation(line: 353, column: 4, scope: !5558)
!5561 = !DILocation(line: 354, column: 2, scope: !5556)
!5562 = !DILocation(line: 357, column: 9, scope: !5505)
!5563 = !DILocation(line: 358, column: 13, scope: !5505)
!5564 = !DILocation(line: 359, column: 9, scope: !5519)
!5565 = !DILocation(line: 359, column: 7, scope: !5519)
!5566 = !DILocation(line: 359, column: 14, scope: !5518)
!5567 = !DILocation(line: 359, column: 16, scope: !5518)
!5568 = !DILocation(line: 359, column: 2, scope: !5519)
!5569 = !DILocation(line: 360, column: 3, scope: !5517)
!5570 = !DILocation(line: 360, column: 7, scope: !5517)
!5571 = !DILocation(line: 360, column: 22, scope: !5517)
!5572 = !DILocation(line: 360, column: 19, scope: !5517)
!5573 = !DILocation(line: 361, column: 9, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 361, column: 7)
!5575 = !DILocation(line: 361, column: 24, scope: !5574)
!5576 = !DILocation(line: 361, column: 22, scope: !5574)
!5577 = !DILocation(line: 361, column: 7, scope: !5517)
!5578 = !DILocation(line: 362, column: 4, scope: !5574)
!5579 = !DILocation(line: 363, column: 25, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 363, column: 7)
!5581 = !DILocation(line: 363, column: 30, scope: !5580)
!5582 = !DILocation(line: 363, column: 44, scope: !5580)
!5583 = !DILocation(line: 363, column: 39, scope: !5580)
!5584 = !DILocation(line: 363, column: 8, scope: !5580)
!5585 = !DILocation(line: 363, column: 7, scope: !5517)
!5586 = !DILocation(line: 364, column: 14, scope: !5580)
!5587 = !DILocation(line: 364, column: 4, scope: !5580)
!5588 = !DILocation(line: 365, column: 2, scope: !5518)
!5589 = !DILocation(line: 365, column: 2, scope: !5517)
!5590 = !DILocation(line: 359, column: 49, scope: !5518)
!5591 = !DILocation(line: 359, column: 2, scope: !5518)
!5592 = distinct !{!5592, !5568, !5593, !5594, !5595}
!5593 = !DILocation(line: 365, column: 2, scope: !5519)
!5594 = !{!"llvm.loop.mustprogress"}
!5595 = !{!"llvm.loop.unroll.disable"}
!5596 = !DILocation(line: 366, column: 7, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 366, column: 6)
!5598 = !DILocation(line: 366, column: 6, scope: !5505)
!5599 = !DILocation(line: 367, column: 3, scope: !5597)
!5600 = !DILocation(line: 369, column: 2, scope: !5505)
!5601 = !DILocation(line: 371, column: 1, scope: !5505)
!5602 = !DILocation(line: 372, column: 23, scope: !5505)
!5603 = !DILocation(line: 372, column: 2, scope: !5505)
!5604 = !DILocation(line: 373, column: 1, scope: !5505)
!5605 = !DILocation(line: 374, column: 21, scope: !5505)
!5606 = !DILocation(line: 374, column: 2, scope: !5505)
!5607 = !DILocation(line: 375, column: 9, scope: !5505)
!5608 = !DILocation(line: 375, column: 2, scope: !5505)
!5609 = !DILocation(line: 376, column: 1, scope: !5505)
!5610 = !DISubprogram(name: "pci_save_state", scope: !157, file: !157, line: 1388, type: !4750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5611 = distinct !DISubprogram(name: "dev_pm_set_driver_flags", scope: !94, file: !94, line: 980, type: !5612, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5614)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{null, !285, !260}
!5614 = !{!5615, !5616}
!5615 = !DILocalVariable(name: "dev", arg: 1, scope: !5611, file: !94, line: 980, type: !285)
!5616 = !DILocalVariable(name: "flags", arg: 2, scope: !5611, file: !94, line: 980, type: !260)
!5617 = !DILocation(line: 980, column: 59, scope: !5611)
!5618 = !DILocation(line: 980, column: 68, scope: !5611)
!5619 = !DILocation(line: 982, column: 28, scope: !5611)
!5620 = !DILocation(line: 982, column: 2, scope: !5611)
!5621 = !DILocation(line: 982, column: 7, scope: !5611)
!5622 = !DILocation(line: 982, column: 13, scope: !5611)
!5623 = !DILocation(line: 982, column: 26, scope: !5611)
!5624 = !DILocation(line: 983, column: 1, scope: !5611)
!5625 = !DISubprogram(name: "pci_bridge_d3_possible", scope: !4702, file: !4702, line: 99, type: !5496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5626 = !DISubprogram(name: "pm_runtime_set_autosuspend_delay", scope: !5627, file: !5627, line: 86, type: !5628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5627 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95dc537c0e4be945b3dc143d0bbabcd4")
!5628 = !DISubroutineType(types: !5629)
!5629 = !{null, !285, !109}
!5630 = distinct !DISubprogram(name: "pm_runtime_use_autosuspend", scope: !5627, file: !5627, line: 582, type: !4236, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5631)
!5631 = !{!5632}
!5632 = !DILocalVariable(name: "dev", arg: 1, scope: !5630, file: !5627, line: 582, type: !285)
!5633 = !DILocation(line: 582, column: 62, scope: !5630)
!5634 = !DILocation(line: 584, column: 31, scope: !5630)
!5635 = !DILocation(line: 584, column: 2, scope: !5630)
!5636 = !DILocation(line: 585, column: 1, scope: !5630)
!5637 = distinct !DISubprogram(name: "pm_runtime_mark_last_busy", scope: !5627, file: !5627, line: 229, type: !4236, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5638)
!5638 = !{!5639}
!5639 = !DILocalVariable(name: "dev", arg: 1, scope: !5637, file: !5627, line: 229, type: !285)
!5640 = !DILocation(line: 229, column: 61, scope: !5637)
!5641 = !DILocation(line: 231, column: 2, scope: !5637)
!5642 = !DILocation(line: 231, column: 2, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5637, file: !5627, line: 231, column: 2)
!5644 = !DILocation(line: 231, column: 2, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5643, file: !5627, line: 231, column: 2)
!5646 = !DILocation(line: 231, column: 2, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5643, file: !5627, line: 231, column: 2)
!5648 = !DILocation(line: 232, column: 1, scope: !5637)
!5649 = distinct !DISubprogram(name: "pm_runtime_put_autosuspend", scope: !5627, file: !5627, line: 470, type: !4245, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5650)
!5650 = !{!5651}
!5651 = !DILocalVariable(name: "dev", arg: 1, scope: !5649, file: !5627, line: 470, type: !285)
!5652 = !DILocation(line: 470, column: 61, scope: !5649)
!5653 = !DILocation(line: 472, column: 30, scope: !5649)
!5654 = !DILocation(line: 472, column: 9, scope: !5649)
!5655 = !DILocation(line: 472, column: 2, scope: !5649)
!5656 = !DISubprogram(name: "pm_runtime_allow", scope: !5627, file: !5627, line: 81, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5657 = distinct !DISubprogram(name: "pcie_caps_reg", scope: !157, file: !157, line: 2433, type: !5658, scopeLine: 2434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5660)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!337, !5485}
!5660 = !{!5661}
!5661 = !DILocalVariable(name: "dev", arg: 1, scope: !5657, file: !157, line: 2433, type: !5485)
!5662 = !DILocation(line: 2433, column: 55, scope: !5657)
!5663 = !DILocation(line: 2435, column: 9, scope: !5657)
!5664 = !DILocation(line: 2435, column: 14, scope: !5657)
!5665 = !DILocation(line: 2435, column: 2, scope: !5657)
!5666 = distinct !DISubprogram(name: "pci_pcie_cap", scope: !157, file: !157, line: 2413, type: !4750, scopeLine: 2414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5667)
!5667 = !{!5668}
!5668 = !DILocalVariable(name: "dev", arg: 1, scope: !5666, file: !157, line: 2413, type: !193)
!5669 = !DILocation(line: 2413, column: 48, scope: !5666)
!5670 = !DILocation(line: 2415, column: 9, scope: !5666)
!5671 = !DILocation(line: 2415, column: 14, scope: !5666)
!5672 = !DILocation(line: 2415, column: 2, scope: !5666)
!5673 = !DISubprogram(name: "pci_enable_device", scope: !157, file: !157, line: 1290, type: !4750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5674 = distinct !DISubprogram(name: "get_port_device_capability", scope: !3, file: !3, line: 217, type: !4750, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5675)
!5675 = !{!5676, !5677, !5724, !5725}
!5676 = !DILocalVariable(name: "dev", arg: 1, scope: !5674, file: !3, line: 217, type: !193)
!5677 = !DILocalVariable(name: "host", scope: !5674, file: !3, line: 219, type: !5678)
!5678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5679, size: 64)
!5679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_host_bridge", file: !157, line: 563, size: 7168, elements: !5680)
!5680 = !{!5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5695, !5699, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5723}
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5679, file: !157, line: 564, baseType: !286, size: 5824)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5679, file: !157, line: 565, baseType: !204, size: 64, offset: 5824)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5679, file: !157, line: 566, baseType: !240, size: 64, offset: 5888)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "child_ops", scope: !5679, file: !157, line: 567, baseType: !240, size: 64, offset: 5952)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5679, file: !157, line: 568, baseType: !171, size: 64, offset: 6016)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "busnr", scope: !5679, file: !157, line: 569, baseType: !109, size: 32, offset: 6080)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "domain_nr", scope: !5679, file: !157, line: 570, baseType: !109, size: 32, offset: 6112)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "windows", scope: !5679, file: !157, line: 571, baseType: !197, size: 128, offset: 6144)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ranges", scope: !5679, file: !157, line: 572, baseType: !197, size: 128, offset: 6272)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "swizzle_irq", scope: !5679, file: !157, line: 573, baseType: !5691, size: 64, offset: 6400)
!5691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5692, size: 64)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{!330, !193, !5694}
!5694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "map_irq", scope: !5679, file: !157, line: 574, baseType: !5696, size: 64, offset: 6464)
!5696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5697, size: 64)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{!109, !5485, !330, !330}
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "release_fn", scope: !5679, file: !157, line: 575, baseType: !5700, size: 64, offset: 6528)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{null, !5678}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "release_data", scope: !5679, file: !157, line: 576, baseType: !171, size: 64, offset: 6592)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_reset_delay", scope: !5679, file: !157, line: 577, baseType: !7, size: 1, offset: 6656, flags: DIFlagBitField, extraData: i64 6656)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "no_ext_tags", scope: !5679, file: !157, line: 578, baseType: !7, size: 1, offset: 6657, flags: DIFlagBitField, extraData: i64 6656)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "no_inc_mrrs", scope: !5679, file: !157, line: 579, baseType: !7, size: 1, offset: 6658, flags: DIFlagBitField, extraData: i64 6656)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "native_aer", scope: !5679, file: !157, line: 580, baseType: !7, size: 1, offset: 6659, flags: DIFlagBitField, extraData: i64 6656)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "native_pcie_hotplug", scope: !5679, file: !157, line: 581, baseType: !7, size: 1, offset: 6660, flags: DIFlagBitField, extraData: i64 6656)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "native_shpc_hotplug", scope: !5679, file: !157, line: 582, baseType: !7, size: 1, offset: 6661, flags: DIFlagBitField, extraData: i64 6656)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "native_pme", scope: !5679, file: !157, line: 583, baseType: !7, size: 1, offset: 6662, flags: DIFlagBitField, extraData: i64 6656)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "native_ltr", scope: !5679, file: !157, line: 584, baseType: !7, size: 1, offset: 6663, flags: DIFlagBitField, extraData: i64 6656)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "native_dpc", scope: !5679, file: !157, line: 585, baseType: !7, size: 1, offset: 6664, flags: DIFlagBitField, extraData: i64 6656)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "native_cxl_error", scope: !5679, file: !157, line: 586, baseType: !7, size: 1, offset: 6665, flags: DIFlagBitField, extraData: i64 6656)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_config", scope: !5679, file: !157, line: 587, baseType: !7, size: 1, offset: 6666, flags: DIFlagBitField, extraData: i64 6656)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "size_windows", scope: !5679, file: !157, line: 588, baseType: !7, size: 1, offset: 6667, flags: DIFlagBitField, extraData: i64 6656)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !5679, file: !157, line: 589, baseType: !7, size: 1, offset: 6668, flags: DIFlagBitField, extraData: i64 6656)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "align_resource", scope: !5679, file: !157, line: 592, baseType: !5718, size: 64, offset: 6720)
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5719, size: 64)
!5719 = !DISubroutineType(types: !5720)
!5720 = !{!220, !193, !5721, !220, !220, !220}
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5722, size: 64)
!5722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5679, file: !157, line: 597, baseType: !2644, align: 512, offset: 7168)
!5724 = !DILocalVariable(name: "services", scope: !5674, file: !3, line: 220, type: !109)
!5725 = !DILocalVariable(name: "linkcap", scope: !5726, file: !3, line: 269, type: !260)
!5726 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 268, column: 52)
!5727 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 267, column: 6)
!5728 = !DILocation(line: 217, column: 55, scope: !5674)
!5729 = !DILocation(line: 219, column: 2, scope: !5674)
!5730 = !DILocation(line: 219, column: 26, scope: !5674)
!5731 = !DILocation(line: 219, column: 54, scope: !5674)
!5732 = !DILocation(line: 219, column: 59, scope: !5674)
!5733 = !DILocation(line: 219, column: 33, scope: !5674)
!5734 = !DILocation(line: 220, column: 2, scope: !5674)
!5735 = !DILocation(line: 220, column: 6, scope: !5674)
!5736 = !DILocation(line: 222, column: 6, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 222, column: 6)
!5738 = !DILocation(line: 222, column: 11, scope: !5737)
!5739 = !DILocation(line: 222, column: 29, scope: !5737)
!5740 = !DILocation(line: 223, column: 21, scope: !5737)
!5741 = !DILocation(line: 223, column: 7, scope: !5737)
!5742 = !DILocation(line: 223, column: 26, scope: !5737)
!5743 = !DILocation(line: 223, column: 52, scope: !5737)
!5744 = !DILocation(line: 224, column: 21, scope: !5737)
!5745 = !DILocation(line: 224, column: 7, scope: !5737)
!5746 = !DILocation(line: 224, column: 26, scope: !5737)
!5747 = !DILocation(line: 224, column: 54, scope: !5737)
!5748 = !DILocation(line: 225, column: 7, scope: !5737)
!5749 = !DILocation(line: 225, column: 25, scope: !5737)
!5750 = !DILocation(line: 225, column: 28, scope: !5737)
!5751 = !DILocation(line: 225, column: 34, scope: !5737)
!5752 = !DILocation(line: 222, column: 6, scope: !5674)
!5753 = !DILocation(line: 226, column: 12, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 225, column: 56)
!5755 = !DILocation(line: 232, column: 30, scope: !5754)
!5756 = !DILocation(line: 232, column: 3, scope: !5754)
!5757 = !DILocation(line: 234, column: 2, scope: !5754)
!5758 = !DILocation(line: 245, column: 21, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 245, column: 6)
!5760 = !DILocation(line: 245, column: 7, scope: !5759)
!5761 = !DILocation(line: 245, column: 26, scope: !5759)
!5762 = !DILocation(line: 245, column: 52, scope: !5759)
!5763 = !DILocation(line: 246, column: 21, scope: !5759)
!5764 = !DILocation(line: 246, column: 7, scope: !5759)
!5765 = !DILocation(line: 246, column: 26, scope: !5759)
!5766 = !DILocation(line: 246, column: 49, scope: !5759)
!5767 = !DILocation(line: 247, column: 7, scope: !5759)
!5768 = !DILocation(line: 247, column: 25, scope: !5759)
!5769 = !DILocation(line: 247, column: 28, scope: !5759)
!5770 = !DILocation(line: 247, column: 34, scope: !5759)
!5771 = !DILocation(line: 245, column: 6, scope: !5674)
!5772 = !DILocation(line: 248, column: 12, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 247, column: 47)
!5774 = !DILocation(line: 255, column: 29, scope: !5773)
!5775 = !DILocation(line: 255, column: 3, scope: !5773)
!5776 = !DILocation(line: 256, column: 2, scope: !5773)
!5777 = !DILocation(line: 262, column: 30, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 262, column: 6)
!5779 = !DILocation(line: 262, column: 6, scope: !5778)
!5780 = !DILocation(line: 262, column: 55, scope: !5778)
!5781 = !DILocation(line: 263, column: 6, scope: !5778)
!5782 = !DILocation(line: 263, column: 26, scope: !5778)
!5783 = !DILocation(line: 264, column: 7, scope: !5778)
!5784 = !DILocation(line: 264, column: 29, scope: !5778)
!5785 = !DILocation(line: 264, column: 33, scope: !5778)
!5786 = !DILocation(line: 264, column: 42, scope: !5778)
!5787 = !DILocation(line: 262, column: 6, scope: !5674)
!5788 = !DILocation(line: 265, column: 12, scope: !5778)
!5789 = !DILocation(line: 265, column: 3, scope: !5778)
!5790 = !DILocation(line: 267, column: 20, scope: !5727)
!5791 = !DILocation(line: 267, column: 6, scope: !5727)
!5792 = !DILocation(line: 267, column: 25, scope: !5727)
!5793 = !DILocation(line: 267, column: 52, scope: !5727)
!5794 = !DILocation(line: 268, column: 20, scope: !5727)
!5795 = !DILocation(line: 268, column: 6, scope: !5727)
!5796 = !DILocation(line: 268, column: 25, scope: !5727)
!5797 = !DILocation(line: 267, column: 6, scope: !5674)
!5798 = !DILocation(line: 269, column: 3, scope: !5726)
!5799 = !DILocation(line: 269, column: 7, scope: !5726)
!5800 = !DILocation(line: 271, column: 30, scope: !5726)
!5801 = !DILocation(line: 271, column: 3, scope: !5726)
!5802 = !DILocation(line: 272, column: 7, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 272, column: 7)
!5804 = !DILocation(line: 272, column: 15, scope: !5803)
!5805 = !DILocation(line: 272, column: 7, scope: !5726)
!5806 = !DILocation(line: 273, column: 13, scope: !5803)
!5807 = !DILocation(line: 273, column: 4, scope: !5803)
!5808 = !DILocation(line: 274, column: 2, scope: !5727)
!5809 = !DILocation(line: 274, column: 2, scope: !5726)
!5810 = !DILocation(line: 276, column: 9, scope: !5674)
!5811 = !DILocation(line: 277, column: 1, scope: !5674)
!5812 = !DILocation(line: 276, column: 2, scope: !5674)
!5813 = !DISubprogram(name: "pci_set_master", scope: !157, file: !157, line: 1319, type: !4742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5814 = distinct !DISubprogram(name: "pcie_init_service_irqs", scope: !3, file: !3, line: 176, type: !5815, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5817)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{!109, !193, !832, !109}
!5817 = !{!5818, !5819, !5820, !5821, !5822, !5823}
!5818 = !DILocalVariable(name: "dev", arg: 1, scope: !5814, file: !3, line: 176, type: !193)
!5819 = !DILocalVariable(name: "irqs", arg: 2, scope: !5814, file: !3, line: 176, type: !832)
!5820 = !DILocalVariable(name: "mask", arg: 3, scope: !5814, file: !3, line: 176, type: !109)
!5821 = !DILocalVariable(name: "ret", scope: !5814, file: !3, line: 178, type: !109)
!5822 = !DILocalVariable(name: "i", scope: !5814, file: !3, line: 178, type: !109)
!5823 = !DILabel(scope: !5814, name: "legacy_irq", file: !3, line: 195)
!5824 = !DILocation(line: 176, column: 51, scope: !5814)
!5825 = !DILocation(line: 176, column: 61, scope: !5814)
!5826 = !DILocation(line: 176, column: 71, scope: !5814)
!5827 = !DILocation(line: 178, column: 2, scope: !5814)
!5828 = !DILocation(line: 178, column: 6, scope: !5814)
!5829 = !DILocation(line: 178, column: 11, scope: !5814)
!5830 = !DILocation(line: 180, column: 9, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 180, column: 2)
!5832 = !DILocation(line: 180, column: 7, scope: !5831)
!5833 = !DILocation(line: 180, column: 14, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 180, column: 2)
!5835 = !DILocation(line: 180, column: 16, scope: !5834)
!5836 = !DILocation(line: 180, column: 2, scope: !5831)
!5837 = !DILocation(line: 181, column: 3, scope: !5834)
!5838 = !DILocation(line: 181, column: 8, scope: !5834)
!5839 = !DILocation(line: 181, column: 11, scope: !5834)
!5840 = !DILocation(line: 180, column: 49, scope: !5834)
!5841 = !DILocation(line: 180, column: 2, scope: !5834)
!5842 = distinct !{!5842, !5836, !5843, !5594, !5595}
!5843 = !DILocation(line: 181, column: 14, scope: !5831)
!5844 = !DILocation(line: 188, column: 7, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 188, column: 6)
!5846 = !DILocation(line: 188, column: 12, scope: !5845)
!5847 = !DILocation(line: 188, column: 37, scope: !5845)
!5848 = !DILocation(line: 188, column: 40, scope: !5845)
!5849 = !DILocation(line: 188, column: 6, scope: !5814)
!5850 = !DILocation(line: 189, column: 3, scope: !5845)
!5851 = !DILocation(line: 192, column: 31, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 192, column: 6)
!5853 = !DILocation(line: 192, column: 36, scope: !5852)
!5854 = !DILocation(line: 192, column: 42, scope: !5852)
!5855 = !DILocation(line: 192, column: 6, scope: !5852)
!5856 = !DILocation(line: 192, column: 48, scope: !5852)
!5857 = !DILocation(line: 192, column: 6, scope: !5814)
!5858 = !DILocation(line: 193, column: 3, scope: !5852)
!5859 = !DILocation(line: 192, column: 51, scope: !5852)
!5860 = !DILocation(line: 195, column: 1, scope: !5814)
!5861 = !DILocation(line: 197, column: 30, scope: !5814)
!5862 = !DILocation(line: 197, column: 8, scope: !5814)
!5863 = !DILocation(line: 197, column: 6, scope: !5814)
!5864 = !DILocation(line: 198, column: 6, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 198, column: 6)
!5866 = !DILocation(line: 198, column: 10, scope: !5865)
!5867 = !DILocation(line: 198, column: 6, scope: !5814)
!5868 = !DILocation(line: 199, column: 3, scope: !5865)
!5869 = !DILocation(line: 201, column: 9, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 201, column: 2)
!5871 = !DILocation(line: 201, column: 7, scope: !5870)
!5872 = !DILocation(line: 201, column: 14, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 201, column: 2)
!5874 = !DILocation(line: 201, column: 16, scope: !5873)
!5875 = !DILocation(line: 201, column: 2, scope: !5870)
!5876 = !DILocation(line: 202, column: 28, scope: !5873)
!5877 = !DILocation(line: 202, column: 13, scope: !5873)
!5878 = !DILocation(line: 202, column: 3, scope: !5873)
!5879 = !DILocation(line: 202, column: 8, scope: !5873)
!5880 = !DILocation(line: 202, column: 11, scope: !5873)
!5881 = !DILocation(line: 201, column: 49, scope: !5873)
!5882 = !DILocation(line: 201, column: 2, scope: !5873)
!5883 = distinct !{!5883, !5875, !5884, !5594, !5595}
!5884 = !DILocation(line: 202, column: 34, scope: !5870)
!5885 = !DILocation(line: 204, column: 2, scope: !5814)
!5886 = !DILocation(line: 205, column: 1, scope: !5814)
!5887 = distinct !DISubprogram(name: "pcie_device_init", scope: !3, file: !3, line: 285, type: !5888, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5890)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!109, !193, !109, !109}
!5890 = !{!5891, !5892, !5893, !5894, !5895, !5896}
!5891 = !DILocalVariable(name: "pdev", arg: 1, scope: !5887, file: !3, line: 285, type: !193)
!5892 = !DILocalVariable(name: "service", arg: 2, scope: !5887, file: !3, line: 285, type: !109)
!5893 = !DILocalVariable(name: "irq", arg: 3, scope: !5887, file: !3, line: 285, type: !109)
!5894 = !DILocalVariable(name: "retval", scope: !5887, file: !3, line: 287, type: !109)
!5895 = !DILocalVariable(name: "pcie", scope: !5887, file: !3, line: 288, type: !188)
!5896 = !DILocalVariable(name: "device", scope: !5887, file: !3, line: 289, type: !285)
!5897 = !DILocation(line: 285, column: 45, scope: !5887)
!5898 = !DILocation(line: 285, column: 55, scope: !5887)
!5899 = !DILocation(line: 285, column: 68, scope: !5887)
!5900 = !DILocation(line: 287, column: 2, scope: !5887)
!5901 = !DILocation(line: 287, column: 6, scope: !5887)
!5902 = !DILocation(line: 288, column: 2, scope: !5887)
!5903 = !DILocation(line: 288, column: 22, scope: !5887)
!5904 = !DILocation(line: 289, column: 2, scope: !5887)
!5905 = !DILocation(line: 289, column: 17, scope: !5887)
!5906 = !DILocation(line: 291, column: 9, scope: !5887)
!5907 = !DILocation(line: 291, column: 7, scope: !5887)
!5908 = !DILocation(line: 292, column: 7, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 292, column: 6)
!5910 = !DILocation(line: 292, column: 6, scope: !5887)
!5911 = !DILocation(line: 293, column: 3, scope: !5909)
!5912 = !DILocation(line: 294, column: 15, scope: !5887)
!5913 = !DILocation(line: 294, column: 2, scope: !5887)
!5914 = !DILocation(line: 294, column: 8, scope: !5887)
!5915 = !DILocation(line: 294, column: 13, scope: !5887)
!5916 = !DILocation(line: 295, column: 14, scope: !5887)
!5917 = !DILocation(line: 295, column: 2, scope: !5887)
!5918 = !DILocation(line: 295, column: 8, scope: !5887)
!5919 = !DILocation(line: 295, column: 12, scope: !5887)
!5920 = !DILocation(line: 296, column: 18, scope: !5887)
!5921 = !DILocation(line: 296, column: 2, scope: !5887)
!5922 = !DILocation(line: 296, column: 8, scope: !5887)
!5923 = !DILocation(line: 296, column: 16, scope: !5887)
!5924 = !DILocation(line: 299, column: 12, scope: !5887)
!5925 = !DILocation(line: 299, column: 18, scope: !5887)
!5926 = !DILocation(line: 299, column: 9, scope: !5887)
!5927 = !DILocation(line: 300, column: 2, scope: !5887)
!5928 = !DILocation(line: 300, column: 10, scope: !5887)
!5929 = !DILocation(line: 300, column: 14, scope: !5887)
!5930 = !DILocation(line: 301, column: 2, scope: !5887)
!5931 = !DILocation(line: 301, column: 10, scope: !5887)
!5932 = !DILocation(line: 301, column: 18, scope: !5887)
!5933 = !DILocation(line: 302, column: 15, scope: !5887)
!5934 = !DILocation(line: 303, column: 17, scope: !5887)
!5935 = !DILocation(line: 303, column: 8, scope: !5887)
!5936 = !DILocation(line: 304, column: 8, scope: !5887)
!5937 = !DILocation(line: 302, column: 2, scope: !5887)
!5938 = !DILocation(line: 305, column: 20, scope: !5887)
!5939 = !DILocation(line: 305, column: 26, scope: !5887)
!5940 = !DILocation(line: 305, column: 2, scope: !5887)
!5941 = !DILocation(line: 305, column: 10, scope: !5887)
!5942 = !DILocation(line: 305, column: 17, scope: !5887)
!5943 = !DILocation(line: 306, column: 30, scope: !5887)
!5944 = !DILocation(line: 306, column: 2, scope: !5887)
!5945 = !DILocation(line: 308, column: 27, scope: !5887)
!5946 = !DILocation(line: 308, column: 11, scope: !5887)
!5947 = !DILocation(line: 308, column: 9, scope: !5887)
!5948 = !DILocation(line: 309, column: 6, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 309, column: 6)
!5950 = !DILocation(line: 309, column: 6, scope: !5887)
!5951 = !DILocation(line: 310, column: 14, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 309, column: 14)
!5953 = !DILocation(line: 310, column: 3, scope: !5952)
!5954 = !DILocation(line: 311, column: 10, scope: !5952)
!5955 = !DILocation(line: 311, column: 3, scope: !5952)
!5956 = !DILocation(line: 314, column: 26, scope: !5887)
!5957 = !DILocation(line: 314, column: 2, scope: !5887)
!5958 = !DILocation(line: 316, column: 2, scope: !5887)
!5959 = !DILocation(line: 317, column: 1, scope: !5887)
!5960 = !DISubprogram(name: "pci_free_irq_vectors", scope: !157, file: !157, line: 1662, type: !4742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5961 = !DISubprogram(name: "pci_disable_device", scope: !157, file: !157, line: 1316, type: !4742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5962 = !DISubprogram(name: "pci_find_host_bridge", scope: !157, file: !157, line: 616, type: !5963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5963 = !DISubroutineType(types: !5964)
!5964 = !{!5678, !204}
!5965 = distinct !DISubprogram(name: "pcie_capability_clear_word", scope: !157, file: !157, line: 1270, type: !5966, scopeLine: 1272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5968)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!109, !193, !109, !337}
!5968 = !{!5969, !5970, !5971}
!5969 = !DILocalVariable(name: "dev", arg: 1, scope: !5965, file: !157, line: 1270, type: !193)
!5970 = !DILocalVariable(name: "pos", arg: 2, scope: !5965, file: !157, line: 1270, type: !109)
!5971 = !DILocalVariable(name: "clear", arg: 3, scope: !5965, file: !157, line: 1271, type: !337)
!5972 = !DILocation(line: 1270, column: 62, scope: !5965)
!5973 = !DILocation(line: 1270, column: 71, scope: !5965)
!5974 = !DILocation(line: 1271, column: 15, scope: !5965)
!5975 = !DILocation(line: 1273, column: 44, scope: !5965)
!5976 = !DILocation(line: 1273, column: 49, scope: !5965)
!5977 = !DILocation(line: 1273, column: 54, scope: !5965)
!5978 = !DILocation(line: 1273, column: 9, scope: !5965)
!5979 = !DILocation(line: 1273, column: 2, scope: !5965)
!5980 = !DISubprogram(name: "pcie_pme_interrupt_enable", scope: !178, file: !178, line: 116, type: !5981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{null, !193, !783}
!5983 = !DISubprogram(name: "pci_find_ext_capability", scope: !157, file: !157, line: 1168, type: !5984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{!337, !193, !109}
!5986 = distinct !DISubprogram(name: "pci_aer_available", scope: !157, file: !157, line: 1807, type: !4071, scopeLine: 1807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5987 = !DILocation(line: 1807, column: 46, scope: !5986)
!5988 = !DISubprogram(name: "pcie_capability_read_dword", scope: !157, file: !157, line: 1221, type: !5989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5989 = !DISubroutineType(types: !5990)
!5990 = !{!109, !193, !109, !259}
!5991 = distinct !DISubprogram(name: "pcie_capability_clear_and_set_word", scope: !157, file: !157, line: 1243, type: !5992, scopeLine: 1246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5994)
!5992 = !DISubroutineType(types: !5993)
!5993 = !{!109, !193, !109, !337, !337}
!5994 = !{!5995, !5996, !5997, !5998}
!5995 = !DILocalVariable(name: "dev", arg: 1, scope: !5991, file: !157, line: 1243, type: !193)
!5996 = !DILocalVariable(name: "pos", arg: 2, scope: !5991, file: !157, line: 1244, type: !109)
!5997 = !DILocalVariable(name: "clear", arg: 3, scope: !5991, file: !157, line: 1245, type: !337)
!5998 = !DILocalVariable(name: "set", arg: 4, scope: !5991, file: !157, line: 1245, type: !337)
!5999 = !DILocation(line: 1243, column: 70, scope: !5991)
!6000 = !DILocation(line: 1244, column: 16, scope: !5991)
!6001 = !DILocation(line: 1245, column: 16, scope: !5991)
!6002 = !DILocation(line: 1245, column: 27, scope: !5991)
!6003 = !DILocation(line: 1247, column: 10, scope: !5991)
!6004 = !DILocation(line: 1247, column: 2, scope: !5991)
!6005 = !DILocation(line: 1250, column: 52, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !5991, file: !157, line: 1247, column: 15)
!6007 = !DILocation(line: 1250, column: 57, scope: !6006)
!6008 = !DILocation(line: 1251, column: 10, scope: !6006)
!6009 = !DILocation(line: 1251, column: 17, scope: !6006)
!6010 = !DILocation(line: 1250, column: 10, scope: !6006)
!6011 = !DILocation(line: 1250, column: 3, scope: !6006)
!6012 = !DILocation(line: 1253, column: 54, scope: !6006)
!6013 = !DILocation(line: 1253, column: 59, scope: !6006)
!6014 = !DILocation(line: 1254, column: 12, scope: !6006)
!6015 = !DILocation(line: 1254, column: 19, scope: !6006)
!6016 = !DILocation(line: 1253, column: 10, scope: !6006)
!6017 = !DILocation(line: 1253, column: 3, scope: !6006)
!6018 = !DILocation(line: 1256, column: 1, scope: !5991)
!6019 = !DISubprogram(name: "pcie_capability_clear_and_set_word_locked", scope: !157, file: !157, line: 1226, type: !5992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6020 = !DISubprogram(name: "pcie_capability_clear_and_set_word_unlocked", scope: !157, file: !157, line: 1224, type: !5992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6021 = distinct !DISubprogram(name: "pcie_pme_no_msi", scope: !178, file: !178, line: 111, type: !4071, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6022 = !DILocation(line: 113, column: 9, scope: !6021)
!6023 = !DILocation(line: 113, column: 2, scope: !6021)
!6024 = distinct !DISubprogram(name: "pcie_port_enable_irq_vec", scope: !3, file: !3, line: 112, type: !5815, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6025)
!6025 = !{!6026, !6027, !6028, !6029, !6030, !6031, !6032, !6033, !6034}
!6026 = !DILocalVariable(name: "dev", arg: 1, scope: !6024, file: !3, line: 112, type: !193)
!6027 = !DILocalVariable(name: "irqs", arg: 2, scope: !6024, file: !3, line: 112, type: !832)
!6028 = !DILocalVariable(name: "mask", arg: 3, scope: !6024, file: !3, line: 112, type: !109)
!6029 = !DILocalVariable(name: "nr_entries", scope: !6024, file: !3, line: 114, type: !109)
!6030 = !DILocalVariable(name: "nvec", scope: !6024, file: !3, line: 114, type: !109)
!6031 = !DILocalVariable(name: "pcie_irq", scope: !6024, file: !3, line: 114, type: !109)
!6032 = !DILocalVariable(name: "pme", scope: !6024, file: !3, line: 115, type: !260)
!6033 = !DILocalVariable(name: "aer", scope: !6024, file: !3, line: 115, type: !260)
!6034 = !DILocalVariable(name: "dpc", scope: !6024, file: !3, line: 115, type: !260)
!6035 = !DILocation(line: 112, column: 53, scope: !6024)
!6036 = !DILocation(line: 112, column: 63, scope: !6024)
!6037 = !DILocation(line: 112, column: 73, scope: !6024)
!6038 = !DILocation(line: 114, column: 2, scope: !6024)
!6039 = !DILocation(line: 114, column: 6, scope: !6024)
!6040 = !DILocation(line: 114, column: 18, scope: !6024)
!6041 = !DILocation(line: 114, column: 24, scope: !6024)
!6042 = !DILocation(line: 115, column: 2, scope: !6024)
!6043 = !DILocation(line: 115, column: 6, scope: !6024)
!6044 = !DILocation(line: 115, column: 15, scope: !6024)
!6045 = !DILocation(line: 115, column: 24, scope: !6024)
!6046 = !DILocation(line: 118, column: 37, scope: !6024)
!6047 = !DILocation(line: 118, column: 15, scope: !6024)
!6048 = !DILocation(line: 118, column: 13, scope: !6024)
!6049 = !DILocation(line: 120, column: 6, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 120, column: 6)
!6051 = !DILocation(line: 120, column: 17, scope: !6050)
!6052 = !DILocation(line: 120, column: 6, scope: !6024)
!6053 = !DILocation(line: 121, column: 10, scope: !6050)
!6054 = !DILocation(line: 121, column: 3, scope: !6050)
!6055 = !DILocation(line: 124, column: 30, scope: !6024)
!6056 = !DILocation(line: 124, column: 35, scope: !6024)
!6057 = !DILocation(line: 124, column: 9, scope: !6024)
!6058 = !DILocation(line: 124, column: 7, scope: !6024)
!6059 = !DILocation(line: 125, column: 6, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 125, column: 6)
!6061 = !DILocation(line: 125, column: 13, scope: !6060)
!6062 = !DILocation(line: 125, column: 11, scope: !6060)
!6063 = !DILocation(line: 125, column: 6, scope: !6024)
!6064 = !DILocation(line: 126, column: 24, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 125, column: 25)
!6066 = !DILocation(line: 126, column: 3, scope: !6065)
!6067 = !DILocation(line: 127, column: 3, scope: !6065)
!6068 = !DILocation(line: 141, column: 6, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 141, column: 6)
!6070 = !DILocation(line: 141, column: 14, scope: !6069)
!6071 = !DILocation(line: 141, column: 11, scope: !6069)
!6072 = !DILocation(line: 141, column: 6, scope: !6024)
!6073 = !DILocation(line: 142, column: 24, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6069, file: !3, line: 141, column: 26)
!6075 = !DILocation(line: 142, column: 3, scope: !6074)
!6076 = !DILocation(line: 144, column: 38, scope: !6074)
!6077 = !DILocation(line: 144, column: 43, scope: !6074)
!6078 = !DILocation(line: 144, column: 49, scope: !6074)
!6079 = !DILocation(line: 144, column: 16, scope: !6074)
!6080 = !DILocation(line: 144, column: 14, scope: !6074)
!6081 = !DILocation(line: 146, column: 7, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6074, file: !3, line: 146, column: 7)
!6083 = !DILocation(line: 146, column: 18, scope: !6082)
!6084 = !DILocation(line: 146, column: 7, scope: !6074)
!6085 = !DILocation(line: 147, column: 11, scope: !6082)
!6086 = !DILocation(line: 147, column: 4, scope: !6082)
!6087 = !DILocation(line: 148, column: 2, scope: !6074)
!6088 = !DILocation(line: 151, column: 6, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 151, column: 6)
!6090 = !DILocation(line: 151, column: 11, scope: !6089)
!6091 = !DILocation(line: 151, column: 6, scope: !6024)
!6092 = !DILocation(line: 153, column: 29, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 152, column: 35)
!6094 = !DILocation(line: 153, column: 34, scope: !6093)
!6095 = !DILocation(line: 153, column: 14, scope: !6093)
!6096 = !DILocation(line: 153, column: 12, scope: !6093)
!6097 = !DILocation(line: 154, column: 39, scope: !6093)
!6098 = !DILocation(line: 154, column: 3, scope: !6093)
!6099 = !DILocation(line: 154, column: 37, scope: !6093)
!6100 = !DILocation(line: 155, column: 38, scope: !6093)
!6101 = !DILocation(line: 155, column: 3, scope: !6093)
!6102 = !DILocation(line: 155, column: 36, scope: !6093)
!6103 = !DILocation(line: 156, column: 43, scope: !6093)
!6104 = !DILocation(line: 156, column: 3, scope: !6093)
!6105 = !DILocation(line: 156, column: 41, scope: !6093)
!6106 = !DILocation(line: 157, column: 2, scope: !6093)
!6107 = !DILocation(line: 159, column: 6, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 159, column: 6)
!6109 = !DILocation(line: 159, column: 11, scope: !6108)
!6110 = !DILocation(line: 159, column: 6, scope: !6024)
!6111 = !DILocation(line: 160, column: 54, scope: !6108)
!6112 = !DILocation(line: 160, column: 59, scope: !6108)
!6113 = !DILocation(line: 160, column: 39, scope: !6108)
!6114 = !DILocation(line: 160, column: 3, scope: !6108)
!6115 = !DILocation(line: 160, column: 37, scope: !6108)
!6116 = !DILocation(line: 162, column: 6, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 162, column: 6)
!6118 = !DILocation(line: 162, column: 11, scope: !6117)
!6119 = !DILocation(line: 162, column: 6, scope: !6024)
!6120 = !DILocation(line: 163, column: 54, scope: !6117)
!6121 = !DILocation(line: 163, column: 59, scope: !6117)
!6122 = !DILocation(line: 163, column: 39, scope: !6117)
!6123 = !DILocation(line: 163, column: 3, scope: !6117)
!6124 = !DILocation(line: 163, column: 37, scope: !6117)
!6125 = !DILocation(line: 165, column: 2, scope: !6024)
!6126 = !DILocation(line: 166, column: 1, scope: !6024)
!6127 = !DISubprogram(name: "pci_alloc_irq_vectors", scope: !157, file: !157, line: 1651, type: !6128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6128 = !DISubroutineType(types: !6129)
!6129 = !{!109, !193, !7, !7, !7}
!6130 = !DISubprogram(name: "pci_irq_vector", scope: !157, file: !157, line: 1663, type: !6131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6131 = !DISubroutineType(types: !6132)
!6132 = !{!109, !193, !7}
!6133 = distinct !DISubprogram(name: "pcie_message_numbers", scope: !3, file: !3, line: 56, type: !6134, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6136)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!109, !193, !109, !259, !259, !259}
!6136 = !{!6137, !6138, !6139, !6140, !6141, !6142, !6143, !6144, !6145, !6151}
!6137 = !DILocalVariable(name: "dev", arg: 1, scope: !6133, file: !3, line: 56, type: !193)
!6138 = !DILocalVariable(name: "mask", arg: 2, scope: !6133, file: !3, line: 56, type: !109)
!6139 = !DILocalVariable(name: "pme", arg: 3, scope: !6133, file: !3, line: 57, type: !259)
!6140 = !DILocalVariable(name: "aer", arg: 4, scope: !6133, file: !3, line: 57, type: !259)
!6141 = !DILocalVariable(name: "dpc", arg: 5, scope: !6133, file: !3, line: 57, type: !259)
!6142 = !DILocalVariable(name: "nvec", scope: !6133, file: !3, line: 59, type: !260)
!6143 = !DILocalVariable(name: "pos", scope: !6133, file: !3, line: 59, type: !260)
!6144 = !DILocalVariable(name: "reg16", scope: !6133, file: !3, line: 60, type: !337)
!6145 = !DILocalVariable(name: "__UNIQUE_ID___x293", scope: !6146, file: !3, line: 96, type: !260)
!6146 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 96, column: 11)
!6147 = distinct !DILexicalBlock(scope: !6148, file: !3, line: 92, column: 12)
!6148 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 92, column: 7)
!6149 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 90, column: 36)
!6150 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 90, column: 6)
!6151 = !DILocalVariable(name: "__UNIQUE_ID___y294", scope: !6146, file: !3, line: 96, type: !260)
!6152 = !DILocation(line: 56, column: 49, scope: !6133)
!6153 = !DILocation(line: 56, column: 58, scope: !6133)
!6154 = !DILocation(line: 57, column: 10, scope: !6133)
!6155 = !DILocation(line: 57, column: 20, scope: !6133)
!6156 = !DILocation(line: 57, column: 30, scope: !6133)
!6157 = !DILocation(line: 59, column: 2, scope: !6133)
!6158 = !DILocation(line: 59, column: 6, scope: !6133)
!6159 = !DILocation(line: 59, column: 16, scope: !6133)
!6160 = !DILocation(line: 60, column: 2, scope: !6133)
!6161 = !DILocation(line: 60, column: 6, scope: !6133)
!6162 = !DILocation(line: 69, column: 6, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 69, column: 6)
!6164 = !DILocation(line: 69, column: 11, scope: !6163)
!6165 = !DILocation(line: 69, column: 6, scope: !6133)
!6166 = !DILocation(line: 71, column: 29, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 70, column: 35)
!6168 = !DILocation(line: 71, column: 3, scope: !6167)
!6169 = !DILocation(line: 72, column: 11, scope: !6167)
!6170 = !DILocation(line: 72, column: 17, scope: !6167)
!6171 = !DILocation(line: 72, column: 38, scope: !6167)
!6172 = !DILocation(line: 72, column: 4, scope: !6167)
!6173 = !DILocation(line: 72, column: 8, scope: !6167)
!6174 = !DILocation(line: 73, column: 11, scope: !6167)
!6175 = !DILocation(line: 73, column: 10, scope: !6167)
!6176 = !DILocation(line: 73, column: 15, scope: !6167)
!6177 = !DILocation(line: 73, column: 8, scope: !6167)
!6178 = !DILocation(line: 74, column: 2, scope: !6167)
!6179 = !DILocation(line: 90, column: 6, scope: !6150)
!6180 = !DILocation(line: 90, column: 11, scope: !6150)
!6181 = !DILocation(line: 90, column: 6, scope: !6133)
!6182 = !DILocation(line: 91, column: 33, scope: !6149)
!6183 = !DILocation(line: 91, column: 9, scope: !6149)
!6184 = !DILocation(line: 91, column: 7, scope: !6149)
!6185 = !DILocation(line: 92, column: 7, scope: !6148)
!6186 = !DILocation(line: 92, column: 7, scope: !6149)
!6187 = !DILocation(line: 93, column: 25, scope: !6147)
!6188 = !DILocation(line: 93, column: 30, scope: !6147)
!6189 = !DILocation(line: 93, column: 34, scope: !6147)
!6190 = !DILocation(line: 93, column: 4, scope: !6147)
!6191 = !DILocation(line: 95, column: 11, scope: !6147)
!6192 = !DILocation(line: 95, column: 17, scope: !6147)
!6193 = !DILocation(line: 95, column: 5, scope: !6147)
!6194 = !DILocation(line: 95, column: 9, scope: !6147)
!6195 = !DILocation(line: 96, column: 11, scope: !6146)
!6196 = !DILocation(line: 96, column: 11, scope: !6147)
!6197 = !DILocation(line: 96, column: 9, scope: !6147)
!6198 = !DILocation(line: 97, column: 3, scope: !6147)
!6199 = !DILocation(line: 98, column: 2, scope: !6149)
!6200 = !DILocation(line: 100, column: 9, scope: !6133)
!6201 = !DILocation(line: 101, column: 1, scope: !6133)
!6202 = !DILocation(line: 100, column: 2, scope: !6133)
!6203 = !DISubprogram(name: "pcie_capability_read_word", scope: !157, file: !157, line: 1220, type: !6204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6204 = !DISubroutineType(types: !6205)
!6205 = !{!109, !193, !109, !6206}
!6206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!6207 = !DISubprogram(name: "pci_read_config_word", scope: !157, file: !157, line: 1214, type: !6208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6208 = !DISubroutineType(types: !6209)
!6209 = !{!109, !5485, !109, !6206}
!6210 = distinct !DISubprogram(name: "kzalloc", scope: !147, file: !147, line: 719, type: !6211, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6213)
!6211 = !DISubroutineType(types: !6212)
!6212 = !{!171, !415, !1215}
!6213 = !{!6214, !6215}
!6214 = !DILocalVariable(name: "size", arg: 1, scope: !6210, file: !147, line: 719, type: !415)
!6215 = !DILocalVariable(name: "flags", arg: 2, scope: !6210, file: !147, line: 719, type: !1215)
!6216 = !DILocation(line: 719, column: 52, scope: !6210)
!6217 = !DILocation(line: 719, column: 64, scope: !6210)
!6218 = !DILocation(line: 721, column: 17, scope: !6210)
!6219 = !DILocation(line: 721, column: 23, scope: !6210)
!6220 = !DILocation(line: 721, column: 29, scope: !6210)
!6221 = !DILocation(line: 721, column: 9, scope: !6210)
!6222 = !DILocation(line: 721, column: 2, scope: !6210)
!6223 = distinct !DISubprogram(name: "release_pcie_device", scope: !3, file: !3, line: 46, type: !4236, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6224)
!6224 = !{!6225, !6226}
!6225 = !DILocalVariable(name: "dev", arg: 1, scope: !6223, file: !3, line: 46, type: !285)
!6226 = !DILocalVariable(name: "__mptr", scope: !6227, file: !3, line: 48, type: !171)
!6227 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 48, column: 8)
!6228 = !DILocation(line: 46, column: 48, scope: !6223)
!6229 = !DILocation(line: 48, column: 8, scope: !6227)
!6230 = !DILocation(line: 48, column: 8, scope: !6223)
!6231 = !DILocation(line: 48, column: 2, scope: !6223)
!6232 = !DILocation(line: 49, column: 1, scope: !6223)
!6233 = !DISubprogram(name: "dev_set_name", scope: !94, file: !94, line: 879, type: !6234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!109, !285, !181, null}
!6236 = distinct !DISubprogram(name: "pci_name", scope: !157, file: !157, line: 2119, type: !6237, scopeLine: 2120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6239)
!6237 = !DISubroutineType(types: !6238)
!6238 = !{!181, !5485}
!6239 = !{!6240}
!6240 = !DILocalVariable(name: "pdev", arg: 1, scope: !6236, file: !157, line: 2119, type: !5485)
!6241 = !DILocation(line: 2119, column: 58, scope: !6236)
!6242 = !DILocation(line: 2121, column: 19, scope: !6236)
!6243 = !DILocation(line: 2121, column: 25, scope: !6236)
!6244 = !DILocation(line: 2121, column: 9, scope: !6236)
!6245 = !DILocation(line: 2121, column: 2, scope: !6236)
!6246 = distinct !DISubprogram(name: "device_enable_async_suspend", scope: !94, file: !94, line: 946, type: !4236, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6247)
!6247 = !{!6248}
!6248 = !DILocalVariable(name: "dev", arg: 1, scope: !6246, file: !94, line: 946, type: !285)
!6249 = !DILocation(line: 946, column: 63, scope: !6246)
!6250 = !DILocation(line: 948, column: 7, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6246, file: !94, line: 948, column: 6)
!6252 = !DILocation(line: 948, column: 12, scope: !6251)
!6253 = !DILocation(line: 948, column: 18, scope: !6251)
!6254 = !DILocation(line: 948, column: 6, scope: !6246)
!6255 = !DILocation(line: 949, column: 3, scope: !6251)
!6256 = !DILocation(line: 949, column: 8, scope: !6251)
!6257 = !DILocation(line: 949, column: 14, scope: !6251)
!6258 = !DILocation(line: 949, column: 28, scope: !6251)
!6259 = !DILocation(line: 950, column: 1, scope: !6246)
!6260 = !DISubprogram(name: "device_register", scope: !94, file: !94, line: 1054, type: !4245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6261 = !DISubprogram(name: "pm_runtime_no_callbacks", scope: !5627, file: !5627, line: 83, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6262 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 591, type: !6211, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6263)
!6263 = !{!6264, !6265, !6266}
!6264 = !DILocalVariable(name: "size", arg: 1, scope: !6262, file: !147, line: 591, type: !415)
!6265 = !DILocalVariable(name: "flags", arg: 2, scope: !6262, file: !147, line: 591, type: !1215)
!6266 = !DILocalVariable(name: "index", scope: !6267, file: !147, line: 594, type: !7)
!6267 = distinct !DILexicalBlock(scope: !6268, file: !147, line: 593, column: 42)
!6268 = distinct !DILexicalBlock(scope: !6262, file: !147, line: 593, column: 6)
!6269 = !DILocation(line: 591, column: 61, scope: !6262)
!6270 = !DILocation(line: 591, column: 73, scope: !6262)
!6271 = !DILocation(line: 593, column: 27, scope: !6268)
!6272 = !DILocation(line: 593, column: 6, scope: !6268)
!6273 = !DILocation(line: 593, column: 33, scope: !6268)
!6274 = !DILocation(line: 593, column: 36, scope: !6268)
!6275 = !DILocation(line: 593, column: 6, scope: !6262)
!6276 = !DILocation(line: 594, column: 3, scope: !6267)
!6277 = !DILocation(line: 594, column: 16, scope: !6267)
!6278 = !DILocation(line: 596, column: 7, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6267, file: !147, line: 596, column: 7)
!6280 = !DILocation(line: 596, column: 12, scope: !6279)
!6281 = !DILocation(line: 596, column: 7, scope: !6267)
!6282 = !DILocation(line: 597, column: 25, scope: !6279)
!6283 = !DILocation(line: 597, column: 31, scope: !6279)
!6284 = !DILocation(line: 597, column: 11, scope: !6279)
!6285 = !DILocation(line: 597, column: 4, scope: !6279)
!6286 = !DILocation(line: 599, column: 11, scope: !6267)
!6287 = !DILocation(line: 599, column: 9, scope: !6267)
!6288 = !DILocation(line: 601, column: 33, scope: !6267)
!6289 = !DILocation(line: 601, column: 40, scope: !6267)
!6290 = !DILocation(line: 601, column: 20, scope: !6267)
!6291 = !DILocation(line: 601, column: 5, scope: !6267)
!6292 = !DILocation(line: 601, column: 51, scope: !6267)
!6293 = !DILocation(line: 602, column: 5, scope: !6267)
!6294 = !DILocation(line: 602, column: 12, scope: !6267)
!6295 = !DILocation(line: 600, column: 10, scope: !6267)
!6296 = !DILocation(line: 600, column: 3, scope: !6267)
!6297 = !DILocation(line: 603, column: 2, scope: !6268)
!6298 = !DILocation(line: 604, column: 19, scope: !6262)
!6299 = !DILocation(line: 604, column: 25, scope: !6262)
!6300 = !DILocation(line: 604, column: 9, scope: !6262)
!6301 = !DILocation(line: 604, column: 2, scope: !6262)
!6302 = !DILocation(line: 605, column: 1, scope: !6262)
!6303 = !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 531, type: !6211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6304 = distinct !DISubprogram(name: "__kmalloc_index", scope: !147, file: !147, line: 444, type: !6305, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6307)
!6305 = !DISubroutineType(types: !6306)
!6306 = !{!7, !415, !783}
!6307 = !{!6308, !6309}
!6308 = !DILocalVariable(name: "size", arg: 1, scope: !6304, file: !147, line: 444, type: !415)
!6309 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6304, file: !147, line: 445, type: !783)
!6310 = !DILocation(line: 444, column: 60, scope: !6304)
!6311 = !DILocation(line: 445, column: 16, scope: !6304)
!6312 = !DILocation(line: 447, column: 7, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 447, column: 6)
!6314 = !DILocation(line: 447, column: 6, scope: !6304)
!6315 = !DILocation(line: 448, column: 3, scope: !6313)
!6316 = !DILocation(line: 450, column: 6, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 450, column: 6)
!6318 = !DILocation(line: 450, column: 11, scope: !6317)
!6319 = !DILocation(line: 450, column: 6, scope: !6304)
!6320 = !DILocation(line: 451, column: 3, scope: !6317)
!6321 = !DILocation(line: 453, column: 32, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 453, column: 6)
!6323 = !DILocation(line: 453, column: 37, scope: !6322)
!6324 = !DILocation(line: 453, column: 42, scope: !6322)
!6325 = !DILocation(line: 453, column: 45, scope: !6322)
!6326 = !DILocation(line: 453, column: 50, scope: !6322)
!6327 = !DILocation(line: 453, column: 6, scope: !6304)
!6328 = !DILocation(line: 454, column: 3, scope: !6322)
!6329 = !DILocation(line: 455, column: 32, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 455, column: 6)
!6331 = !DILocation(line: 455, column: 37, scope: !6330)
!6332 = !DILocation(line: 455, column: 43, scope: !6330)
!6333 = !DILocation(line: 455, column: 46, scope: !6330)
!6334 = !DILocation(line: 455, column: 51, scope: !6330)
!6335 = !DILocation(line: 455, column: 6, scope: !6304)
!6336 = !DILocation(line: 456, column: 3, scope: !6330)
!6337 = !DILocation(line: 457, column: 6, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 457, column: 6)
!6339 = !DILocation(line: 457, column: 11, scope: !6338)
!6340 = !DILocation(line: 457, column: 6, scope: !6304)
!6341 = !DILocation(line: 457, column: 26, scope: !6338)
!6342 = !DILocation(line: 458, column: 6, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 458, column: 6)
!6344 = !DILocation(line: 458, column: 11, scope: !6343)
!6345 = !DILocation(line: 458, column: 6, scope: !6304)
!6346 = !DILocation(line: 458, column: 26, scope: !6343)
!6347 = !DILocation(line: 459, column: 6, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 459, column: 6)
!6349 = !DILocation(line: 459, column: 11, scope: !6348)
!6350 = !DILocation(line: 459, column: 6, scope: !6304)
!6351 = !DILocation(line: 459, column: 26, scope: !6348)
!6352 = !DILocation(line: 460, column: 6, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 460, column: 6)
!6354 = !DILocation(line: 460, column: 11, scope: !6353)
!6355 = !DILocation(line: 460, column: 6, scope: !6304)
!6356 = !DILocation(line: 460, column: 26, scope: !6353)
!6357 = !DILocation(line: 461, column: 6, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 461, column: 6)
!6359 = !DILocation(line: 461, column: 11, scope: !6358)
!6360 = !DILocation(line: 461, column: 6, scope: !6304)
!6361 = !DILocation(line: 461, column: 26, scope: !6358)
!6362 = !DILocation(line: 462, column: 6, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 462, column: 6)
!6364 = !DILocation(line: 462, column: 11, scope: !6363)
!6365 = !DILocation(line: 462, column: 6, scope: !6304)
!6366 = !DILocation(line: 462, column: 26, scope: !6363)
!6367 = !DILocation(line: 463, column: 6, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 463, column: 6)
!6369 = !DILocation(line: 463, column: 11, scope: !6368)
!6370 = !DILocation(line: 463, column: 6, scope: !6304)
!6371 = !DILocation(line: 463, column: 26, scope: !6368)
!6372 = !DILocation(line: 464, column: 6, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 464, column: 6)
!6374 = !DILocation(line: 464, column: 11, scope: !6373)
!6375 = !DILocation(line: 464, column: 6, scope: !6304)
!6376 = !DILocation(line: 464, column: 26, scope: !6373)
!6377 = !DILocation(line: 465, column: 6, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 465, column: 6)
!6379 = !DILocation(line: 465, column: 11, scope: !6378)
!6380 = !DILocation(line: 465, column: 6, scope: !6304)
!6381 = !DILocation(line: 465, column: 26, scope: !6378)
!6382 = !DILocation(line: 466, column: 6, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 466, column: 6)
!6384 = !DILocation(line: 466, column: 11, scope: !6383)
!6385 = !DILocation(line: 466, column: 6, scope: !6304)
!6386 = !DILocation(line: 466, column: 26, scope: !6383)
!6387 = !DILocation(line: 467, column: 6, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 467, column: 6)
!6389 = !DILocation(line: 467, column: 11, scope: !6388)
!6390 = !DILocation(line: 467, column: 6, scope: !6304)
!6391 = !DILocation(line: 467, column: 26, scope: !6388)
!6392 = !DILocation(line: 468, column: 6, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 468, column: 6)
!6394 = !DILocation(line: 468, column: 11, scope: !6393)
!6395 = !DILocation(line: 468, column: 6, scope: !6304)
!6396 = !DILocation(line: 468, column: 26, scope: !6393)
!6397 = !DILocation(line: 469, column: 6, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 469, column: 6)
!6399 = !DILocation(line: 469, column: 11, scope: !6398)
!6400 = !DILocation(line: 469, column: 6, scope: !6304)
!6401 = !DILocation(line: 469, column: 26, scope: !6398)
!6402 = !DILocation(line: 470, column: 6, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 470, column: 6)
!6404 = !DILocation(line: 470, column: 11, scope: !6403)
!6405 = !DILocation(line: 470, column: 6, scope: !6304)
!6406 = !DILocation(line: 470, column: 26, scope: !6403)
!6407 = !DILocation(line: 471, column: 6, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 471, column: 6)
!6409 = !DILocation(line: 471, column: 11, scope: !6408)
!6410 = !DILocation(line: 471, column: 6, scope: !6304)
!6411 = !DILocation(line: 471, column: 26, scope: !6408)
!6412 = !DILocation(line: 472, column: 6, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 472, column: 6)
!6414 = !DILocation(line: 472, column: 11, scope: !6413)
!6415 = !DILocation(line: 472, column: 6, scope: !6304)
!6416 = !DILocation(line: 472, column: 26, scope: !6413)
!6417 = !DILocation(line: 473, column: 6, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 473, column: 6)
!6419 = !DILocation(line: 473, column: 11, scope: !6418)
!6420 = !DILocation(line: 473, column: 6, scope: !6304)
!6421 = !DILocation(line: 473, column: 26, scope: !6418)
!6422 = !DILocation(line: 474, column: 6, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 474, column: 6)
!6424 = !DILocation(line: 474, column: 11, scope: !6423)
!6425 = !DILocation(line: 474, column: 6, scope: !6304)
!6426 = !DILocation(line: 474, column: 27, scope: !6423)
!6427 = !DILocation(line: 475, column: 6, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 475, column: 6)
!6429 = !DILocation(line: 475, column: 11, scope: !6428)
!6430 = !DILocation(line: 475, column: 6, scope: !6304)
!6431 = !DILocation(line: 475, column: 32, scope: !6428)
!6432 = !DILocation(line: 477, column: 50, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6304, file: !147, line: 477, column: 6)
!6434 = !DILocation(line: 477, column: 6, scope: !6304)
!6435 = !DILocation(line: 478, column: 3, scope: !6433)
!6436 = !DILocation(line: 478, column: 3, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6438, file: !147, line: 478, column: 3)
!6438 = distinct !DILexicalBlock(scope: !6433, file: !147, line: 478, column: 3)
!6439 = !{i32 -2141961079}
!6440 = !DILocation(line: 478, column: 3, scope: !6438)
!6441 = !DILocation(line: 480, column: 3, scope: !6433)
!6442 = !DILocation(line: 480, column: 3, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6433, file: !147, line: 480, column: 3)
!6444 = !DILocation(line: 480, column: 3, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6443, file: !147, line: 480, column: 3)
!6446 = !DILocation(line: 480, column: 3, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6443, file: !147, line: 480, column: 3)
!6448 = !{i64 2153006420, i64 2153006449, i64 2153006495, i64 2153006553, i64 2153006607, i64 2153006661, i64 2153006716, i64 2153006747}
!6449 = !DILocation(line: 483, column: 2, scope: !6304)
!6450 = !DILocation(line: 484, column: 1, scope: !6304)
!6451 = !DISubprogram(name: "kmalloc_trace", scope: !147, file: !147, line: 525, type: !6452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6452 = !DISubroutineType(types: !6453)
!6453 = !{!171, !6454, !1215, !415}
!6454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6455, size: 64)
!6455 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6456, line: 11, flags: DIFlagFwdDecl)
!6456 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6457 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 401, type: !6458, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6460)
!6458 = !DISubroutineType(types: !6459)
!6459 = !{!146, !1215, !230}
!6460 = !{!6461, !6462}
!6461 = !DILocalVariable(name: "flags", arg: 1, scope: !6457, file: !147, line: 401, type: !1215)
!6462 = !DILocalVariable(name: "caller", arg: 2, scope: !6457, file: !147, line: 401, type: !230)
!6463 = !DILocation(line: 401, column: 67, scope: !6457)
!6464 = !DILocation(line: 401, column: 88, scope: !6457)
!6465 = !DILocation(line: 407, column: 6, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6457, file: !147, line: 407, column: 6)
!6467 = !DILocation(line: 407, column: 6, scope: !6457)
!6468 = !DILocation(line: 413, column: 3, scope: !6466)
!6469 = !DILocation(line: 423, column: 38, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6457, file: !147, line: 423, column: 6)
!6471 = !DILocation(line: 423, column: 44, scope: !6470)
!6472 = !DILocation(line: 423, column: 6, scope: !6457)
!6473 = !DILocation(line: 424, column: 3, scope: !6470)
!6474 = !DILocation(line: 426, column: 3, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6457, file: !147, line: 425, column: 6)
!6476 = !DILocation(line: 429, column: 1, scope: !6457)
!6477 = !DISubprogram(name: "__kmalloc", scope: !147, file: !147, line: 488, type: !6211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6478 = !DISubprogram(name: "__compiletime_assert_204", scope: !147, file: !147, line: 478, type: !1066, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6479 = !DISubprogram(name: "kfree", scope: !147, file: !147, line: 227, type: !6480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6480 = !DISubroutineType(types: !6481)
!6481 = !{null, !2606}
!6482 = distinct !DISubprogram(name: "dev_name", scope: !94, file: !94, line: 858, type: !6483, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6485)
!6483 = !DISubroutineType(types: !6484)
!6484 = !{!181, !4227}
!6485 = !{!6486}
!6486 = !DILocalVariable(name: "dev", arg: 1, scope: !6482, file: !94, line: 858, type: !4227)
!6487 = !DILocation(line: 858, column: 57, scope: !6482)
!6488 = !DILocation(line: 861, column: 6, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6482, file: !94, line: 861, column: 6)
!6490 = !DILocation(line: 861, column: 11, scope: !6489)
!6491 = !DILocation(line: 861, column: 6, scope: !6482)
!6492 = !DILocation(line: 862, column: 10, scope: !6489)
!6493 = !DILocation(line: 862, column: 15, scope: !6489)
!6494 = !DILocation(line: 862, column: 3, scope: !6489)
!6495 = !DILocation(line: 864, column: 23, scope: !6482)
!6496 = !DILocation(line: 864, column: 28, scope: !6482)
!6497 = !DILocation(line: 864, column: 9, scope: !6482)
!6498 = !DILocation(line: 864, column: 2, scope: !6482)
!6499 = !DILocation(line: 865, column: 1, scope: !6482)
!6500 = distinct !DISubprogram(name: "kobject_name", scope: !290, file: !290, line: 87, type: !356, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6501)
!6501 = !{!6502}
!6502 = !DILocalVariable(name: "kobj", arg: 1, scope: !6500, file: !290, line: 87, type: !351)
!6503 = !DILocation(line: 87, column: 62, scope: !6500)
!6504 = !DILocation(line: 89, column: 9, scope: !6500)
!6505 = !DILocation(line: 89, column: 15, scope: !6500)
!6506 = !DILocation(line: 89, column: 2, scope: !6500)
!6507 = !DISubprogram(name: "__pm_runtime_use_autosuspend", scope: !5627, file: !5627, line: 85, type: !4465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6508 = !DISubprogram(name: "ktime_get_mono_fast_ns", scope: !6509, file: !6509, line: 177, type: !6510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6509 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!6510 = !DISubroutineType(types: !6511)
!6511 = !{!222}
!6512 = !DISubprogram(name: "__pm_runtime_suspend", scope: !5627, file: !5627, line: 73, type: !6513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6513 = !DISubroutineType(types: !6514)
!6514 = !{!109, !285, !109}
!6515 = !DISubprogram(name: "pm_runtime_forbid", scope: !5627, file: !5627, line: 82, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6516 = distinct !DISubprogram(name: "pm_runtime_get_noresume", scope: !5627, file: !5627, line: 127, type: !4236, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6517)
!6517 = !{!6518}
!6518 = !DILocalVariable(name: "dev", arg: 1, scope: !6516, file: !5627, line: 127, type: !285)
!6519 = !DILocation(line: 127, column: 59, scope: !6516)
!6520 = !DILocation(line: 129, column: 14, scope: !6516)
!6521 = !DILocation(line: 129, column: 19, scope: !6516)
!6522 = !DILocation(line: 129, column: 25, scope: !6516)
!6523 = !DILocation(line: 129, column: 2, scope: !6516)
!6524 = !DILocation(line: 130, column: 1, scope: !6516)
!6525 = distinct !DISubprogram(name: "pm_runtime_dont_use_autosuspend", scope: !5627, file: !5627, line: 595, type: !4236, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6526)
!6526 = !{!6527}
!6527 = !DILocalVariable(name: "dev", arg: 1, scope: !6525, file: !5627, line: 595, type: !285)
!6528 = !DILocation(line: 595, column: 67, scope: !6525)
!6529 = !DILocation(line: 597, column: 31, scope: !6525)
!6530 = !DILocation(line: 597, column: 2, scope: !6525)
!6531 = !DILocation(line: 598, column: 1, scope: !6525)
!6532 = distinct !DISubprogram(name: "pcie_port_device_remove", scope: !3, file: !3, line: 500, type: !4742, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6533)
!6533 = !{!6534}
!6534 = !DILocalVariable(name: "dev", arg: 1, scope: !6532, file: !3, line: 500, type: !193)
!6535 = !DILocation(line: 500, column: 53, scope: !6532)
!6536 = !DILocation(line: 502, column: 25, scope: !6532)
!6537 = !DILocation(line: 502, column: 30, scope: !6532)
!6538 = !DILocation(line: 502, column: 2, scope: !6532)
!6539 = !DILocation(line: 503, column: 23, scope: !6532)
!6540 = !DILocation(line: 503, column: 2, scope: !6532)
!6541 = !DILocation(line: 504, column: 1, scope: !6532)
!6542 = distinct !DISubprogram(name: "atomic_inc", scope: !6543, file: !6543, line: 433, type: !6544, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6547)
!6543 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6544 = !DISubroutineType(types: !6545)
!6545 = !{null, !6546}
!6546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!6547 = !{!6548}
!6548 = !DILocalVariable(name: "v", arg: 1, scope: !6542, file: !6543, line: 433, type: !6546)
!6549 = !DILocation(line: 433, column: 22, scope: !6542)
!6550 = !DILocation(line: 435, column: 31, scope: !6542)
!6551 = !DILocation(line: 435, column: 2, scope: !6542)
!6552 = !DILocation(line: 436, column: 17, scope: !6542)
!6553 = !DILocation(line: 436, column: 2, scope: !6542)
!6554 = !DILocation(line: 437, column: 1, scope: !6542)
!6555 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6556, file: !6556, line: 94, type: !6557, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6562)
!6556 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6557 = !DISubroutineType(types: !6558)
!6558 = !{null, !6559, !415}
!6559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6560, size: 64)
!6560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6561)
!6561 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6562 = !{!6563, !6564}
!6563 = !DILocalVariable(name: "v", arg: 1, scope: !6555, file: !6556, line: 94, type: !6559)
!6564 = !DILocalVariable(name: "size", arg: 2, scope: !6555, file: !6556, line: 94, type: !415)
!6565 = !DILocation(line: 94, column: 79, scope: !6555)
!6566 = !DILocation(line: 94, column: 89, scope: !6555)
!6567 = !DILocation(line: 96, column: 20, scope: !6555)
!6568 = !DILocation(line: 96, column: 23, scope: !6555)
!6569 = !DILocation(line: 96, column: 2, scope: !6555)
!6570 = !DILocation(line: 97, column: 2, scope: !6555)
!6571 = !DILocation(line: 98, column: 1, scope: !6555)
!6572 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6573, file: !6573, line: 976, type: !6544, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6574)
!6573 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6574 = !{!6575}
!6575 = !DILocalVariable(name: "v", arg: 1, scope: !6572, file: !6573, line: 976, type: !6546)
!6576 = !DILocation(line: 976, column: 26, scope: !6572)
!6577 = !DILocation(line: 979, column: 18, scope: !6572)
!6578 = !DILocation(line: 979, column: 2, scope: !6572)
!6579 = !DILocation(line: 983, column: 1, scope: !6572)
!6580 = distinct !DISubprogram(name: "kasan_check_write", scope: !6581, file: !6581, line: 44, type: !6582, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6584)
!6581 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6582 = !DISubroutineType(types: !6583)
!6583 = !{!783, !6559, !7}
!6584 = !{!6585, !6586}
!6585 = !DILocalVariable(name: "p", arg: 1, scope: !6580, file: !6581, line: 44, type: !6559)
!6586 = !DILocalVariable(name: "size", arg: 2, scope: !6580, file: !6581, line: 44, type: !7)
!6587 = !DILocation(line: 44, column: 59, scope: !6580)
!6588 = !DILocation(line: 44, column: 75, scope: !6580)
!6589 = !DILocation(line: 46, column: 2, scope: !6580)
!6590 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6591, file: !6591, line: 229, type: !6592, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6594)
!6591 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6592 = !DISubroutineType(types: !6593)
!6593 = !{null, !6559, !415, !109}
!6594 = !{!6595, !6596, !6597}
!6595 = !DILocalVariable(name: "ptr", arg: 1, scope: !6590, file: !6591, line: 229, type: !6559)
!6596 = !DILocalVariable(name: "size", arg: 2, scope: !6590, file: !6591, line: 229, type: !415)
!6597 = !DILocalVariable(name: "type", arg: 3, scope: !6590, file: !6591, line: 230, type: !109)
!6598 = !DILocation(line: 229, column: 60, scope: !6590)
!6599 = !DILocation(line: 229, column: 72, scope: !6590)
!6600 = !DILocation(line: 230, column: 15, scope: !6590)
!6601 = !DILocation(line: 230, column: 23, scope: !6590)
!6602 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6603, file: !6603, line: 51, type: !6544, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6604)
!6603 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6604 = !{!6605}
!6605 = !DILocalVariable(name: "v", arg: 1, scope: !6602, file: !6603, line: 51, type: !6546)
!6606 = !DILocation(line: 51, column: 55, scope: !6602)
!6607 = !DILocation(line: 54, column: 16, scope: !6602)
!6608 = !DILocation(line: 54, column: 19, scope: !6602)
!6609 = !DILocation(line: 53, column: 2, scope: !6602)
!6610 = !{i64 2148532080, i64 2148532119, i64 2148532140, i64 2148532177, i64 2148532200, i64 2148532070}
!6611 = !DILocation(line: 55, column: 1, scope: !6602)
!6612 = distinct !DISubprogram(name: "remove_iter", scope: !3, file: !3, line: 443, type: !5079, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6613)
!6613 = !{!6614, !6615}
!6614 = !DILocalVariable(name: "dev", arg: 1, scope: !6612, file: !3, line: 443, type: !285)
!6615 = !DILocalVariable(name: "data", arg: 2, scope: !6612, file: !3, line: 443, type: !171)
!6616 = !DILocation(line: 443, column: 39, scope: !6612)
!6617 = !DILocation(line: 443, column: 50, scope: !6612)
!6618 = !DILocation(line: 445, column: 6, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 445, column: 6)
!6620 = !DILocation(line: 445, column: 11, scope: !6619)
!6621 = !DILocation(line: 445, column: 15, scope: !6619)
!6622 = !DILocation(line: 445, column: 6, scope: !6612)
!6623 = !DILocation(line: 446, column: 21, scope: !6619)
!6624 = !DILocation(line: 446, column: 3, scope: !6619)
!6625 = !DILocation(line: 447, column: 2, scope: !6612)
!6626 = !DISubprogram(name: "device_unregister", scope: !94, file: !94, line: 1055, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6627 = distinct !DISubprogram(name: "pcie_portdrv_error_detected", scope: !3, file: !3, line: 744, type: !4769, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6628)
!6628 = !{!6629, !6630}
!6629 = !DILocalVariable(name: "dev", arg: 1, scope: !6627, file: !3, line: 744, type: !193)
!6630 = !DILocalVariable(name: "error", arg: 2, scope: !6627, file: !3, line: 745, type: !4772)
!6631 = !DILocation(line: 744, column: 69, scope: !6627)
!6632 = !DILocation(line: 745, column: 26, scope: !6627)
!6633 = !DILocation(line: 747, column: 6, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6627, file: !3, line: 747, column: 6)
!6635 = !DILocation(line: 747, column: 12, scope: !6634)
!6636 = !DILocation(line: 747, column: 6, scope: !6627)
!6637 = !DILocation(line: 748, column: 3, scope: !6634)
!6638 = !DILocation(line: 749, column: 2, scope: !6627)
!6639 = !DILocation(line: 750, column: 1, scope: !6627)
!6640 = distinct !DISubprogram(name: "pcie_portdrv_mmio_enabled", scope: !3, file: !3, line: 762, type: !4775, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6641)
!6641 = !{!6642}
!6642 = !DILocalVariable(name: "dev", arg: 1, scope: !6640, file: !3, line: 762, type: !193)
!6643 = !DILocation(line: 762, column: 67, scope: !6640)
!6644 = !DILocation(line: 764, column: 2, scope: !6640)
!6645 = distinct !DISubprogram(name: "pcie_portdrv_slot_reset", scope: !3, file: !3, line: 752, type: !4775, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6646)
!6646 = !{!6647, !6648}
!6647 = !DILocalVariable(name: "dev", arg: 1, scope: !6645, file: !3, line: 752, type: !193)
!6648 = !DILocalVariable(name: "off", scope: !6645, file: !3, line: 754, type: !415)
!6649 = !DILocation(line: 752, column: 65, scope: !6645)
!6650 = !DILocation(line: 754, column: 2, scope: !6645)
!6651 = !DILocation(line: 754, column: 9, scope: !6645)
!6652 = !DILocation(line: 755, column: 25, scope: !6645)
!6653 = !DILocation(line: 755, column: 30, scope: !6645)
!6654 = !DILocation(line: 755, column: 2, scope: !6645)
!6655 = !DILocation(line: 757, column: 20, scope: !6645)
!6656 = !DILocation(line: 757, column: 2, scope: !6645)
!6657 = !DILocation(line: 758, column: 17, scope: !6645)
!6658 = !DILocation(line: 758, column: 2, scope: !6645)
!6659 = !DILocation(line: 760, column: 1, scope: !6645)
!6660 = !DILocation(line: 759, column: 2, scope: !6645)
!6661 = distinct !DISubprogram(name: "pcie_port_device_iter", scope: !3, file: !3, line: 380, type: !5079, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6662)
!6662 = !{!6663, !6664, !6665, !6666, !6667, !6668, !6672}
!6663 = !DILocalVariable(name: "dev", arg: 1, scope: !6661, file: !3, line: 380, type: !285)
!6664 = !DILocalVariable(name: "data", arg: 2, scope: !6661, file: !3, line: 380, type: !171)
!6665 = !DILocalVariable(name: "service_driver", scope: !6661, file: !3, line: 382, type: !176)
!6666 = !DILocalVariable(name: "offset", scope: !6661, file: !3, line: 383, type: !415)
!6667 = !DILocalVariable(name: "cb", scope: !6661, file: !3, line: 384, type: !4953)
!6668 = !DILocalVariable(name: "__mptr", scope: !6669, file: !3, line: 387, type: !171)
!6669 = distinct !DILexicalBlock(scope: !6670, file: !3, line: 387, column: 20)
!6670 = distinct !DILexicalBlock(scope: !6671, file: !3, line: 386, column: 56)
!6671 = distinct !DILexicalBlock(scope: !6661, file: !3, line: 386, column: 6)
!6672 = !DILocalVariable(name: "__mptr", scope: !6673, file: !3, line: 390, type: !171)
!6673 = distinct !DILexicalBlock(scope: !6674, file: !3, line: 390, column: 14)
!6674 = distinct !DILexicalBlock(scope: !6670, file: !3, line: 389, column: 7)
!6675 = !DILocation(line: 380, column: 49, scope: !6661)
!6676 = !DILocation(line: 380, column: 60, scope: !6661)
!6677 = !DILocation(line: 382, column: 2, scope: !6661)
!6678 = !DILocation(line: 382, column: 35, scope: !6661)
!6679 = !DILocation(line: 383, column: 2, scope: !6661)
!6680 = !DILocation(line: 383, column: 9, scope: !6661)
!6681 = !DILocation(line: 383, column: 29, scope: !6661)
!6682 = !DILocation(line: 383, column: 18, scope: !6661)
!6683 = !DILocation(line: 384, column: 2, scope: !6661)
!6684 = !DILocation(line: 384, column: 18, scope: !6661)
!6685 = !DILocation(line: 386, column: 7, scope: !6671)
!6686 = !DILocation(line: 386, column: 12, scope: !6671)
!6687 = !DILocation(line: 386, column: 16, scope: !6671)
!6688 = !DILocation(line: 386, column: 40, scope: !6671)
!6689 = !DILocation(line: 386, column: 43, scope: !6671)
!6690 = !DILocation(line: 386, column: 48, scope: !6671)
!6691 = !DILocation(line: 386, column: 6, scope: !6661)
!6692 = !DILocation(line: 387, column: 20, scope: !6669)
!6693 = !DILocation(line: 387, column: 20, scope: !6670)
!6694 = !DILocation(line: 387, column: 18, scope: !6670)
!6695 = !DILocation(line: 388, column: 37, scope: !6670)
!6696 = !DILocation(line: 388, column: 54, scope: !6670)
!6697 = !DILocation(line: 388, column: 52, scope: !6670)
!6698 = !DILocation(line: 388, column: 8, scope: !6670)
!6699 = !DILocation(line: 388, column: 6, scope: !6670)
!6700 = !DILocation(line: 389, column: 7, scope: !6674)
!6701 = !DILocation(line: 389, column: 7, scope: !6670)
!6702 = !DILocation(line: 390, column: 11, scope: !6674)
!6703 = !DILocation(line: 390, column: 14, scope: !6673)
!6704 = !DILocation(line: 390, column: 14, scope: !6674)
!6705 = !DILocation(line: 390, column: 4, scope: !6674)
!6706 = !DILocation(line: 391, column: 2, scope: !6670)
!6707 = !DILocation(line: 392, column: 2, scope: !6661)
!6708 = !DILocation(line: 393, column: 1, scope: !6661)
!6709 = !DISubprogram(name: "pci_restore_state", scope: !157, file: !157, line: 1389, type: !4742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6710 = distinct !DISubprogram(name: "pcie_port_device_suspend", scope: !3, file: !3, line: 400, type: !4245, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6711)
!6711 = !{!6712, !6713}
!6712 = !DILocalVariable(name: "dev", arg: 1, scope: !6710, file: !3, line: 400, type: !285)
!6713 = !DILocalVariable(name: "off", scope: !6710, file: !3, line: 402, type: !415)
!6714 = !DILocation(line: 400, column: 52, scope: !6710)
!6715 = !DILocation(line: 402, column: 2, scope: !6710)
!6716 = !DILocation(line: 402, column: 9, scope: !6710)
!6717 = !DILocation(line: 403, column: 31, scope: !6710)
!6718 = !DILocation(line: 403, column: 9, scope: !6710)
!6719 = !DILocation(line: 404, column: 1, scope: !6710)
!6720 = !DILocation(line: 403, column: 2, scope: !6710)
!6721 = distinct !DISubprogram(name: "pcie_port_device_resume", scope: !3, file: !3, line: 416, type: !4245, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6722)
!6722 = !{!6723, !6724}
!6723 = !DILocalVariable(name: "dev", arg: 1, scope: !6721, file: !3, line: 416, type: !285)
!6724 = !DILocalVariable(name: "off", scope: !6721, file: !3, line: 418, type: !415)
!6725 = !DILocation(line: 416, column: 51, scope: !6721)
!6726 = !DILocation(line: 418, column: 2, scope: !6721)
!6727 = !DILocation(line: 418, column: 9, scope: !6721)
!6728 = !DILocation(line: 419, column: 31, scope: !6721)
!6729 = !DILocation(line: 419, column: 9, scope: !6721)
!6730 = !DILocation(line: 420, column: 1, scope: !6721)
!6731 = !DILocation(line: 419, column: 2, scope: !6721)
!6732 = distinct !DISubprogram(name: "pcie_port_device_resume_noirq", scope: !3, file: !3, line: 406, type: !4245, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6733)
!6733 = !{!6734, !6735}
!6734 = !DILocalVariable(name: "dev", arg: 1, scope: !6732, file: !3, line: 406, type: !285)
!6735 = !DILocalVariable(name: "off", scope: !6732, file: !3, line: 408, type: !415)
!6736 = !DILocation(line: 406, column: 57, scope: !6732)
!6737 = !DILocation(line: 408, column: 2, scope: !6732)
!6738 = !DILocation(line: 408, column: 9, scope: !6732)
!6739 = !DILocation(line: 409, column: 31, scope: !6732)
!6740 = !DILocation(line: 409, column: 9, scope: !6732)
!6741 = !DILocation(line: 410, column: 1, scope: !6732)
!6742 = !DILocation(line: 409, column: 2, scope: !6732)
!6743 = distinct !DISubprogram(name: "pcie_port_runtime_suspend", scope: !3, file: !3, line: 632, type: !4245, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6744)
!6744 = !{!6745, !6746}
!6745 = !DILocalVariable(name: "dev", arg: 1, scope: !6743, file: !3, line: 632, type: !285)
!6746 = !DILocalVariable(name: "__mptr", scope: !6747, file: !3, line: 634, type: !171)
!6747 = distinct !DILexicalBlock(scope: !6748, file: !3, line: 634, column: 7)
!6748 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 634, column: 6)
!6749 = !DILocation(line: 632, column: 53, scope: !6743)
!6750 = !DILocation(line: 634, column: 7, scope: !6747)
!6751 = !DILocation(line: 634, column: 7, scope: !6748)
!6752 = !DILocation(line: 634, column: 24, scope: !6748)
!6753 = !DILocation(line: 634, column: 6, scope: !6743)
!6754 = !DILocation(line: 635, column: 3, scope: !6748)
!6755 = !DILocation(line: 637, column: 42, scope: !6743)
!6756 = !DILocation(line: 637, column: 9, scope: !6743)
!6757 = !DILocation(line: 637, column: 2, scope: !6743)
!6758 = !DILocation(line: 638, column: 1, scope: !6743)
!6759 = distinct !DISubprogram(name: "pcie_port_device_runtime_resume", scope: !3, file: !3, line: 436, type: !4245, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6760)
!6760 = !{!6761, !6762}
!6761 = !DILocalVariable(name: "dev", arg: 1, scope: !6759, file: !3, line: 436, type: !285)
!6762 = !DILocalVariable(name: "off", scope: !6759, file: !3, line: 438, type: !415)
!6763 = !DILocation(line: 436, column: 59, scope: !6759)
!6764 = !DILocation(line: 438, column: 2, scope: !6759)
!6765 = !DILocation(line: 438, column: 9, scope: !6759)
!6766 = !DILocation(line: 439, column: 31, scope: !6759)
!6767 = !DILocation(line: 439, column: 9, scope: !6759)
!6768 = !DILocation(line: 440, column: 1, scope: !6759)
!6769 = !DILocation(line: 439, column: 2, scope: !6759)
!6770 = distinct !DISubprogram(name: "pcie_port_runtime_idle", scope: !3, file: !3, line: 640, type: !4245, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6771)
!6771 = !{!6772, !6773}
!6772 = !DILocalVariable(name: "dev", arg: 1, scope: !6770, file: !3, line: 640, type: !285)
!6773 = !DILocalVariable(name: "__mptr", scope: !6774, file: !3, line: 647, type: !171)
!6774 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 647, column: 9)
!6775 = !DILocation(line: 640, column: 50, scope: !6770)
!6776 = !DILocation(line: 647, column: 9, scope: !6774)
!6777 = !DILocation(line: 647, column: 9, scope: !6770)
!6778 = !DILocation(line: 647, column: 26, scope: !6770)
!6779 = !DILocation(line: 647, column: 2, scope: !6770)
!6780 = distinct !DISubprogram(name: "pcie_port_device_runtime_suspend", scope: !3, file: !3, line: 426, type: !4245, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6781)
!6781 = !{!6782, !6783}
!6782 = !DILocalVariable(name: "dev", arg: 1, scope: !6780, file: !3, line: 426, type: !285)
!6783 = !DILocalVariable(name: "off", scope: !6780, file: !3, line: 428, type: !415)
!6784 = !DILocation(line: 426, column: 60, scope: !6780)
!6785 = !DILocation(line: 428, column: 2, scope: !6780)
!6786 = !DILocation(line: 428, column: 9, scope: !6780)
!6787 = !DILocation(line: 429, column: 31, scope: !6780)
!6788 = !DILocation(line: 429, column: 9, scope: !6780)
!6789 = !DILocation(line: 430, column: 1, scope: !6780)
!6790 = !DILocation(line: 429, column: 2, scope: !6780)
