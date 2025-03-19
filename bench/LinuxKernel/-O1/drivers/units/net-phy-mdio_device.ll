; ModuleID = 'drivers/net/phy/mdio_device.c'
source_filename = "drivers/net/phy/mdio_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mdio_device_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mdio_device_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mdio_device_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mdio_device_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mdio_device_register: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mdio_device_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mdio_device_remove: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mdio_device_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mdio_device_reset: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mdio_device_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mdio_driver_register: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mdio_driver_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mdio_driver_unregister: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad mdio_driver_unregister ; .previous"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { %struct.local64_t }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.u64_stats_sync = type {}

@__UNIQUE_ID___addressable_mdio_device_free338 = internal global ptr @mdio_device_free, section ".discard.addressable", align 8, !dbg !0
@mdio_bus_type = external dso_local global %struct.bus_type, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1, !dbg !4789
@__UNIQUE_ID___addressable_mdio_device_create339 = internal global ptr @mdio_device_create, section ".discard.addressable", align 8, !dbg !4791
@.str.1 = private unnamed_addr constant [33 x i8] c"\013libphy: MDIO %d failed to add\0A\00", align 1, !dbg !4793
@__UNIQUE_ID___addressable_mdio_device_register340 = internal global ptr @mdio_device_register, section ".discard.addressable", align 8, !dbg !4798
@__UNIQUE_ID___addressable_mdio_device_remove341 = internal global ptr @mdio_device_remove, section ".discard.addressable", align 8, !dbg !4800
@__UNIQUE_ID___addressable_mdio_device_reset342 = internal global ptr @mdio_device_reset, section ".discard.addressable", align 8, !dbg !4802
@.str.2 = private unnamed_addr constant [46 x i8] c"\013libphy: %s: Error %d in registering driver\0A\00", align 1, !dbg !4804
@__UNIQUE_ID___addressable_mdio_driver_register343 = internal global ptr @mdio_driver_register, section ".discard.addressable", align 8, !dbg !4809
@__UNIQUE_ID___addressable_mdio_driver_unregister344 = internal global ptr @mdio_driver_unregister, section ".discard.addressable", align 8, !dbg !4811
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4813
@.str.4 = private unnamed_addr constant [30 x i8] c"include/linux/gpio/consumer.h\00", align 1, !dbg !4818
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_mdio_device_free338, ptr @__UNIQUE_ID___addressable_mdio_device_create339, ptr @__UNIQUE_ID___addressable_mdio_device_register340, ptr @__UNIQUE_ID___addressable_mdio_device_remove341, ptr @__UNIQUE_ID___addressable_mdio_device_reset342, ptr @__UNIQUE_ID___addressable_mdio_driver_register343, ptr @__UNIQUE_ID___addressable_mdio_driver_unregister344], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mdio_device_free(ptr noundef %mdiodev) #0 align 16 !dbg !4832 {
entry:
  %mdiodev.addr = alloca ptr, align 8
  store ptr %mdiodev, ptr %mdiodev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdiodev.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  %0 = load ptr, ptr %mdiodev.addr, align 8, !dbg !4836
  %dev = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 0, !dbg !4837
  call void @put_device(ptr noundef %dev) #14, !dbg !4838
  ret void, !dbg !4839
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4840 dso_local void @put_device(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mdio_device_bus_match(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !4841 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %mdiodev = alloca ptr, align 8
  %mdiodrv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4843, metadata !DIExpression()), !dbg !4847
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4844, metadata !DIExpression()), !dbg !4848
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodev) #15, !dbg !4849
  call void @llvm.dbg.declare(metadata ptr %mdiodev, metadata !4845, metadata !DIExpression()), !dbg !4850
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4851
  %call = call ptr @to_mdio_device(ptr noundef %0) #14, !dbg !4852
  store ptr %call, ptr %mdiodev, align 8, !dbg !4850
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodrv) #15, !dbg !4853
  call void @llvm.dbg.declare(metadata ptr %mdiodrv, metadata !4846, metadata !DIExpression()), !dbg !4854
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !4855
  %call1 = call ptr @to_mdio_driver(ptr noundef %1) #14, !dbg !4856
  store ptr %call1, ptr %mdiodrv, align 8, !dbg !4854
  %2 = load ptr, ptr %mdiodrv, align 8, !dbg !4857
  %mdiodrv2 = getelementptr inbounds %struct.mdio_driver, ptr %2, i32 0, i32 0, !dbg !4859
  %flags = getelementptr inbounds %struct.mdio_driver_common, ptr %mdiodrv2, i32 0, i32 1, !dbg !4860
  %3 = load i32, ptr %flags, align 8, !dbg !4860
  %and = and i32 %3, -2147483648, !dbg !4861
  %tobool = icmp ne i32 %and, 0, !dbg !4861
  br i1 %tobool, label %if.then, label %if.end, !dbg !4862

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4863

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %mdiodev, align 8, !dbg !4864
  %modalias = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 2, !dbg !4865
  %arraydecay = getelementptr inbounds [32 x i8], ptr %modalias, i64 0, i64 0, !dbg !4864
  %5 = load ptr, ptr %drv.addr, align 8, !dbg !4866
  %name = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 0, !dbg !4867
  %6 = load ptr, ptr %name, align 8, !dbg !4867
  %call3 = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %6) #14, !dbg !4868
  %cmp = icmp eq i32 %call3, 0, !dbg !4869
  %conv = zext i1 %cmp to i32, !dbg !4869
  store i32 %conv, ptr %retval, align 4, !dbg !4870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4870

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodrv) #15, !dbg !4871
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodev) #15, !dbg !4871
  %7 = load i32, ptr %retval, align 4, !dbg !4871
  ret i32 %7, !dbg !4871
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_mdio_device(ptr noundef %dev) #4 align 16 !dbg !4872 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4876, metadata !DIExpression()), !dbg !4879
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4880
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4877, metadata !DIExpression()), !dbg !4880
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4880
  store ptr %0, ptr %__mptr, align 8, !dbg !4880
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4880
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4880
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4880
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4881
  %2 = load ptr, ptr %tmp, align 8, !dbg !4880
  ret ptr %2, !dbg !4882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_mdio_driver(ptr noundef %driver) #4 align 16 !dbg !4883 {
entry:
  %driver.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !4889, metadata !DIExpression()), !dbg !4892
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4890, metadata !DIExpression()), !dbg !4893
  %0 = load ptr, ptr %driver.addr, align 8, !dbg !4893
  %call = call ptr @to_mdio_common_driver(ptr noundef %0) #14, !dbg !4893
  store ptr %call, ptr %__mptr, align 8, !dbg !4893
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4893
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4893
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4893
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4894
  %2 = load ptr, ptr %tmp, align 8, !dbg !4893
  ret ptr %2, !dbg !4895
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4896 dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @mdio_device_create(ptr noundef %bus, i32 noundef %addr) #0 align 16 !dbg !4900 {
entry:
  %retval = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %mdiodev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4904, metadata !DIExpression()), !dbg !4907
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4905, metadata !DIExpression()), !dbg !4908
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodev) #15, !dbg !4909
  call void @llvm.dbg.declare(metadata ptr %mdiodev, metadata !4906, metadata !DIExpression()), !dbg !4910
  %call = call noalias ptr @kzalloc(i64 noundef 824, i32 noundef 3264) #16, !dbg !4911
  store ptr %call, ptr %mdiodev, align 8, !dbg !4912
  %0 = load ptr, ptr %mdiodev, align 8, !dbg !4913
  %tobool = icmp ne ptr %0, null, !dbg !4913
  br i1 %tobool, label %if.end, label %if.then, !dbg !4915

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !4916
  store ptr %call1, ptr %retval, align 8, !dbg !4917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4917

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mdiodev, align 8, !dbg !4918
  %dev = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 0, !dbg !4919
  %release = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 32, !dbg !4920
  store ptr @mdio_device_release, ptr %release, align 8, !dbg !4921
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !4922
  %dev2 = getelementptr inbounds %struct.mii_bus, ptr %2, i32 0, i32 13, !dbg !4923
  %3 = load ptr, ptr %mdiodev, align 8, !dbg !4924
  %dev3 = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 0, !dbg !4925
  %parent = getelementptr inbounds %struct.device, ptr %dev3, i32 0, i32 1, !dbg !4926
  store ptr %dev2, ptr %parent, align 8, !dbg !4927
  %4 = load ptr, ptr %mdiodev, align 8, !dbg !4928
  %dev4 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 0, !dbg !4929
  %bus5 = getelementptr inbounds %struct.device, ptr %dev4, i32 0, i32 5, !dbg !4930
  store ptr @mdio_bus_type, ptr %bus5, align 8, !dbg !4931
  %5 = load ptr, ptr %mdiodev, align 8, !dbg !4932
  %device_free = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 4, !dbg !4933
  store ptr @mdio_device_free, ptr %device_free, align 8, !dbg !4934
  %6 = load ptr, ptr %mdiodev, align 8, !dbg !4935
  %device_remove = getelementptr inbounds %struct.mdio_device, ptr %6, i32 0, i32 5, !dbg !4936
  store ptr @mdio_device_remove, ptr %device_remove, align 8, !dbg !4937
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !4938
  %8 = load ptr, ptr %mdiodev, align 8, !dbg !4939
  %bus6 = getelementptr inbounds %struct.mdio_device, ptr %8, i32 0, i32 1, !dbg !4940
  store ptr %7, ptr %bus6, align 8, !dbg !4941
  %9 = load i32, ptr %addr.addr, align 4, !dbg !4942
  %10 = load ptr, ptr %mdiodev, align 8, !dbg !4943
  %addr7 = getelementptr inbounds %struct.mdio_device, ptr %10, i32 0, i32 6, !dbg !4944
  store i32 %9, ptr %addr7, align 8, !dbg !4945
  %11 = load ptr, ptr %mdiodev, align 8, !dbg !4946
  %dev8 = getelementptr inbounds %struct.mdio_device, ptr %11, i32 0, i32 0, !dbg !4947
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !4948
  %id = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 2, !dbg !4949
  %arraydecay = getelementptr inbounds [61 x i8], ptr %id, i64 0, i64 0, !dbg !4948
  %13 = load i32, ptr %addr.addr, align 4, !dbg !4950
  %call9 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev8, ptr noundef @.str, ptr noundef %arraydecay, i32 noundef %13) #14, !dbg !4951
  %14 = load ptr, ptr %mdiodev, align 8, !dbg !4952
  %dev10 = getelementptr inbounds %struct.mdio_device, ptr %14, i32 0, i32 0, !dbg !4953
  call void @device_initialize(ptr noundef %dev10) #14, !dbg !4954
  %15 = load ptr, ptr %mdiodev, align 8, !dbg !4955
  store ptr %15, ptr %retval, align 8, !dbg !4956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4956

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodev) #15, !dbg !4957
  %16 = load ptr, ptr %retval, align 8, !dbg !4957
  ret ptr %16, !dbg !4957
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !4958 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4962, metadata !DIExpression()), !dbg !4964
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4963, metadata !DIExpression()), !dbg !4965
  %0 = load i64, ptr %size.addr, align 8, !dbg !4966
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4967
  %or = or i32 %1, 256, !dbg !4968
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4969
  ret ptr %call, !dbg !4970
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !4971 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  %0 = load i64, ptr %error.addr, align 8, !dbg !4978
  %1 = inttoptr i64 %0 to ptr, !dbg !4979
  ret ptr %1, !dbg !4980
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mdio_device_release(ptr noundef %dev) #0 align 16 !dbg !4981 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4985
  %fwnode = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24, !dbg !4986
  %1 = load ptr, ptr %fwnode, align 8, !dbg !4986
  call void @fwnode_handle_put(ptr noundef %1) #14, !dbg !4987
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4988
  %call = call ptr @to_mdio_device(ptr noundef %2) #14, !dbg !4989
  call void @kfree(ptr noundef %call) #14, !dbg !4990
  ret void, !dbg !4991
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mdio_device_remove(ptr noundef %mdiodev) #0 align 16 !dbg !4992 {
entry:
  %mdiodev.addr = alloca ptr, align 8
  store ptr %mdiodev, ptr %mdiodev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdiodev.addr, metadata !4994, metadata !DIExpression()), !dbg !4995
  %0 = load ptr, ptr %mdiodev.addr, align 8, !dbg !4996
  %dev = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 0, !dbg !4997
  call void @device_del(ptr noundef %dev) #14, !dbg !4998
  %1 = load ptr, ptr %mdiodev.addr, align 8, !dbg !4999
  %call = call i32 @mdiobus_unregister_device(ptr noundef %1) #14, !dbg !5000
  ret void, !dbg !5001
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5002 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5005 dso_local void @device_initialize(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mdio_device_register(ptr noundef %mdiodev) #0 align 16 !dbg !5006 {
entry:
  %retval = alloca i32, align 4
  %mdiodev.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %mdiodev, ptr %mdiodev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdiodev.addr, metadata !5008, metadata !DIExpression()), !dbg !5011
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5012
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5009, metadata !DIExpression()), !dbg !5013
  %0 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5014
  %call = call i32 @mdiobus_register_device(ptr noundef %0) #14, !dbg !5015
  store i32 %call, ptr %err, align 4, !dbg !5016
  %1 = load i32, ptr %err, align 4, !dbg !5017
  %tobool = icmp ne i32 %1, 0, !dbg !5017
  br i1 %tobool, label %if.then, label %if.end, !dbg !5019

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !5020
  store i32 %2, ptr %retval, align 4, !dbg !5021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5021

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5022
  %dev = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 0, !dbg !5023
  %call1 = call i32 @device_add(ptr noundef %dev) #14, !dbg !5024
  store i32 %call1, ptr %err, align 4, !dbg !5025
  %4 = load i32, ptr %err, align 4, !dbg !5026
  %tobool2 = icmp ne i32 %4, 0, !dbg !5026
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5028

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !5029

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !5032

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5032

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5029
  %addr = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 6, !dbg !5029
  %6 = load i32, ptr %addr, align 8, !dbg !5029
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %6) #17, !dbg !5029
  store i32 %call4, ptr %tmp, align 4, !dbg !5032
  %7 = load i32, ptr %tmp, align 4, !dbg !5029
  br label %out, !dbg !5034

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5035

out:                                              ; preds = %do.end
  call void @llvm.dbg.label(metadata !5010), !dbg !5036
  %8 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5037
  %call6 = call i32 @mdiobus_unregister_device(ptr noundef %8) #14, !dbg !5038
  %9 = load i32, ptr %err, align 4, !dbg !5039
  store i32 %9, ptr %retval, align 4, !dbg !5040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5040

cleanup:                                          ; preds = %out, %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5041
  %10 = load i32, ptr %retval, align 4, !dbg !5041
  ret i32 %10, !dbg !5041
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5042 dso_local i32 @mdiobus_register_device(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5043 dso_local i32 @device_add(ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5044 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5048 dso_local i32 @mdiobus_unregister_device(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5049 dso_local void @device_del(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mdio_device_reset(ptr noundef %mdiodev, i32 noundef %value) #0 align 16 !dbg !5050 {
entry:
  %mdiodev.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mdiodev, ptr %mdiodev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdiodev.addr, metadata !5054, metadata !DIExpression()), !dbg !5057
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5055, metadata !DIExpression()), !dbg !5058
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #15, !dbg !5059
  call void @llvm.dbg.declare(metadata ptr %d, metadata !5056, metadata !DIExpression()), !dbg !5060
  %0 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5061
  %reset_gpio = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 8, !dbg !5063
  %1 = load ptr, ptr %reset_gpio, align 8, !dbg !5063
  %tobool = icmp ne ptr %1, null, !dbg !5061
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5064

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5065
  %reset_ctrl = getelementptr inbounds %struct.mdio_device, ptr %2, i32 0, i32 9, !dbg !5066
  %3 = load ptr, ptr %reset_ctrl, align 8, !dbg !5066
  %tobool1 = icmp ne ptr %3, null, !dbg !5065
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5067

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5068

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5069
  %reset_gpio2 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 8, !dbg !5071
  %5 = load ptr, ptr %reset_gpio2, align 8, !dbg !5071
  %tobool3 = icmp ne ptr %5, null, !dbg !5069
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !5072

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5073
  %reset_gpio5 = getelementptr inbounds %struct.mdio_device, ptr %6, i32 0, i32 8, !dbg !5074
  %7 = load ptr, ptr %reset_gpio5, align 8, !dbg !5074
  %8 = load i32, ptr %value.addr, align 4, !dbg !5075
  call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef %8) #14, !dbg !5076
  br label %if.end6, !dbg !5076

if.end6:                                          ; preds = %if.then4, %if.end
  %9 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5077
  %reset_ctrl7 = getelementptr inbounds %struct.mdio_device, ptr %9, i32 0, i32 9, !dbg !5079
  %10 = load ptr, ptr %reset_ctrl7, align 8, !dbg !5079
  %tobool8 = icmp ne ptr %10, null, !dbg !5077
  br i1 %tobool8, label %if.then9, label %if.end16, !dbg !5080

if.then9:                                         ; preds = %if.end6
  %11 = load i32, ptr %value.addr, align 4, !dbg !5081
  %tobool10 = icmp ne i32 %11, 0, !dbg !5081
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !5084

if.then11:                                        ; preds = %if.then9
  %12 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5085
  %reset_ctrl12 = getelementptr inbounds %struct.mdio_device, ptr %12, i32 0, i32 9, !dbg !5086
  %13 = load ptr, ptr %reset_ctrl12, align 8, !dbg !5086
  %call = call i32 @reset_control_assert(ptr noundef %13) #14, !dbg !5087
  br label %if.end15, !dbg !5087

if.else:                                          ; preds = %if.then9
  %14 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5088
  %reset_ctrl13 = getelementptr inbounds %struct.mdio_device, ptr %14, i32 0, i32 9, !dbg !5089
  %15 = load ptr, ptr %reset_ctrl13, align 8, !dbg !5089
  %call14 = call i32 @reset_control_deassert(ptr noundef %15) #14, !dbg !5090
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  br label %if.end16, !dbg !5091

if.end16:                                         ; preds = %if.end15, %if.end6
  %16 = load i32, ptr %value.addr, align 4, !dbg !5092
  %tobool17 = icmp ne i32 %16, 0, !dbg !5092
  br i1 %tobool17, label %cond.true, label %cond.false, !dbg !5092

cond.true:                                        ; preds = %if.end16
  %17 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5093
  %reset_assert_delay = getelementptr inbounds %struct.mdio_device, ptr %17, i32 0, i32 10, !dbg !5094
  %18 = load i32, ptr %reset_assert_delay, align 8, !dbg !5094
  br label %cond.end, !dbg !5092

cond.false:                                       ; preds = %if.end16
  %19 = load ptr, ptr %mdiodev.addr, align 8, !dbg !5095
  %reset_deassert_delay = getelementptr inbounds %struct.mdio_device, ptr %19, i32 0, i32 11, !dbg !5096
  %20 = load i32, ptr %reset_deassert_delay, align 4, !dbg !5096
  br label %cond.end, !dbg !5092

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %20, %cond.false ], !dbg !5092
  store i32 %cond, ptr %d, align 4, !dbg !5097
  %21 = load i32, ptr %d, align 4, !dbg !5098
  %tobool18 = icmp ne i32 %21, 0, !dbg !5098
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5100

if.then19:                                        ; preds = %cond.end
  %22 = load i32, ptr %d, align 4, !dbg !5101
  %conv = zext i32 %22 to i64, !dbg !5101
  call void @fsleep(i64 noundef %conv) #14, !dbg !5102
  br label %if.end20, !dbg !5102

if.end20:                                         ; preds = %if.then19, %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5103
  br label %cleanup, !dbg !5103

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #15, !dbg !5103
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5103

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gpiod_set_value_cansleep(ptr noundef %desc, i32 noundef %value) #4 align 16 !dbg !5104 {
entry:
  %desc.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5108, metadata !DIExpression()), !dbg !5115
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5109, metadata !DIExpression()), !dbg !5116
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5117
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5110, metadata !DIExpression()), !dbg !5117
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5117
  %tobool = icmp ne ptr %0, null, !dbg !5117
  %lnot = xor i1 %tobool, true, !dbg !5117
  %lnot1 = xor i1 %lnot, true, !dbg !5117
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5117
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5117
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5118
  %tobool2 = icmp ne i32 %1, 0, !dbg !5118
  %lnot3 = xor i1 %tobool2, true, !dbg !5118
  %lnot5 = xor i1 %lnot3, true, !dbg !5118
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5118
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5118
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5118
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5118
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5117

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5118

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5119
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5112, metadata !DIExpression()), !dbg !5119
  store i32 2305, ptr %__flags, align 4, !dbg !5119
  br label %do.body8, !dbg !5119

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5120

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5120

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5119

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5122
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 441, i32 %2, i64 12) #15, !dbg !5122, !srcloc !5124
  br label %do.cond10, !dbg !5122

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5122

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5119

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5125

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5125

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5118
  br label %do.cond15, !dbg !5119

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5119

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5119

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5117
  %tobool17 = icmp ne i32 %3, 0, !dbg !5117
  %lnot18 = xor i1 %tobool17, true, !dbg !5117
  %lnot20 = xor i1 %lnot18, true, !dbg !5117
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5117
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5117
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5117
  store i64 %expval23, ptr %tmp, align 8, !dbg !5118
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5127
  %4 = load i64, ptr %tmp, align 8, !dbg !5117
  ret void, !dbg !5128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reset_control_assert(ptr noundef %rstc) #4 align 16 !dbg !5129 {
entry:
  %rstc.addr = alloca ptr, align 8
  store ptr %rstc, ptr %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rstc.addr, metadata !5134, metadata !DIExpression()), !dbg !5135
  ret i32 0, !dbg !5136
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reset_control_deassert(ptr noundef %rstc) #4 align 16 !dbg !5137 {
entry:
  %rstc.addr = alloca ptr, align 8
  store ptr %rstc, ptr %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rstc.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  ret i32 0, !dbg !5141
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsleep(i64 noundef %usecs) #4 align 16 !dbg !5142 {
entry:
  %usecs.addr = alloca i64, align 8
  store i64 %usecs, ptr %usecs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usecs.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  %0 = load i64, ptr %usecs.addr, align 8, !dbg !5149
  %cmp = icmp ule i64 %0, 10, !dbg !5151
  br i1 %cmp, label %if.then, label %if.else6, !dbg !5152

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %usecs.addr, align 8, !dbg !5153
  %2 = call i1 @llvm.is.constant.i64(i64 %1), !dbg !5153
  br i1 %2, label %if.then1, label %if.else4, !dbg !5156

if.then1:                                         ; preds = %if.then
  %3 = load i64, ptr %usecs.addr, align 8, !dbg !5157
  %div = udiv i64 %3, 20000, !dbg !5157
  %cmp2 = icmp uge i64 %div, 1, !dbg !5157
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !5160

if.then3:                                         ; preds = %if.then1
  call void @__bad_udelay() #14, !dbg !5157
  br label %if.end, !dbg !5157

if.else:                                          ; preds = %if.then1
  %4 = load i64, ptr %usecs.addr, align 8, !dbg !5157
  %mul = mul i64 %4, 4295, !dbg !5157
  call void @__const_udelay(i64 noundef %mul) #14, !dbg !5157
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end5, !dbg !5160

if.else4:                                         ; preds = %if.then
  %5 = load i64, ptr %usecs.addr, align 8, !dbg !5161
  call void @__udelay(i64 noundef %5) #14, !dbg !5161
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  br label %if.end13, !dbg !5163

if.else6:                                         ; preds = %entry
  %6 = load i64, ptr %usecs.addr, align 8, !dbg !5164
  %cmp7 = icmp ule i64 %6, 20000, !dbg !5166
  br i1 %cmp7, label %if.then8, label %if.else10, !dbg !5167

if.then8:                                         ; preds = %if.else6
  %7 = load i64, ptr %usecs.addr, align 8, !dbg !5168
  %8 = load i64, ptr %usecs.addr, align 8, !dbg !5169
  %mul9 = mul i64 2, %8, !dbg !5170
  call void @usleep_range(i64 noundef %7, i64 noundef %mul9) #14, !dbg !5171
  br label %if.end12, !dbg !5171

if.else10:                                        ; preds = %if.else6
  %9 = load i64, ptr %usecs.addr, align 8, !dbg !5172
  %add = add i64 %9, 1000, !dbg !5172
  %sub = sub i64 %add, 1, !dbg !5172
  %div11 = udiv i64 %sub, 1000, !dbg !5172
  %conv = trunc i64 %div11 to i32, !dbg !5172
  call void @msleep(i32 noundef %conv) #14, !dbg !5173
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end5
  ret void, !dbg !5174
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mdio_driver_register(ptr noundef %drv) #0 align 16 !dbg !5175 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %mdiodrv = alloca ptr, align 8
  %retval2 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5179, metadata !DIExpression()), !dbg !5182
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodrv) #15, !dbg !5183
  call void @llvm.dbg.declare(metadata ptr %mdiodrv, metadata !5180, metadata !DIExpression()), !dbg !5184
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !5185
  %mdiodrv1 = getelementptr inbounds %struct.mdio_driver, ptr %0, i32 0, i32 0, !dbg !5186
  store ptr %mdiodrv1, ptr %mdiodrv, align 8, !dbg !5184
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #15, !dbg !5187
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !5181, metadata !DIExpression()), !dbg !5188
  store i32 0, ptr %tmp, align 4, !dbg !5189
  %1 = load i32, ptr %tmp, align 4, !dbg !5192
  %2 = load ptr, ptr %mdiodrv, align 8, !dbg !5193
  %driver = getelementptr inbounds %struct.mdio_driver_common, ptr %2, i32 0, i32 0, !dbg !5194
  %bus = getelementptr inbounds %struct.device_driver, ptr %driver, i32 0, i32 1, !dbg !5195
  store ptr @mdio_bus_type, ptr %bus, align 8, !dbg !5196
  %3 = load ptr, ptr %mdiodrv, align 8, !dbg !5197
  %driver3 = getelementptr inbounds %struct.mdio_driver_common, ptr %3, i32 0, i32 0, !dbg !5198
  %probe = getelementptr inbounds %struct.device_driver, ptr %driver3, i32 0, i32 8, !dbg !5199
  store ptr @mdio_probe, ptr %probe, align 8, !dbg !5200
  %4 = load ptr, ptr %mdiodrv, align 8, !dbg !5201
  %driver4 = getelementptr inbounds %struct.mdio_driver_common, ptr %4, i32 0, i32 0, !dbg !5202
  %remove = getelementptr inbounds %struct.device_driver, ptr %driver4, i32 0, i32 10, !dbg !5203
  store ptr @mdio_remove, ptr %remove, align 8, !dbg !5204
  %5 = load ptr, ptr %mdiodrv, align 8, !dbg !5205
  %driver5 = getelementptr inbounds %struct.mdio_driver_common, ptr %5, i32 0, i32 0, !dbg !5206
  %shutdown = getelementptr inbounds %struct.device_driver, ptr %driver5, i32 0, i32 11, !dbg !5207
  store ptr @mdio_shutdown, ptr %shutdown, align 8, !dbg !5208
  %6 = load ptr, ptr %mdiodrv, align 8, !dbg !5209
  %driver6 = getelementptr inbounds %struct.mdio_driver_common, ptr %6, i32 0, i32 0, !dbg !5210
  %call = call i32 @driver_register(ptr noundef %driver6) #14, !dbg !5211
  store i32 %call, ptr %retval2, align 4, !dbg !5212
  %7 = load i32, ptr %retval2, align 4, !dbg !5213
  %tobool = icmp ne i32 %7, 0, !dbg !5213
  br i1 %tobool, label %if.then, label %if.end, !dbg !5215

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5216

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5219

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5219

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %mdiodrv, align 8, !dbg !5216
  %driver8 = getelementptr inbounds %struct.mdio_driver_common, ptr %8, i32 0, i32 0, !dbg !5216
  %name = getelementptr inbounds %struct.device_driver, ptr %driver8, i32 0, i32 0, !dbg !5216
  %9 = load ptr, ptr %name, align 8, !dbg !5216
  %10 = load i32, ptr %retval2, align 4, !dbg !5216
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %9, i32 noundef %10) #17, !dbg !5216
  store i32 %call9, ptr %tmp7, align 4, !dbg !5219
  %11 = load i32, ptr %tmp7, align 4, !dbg !5216
  %12 = load i32, ptr %retval2, align 4, !dbg !5221
  store i32 %12, ptr %retval, align 4, !dbg !5222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5222

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5223

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #15, !dbg !5224
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodrv) #15, !dbg !5224
  %13 = load i32, ptr %retval, align 4, !dbg !5224
  ret i32 %13, !dbg !5224
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mdio_probe(ptr noundef %dev) #0 align 16 !dbg !5225 {
entry:
  %dev.addr = alloca ptr, align 8
  %mdiodev = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %mdiodrv = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5227, metadata !DIExpression()), !dbg !5232
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodev) #15, !dbg !5233
  call void @llvm.dbg.declare(metadata ptr %mdiodev, metadata !5228, metadata !DIExpression()), !dbg !5234
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5235
  %call = call ptr @to_mdio_device(ptr noundef %0) #14, !dbg !5236
  store ptr %call, ptr %mdiodev, align 8, !dbg !5234
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !5237
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5229, metadata !DIExpression()), !dbg !5238
  %1 = load ptr, ptr %mdiodev, align 8, !dbg !5239
  %dev1 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 0, !dbg !5240
  %driver = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 6, !dbg !5241
  %2 = load ptr, ptr %driver, align 8, !dbg !5241
  store ptr %2, ptr %drv, align 8, !dbg !5238
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodrv) #15, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %mdiodrv, metadata !5230, metadata !DIExpression()), !dbg !5243
  %3 = load ptr, ptr %drv, align 8, !dbg !5244
  %call2 = call ptr @to_mdio_driver(ptr noundef %3) #14, !dbg !5245
  store ptr %call2, ptr %mdiodrv, align 8, !dbg !5243
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5246
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5231, metadata !DIExpression()), !dbg !5247
  store i32 0, ptr %err, align 4, !dbg !5247
  %4 = load ptr, ptr %mdiodev, align 8, !dbg !5248
  call void @mdio_device_reset(ptr noundef %4, i32 noundef 0) #14, !dbg !5249
  %5 = load ptr, ptr %mdiodrv, align 8, !dbg !5250
  %probe = getelementptr inbounds %struct.mdio_driver, ptr %5, i32 0, i32 1, !dbg !5252
  %6 = load ptr, ptr %probe, align 8, !dbg !5252
  %tobool = icmp ne ptr %6, null, !dbg !5250
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5253

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %mdiodrv, align 8, !dbg !5254
  %probe3 = getelementptr inbounds %struct.mdio_driver, ptr %7, i32 0, i32 1, !dbg !5256
  %8 = load ptr, ptr %probe3, align 8, !dbg !5256
  %9 = load ptr, ptr %mdiodev, align 8, !dbg !5257
  %call4 = call i32 %8(ptr noundef %9) #14, !dbg !5254
  store i32 %call4, ptr %err, align 4, !dbg !5258
  %10 = load i32, ptr %err, align 4, !dbg !5259
  %tobool5 = icmp ne i32 %10, 0, !dbg !5259
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !5261

if.then6:                                         ; preds = %if.then
  %11 = load ptr, ptr %mdiodev, align 8, !dbg !5262
  call void @mdio_device_reset(ptr noundef %11, i32 noundef 1) #14, !dbg !5264
  br label %if.end, !dbg !5265

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7, !dbg !5266

if.end7:                                          ; preds = %if.end, %entry
  %12 = load i32, ptr %err, align 4, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5268
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodrv) #15, !dbg !5268
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !5268
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodev) #15, !dbg !5268
  ret i32 %12, !dbg !5269
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mdio_remove(ptr noundef %dev) #0 align 16 !dbg !5270 {
entry:
  %dev.addr = alloca ptr, align 8
  %mdiodev = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %mdiodrv = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5272, metadata !DIExpression()), !dbg !5276
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodev) #15, !dbg !5277
  call void @llvm.dbg.declare(metadata ptr %mdiodev, metadata !5273, metadata !DIExpression()), !dbg !5278
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5279
  %call = call ptr @to_mdio_device(ptr noundef %0) #14, !dbg !5280
  store ptr %call, ptr %mdiodev, align 8, !dbg !5278
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5274, metadata !DIExpression()), !dbg !5282
  %1 = load ptr, ptr %mdiodev, align 8, !dbg !5283
  %dev1 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 0, !dbg !5284
  %driver = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 6, !dbg !5285
  %2 = load ptr, ptr %driver, align 8, !dbg !5285
  store ptr %2, ptr %drv, align 8, !dbg !5282
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodrv) #15, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %mdiodrv, metadata !5275, metadata !DIExpression()), !dbg !5287
  %3 = load ptr, ptr %drv, align 8, !dbg !5288
  %call2 = call ptr @to_mdio_driver(ptr noundef %3) #14, !dbg !5289
  store ptr %call2, ptr %mdiodrv, align 8, !dbg !5287
  %4 = load ptr, ptr %mdiodrv, align 8, !dbg !5290
  %remove = getelementptr inbounds %struct.mdio_driver, ptr %4, i32 0, i32 2, !dbg !5292
  %5 = load ptr, ptr %remove, align 8, !dbg !5292
  %tobool = icmp ne ptr %5, null, !dbg !5290
  br i1 %tobool, label %if.then, label %if.end, !dbg !5293

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %mdiodrv, align 8, !dbg !5294
  %remove3 = getelementptr inbounds %struct.mdio_driver, ptr %6, i32 0, i32 2, !dbg !5295
  %7 = load ptr, ptr %remove3, align 8, !dbg !5295
  %8 = load ptr, ptr %mdiodev, align 8, !dbg !5296
  call void %7(ptr noundef %8) #14, !dbg !5294
  br label %if.end, !dbg !5294

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %mdiodev, align 8, !dbg !5297
  call void @mdio_device_reset(ptr noundef %9, i32 noundef 1) #14, !dbg !5298
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodrv) #15, !dbg !5299
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !5299
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodev) #15, !dbg !5299
  ret i32 0, !dbg !5300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mdio_shutdown(ptr noundef %dev) #0 align 16 !dbg !5301 {
entry:
  %dev.addr = alloca ptr, align 8
  %mdiodev = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %mdiodrv = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5303, metadata !DIExpression()), !dbg !5307
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodev) #15, !dbg !5308
  call void @llvm.dbg.declare(metadata ptr %mdiodev, metadata !5304, metadata !DIExpression()), !dbg !5309
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5310
  %call = call ptr @to_mdio_device(ptr noundef %0) #14, !dbg !5311
  store ptr %call, ptr %mdiodev, align 8, !dbg !5309
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !5312
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5305, metadata !DIExpression()), !dbg !5313
  %1 = load ptr, ptr %mdiodev, align 8, !dbg !5314
  %dev1 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 0, !dbg !5315
  %driver = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 6, !dbg !5316
  %2 = load ptr, ptr %driver, align 8, !dbg !5316
  store ptr %2, ptr %drv, align 8, !dbg !5313
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodrv) #15, !dbg !5317
  call void @llvm.dbg.declare(metadata ptr %mdiodrv, metadata !5306, metadata !DIExpression()), !dbg !5318
  %3 = load ptr, ptr %drv, align 8, !dbg !5319
  %call2 = call ptr @to_mdio_driver(ptr noundef %3) #14, !dbg !5320
  store ptr %call2, ptr %mdiodrv, align 8, !dbg !5318
  %4 = load ptr, ptr %mdiodrv, align 8, !dbg !5321
  %shutdown = getelementptr inbounds %struct.mdio_driver, ptr %4, i32 0, i32 3, !dbg !5323
  %5 = load ptr, ptr %shutdown, align 8, !dbg !5323
  %tobool = icmp ne ptr %5, null, !dbg !5321
  br i1 %tobool, label %if.then, label %if.end, !dbg !5324

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %mdiodrv, align 8, !dbg !5325
  %shutdown3 = getelementptr inbounds %struct.mdio_driver, ptr %6, i32 0, i32 3, !dbg !5326
  %7 = load ptr, ptr %shutdown3, align 8, !dbg !5326
  %8 = load ptr, ptr %mdiodev, align 8, !dbg !5327
  call void %7(ptr noundef %8) #14, !dbg !5325
  br label %if.end, !dbg !5325

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodrv) #15, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodev) #15, !dbg !5328
  ret void, !dbg !5328
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5329 dso_local i32 @driver_register(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mdio_driver_unregister(ptr noundef %drv) #0 align 16 !dbg !5332 {
entry:
  %drv.addr = alloca ptr, align 8
  %mdiodrv = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5336, metadata !DIExpression()), !dbg !5338
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdiodrv) #15, !dbg !5339
  call void @llvm.dbg.declare(metadata ptr %mdiodrv, metadata !5337, metadata !DIExpression()), !dbg !5340
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !5341
  %mdiodrv1 = getelementptr inbounds %struct.mdio_driver, ptr %0, i32 0, i32 0, !dbg !5342
  store ptr %mdiodrv1, ptr %mdiodrv, align 8, !dbg !5340
  %1 = load ptr, ptr %mdiodrv, align 8, !dbg !5343
  %driver = getelementptr inbounds %struct.mdio_driver_common, ptr %1, i32 0, i32 0, !dbg !5344
  call void @driver_unregister(ptr noundef %driver) #14, !dbg !5345
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdiodrv) #15, !dbg !5346
  ret void, !dbg !5346
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5347 dso_local void @driver_unregister(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_mdio_common_driver(ptr noundef %driver) #4 align 16 !dbg !5350 {
entry:
  %driver.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !5354, metadata !DIExpression()), !dbg !5357
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5358
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5355, metadata !DIExpression()), !dbg !5358
  %0 = load ptr, ptr %driver.addr, align 8, !dbg !5358
  store ptr %0, ptr %__mptr, align 8, !dbg !5358
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5358
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5358
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5359
  %2 = load ptr, ptr %tmp, align 8, !dbg !5358
  ret ptr %2, !dbg !5360
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5361 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5363, metadata !DIExpression()), !dbg !5368
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5364, metadata !DIExpression()), !dbg !5369
  %0 = load i64, ptr %size.addr, align 8, !dbg !5370
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5371
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5372

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5373
  %tobool = icmp ne i64 %2, 0, !dbg !5373
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5374

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5375
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5365, metadata !DIExpression()), !dbg !5376
  %3 = load i64, ptr %size.addr, align 8, !dbg !5377
  %cmp = icmp ugt i64 %3, 8192, !dbg !5379
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5380

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5381
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5382
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !5383
  store ptr %call, ptr %retval, align 8, !dbg !5384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5384

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5385
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !5385
  store i32 %call2, ptr %index, align 4, !dbg !5386
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5387
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5388
  %9 = ptrtoint ptr %8 to i64, !dbg !5388
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !5389
  %idxprom = zext i32 %call3 to i64, !dbg !5390
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5390
  %10 = load i32, ptr %index, align 4, !dbg !5391
  %idxprom4 = zext i32 %10 to i64, !dbg !5390
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5390
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5390
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5392
  %13 = load i64, ptr %size.addr, align 8, !dbg !5393
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !5394
  store ptr %call6, ptr %retval, align 8, !dbg !5395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5395

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5396
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5397
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5398
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !5399
  store ptr %call8, ptr %retval, align 8, !dbg !5400
  br label %return, !dbg !5400

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5401
  ret ptr %16, !dbg !5401
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5402 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !5403 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5407, metadata !DIExpression()), !dbg !5409
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5408, metadata !DIExpression()), !dbg !5410
  %0 = load i64, ptr %size.addr, align 8, !dbg !5411
  %tobool = icmp ne i64 %0, 0, !dbg !5411
  br i1 %tobool, label %if.end, label %if.then, !dbg !5413

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5414
  br label %return, !dbg !5414

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5415
  %cmp = icmp ule i64 %1, 8, !dbg !5417
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5418

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5419
  br label %return, !dbg !5419

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5420
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5422
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5423

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5424
  %cmp4 = icmp ule i64 %3, 96, !dbg !5425
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5426

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5427
  br label %return, !dbg !5427

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5428
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5430
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5431

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5432
  %cmp9 = icmp ule i64 %5, 192, !dbg !5433
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5434

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5435
  br label %return, !dbg !5435

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5436
  %cmp12 = icmp ule i64 %6, 8, !dbg !5438
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5439

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5440
  br label %return, !dbg !5440

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5441
  %cmp15 = icmp ule i64 %7, 16, !dbg !5443
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5444

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5445
  br label %return, !dbg !5445

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5446
  %cmp18 = icmp ule i64 %8, 32, !dbg !5448
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5449

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5450
  br label %return, !dbg !5450

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5451
  %cmp21 = icmp ule i64 %9, 64, !dbg !5453
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5454

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5455
  br label %return, !dbg !5455

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5456
  %cmp24 = icmp ule i64 %10, 128, !dbg !5458
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5459

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5460
  br label %return, !dbg !5460

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5461
  %cmp27 = icmp ule i64 %11, 256, !dbg !5463
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5464

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5465
  br label %return, !dbg !5465

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5466
  %cmp30 = icmp ule i64 %12, 512, !dbg !5468
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5469

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5470
  br label %return, !dbg !5470

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5471
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5473
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5474

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5475
  br label %return, !dbg !5475

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5476
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5478
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5479

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5480
  br label %return, !dbg !5480

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5481
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5483
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5484

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5485
  br label %return, !dbg !5485

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5486
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5488
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5489

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5490
  br label %return, !dbg !5490

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5491
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5493
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5494

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5495
  br label %return, !dbg !5495

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5496
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5498
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5499

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5500
  br label %return, !dbg !5500

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5501
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5503
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5504

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5505
  br label %return, !dbg !5505

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5506
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5508
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5509

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5510
  br label %return, !dbg !5510

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5511
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5513
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5514

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5515
  br label %return, !dbg !5515

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5516
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5518
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5519

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5520
  br label %return, !dbg !5520

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5521
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5523
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5524

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5525
  br label %return, !dbg !5525

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5526
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5528
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5529

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5531, !range !5533, !noundef !541
  %tobool69 = trunc i8 %25 to i1, !dbg !5531
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5534

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5535

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !5536, !srcloc !5539
  unreachable, !dbg !5536

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5540

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5541

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5542

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5544

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5542

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !5546, !srcloc !5548
  br label %do.end75, !dbg !5546

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5542

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5549
  br label %return, !dbg !5549

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5550
  ret i32 %26, !dbg !5550
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5551 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !5557 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5561, metadata !DIExpression()), !dbg !5563
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5562, metadata !DIExpression()), !dbg !5564
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5565
  %and = and i32 %0, 17, !dbg !5565
  %cmp = icmp eq i32 %and, 0, !dbg !5565
  %lnot = xor i1 %cmp, true, !dbg !5565
  %lnot1 = xor i1 %lnot, true, !dbg !5565
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5565
  %conv = sext i32 %lnot.ext to i64, !dbg !5565
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5565
  %tobool = icmp ne i64 %expval, 0, !dbg !5565
  br i1 %tobool, label %if.then, label %if.end, !dbg !5567

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5568
  br label %return, !dbg !5568

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5569
  %and2 = and i32 %1, 1, !dbg !5571
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5571
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5572

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5573
  br label %return, !dbg !5573

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5574
  br label %return, !dbg !5574

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5576
  ret i32 %2, !dbg !5576
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5577 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5578 dso_local void @__compiletime_assert_245() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5579 dso_local void @fwnode_handle_put(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5580 dso_local void @kfree(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5583 dso_local void @__bad_udelay() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5585 dso_local void @__const_udelay(i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5586 dso_local void @__udelay(i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usleep_range(i64 noundef %min, i64 noundef %max) #4 align 16 !dbg !5587 {
entry:
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  store i64 %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !5591, metadata !DIExpression()), !dbg !5593
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5592, metadata !DIExpression()), !dbg !5594
  %0 = load i64, ptr %min.addr, align 8, !dbg !5595
  %1 = load i64, ptr %max.addr, align 8, !dbg !5596
  call void @usleep_range_state(i64 noundef %0, i64 noundef %1, i32 noundef 2) #14, !dbg !5597
  ret void, !dbg !5598
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5599 dso_local void @msleep(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5602 dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830}
!llvm.ident = !{!4831}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mdio_device_free338", scope: !2, file: !3, line: 30, type: !329, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/net/phy/.mdio_device.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/net/phy/libphy\22 -D KBUILD_BASENAME=\22mdio_device\22 -D KBUILD_MODNAME=\22libphy\22 -D __KBUILD_MODNAME=kmod_libphy -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/net/phy/mdio_device.ll drivers/net/phy/mdio_device.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !4772, globals: !4788, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/phy/mdio_device.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ebbde3da22ed7f2948467d3016ef5397")
!4 = !{!5, !13, !18, !24, !29, !37, !45, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !131, !136, !141, !147, !4757, !4762}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !38, line: 68, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!43 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !46, line: 1325, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!48 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!49 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!50 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!51 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!52 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!53 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!54 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!55 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!56 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!57 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!58 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!59 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!60 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
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
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !149, file: !148, line: 399, baseType: !7, size: 32, elements: !4752)
!148 = !DIFile(filename: "./include/linux/phy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "314b95e2c49d6373114a8f2977268af7")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mii_bus", file: !148, line: 370, size: 20992, elements: !150)
!150 = !{!151, !4188, !4189, !4193, !4194, !4199, !4203, !4207, !4211, !4215, !4240, !4241, !4706, !4707, !4708, !4734, !4735, !4736, !4738, !4739, !4740, !4741, !4742}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !149, file: !148, line: 371, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !154)
!154 = !{!155, !156, !163, !168, !3864, !3890, !3891, !3892, !3893, !3897, !3900, !3901, !3902, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3969, !3973, !3991, !4008, !4009, !4010, !4011, !4020, !4043, !4044, !4047, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4061, !4062, !4148, !4156, !4157, !4158, !4160, !4164, !4165, !4169, !4170, !4171, !4172, !4174, !4175, !4176, !4183, !4184, !4185, !4187}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !153, file: !6, line: 403, baseType: !5, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !153, file: !6, line: 406, baseType: !157, size: 128, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !158, line: 190, size: 128, elements: !159)
!158 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!159 = !{!160, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !158, line: 191, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !158, line: 191, baseType: !161, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !6, line: 409, baseType: !164, size: 448, offset: 192)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 448, elements: !166)
!165 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!166 = !{!167}
!167 = !DISubrange(count: 56)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !153, file: !6, line: 417, baseType: !169, size: 768, offset: 640)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !170)
!170 = !{!171, !3858, !3859, !3860, !3863}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !169, file: !6, line: 46, baseType: !172, size: 512)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !173, line: 64, size: 512, elements: !174)
!173 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!174 = !{!175, !178, !179, !181, !270, !3744, !3848, !3853, !3854, !3855, !3856, !3857}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !173, line: 65, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !172, file: !173, line: 66, baseType: !157, size: 128, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !172, file: !173, line: 67, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !172, file: !173, line: 68, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !173, line: 168, size: 768, elements: !184)
!184 = !{!185, !186, !229, !230}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !183, file: !173, line: 169, baseType: !157, size: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !183, file: !173, line: 170, baseType: !187, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !188, line: 29, baseType: !189)
!188 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !188, line: 17, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !188, line: 18, baseType: !192, size: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !188, line: 18, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !192, file: !188, line: 19, baseType: !195, size: 32)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !196, line: 14, size: 32, elements: !197)
!196 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !195, file: !196, line: 15, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !200, line: 44, baseType: !201)
!200 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !200, line: 14, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !200, line: 15, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !200, line: 15, size: 32, elements: !205)
!205 = !{!206, !211, !221}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !204, file: !200, line: 16, baseType: !207, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !158, line: 174, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 172, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !208, file: !158, line: 173, baseType: !109, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !200, line: 24, baseType: !212, size: 16)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !200, line: 24, size: 16, elements: !213)
!213 = !{!214, !220}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !212, file: !200, line: 25, baseType: !215, size: 8)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !216, line: 17, baseType: !217)
!216 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !218, line: 21, baseType: !219)
!218 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!219 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !212, file: !200, line: 26, baseType: !215, size: 8, offset: 8)
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !200, line: 28, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !200, line: 28, size: 32, elements: !223)
!223 = !{!224, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !222, file: !200, line: 29, baseType: !225, size: 16)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !216, line: 19, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !218, line: 24, baseType: !227)
!227 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !222, file: !200, line: 30, baseType: !225, size: 16, offset: 16)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !183, file: !173, line: 171, baseType: !172, size: 512, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !183, file: !173, line: 172, baseType: !231, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !173, line: 133, size: 192, elements: !234)
!234 = !{!235, !242, !247}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !233, file: !173, line: 134, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!109, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !173, line: 135, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!176, !240}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !233, file: !173, line: 136, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!109, !240, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !173, line: 125, size: 20736, elements: !254)
!254 = !{!255, !260, !264, !265, !269}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !253, file: !173, line: 126, baseType: !256, size: 192)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 192, elements: !258)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!258 = !{!259}
!259 = !DISubrange(count: 3)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !253, file: !173, line: 127, baseType: !261, size: 4096, offset: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 4096, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !253, file: !173, line: 128, baseType: !109, size: 32, offset: 4288)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !253, file: !173, line: 129, baseType: !266, size: 16384, offset: 4320)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 16384, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 2048)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !253, file: !173, line: 130, baseType: !109, size: 32, offset: 20704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !172, file: !173, line: 69, baseType: !271, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !173, line: 116, size: 384, elements: !274)
!274 = !{!275, !279, !308, !3705, !3734, !3738}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !273, file: !173, line: 117, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !180}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !273, file: !173, line: 118, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !283, line: 254, size: 128, elements: !284)
!283 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!284 = !{!285, !300}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !282, file: !283, line: 255, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!289, !180, !294, !257}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 66, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !291, line: 73, baseType: !292)
!291 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !291, line: 15, baseType: !293)
!293 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !283, line: 30, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !283, line: 31, baseType: !176, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !295, file: !283, line: 32, baseType: !299, size: 16, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !158, line: 24, baseType: !227)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !282, file: !283, line: 256, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!289, !180, !294, !176, !304}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 61, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !291, line: 72, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !291, line: 16, baseType: !307)
!307 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !273, file: !173, line: 119, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !283, line: 84, size: 320, elements: !313)
!313 = !{!314, !315, !319, !3701, !3703}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !283, line: 85, baseType: !176, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !312, file: !283, line: 86, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!299, !180, !294, !109}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !312, file: !283, line: 88, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!299, !180, !323, !109}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !283, line: 175, size: 512, elements: !325)
!325 = !{!326, !327, !328, !330, !3692, !3696, !3697}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !324, file: !283, line: 176, baseType: !295, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !324, file: !283, line: 177, baseType: !304, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !324, file: !283, line: 178, baseType: !329, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !324, file: !283, line: 179, baseType: !331, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !336)
!336 = !{!337, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3686, !3687, !3688, !3689, !3690, !3691}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !335, file: !14, line: 473, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !340)
!340 = !{!341, !342, !343, !351, !352, !359, !360, !363, !364, !3465, !3466, !3467, !3468, !3469, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3509, !3512, !3513, !3514, !3523, !3524, !3525, !3526}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !339, file: !14, line: 642, baseType: !299, size: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !339, file: !14, line: 643, baseType: !227, size: 16, offset: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !339, file: !14, line: 644, baseType: !344, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !345, line: 23, baseType: !346)
!345 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 21, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !346, file: !345, line: 22, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !158, line: 37, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !291, line: 49, baseType: !7)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !339, file: !14, line: 645, baseType: !157, size: 128, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !339, file: !14, line: 646, baseType: !353, size: 32, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !345, line: 28, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 26, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !354, file: !345, line: 27, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !158, line: 38, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !291, line: 50, baseType: !7)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !339, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !339, file: !14, line: 650, baseType: !361, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !339, file: !14, line: 651, baseType: !361, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !339, file: !14, line: 654, baseType: !365, size: 64, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !368)
!368 = !{!369, !3296, !3309, !3313, !3317, !3321, !3325, !3329, !3333, !3337, !3341, !3342, !3346, !3350, !3387, !3416, !3420, !3426, !3430, !3434, !3438, !3442, !3446, !3452, !3456}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !367, file: !14, line: 1967, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!373, !338, !373, !7}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !375, line: 82, size: 1536, elements: !376)
!375 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!376 = !{!377, !378, !388, !396, !397, !417, !418, !422, !435, !3279, !3280, !3281, !3282, !3288, !3289, !3290}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !374, file: !375, line: 84, baseType: !7, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !374, file: !375, line: 85, baseType: !379, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !380, line: 275, baseType: !381)
!380 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !380, line: 275, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !381, file: !380, line: 275, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !380, line: 69, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !380, line: 64, size: 32, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !385, file: !380, line: 65, baseType: !7, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !374, file: !375, line: 86, baseType: !389, size: 128, offset: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !390, line: 38, size: 128, elements: !391)
!390 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!391 = !{!392, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !390, line: 39, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !389, file: !390, line: 39, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !374, file: !375, line: 87, baseType: !373, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !374, file: !375, line: 88, baseType: !398, size: 128, offset: 256)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !375, line: 49, size: 128, elements: !399)
!399 = !{!400, !414}
!400 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !375, line: 50, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !375, line: 50, size: 64, elements: !402)
!402 = !{!403, !410}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !375, line: 51, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !401, file: !375, line: 51, size: 64, elements: !405)
!405 = !{!406, !409}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !404, file: !375, line: 52, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !216, line: 21, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !218, line: 27, baseType: !7)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !404, file: !375, line: 52, baseType: !407, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !401, file: !375, line: 54, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !216, line: 23, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !218, line: 31, baseType: !413)
!413 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !375, line: 56, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !374, file: !375, line: 89, baseType: !338, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !374, file: !375, line: 91, baseType: !419, size: 256, offset: 448)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !374, file: !375, line: 94, baseType: !423, size: 64, offset: 704)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !424, line: 25, size: 64, elements: !425)
!424 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !424, line: 26, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !423, file: !424, line: 26, size: 64, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !427, file: !424, line: 28, baseType: !412, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !424, line: 30, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !424, line: 30, size: 64, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !431, file: !424, line: 31, baseType: !187, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !431, file: !424, line: 32, baseType: !109, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !374, file: !375, line: 95, baseType: !436, size: 64, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !375, line: 128, size: 1024, align: 512, elements: !439)
!439 = !{!440, !444, !445, !452, !458, !462, !466, !470, !471, !475, !479, !3269, !3273}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !438, file: !375, line: 129, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!109, !373, !7}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !438, file: !375, line: 130, baseType: !441, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !438, file: !375, line: 131, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!109, !449, !451}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !438, file: !375, line: 132, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!109, !449, !7, !176, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !438, file: !375, line: 134, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!109, !449}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !438, file: !375, line: 135, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!109, !373}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !438, file: !375, line: 136, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !373}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !438, file: !375, line: 137, baseType: !467, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !438, file: !375, line: 138, baseType: !472, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !373, !338}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !438, file: !375, line: 139, baseType: !476, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!257, !373, !257, !109}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !438, file: !375, line: 140, baseType: !480, size: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !3268}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !485, line: 70, size: 256, elements: !486)
!485 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!486 = !{!487, !488, !3264, !3265}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !484, file: !485, line: 71, baseType: !373, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !484, file: !485, line: 72, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !491)
!491 = !{!492, !493, !496, !497, !498, !502, !550, !711, !751, !841, !845, !846, !847, !848, !849, !858, !859, !860, !861, !866, !870, !871, !874, !877, !880, !883, !884, !885, !926, !3195, !3196, !3197, !3198, !3199, !3200, !3203, !3205, !3212, !3213, !3214, !3215, !3216, !3231, !3232, !3233, !3234, !3235, !3238, !3239, !3240, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !490, file: !14, line: 1191, baseType: !157, size: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !490, file: !14, line: 1192, baseType: !494, size: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !158, line: 21, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !158, line: 18, baseType: !407)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !490, file: !14, line: 1193, baseType: !219, size: 8, offset: 160)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !490, file: !14, line: 1194, baseType: !307, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !490, file: !14, line: 1195, baseType: !499, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !158, line: 52, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !291, line: 88, baseType: !501)
!501 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !490, file: !14, line: 1196, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !505)
!505 = !{!506, !507, !508, !514, !518, !522, !526, !527, !528, !538, !542, !543, !544, !546, !547, !548, !549}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !504, file: !14, line: 2367, baseType: !176, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !504, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !504, file: !14, line: 2376, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!109, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !485, line: 21, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !504, file: !14, line: 2377, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !504, file: !14, line: 2378, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!373, !503, !109, !176, !329}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !504, file: !14, line: 2380, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !489}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !504, file: !14, line: 2381, baseType: !152, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !14, line: 2382, baseType: !503, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !504, file: !14, line: 2383, baseType: !529, size: 64, offset: 512)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !158, line: 194, size: 64, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !529, file: !158, line: 195, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !158, line: 198, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !158, line: 199, baseType: !532, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !533, file: !158, line: 199, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !504, file: !14, line: 2385, baseType: !539, offset: 576)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !540, line: 206, elements: !541)
!540 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!541 = !{}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !504, file: !14, line: 2386, baseType: !539, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !504, file: !14, line: 2387, baseType: !539, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !504, file: !14, line: 2388, baseType: !545, offset: 576)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, elements: !258)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !504, file: !14, line: 2390, baseType: !539, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !504, file: !14, line: 2391, baseType: !539, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !504, file: !14, line: 2392, baseType: !539, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !504, file: !14, line: 2393, baseType: !539, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !490, file: !14, line: 1197, baseType: !551, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !554)
!554 = !{!555, !559, !563, !564, !568, !574, !578, !579, !580, !584, !588, !592, !593, !594, !600, !605, !606, !613, !614, !615, !616, !620, !624, !693, !709, !710}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !553, file: !14, line: 2058, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!338, !489}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !553, file: !14, line: 2059, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !338}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !553, file: !14, line: 2060, baseType: !560, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !553, file: !14, line: 2062, baseType: !565, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !338, !109}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !553, file: !14, line: 2063, baseType: !569, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!109, !338, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !553, file: !14, line: 2064, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!109, !338}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !553, file: !14, line: 2065, baseType: !560, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !553, file: !14, line: 2066, baseType: !523, size: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !553, file: !14, line: 2067, baseType: !581, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!109, !489, !109}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !553, file: !14, line: 2068, baseType: !585, size: 64, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!109, !489, !13}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !553, file: !14, line: 2069, baseType: !589, size: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!109, !489}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !553, file: !14, line: 2070, baseType: !585, size: 64, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !553, file: !14, line: 2071, baseType: !589, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !553, file: !14, line: 2072, baseType: !595, size: 64, offset: 832)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!109, !373, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !553, file: !14, line: 2073, baseType: !601, size: 64, offset: 896)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!109, !489, !604, !257}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !553, file: !14, line: 2074, baseType: !523, size: 64, offset: 960)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !553, file: !14, line: 2076, baseType: !607, size: 64, offset: 1024)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!109, !610, !373}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !612, line: 66, flags: DIFlagFwdDecl)
!612 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !553, file: !14, line: 2077, baseType: !607, size: 64, offset: 1088)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !553, file: !14, line: 2078, baseType: !607, size: 64, offset: 1152)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !553, file: !14, line: 2079, baseType: !607, size: 64, offset: 1216)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !553, file: !14, line: 2081, baseType: !617, size: 64, offset: 1280)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!289, !489, !109, !257, !304, !499}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !553, file: !14, line: 2082, baseType: !621, size: 64, offset: 1344)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!289, !489, !109, !176, !304, !499}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !553, file: !14, line: 2083, baseType: !625, size: 64, offset: 1408)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!628, !338}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !657, !658, !659, !660, !676, !677, !678}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !630, file: !19, line: 297, baseType: !533, size: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !630, file: !19, line: 298, baseType: !157, size: 128, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !630, file: !19, line: 299, baseType: !157, size: 128, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !630, file: !19, line: 300, baseType: !157, size: 128, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !630, file: !19, line: 301, baseType: !637, size: 256, offset: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !638, line: 66, size: 256, elements: !639)
!638 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!639 = !{!640, !649, !651, !656}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !637, file: !638, line: 67, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !642, line: 13, baseType: !643)
!642 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !158, line: 181, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 179, size: 64, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !644, file: !158, line: 180, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !216, line: 22, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !218, line: 30, baseType: !501)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !637, file: !638, line: 68, baseType: !650, size: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !196, line: 23, baseType: !195)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !637, file: !638, line: 70, baseType: !652, size: 32, offset: 96)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !653, line: 15, size: 32, elements: !654)
!653 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !652, file: !653, line: 20, baseType: !207, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !637, file: !638, line: 72, baseType: !157, size: 128, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !630, file: !19, line: 302, baseType: !187, size: 32, offset: 768)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !630, file: !19, line: 303, baseType: !207, size: 32, offset: 800)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !630, file: !19, line: 304, baseType: !489, size: 64, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !630, file: !19, line: 305, baseType: !661, size: 64, offset: 896)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !662)
!662 = !{!663, !675}
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !19, line: 69, baseType: !664, size: 32)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !19, line: 69, size: 32, elements: !665)
!665 = !{!666, !667, !668}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !664, file: !19, line: 70, baseType: !344, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !664, file: !19, line: 71, baseType: !353, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !664, file: !19, line: 72, baseType: !669, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !670, line: 24, baseType: !671)
!670 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !670, line: 22, size: 32, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !671, file: !670, line: 23, baseType: !674, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !670, line: 20, baseType: !350)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !630, file: !19, line: 306, baseType: !499, size: 64, offset: 960)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !630, file: !19, line: 307, baseType: !307, size: 64, offset: 1024)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !630, file: !19, line: 308, baseType: !679, size: 576, offset: 1088)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !680)
!680 = !{!681, !683, !684, !685, !686, !687, !688, !689, !692}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !679, file: !19, line: 206, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !501)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !679, file: !19, line: 207, baseType: !682, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !679, file: !19, line: 208, baseType: !682, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !679, file: !19, line: 209, baseType: !682, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !679, file: !19, line: 210, baseType: !682, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !679, file: !19, line: 211, baseType: !682, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !679, file: !19, line: 212, baseType: !682, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !679, file: !19, line: 213, baseType: !690, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !691, line: 8, baseType: !648)
!691 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !679, file: !19, line: 214, baseType: !690, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !553, file: !14, line: 2085, baseType: !694, size: 64, offset: 1472)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!293, !489, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !699, line: 15, size: 256, elements: !700)
!699 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!700 = !{!701, !703, !704, !705, !706}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !698, file: !699, line: 16, baseType: !702, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !158, line: 154, baseType: !7)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !698, file: !699, line: 19, baseType: !109, size: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !698, file: !699, line: 26, baseType: !307, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !698, file: !699, line: 33, baseType: !307, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !698, file: !699, line: 36, baseType: !707, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !46, line: 33, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !553, file: !14, line: 2087, baseType: !694, size: 64, offset: 1536)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !553, file: !14, line: 2089, baseType: !523, size: 64, offset: 1600)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !490, file: !14, line: 1198, baseType: !712, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !715)
!715 = !{!716, !720, !724, !728, !729, !730, !731, !732, !737, !742, !746}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !714, file: !19, line: 325, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!109, !629}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !714, file: !19, line: 326, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!629, !489, !109}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !714, file: !19, line: 327, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !629}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !714, file: !19, line: 328, baseType: !717, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !714, file: !19, line: 329, baseType: !717, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !714, file: !19, line: 330, baseType: !717, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !714, file: !19, line: 331, baseType: !581, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !714, file: !19, line: 334, baseType: !733, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!736, !338}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !714, file: !19, line: 335, baseType: !738, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!109, !338, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !714, file: !19, line: 337, baseType: !743, size: 64, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!109, !338, !736}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !714, file: !19, line: 339, baseType: !747, size: 64, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!109, !489, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !490, file: !14, line: 1199, baseType: !752, size: 64, offset: 512)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !755)
!755 = !{!756, !767, !768, !772, !773, !774, !789, !812, !816, !817, !840}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !754, file: !19, line: 431, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!109, !489, !109, !109, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !763, line: 8, size: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !762, file: !763, line: 9, baseType: !483, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !762, file: !763, line: 10, baseType: !373, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !754, file: !19, line: 432, baseType: !581, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !754, file: !19, line: 433, baseType: !769, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!109, !489, !7}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !754, file: !19, line: 434, baseType: !769, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !754, file: !19, line: 435, baseType: !581, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !754, file: !19, line: 436, baseType: !775, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!109, !489, !109, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !779, file: !19, line: 418, baseType: !109, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !779, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !779, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !779, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !779, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !779, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !779, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !779, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !754, file: !19, line: 437, baseType: !790, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!109, !489, !661, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !794, file: !19, line: 346, baseType: !109, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !794, file: !19, line: 347, baseType: !411, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !794, file: !19, line: 348, baseType: !411, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !794, file: !19, line: 349, baseType: !411, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !794, file: !19, line: 350, baseType: !411, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !794, file: !19, line: 351, baseType: !411, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !794, file: !19, line: 352, baseType: !411, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !794, file: !19, line: 353, baseType: !647, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !794, file: !19, line: 355, baseType: !647, size: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !794, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !794, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !794, file: !19, line: 358, baseType: !411, size: 64, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !794, file: !19, line: 359, baseType: !411, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !794, file: !19, line: 360, baseType: !411, size: 64, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !794, file: !19, line: 361, baseType: !647, size: 64, offset: 832)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !794, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !754, file: !19, line: 438, baseType: !813, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!109, !489, !750, !793}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !754, file: !19, line: 440, baseType: !790, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !754, file: !19, line: 441, baseType: !818, size: 64, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!109, !489, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !822, file: !19, line: 412, baseType: !7, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !822, file: !19, line: 413, baseType: !826, size: 1344, offset: 64)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 1344, elements: !258)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !828)
!828 = !{!829, !830, !831, !832, !833, !834, !835, !836, !837, !839}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !19, line: 398, baseType: !7, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !827, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !827, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !827, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !827, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !827, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !827, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !827, file: !19, line: 406, baseType: !413, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !827, file: !19, line: 407, baseType: !838, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !158, line: 132, baseType: !411)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !827, file: !19, line: 408, baseType: !838, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !754, file: !19, line: 442, baseType: !769, size: 64, offset: 640)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !490, file: !14, line: 1200, baseType: !842, size: 64, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !490, file: !14, line: 1201, baseType: !307, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !490, file: !14, line: 1202, baseType: !307, size: 64, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !490, file: !14, line: 1203, baseType: !307, size: 64, offset: 768)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !490, file: !14, line: 1204, baseType: !373, size: 64, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !490, file: !14, line: 1205, baseType: !850, size: 320, offset: 896)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !851, line: 48, size: 320, elements: !852)
!851 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!852 = !{!853, !854, !855, !856, !857}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !850, file: !851, line: 49, baseType: !641, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !850, file: !851, line: 55, baseType: !641, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !850, file: !851, line: 57, baseType: !652, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !850, file: !851, line: 59, baseType: !650, size: 32, offset: 160)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !850, file: !851, line: 60, baseType: !157, size: 128, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !490, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !490, file: !14, line: 1207, baseType: !207, size: 32, offset: 1248)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !490, file: !14, line: 1209, baseType: !329, size: 64, offset: 1280)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !490, file: !14, line: 1211, baseType: !862, size: 64, offset: 1344)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !490, file: !14, line: 1223, baseType: !867, size: 64, offset: 1408)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !390, line: 34, size: 64, elements: !868)
!868 = !{!869}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !867, file: !390, line: 35, baseType: !393, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !490, file: !14, line: 1224, baseType: !157, size: 128, offset: 1472)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !490, file: !14, line: 1225, baseType: !872, size: 64, offset: 1600)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !490, file: !14, line: 1226, baseType: !875, size: 64, offset: 1664)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !490, file: !14, line: 1227, baseType: !878, size: 64, offset: 1728)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !490, file: !14, line: 1228, baseType: !881, size: 64, offset: 1792)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !490, file: !14, line: 1229, baseType: !533, size: 128, offset: 1856)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !490, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !490, file: !14, line: 1231, baseType: !886, size: 2496, offset: 2048)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !887)
!887 = !{!888, !889, !890, !892, !924}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !886, file: !19, line: 522, baseType: !7, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !886, file: !19, line: 523, baseType: !850, size: 320, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !886, file: !19, line: 524, baseType: !891, size: 192, offset: 384)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 192, elements: !258)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !886, file: !19, line: 525, baseType: !893, size: 1728, offset: 576)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 1728, elements: !258)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !895)
!895 = !{!896, !916, !917, !918, !919, !920, !921, !922, !923}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !894, file: !19, line: 223, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !899)
!899 = !{!900, !901, !914, !915}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !898, file: !19, line: 446, baseType: !109, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !898, file: !19, line: 447, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !905)
!905 = !{!906, !907, !908, !909, !910, !911, !912, !913}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !904, file: !19, line: 313, baseType: !581, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !904, file: !19, line: 314, baseType: !581, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !904, file: !19, line: 315, baseType: !581, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !904, file: !19, line: 316, baseType: !581, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !904, file: !19, line: 317, baseType: !717, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !904, file: !19, line: 318, baseType: !717, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !904, file: !19, line: 319, baseType: !717, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !904, file: !19, line: 320, baseType: !747, size: 64, offset: 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !898, file: !19, line: 448, baseType: !152, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !898, file: !19, line: 449, baseType: !897, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !894, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !894, file: !19, line: 226, baseType: !157, size: 128, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !894, file: !19, line: 227, baseType: !307, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !894, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !894, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !894, file: !19, line: 230, baseType: !682, size: 64, offset: 384)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !894, file: !19, line: 231, baseType: !682, size: 64, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !894, file: !19, line: 232, baseType: !329, size: 64, offset: 512)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !886, file: !19, line: 526, baseType: !925, size: 192, offset: 2304)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 192, elements: !258)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !490, file: !14, line: 1233, baseType: !927, size: 2368, offset: 4544)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !927, file: !14, line: 1185, baseType: !227, size: 16)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !927, file: !14, line: 1186, baseType: !227, size: 16, offset: 16)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !927, file: !14, line: 1187, baseType: !932, size: 2304, offset: 64)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 2304, elements: !258)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !934, line: 12, size: 768, elements: !935)
!934 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!935 = !{!936, !958, !960, !3193, !3194}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !933, file: !934, line: 13, baseType: !937, size: 384)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !938, line: 17, size: 384, elements: !939)
!938 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!939 = !{!940, !941, !942, !949}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !937, file: !938, line: 18, baseType: !109, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !937, file: !938, line: 19, baseType: !109, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !937, file: !938, line: 20, baseType: !943, size: 192, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !944, line: 41, baseType: !945)
!944 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !944, line: 37, size: 192, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !945, file: !944, line: 38, baseType: !187, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !945, file: !944, line: 39, baseType: !157, size: 128, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !937, file: !938, line: 22, baseType: !950, size: 128, align: 64, offset: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !158, line: 232, size: 128, align: 64, elements: !951)
!951 = !{!952, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !950, file: !158, line: 233, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !950, file: !158, line: 234, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !953}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !933, file: !934, line: 14, baseType: !959, size: 64, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !933, file: !934, line: 15, baseType: !961, size: 64, offset: 448)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !962, line: 16, size: 64, elements: !963)
!962 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !961, file: !962, line: 17, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !612, line: 746, size: 58368, elements: !967)
!967 = !{!968, !976, !977, !978, !984, !985, !986, !987, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1065, !1076, !1171, !1175, !1178, !1209, !1210, !1211, !1212, !1223, !1225, !1226, !1227, !1228, !1229, !1230, !1241, !1242, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1259, !1260, !1267, !1268, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2317, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2332, !2333, !2334, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2366, !2372, !2373, !2374, !2375, !2376, !2380, !2383, !2390, !2395, !2398, !2401, !2404, !2430, !2570, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2610, !2611, !2612, !2621, !2629, !2630, !2631, !2632, !2633, !2638, !2639, !2640, !2643, !2644, !2647, !2650, !2653, !2661, !2664, !2665, !2751, !2752, !2753, !2754, !2755, !2761, !2762, !2763, !2764, !2767, !2768, !2771, !2785, !2786, !2789, !2790, !2791, !2794, !2795, !2796, !2797, !2798, !2799, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2831, !2832, !2838, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2850, !2922, !2924, !2925, !2926, !2927, !2928, !2940, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2970, !2971, !2972}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !966, file: !612, line: 752, baseType: !969, size: 192)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !970, line: 56, size: 192, elements: !971)
!970 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!971 = !{!972, !973, !974, !975}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !969, file: !970, line: 57, baseType: !307, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !969, file: !970, line: 58, baseType: !307, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !969, file: !970, line: 59, baseType: !407, size: 32, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !969, file: !970, line: 61, baseType: !407, size: 32, offset: 160)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !966, file: !612, line: 754, baseType: !7, size: 32, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !966, file: !612, line: 767, baseType: !329, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !966, file: !612, line: 768, baseType: !979, size: 32, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !980, line: 113, baseType: !981)
!980 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !980, line: 111, size: 32, elements: !982)
!982 = !{!983}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !981, file: !980, line: 112, baseType: !207, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !612, line: 770, baseType: !7, size: 32, offset: 352)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !966, file: !612, line: 771, baseType: !7, size: 32, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !966, file: !612, line: 774, baseType: !109, size: 32, offset: 416)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !966, file: !612, line: 775, baseType: !988, size: 128, offset: 448)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !989, line: 58, size: 128, elements: !990)
!989 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!990 = !{!991, !997, !1002, !1003}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !988, file: !989, line: 59, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !993, line: 60, size: 64, elements: !994)
!993 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!994 = !{!995}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !992, file: !993, line: 61, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !989, line: 60, baseType: !998, size: 32, offset: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !989, line: 60, size: 32, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !998, file: !989, line: 61, baseType: !7, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !998, file: !989, line: 62, baseType: !207, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !988, file: !989, line: 65, baseType: !225, size: 16, offset: 96)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !988, file: !989, line: 65, baseType: !225, size: 16, offset: 112)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !966, file: !612, line: 776, baseType: !7, size: 32, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !966, file: !612, line: 777, baseType: !307, size: 64, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !966, file: !612, line: 778, baseType: !965, size: 64, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !966, file: !612, line: 787, baseType: !109, size: 32, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !966, file: !612, line: 788, baseType: !109, size: 32, offset: 800)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !966, file: !612, line: 790, baseType: !109, size: 32, offset: 832)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !966, file: !612, line: 792, baseType: !109, size: 32, offset: 864)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !966, file: !612, line: 793, baseType: !109, size: 32, offset: 896)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !966, file: !612, line: 794, baseType: !109, size: 32, offset: 928)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !966, file: !612, line: 795, baseType: !7, size: 32, offset: 960)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !966, file: !612, line: 797, baseType: !1015, size: 2048, offset: 1024)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !612, line: 551, size: 2048, elements: !1016)
!1016 = !{!1017, !1022, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1044, !1047, !1048, !1049}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1015, file: !612, line: 553, baseType: !1018, size: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !612, line: 411, size: 128, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1018, file: !612, line: 412, baseType: !307, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1018, file: !612, line: 413, baseType: !407, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1015, file: !612, line: 554, baseType: !1023, size: 192, align: 64, offset: 128)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1024, line: 5, size: 192, align: 64, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1025 = !{!1026, !1027, !1029}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1023, file: !1024, line: 6, baseType: !307, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1023, file: !1024, line: 7, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1023, file: !1024, line: 8, baseType: !1028, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1015, file: !612, line: 555, baseType: !411, size: 64, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1015, file: !612, line: 556, baseType: !411, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1015, file: !612, line: 558, baseType: !157, size: 128, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1015, file: !612, line: 559, baseType: !7, size: 32, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1015, file: !612, line: 561, baseType: !411, size: 64, offset: 640)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1015, file: !612, line: 562, baseType: !411, size: 64, offset: 704)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1015, file: !612, line: 563, baseType: !411, size: 64, offset: 768)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1015, file: !612, line: 564, baseType: !411, size: 64, offset: 832)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1015, file: !612, line: 565, baseType: !647, size: 64, offset: 896)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1015, file: !612, line: 566, baseType: !411, size: 64, offset: 960)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1015, file: !612, line: 568, baseType: !411, size: 64, offset: 1024)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1015, file: !612, line: 571, baseType: !109, size: 32, offset: 1088)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1015, file: !612, line: 572, baseType: !1043, size: 64, offset: 1152)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1015, file: !612, line: 574, baseType: !1045, size: 64, offset: 1216)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !612, line: 49, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1015, file: !612, line: 576, baseType: !1045, size: 64, offset: 1280)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1015, file: !612, line: 578, baseType: !307, size: 64, offset: 1344)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1015, file: !612, line: 588, baseType: !1050, size: 512, align: 512, offset: 1536)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !612, line: 497, size: 512, align: 512, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1050, file: !612, line: 498, baseType: !411, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1050, file: !612, line: 499, baseType: !411, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1050, file: !612, line: 500, baseType: !411, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1050, file: !612, line: 501, baseType: !407, size: 32, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1050, file: !612, line: 502, baseType: !407, size: 32, offset: 224)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1050, file: !612, line: 503, baseType: !307, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1050, file: !612, line: 504, baseType: !307, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1050, file: !612, line: 505, baseType: !307, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1050, file: !612, line: 506, baseType: !1061, size: 64, align: 64, offset: 448)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !612, line: 445, size: 64, align: 64, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1061, file: !612, line: 446, baseType: !7, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1061, file: !612, line: 447, baseType: !7, size: 32, offset: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !966, file: !612, line: 798, baseType: !1066, size: 384, offset: 3072)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !612, line: 592, size: 384, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1066, file: !612, line: 593, baseType: !157, size: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1066, file: !612, line: 594, baseType: !307, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1066, file: !612, line: 595, baseType: !307, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1066, file: !612, line: 596, baseType: !7, size: 32, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1066, file: !612, line: 597, baseType: !227, size: 16, offset: 288)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1066, file: !612, line: 598, baseType: !227, size: 16, offset: 304)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1066, file: !612, line: 600, baseType: !1075, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !966, file: !612, line: 799, baseType: !1077, size: 1792, offset: 3456)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !612, line: 610, size: 1792, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1168, !1169}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1077, file: !612, line: 611, baseType: !1023, size: 192, align: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1077, file: !612, line: 618, baseType: !411, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1077, file: !612, line: 619, baseType: !411, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1077, file: !612, line: 620, baseType: !411, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1077, file: !612, line: 621, baseType: !411, size: 64, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1077, file: !612, line: 622, baseType: !411, size: 64, offset: 448)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1077, file: !612, line: 629, baseType: !647, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1077, file: !612, line: 630, baseType: !411, size: 64, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !612, line: 631, baseType: !7, size: 32, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1077, file: !612, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1077, file: !612, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1077, file: !612, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1077, file: !612, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1077, file: !612, line: 662, baseType: !1093, size: 512, offset: 704)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1094)
!1094 = !{!1095, !1103, !1104, !1109, !1164, !1165, !1166, !1167}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1093, file: !25, line: 119, baseType: !1096, size: 256)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1097, line: 9, size: 256, elements: !1098)
!1097 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1096, file: !1097, line: 10, baseType: !1023, size: 192, align: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1096, file: !1097, line: 11, baseType: !1101, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1102, line: 29, baseType: !647)
!1102 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1093, file: !25, line: 120, baseType: !1101, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1093, file: !25, line: 121, baseType: !1105, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!24, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1093, file: !25, line: 122, baseType: !1110, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1112)
!1112 = !{!1113, !1138, !1139, !1142, !1147, !1148, !1159, !1163}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1111, file: !25, line: 160, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1115, file: !25, line: 216, baseType: !650, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1115, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1115, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1115, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1115, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1115, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1115, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1115, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1115, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1115, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1115, file: !25, line: 227, baseType: !227, size: 16, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1115, file: !25, line: 228, baseType: !227, size: 16, offset: 208)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1115, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1115, file: !25, line: 235, baseType: !1101, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1115, file: !25, line: 236, baseType: !1108, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1115, file: !25, line: 237, baseType: !1101, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1115, file: !25, line: 238, baseType: !1108, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1115, file: !25, line: 239, baseType: !1135, size: 4096, align: 512, offset: 512)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 4096, align: 512, elements: !1136)
!1136 = !{!1137}
!1137 = !DISubrange(count: 8)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1111, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1111, file: !25, line: 162, baseType: !1140, size: 32, offset: 96)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !158, line: 32, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !291, line: 96, baseType: !109)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1111, file: !25, line: 163, baseType: !1143, size: 32, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !380, line: 274, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !380, line: 274, size: 32, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1144, file: !380, line: 274, baseType: !384, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1111, file: !25, line: 164, baseType: !1108, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1111, file: !25, line: 165, baseType: !1149, size: 128, offset: 256)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1097, line: 14, size: 128, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1149, file: !1097, line: 15, baseType: !1152, size: 128)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1024, line: 26, size: 128, elements: !1153)
!1153 = !{!1154, !1158}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1152, file: !1024, line: 27, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1024, line: 12, size: 64, elements: !1156)
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1155, file: !1024, line: 13, baseType: !1028, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1152, file: !1024, line: 28, baseType: !1028, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1111, file: !25, line: 166, baseType: !1160, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!1101}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1111, file: !25, line: 167, baseType: !1101, size: 64, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1093, file: !25, line: 123, baseType: !215, size: 8, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1093, file: !25, line: 124, baseType: !215, size: 8, offset: 456)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1093, file: !25, line: 125, baseType: !215, size: 8, offset: 464)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1093, file: !25, line: 126, baseType: !215, size: 8, offset: 472)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1077, file: !612, line: 671, baseType: !1093, size: 512, offset: 1216)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1077, file: !612, line: 679, baseType: !1170, size: 64, offset: 1728)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !966, file: !612, line: 800, baseType: !1172, size: 64, offset: 5248)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !612, line: 800, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !966, file: !612, line: 809, baseType: !1176, size: 64, offset: 5312)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !612, line: 70, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !966, file: !612, line: 825, baseType: !1179, size: 2048, align: 512, offset: 5632)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !612, line: 509, size: 2048, align: 512, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1179, file: !612, line: 511, baseType: !411, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1179, file: !612, line: 512, baseType: !411, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1179, file: !612, line: 513, baseType: !411, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1179, file: !612, line: 514, baseType: !411, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1179, file: !612, line: 515, baseType: !411, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1179, file: !612, line: 516, baseType: !411, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1179, file: !612, line: 518, baseType: !411, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1179, file: !612, line: 519, baseType: !411, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1179, file: !612, line: 520, baseType: !647, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1179, file: !612, line: 522, baseType: !411, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1179, file: !612, line: 523, baseType: !411, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1179, file: !612, line: 524, baseType: !647, size: 64, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1179, file: !612, line: 526, baseType: !647, size: 64, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1179, file: !612, line: 527, baseType: !411, size: 64, offset: 832)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1179, file: !612, line: 529, baseType: !411, size: 64, offset: 896)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1179, file: !612, line: 530, baseType: !411, size: 64, offset: 960)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1179, file: !612, line: 531, baseType: !411, size: 64, offset: 1024)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1179, file: !612, line: 532, baseType: !411, size: 64, offset: 1088)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1179, file: !612, line: 533, baseType: !411, size: 64, offset: 1152)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1179, file: !612, line: 535, baseType: !411, size: 64, offset: 1216)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1179, file: !612, line: 536, baseType: !411, size: 64, offset: 1280)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1179, file: !612, line: 537, baseType: !411, size: 64, offset: 1344)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1179, file: !612, line: 538, baseType: !411, size: 64, offset: 1408)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1179, file: !612, line: 539, baseType: !411, size: 64, offset: 1472)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1179, file: !612, line: 540, baseType: !411, size: 64, offset: 1536)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1179, file: !612, line: 541, baseType: !411, size: 64, offset: 1600)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1179, file: !612, line: 542, baseType: !411, size: 64, offset: 1664)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1179, file: !612, line: 543, baseType: !411, size: 64, offset: 1728)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !966, file: !612, line: 833, baseType: !7, size: 32, offset: 7680)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !966, file: !612, line: 836, baseType: !7, size: 32, offset: 7712)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !966, file: !612, line: 837, baseType: !109, size: 32, offset: 7744)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !966, file: !612, line: 838, baseType: !1213, size: 64, offset: 7808)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1216, line: 19, baseType: !1217)
!1216 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1216, line: 19, size: 64, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1217, file: !1216, line: 19, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 64, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 1)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !966, file: !612, line: 839, baseType: !1224, size: 64, offset: 7872)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !966, file: !612, line: 840, baseType: !1215, size: 64, offset: 7936)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !966, file: !612, line: 841, baseType: !329, size: 64, offset: 8000)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !966, file: !612, line: 843, baseType: !227, size: 16, offset: 8064)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !966, file: !612, line: 845, baseType: !227, size: 16, offset: 8080)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !966, file: !612, line: 848, baseType: !109, size: 32, offset: 8096)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !966, file: !612, line: 849, baseType: !1231, size: 32, offset: 8128)
!1231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !612, line: 718, size: 32, elements: !1232)
!1232 = !{!1233, !1240}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1231, file: !612, line: 724, baseType: !1234, size: 32)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1231, file: !612, line: 719, size: 32, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1239}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1234, file: !612, line: 720, baseType: !215, size: 8)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1234, file: !612, line: 721, baseType: !215, size: 8, offset: 8)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1234, file: !612, line: 722, baseType: !215, size: 8, offset: 16)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1234, file: !612, line: 723, baseType: !215, size: 8, offset: 24)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1231, file: !612, line: 725, baseType: !407, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !966, file: !612, line: 850, baseType: !157, size: 128, offset: 8192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !966, file: !612, line: 851, baseType: !1243, size: 64, offset: 8320)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !612, line: 60, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !966, file: !612, line: 855, baseType: !307, size: 64, offset: 8384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !966, file: !612, line: 856, baseType: !215, size: 8, offset: 8448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !966, file: !612, line: 857, baseType: !215, size: 8, offset: 8456)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !966, file: !612, line: 858, baseType: !109, size: 32, offset: 8480)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !966, file: !612, line: 859, baseType: !157, size: 128, offset: 8512)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !966, file: !612, line: 860, baseType: !109, size: 32, offset: 8640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !966, file: !612, line: 861, baseType: !157, size: 128, offset: 8704)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !966, file: !612, line: 873, baseType: !1253, size: 256, offset: 8832)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !612, line: 376, size: 256, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1253, file: !612, line: 381, baseType: !307, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1253, file: !612, line: 384, baseType: !413, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1253, file: !612, line: 389, baseType: !413, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1253, file: !612, line: 392, baseType: !413, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !966, file: !612, line: 875, baseType: !157, size: 128, offset: 9088)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !966, file: !612, line: 877, baseType: !1261, size: 320, offset: 9216)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1262, line: 86, size: 320, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1263 = !{!1264, !1265, !1266}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1261, file: !1262, line: 87, baseType: !109, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1261, file: !1262, line: 88, baseType: !157, size: 128, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1261, file: !1262, line: 89, baseType: !157, size: 128, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !966, file: !612, line: 878, baseType: !1023, size: 192, align: 64, offset: 9536)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !966, file: !612, line: 881, baseType: !1269, size: 64, offset: 9728)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !46, line: 733, size: 10240, elements: !1271)
!1271 = !{!1272, !2236}
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !46, line: 734, baseType: !1273, size: 10240)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1270, file: !46, line: 734, size: 10240, elements: !1274)
!1274 = !{!1275, !1279, !1292, !2100, !2101, !2102, !2103, !2104, !2105, !2112, !2113, !2114, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2153, !2155, !2158, !2205, !2206, !2207, !2210, !2211, !2212, !2215, !2216, !2217, !2223, !2224}
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !46, line: 739, baseType: !1276, size: 512, align: 512)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1273, file: !46, line: 739, size: 512, align: 512, elements: !1277)
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1276, file: !46, line: 747, baseType: !207, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1273, file: !46, line: 750, baseType: !1280, size: 128, offset: 512)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1281, line: 218, size: 128, elements: !1282)
!1281 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1282 = !{!1283, !1290, !1291}
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !1281, line: 219, baseType: !1284, size: 32)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1280, file: !1281, line: 219, size: 32, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1284, file: !1281, line: 220, baseType: !187, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1284, file: !1281, line: 221, baseType: !1288)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1281, line: 197, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1281, line: 197, elements: !541)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1280, file: !1281, line: 223, baseType: !7, size: 32, offset: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1280, file: !1281, line: 224, baseType: !329, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1273, file: !46, line: 752, baseType: !1293, size: 64, offset: 640)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!307, !1296, !307, !307, !307, !307}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1298)
!1298 = !{!1299, !1305, !1306, !1308, !1309, !1310, !1311, !1312, !1364, !1559, !1568, !1569, !1570, !2090, !2091, !2092, !2093, !2095, !2096, !2099}
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1297, file: !14, line: 995, baseType: !1300, size: 128)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1297, file: !14, line: 995, size: 128, elements: !1301)
!1301 = !{!1302, !1303, !1304}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1300, file: !14, line: 996, baseType: !992, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1300, file: !14, line: 997, baseType: !950, size: 128, align: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1300, file: !14, line: 998, baseType: !7, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1297, file: !14, line: 1005, baseType: !187, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1297, file: !14, line: 1006, baseType: !1307, size: 32, offset: 160)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !158, line: 156, baseType: !7)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1297, file: !14, line: 1007, baseType: !641, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1297, file: !14, line: 1008, baseType: !637, size: 256, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1297, file: !14, line: 1009, baseType: !499, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1297, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1297, file: !14, line: 1011, baseType: !1313, size: 256, offset: 640)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1314)
!1314 = !{!1315, !1336, !1360, !1361, !1362, !1363}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1313, file: !14, line: 949, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1317, line: 34, baseType: !1318)
!1317 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1317, line: 25, size: 64, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1318, file: !1317, line: 26, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1322, line: 27, baseType: !1323)
!1322 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1322, line: 13, size: 64, elements: !1324)
!1324 = !{!1325, !1335}
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1323, file: !1322, line: 14, baseType: !1326, size: 32)
!1326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1323, file: !1322, line: 14, size: 32, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1326, file: !1322, line: 15, baseType: !207, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !1322, line: 16, baseType: !1330, size: 32)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !1322, line: 16, size: 32, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1330, file: !1322, line: 18, baseType: !215, size: 8)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1330, file: !1322, line: 19, baseType: !1334, size: 24, offset: 8)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 24, elements: !258)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1323, file: !1322, line: 26, baseType: !199, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1313, file: !14, line: 950, baseType: !1337, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1347, !1348, !1349, !1350}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1338, file: !30, line: 61, baseType: !979, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1338, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1338, file: !30, line: 63, baseType: !187, size: 32, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1338, file: !30, line: 65, baseType: !1344, size: 256, offset: 128)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 256, elements: !1345)
!1345 = !{!1346}
!1346 = !DISubrange(count: 4)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1338, file: !30, line: 66, baseType: !529, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1338, file: !30, line: 68, baseType: !943, size: 192, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1338, file: !30, line: 69, baseType: !950, size: 128, align: 64, offset: 640)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1338, file: !30, line: 70, baseType: !1351, offset: 768)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, elements: !1358)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1352, file: !30, line: 55, baseType: !109, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1352, file: !30, line: 56, baseType: !1356, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1358 = !{!1359}
!1359 = !DISubrange(count: -1)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1313, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1313, file: !14, line: 952, baseType: !344, size: 32, offset: 160)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1313, file: !14, line: 952, baseType: !344, size: 32, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1313, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1297, file: !14, line: 1012, baseType: !1365, size: 64, offset: 896)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1368, line: 110, size: 1472, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1386, !1387, !1388, !1389, !1390, !1391, !1504, !1505, !1506, !1507, !1508, !1539, !1542, !1546, !1554}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1367, file: !1368, line: 111, baseType: !641, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1367, file: !1368, line: 112, baseType: !344, size: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1367, file: !1368, line: 113, baseType: !353, size: 32, offset: 96)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1367, file: !1368, line: 114, baseType: !344, size: 32, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1367, file: !1368, line: 115, baseType: !353, size: 32, offset: 160)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1367, file: !1368, line: 116, baseType: !344, size: 32, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1367, file: !1368, line: 117, baseType: !353, size: 32, offset: 224)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1367, file: !1368, line: 118, baseType: !344, size: 32, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1367, file: !1368, line: 119, baseType: !353, size: 32, offset: 288)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1367, file: !1368, line: 120, baseType: !7, size: 32, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1367, file: !1368, line: 121, baseType: !1381, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1382, line: 24, baseType: !1383)
!1382 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1382, line: 24, size: 64, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1383, file: !1382, line: 24, baseType: !411, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1367, file: !1368, line: 122, baseType: !1381, size: 64, offset: 448)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1367, file: !1368, line: 123, baseType: !1381, size: 64, offset: 512)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1367, file: !1368, line: 124, baseType: !1381, size: 64, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1367, file: !1368, line: 125, baseType: !1381, size: 64, offset: 640)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1367, file: !1368, line: 127, baseType: !219, size: 8, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1367, file: !1368, line: 129, baseType: !1392, size: 64, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1394, line: 195, size: 1728, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1395 = !{!1396, !1397, !1402, !1407, !1408, !1411, !1412, !1417, !1418, !1419, !1420, !1423, !1424, !1425, !1427, !1428, !1468, !1489}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1393, file: !1394, line: 196, baseType: !979, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1393, file: !1394, line: 197, baseType: !1398, size: 32, offset: 32)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1394, line: 28, baseType: !1399)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !158, line: 104, baseType: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !216, line: 20, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !218, line: 26, baseType: !109)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !1394, line: 198, baseType: !1403, size: 192, offset: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1393, file: !1394, line: 198, size: 192, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1403, file: !1394, line: 199, baseType: !157, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1403, file: !1394, line: 200, baseType: !1023, size: 192, align: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1393, file: !1394, line: 205, baseType: !850, size: 320, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1393, file: !1394, line: 206, baseType: !1409, size: 64, offset: 576)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1394, line: 206, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1393, file: !1394, line: 207, baseType: !329, size: 64, offset: 640)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !1394, line: 208, baseType: !1413, size: 64, offset: 704)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1393, file: !1394, line: 208, size: 64, elements: !1414)
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1413, file: !1394, line: 209, baseType: !690, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1413, file: !1394, line: 210, baseType: !690, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1393, file: !1394, line: 212, baseType: !690, size: 64, offset: 768)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1393, file: !1394, line: 213, baseType: !344, size: 32, offset: 832)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1393, file: !1394, line: 214, baseType: !353, size: 32, offset: 864)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1393, file: !1394, line: 215, baseType: !1421, size: 32, offset: 896)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1394, line: 31, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !158, line: 110, baseType: !407)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1393, file: !1394, line: 216, baseType: !227, size: 16, offset: 928)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1393, file: !1394, line: 217, baseType: !227, size: 16, offset: 944)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1393, file: !1394, line: 221, baseType: !1426, size: 16, offset: 960)
!1426 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1393, file: !1394, line: 228, baseType: !307, size: 64, offset: 1024)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !1394, line: 245, baseType: !1429, size: 320, offset: 1088)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1393, file: !1394, line: 245, size: 320, elements: !1430)
!1430 = !{!1431, !1460}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1429, file: !1394, line: 246, baseType: !1432, size: 320)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1394, line: 114, size: 320, elements: !1433)
!1433 = !{!1434, !1435, !1447, !1450, !1459}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1432, file: !1394, line: 116, baseType: !307, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, scope: !1432, file: !1394, line: 117, baseType: !1436, size: 64, offset: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1432, file: !1394, line: 117, size: 64, elements: !1437)
!1437 = !{!1438, !1446}
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1436, file: !1394, line: 118, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1436, file: !1394, line: 118, size: 64, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1439, file: !1394, line: 120, baseType: !225, size: 16)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1439, file: !1394, line: 121, baseType: !1443, size: 48, offset: 16)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 48, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: 6)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1436, file: !1394, line: 127, baseType: !307, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1432, file: !1394, line: 129, baseType: !1448, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1394, line: 102, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1432, file: !1394, line: 130, baseType: !1451, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1394, line: 108, size: 192, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1452, file: !1394, line: 109, baseType: !950, size: 128, align: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1452, file: !1394, line: 110, baseType: !979, size: 32, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1452, file: !1394, line: 111, baseType: !1457, size: 8, offset: 160)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !158, line: 35, baseType: !1458)
!1458 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1432, file: !1394, line: 131, baseType: !176, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !1394, line: 247, baseType: !1461, size: 320)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1429, file: !1394, line: 247, size: 320, elements: !1462)
!1462 = !{!1463, !1464, !1465, !1466, !1467}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1461, file: !1394, line: 248, baseType: !307, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1461, file: !1394, line: 249, baseType: !307, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1461, file: !1394, line: 250, baseType: !1448, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1461, file: !1394, line: 251, baseType: !1451, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1461, file: !1394, line: 252, baseType: !257, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !1394, line: 260, baseType: !1469, size: 256, offset: 1408)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1393, file: !1394, line: 260, size: 256, elements: !1470)
!1470 = !{!1471, !1477}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1469, file: !1394, line: 261, baseType: !1472, size: 256)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1394, line: 134, size: 256, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1472, file: !1394, line: 135, baseType: !329, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1472, file: !1394, line: 136, baseType: !1476, size: 256)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 256, elements: !1345)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1394, line: 262, baseType: !1478, size: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1469, file: !1394, line: 262, size: 256, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1478, file: !1394, line: 264, baseType: !157, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1478, file: !1394, line: 265, baseType: !1482, size: 128, offset: 128)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1483, line: 22, size: 128, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1484 = !{!1485, !1488}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1482, file: !1483, line: 23, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1483, line: 23, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1482, file: !1483, line: 24, baseType: !307, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1393, file: !1394, line: 280, baseType: !1490, size: 64, offset: 1664)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1394, line: 176, size: 192, elements: !1492)
!1492 = !{!1493, !1502, !1503}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1491, file: !1394, line: 177, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1394, line: 171, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!109, !1392, !1498, !1500, !1392}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1491, file: !1394, line: 178, baseType: !1392, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1491, file: !1394, line: 179, baseType: !1448, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1367, file: !1368, line: 130, baseType: !1392, size: 64, offset: 832)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1367, file: !1368, line: 131, baseType: !1392, size: 64, offset: 896)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1367, file: !1368, line: 132, baseType: !1392, size: 64, offset: 960)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1367, file: !1368, line: 135, baseType: !329, size: 64, offset: 1024)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1367, file: !1368, line: 137, baseType: !1509, size: 64, offset: 1088)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1511, line: 14, size: 1088, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1512 = !{!1513, !1514, !1523, !1524, !1525, !1526, !1527, !1528}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1510, file: !1511, line: 15, baseType: !979, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1510, file: !1511, line: 17, baseType: !1515, size: 320, offset: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1516, line: 22, size: 320, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1517 = !{!1518, !1519, !1520, !1521}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1515, file: !1516, line: 23, baseType: !650, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1515, file: !1516, line: 24, baseType: !647, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1515, file: !1516, line: 26, baseType: !157, size: 128, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1515, file: !1516, line: 28, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1510, file: !1511, line: 19, baseType: !307, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1510, file: !1511, line: 20, baseType: !641, size: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1510, file: !1511, line: 23, baseType: !533, size: 128, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1510, file: !1511, line: 24, baseType: !344, size: 32, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1510, file: !1511, line: 29, baseType: !641, size: 64, offset: 704)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1510, file: !1511, line: 36, baseType: !1529, size: 320, offset: 768)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1530, line: 15, size: 320, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1531 = !{!1532, !1533, !1534, !1535, !1536, !1537, !1538}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1529, file: !1530, line: 16, baseType: !650, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1529, file: !1530, line: 18, baseType: !109, size: 32, offset: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1529, file: !1530, line: 19, baseType: !109, size: 32, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1529, file: !1530, line: 20, baseType: !109, size: 32, offset: 96)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1529, file: !1530, line: 21, baseType: !109, size: 32, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1529, file: !1530, line: 22, baseType: !307, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1529, file: !1530, line: 23, baseType: !307, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1367, file: !1368, line: 138, baseType: !1540, size: 64, offset: 1152)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !345, line: 18, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1367, file: !1368, line: 139, baseType: !1543, size: 64, offset: 1216)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1545, line: 16, flags: DIFlagFwdDecl)
!1545 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1367, file: !1368, line: 140, baseType: !1547, size: 64, offset: 1280)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1368, line: 25, size: 64, elements: !1549)
!1549 = !{!1550, !1551, !1552}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1548, file: !1368, line: 26, baseType: !207, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1548, file: !1368, line: 27, baseType: !109, size: 32, offset: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1548, file: !1368, line: 28, baseType: !1553, offset: 64)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, elements: !1358)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1368, line: 142, baseType: !1555, size: 128, offset: 1344)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !1368, line: 142, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1555, file: !1368, line: 143, baseType: !109, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1555, file: !1368, line: 144, baseType: !950, size: 128, align: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1297, file: !14, line: 1013, baseType: !1560, size: 256, offset: 960)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1560, file: !14, line: 971, baseType: !307, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1560, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1560, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1560, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1560, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1560, file: !14, line: 976, baseType: !499, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1297, file: !14, line: 1014, baseType: !762, size: 128, offset: 1216)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1297, file: !14, line: 1015, baseType: !338, size: 64, offset: 1344)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1297, file: !14, line: 1016, baseType: !1571, size: 64, offset: 1408)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1574)
!1574 = !{!1575, !1576, !1580, !1585, !1589, !1975, !1976, !1982, !1995, !2003, !2007, !2008, !2012, !2013, !2017, !2022, !2023, !2027, !2031, !2037, !2038, !2042, !2043, !2049, !2053, !2057, !2063, !2067, !2071, !2075, !2079, !2080, !2086}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1573, file: !14, line: 1915, baseType: !152, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1573, file: !14, line: 1916, baseType: !1577, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!499, !1296, !499, !109}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1573, file: !14, line: 1917, baseType: !1581, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!289, !1296, !257, !304, !1584}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1573, file: !14, line: 1918, baseType: !1586, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!289, !1296, !176, !304, !1584}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1573, file: !14, line: 1919, baseType: !1590, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!289, !1593, !1615}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1602, !1603, !1604, !1605}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1594, file: !14, line: 374, baseType: !1296, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1594, file: !14, line: 375, baseType: !499, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1594, file: !14, line: 376, baseType: !1599, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1593, !293}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1594, file: !14, line: 377, baseType: !329, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1594, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1594, file: !14, line: 379, baseType: !225, size: 16, offset: 288)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !14, line: 380, baseType: !1606, size: 64, offset: 320)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1594, file: !14, line: 380, size: 64, elements: !1607)
!1607 = !{!1608, !1611}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1606, file: !14, line: 386, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1606, file: !14, line: 395, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!289, !329}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1617, line: 41, size: 320, elements: !1618)
!1617 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1629, !1970}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1616, file: !1617, line: 42, baseType: !215, size: 8)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1616, file: !1617, line: 43, baseType: !1457, size: 8, offset: 8)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1616, file: !1617, line: 44, baseType: !1457, size: 8, offset: 16)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1616, file: !1617, line: 45, baseType: !1457, size: 8, offset: 24)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1616, file: !1617, line: 46, baseType: !1457, size: 8, offset: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1617, line: 47, baseType: !1625, size: 64, offset: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1616, file: !1617, line: 47, size: 64, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1625, file: !1617, line: 48, baseType: !304, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1625, file: !1617, line: 49, baseType: !109, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1617, line: 61, baseType: !1630, size: 128, offset: 128)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1616, file: !1617, line: 61, size: 128, elements: !1631)
!1631 = !{!1632, !1638}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1630, file: !1617, line: 67, baseType: !1633, size: 128)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1634, line: 17, size: 128, elements: !1635)
!1634 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1633, file: !1634, line: 19, baseType: !329, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1633, file: !1634, line: 20, baseType: !305, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1617, line: 68, baseType: !1639, size: 128)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1630, file: !1617, line: 68, size: 128, elements: !1640)
!1640 = !{!1641, !1969}
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !1617, line: 69, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !1617, line: 69, size: 64, elements: !1643)
!1643 = !{!1644, !1647, !1654, !1960, !1968}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1642, file: !1617, line: 71, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1642, file: !1617, line: 72, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1617, line: 17, size: 128, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1650, file: !1617, line: 18, baseType: !329, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1650, file: !1617, line: 19, baseType: !304, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1642, file: !1617, line: 73, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1658, line: 31, size: 128, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1659 = !{!1660, !1958, !1959}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1657, file: !1658, line: 32, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !46, line: 74, size: 512, align: 128, elements: !1663)
!1663 = !{!1664, !1665, !1952, !1957}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1662, file: !46, line: 75, baseType: !307, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !46, line: 83, baseType: !1666, size: 320, offset: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !46, line: 83, size: 320, elements: !1667)
!1667 = !{!1668, !1689, !1703, !1707, !1951}
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !46, line: 84, baseType: !1669, size: 320)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !46, line: 84, size: 320, elements: !1670)
!1670 = !{!1671, !1682, !1683, !1688}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !46, line: 90, baseType: !1672, size: 128)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !46, line: 90, size: 128, elements: !1673)
!1673 = !{!1674, !1675, !1680, !1681}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1672, file: !46, line: 91, baseType: !157, size: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !46, line: 94, baseType: !1676, size: 128)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !46, line: 94, size: 128, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1676, file: !46, line: 96, baseType: !329, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1676, file: !46, line: 98, baseType: !7, size: 32, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1672, file: !46, line: 102, baseType: !157, size: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1672, file: !46, line: 103, baseType: !157, size: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1669, file: !46, line: 106, baseType: !334, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !46, line: 107, baseType: !1684, size: 64, offset: 192)
!1684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !46, line: 107, size: 64, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1684, file: !46, line: 108, baseType: !307, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1684, file: !46, line: 109, baseType: !307, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1669, file: !46, line: 117, baseType: !307, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !46, line: 119, baseType: !1690, size: 320)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !46, line: 119, size: 320, elements: !1691)
!1691 = !{!1692, !1693, !1696, !1697, !1698}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1690, file: !46, line: 124, baseType: !307, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1690, file: !46, line: 125, baseType: !1694, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !46, line: 125, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1690, file: !46, line: 126, baseType: !307, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1690, file: !46, line: 127, baseType: !307, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !46, line: 128, baseType: !1699, size: 64, offset: 256)
!1699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !46, line: 128, size: 64, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1699, file: !46, line: 133, baseType: !307, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1699, file: !46, line: 138, baseType: !641, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !46, line: 141, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !46, line: 141, size: 64, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1704, file: !46, line: 142, baseType: !307, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !46, line: 144, baseType: !1708, size: 128)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !46, line: 144, size: 128, elements: !1709)
!1709 = !{!1710, !1950}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1708, file: !46, line: 146, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 126, size: 1216, elements: !1713)
!1713 = !{!1714, !1724, !1745, !1756, !1757, !1758, !1759, !1932, !1933, !1934}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1712, file: !38, line: 127, baseType: !1715, size: 384)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 21, size: 384, elements: !1716)
!1716 = !{!1717, !1718, !1720, !1721, !1722, !1723}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1715, file: !38, line: 22, baseType: !307, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1715, file: !38, line: 23, baseType: !1719, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1715, file: !38, line: 24, baseType: !1719, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1715, file: !38, line: 25, baseType: !307, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1715, file: !38, line: 26, baseType: !307, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1715, file: !38, line: 27, baseType: !307, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1712, file: !38, line: 128, baseType: !1725, size: 128, offset: 384)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1726, line: 105, size: 128, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1725, file: !1726, line: 110, baseType: !307, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1725, file: !1726, line: 118, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1726, line: 95, size: 448, elements: !1732)
!1732 = !{!1733, !1734, !1740, !1741, !1742, !1743, !1744}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1731, file: !1726, line: 96, baseType: !641, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1731, file: !1726, line: 97, baseType: !1735, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1726, line: 60, baseType: !1737)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !1739}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1731, file: !1726, line: 98, baseType: !1735, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1731, file: !1726, line: 99, baseType: !1457, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1731, file: !1726, line: 100, baseType: !1457, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1731, file: !1726, line: 101, baseType: !950, size: 128, align: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1731, file: !1726, line: 102, baseType: !1739, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1712, file: !38, line: 129, baseType: !1746, size: 256, offset: 512)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1747, line: 26, size: 256, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1746, file: !1747, line: 27, baseType: !7, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1746, file: !1747, line: 28, baseType: !1751, size: 192, offset: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1752, line: 43, size: 192, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1751, file: !1752, line: 44, baseType: !650, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1751, file: !1752, line: 45, baseType: !157, size: 128, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1712, file: !38, line: 130, baseType: !37, size: 32, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1712, file: !38, line: 131, baseType: !7, size: 32, offset: 800)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1712, file: !38, line: 132, baseType: !307, size: 64, offset: 832)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1712, file: !38, line: 133, baseType: !1760, size: 64, offset: 896)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1762)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 77, size: 192, elements: !1763)
!1763 = !{!1764, !1768, !1928}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1762, file: !38, line: 83, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !1661}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1762, file: !38, line: 89, baseType: !1769, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !46, line: 1184, baseType: !7)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1775, line: 512, size: 896, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1776 = !{!1777, !1895, !1896, !1903, !1910, !1920, !1921, !1922, !1924, !1926}
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !1775, line: 513, baseType: !1778, size: 320)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1774, file: !1775, line: 513, size: 320, elements: !1779)
!1779 = !{!1780, !1891, !1892, !1893, !1894}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1778, file: !1775, line: 514, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !46, line: 625, size: 1344, elements: !1783)
!1783 = !{!1784, !1793, !1794, !1802, !1809, !1810, !1815, !1816, !1821, !1822, !1825, !1884, !1885, !1886, !1887, !1888, !1889}
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !46, line: 628, baseType: !1785, size: 128)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !46, line: 628, size: 128, elements: !1786)
!1786 = !{!1787, !1792}
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !46, line: 629, baseType: !1788, size: 128)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !46, line: 629, size: 128, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1788, file: !46, line: 631, baseType: !307, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1788, file: !46, line: 632, baseType: !307, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1785, file: !46, line: 635, baseType: !950, size: 128, align: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1782, file: !46, line: 639, baseType: !1269, size: 64, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1782, file: !46, line: 640, baseType: !1795, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1796, line: 297, baseType: !1797)
!1796 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1796, line: 297, size: 64, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1797, file: !1796, line: 297, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1801, line: 19, baseType: !307)
!1801 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !46, line: 646, baseType: !1803, size: 64, offset: 256)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !46, line: 646, size: 64, elements: !1804)
!1804 = !{!1805, !1808}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1803, file: !46, line: 647, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1807)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !46, line: 542, baseType: !307)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1803, file: !46, line: 648, baseType: !1807, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1782, file: !46, line: 666, baseType: !109, size: 32, offset: 320)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1782, file: !46, line: 667, baseType: !1811, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !46, line: 579, size: 320, elements: !1813)
!1813 = !{!1814}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1812, file: !46, line: 580, baseType: !850, size: 320)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1782, file: !46, line: 670, baseType: !1457, size: 8, offset: 448)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1782, file: !46, line: 681, baseType: !1817, size: 256, offset: 512)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1782, file: !46, line: 678, size: 256, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1817, file: !46, line: 679, baseType: !1023, size: 192, align: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1817, file: !46, line: 680, baseType: !307, size: 64, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1782, file: !46, line: 689, baseType: !157, size: 128, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1782, file: !46, line: 691, baseType: !1823, size: 64, offset: 896)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !46, line: 691, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1782, file: !46, line: 694, baseType: !1826, size: 64, offset: 960)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1775, line: 563, size: 1024, elements: !1829)
!1829 = !{!1830, !1834, !1835, !1839, !1843, !1847, !1848, !1852, !1856, !1860, !1861, !1862, !1866, !1870, !1876, !1880}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1828, file: !1775, line: 564, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1781}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1828, file: !1775, line: 569, baseType: !1831, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1828, file: !1775, line: 571, baseType: !1836, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!109, !1781, !307}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1828, file: !1775, line: 572, baseType: !1840, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!109, !1781}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1828, file: !1775, line: 578, baseType: !1844, size: 64, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!109, !1781, !307, !307, !307}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1828, file: !1775, line: 580, baseType: !1769, size: 64, offset: 320)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1828, file: !1775, line: 581, baseType: !1849, size: 64, offset: 384)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!1772, !1773, !7}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1828, file: !1775, line: 582, baseType: !1853, size: 64, offset: 448)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1772, !1773, !307, !307}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1828, file: !1775, line: 584, baseType: !1857, size: 64, offset: 512)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!307, !1781}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1828, file: !1775, line: 588, baseType: !1769, size: 64, offset: 576)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1828, file: !1775, line: 591, baseType: !1769, size: 64, offset: 640)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1828, file: !1775, line: 597, baseType: !1863, size: 64, offset: 704)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!109, !1781, !307, !329, !109, !109}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1828, file: !1775, line: 603, baseType: !1867, size: 64, offset: 768)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!176, !1781}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1828, file: !1775, line: 613, baseType: !1871, size: 64, offset: 832)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!109, !1781, !1874}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !612, line: 54, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1828, file: !1775, line: 625, baseType: !1877, size: 64, offset: 896)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1874, !1781, !307}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1828, file: !1775, line: 633, baseType: !1881, size: 64, offset: 960)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1661, !1781, !307}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1782, file: !46, line: 697, baseType: !307, size: 64, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1782, file: !46, line: 699, baseType: !1296, size: 64, offset: 1088)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1782, file: !46, line: 700, baseType: !329, size: 64, offset: 1152)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1782, file: !46, line: 711, baseType: !641, size: 64, offset: 1216)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1782, file: !46, line: 717, baseType: !1874, size: 64, offset: 1280)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1782, file: !46, line: 722, baseType: !1890, offset: 1344)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !46, line: 570, elements: !541)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1778, file: !1775, line: 515, baseType: !702, size: 32, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1778, file: !1775, line: 516, baseType: !307, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1778, file: !1775, line: 517, baseType: !307, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1778, file: !1775, line: 518, baseType: !307, size: 64, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1774, file: !1775, line: 520, baseType: !45, size: 32, offset: 320)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1774, file: !1775, line: 522, baseType: !1897, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1801, line: 22, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1801, line: 22, size: 64, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1899, file: !1801, line: 22, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1801, line: 15, baseType: !307)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1774, file: !1775, line: 524, baseType: !1904, size: 64, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1796, line: 372, baseType: !1906)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1796, line: 372, size: 64, elements: !1907)
!1907 = !{!1908}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1906, file: !1796, line: 372, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1801, line: 16, baseType: !307)
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !1775, line: 527, baseType: !1911, size: 64, offset: 512)
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1774, file: !1775, line: 527, size: 64, elements: !1912)
!1912 = !{!1913, !1919}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1911, file: !1775, line: 528, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1801, line: 21, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1801, line: 21, size: 64, elements: !1916)
!1916 = !{!1917}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1915, file: !1801, line: 21, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1801, line: 14, baseType: !307)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1911, file: !1775, line: 529, baseType: !1898, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1774, file: !1775, line: 534, baseType: !1661, size: 64, offset: 576)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1774, file: !1775, line: 535, baseType: !1661, size: 64, offset: 640)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1774, file: !1775, line: 541, baseType: !1923, size: 64, offset: 704)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1774, file: !1775, line: 545, baseType: !1925, size: 64, offset: 768)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1774, file: !1775, line: 549, baseType: !1927, size: 64, offset: 832)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1796, line: 520, baseType: !1661)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1762, file: !38, line: 100, baseType: !1929, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!109, !1711, !307, !307, !109}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1712, file: !38, line: 134, baseType: !329, size: 64, offset: 960)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1712, file: !38, line: 135, baseType: !109, size: 32, offset: 1024)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !38, line: 136, baseType: !1935, size: 128, offset: 1088)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1712, file: !38, line: 136, size: 128, elements: !1936)
!1936 = !{!1937, !1943}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1935, file: !38, line: 137, baseType: !1938, size: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1939, line: 6, size: 128, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1938, file: !1939, line: 7, baseType: !411, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1938, file: !1939, line: 8, baseType: !411, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !38, line: 138, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !38, line: 138, elements: !1945)
!1945 = !{!1946, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1944, file: !38, line: 138, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !38, line: 138, elements: !541)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1944, file: !38, line: 138, baseType: !1949)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1938, elements: !1358)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1708, file: !46, line: 147, baseType: !329, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1666, file: !46, line: 161, baseType: !950, size: 128, align: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !46, line: 164, baseType: !1953, size: 32, offset: 384)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !46, line: 164, size: 32, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1953, file: !46, line: 169, baseType: !207, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1953, file: !46, line: 177, baseType: !7, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1662, file: !46, line: 181, baseType: !207, size: 32, offset: 416)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1657, file: !1658, line: 33, baseType: !7, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1657, file: !1658, line: 34, baseType: !7, size: 32, offset: 96)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1642, file: !1617, line: 74, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1963, line: 296, size: 128, elements: !1964)
!1963 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1964 = !{!1965, !1966, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1962, file: !1963, line: 297, baseType: !187, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1962, file: !1963, line: 299, baseType: !702, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1962, file: !1963, line: 300, baseType: !329, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1642, file: !1617, line: 75, baseType: !329, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1639, file: !1617, line: 77, baseType: !304, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1617, line: 80, baseType: !1971, size: 64, offset: 256)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1616, file: !1617, line: 80, size: 64, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1971, file: !1617, line: 81, baseType: !307, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1971, file: !1617, line: 82, baseType: !499, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1573, file: !14, line: 1920, baseType: !1590, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1573, file: !14, line: 1921, baseType: !1977, size: 64, offset: 384)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!109, !1593, !1980, !7}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1573, file: !14, line: 1923, baseType: !1983, size: 64, offset: 448)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!109, !1296, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1988)
!1988 = !{!1989, !1994}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1987, file: !14, line: 1859, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1991)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1457, !1986, !176, !109, !499, !411, !7}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1987, file: !14, line: 1860, baseType: !499, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1573, file: !14, line: 1924, baseType: !1996, size: 64, offset: 512)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1999, !1296, !2001}
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2000, line: 59, baseType: !7)
!2000 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1573, file: !14, line: 1925, baseType: !2004, size: 64, offset: 576)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!293, !1296, !7, !307}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1573, file: !14, line: 1926, baseType: !2004, size: 64, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1573, file: !14, line: 1927, baseType: !2009, size: 64, offset: 704)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!109, !1296, !1781}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1573, file: !14, line: 1928, baseType: !307, size: 64, offset: 768)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1573, file: !14, line: 1929, baseType: !2014, size: 64, offset: 832)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!109, !338, !1296}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1573, file: !14, line: 1930, baseType: !2018, size: 64, offset: 896)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!109, !1296, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !329)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1573, file: !14, line: 1931, baseType: !2014, size: 64, offset: 960)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1573, file: !14, line: 1932, baseType: !2024, size: 64, offset: 1024)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!109, !1296, !499, !499, !109}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1573, file: !14, line: 1933, baseType: !2028, size: 64, offset: 1088)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!109, !109, !1296, !109}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1573, file: !14, line: 1934, baseType: !2032, size: 64, offset: 1152)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!109, !1296, !109, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1573, file: !14, line: 1935, baseType: !1293, size: 64, offset: 1216)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1573, file: !14, line: 1936, baseType: !2039, size: 64, offset: 1280)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!109, !109}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1573, file: !14, line: 1937, baseType: !2032, size: 64, offset: 1344)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1573, file: !14, line: 1938, baseType: !2044, size: 64, offset: 1408)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!289, !2047, !1296, !1584, !304, !7}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !612, line: 59, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1573, file: !14, line: 1939, baseType: !2050, size: 64, offset: 1472)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!289, !1296, !1584, !2047, !304, !7}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1573, file: !14, line: 1940, baseType: !2054, size: 64, offset: 1536)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !1296}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1573, file: !14, line: 1941, baseType: !2058, size: 64, offset: 1600)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!109, !1296, !109, !2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1573, file: !14, line: 1942, baseType: !2064, size: 64, offset: 1664)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!293, !1296, !109, !499, !499}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1573, file: !14, line: 1944, baseType: !2068, size: 64, offset: 1728)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !610, !1296}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1573, file: !14, line: 1948, baseType: !2072, size: 64, offset: 1792)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!289, !1296, !499, !1296, !499, !304, !7}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1573, file: !14, line: 1950, baseType: !2076, size: 64, offset: 1856)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!499, !1296, !499, !1296, !499, !499, !7}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1573, file: !14, line: 1953, baseType: !2024, size: 64, offset: 1920)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1573, file: !14, line: 1954, baseType: !2081, size: 64, offset: 1984)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!109, !2084, !7}
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1573, file: !14, line: 1955, baseType: !2087, size: 64, offset: 2048)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!109, !2084, !1980, !7}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1297, file: !14, line: 1018, baseType: !411, size: 64, offset: 1472)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1297, file: !14, line: 1020, baseType: !329, size: 64, offset: 1536)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1297, file: !14, line: 1023, baseType: !329, size: 64, offset: 1600)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1297, file: !14, line: 1027, baseType: !2094, size: 64, offset: 1664)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1297, file: !14, line: 1029, baseType: !334, size: 64, offset: 1728)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1297, file: !14, line: 1030, baseType: !2097, size: 32, offset: 1792)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2098, line: 8, baseType: !407)
!2098 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1297, file: !14, line: 1031, baseType: !2097, size: 32, offset: 1824)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1273, file: !46, line: 756, baseType: !307, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1273, file: !46, line: 757, baseType: !307, size: 64, offset: 768)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1273, file: !46, line: 760, baseType: !307, size: 64, offset: 832)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1273, file: !46, line: 761, baseType: !307, size: 64, offset: 896)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1273, file: !46, line: 763, baseType: !307, size: 64, offset: 960)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1273, file: !46, line: 764, baseType: !2106, size: 64, offset: 1024)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1796, line: 299, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1796, line: 299, size: 64, elements: !2109)
!2109 = !{!2110}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2108, file: !1796, line: 299, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1801, line: 18, baseType: !307)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1273, file: !46, line: 773, baseType: !207, size: 32, offset: 1088)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1273, file: !46, line: 785, baseType: !207, size: 32, offset: 1120)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1273, file: !46, line: 795, baseType: !2115, size: 64, offset: 1152)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !46, line: 726, size: 128, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2116, file: !46, line: 727, baseType: !411, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2116, file: !46, line: 728, baseType: !109, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1273, file: !46, line: 801, baseType: !307, size: 64, offset: 1216)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1273, file: !46, line: 804, baseType: !641, size: 64, offset: 1280)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1273, file: !46, line: 806, baseType: !109, size: 32, offset: 1344)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1273, file: !46, line: 808, baseType: !187, size: 32, offset: 1376)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1273, file: !46, line: 823, baseType: !850, size: 320, offset: 1408)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1273, file: !46, line: 825, baseType: !157, size: 128, offset: 1728)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1273, file: !46, line: 845, baseType: !109, size: 32, offset: 1856)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1273, file: !46, line: 849, baseType: !307, size: 64, offset: 1920)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1273, file: !46, line: 850, baseType: !307, size: 64, offset: 1984)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1273, file: !46, line: 852, baseType: !307, size: 64, offset: 2048)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1273, file: !46, line: 853, baseType: !307, size: 64, offset: 2112)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1273, file: !46, line: 854, baseType: !643, size: 64, offset: 2176)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1273, file: !46, line: 855, baseType: !307, size: 64, offset: 2240)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1273, file: !46, line: 856, baseType: !307, size: 64, offset: 2304)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1273, file: !46, line: 857, baseType: !307, size: 64, offset: 2368)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1273, file: !46, line: 858, baseType: !307, size: 64, offset: 2432)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1273, file: !46, line: 865, baseType: !384, size: 32, offset: 2496)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1273, file: !46, line: 867, baseType: !187, size: 32, offset: 2528)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1273, file: !46, line: 869, baseType: !307, size: 64, offset: 2560)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1273, file: !46, line: 869, baseType: !307, size: 64, offset: 2624)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1273, file: !46, line: 869, baseType: !307, size: 64, offset: 2688)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1273, file: !46, line: 869, baseType: !307, size: 64, offset: 2752)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1273, file: !46, line: 870, baseType: !307, size: 64, offset: 2816)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1273, file: !46, line: 870, baseType: !307, size: 64, offset: 2880)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1273, file: !46, line: 870, baseType: !307, size: 64, offset: 2944)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1273, file: !46, line: 871, baseType: !307, size: 64, offset: 3008)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1273, file: !46, line: 871, baseType: !307, size: 64, offset: 3072)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1273, file: !46, line: 871, baseType: !307, size: 64, offset: 3136)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1273, file: !46, line: 871, baseType: !307, size: 64, offset: 3200)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1273, file: !46, line: 873, baseType: !2150, size: 3328, offset: 3264)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 3328, elements: !2151)
!2151 = !{!2152}
!2152 = !DISubrange(count: 52)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1273, file: !46, line: 875, baseType: !2154, size: 1280, offset: 6592)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1515, size: 1280, elements: !1345)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1273, file: !46, line: 877, baseType: !2156, size: 64, offset: 7872)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !46, line: 877, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1273, file: !46, line: 880, baseType: !2159, size: 1088, offset: 7936)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2160, line: 72, baseType: !2161)
!2160 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2160, line: 23, size: 1088, elements: !2162)
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2170, !2171, !2172, !2173, !2200, !2201, !2202}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2161, file: !2160, line: 28, baseType: !411, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2161, file: !2160, line: 38, baseType: !643, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2161, file: !2160, line: 40, baseType: !307, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2161, file: !2160, line: 43, baseType: !850, size: 320, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2161, file: !2160, line: 44, baseType: !2168, size: 64, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2160, line: 44, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2161, file: !2160, line: 48, baseType: !307, size: 64, offset: 576)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2161, file: !2160, line: 59, baseType: !637, size: 256, offset: 640)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2161, file: !2160, line: 60, baseType: !329, size: 64, offset: 896)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2161, file: !2160, line: 61, baseType: !2174, size: 64, offset: 960)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2177, line: 13, size: 1216, elements: !2178)
!2177 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2185, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2176, file: !2177, line: 14, baseType: !329, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2176, file: !2177, line: 15, baseType: !307, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2176, file: !2177, line: 17, baseType: !307, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2176, file: !2177, line: 17, baseType: !307, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2176, file: !2177, line: 18, baseType: !307, size: 64, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2176, file: !2177, line: 18, baseType: !307, size: 64, offset: 320)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2176, file: !2177, line: 19, baseType: !2186, size: 64, offset: 384)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2176, file: !2177, line: 21, baseType: !293, size: 64, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2176, file: !2177, line: 23, baseType: !293, size: 64, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2176, file: !2177, line: 24, baseType: !293, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2176, file: !2177, line: 25, baseType: !293, size: 64, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2176, file: !2177, line: 26, baseType: !293, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2176, file: !2177, line: 27, baseType: !293, size: 64, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2176, file: !2177, line: 28, baseType: !293, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2176, file: !2177, line: 29, baseType: !293, size: 64, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2176, file: !2177, line: 30, baseType: !293, size: 64, offset: 960)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2176, file: !2177, line: 31, baseType: !293, size: 64, offset: 1024)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2176, file: !2177, line: 32, baseType: !293, size: 64, offset: 1088)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2176, file: !2177, line: 33, baseType: !293, size: 64, offset: 1152)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2161, file: !2160, line: 63, baseType: !207, size: 32, offset: 1024)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2161, file: !2160, line: 69, baseType: !225, size: 16, offset: 1056)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2161, file: !2160, line: 70, baseType: !2203, size: 16, offset: 1072)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !216, line: 18, baseType: !2204)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !218, line: 23, baseType: !1426)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1273, file: !46, line: 882, baseType: !307, size: 64, offset: 9024)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1273, file: !46, line: 885, baseType: !187, size: 32, offset: 9088)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1273, file: !46, line: 886, baseType: !2208, size: 64, offset: 9152)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !46, line: 732, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1273, file: !46, line: 901, baseType: !1540, size: 64, offset: 9216)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1273, file: !46, line: 904, baseType: !1296, size: 64, offset: 9280)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1273, file: !46, line: 906, baseType: !2213, size: 64, offset: 9344)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !46, line: 906, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1273, file: !46, line: 930, baseType: !207, size: 32, offset: 9408)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1273, file: !46, line: 933, baseType: !207, size: 32, offset: 9440)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1273, file: !46, line: 935, baseType: !2218, size: 64, offset: 9472)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2219)
!2219 = !{!2220}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2218, file: !68, line: 104, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1273, file: !46, line: 940, baseType: !641, size: 64, offset: 9536)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1273, file: !46, line: 942, baseType: !2225, size: 256, offset: 9600)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2226, line: 98, size: 256, elements: !2227)
!2226 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2227 = !{!2228, !2229, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2225, file: !2226, line: 99, baseType: !641, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2225, file: !2226, line: 100, baseType: !157, size: 128, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2225, file: !2226, line: 101, baseType: !2231, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2226, line: 21, baseType: !2232)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1270, file: !46, line: 986, baseType: !2237, offset: 10240)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, elements: !1358)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !966, file: !612, line: 882, baseType: !1269, size: 64, offset: 9792)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !966, file: !612, line: 884, baseType: !109, size: 32, offset: 9856)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !966, file: !612, line: 885, baseType: !109, size: 32, offset: 9888)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !966, file: !612, line: 886, baseType: !109, size: 32, offset: 9920)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !966, file: !612, line: 888, baseType: !109, size: 32, offset: 9952)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !966, file: !612, line: 890, baseType: !307, size: 64, offset: 9984)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !966, file: !612, line: 893, baseType: !7, size: 32, offset: 10048)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !966, file: !612, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !966, file: !612, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !966, file: !612, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !966, file: !612, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !966, file: !612, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !966, file: !612, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !966, file: !612, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !966, file: !612, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !966, file: !612, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !966, file: !612, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !966, file: !612, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !966, file: !612, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !966, file: !612, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !966, file: !612, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !966, file: !612, line: 969, baseType: !307, size: 64, offset: 10176)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !966, file: !612, line: 971, baseType: !2261, size: 448, offset: 10240)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2262)
!2262 = !{!2263, !2264, !2269}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2261, file: !62, line: 26, baseType: !307, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2261, file: !62, line: 27, baseType: !2265, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!293, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !62, line: 28, baseType: !2270, size: 320, offset: 128)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !62, line: 28, size: 320, elements: !2271)
!2271 = !{!2272, !2282, !2307}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2270, file: !62, line: 37, baseType: !2273, size: 320)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !62, line: 30, size: 320, elements: !2274)
!2274 = !{!2275, !2277, !2278, !2279, !2280, !2281}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2273, file: !62, line: 31, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2273, file: !62, line: 32, baseType: !407, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2273, file: !62, line: 33, baseType: !407, size: 32, offset: 96)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2273, file: !62, line: 34, baseType: !407, size: 32, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2273, file: !62, line: 35, baseType: !411, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2273, file: !62, line: 36, baseType: !2276, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2270, file: !62, line: 47, baseType: !2283, size: 192)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !62, line: 39, size: 192, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2306}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2283, file: !62, line: 40, baseType: !1140, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2283, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2283, file: !62, line: 42, baseType: !2288, size: 64, offset: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2283, file: !62, line: 42, size: 64, elements: !2289)
!2289 = !{!2290, !2298}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2288, file: !62, line: 43, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2293, line: 7, size: 128, elements: !2294)
!2293 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2294 = !{!2295, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2292, file: !2293, line: 8, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !291, line: 93, baseType: !501)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2292, file: !2293, line: 9, baseType: !501, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2288, file: !62, line: 44, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2301, line: 7, size: 64, elements: !2302)
!2301 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2302 = !{!2303, !2305}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2300, file: !2301, line: 8, baseType: !2304, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2301, line: 5, baseType: !1400)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2300, file: !2301, line: 9, baseType: !1400, size: 32, offset: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2283, file: !62, line: 46, baseType: !411, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2270, file: !62, line: 55, baseType: !2308, size: 256)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !62, line: 49, size: 256, elements: !2309)
!2309 = !{!2310, !2313, !2314, !2315, !2316}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2308, file: !62, line: 50, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2308, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2308, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2308, file: !62, line: 53, baseType: !307, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2308, file: !62, line: 54, baseType: !307, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !966, file: !612, line: 973, baseType: !2318, size: 32, offset: 10688)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !158, line: 27, baseType: !2319)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !291, line: 28, baseType: !109)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !966, file: !612, line: 974, baseType: !2318, size: 32, offset: 10720)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !966, file: !612, line: 978, baseType: !307, size: 64, offset: 10752)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !966, file: !612, line: 987, baseType: !965, size: 64, offset: 10816)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !966, file: !612, line: 990, baseType: !965, size: 64, offset: 10880)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !966, file: !612, line: 995, baseType: !157, size: 128, offset: 10944)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !966, file: !612, line: 996, baseType: !157, size: 128, offset: 11072)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !966, file: !612, line: 997, baseType: !965, size: 64, offset: 11200)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !966, file: !612, line: 1005, baseType: !157, size: 128, offset: 11264)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !966, file: !612, line: 1006, baseType: !157, size: 128, offset: 11392)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !966, file: !612, line: 1009, baseType: !1337, size: 64, offset: 11520)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !966, file: !612, line: 1010, baseType: !2331, size: 512, offset: 11584)
!2331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 512, elements: !1345)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !966, file: !612, line: 1011, baseType: !157, size: 128, offset: 12096)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !966, file: !612, line: 1012, baseType: !157, size: 128, offset: 12224)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !966, file: !612, line: 1014, baseType: !2335, size: 64, offset: 12352)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !966, file: !612, line: 1017, baseType: !604, size: 64, offset: 12416)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !966, file: !612, line: 1020, baseType: !604, size: 64, offset: 12480)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !966, file: !612, line: 1023, baseType: !329, size: 64, offset: 12544)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !966, file: !612, line: 1025, baseType: !411, size: 64, offset: 12608)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !966, file: !612, line: 1026, baseType: !411, size: 64, offset: 12672)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !966, file: !612, line: 1031, baseType: !411, size: 64, offset: 12736)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !966, file: !612, line: 1032, baseType: !2343, size: 192, offset: 12800)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !612, line: 324, size: 192, elements: !2344)
!2344 = !{!2345, !2346, !2347}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2343, file: !612, line: 326, baseType: !411, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2343, file: !612, line: 327, baseType: !411, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2343, file: !612, line: 328, baseType: !650, size: 32, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !966, file: !612, line: 1041, baseType: !307, size: 64, offset: 12992)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !966, file: !612, line: 1042, baseType: !307, size: 64, offset: 13056)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !966, file: !612, line: 1045, baseType: !411, size: 64, offset: 13120)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !966, file: !612, line: 1048, baseType: !411, size: 64, offset: 13184)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !966, file: !612, line: 1051, baseType: !307, size: 64, offset: 13248)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !966, file: !612, line: 1052, baseType: !307, size: 64, offset: 13312)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !966, file: !612, line: 1055, baseType: !2355, size: 640, offset: 13376)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2356, line: 132, size: 640, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2357 = !{!2358, !2364, !2365}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2355, file: !2356, line: 133, baseType: !2359, size: 576)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2360, size: 576, elements: !258)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2356, line: 117, size: 192, elements: !2361)
!2361 = !{!2362, !2363}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2360, file: !2356, line: 118, baseType: !411, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2360, file: !2356, line: 119, baseType: !1149, size: 128, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2355, file: !2356, line: 134, baseType: !7, size: 32, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2355, file: !2356, line: 135, baseType: !7, size: 32, offset: 608)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !966, file: !612, line: 1058, baseType: !2367, size: 448, offset: 14016)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2356, line: 144, size: 448, elements: !2368)
!2368 = !{!2369, !2370, !2371}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2367, file: !2356, line: 145, baseType: !950, size: 128, align: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2367, file: !2356, line: 146, baseType: !637, size: 256, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2367, file: !2356, line: 147, baseType: !7, size: 32, offset: 384)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !966, file: !612, line: 1064, baseType: !1365, size: 64, offset: 14464)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !966, file: !612, line: 1067, baseType: !1365, size: 64, offset: 14528)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !966, file: !612, line: 1070, baseType: !1365, size: 64, offset: 14592)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !966, file: !612, line: 1074, baseType: !1392, size: 64, offset: 14656)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !966, file: !612, line: 1084, baseType: !2377, size: 128, offset: 14720)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 128, elements: !2378)
!2378 = !{!2379}
!2379 = !DISubrange(count: 16)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !966, file: !612, line: 1086, baseType: !2381, size: 64, offset: 14848)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !612, line: 55, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !966, file: !612, line: 1089, baseType: !2384, size: 64, offset: 14912)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2385, line: 12, size: 64, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2386 = !{!2387}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2384, file: !2385, line: 13, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2385, line: 8, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !966, file: !612, line: 1090, baseType: !2391, size: 128, offset: 14976)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2392, line: 13, size: 128, elements: !2393)
!2392 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2391, file: !2392, line: 14, baseType: !157, size: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !966, file: !612, line: 1097, baseType: !2396, size: 64, offset: 15104)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !612, line: 50, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !966, file: !612, line: 1100, baseType: !2399, size: 64, offset: 15168)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !612, line: 1100, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !966, file: !612, line: 1103, baseType: !2402, size: 64, offset: 15232)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !612, line: 53, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !966, file: !612, line: 1107, baseType: !2405, size: 64, offset: 15296)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2407, line: 31, size: 576, elements: !2408)
!2407 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2408 = !{!2409, !2410, !2413, !2416, !2419, !2420, !2423, !2426, !2427}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2406, file: !2407, line: 32, baseType: !979, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2406, file: !2407, line: 33, baseType: !2411, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2407, line: 9, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2406, file: !2407, line: 34, baseType: !2414, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2407, line: 10, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2406, file: !2407, line: 35, baseType: !2417, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2407, line: 8, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2406, file: !2407, line: 36, baseType: !1356, size: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2406, file: !2407, line: 37, baseType: !2421, size: 64, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1394, line: 34, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2406, file: !2407, line: 38, baseType: !2424, size: 64, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2407, line: 38, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2406, file: !2407, line: 39, baseType: !2424, size: 64, offset: 448)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2406, file: !2407, line: 40, baseType: !2428, size: 64, offset: 512)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2407, line: 12, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !966, file: !612, line: 1110, baseType: !2431, size: 64, offset: 15360)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2433, line: 93, size: 8768, elements: !2434)
!2433 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2484, !2493, !2494, !2496, !2497, !2498, !2501, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2539, !2540, !2547, !2557, !2560, !2561, !2564, !2565, !2566, !2567, !2568, !2569}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2432, file: !2433, line: 94, baseType: !979, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2432, file: !2433, line: 95, baseType: !207, size: 32, offset: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2432, file: !2433, line: 96, baseType: !109, size: 32, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2432, file: !2433, line: 97, baseType: !109, size: 32, offset: 96)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2432, file: !2433, line: 98, baseType: !157, size: 128, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2432, file: !2433, line: 100, baseType: !943, size: 192, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2432, file: !2433, line: 103, baseType: !965, size: 64, offset: 448)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2432, file: !2433, line: 106, baseType: !2443, size: 192, offset: 512)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1545, line: 32, size: 192, elements: !2444)
!2444 = !{!2445, !2446}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2443, file: !1545, line: 33, baseType: !157, size: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2443, file: !1545, line: 34, baseType: !2447, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2448, line: 25, baseType: !2449)
!2448 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2448, line: 23, size: 64, elements: !2450)
!2450 = !{!2451}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2449, file: !2448, line: 24, baseType: !1220, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2432, file: !2433, line: 109, baseType: !529, size: 64, offset: 704)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2432, file: !2433, line: 112, baseType: !109, size: 32, offset: 768)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2432, file: !2433, line: 114, baseType: !109, size: 32, offset: 800)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2432, file: !2433, line: 115, baseType: !965, size: 64, offset: 832)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2432, file: !2433, line: 118, baseType: !109, size: 32, offset: 896)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2432, file: !2433, line: 119, baseType: !7, size: 32, offset: 928)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2432, file: !2433, line: 121, baseType: !2459, size: 64, offset: 960)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2433, line: 80, size: 448, elements: !2461)
!2461 = !{!2462, !2463, !2469}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2460, file: !2433, line: 81, baseType: !207, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2460, file: !2433, line: 82, baseType: !2464, size: 128, offset: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2433, line: 75, size: 128, elements: !2465)
!2465 = !{!2466, !2467}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2464, file: !2433, line: 76, baseType: !965, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2464, file: !2433, line: 77, baseType: !2468, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2460, file: !2433, line: 83, baseType: !1746, size: 256, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2432, file: !2433, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2432, file: !2433, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2432, file: !2433, line: 138, baseType: !7, size: 32, offset: 1056)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2432, file: !2433, line: 139, baseType: !157, size: 128, offset: 1088)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2432, file: !2433, line: 142, baseType: !1093, size: 512, offset: 1216)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2432, file: !2433, line: 143, baseType: !1101, size: 64, offset: 1728)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2432, file: !2433, line: 150, baseType: !2477, size: 256, offset: 1792)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2478, size: 256, elements: !2482)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2433, line: 38, size: 128, elements: !2479)
!2479 = !{!2480, !2481}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2478, file: !2433, line: 39, baseType: !411, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2478, file: !2433, line: 40, baseType: !411, size: 64, offset: 64)
!2482 = !{!2483}
!2483 = !DISubrange(count: 2)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2432, file: !2433, line: 156, baseType: !2485, size: 192, offset: 2048)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2433, line: 66, size: 192, elements: !2486)
!2486 = !{!2487}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2485, file: !2433, line: 67, baseType: !2488, size: 192)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2433, line: 47, size: 192, elements: !2489)
!2489 = !{!2490, !2491, !2492}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2488, file: !2433, line: 48, baseType: !643, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2488, file: !2433, line: 49, baseType: !643, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2488, file: !2433, line: 50, baseType: !643, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2432, file: !2433, line: 160, baseType: !2355, size: 640, offset: 2240)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2432, file: !2433, line: 163, baseType: !2495, size: 256, offset: 2880)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 256, elements: !1345)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2432, file: !2433, line: 169, baseType: !1337, size: 64, offset: 3136)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2432, file: !2433, line: 172, baseType: !109, size: 32, offset: 3200)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2432, file: !2433, line: 174, baseType: !2499, size: 64, offset: 3264)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2433, line: 174, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2432, file: !2433, line: 185, baseType: !2502, size: 64, offset: 3328)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !380, line: 860, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 853, size: 64, elements: !2504)
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2503, file: !380, line: 858, baseType: !379, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2503, file: !380, line: 859, baseType: !187, size: 32, offset: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2432, file: !2433, line: 186, baseType: !411, size: 64, offset: 3392)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2432, file: !2433, line: 186, baseType: !411, size: 64, offset: 3456)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2432, file: !2433, line: 186, baseType: !411, size: 64, offset: 3520)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2432, file: !2433, line: 186, baseType: !411, size: 64, offset: 3584)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2432, file: !2433, line: 187, baseType: !411, size: 64, offset: 3648)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2432, file: !2433, line: 188, baseType: !411, size: 64, offset: 3712)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2432, file: !2433, line: 189, baseType: !2343, size: 192, offset: 3776)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2432, file: !2433, line: 190, baseType: !307, size: 64, offset: 3968)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2432, file: !2433, line: 190, baseType: !307, size: 64, offset: 4032)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2432, file: !2433, line: 190, baseType: !307, size: 64, offset: 4096)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2432, file: !2433, line: 190, baseType: !307, size: 64, offset: 4160)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2432, file: !2433, line: 191, baseType: !307, size: 64, offset: 4224)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2432, file: !2433, line: 191, baseType: !307, size: 64, offset: 4288)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2432, file: !2433, line: 191, baseType: !307, size: 64, offset: 4352)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2432, file: !2433, line: 191, baseType: !307, size: 64, offset: 4416)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2432, file: !2433, line: 192, baseType: !307, size: 64, offset: 4480)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2432, file: !2433, line: 192, baseType: !307, size: 64, offset: 4544)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2432, file: !2433, line: 192, baseType: !307, size: 64, offset: 4608)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2432, file: !2433, line: 192, baseType: !307, size: 64, offset: 4672)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2432, file: !2433, line: 193, baseType: !307, size: 64, offset: 4736)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2432, file: !2433, line: 193, baseType: !307, size: 64, offset: 4800)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2432, file: !2433, line: 194, baseType: !2529, size: 448, offset: 4864)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2530, line: 12, size: 448, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2531 = !{!2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2529, file: !2530, line: 15, baseType: !411, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2529, file: !2530, line: 17, baseType: !411, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2529, file: !2530, line: 19, baseType: !411, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2529, file: !2530, line: 21, baseType: !411, size: 64, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2529, file: !2530, line: 29, baseType: !411, size: 64, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2529, file: !2530, line: 35, baseType: !411, size: 64, offset: 320)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2529, file: !2530, line: 44, baseType: !411, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2432, file: !2433, line: 202, baseType: !413, size: 64, offset: 5312)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2432, file: !2433, line: 213, baseType: !2541, size: 2048, offset: 5376)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2542, size: 2048, elements: !2378)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2543, line: 43, size: 128, elements: !2544)
!2543 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2544 = !{!2545, !2546}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2542, file: !2543, line: 44, baseType: !306, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2542, file: !2543, line: 45, baseType: !306, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2432, file: !2433, line: 216, baseType: !2548, size: 448, offset: 7424)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2433, line: 30, size: 448, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2555, !2556}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2548, file: !2433, line: 31, baseType: !109, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2548, file: !2433, line: 32, baseType: !293, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2548, file: !2433, line: 33, baseType: !307, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2548, file: !2433, line: 34, baseType: !411, size: 64, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2548, file: !2433, line: 34, baseType: !411, size: 64, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2548, file: !2433, line: 35, baseType: !307, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2548, file: !2433, line: 35, baseType: !307, size: 64, offset: 384)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2432, file: !2433, line: 219, baseType: !2558, size: 64, offset: 7872)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2433, line: 219, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2432, file: !2433, line: 222, baseType: !7, size: 32, offset: 7936)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2432, file: !2433, line: 223, baseType: !2562, size: 64, offset: 8000)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2433, line: 223, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2432, file: !2433, line: 230, baseType: !1457, size: 8, offset: 8064)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2432, file: !2433, line: 231, baseType: !1426, size: 16, offset: 8080)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2432, file: !2433, line: 232, baseType: !1426, size: 16, offset: 8096)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2432, file: !2433, line: 234, baseType: !1269, size: 64, offset: 8128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2432, file: !2433, line: 237, baseType: !637, size: 256, offset: 8192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2432, file: !2433, line: 243, baseType: !850, size: 320, offset: 8448)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !966, file: !612, line: 1111, baseType: !2571, size: 64, offset: 15424)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2433, line: 20, size: 16640, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2572, file: !2433, line: 21, baseType: !187, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2572, file: !2433, line: 22, baseType: !979, size: 32, offset: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2572, file: !2433, line: 23, baseType: !943, size: 192, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2572, file: !2433, line: 24, baseType: !2578, size: 16384, offset: 256)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2579, size: 16384, elements: !262)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1545, line: 51, size: 256, elements: !2580)
!2580 = !{!2581}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2579, file: !1545, line: 52, baseType: !2582, size: 256)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1545, line: 37, size: 256, elements: !2583)
!2583 = !{!2584, !2591, !2592, !2598}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2582, file: !1545, line: 39, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2586, line: 83, baseType: !2587)
!2586 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2586, line: 82, baseType: !2589)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null, !109}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2582, file: !1545, line: 40, baseType: !307, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2582, file: !1545, line: 46, baseType: !2593, size: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2586, line: 86, baseType: !2594)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2586, line: 85, baseType: !2596)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2582, file: !1545, line: 48, baseType: !2447, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !966, file: !612, line: 1112, baseType: !2447, size: 64, offset: 15488)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !966, file: !612, line: 1113, baseType: !2447, size: 64, offset: 15552)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !966, file: !612, line: 1115, baseType: !2447, size: 64, offset: 15616)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !966, file: !612, line: 1116, baseType: !2443, size: 192, offset: 15680)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !966, file: !612, line: 1117, baseType: !307, size: 64, offset: 15872)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !966, file: !612, line: 1118, baseType: !304, size: 64, offset: 15936)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !966, file: !612, line: 1119, baseType: !7, size: 32, offset: 16000)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !966, file: !612, line: 1121, baseType: !953, size: 64, offset: 16064)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !966, file: !612, line: 1125, baseType: !2608, size: 64, offset: 16128)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !612, line: 43, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !966, file: !612, line: 1127, baseType: !344, size: 32, offset: 16192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !966, file: !612, line: 1128, baseType: !7, size: 32, offset: 16224)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !966, file: !612, line: 1130, baseType: !2613, size: 128, offset: 16256)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2614, line: 37, size: 128, elements: !2615)
!2614 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2615 = !{!2616, !2617, !2618}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2613, file: !2614, line: 38, baseType: !109, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2613, file: !2614, line: 39, baseType: !207, size: 32, offset: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2613, file: !2614, line: 40, baseType: !2619, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2614, line: 24, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !966, file: !612, line: 1131, baseType: !2622, size: 256, offset: 16384)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2623, line: 12, size: 256, elements: !2624)
!2623 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2624 = !{!2625, !2626, !2627, !2628}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2622, file: !2623, line: 13, baseType: !257, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2622, file: !2623, line: 14, baseType: !307, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2622, file: !2623, line: 15, baseType: !307, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2622, file: !2623, line: 16, baseType: !1457, size: 8, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !966, file: !612, line: 1134, baseType: !411, size: 64, offset: 16640)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !966, file: !612, line: 1135, baseType: !411, size: 64, offset: 16704)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !966, file: !612, line: 1138, baseType: !187, size: 32, offset: 16768)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !966, file: !612, line: 1141, baseType: !650, size: 32, offset: 16800)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !966, file: !612, line: 1143, baseType: !2634, size: 64, offset: 16832)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !612, line: 735, size: 64, elements: !2635)
!2635 = !{!2636}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2634, file: !612, line: 736, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !966, file: !612, line: 1147, baseType: !1152, size: 128, offset: 16896)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !966, file: !612, line: 1149, baseType: !965, size: 64, offset: 17024)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !966, file: !612, line: 1151, baseType: !2641, size: 64, offset: 17088)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !612, line: 1151, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !966, file: !612, line: 1188, baseType: !329, size: 64, offset: 17152)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !966, file: !612, line: 1191, baseType: !2645, size: 64, offset: 17216)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !612, line: 44, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !966, file: !612, line: 1194, baseType: !2648, size: 64, offset: 17280)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !612, line: 45, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !966, file: !612, line: 1197, baseType: !2651, size: 64, offset: 17344)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !612, line: 61, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !966, file: !612, line: 1199, baseType: !2654, size: 64, offset: 17408)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2656, line: 99, size: 128, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2657 = !{!2658, !2659, !2660}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2655, file: !2656, line: 100, baseType: !641, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2655, file: !2656, line: 101, baseType: !207, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2655, file: !2656, line: 103, baseType: !227, size: 16, offset: 96)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !966, file: !612, line: 1202, baseType: !2662, size: 64, offset: 17472)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !612, line: 48, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !966, file: !612, line: 1205, baseType: !307, size: 64, offset: 17536)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !966, file: !612, line: 1206, baseType: !2666, size: 64, offset: 17600)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1545, line: 14, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1545, line: 12, size: 384, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, scope: !2668, file: !1545, line: 13, baseType: !2671, size: 384)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2668, file: !1545, line: 13, size: 384, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2671, file: !1545, line: 13, baseType: !109, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2671, file: !1545, line: 13, baseType: !109, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2671, file: !1545, line: 13, baseType: !109, size: 32, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2671, file: !1545, line: 13, baseType: !2677, size: 256, offset: 128)
!2677 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2678, line: 37, size: 256, elements: !2679)
!2678 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2679 = !{!2680, !2685, !2698, !2704, !2713, !2740, !2745}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2677, file: !2678, line: 42, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 39, size: 64, elements: !2682)
!2682 = !{!2683, !2684}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2681, file: !2678, line: 40, baseType: !2319, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2681, file: !2678, line: 41, baseType: !350, size: 32, offset: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2677, file: !2678, line: 50, baseType: !2686, size: 192)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 45, size: 192, elements: !2687)
!2687 = !{!2688, !2690, !2691, !2697}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2686, file: !2678, line: 46, baseType: !2689, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !291, line: 95, baseType: !109)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2686, file: !2678, line: 47, baseType: !109, size: 32, offset: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2686, file: !2678, line: 48, baseType: !2692, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2678, line: 11, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2678, line: 8, size: 64, elements: !2694)
!2694 = !{!2695, !2696}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2693, file: !2678, line: 9, baseType: !109, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2693, file: !2678, line: 10, baseType: !329, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2686, file: !2678, line: 49, baseType: !109, size: 32, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2677, file: !2678, line: 57, baseType: !2699, size: 128)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 53, size: 128, elements: !2700)
!2700 = !{!2701, !2702, !2703}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2699, file: !2678, line: 54, baseType: !2319, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2699, file: !2678, line: 55, baseType: !350, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2699, file: !2678, line: 56, baseType: !2692, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2677, file: !2678, line: 66, baseType: !2705, size: 256)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 60, size: 256, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2710, !2712}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2705, file: !2678, line: 61, baseType: !2319, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2705, file: !2678, line: 62, baseType: !350, size: 32, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2705, file: !2678, line: 63, baseType: !109, size: 32, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2705, file: !2678, line: 64, baseType: !2711, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !291, line: 94, baseType: !292)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2705, file: !2678, line: 65, baseType: !2711, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2677, file: !2678, line: 105, baseType: !2714, size: 256)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 69, size: 256, elements: !2715)
!2715 = !{!2716, !2717}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2714, file: !2678, line: 70, baseType: !329, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, scope: !2714, file: !2678, line: 79, baseType: !2718, size: 192, offset: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2714, file: !2678, line: 79, size: 192, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2729, !2734}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2718, file: !2678, line: 81, baseType: !109, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2718, file: !2678, line: 86, baseType: !1426, size: 16)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2718, file: !2678, line: 92, baseType: !2723, size: 192)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2718, file: !2678, line: 88, size: 192, elements: !2724)
!2724 = !{!2725, !2727, !2728}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2723, file: !2678, line: 89, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 64, elements: !1136)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2723, file: !2678, line: 90, baseType: !329, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2723, file: !2678, line: 91, baseType: !329, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2718, file: !2678, line: 97, baseType: !2730, size: 96)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2718, file: !2678, line: 94, size: 96, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2730, file: !2678, line: 95, baseType: !2726, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2730, file: !2678, line: 96, baseType: !408, size: 32, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2718, file: !2678, line: 103, baseType: !2735, size: 128)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2718, file: !2678, line: 99, size: 128, elements: !2736)
!2736 = !{!2737, !2738, !2739}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2735, file: !2678, line: 100, baseType: !307, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2735, file: !2678, line: 101, baseType: !408, size: 32, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2735, file: !2678, line: 102, baseType: !408, size: 32, offset: 96)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2677, file: !2678, line: 111, baseType: !2741, size: 128)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 108, size: 128, elements: !2742)
!2742 = !{!2743, !2744}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2741, file: !2678, line: 109, baseType: !293, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2741, file: !2678, line: 110, baseType: !109, size: 32, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2677, file: !2678, line: 118, baseType: !2746, size: 128)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 114, size: 128, elements: !2747)
!2747 = !{!2748, !2749, !2750}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2746, file: !2678, line: 115, baseType: !329, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2746, file: !2678, line: 116, baseType: !109, size: 32, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2746, file: !2678, line: 117, baseType: !7, size: 32, offset: 96)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !966, file: !612, line: 1208, baseType: !2529, size: 448, offset: 17664)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !966, file: !612, line: 1215, baseType: !411, size: 64, offset: 18112)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !966, file: !612, line: 1217, baseType: !411, size: 64, offset: 18176)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !966, file: !612, line: 1219, baseType: !411, size: 64, offset: 18240)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !966, file: !612, line: 1223, baseType: !2756, size: 64, offset: 18304)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2757, line: 99, baseType: !2758)
!2757 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2757, line: 99, size: 64, elements: !2759)
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2758, file: !2757, line: 99, baseType: !1220, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !966, file: !612, line: 1225, baseType: !379, size: 32, offset: 18368)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !966, file: !612, line: 1226, baseType: !109, size: 32, offset: 18400)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !966, file: !612, line: 1227, baseType: !109, size: 32, offset: 18432)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !966, file: !612, line: 1231, baseType: !2765, size: 64, offset: 18496)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !612, line: 1231, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !966, file: !612, line: 1233, baseType: !157, size: 128, offset: 18560)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !966, file: !612, line: 1240, baseType: !2769, size: 64, offset: 18688)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !612, line: 62, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !966, file: !612, line: 1242, baseType: !2772, size: 64, offset: 18752)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2774, line: 392, size: 96, elements: !2775)
!2774 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2775 = !{!2776, !2782, !2784}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2773, file: !2774, line: 393, baseType: !2777, size: 32)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2774, line: 388, size: 32, elements: !2778)
!2778 = !{!2779}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2777, file: !2774, line: 389, baseType: !2780, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2781, line: 46, baseType: !407)
!2781 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2773, file: !2774, line: 394, baseType: !2783, size: 32, offset: 32)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2781, line: 42, baseType: !1400)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2773, file: !2774, line: 395, baseType: !2780, size: 32, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !966, file: !612, line: 1244, baseType: !157, size: 128, offset: 18816)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !966, file: !612, line: 1245, baseType: !2787, size: 64, offset: 18944)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !612, line: 51, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !966, file: !612, line: 1246, baseType: !637, size: 256, offset: 19008)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !966, file: !612, line: 1247, baseType: !7, size: 32, offset: 19264)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !966, file: !612, line: 1250, baseType: !2792, size: 64, offset: 19328)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !612, line: 57, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !966, file: !612, line: 1251, baseType: !637, size: 256, offset: 19392)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !966, file: !612, line: 1252, baseType: !157, size: 128, offset: 19648)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !966, file: !612, line: 1259, baseType: !1874, size: 64, offset: 19776)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !966, file: !612, line: 1260, baseType: !1426, size: 16, offset: 19840)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !966, file: !612, line: 1261, baseType: !1426, size: 16, offset: 19856)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !966, file: !612, line: 1314, baseType: !2800, size: 64, offset: 19904)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2802, line: 62, size: 256, align: 256, elements: !2803)
!2802 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2809, !2810}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2801, file: !2802, line: 75, baseType: !408, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2801, file: !2802, line: 90, baseType: !408, size: 32, offset: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2801, file: !2802, line: 112, baseType: !412, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2801, file: !2802, line: 132, baseType: !408, size: 32, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2801, file: !2802, line: 140, baseType: !408, size: 32, offset: 160)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2801, file: !2802, line: 149, baseType: !408, size: 32, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2801, file: !2802, line: 154, baseType: !2811, offset: 224)
!2811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, elements: !1358)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !966, file: !612, line: 1315, baseType: !407, size: 32, offset: 19968)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !966, file: !612, line: 1316, baseType: !407, size: 32, offset: 20000)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !966, file: !612, line: 1321, baseType: !307, size: 64, offset: 20032)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !966, file: !612, line: 1325, baseType: !109, size: 32, offset: 20096)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !966, file: !612, line: 1326, baseType: !109, size: 32, offset: 20128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !966, file: !612, line: 1327, baseType: !109, size: 32, offset: 20160)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !966, file: !612, line: 1328, baseType: !109, size: 32, offset: 20192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !966, file: !612, line: 1329, baseType: !950, size: 128, align: 64, offset: 20224)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !966, file: !612, line: 1332, baseType: !2821, size: 128, offset: 20352)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2822, line: 51, size: 128, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2823 = !{!2824, !2829, !2830}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2821, file: !2822, line: 60, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2826, line: 7, size: 64, elements: !2827)
!2826 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2825, file: !2826, line: 12, baseType: !1217, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2821, file: !2822, line: 63, baseType: !1457, size: 8, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2821, file: !2822, line: 70, baseType: !1457, size: 8, offset: 72)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !966, file: !612, line: 1335, baseType: !2047, size: 64, offset: 20480)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !966, file: !612, line: 1337, baseType: !2833, size: 128, offset: 20544)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2822, line: 39, size: 128, elements: !2834)
!2834 = !{!2835, !2836, !2837}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2833, file: !2822, line: 40, baseType: !1661, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2833, file: !2822, line: 42, baseType: !408, size: 32, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2833, file: !2822, line: 43, baseType: !408, size: 32, offset: 96)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !966, file: !612, line: 1340, baseType: !2839, size: 64, offset: 20672)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !612, line: 69, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !966, file: !612, line: 1351, baseType: !109, size: 32, offset: 20736)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !966, file: !612, line: 1352, baseType: !109, size: 32, offset: 20768)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !966, file: !612, line: 1354, baseType: !307, size: 64, offset: 20800)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !966, file: !612, line: 1364, baseType: !411, size: 64, offset: 20864)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !966, file: !612, line: 1365, baseType: !411, size: 64, offset: 20928)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !966, file: !612, line: 1412, baseType: !307, size: 64, offset: 20992)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !966, file: !612, line: 1453, baseType: !2848, size: 64, offset: 21056)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !612, line: 1453, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !966, file: !612, line: 1457, baseType: !2851, size: 64, offset: 21120)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2853)
!2853 = !{!2854, !2855, !2874, !2877, !2878, !2911, !2921}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2852, file: !68, line: 62, baseType: !67, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !2852, file: !68, line: 64, baseType: !2856, size: 192, offset: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2852, file: !68, line: 64, size: 192, elements: !2857)
!2857 = !{!2858, !2869}
!2858 = !DIDerivedType(tag: DW_TAG_member, scope: !2856, file: !68, line: 65, baseType: !2859, size: 192)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2856, file: !68, line: 65, size: 192, elements: !2860)
!2860 = !{!2861, !2868}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2859, file: !68, line: 66, baseType: !2862, size: 128)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2863, line: 50, size: 128, elements: !2864)
!2863 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2864 = !{!2865, !2866, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2862, file: !2863, line: 52, baseType: !307, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2862, file: !2863, line: 54, baseType: !7, size: 32, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2862, file: !2863, line: 55, baseType: !7, size: 32, offset: 96)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2859, file: !68, line: 67, baseType: !307, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, scope: !2856, file: !68, line: 70, baseType: !2870, size: 192)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2856, file: !68, line: 70, size: 192, elements: !2871)
!2871 = !{!2872, !2873}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2870, file: !68, line: 71, baseType: !950, size: 128, align: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2870, file: !68, line: 72, baseType: !307, size: 64, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2852, file: !68, line: 76, baseType: !2875, size: 64, offset: 256)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2852, file: !68, line: 77, baseType: !307, size: 64, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2852, file: !68, line: 79, baseType: !2879, size: 64, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2863, line: 25, size: 256, elements: !2881)
!2881 = !{!2882, !2888, !2892}
!2882 = !DIDerivedType(tag: DW_TAG_member, scope: !2880, file: !2863, line: 26, baseType: !2883, size: 128)
!2883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2880, file: !2863, line: 26, size: 128, elements: !2884)
!2884 = !{!2885, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2883, file: !2863, line: 27, baseType: !2886, size: 128)
!2886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !2378)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2883, file: !2863, line: 28, baseType: !2886, size: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2880, file: !2863, line: 31, baseType: !2889, size: 64, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2863, line: 23, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, scope: !2880, file: !2863, line: 33, baseType: !2893, size: 64, offset: 192)
!2893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2880, file: !2863, line: 33, size: 64, elements: !2894)
!2894 = !{!2895, !2901, !2906}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2893, file: !2863, line: 38, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2893, file: !2863, line: 34, size: 64, elements: !2897)
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2896, file: !2863, line: 35, baseType: !1400, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2896, file: !2863, line: 36, baseType: !215, size: 8, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2896, file: !2863, line: 37, baseType: !215, size: 8, offset: 40)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2893, file: !2863, line: 42, baseType: !2902, size: 16)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2893, file: !2863, line: 39, size: 16, elements: !2903)
!2903 = !{!2904, !2905}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2902, file: !2863, line: 40, baseType: !215, size: 8)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2902, file: !2863, line: 41, baseType: !215, size: 8, offset: 8)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2893, file: !2863, line: 46, baseType: !2907, size: 16)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2893, file: !2863, line: 43, size: 16, elements: !2908)
!2908 = !{!2909, !2910}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2907, file: !2863, line: 44, baseType: !215, size: 8)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2907, file: !2863, line: 45, baseType: !215, size: 8, offset: 8)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2852, file: !68, line: 81, baseType: !2912, size: 64, offset: 448)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2913, file: !68, line: 86, baseType: !2875, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2913, file: !68, line: 87, baseType: !307, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2913, file: !68, line: 88, baseType: !307, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2913, file: !68, line: 89, baseType: !307, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2913, file: !68, line: 90, baseType: !1457, size: 8, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2913, file: !68, line: 92, baseType: !2912, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2852, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !966, file: !612, line: 1463, baseType: !2923, offset: 21184)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !612, line: 739, elements: !541)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !966, file: !612, line: 1470, baseType: !950, size: 128, align: 64, offset: 21184)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !966, file: !612, line: 1471, baseType: !979, size: 32, offset: 21312)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !966, file: !612, line: 1472, baseType: !109, size: 32, offset: 21344)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !966, file: !612, line: 1474, baseType: !965, size: 64, offset: 21376)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !966, file: !612, line: 1475, baseType: !2929, size: 320, offset: 21440)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2930, line: 11, size: 320, elements: !2931)
!2930 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2931 = !{!2932, !2933, !2934, !2939}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2929, file: !2930, line: 16, baseType: !533, size: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2929, file: !2930, line: 17, baseType: !307, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2929, file: !2930, line: 18, baseType: !2935, size: 64, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !2938}
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2929, file: !2930, line: 19, baseType: !407, size: 32, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !966, file: !612, line: 1478, baseType: !2941, size: 64, offset: 21760)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2943, line: 49, size: 512, elements: !2944)
!2943 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2951, !2952, !2953, !2955}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2942, file: !2943, line: 50, baseType: !2941, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2942, file: !2943, line: 51, baseType: !329, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2942, file: !2943, line: 52, baseType: !307, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2942, file: !2943, line: 53, baseType: !307, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2942, file: !2943, line: 54, baseType: !2950, size: 64, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2942, file: !2943, line: 56, baseType: !7, size: 32, offset: 320)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2942, file: !2943, line: 58, baseType: !7, size: 32, offset: 352)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2942, file: !2943, line: 59, baseType: !2954, size: 64, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !158, line: 159, baseType: !411)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2942, file: !2943, line: 60, baseType: !2186, size: 64, offset: 448)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !966, file: !612, line: 1482, baseType: !979, size: 32, offset: 21824)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !966, file: !612, line: 1489, baseType: !329, size: 64, offset: 21888)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !966, file: !612, line: 1504, baseType: !329, size: 64, offset: 21952)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !966, file: !612, line: 1505, baseType: !412, size: 64, offset: 22016)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !966, file: !612, line: 1506, baseType: !411, size: 64, offset: 22080)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !966, file: !612, line: 1507, baseType: !412, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !966, file: !612, line: 1508, baseType: !412, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !966, file: !612, line: 1509, baseType: !412, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !966, file: !612, line: 1510, baseType: !950, size: 128, align: 64, offset: 22208)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !966, file: !612, line: 1511, baseType: !109, size: 32, offset: 22336)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !966, file: !612, line: 1515, baseType: !2967, size: 64, offset: 22400)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !993, line: 56, size: 64, elements: !2968)
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2967, file: !993, line: 57, baseType: !996, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !966, file: !612, line: 1518, baseType: !2967, size: 64, offset: 22464)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !966, file: !612, line: 1528, baseType: !950, size: 128, align: 64, offset: 22528)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !966, file: !612, line: 1552, baseType: !2973, size: 35328, offset: 23040)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2974, line: 430, size: 35328, elements: !2975)
!2974 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2975 = !{!2976, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3005, !3006, !3007, !3008, !3009, !3010, !3013, !3014, !3015, !3016}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2973, file: !2974, line: 432, baseType: !2977, size: 192)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2978, size: 192, elements: !258)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2979, line: 16, size: 64, elements: !2980)
!2979 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2980 = !{!2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2978, file: !2979, line: 17, baseType: !225, size: 16)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2978, file: !2979, line: 18, baseType: !225, size: 16, offset: 16)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2978, file: !2979, line: 19, baseType: !225, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2978, file: !2979, line: 19, baseType: !225, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2978, file: !2979, line: 19, baseType: !225, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2978, file: !2979, line: 19, baseType: !225, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2978, file: !2979, line: 19, baseType: !225, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2978, file: !2979, line: 20, baseType: !225, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2978, file: !2979, line: 20, baseType: !225, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2978, file: !2979, line: 20, baseType: !225, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2978, file: !2979, line: 20, baseType: !225, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2978, file: !2979, line: 20, baseType: !225, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2978, file: !2979, line: 20, baseType: !225, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2973, file: !2974, line: 436, baseType: !307, size: 64, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2973, file: !2974, line: 440, baseType: !227, size: 16, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2973, file: !2974, line: 441, baseType: !227, size: 16, offset: 272)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2973, file: !2974, line: 442, baseType: !227, size: 16, offset: 288)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2973, file: !2974, line: 443, baseType: !227, size: 16, offset: 304)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2973, file: !2974, line: 447, baseType: !307, size: 64, offset: 320)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2973, file: !2974, line: 448, baseType: !307, size: 64, offset: 384)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2973, file: !2974, line: 459, baseType: !3002, size: 256, offset: 448)
!3002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3003, size: 256, elements: !1345)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2974, line: 428, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2973, file: !2974, line: 461, baseType: !307, size: 64, offset: 704)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2973, file: !2974, line: 463, baseType: !307, size: 64, offset: 768)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2973, file: !2974, line: 465, baseType: !307, size: 64, offset: 832)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2973, file: !2974, line: 466, baseType: !307, size: 64, offset: 896)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2973, file: !2974, line: 467, baseType: !307, size: 64, offset: 960)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2973, file: !2974, line: 473, baseType: !3011, size: 64, offset: 1024)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2974, line: 10, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2973, file: !2974, line: 480, baseType: !307, size: 64, offset: 1088)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2973, file: !2974, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2973, file: !2974, line: 491, baseType: !407, size: 32, offset: 1184)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2973, file: !2974, line: 501, baseType: !3017, size: 33792, offset: 1536)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3018, line: 448, size: 33792, elements: !3019)
!3018 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3019 = !{!3020, !3021, !3022, !3184, !3185, !3191, !3192}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3017, file: !3018, line: 461, baseType: !7, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3017, file: !3018, line: 468, baseType: !307, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3017, file: !3018, line: 476, baseType: !3023, size: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3018, line: 356, size: 33280, align: 512, elements: !3025)
!3025 = !{!3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3024, file: !3018, line: 358, baseType: !7, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3024, file: !3018, line: 361, baseType: !7, size: 32, offset: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3024, file: !3018, line: 364, baseType: !411, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3024, file: !3018, line: 367, baseType: !411, size: 64, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3024, file: !3018, line: 370, baseType: !411, size: 64, offset: 192)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3024, file: !3018, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3024, file: !3018, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3024, file: !3018, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3024, file: !3018, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3024, file: !3018, line: 397, baseType: !3036, size: 32768, offset: 512)
!3036 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3018, line: 348, size: 32768, elements: !3037)
!3037 = !{!3038, !3053, !3090, !3167, !3180}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3036, file: !3018, line: 349, baseType: !3039, size: 896)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3018, line: 12, size: 896, elements: !3040)
!3040 = !{!3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3052}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3039, file: !3018, line: 13, baseType: !407, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3039, file: !3018, line: 14, baseType: !407, size: 32, offset: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3039, file: !3018, line: 15, baseType: !407, size: 32, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3039, file: !3018, line: 16, baseType: !407, size: 32, offset: 96)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3039, file: !3018, line: 17, baseType: !407, size: 32, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3039, file: !3018, line: 18, baseType: !407, size: 32, offset: 160)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3039, file: !3018, line: 19, baseType: !407, size: 32, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3039, file: !3018, line: 22, baseType: !3049, size: 640, offset: 224)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 640, elements: !3050)
!3050 = !{!3051}
!3051 = !DISubrange(count: 20)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3039, file: !3018, line: 25, baseType: !407, size: 32, offset: 864)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3036, file: !3018, line: 350, baseType: !3054, size: 4096, align: 128)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3018, line: 34, size: 4096, align: 128, elements: !3055)
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3075, !3076, !3077, !3079, !3081, !3085}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3054, file: !3018, line: 35, baseType: !225, size: 16)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3054, file: !3018, line: 36, baseType: !225, size: 16, offset: 16)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3054, file: !3018, line: 37, baseType: !225, size: 16, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3054, file: !3018, line: 38, baseType: !225, size: 16, offset: 48)
!3060 = !DIDerivedType(tag: DW_TAG_member, scope: !3054, file: !3018, line: 39, baseType: !3061, size: 128, offset: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3054, file: !3018, line: 39, size: 128, elements: !3062)
!3062 = !{!3063, !3068}
!3063 = !DIDerivedType(tag: DW_TAG_member, scope: !3061, file: !3018, line: 40, baseType: !3064, size: 128)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !3018, line: 40, size: 128, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3064, file: !3018, line: 41, baseType: !411, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3064, file: !3018, line: 42, baseType: !411, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !3061, file: !3018, line: 44, baseType: !3069, size: 128)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3061, file: !3018, line: 44, size: 128, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3074}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3069, file: !3018, line: 45, baseType: !407, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3069, file: !3018, line: 46, baseType: !407, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3069, file: !3018, line: 47, baseType: !407, size: 32, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3069, file: !3018, line: 48, baseType: !407, size: 32, offset: 96)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3054, file: !3018, line: 51, baseType: !407, size: 32, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3054, file: !3018, line: 52, baseType: !407, size: 32, offset: 224)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3054, file: !3018, line: 55, baseType: !3078, size: 1024, offset: 256)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 1024, elements: !420)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3054, file: !3018, line: 58, baseType: !3080, size: 2048, offset: 1280)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 2048, elements: !262)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3054, file: !3018, line: 60, baseType: !3082, size: 384, offset: 3328)
!3082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 384, elements: !3083)
!3083 = !{!3084}
!3084 = !DISubrange(count: 12)
!3085 = !DIDerivedType(tag: DW_TAG_member, scope: !3054, file: !3018, line: 62, baseType: !3086, size: 384, offset: 3712)
!3086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3054, file: !3018, line: 62, size: 384, elements: !3087)
!3087 = !{!3088, !3089}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3086, file: !3018, line: 63, baseType: !3082, size: 384)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3086, file: !3018, line: 64, baseType: !3082, size: 384)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3036, file: !3018, line: 351, baseType: !3091, size: 1088)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3018, line: 79, size: 1088, elements: !3092)
!3092 = !{!3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3166}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3091, file: !3018, line: 80, baseType: !407, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3091, file: !3018, line: 81, baseType: !407, size: 32, offset: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3091, file: !3018, line: 82, baseType: !407, size: 32, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3091, file: !3018, line: 83, baseType: !407, size: 32, offset: 96)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3091, file: !3018, line: 84, baseType: !407, size: 32, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3091, file: !3018, line: 85, baseType: !407, size: 32, offset: 160)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3091, file: !3018, line: 86, baseType: !407, size: 32, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3091, file: !3018, line: 88, baseType: !3049, size: 640, offset: 224)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3091, file: !3018, line: 89, baseType: !215, size: 8, offset: 864)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3091, file: !3018, line: 90, baseType: !215, size: 8, offset: 872)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3091, file: !3018, line: 91, baseType: !215, size: 8, offset: 880)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3091, file: !3018, line: 92, baseType: !215, size: 8, offset: 888)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3091, file: !3018, line: 93, baseType: !215, size: 8, offset: 896)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3091, file: !3018, line: 94, baseType: !215, size: 8, offset: 904)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3091, file: !3018, line: 95, baseType: !3108, size: 64, offset: 960)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3110, line: 11, size: 128, elements: !3111)
!3110 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3111 = !{!3112, !3113}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3109, file: !3110, line: 12, baseType: !293, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3109, file: !3110, line: 13, baseType: !3114, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3116, line: 103, size: 1344, elements: !3117)
!3116 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3146, !3147, !3148}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3115, file: !3116, line: 109, baseType: !307, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3115, file: !3116, line: 110, baseType: !307, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3115, file: !3116, line: 111, baseType: !307, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3115, file: !3116, line: 112, baseType: !307, size: 64, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3115, file: !3116, line: 113, baseType: !307, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3115, file: !3116, line: 114, baseType: !307, size: 64, offset: 320)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3115, file: !3116, line: 117, baseType: !307, size: 64, offset: 384)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3115, file: !3116, line: 118, baseType: !307, size: 64, offset: 448)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3115, file: !3116, line: 119, baseType: !307, size: 64, offset: 512)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3115, file: !3116, line: 120, baseType: !307, size: 64, offset: 576)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3115, file: !3116, line: 121, baseType: !307, size: 64, offset: 640)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3115, file: !3116, line: 122, baseType: !307, size: 64, offset: 704)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3115, file: !3116, line: 123, baseType: !307, size: 64, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3115, file: !3116, line: 124, baseType: !307, size: 64, offset: 832)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3115, file: !3116, line: 125, baseType: !307, size: 64, offset: 896)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3115, file: !3116, line: 139, baseType: !307, size: 64, offset: 960)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3115, file: !3116, line: 142, baseType: !307, size: 64, offset: 1024)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3115, file: !3116, line: 144, baseType: !3136, size: 64, offset: 1088)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3115, file: !3116, line: 144, size: 64, elements: !3137)
!3137 = !{!3138, !3139, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3136, file: !3116, line: 146, baseType: !225, size: 16)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3136, file: !3116, line: 148, baseType: !411, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3136, file: !3116, line: 150, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3116, line: 59, size: 64, elements: !3142)
!3142 = !{!3143, !3144, !3145}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3141, file: !3116, line: 61, baseType: !411, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3141, file: !3116, line: 63, baseType: !411, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3141, file: !3116, line: 65, baseType: !411, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3115, file: !3116, line: 153, baseType: !307, size: 64, offset: 1152)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3115, file: !3116, line: 154, baseType: !307, size: 64, offset: 1216)
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3115, file: !3116, line: 156, baseType: !3149, size: 64, offset: 1280)
!3149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3115, file: !3116, line: 156, size: 64, elements: !3150)
!3150 = !{!3151, !3152, !3153}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3149, file: !3116, line: 158, baseType: !225, size: 16)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3149, file: !3116, line: 160, baseType: !411, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3149, file: !3116, line: 162, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3116, line: 69, size: 64, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3154, file: !3116, line: 71, baseType: !411, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3154, file: !3116, line: 73, baseType: !411, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3154, file: !3116, line: 75, baseType: !411, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3154, file: !3116, line: 77, baseType: !411, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3154, file: !3116, line: 80, baseType: !411, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3154, file: !3116, line: 83, baseType: !411, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3154, file: !3116, line: 86, baseType: !411, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3154, file: !3116, line: 88, baseType: !411, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3154, file: !3116, line: 93, baseType: !411, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3154, file: !3116, line: 100, baseType: !411, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3091, file: !3018, line: 96, baseType: !407, size: 32, offset: 1024)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3036, file: !3018, line: 352, baseType: !3168, size: 4608, align: 512)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3018, line: 333, size: 4608, align: 512, elements: !3169)
!3169 = !{!3170, !3171, !3178}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3168, file: !3018, line: 334, baseType: !3054, size: 4096, align: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3168, file: !3018, line: 335, baseType: !3172, size: 512, offset: 4096)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3018, line: 312, size: 512, elements: !3173)
!3173 = !{!3174, !3175, !3176}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3172, file: !3018, line: 313, baseType: !411, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3172, file: !3018, line: 314, baseType: !411, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3172, file: !3018, line: 315, baseType: !3177, size: 384, offset: 128)
!3177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 384, elements: !1444)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3168, file: !3018, line: 336, baseType: !3179, offset: 4608)
!3179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !1358)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3036, file: !3018, line: 353, baseType: !3181, size: 32768)
!3181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 32768, elements: !3182)
!3182 = !{!3183}
!3183 = !DISubrange(count: 4096)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3017, file: !3018, line: 484, baseType: !3023, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3017, file: !3018, line: 491, baseType: !3186, size: 128, offset: 256)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3018, line: 404, size: 128, elements: !3187)
!3187 = !{!3188, !3189, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3186, file: !3018, line: 424, baseType: !411, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3186, file: !3018, line: 432, baseType: !7, size: 32, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3186, file: !3018, line: 440, baseType: !7, size: 32, offset: 96)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3017, file: !3018, line: 498, baseType: !3186, size: 128, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3017, file: !3018, line: 508, baseType: !3024, size: 33280, align: 512, offset: 512)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !933, file: !934, line: 16, baseType: !943, size: 192, offset: 512)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !933, file: !934, line: 17, baseType: !207, size: 32, offset: 704)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !490, file: !14, line: 1240, baseType: !329, size: 64, offset: 6912)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !490, file: !14, line: 1243, baseType: !407, size: 32, offset: 6976)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !490, file: !14, line: 1245, baseType: !690, size: 64, offset: 7040)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !490, file: !14, line: 1246, baseType: !690, size: 64, offset: 7104)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !490, file: !14, line: 1248, baseType: !408, size: 32, offset: 7168)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !490, file: !14, line: 1249, baseType: !3201, size: 64, offset: 7232)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !490, file: !14, line: 1252, baseType: !3204, size: 256, offset: 7296)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !420)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !490, file: !14, line: 1253, baseType: !3206, size: 128, offset: 7552)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3207, line: 21, baseType: !3208)
!3207 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3207, line: 19, size: 128, elements: !3209)
!3209 = !{!3210}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3208, file: !3207, line: 20, baseType: !3211, size: 128)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !2378)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !490, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !490, file: !14, line: 1261, baseType: !637, size: 256, offset: 7744)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !490, file: !14, line: 1267, baseType: !176, size: 64, offset: 8000)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !490, file: !14, line: 1269, baseType: !436, size: 64, offset: 8064)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !490, file: !14, line: 1271, baseType: !3217, size: 448, offset: 8128)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !699, line: 63, size: 448, elements: !3218)
!3218 = !{!3219, !3224, !3225, !3226, !3227, !3228, !3229}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3217, file: !699, line: 64, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!307, !3223, !697}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3217, file: !699, line: 66, baseType: !3220, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3217, file: !699, line: 69, baseType: !293, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3217, file: !699, line: 70, baseType: !109, size: 32, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3217, file: !699, line: 71, baseType: !7, size: 32, offset: 224)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3217, file: !699, line: 74, baseType: !157, size: 128, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3217, file: !699, line: 85, baseType: !3230, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !490, file: !14, line: 1274, baseType: !641, size: 64, offset: 8576)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !490, file: !14, line: 1280, baseType: !641, size: 64, offset: 8640)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !490, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !490, file: !14, line: 1286, baseType: !2097, size: 32, offset: 8736)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !490, file: !14, line: 1289, baseType: !3236, size: 64, offset: 8768)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2226, line: 18, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !490, file: !14, line: 1290, baseType: !529, size: 64, offset: 8832)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !490, file: !14, line: 1297, baseType: !1540, size: 64, offset: 8896)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !490, file: !14, line: 1304, baseType: !3241, size: 64, offset: 8960)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3242, line: 49, size: 64, elements: !3243)
!3242 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3243 = !{!3244}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3241, file: !3242, line: 50, baseType: !3245, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3242, line: 41, size: 512, align: 512, elements: !3247)
!3247 = !{!3248, !3249, !3254}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3246, file: !3242, line: 43, baseType: !187, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3246, file: !3242, line: 45, baseType: !3250, size: 192, offset: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3242, line: 29, size: 192, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3250, file: !3242, line: 30, baseType: !157, size: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3250, file: !3242, line: 32, baseType: !293, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3246, file: !3242, line: 46, baseType: !293, size: 64, offset: 256)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !490, file: !14, line: 1305, baseType: !3241, size: 64, offset: 9024)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !490, file: !14, line: 1306, baseType: !950, size: 128, align: 64, offset: 9088)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !490, file: !14, line: 1307, baseType: !2225, size: 256, offset: 9216)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !490, file: !14, line: 1309, baseType: !637, size: 256, offset: 9472)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !490, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !490, file: !14, line: 1317, baseType: !187, size: 32, align: 512, offset: 10240)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !490, file: !14, line: 1318, baseType: !157, size: 128, offset: 10304)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !490, file: !14, line: 1320, baseType: !187, size: 32, offset: 10432)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !490, file: !14, line: 1321, baseType: !157, size: 128, offset: 10496)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !484, file: !485, line: 73, baseType: !109, size: 32, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !484, file: !485, line: 74, baseType: !3266, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1382, line: 42, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !438, file: !375, line: 141, baseType: !3270, size: 64, offset: 704)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!109, !760, !1457}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !438, file: !375, line: 142, baseType: !3274, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!373, !373, !3277}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !374, file: !375, line: 96, baseType: !489, size: 64, offset: 832)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !374, file: !375, line: 97, baseType: !307, size: 64, offset: 896)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !374, file: !375, line: 98, baseType: !329, size: 64, offset: 960)
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !375, line: 100, baseType: !3283, size: 128, offset: 1024)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !375, line: 100, size: 128, elements: !3284)
!3284 = !{!3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3283, file: !375, line: 101, baseType: !157, size: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3283, file: !375, line: 102, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !374, file: !375, line: 104, baseType: !157, size: 128, offset: 1152)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !374, file: !375, line: 105, baseType: !157, size: 128, offset: 1280)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !374, file: !375, line: 113, baseType: !3291, size: 128, offset: 1408)
!3291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !375, line: 109, size: 128, elements: !3292)
!3292 = !{!3293, !3294, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3291, file: !375, line: 110, baseType: !533, size: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3291, file: !375, line: 111, baseType: !389, size: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3291, file: !375, line: 112, baseType: !950, size: 128, align: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !367, file: !14, line: 1968, baseType: !3297, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!176, !373, !338, !3300}
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3302, line: 10, size: 128, elements: !3303)
!3302 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3303 = !{!3304, !3308}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3301, file: !3302, line: 11, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !329}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3301, file: !3302, line: 12, baseType: !329, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !367, file: !14, line: 1969, baseType: !3310, size: 64, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!109, !3266, !338, !109}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !367, file: !14, line: 1970, baseType: !3314, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!361, !338, !109, !1457}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !367, file: !14, line: 1972, baseType: !3318, size: 64, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!109, !373, !257, !109}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !367, file: !14, line: 1974, baseType: !3322, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!109, !3266, !338, !373, !299, !1457}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !367, file: !14, line: 1976, baseType: !3326, size: 64, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!109, !373, !338, !373}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !367, file: !14, line: 1977, baseType: !3330, size: 64, offset: 448)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!109, !338, !373}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !367, file: !14, line: 1978, baseType: !3334, size: 64, offset: 512)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!109, !3266, !338, !373, !176}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !367, file: !14, line: 1980, baseType: !3338, size: 64, offset: 576)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!109, !3266, !338, !373, !299}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !367, file: !14, line: 1982, baseType: !3330, size: 64, offset: 640)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !367, file: !14, line: 1983, baseType: !3343, size: 64, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!109, !3266, !338, !373, !299, !494}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !367, file: !14, line: 1985, baseType: !3347, size: 64, offset: 768)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!109, !3266, !338, !373, !338, !373, !7}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !367, file: !14, line: 1987, baseType: !3351, size: 64, offset: 832)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!109, !3266, !373, !3354}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3369, !3378, !3379, !3384, !3385, !3386}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3355, file: !14, line: 227, baseType: !7, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3355, file: !14, line: 228, baseType: !299, size: 16, offset: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, scope: !3355, file: !14, line: 241, baseType: !3360, size: 32, offset: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3355, file: !14, line: 241, size: 32, elements: !3361)
!3361 = !{!3362, !3363}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3360, file: !14, line: 242, baseType: !344, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3360, file: !14, line: 243, baseType: !3364, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3365, line: 16, baseType: !3366)
!3365 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3365, line: 14, size: 32, elements: !3367)
!3367 = !{!3368}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3366, file: !3365, line: 15, baseType: !349, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, scope: !3355, file: !14, line: 245, baseType: !3370, size: 32, offset: 96)
!3370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3355, file: !14, line: 245, size: 32, elements: !3371)
!3371 = !{!3372, !3373}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3370, file: !14, line: 246, baseType: !353, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3370, file: !14, line: 247, baseType: !3374, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3365, line: 20, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3365, line: 18, size: 32, elements: !3376)
!3376 = !{!3377}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3375, file: !3365, line: 19, baseType: !357, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3355, file: !14, line: 249, baseType: !499, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3355, file: !14, line: 250, baseType: !3380, size: 128, offset: 192)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !691, line: 13, size: 128, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3380, file: !691, line: 14, baseType: !690, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3380, file: !691, line: 15, baseType: !293, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3355, file: !14, line: 251, baseType: !3380, size: 128, offset: 320)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3355, file: !14, line: 252, baseType: !3380, size: 128, offset: 448)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3355, file: !14, line: 259, baseType: !1296, size: 64, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !367, file: !14, line: 1988, baseType: !3388, size: 64, offset: 896)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!109, !3266, !760, !3391, !407, !7}
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3393, line: 22, size: 1280, elements: !3394)
!3393 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3392, file: !3393, line: 23, baseType: !407, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3392, file: !3393, line: 24, baseType: !299, size: 16, offset: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3392, file: !3393, line: 25, baseType: !7, size: 32, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3392, file: !3393, line: 26, baseType: !1422, size: 32, offset: 96)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3392, file: !3393, line: 27, baseType: !411, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3392, file: !3393, line: 28, baseType: !411, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3392, file: !3393, line: 41, baseType: !411, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3392, file: !3393, line: 42, baseType: !494, size: 32, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3392, file: !3393, line: 43, baseType: !494, size: 32, offset: 352)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3392, file: !3393, line: 44, baseType: !344, size: 32, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3392, file: !3393, line: 45, baseType: !353, size: 32, offset: 416)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3392, file: !3393, line: 46, baseType: !499, size: 64, offset: 448)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3392, file: !3393, line: 47, baseType: !3380, size: 128, offset: 512)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3392, file: !3393, line: 48, baseType: !3380, size: 128, offset: 640)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3392, file: !3393, line: 49, baseType: !3380, size: 128, offset: 768)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3392, file: !3393, line: 50, baseType: !3380, size: 128, offset: 896)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3392, file: !3393, line: 51, baseType: !411, size: 64, offset: 1024)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3392, file: !3393, line: 52, baseType: !411, size: 64, offset: 1088)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3392, file: !3393, line: 53, baseType: !407, size: 32, offset: 1152)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3392, file: !3393, line: 54, baseType: !407, size: 32, offset: 1184)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3392, file: !3393, line: 55, baseType: !411, size: 64, offset: 1216)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !367, file: !14, line: 1990, baseType: !3417, size: 64, offset: 960)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!289, !373, !257, !304}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !367, file: !14, line: 1991, baseType: !3421, size: 64, offset: 1024)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!109, !338, !3424, !411, !411}
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !367, file: !14, line: 1993, baseType: !3427, size: 64, offset: 1088)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!109, !338, !109}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !367, file: !14, line: 1994, baseType: !3431, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!109, !338, !373, !1296, !7, !299}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !367, file: !14, line: 1997, baseType: !3435, size: 64, offset: 1216)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!109, !3266, !338, !1296, !299}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !367, file: !14, line: 1999, baseType: !3439, size: 64, offset: 1280)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!361, !3266, !373, !109}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !367, file: !14, line: 2001, baseType: !3443, size: 64, offset: 1344)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!109, !3266, !373, !361, !109}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !367, file: !14, line: 2003, baseType: !3447, size: 64, offset: 1408)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!109, !3266, !373, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !367, file: !14, line: 2005, baseType: !3453, size: 64, offset: 1472)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!109, !373, !3450}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !367, file: !14, line: 2006, baseType: !3457, size: 64, offset: 1536)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!3460, !338}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3461, file: !14, line: 3193, baseType: !1962, size: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3461, file: !14, line: 3194, baseType: !407, size: 32, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !339, file: !14, line: 655, baseType: !489, size: 64, offset: 448)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !339, file: !14, line: 656, baseType: !334, size: 64, offset: 512)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !339, file: !14, line: 659, baseType: !329, size: 64, offset: 576)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !339, file: !14, line: 663, baseType: !307, size: 64, offset: 640)
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !14, line: 671, baseType: !3470, size: 32, offset: 704)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !14, line: 671, size: 32, elements: !3471)
!3471 = !{!3472, !3474}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3470, file: !14, line: 672, baseType: !3473, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3470, file: !14, line: 673, baseType: !7, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !339, file: !14, line: 675, baseType: !494, size: 32, offset: 736)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !339, file: !14, line: 676, baseType: !499, size: 64, offset: 768)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !339, file: !14, line: 677, baseType: !3380, size: 128, offset: 832)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !339, file: !14, line: 678, baseType: !3380, size: 128, offset: 960)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !339, file: !14, line: 679, baseType: !3380, size: 128, offset: 1088)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !339, file: !14, line: 680, baseType: !187, size: 32, offset: 1216)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !339, file: !14, line: 681, baseType: !227, size: 16, offset: 1248)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !339, file: !14, line: 682, baseType: !215, size: 8, offset: 1264)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !339, file: !14, line: 683, baseType: !215, size: 8, offset: 1272)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !339, file: !14, line: 684, baseType: !838, size: 64, offset: 1280)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !339, file: !14, line: 691, baseType: !307, size: 64, offset: 1344)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !339, file: !14, line: 692, baseType: !850, size: 320, offset: 1408)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !339, file: !14, line: 694, baseType: !307, size: 64, offset: 1728)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !339, file: !14, line: 695, baseType: !307, size: 64, offset: 1792)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !339, file: !14, line: 697, baseType: !533, size: 128, offset: 1856)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !339, file: !14, line: 698, baseType: !157, size: 128, offset: 1984)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !339, file: !14, line: 707, baseType: !157, size: 128, offset: 2112)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !339, file: !14, line: 708, baseType: !157, size: 128, offset: 2240)
!3493 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !14, line: 709, baseType: !3494, size: 128, offset: 2368)
!3494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !14, line: 709, size: 128, elements: !3495)
!3495 = !{!3496, !3497}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3494, file: !14, line: 710, baseType: !529, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3494, file: !14, line: 711, baseType: !950, size: 128, align: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !339, file: !14, line: 713, baseType: !643, size: 64, offset: 2496)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !339, file: !14, line: 714, baseType: !643, size: 64, offset: 2560)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !339, file: !14, line: 715, baseType: !207, size: 32, offset: 2624)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !339, file: !14, line: 716, baseType: !207, size: 32, offset: 2656)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !339, file: !14, line: 717, baseType: !207, size: 32, offset: 2688)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !339, file: !14, line: 719, baseType: !207, size: 32, offset: 2720)
!3504 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !14, line: 721, baseType: !3505, size: 64, offset: 2752)
!3505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !14, line: 721, size: 64, elements: !3506)
!3506 = !{!3507, !3508}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3505, file: !14, line: 722, baseType: !1571, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3505, file: !14, line: 723, baseType: !560, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !339, file: !14, line: 725, baseType: !3510, size: 64, offset: 2816)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !339, file: !14, line: 726, baseType: !335, size: 1536, align: 64, offset: 2880)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !339, file: !14, line: 727, baseType: !157, size: 128, offset: 4416)
!3514 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !14, line: 728, baseType: !3515, size: 64, offset: 4544)
!3515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !14, line: 728, size: 64, elements: !3516)
!3516 = !{!3517, !3518, !3521, !3522}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3515, file: !14, line: 729, baseType: !2047, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3515, file: !14, line: 730, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3515, file: !14, line: 731, baseType: !257, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3515, file: !14, line: 732, baseType: !7, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !339, file: !14, line: 735, baseType: !408, size: 32, offset: 4608)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !339, file: !14, line: 738, baseType: !408, size: 32, offset: 4640)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !339, file: !14, line: 739, baseType: !3201, size: 64, offset: 4672)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !339, file: !14, line: 750, baseType: !329, size: 64, offset: 4736)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !335, file: !14, line: 474, baseType: !1962, size: 128, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !335, file: !14, line: 475, baseType: !850, size: 320, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !335, file: !14, line: 476, baseType: !702, size: 32, offset: 512)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !335, file: !14, line: 477, baseType: !207, size: 32, offset: 544)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !335, file: !14, line: 482, baseType: !1152, size: 128, offset: 576)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !335, file: !14, line: 483, baseType: !307, size: 64, offset: 704)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !335, file: !14, line: 484, baseType: !307, size: 64, offset: 768)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !335, file: !14, line: 485, baseType: !3535, size: 64, offset: 832)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3537)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3538)
!3538 = !{!3539, !3543, !3613, !3617, !3621, !3627, !3631, !3635, !3640, !3644, !3648, !3652, !3653, !3657, !3661, !3665, !3670, !3674, !3681, !3682}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3537, file: !14, line: 405, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!109, !1661, !572}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3537, file: !14, line: 406, baseType: !3544, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!109, !1296, !3547}
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !46, line: 293, size: 1536, elements: !3549)
!3549 = !{!3550, !3580, !3594}
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !3548, file: !46, line: 295, baseType: !3551, size: 512)
!3551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3548, file: !46, line: 295, size: 512, elements: !3552)
!3552 = !{!3553, !3579}
!3553 = !DIDerivedType(tag: DW_TAG_member, scope: !3551, file: !46, line: 296, baseType: !3554, size: 448)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3551, file: !46, line: 296, size: 448, elements: !3555)
!3555 = !{!3556, !3557, !3566, !3567, !3568, !3577, !3578}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3554, file: !46, line: 298, baseType: !307, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, scope: !3554, file: !46, line: 299, baseType: !3558, size: 128, offset: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3554, file: !46, line: 299, size: 128, elements: !3559)
!3559 = !{!3560, !3561}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3558, file: !46, line: 300, baseType: !157, size: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, scope: !3558, file: !46, line: 302, baseType: !3562, size: 128)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !46, line: 302, size: 128, elements: !3563)
!3563 = !{!3564, !3565}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3562, file: !46, line: 303, baseType: !329, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3562, file: !46, line: 305, baseType: !7, size: 32, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3554, file: !46, line: 310, baseType: !334, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3554, file: !46, line: 311, baseType: !307, size: 64, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, scope: !3554, file: !46, line: 312, baseType: !3569, size: 64, offset: 320)
!3569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3554, file: !46, line: 312, size: 64, elements: !3570)
!3570 = !{!3571, !3572}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3569, file: !46, line: 313, baseType: !329, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3569, file: !46, line: 314, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !46, line: 257, baseType: !3574)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 255, size: 64, elements: !3575)
!3575 = !{!3576}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3574, file: !46, line: 256, baseType: !307, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3554, file: !46, line: 316, baseType: !207, size: 32, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3554, file: !46, line: 317, baseType: !207, size: 32, offset: 416)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3551, file: !46, line: 323, baseType: !1662, size: 512, align: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, scope: !3548, file: !46, line: 325, baseType: !3581, size: 512, offset: 512)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3548, file: !46, line: 325, size: 512, elements: !3582)
!3582 = !{!3583, !3593}
!3583 = !DIDerivedType(tag: DW_TAG_member, scope: !3581, file: !46, line: 326, baseType: !3584, size: 320)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3581, file: !46, line: 326, size: 320, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3591, !3592}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3584, file: !46, line: 327, baseType: !307, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3584, file: !46, line: 328, baseType: !307, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3584, file: !46, line: 329, baseType: !307, size: 64, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3584, file: !46, line: 331, baseType: !207, size: 32, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3584, file: !46, line: 332, baseType: !207, size: 32, offset: 224)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3584, file: !46, line: 333, baseType: !207, size: 32, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3584, file: !46, line: 335, baseType: !7, size: 32, offset: 288)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3581, file: !46, line: 339, baseType: !1662, size: 512, align: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, scope: !3548, file: !46, line: 341, baseType: !3595, size: 512, offset: 1024)
!3595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3548, file: !46, line: 341, size: 512, elements: !3596)
!3596 = !{!3597, !3606, !3612}
!3597 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !46, line: 342, baseType: !3598, size: 384)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !46, line: 342, size: 384, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3603, !3604, !3605}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3598, file: !46, line: 343, baseType: !307, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3598, file: !46, line: 344, baseType: !307, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3598, file: !46, line: 346, baseType: !329, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3598, file: !46, line: 347, baseType: !329, size: 64, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3598, file: !46, line: 348, baseType: !329, size: 64, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3598, file: !46, line: 349, baseType: !329, size: 64, offset: 320)
!3606 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !46, line: 352, baseType: !3607, size: 256)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !46, line: 352, size: 256, elements: !3608)
!3608 = !{!3609, !3610, !3611}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3607, file: !46, line: 353, baseType: !307, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3607, file: !46, line: 354, baseType: !307, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3607, file: !46, line: 356, baseType: !157, size: 128, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3595, file: !46, line: 359, baseType: !1662, size: 512, align: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3537, file: !14, line: 409, baseType: !3614, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!109, !334, !572}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3537, file: !14, line: 412, baseType: !3618, size: 64, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!1457, !334, !3547}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3537, file: !14, line: 414, baseType: !3622, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{null, !3625}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3537, file: !14, line: 416, baseType: !3628, size: 64, offset: 320)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!109, !1296, !334, !499, !7, !2950, !2062}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3537, file: !14, line: 419, baseType: !3632, size: 64, offset: 384)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!109, !1296, !334, !499, !7, !7, !1661, !329}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3537, file: !14, line: 424, baseType: !3636, size: 64, offset: 448)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!3639, !334, !3639}
!3639 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !158, line: 131, baseType: !411)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3537, file: !14, line: 425, baseType: !3641, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !3547, !304, !304}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3537, file: !14, line: 426, baseType: !3645, size: 64, offset: 576)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!1457, !3547, !702}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3537, file: !14, line: 427, baseType: !3649, size: 64, offset: 640)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{null, !3547}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3537, file: !14, line: 428, baseType: !1590, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3537, file: !14, line: 433, baseType: !3654, size: 64, offset: 768)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!109, !334, !3547, !3547, !74}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3537, file: !14, line: 435, baseType: !3658, size: 64, offset: 832)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!109, !3547}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3537, file: !14, line: 436, baseType: !3662, size: 64, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!1457, !3547, !304, !304}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3537, file: !14, line: 438, baseType: !3666, size: 64, offset: 960)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{null, !3547, !3669, !3669}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3537, file: !14, line: 439, baseType: !3671, size: 64, offset: 1024)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!109, !334, !1661}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3537, file: !14, line: 442, baseType: !3675, size: 64, offset: 1088)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!109, !3678, !1296, !3680}
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3537, file: !14, line: 444, baseType: !2054, size: 64, offset: 1152)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3537, file: !14, line: 445, baseType: !3683, size: 64, offset: 1216)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!109, !1593, !1615}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !14, line: 486, baseType: !307, size: 64, offset: 896)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !335, file: !14, line: 487, baseType: !850, size: 320, offset: 960)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !335, file: !14, line: 488, baseType: !2097, size: 32, offset: 1280)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !335, file: !14, line: 489, baseType: !187, size: 32, offset: 1312)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !335, file: !14, line: 490, baseType: !157, size: 128, offset: 1344)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !335, file: !14, line: 491, baseType: !329, size: 64, offset: 1472)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !324, file: !283, line: 180, baseType: !3693, size: 64, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!289, !1296, !180, !323, !257, !499, !304}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !324, file: !283, line: 182, baseType: !3693, size: 64, offset: 384)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !324, file: !283, line: 184, baseType: !3698, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!109, !1296, !180, !323, !1781}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !312, file: !283, line: 90, baseType: !3702, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !312, file: !283, line: 91, baseType: !3704, size: 64, offset: 256)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !273, file: !173, line: 120, baseType: !3706, size: 64, offset: 192)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!3709, !240}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3712)
!3712 = !{!3713, !3714, !3718, !3722, !3729, !3733}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3711, file: !82, line: 40, baseType: !81, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3711, file: !82, line: 41, baseType: !3715, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!1457}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3711, file: !82, line: 42, baseType: !3719, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!329}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3711, file: !82, line: 43, baseType: !3723, size: 64, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!2186, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3728, line: 17, flags: DIFlagFwdDecl)
!3728 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3711, file: !82, line: 44, baseType: !3730, size: 64, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!2186}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3711, file: !82, line: 45, baseType: !3305, size: 64, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !273, file: !173, line: 121, baseType: !3735, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!2186, !240}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !273, file: !173, line: 122, baseType: !3739, size: 64, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !240, !3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !172, file: !173, line: 70, baseType: !3745, size: 64, offset: 384)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3747, line: 190, size: 1152, elements: !3748)
!3747 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3840, !3841, !3842, !3843, !3844, !3847}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3746, file: !3747, line: 191, baseType: !207, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3746, file: !3747, line: 192, baseType: !207, size: 32, offset: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3746, file: !3747, line: 202, baseType: !3745, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3746, file: !3747, line: 203, baseType: !176, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3746, file: !3747, line: 205, baseType: !1023, size: 192, align: 64, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3746, file: !3747, line: 207, baseType: !2186, size: 64, offset: 384)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3746, file: !3747, line: 208, baseType: !7, size: 32, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, scope: !3746, file: !3747, line: 209, baseType: !3757, size: 256, offset: 512)
!3757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3746, file: !3747, line: 209, size: 256, elements: !3758)
!3758 = !{!3759, !3768, !3772}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3757, file: !3747, line: 210, baseType: !3760, size: 256)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3747, line: 153, size: 256, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3767}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3760, file: !3747, line: 154, baseType: !307, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3760, file: !3747, line: 156, baseType: !1155, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3760, file: !3747, line: 162, baseType: !3765, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3747, line: 162, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3760, file: !3747, line: 167, baseType: !307, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3757, file: !3747, line: 211, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3747, line: 170, size: 64, elements: !3770)
!3770 = !{!3771}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3769, file: !3747, line: 171, baseType: !3745, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3757, file: !3747, line: 212, baseType: !3773, size: 256)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3747, line: 174, size: 256, elements: !3774)
!3774 = !{!3775, !3835, !3838, !3839}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3773, file: !3747, line: 175, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3778)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3747, line: 271, size: 768, elements: !3779)
!3779 = !{!3780, !3800, !3804, !3808, !3812, !3816, !3820, !3824, !3825, !3826, !3827, !3831}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3778, file: !3747, line: 276, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!109, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3747, line: 251, size: 1216, elements: !3786)
!3786 = !{!3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3785, file: !3747, line: 253, baseType: !3745, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3785, file: !3747, line: 254, baseType: !1296, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3785, file: !3747, line: 255, baseType: !610, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3785, file: !3747, line: 256, baseType: !329, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3785, file: !3747, line: 259, baseType: !637, size: 256, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3785, file: !3747, line: 260, baseType: !637, size: 256, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3785, file: !3747, line: 261, baseType: !109, size: 32, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3785, file: !3747, line: 262, baseType: !157, size: 128, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3785, file: !3747, line: 263, baseType: !257, size: 64, offset: 960)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3785, file: !3747, line: 265, baseType: !304, size: 64, offset: 1024)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3785, file: !3747, line: 266, baseType: !1457, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3785, file: !3747, line: 267, baseType: !1457, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3785, file: !3747, line: 268, baseType: !1826, size: 64, offset: 1152)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3778, file: !3747, line: 277, baseType: !3801, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3784}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3778, file: !3747, line: 290, baseType: !3805, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!109, !610, !329}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3778, file: !3747, line: 292, baseType: !3809, size: 64, offset: 192)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!329, !610, !1584}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3778, file: !3747, line: 293, baseType: !3813, size: 64, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!329, !610, !329, !1584}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3778, file: !3747, line: 294, baseType: !3817, size: 64, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !610, !329}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3778, file: !3747, line: 296, baseType: !3821, size: 64, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!289, !3784, !257, !304, !499}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3778, file: !3747, line: 306, baseType: !304, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3778, file: !3747, line: 313, baseType: !1457, size: 8, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3778, file: !3747, line: 314, baseType: !3821, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3778, file: !3747, line: 317, baseType: !3828, size: 64, offset: 640)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!1999, !3784, !2001}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3778, file: !3747, line: 320, baseType: !3832, size: 64, offset: 704)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!109, !3784, !1781}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3773, file: !3747, line: 176, baseType: !3836, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3747, line: 35, flags: DIFlagFwdDecl)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3773, file: !3747, line: 177, baseType: !499, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3773, file: !3747, line: 178, baseType: !3745, size: 64, offset: 192)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3746, file: !3747, line: 215, baseType: !329, size: 64, offset: 768)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3746, file: !3747, line: 221, baseType: !411, size: 64, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3746, file: !3747, line: 223, baseType: !227, size: 16, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3746, file: !3747, line: 224, baseType: !299, size: 16, offset: 912)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3746, file: !3747, line: 225, baseType: !3845, size: 64, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3747, line: 36, flags: DIFlagFwdDecl)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3746, file: !3747, line: 227, baseType: !950, size: 128, align: 64, offset: 1024)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !172, file: !173, line: 71, baseType: !3849, size: 32, offset: 448)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3850, line: 19, size: 32, elements: !3851)
!3850 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3851 = !{!3852}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3849, file: !3850, line: 20, baseType: !979, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !172, file: !173, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !172, file: !173, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !172, file: !173, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !172, file: !173, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !172, file: !173, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !169, file: !6, line: 47, baseType: !152, size: 64, offset: 512)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !169, file: !6, line: 48, baseType: !180, size: 64, offset: 576)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !169, file: !6, line: 49, baseType: !3861, size: 64, offset: 640)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !169, file: !6, line: 50, baseType: !2335, size: 64, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !153, file: !6, line: 418, baseType: !3865, size: 64, offset: 1408)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3867)
!3867 = !{!3868, !3869, !3874, !3878, !3882, !3886}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3866, file: !6, line: 54, baseType: !295, size: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3866, file: !6, line: 55, baseType: !3870, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!289, !3865, !3873, !257}
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3866, file: !6, line: 57, baseType: !3875, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!289, !3865, !3873, !176, !304}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3866, file: !6, line: 59, baseType: !3879, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{null, !152, !176}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3866, file: !6, line: 60, baseType: !3883, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!109, !152}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3866, file: !6, line: 61, baseType: !3887, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !152}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !153, file: !6, line: 419, baseType: !176, size: 64, offset: 1472)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !153, file: !6, line: 420, baseType: !176, size: 64, offset: 1536)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !153, file: !6, line: 421, baseType: !180, size: 64, offset: 1600)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !153, file: !6, line: 424, baseType: !3894, size: 64, offset: 1664)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3896)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !153, file: !6, line: 425, baseType: !3898, size: 64, offset: 1728)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !153, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !153, file: !6, line: 435, baseType: !637, size: 256, offset: 1856)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !153, file: !6, line: 437, baseType: !3903, size: 64, offset: 2112)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3905, line: 69, size: 320, elements: !3906)
!3905 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3906 = !{!3907, !3908, !3909, !3926, !3928, !3932, !3933}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3904, file: !3905, line: 70, baseType: !176, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3904, file: !3905, line: 71, baseType: !152, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3904, file: !3905, line: 72, baseType: !3910, size: 64, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3912)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3905, line: 47, size: 256, elements: !3913)
!3913 = !{!3914, !3915, !3921, !3925}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3912, file: !3905, line: 49, baseType: !7, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3912, file: !3905, line: 51, baseType: !3916, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!109, !176, !3919}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3904)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3912, file: !3905, line: 53, baseType: !3922, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!109, !257, !3919}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3912, file: !3905, line: 55, baseType: !3305, size: 64, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3904, file: !3905, line: 73, baseType: !3927, size: 16, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3904, file: !3905, line: 74, baseType: !3929, size: 8, offset: 208)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !216, line: 16, baseType: !3930)
!3930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !218, line: 20, baseType: !3931)
!3931 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3904, file: !3905, line: 75, baseType: !215, size: 8, offset: 216)
!3933 = !DIDerivedType(tag: DW_TAG_member, scope: !3904, file: !3905, line: 76, baseType: !3934, size: 64, offset: 256)
!3934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3904, file: !3905, line: 76, size: 64, elements: !3935)
!3935 = !{!3936, !3937, !3944}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3934, file: !3905, line: 77, baseType: !329, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3934, file: !3905, line: 78, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3940)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3905, line: 86, size: 128, elements: !3941)
!3941 = !{!3942, !3943}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3940, file: !3905, line: 87, baseType: !7, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3940, file: !3905, line: 88, baseType: !257, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3934, file: !3905, line: 79, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3947)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3905, line: 92, size: 256, elements: !3948)
!3948 = !{!3949, !3950, !3951, !3952, !3953}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3947, file: !3905, line: 94, baseType: !7, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3947, file: !3905, line: 95, baseType: !7, size: 32, offset: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3947, file: !3905, line: 96, baseType: !959, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3947, file: !3905, line: 97, baseType: !3910, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3947, file: !3905, line: 98, baseType: !329, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !153, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !153, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !153, file: !6, line: 442, baseType: !3894, size: 64, offset: 2240)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !153, file: !6, line: 443, baseType: !3898, size: 64, offset: 2304)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !153, file: !6, line: 444, baseType: !1457, size: 8, offset: 2368)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !153, file: !6, line: 451, baseType: !1457, size: 8, offset: 2376)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !153, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !153, file: !6, line: 455, baseType: !3962, size: 64, offset: 2432)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3964, line: 23, size: 96, elements: !3965)
!3964 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3965 = !{!3966, !3967, !3968}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3963, file: !3964, line: 24, baseType: !109, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3963, file: !3964, line: 24, baseType: !109, size: 32, offset: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3963, file: !3964, line: 24, baseType: !109, size: 32, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !153, file: !6, line: 458, baseType: !3970, size: 64, offset: 2496)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!109}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !153, file: !6, line: 460, baseType: !3974, size: 4032, align: 512, offset: 2560)
!3974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3975, size: 4032, elements: !3989)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3976)
!3976 = !{!3977, !3978, !3979}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3975, file: !6, line: 363, baseType: !329, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3975, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3975, file: !6, line: 367, baseType: !3980, size: 448, offset: 128)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3981)
!3981 = !{!3982, !3983}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3980, file: !6, line: 320, baseType: !152, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3980, file: !6, line: 321, baseType: !3984, size: 384, offset: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3985, line: 40, size: 384, elements: !3986)
!3985 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3986 = !{!3987}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3984, file: !3985, line: 41, baseType: !3988, size: 384, align: 64)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, size: 384, align: 64, elements: !2482)
!3989 = !{!3990}
!3990 = !DISubrange(count: 7)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !153, file: !6, line: 463, baseType: !3992, size: 192, offset: 6592)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3993, line: 8, size: 192, elements: !3994)
!3993 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3994 = !{!3995, !3996, !3997}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3992, file: !3993, line: 10, baseType: !7, size: 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3992, file: !3993, line: 11, baseType: !604, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3992, file: !3993, line: 12, baseType: !3998, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4000, line: 59, size: 48, elements: !4001)
!4000 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4001 = !{!4002, !4003, !4004, !4005, !4006, !4007}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3999, file: !4000, line: 60, baseType: !2203, size: 16)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3999, file: !4000, line: 61, baseType: !2203, size: 16, offset: 16)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3999, file: !4000, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3999, file: !4000, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3999, file: !4000, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3999, file: !4000, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !153, file: !6, line: 465, baseType: !307, size: 64, offset: 6784)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !153, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !153, file: !6, line: 470, baseType: !157, size: 128, offset: 6912)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !153, file: !6, line: 471, baseType: !4012, size: 64, offset: 7040)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4014, line: 33, size: 96, elements: !4015)
!4014 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4015 = !{!4016, !4017, !4018, !4019}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4013, file: !4014, line: 37, baseType: !109, size: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4013, file: !4014, line: 43, baseType: !109, size: 32, offset: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4013, file: !4014, line: 45, baseType: !227, size: 16, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4013, file: !4014, line: 47, baseType: !227, size: 16, offset: 80)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !153, file: !6, line: 476, baseType: !4021, size: 64, offset: 7104)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4023)
!4023 = !{!4024, !4040, !4041, !4042}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4022, file: !6, line: 379, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4027, line: 204, baseType: !4028)
!4027 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4027, line: 197, size: 192, elements: !4029)
!4029 = !{!4030, !4032, !4033, !4034, !4036, !4038}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4028, file: !4027, line: 198, baseType: !4031, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4027, line: 21, baseType: !408)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4028, file: !4027, line: 199, baseType: !219, size: 8, offset: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4028, file: !4027, line: 200, baseType: !219, size: 8, offset: 40)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4028, file: !4027, line: 201, baseType: !4035, size: 16, offset: 48)
!4035 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4027, line: 17, baseType: !226)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4028, file: !4027, line: 202, baseType: !4037, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4027, line: 16, baseType: !412)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4028, file: !4027, line: 203, baseType: !4039, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4027, line: 22, baseType: !412)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4022, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4022, file: !6, line: 381, baseType: !257, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4022, file: !6, line: 382, baseType: !257, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !153, file: !6, line: 477, baseType: !4022, size: 256, offset: 7168)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !153, file: !6, line: 480, baseType: !4045, size: 64, offset: 7424)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !153, file: !6, line: 483, baseType: !4048, size: 64, offset: 7488)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !153, file: !6, line: 488, baseType: !257, size: 64, offset: 7552)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !153, file: !6, line: 492, baseType: !329, size: 64, offset: 7616)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !153, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !153, file: !6, line: 495, baseType: !329, size: 64, offset: 7744)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !153, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !153, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !153, file: !6, line: 500, baseType: !4057, size: 64, offset: 7872)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4059, line: 45, baseType: !4060)
!4059 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !153, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !153, file: !6, line: 504, baseType: !4063, size: 64, offset: 8000)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4066, line: 96, size: 192, elements: !4067)
!4066 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4067 = !{!4068, !4069, !4112, !4114}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4065, file: !4066, line: 97, baseType: !7, size: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4065, file: !4066, line: 98, baseType: !4070, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4066, line: 24, size: 3072, elements: !4072)
!4072 = !{!4073, !4075, !4076, !4077, !4078, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4109, !4110, !4111}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4071, file: !4066, line: 26, baseType: !4074, size: 128)
!4074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 128, elements: !2482)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4071, file: !4066, line: 27, baseType: !4074, size: 128, offset: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4071, file: !4066, line: 28, baseType: !109, size: 32, offset: 256)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4071, file: !4066, line: 31, baseType: !187, size: 32, align: 512, offset: 512)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4071, file: !4066, line: 32, baseType: !4079, size: 960, offset: 576)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4080, line: 206, size: 960, elements: !4081)
!4080 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4081 = !{!4082, !4083, !4086, !4088, !4089, !4091}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4079, file: !4080, line: 207, baseType: !953, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4079, file: !4080, line: 208, baseType: !4084, size: 256, offset: 64)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4085, size: 256, elements: !1345)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4079, file: !4080, line: 209, baseType: !4087, size: 256, offset: 320)
!4087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !1345)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4079, file: !4080, line: 213, baseType: !293, size: 64, offset: 576)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4079, file: !4080, line: 215, baseType: !4090, size: 256, offset: 640)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !1345)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4079, file: !4080, line: 216, baseType: !215, size: 8, offset: 896)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4071, file: !4066, line: 33, baseType: !307, size: 64, offset: 1536)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4071, file: !4066, line: 34, baseType: !307, size: 64, offset: 1600)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4071, file: !4066, line: 35, baseType: !1457, size: 8, offset: 1664)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4071, file: !4066, line: 36, baseType: !2929, size: 320, offset: 1728)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4071, file: !4066, line: 37, baseType: !2225, size: 256, offset: 2048)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4071, file: !4066, line: 38, baseType: !950, size: 128, align: 64, offset: 2304)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4071, file: !4066, line: 39, baseType: !4099, size: 64, offset: 2432)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4066, line: 49, size: 768, elements: !4101)
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107, !4108}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4100, file: !4066, line: 50, baseType: !187, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4100, file: !4066, line: 51, baseType: !4087, size: 256, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4100, file: !4066, line: 53, baseType: !4087, size: 256, offset: 320)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4100, file: !4066, line: 54, baseType: !307, size: 64, offset: 576)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4100, file: !4066, line: 55, baseType: !4099, size: 64, offset: 640)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4100, file: !4066, line: 56, baseType: !109, size: 32, offset: 704)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4100, file: !4066, line: 57, baseType: !109, size: 32, offset: 736)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4071, file: !4066, line: 40, baseType: !307, size: 64, offset: 2496)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4071, file: !4066, line: 42, baseType: !109, size: 32, offset: 2560)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4071, file: !4066, line: 43, baseType: !4064, size: 64, offset: 2624)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4065, file: !4066, line: 99, baseType: !4113, offset: 128)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !540, line: 211, elements: !541)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4065, file: !4066, line: 100, baseType: !4115, size: 64, offset: 128)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4066, line: 63, size: 3008, elements: !4117)
!4117 = !{!4118, !4119, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4147}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4116, file: !4066, line: 64, baseType: !4099, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4116, file: !4066, line: 65, baseType: !4120, size: 192, offset: 64)
!4120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4099, size: 192, elements: !258)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4116, file: !4066, line: 67, baseType: !109, size: 32, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4116, file: !4066, line: 68, baseType: !637, size: 256, offset: 320)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4116, file: !4066, line: 69, baseType: !187, size: 32, offset: 576)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4116, file: !4066, line: 70, baseType: !637, size: 256, offset: 640)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4116, file: !4066, line: 71, baseType: !307, size: 64, offset: 896)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4116, file: !4066, line: 72, baseType: !307, size: 64, offset: 960)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4116, file: !4066, line: 73, baseType: !307, size: 64, offset: 1024)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4116, file: !4066, line: 74, baseType: !307, size: 64, offset: 1088)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4116, file: !4066, line: 75, baseType: !307, size: 64, offset: 1152)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4116, file: !4066, line: 76, baseType: !307, size: 64, offset: 1216)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4116, file: !4066, line: 77, baseType: !307, size: 64, offset: 1280)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4116, file: !4066, line: 78, baseType: !307, size: 64, offset: 1344)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4116, file: !4066, line: 79, baseType: !1457, size: 8, offset: 1408)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4116, file: !4066, line: 80, baseType: !307, size: 64, offset: 1472)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4116, file: !4066, line: 81, baseType: !637, size: 256, offset: 1536)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4116, file: !4066, line: 82, baseType: !1746, size: 256, offset: 1792)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4116, file: !4066, line: 84, baseType: !207, size: 32, offset: 2048)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4116, file: !4066, line: 87, baseType: !307, size: 64, offset: 2112)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4116, file: !4066, line: 88, baseType: !307, size: 64, offset: 2176)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4116, file: !4066, line: 89, baseType: !4141, size: 704, offset: 2240)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2226, line: 111, size: 704, elements: !4142)
!4142 = !{!4143, !4144, !4145, !4146}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4141, file: !2226, line: 112, baseType: !2225, size: 256)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4141, file: !2226, line: 113, baseType: !2929, size: 320, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4141, file: !2226, line: 116, baseType: !3236, size: 64, offset: 576)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4141, file: !2226, line: 117, baseType: !109, size: 32, offset: 640)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4116, file: !4066, line: 90, baseType: !4064, size: 64, offset: 2944)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !153, file: !6, line: 515, baseType: !4149, size: 64, offset: 8064)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4151, line: 117, size: 128, elements: !4152)
!4151 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4152 = !{!4153, !4154, !4155}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4150, file: !4151, line: 118, baseType: !1400, size: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4150, file: !4151, line: 119, baseType: !1400, size: 32, offset: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4150, file: !4151, line: 120, baseType: !293, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !153, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !153, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !153, file: !6, line: 520, baseType: !4159, size: 64, offset: 8192)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !153, file: !6, line: 523, baseType: !4161, size: 64, offset: 8256)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !153, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !153, file: !6, line: 525, baseType: !4166, size: 64, offset: 8384)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !153, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !153, file: !6, line: 533, baseType: !329, size: 64, offset: 8512)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !153, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !153, file: !6, line: 535, baseType: !4173, size: 64, offset: 8640)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !153, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !153, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !153, file: !6, line: 540, baseType: !4177, size: 64, offset: 8768)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4179, line: 32, size: 64, elements: !4180)
!4179 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4180 = !{!4181, !4182}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4178, file: !4179, line: 33, baseType: !1400, size: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4178, file: !4179, line: 34, baseType: !1400, size: 32, offset: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !153, file: !6, line: 563, baseType: !157, size: 128, offset: 8832)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !153, file: !6, line: 565, baseType: !157, size: 128, offset: 8960)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !153, file: !6, line: 568, baseType: !4186, size: 64, offset: 9088)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !153, file: !6, line: 570, baseType: !207, size: 32, offset: 9152)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !148, line: 372, baseType: !176, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !149, file: !148, line: 373, baseType: !4190, size: 488, offset: 128)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 488, elements: !4191)
!4191 = !{!4192}
!4192 = !DISubrange(count: 61)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !149, file: !148, line: 374, baseType: !329, size: 64, offset: 640)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !149, file: !148, line: 376, baseType: !4195, size: 64, offset: 704)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!109, !4198, !109, !109}
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !149, file: !148, line: 378, baseType: !4200, size: 64, offset: 768)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!109, !4198, !109, !109, !225}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "read_c45", scope: !149, file: !148, line: 380, baseType: !4204, size: 64, offset: 832)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!109, !4198, !109, !109, !109}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "write_c45", scope: !149, file: !148, line: 382, baseType: !4208, size: 64, offset: 896)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!109, !4198, !109, !109, !109, !225}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !149, file: !148, line: 385, baseType: !4212, size: 64, offset: 960)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!109, !4198}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !149, file: !148, line: 388, baseType: !4216, size: 8192, offset: 1024)
!4216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4217, size: 8192, elements: !420)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mdio_bus_stats", file: !148, line: 319, size: 256, elements: !4218)
!4218 = !{!4219, !4235, !4236, !4237, !4238}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !4217, file: !148, line: 320, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64_stats_t", file: !4221, line: 75, baseType: !4222)
!4221 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4221, line: 73, size: 64, elements: !4223)
!4223 = !{!4224}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !4222, file: !4221, line: 74, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !4226, line: 26, baseType: !4227)
!4226 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4226, line: 24, size: 64, elements: !4228)
!4228 = !{!4229}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4227, file: !4226, line: 25, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !4231, line: 12, baseType: !4232)
!4231 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4231, line: 10, size: 64, elements: !4233)
!4233 = !{!4234}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4232, file: !4231, line: 11, baseType: !641, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4217, file: !148, line: 321, baseType: !4220, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "writes", scope: !4217, file: !148, line: 322, baseType: !4220, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "reads", scope: !4217, file: !148, line: 323, baseType: !4220, size: 64, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "syncp", scope: !4217, file: !148, line: 325, baseType: !4239, offset: 256)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4221, line: 64, elements: !541)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "mdio_lock", scope: !149, file: !148, line: 394, baseType: !637, size: 256, offset: 9216)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !149, file: !148, line: 397, baseType: !4242, size: 64, offset: 9472)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4244)
!4244 = !{!4245, !4246, !4247, !4250, !4251, !4304, !4389, !4390, !4391, !4392, !4393, !4400, !4492, !4505, !4515, !4519, !4521, !4522, !4523, !4527, !4534, !4535, !4538, !4541, !4545, !4648, !4649, !4650, !4651, !4652, !4653, !4683, !4684, !4685, !4688, !4691, !4700, !4701, !4702, !4703, !4704, !4705}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4243, file: !94, line: 706, baseType: !172, size: 512)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4243, file: !94, line: 707, baseType: !4242, size: 64, offset: 512)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4243, file: !94, line: 709, baseType: !4248, size: 64, offset: 576)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4243, file: !94, line: 711, baseType: !176, size: 64, offset: 640)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4243, file: !94, line: 712, baseType: !4252, size: 64, offset: 704)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4254)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4255)
!4255 = !{!4256, !4257, !4258, !4264, !4269, !4273}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4254, file: !94, line: 90, baseType: !176, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4254, file: !94, line: 91, baseType: !309, size: 64, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4254, file: !94, line: 92, baseType: !4259, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!109, !4262, !252}
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4243)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4254, file: !94, line: 93, baseType: !4265, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!257, !4262, !4268, !3742, !3743}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4254, file: !94, line: 95, baseType: !4270, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !4242}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4254, file: !94, line: 97, baseType: !4274, size: 64, offset: 320)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4277)
!4277 = !{!4278, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4276, file: !101, line: 287, baseType: !4279, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!109, !4242}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4276, file: !101, line: 288, baseType: !4270, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4276, file: !101, line: 289, baseType: !4279, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4276, file: !101, line: 290, baseType: !4279, size: 64, offset: 192)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4276, file: !101, line: 291, baseType: !4279, size: 64, offset: 256)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4276, file: !101, line: 292, baseType: !4279, size: 64, offset: 320)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4276, file: !101, line: 293, baseType: !4279, size: 64, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4276, file: !101, line: 294, baseType: !4279, size: 64, offset: 448)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4276, file: !101, line: 295, baseType: !4279, size: 64, offset: 512)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4276, file: !101, line: 296, baseType: !4279, size: 64, offset: 576)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4276, file: !101, line: 297, baseType: !4279, size: 64, offset: 640)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4276, file: !101, line: 298, baseType: !4279, size: 64, offset: 704)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4276, file: !101, line: 299, baseType: !4279, size: 64, offset: 768)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4276, file: !101, line: 300, baseType: !4279, size: 64, offset: 832)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4276, file: !101, line: 301, baseType: !4279, size: 64, offset: 896)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4276, file: !101, line: 302, baseType: !4279, size: 64, offset: 960)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4276, file: !101, line: 303, baseType: !4279, size: 64, offset: 1024)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4276, file: !101, line: 304, baseType: !4279, size: 64, offset: 1088)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4276, file: !101, line: 305, baseType: !4279, size: 64, offset: 1152)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4276, file: !101, line: 306, baseType: !4279, size: 64, offset: 1216)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4276, file: !101, line: 307, baseType: !4279, size: 64, offset: 1280)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4276, file: !101, line: 308, baseType: !4279, size: 64, offset: 1344)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4276, file: !101, line: 309, baseType: !4279, size: 64, offset: 1408)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4243, file: !94, line: 714, baseType: !4305, size: 64, offset: 768)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4307)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4308, line: 80, size: 1344, elements: !4309)
!4308 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4309 = !{!4310, !4311, !4312, !4313, !4314, !4315, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4388}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4307, file: !4308, line: 81, baseType: !176, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4307, file: !4308, line: 82, baseType: !176, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4307, file: !4308, line: 83, baseType: !309, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4307, file: !4308, line: 84, baseType: !309, size: 64, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4307, file: !4308, line: 85, baseType: !309, size: 64, offset: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4307, file: !4308, line: 87, baseType: !4316, size: 64, offset: 320)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!109, !4242, !4319}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4321)
!4321 = !{!4322, !4323, !4324, !4325, !4326, !4327, !4328, !4341, !4351, !4352, !4353, !4354, !4355, !4363, !4364, !4365, !4366, !4367, !4368}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4320, file: !88, line: 97, baseType: !176, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4320, file: !88, line: 98, baseType: !4305, size: 64, offset: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4320, file: !88, line: 100, baseType: !152, size: 64, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4320, file: !88, line: 101, baseType: !176, size: 64, offset: 192)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4320, file: !88, line: 103, baseType: !1457, size: 8, offset: 256)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4320, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4320, file: !88, line: 106, baseType: !4329, size: 64, offset: 320)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4331)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4332, line: 282, size: 1600, elements: !4333)
!4332 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4333 = !{!4334, !4335, !4336, !4340}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4331, file: !4332, line: 283, baseType: !3204, size: 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4331, file: !4332, line: 284, baseType: !3204, size: 256, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4331, file: !4332, line: 285, baseType: !4337, size: 1024, offset: 512)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 1024, elements: !4338)
!4338 = !{!4339}
!4339 = !DISubrange(count: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4331, file: !4332, line: 286, baseType: !2186, size: 64, offset: 1536)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4320, file: !88, line: 107, baseType: !4342, size: 64, offset: 384)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4344)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4332, line: 217, size: 256, elements: !4345)
!4345 = !{!4346, !4347, !4349, !4350}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4344, file: !4332, line: 218, baseType: !3211, size: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4344, file: !4332, line: 219, baseType: !4348, size: 64, offset: 128)
!4348 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4332, line: 15, baseType: !307)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4344, file: !4332, line: 220, baseType: !408, size: 32, offset: 192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4344, file: !4332, line: 221, baseType: !408, size: 32, offset: 224)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4320, file: !88, line: 109, baseType: !4279, size: 64, offset: 448)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4320, file: !88, line: 110, baseType: !4270, size: 64, offset: 512)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4320, file: !88, line: 111, baseType: !4279, size: 64, offset: 576)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4320, file: !88, line: 112, baseType: !4270, size: 64, offset: 640)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4320, file: !88, line: 113, baseType: !4356, size: 64, offset: 704)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!109, !4242, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4360)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4361)
!4361 = !{!4362}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4360, file: !101, line: 59, baseType: !109, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4320, file: !88, line: 114, baseType: !4279, size: 64, offset: 768)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4320, file: !88, line: 115, baseType: !309, size: 64, offset: 832)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4320, file: !88, line: 116, baseType: !309, size: 64, offset: 896)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4320, file: !88, line: 118, baseType: !4274, size: 64, offset: 960)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4320, file: !88, line: 119, baseType: !4270, size: 64, offset: 1024)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4320, file: !88, line: 121, baseType: !4369, size: 64, offset: 1088)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4307, file: !4308, line: 88, baseType: !4259, size: 64, offset: 384)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4307, file: !4308, line: 89, baseType: !4279, size: 64, offset: 448)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4307, file: !4308, line: 90, baseType: !4270, size: 64, offset: 512)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4307, file: !4308, line: 91, baseType: !4270, size: 64, offset: 576)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4307, file: !4308, line: 92, baseType: !4270, size: 64, offset: 640)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4307, file: !4308, line: 94, baseType: !4279, size: 64, offset: 704)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4307, file: !4308, line: 95, baseType: !4279, size: 64, offset: 768)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4307, file: !4308, line: 97, baseType: !4356, size: 64, offset: 832)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4307, file: !4308, line: 98, baseType: !4279, size: 64, offset: 896)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4307, file: !4308, line: 100, baseType: !4279, size: 64, offset: 960)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4307, file: !4308, line: 102, baseType: !4279, size: 64, offset: 1024)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4307, file: !4308, line: 103, baseType: !4270, size: 64, offset: 1088)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4307, file: !4308, line: 105, baseType: !4274, size: 64, offset: 1152)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4307, file: !4308, line: 107, baseType: !4385, size: 64, offset: 1216)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4387)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4308, line: 107, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4307, file: !4308, line: 109, baseType: !1457, size: 8, offset: 1280)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4243, file: !94, line: 715, baseType: !4319, size: 64, offset: 832)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4243, file: !94, line: 717, baseType: !329, size: 64, offset: 896)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4243, file: !94, line: 719, baseType: !329, size: 64, offset: 960)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4243, file: !94, line: 721, baseType: !637, size: 256, offset: 1024)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4243, file: !94, line: 725, baseType: !4394, size: 448, offset: 1280)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4399}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4394, file: !94, line: 518, baseType: !157, size: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4394, file: !94, line: 519, baseType: !157, size: 128, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4394, file: !94, line: 520, baseType: !157, size: 128, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4394, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4243, file: !94, line: 726, baseType: !4401, size: 2496, offset: 1728)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4402)
!4402 = !{!4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4485, !4489}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4401, file: !101, line: 664, baseType: !4359, size: 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4401, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4401, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4401, file: !101, line: 667, baseType: !1457, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4401, file: !101, line: 668, baseType: !1457, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4401, file: !101, line: 669, baseType: !1457, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4401, file: !101, line: 670, baseType: !1457, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4401, file: !101, line: 671, baseType: !1457, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4401, file: !101, line: 672, baseType: !1457, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4401, file: !101, line: 673, baseType: !1457, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4401, file: !101, line: 674, baseType: !1457, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4401, file: !101, line: 675, baseType: !407, size: 32, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4401, file: !101, line: 676, baseType: !187, size: 32, offset: 96)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4401, file: !101, line: 678, baseType: !157, size: 128, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4401, file: !101, line: 679, baseType: !1746, size: 256, offset: 256)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4401, file: !101, line: 680, baseType: !4419, size: 64, offset: 512)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4421, line: 43, size: 1536, elements: !4422)
!4421 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4422 = !{!4423, !4424, !4425, !4426, !4427, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4420, file: !4421, line: 44, baseType: !176, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4420, file: !4421, line: 45, baseType: !109, size: 32, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4420, file: !4421, line: 46, baseType: !157, size: 128, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4420, file: !4421, line: 47, baseType: !187, size: 32, offset: 256)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4420, file: !4421, line: 48, baseType: !4428, size: 64, offset: 320)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4420, file: !4421, line: 49, baseType: !2929, size: 320, offset: 384)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4420, file: !4421, line: 50, baseType: !307, size: 64, offset: 704)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4420, file: !4421, line: 51, baseType: !1101, size: 64, offset: 768)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4420, file: !4421, line: 52, baseType: !1101, size: 64, offset: 832)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4420, file: !4421, line: 53, baseType: !1101, size: 64, offset: 896)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4420, file: !4421, line: 54, baseType: !1101, size: 64, offset: 960)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4420, file: !4421, line: 55, baseType: !1101, size: 64, offset: 1024)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4420, file: !4421, line: 56, baseType: !307, size: 64, offset: 1088)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4420, file: !4421, line: 57, baseType: !307, size: 64, offset: 1152)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4420, file: !4421, line: 58, baseType: !307, size: 64, offset: 1216)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4420, file: !4421, line: 59, baseType: !307, size: 64, offset: 1280)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4420, file: !4421, line: 60, baseType: !307, size: 64, offset: 1344)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4420, file: !4421, line: 61, baseType: !4242, size: 64, offset: 1408)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4420, file: !4421, line: 62, baseType: !1457, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4420, file: !4421, line: 63, baseType: !1457, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4401, file: !101, line: 681, baseType: !1457, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4401, file: !101, line: 682, baseType: !1457, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4401, file: !101, line: 683, baseType: !1457, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4401, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4401, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4401, file: !101, line: 690, baseType: !1093, size: 512, offset: 640)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4401, file: !101, line: 691, baseType: !411, size: 64, offset: 1152)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4401, file: !101, line: 692, baseType: !2225, size: 256, offset: 1216)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4401, file: !101, line: 693, baseType: !943, size: 192, offset: 1472)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4401, file: !101, line: 694, baseType: !4428, size: 64, offset: 1664)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4401, file: !101, line: 695, baseType: !207, size: 32, offset: 1728)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4401, file: !101, line: 696, baseType: !207, size: 32, offset: 1760)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4401, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4401, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4401, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4401, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4401, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4401, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4401, file: !101, line: 703, baseType: !1457, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4401, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4401, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4401, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4401, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4401, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4401, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4401, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4401, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4401, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4401, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4401, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4401, file: !101, line: 715, baseType: !411, size: 64, offset: 2048)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4401, file: !101, line: 716, baseType: !411, size: 64, offset: 2112)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4401, file: !101, line: 717, baseType: !411, size: 64, offset: 2176)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4401, file: !101, line: 718, baseType: !411, size: 64, offset: 2240)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4401, file: !101, line: 720, baseType: !4480, size: 64, offset: 2304)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4482)
!4482 = !{!4483, !4484}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4481, file: !101, line: 633, baseType: !187, size: 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4481, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4401, file: !101, line: 721, baseType: !4486, size: 64, offset: 2368)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{null, !4242, !1400}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4401, file: !101, line: 722, baseType: !4490, size: 64, offset: 2432)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4243, file: !94, line: 727, baseType: !4493, size: 64, offset: 4224)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4495)
!4495 = !{!4496, !4497, !4498, !4502, !4503, !4504}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4494, file: !101, line: 743, baseType: !4276, size: 1472)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4494, file: !101, line: 744, baseType: !4279, size: 64, offset: 1472)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4494, file: !101, line: 745, baseType: !4499, size: 64, offset: 1536)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{null, !4242, !1457}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4494, file: !101, line: 746, baseType: !4279, size: 64, offset: 1600)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4494, file: !101, line: 747, baseType: !4270, size: 64, offset: 1664)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4494, file: !101, line: 748, baseType: !4270, size: 64, offset: 1728)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4243, file: !94, line: 736, baseType: !4506, size: 128, offset: 4288)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4507)
!4507 = !{!4508, !4512}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4506, file: !94, line: 531, baseType: !4509, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4511, line: 13, flags: DIFlagFwdDecl)
!4511 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4506, file: !94, line: 532, baseType: !4513, size: 64, offset: 64)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4243, file: !94, line: 738, baseType: !4516, size: 64, offset: 4416)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4518)
!4518 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4243, file: !94, line: 740, baseType: !4520, size: 64, offset: 4480)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4243, file: !94, line: 741, baseType: !411, size: 64, offset: 4544)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4243, file: !94, line: 746, baseType: !411, size: 64, offset: 4608)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4243, file: !94, line: 747, baseType: !4524, size: 64, offset: 4672)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4526)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4243, file: !94, line: 749, baseType: !4528, size: 64, offset: 4736)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4530)
!4530 = !{!4531, !4532, !4533}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4529, file: !94, line: 433, baseType: !7, size: 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4529, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4529, file: !94, line: 435, baseType: !307, size: 64, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4243, file: !94, line: 751, baseType: !157, size: 128, offset: 4800)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4243, file: !94, line: 762, baseType: !4536, size: 64, offset: 4928)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4243, file: !94, line: 770, baseType: !4539, offset: 4992)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4540, line: 5, elements: !541)
!4540 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4243, file: !94, line: 772, baseType: !4542, size: 64, offset: 4992)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4544, line: 18, flags: DIFlagFwdDecl)
!4544 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4243, file: !94, line: 773, baseType: !4546, size: 64, offset: 5056)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4548, line: 41, size: 512, elements: !4549)
!4548 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4549 = !{!4550, !4551, !4644, !4645, !4646, !4647}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4547, file: !4548, line: 42, baseType: !4546, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4547, file: !4548, line: 43, baseType: !4552, size: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4554)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4548, line: 125, size: 1408, elements: !4555)
!4555 = !{!4556, !4560, !4564, !4570, !4574, !4575, !4579, !4583, !4587, !4591, !4595, !4596, !4600, !4604, !4608, !4619, !4620, !4621, !4622, !4632, !4636, !4640}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4554, file: !4548, line: 126, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!4546, !4546}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4554, file: !4548, line: 127, baseType: !4561, size: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{null, !4546}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4554, file: !4548, line: 128, baseType: !4565, size: 64, offset: 128)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!1457, !4568}
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4547)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4554, file: !4548, line: 129, baseType: !4571, size: 64, offset: 192)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!2186, !4568, !4262}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4554, file: !4548, line: 131, baseType: !4565, size: 64, offset: 256)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4554, file: !4548, line: 133, baseType: !4576, size: 64, offset: 320)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!116, !4568}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4554, file: !4548, line: 134, baseType: !4580, size: 64, offset: 384)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!1457, !4568, !176}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4554, file: !4548, line: 136, baseType: !4584, size: 64, offset: 448)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!109, !4568, !176, !7, !329, !304}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4554, file: !4548, line: 141, baseType: !4588, size: 64, offset: 512)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!109, !4568, !176, !4159, !304}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4554, file: !4548, line: 144, baseType: !4592, size: 64, offset: 576)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!176, !4568}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4554, file: !4548, line: 145, baseType: !4592, size: 64, offset: 640)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4554, file: !4548, line: 146, baseType: !4597, size: 64, offset: 704)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!4546, !4568}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4554, file: !4548, line: 148, baseType: !4601, size: 64, offset: 768)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!4546, !4568, !4546}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4554, file: !4548, line: 151, baseType: !4605, size: 64, offset: 832)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!4546, !4568, !176}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4554, file: !4548, line: 153, baseType: !4609, size: 64, offset: 896)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!109, !4568, !176, !176, !7, !7, !4612}
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4548, line: 94, size: 640, elements: !4614)
!4614 = !{!4615, !4616, !4617}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4613, file: !4548, line: 95, baseType: !4546, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4613, file: !4548, line: 96, baseType: !7, size: 32, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4613, file: !4548, line: 97, baseType: !4618, size: 512, offset: 128)
!4618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 512, elements: !1136)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4554, file: !4548, line: 158, baseType: !4601, size: 64, offset: 960)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4554, file: !4548, line: 161, baseType: !4597, size: 64, offset: 1024)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4554, file: !4548, line: 163, baseType: !4557, size: 64, offset: 1088)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4554, file: !4548, line: 164, baseType: !4623, size: 64, offset: 1152)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!109, !4568, !4626}
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4548, line: 73, size: 128, elements: !4628)
!4628 = !{!4629, !4630, !4631}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4627, file: !4548, line: 74, baseType: !7, size: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4627, file: !4548, line: 75, baseType: !7, size: 32, offset: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4627, file: !4548, line: 76, baseType: !4568, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4554, file: !4548, line: 166, baseType: !4633, size: 64, offset: 1216)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!329, !4546, !109}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4554, file: !4548, line: 167, baseType: !4637, size: 64, offset: 1280)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!109, !4568, !7}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4554, file: !4548, line: 168, baseType: !4641, size: 64, offset: 1344)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!109, !4546}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4547, file: !4548, line: 44, baseType: !4242, size: 64, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4547, file: !4548, line: 45, baseType: !157, size: 128, offset: 192)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4547, file: !4548, line: 46, baseType: !157, size: 128, offset: 320)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4547, file: !4548, line: 47, baseType: !215, size: 8, offset: 448)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4243, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4243, file: !94, line: 778, baseType: !494, size: 32, offset: 5152)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4243, file: !94, line: 779, baseType: !407, size: 32, offset: 5184)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4243, file: !94, line: 781, baseType: !187, size: 32, offset: 5216)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4243, file: !94, line: 782, baseType: !157, size: 128, offset: 5248)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4243, file: !94, line: 784, baseType: !4654, size: 64, offset: 5376)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4656)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4657, line: 52, size: 768, elements: !4658)
!4657 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4658 = !{!4659, !4660, !4661, !4662, !4663, !4667, !4671, !4672, !4673, !4674, !4678, !4682}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4656, file: !4657, line: 53, baseType: !176, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4656, file: !4657, line: 55, baseType: !309, size: 64, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4656, file: !4657, line: 56, baseType: !309, size: 64, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4656, file: !4657, line: 58, baseType: !4259, size: 64, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4656, file: !4657, line: 59, baseType: !4664, size: 64, offset: 256)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!257, !4262, !4268}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4656, file: !4657, line: 61, baseType: !4668, size: 64, offset: 320)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{null, !4654}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4656, file: !4657, line: 62, baseType: !4270, size: 64, offset: 384)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4656, file: !4657, line: 64, baseType: !4279, size: 64, offset: 448)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4656, file: !4657, line: 66, baseType: !3709, size: 64, offset: 512)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4656, file: !4657, line: 67, baseType: !4675, size: 64, offset: 576)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!2186, !4262}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4656, file: !4657, line: 69, baseType: !4679, size: 64, offset: 640)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{null, !4262, !3742, !3743}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4656, file: !4657, line: 71, baseType: !4274, size: 64, offset: 704)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4243, file: !94, line: 785, baseType: !309, size: 64, offset: 5440)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4243, file: !94, line: 787, baseType: !4270, size: 64, offset: 5504)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4243, file: !94, line: 788, baseType: !4686, size: 64, offset: 5568)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4243, file: !94, line: 789, baseType: !4689, size: 64, offset: 5632)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4243, file: !94, line: 791, baseType: !4692, size: 64, offset: 5696)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4694)
!4694 = !{!4695, !4696, !4697, !4698, !4699}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4693, file: !94, line: 598, baseType: !122, size: 32)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4693, file: !94, line: 599, baseType: !131, size: 32, offset: 32)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4693, file: !94, line: 600, baseType: !136, size: 32, offset: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4693, file: !94, line: 601, baseType: !1457, size: 8, offset: 96)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4693, file: !94, line: 602, baseType: !1457, size: 8, offset: 104)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4243, file: !94, line: 793, baseType: !141, size: 32, offset: 5760)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4243, file: !94, line: 795, baseType: !1457, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4243, file: !94, line: 796, baseType: !1457, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4243, file: !94, line: 797, baseType: !1457, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4243, file: !94, line: 798, baseType: !1457, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4243, file: !94, line: 799, baseType: !1457, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !149, file: !148, line: 404, baseType: !147, size: 32, offset: 9536)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !149, file: !148, line: 407, baseType: !4243, size: 5824, offset: 9600)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "mdio_map", scope: !149, file: !148, line: 410, baseType: !4709, size: 2048, offset: 15424)
!4709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4710, size: 2048, elements: !420)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mdio_device", file: !4712, line: 28, size: 6592, elements: !4713)
!4712 = !DIFile(filename: "./include/linux/mdio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e329aaa4a41f6bd61bafcd94e0d6a6")
!4713 = !{!4714, !4715, !4716, !4717, !4718, !4722, !4723, !4724, !4725, !4729, !4732, !4733}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4711, file: !4712, line: 29, baseType: !4243, size: 5824)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4711, file: !4712, line: 31, baseType: !4198, size: 64, offset: 5824)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "modalias", scope: !4711, file: !4712, line: 32, baseType: !3204, size: 256, offset: 5888)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "bus_match", scope: !4711, file: !4712, line: 34, baseType: !4316, size: 64, offset: 6144)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !4711, file: !4712, line: 35, baseType: !4719, size: 64, offset: 6208)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{null, !4710}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "device_remove", scope: !4711, file: !4712, line: 36, baseType: !4719, size: 64, offset: 6272)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4711, file: !4712, line: 39, baseType: !109, size: 32, offset: 6336)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4711, file: !4712, line: 40, baseType: !109, size: 32, offset: 6368)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "reset_gpio", scope: !4711, file: !4712, line: 41, baseType: !4726, size: 64, offset: 6400)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4728, line: 13, flags: DIFlagFwdDecl)
!4728 = !DIFile(filename: "./include/linux/gpio/consumer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e733a07b83bb37557a58e5389456c49")
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ctrl", scope: !4711, file: !4712, line: 42, baseType: !4730, size: 64, offset: 6464)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control", file: !4712, line: 15, flags: DIFlagFwdDecl)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "reset_assert_delay", scope: !4711, file: !4712, line: 43, baseType: !7, size: 32, offset: 6528)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "reset_deassert_delay", scope: !4711, file: !4712, line: 44, baseType: !7, size: 32, offset: 6560)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "phy_mask", scope: !149, file: !148, line: 413, baseType: !407, size: 32, offset: 17472)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "phy_ignore_ta_mask", scope: !149, file: !148, line: 416, baseType: !407, size: 32, offset: 17504)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !149, file: !148, line: 422, baseType: !4737, size: 1024, offset: 17536)
!4737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1024, elements: !420)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "reset_delay_us", scope: !149, file: !148, line: 425, baseType: !109, size: 32, offset: 18560)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "reset_post_delay_us", scope: !149, file: !148, line: 427, baseType: !109, size: 32, offset: 18592)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "reset_gpiod", scope: !149, file: !148, line: 429, baseType: !4726, size: 64, offset: 18624)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "shared_lock", scope: !149, file: !148, line: 432, baseType: !637, size: 256, offset: 18688)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !149, file: !148, line: 435, baseType: !4743, size: 2048, offset: 18944)
!4743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4744, size: 2048, elements: !420)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_package_shared", file: !148, line: 340, size: 256, elements: !4746)
!4746 = !{!4747, !4748, !4749, !4750, !4751}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4745, file: !148, line: 341, baseType: !109, size: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4745, file: !148, line: 342, baseType: !979, size: 32, offset: 32)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4745, file: !148, line: 343, baseType: !307, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "priv_size", scope: !4745, file: !148, line: 344, baseType: !304, size: 64, offset: 128)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4745, file: !148, line: 352, baseType: !329, size: 64, offset: 192)
!4752 = !{!4753, !4754, !4755, !4756}
!4753 = !DIEnumerator(name: "MDIOBUS_ALLOCATED", value: 1)
!4754 = !DIEnumerator(name: "MDIOBUS_REGISTERED", value: 2)
!4755 = !DIEnumerator(name: "MDIOBUS_UNREGISTERED", value: 3)
!4756 = !DIEnumerator(name: "MDIOBUS_RELEASED", value: 4)
!4757 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4758, line: 10, baseType: !7, size: 32, elements: !4759)
!4758 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4759 = !{!4760, !4761}
!4760 = !DIEnumerator(name: "false", value: 0)
!4761 = !DIEnumerator(name: "true", value: 1)
!4762 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4763, line: 364, baseType: !7, size: 32, elements: !4764)
!4763 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4764 = !{!4765, !4766, !4767, !4768, !4769, !4770, !4771}
!4765 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!4766 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!4767 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!4768 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!4769 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!4770 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!4771 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!4772 = !{!329, !702, !4710, !4773, !4787, !307}
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mdio_driver", file: !4712, line: 66, size: 1408, elements: !4775)
!4775 = !{!4776, !4781, !4785, !4786}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "mdiodrv", scope: !4774, file: !4712, line: 67, baseType: !4777, size: 1216)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mdio_driver_common", file: !4712, line: 53, size: 1216, elements: !4778)
!4778 = !{!4779, !4780}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4777, file: !4712, line: 54, baseType: !4320, size: 1152)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4777, file: !4712, line: 55, baseType: !109, size: 32, offset: 1152)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4774, file: !4712, line: 73, baseType: !4782, size: 64, offset: 1216)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!109, !4710}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4774, file: !4712, line: 76, baseType: !4719, size: 64, offset: 1280)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4774, file: !4712, line: 79, baseType: !4719, size: 64, offset: 1344)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4788 = !{!0, !4789, !4791, !4793, !4798, !4800, !4802, !4804, !4809, !4811, !4813, !4818}
!4789 = !DIGlobalVariableExpression(var: !4790, expr: !DIExpression())
!4790 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !2726, isLocal: true, isDefinition: true)
!4791 = !DIGlobalVariableExpression(var: !4792, expr: !DIExpression())
!4792 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mdio_device_create339", scope: !2, file: !3, line: 72, type: !329, isLocal: true, isDefinition: true)
!4793 = !DIGlobalVariableExpression(var: !4794, expr: !DIExpression())
!4794 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !4795, isLocal: true, isDefinition: true)
!4795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 264, elements: !4796)
!4796 = !{!4797}
!4797 = !DISubrange(count: 33)
!4798 = !DIGlobalVariableExpression(var: !4799, expr: !DIExpression())
!4799 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mdio_device_register340", scope: !2, file: !3, line: 100, type: !329, isLocal: true, isDefinition: true)
!4800 = !DIGlobalVariableExpression(var: !4801, expr: !DIExpression())
!4801 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mdio_device_remove341", scope: !2, file: !3, line: 116, type: !329, isLocal: true, isDefinition: true)
!4802 = !DIGlobalVariableExpression(var: !4803, expr: !DIExpression())
!4803 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mdio_device_reset342", scope: !2, file: !3, line: 139, type: !329, isLocal: true, isDefinition: true)
!4804 = !DIGlobalVariableExpression(var: !4805, expr: !DIExpression())
!4805 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !4806, isLocal: true, isDefinition: true)
!4806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 368, elements: !4807)
!4807 = !{!4808}
!4808 = !DISubrange(count: 46)
!4809 = !DIGlobalVariableExpression(var: !4810, expr: !DIExpression())
!4810 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mdio_driver_register343", scope: !2, file: !3, line: 220, type: !329, isLocal: true, isDefinition: true)
!4811 = !DIGlobalVariableExpression(var: !4812, expr: !DIExpression())
!4812 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mdio_driver_unregister344", scope: !2, file: !3, line: 228, type: !329, isLocal: true, isDefinition: true)
!4813 = !DIGlobalVariableExpression(var: !4814, expr: !DIExpression())
!4814 = distinct !DIGlobalVariable(scope: null, file: !4763, line: 480, type: !4815, isLocal: true, isDefinition: true)
!4815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 168, elements: !4816)
!4816 = !{!4817}
!4817 = !DISubrange(count: 21)
!4818 = !DIGlobalVariableExpression(var: !4819, expr: !DIExpression())
!4819 = distinct !DIGlobalVariable(scope: null, file: !4728, line: 441, type: !4820, isLocal: true, isDefinition: true)
!4820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 240, elements: !4821)
!4821 = !{!4822}
!4822 = !DISubrange(count: 30)
!4823 = !{i32 7, !"Dwarf Version", i32 5}
!4824 = !{i32 2, !"Debug Info Version", i32 3}
!4825 = !{i32 1, !"wchar_size", i32 2}
!4826 = !{i32 8, !"cf-protection-branch", i32 1}
!4827 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4828 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4829 = !{i32 1, !"Code Model", i32 2}
!4830 = !{i32 1, !"override-stack-alignment", i32 8}
!4831 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4832 = distinct !DISubprogram(name: "mdio_device_free", scope: !3, file: !3, line: 26, type: !4720, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4833)
!4833 = !{!4834}
!4834 = !DILocalVariable(name: "mdiodev", arg: 1, scope: !4832, file: !3, line: 26, type: !4710)
!4835 = !DILocation(line: 26, column: 43, scope: !4832)
!4836 = !DILocation(line: 28, column: 14, scope: !4832)
!4837 = !DILocation(line: 28, column: 23, scope: !4832)
!4838 = !DILocation(line: 28, column: 2, scope: !4832)
!4839 = !DILocation(line: 29, column: 1, scope: !4832)
!4840 = !DISubprogram(name: "put_device", scope: !94, file: !94, line: 1231, type: !4271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4841 = distinct !DISubprogram(name: "mdio_device_bus_match", scope: !3, file: !3, line: 38, type: !4317, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4842)
!4842 = !{!4843, !4844, !4845, !4846}
!4843 = !DILocalVariable(name: "dev", arg: 1, scope: !4841, file: !3, line: 38, type: !4242)
!4844 = !DILocalVariable(name: "drv", arg: 2, scope: !4841, file: !3, line: 38, type: !4319)
!4845 = !DILocalVariable(name: "mdiodev", scope: !4841, file: !3, line: 40, type: !4710)
!4846 = !DILocalVariable(name: "mdiodrv", scope: !4841, file: !3, line: 41, type: !4773)
!4847 = !DILocation(line: 38, column: 42, scope: !4841)
!4848 = !DILocation(line: 38, column: 69, scope: !4841)
!4849 = !DILocation(line: 40, column: 2, scope: !4841)
!4850 = !DILocation(line: 40, column: 22, scope: !4841)
!4851 = !DILocation(line: 40, column: 47, scope: !4841)
!4852 = !DILocation(line: 40, column: 32, scope: !4841)
!4853 = !DILocation(line: 41, column: 2, scope: !4841)
!4854 = !DILocation(line: 41, column: 22, scope: !4841)
!4855 = !DILocation(line: 41, column: 47, scope: !4841)
!4856 = !DILocation(line: 41, column: 32, scope: !4841)
!4857 = !DILocation(line: 43, column: 6, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 43, column: 6)
!4859 = !DILocation(line: 43, column: 15, scope: !4858)
!4860 = !DILocation(line: 43, column: 23, scope: !4858)
!4861 = !DILocation(line: 43, column: 29, scope: !4858)
!4862 = !DILocation(line: 43, column: 6, scope: !4841)
!4863 = !DILocation(line: 44, column: 3, scope: !4858)
!4864 = !DILocation(line: 46, column: 16, scope: !4841)
!4865 = !DILocation(line: 46, column: 25, scope: !4841)
!4866 = !DILocation(line: 46, column: 35, scope: !4841)
!4867 = !DILocation(line: 46, column: 40, scope: !4841)
!4868 = !DILocation(line: 46, column: 9, scope: !4841)
!4869 = !DILocation(line: 46, column: 46, scope: !4841)
!4870 = !DILocation(line: 46, column: 2, scope: !4841)
!4871 = !DILocation(line: 47, column: 1, scope: !4841)
!4872 = distinct !DISubprogram(name: "to_mdio_device", scope: !4712, file: !4712, line: 47, type: !4873, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4875)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!4710, !4262}
!4875 = !{!4876, !4877}
!4876 = !DILocalVariable(name: "dev", arg: 1, scope: !4872, file: !4712, line: 47, type: !4262)
!4877 = !DILocalVariable(name: "__mptr", scope: !4878, file: !4712, line: 49, type: !329)
!4878 = distinct !DILexicalBlock(scope: !4872, file: !4712, line: 49, column: 9)
!4879 = !DILocation(line: 47, column: 71, scope: !4872)
!4880 = !DILocation(line: 49, column: 9, scope: !4878)
!4881 = !DILocation(line: 49, column: 9, scope: !4872)
!4882 = !DILocation(line: 49, column: 2, scope: !4872)
!4883 = distinct !DISubprogram(name: "to_mdio_driver", scope: !4712, file: !4712, line: 83, type: !4884, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4888)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!4773, !4886}
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4320)
!4888 = !{!4889, !4890}
!4889 = !DILocalVariable(name: "driver", arg: 1, scope: !4883, file: !4712, line: 83, type: !4886)
!4890 = !DILocalVariable(name: "__mptr", scope: !4891, file: !4712, line: 85, type: !329)
!4891 = distinct !DILexicalBlock(scope: !4883, file: !4712, line: 85, column: 9)
!4892 = !DILocation(line: 83, column: 44, scope: !4883)
!4893 = !DILocation(line: 85, column: 9, scope: !4891)
!4894 = !DILocation(line: 85, column: 9, scope: !4883)
!4895 = !DILocation(line: 85, column: 2, scope: !4883)
!4896 = !DISubprogram(name: "strcmp", scope: !4897, file: !4897, line: 88, type: !4898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4897 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!109, !176, !176}
!4900 = distinct !DISubprogram(name: "mdio_device_create", scope: !3, file: !3, line: 49, type: !4901, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4903)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!4710, !4198, !109}
!4903 = !{!4904, !4905, !4906}
!4904 = !DILocalVariable(name: "bus", arg: 1, scope: !4900, file: !3, line: 49, type: !4198)
!4905 = !DILocalVariable(name: "addr", arg: 2, scope: !4900, file: !3, line: 49, type: !109)
!4906 = !DILocalVariable(name: "mdiodev", scope: !4900, file: !3, line: 51, type: !4710)
!4907 = !DILocation(line: 49, column: 56, scope: !4900)
!4908 = !DILocation(line: 49, column: 65, scope: !4900)
!4909 = !DILocation(line: 51, column: 2, scope: !4900)
!4910 = !DILocation(line: 51, column: 22, scope: !4900)
!4911 = !DILocation(line: 54, column: 12, scope: !4900)
!4912 = !DILocation(line: 54, column: 10, scope: !4900)
!4913 = !DILocation(line: 55, column: 7, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 55, column: 6)
!4915 = !DILocation(line: 55, column: 6, scope: !4900)
!4916 = !DILocation(line: 56, column: 10, scope: !4914)
!4917 = !DILocation(line: 56, column: 3, scope: !4914)
!4918 = !DILocation(line: 58, column: 2, scope: !4900)
!4919 = !DILocation(line: 58, column: 11, scope: !4900)
!4920 = !DILocation(line: 58, column: 15, scope: !4900)
!4921 = !DILocation(line: 58, column: 23, scope: !4900)
!4922 = !DILocation(line: 59, column: 25, scope: !4900)
!4923 = !DILocation(line: 59, column: 30, scope: !4900)
!4924 = !DILocation(line: 59, column: 2, scope: !4900)
!4925 = !DILocation(line: 59, column: 11, scope: !4900)
!4926 = !DILocation(line: 59, column: 15, scope: !4900)
!4927 = !DILocation(line: 59, column: 22, scope: !4900)
!4928 = !DILocation(line: 60, column: 2, scope: !4900)
!4929 = !DILocation(line: 60, column: 11, scope: !4900)
!4930 = !DILocation(line: 60, column: 15, scope: !4900)
!4931 = !DILocation(line: 60, column: 19, scope: !4900)
!4932 = !DILocation(line: 61, column: 2, scope: !4900)
!4933 = !DILocation(line: 61, column: 11, scope: !4900)
!4934 = !DILocation(line: 61, column: 23, scope: !4900)
!4935 = !DILocation(line: 62, column: 2, scope: !4900)
!4936 = !DILocation(line: 62, column: 11, scope: !4900)
!4937 = !DILocation(line: 62, column: 25, scope: !4900)
!4938 = !DILocation(line: 63, column: 17, scope: !4900)
!4939 = !DILocation(line: 63, column: 2, scope: !4900)
!4940 = !DILocation(line: 63, column: 11, scope: !4900)
!4941 = !DILocation(line: 63, column: 15, scope: !4900)
!4942 = !DILocation(line: 64, column: 18, scope: !4900)
!4943 = !DILocation(line: 64, column: 2, scope: !4900)
!4944 = !DILocation(line: 64, column: 11, scope: !4900)
!4945 = !DILocation(line: 64, column: 16, scope: !4900)
!4946 = !DILocation(line: 66, column: 16, scope: !4900)
!4947 = !DILocation(line: 66, column: 25, scope: !4900)
!4948 = !DILocation(line: 66, column: 42, scope: !4900)
!4949 = !DILocation(line: 66, column: 47, scope: !4900)
!4950 = !DILocation(line: 66, column: 51, scope: !4900)
!4951 = !DILocation(line: 66, column: 2, scope: !4900)
!4952 = !DILocation(line: 68, column: 21, scope: !4900)
!4953 = !DILocation(line: 68, column: 30, scope: !4900)
!4954 = !DILocation(line: 68, column: 2, scope: !4900)
!4955 = !DILocation(line: 70, column: 9, scope: !4900)
!4956 = !DILocation(line: 70, column: 2, scope: !4900)
!4957 = !DILocation(line: 71, column: 1, scope: !4900)
!4958 = distinct !DISubprogram(name: "kzalloc", scope: !4763, file: !4763, line: 719, type: !4959, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4961)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!329, !304, !702}
!4961 = !{!4962, !4963}
!4962 = !DILocalVariable(name: "size", arg: 1, scope: !4958, file: !4763, line: 719, type: !304)
!4963 = !DILocalVariable(name: "flags", arg: 2, scope: !4958, file: !4763, line: 719, type: !702)
!4964 = !DILocation(line: 719, column: 52, scope: !4958)
!4965 = !DILocation(line: 719, column: 64, scope: !4958)
!4966 = !DILocation(line: 721, column: 17, scope: !4958)
!4967 = !DILocation(line: 721, column: 23, scope: !4958)
!4968 = !DILocation(line: 721, column: 29, scope: !4958)
!4969 = !DILocation(line: 721, column: 9, scope: !4958)
!4970 = !DILocation(line: 721, column: 2, scope: !4958)
!4971 = distinct !DISubprogram(name: "ERR_PTR", scope: !4972, file: !4972, line: 39, type: !4973, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4975)
!4972 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!329, !293}
!4975 = !{!4976}
!4976 = !DILocalVariable(name: "error", arg: 1, scope: !4971, file: !4972, line: 39, type: !293)
!4977 = !DILocation(line: 39, column: 48, scope: !4971)
!4978 = !DILocation(line: 41, column: 18, scope: !4971)
!4979 = !DILocation(line: 41, column: 9, scope: !4971)
!4980 = !DILocation(line: 41, column: 2, scope: !4971)
!4981 = distinct !DISubprogram(name: "mdio_device_release", scope: !3, file: !3, line: 32, type: !4271, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4982)
!4982 = !{!4983}
!4983 = !DILocalVariable(name: "dev", arg: 1, scope: !4981, file: !3, line: 32, type: !4242)
!4984 = !DILocation(line: 32, column: 48, scope: !4981)
!4985 = !DILocation(line: 34, column: 20, scope: !4981)
!4986 = !DILocation(line: 34, column: 25, scope: !4981)
!4987 = !DILocation(line: 34, column: 2, scope: !4981)
!4988 = !DILocation(line: 35, column: 23, scope: !4981)
!4989 = !DILocation(line: 35, column: 8, scope: !4981)
!4990 = !DILocation(line: 35, column: 2, scope: !4981)
!4991 = !DILocation(line: 36, column: 1, scope: !4981)
!4992 = distinct !DISubprogram(name: "mdio_device_remove", scope: !3, file: !3, line: 111, type: !4720, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4993)
!4993 = !{!4994}
!4994 = !DILocalVariable(name: "mdiodev", arg: 1, scope: !4992, file: !3, line: 111, type: !4710)
!4995 = !DILocation(line: 111, column: 45, scope: !4992)
!4996 = !DILocation(line: 113, column: 14, scope: !4992)
!4997 = !DILocation(line: 113, column: 23, scope: !4992)
!4998 = !DILocation(line: 113, column: 2, scope: !4992)
!4999 = !DILocation(line: 114, column: 28, scope: !4992)
!5000 = !DILocation(line: 114, column: 2, scope: !4992)
!5001 = !DILocation(line: 115, column: 1, scope: !4992)
!5002 = !DISubprogram(name: "dev_set_name", scope: !94, file: !94, line: 879, type: !5003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!109, !4242, !176, null}
!5005 = !DISubprogram(name: "device_initialize", scope: !94, file: !94, line: 1056, type: !4271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5006 = distinct !DISubprogram(name: "mdio_device_register", scope: !3, file: !3, line: 78, type: !4783, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5007)
!5007 = !{!5008, !5009, !5010}
!5008 = !DILocalVariable(name: "mdiodev", arg: 1, scope: !5006, file: !3, line: 78, type: !4710)
!5009 = !DILocalVariable(name: "err", scope: !5006, file: !3, line: 80, type: !109)
!5010 = !DILabel(scope: !5006, name: "out", file: !3, line: 96)
!5011 = !DILocation(line: 78, column: 46, scope: !5006)
!5012 = !DILocation(line: 80, column: 2, scope: !5006)
!5013 = !DILocation(line: 80, column: 6, scope: !5006)
!5014 = !DILocation(line: 84, column: 32, scope: !5006)
!5015 = !DILocation(line: 84, column: 8, scope: !5006)
!5016 = !DILocation(line: 84, column: 6, scope: !5006)
!5017 = !DILocation(line: 85, column: 6, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 85, column: 6)
!5019 = !DILocation(line: 85, column: 6, scope: !5006)
!5020 = !DILocation(line: 86, column: 10, scope: !5018)
!5021 = !DILocation(line: 86, column: 3, scope: !5018)
!5022 = !DILocation(line: 88, column: 20, scope: !5006)
!5023 = !DILocation(line: 88, column: 29, scope: !5006)
!5024 = !DILocation(line: 88, column: 8, scope: !5006)
!5025 = !DILocation(line: 88, column: 6, scope: !5006)
!5026 = !DILocation(line: 89, column: 6, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 89, column: 6)
!5028 = !DILocation(line: 89, column: 6, scope: !5006)
!5029 = !DILocation(line: 90, column: 3, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 90, column: 3)
!5031 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 89, column: 11)
!5032 = !DILocation(line: 90, column: 3, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 90, column: 3)
!5034 = !DILocation(line: 91, column: 3, scope: !5031)
!5035 = !DILocation(line: 94, column: 2, scope: !5006)
!5036 = !DILocation(line: 96, column: 2, scope: !5006)
!5037 = !DILocation(line: 97, column: 28, scope: !5006)
!5038 = !DILocation(line: 97, column: 2, scope: !5006)
!5039 = !DILocation(line: 98, column: 9, scope: !5006)
!5040 = !DILocation(line: 98, column: 2, scope: !5006)
!5041 = !DILocation(line: 99, column: 1, scope: !5006)
!5042 = !DISubprogram(name: "mdiobus_register_device", scope: !4712, file: !4712, line: 645, type: !4783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5043 = !DISubprogram(name: "device_add", scope: !94, file: !94, line: 1057, type: !4280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5044 = !DISubprogram(name: "_printk", scope: !5045, file: !5045, line: 153, type: !5046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5045 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!109, !176, null}
!5048 = !DISubprogram(name: "mdiobus_unregister_device", scope: !4712, file: !4712, line: 646, type: !4783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5049 = !DISubprogram(name: "device_del", scope: !94, file: !94, line: 1058, type: !4271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5050 = distinct !DISubprogram(name: "mdio_device_reset", scope: !3, file: !3, line: 118, type: !5051, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5053)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{null, !4710, !109}
!5053 = !{!5054, !5055, !5056}
!5054 = !DILocalVariable(name: "mdiodev", arg: 1, scope: !5050, file: !3, line: 118, type: !4710)
!5055 = !DILocalVariable(name: "value", arg: 2, scope: !5050, file: !3, line: 118, type: !109)
!5056 = !DILocalVariable(name: "d", scope: !5050, file: !3, line: 120, type: !7)
!5057 = !DILocation(line: 118, column: 44, scope: !5050)
!5058 = !DILocation(line: 118, column: 57, scope: !5050)
!5059 = !DILocation(line: 120, column: 2, scope: !5050)
!5060 = !DILocation(line: 120, column: 15, scope: !5050)
!5061 = !DILocation(line: 122, column: 7, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 122, column: 6)
!5063 = !DILocation(line: 122, column: 16, scope: !5062)
!5064 = !DILocation(line: 122, column: 27, scope: !5062)
!5065 = !DILocation(line: 122, column: 31, scope: !5062)
!5066 = !DILocation(line: 122, column: 40, scope: !5062)
!5067 = !DILocation(line: 122, column: 6, scope: !5050)
!5068 = !DILocation(line: 123, column: 3, scope: !5062)
!5069 = !DILocation(line: 125, column: 6, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 125, column: 6)
!5071 = !DILocation(line: 125, column: 15, scope: !5070)
!5072 = !DILocation(line: 125, column: 6, scope: !5050)
!5073 = !DILocation(line: 126, column: 28, scope: !5070)
!5074 = !DILocation(line: 126, column: 37, scope: !5070)
!5075 = !DILocation(line: 126, column: 49, scope: !5070)
!5076 = !DILocation(line: 126, column: 3, scope: !5070)
!5077 = !DILocation(line: 128, column: 6, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 128, column: 6)
!5079 = !DILocation(line: 128, column: 15, scope: !5078)
!5080 = !DILocation(line: 128, column: 6, scope: !5050)
!5081 = !DILocation(line: 129, column: 7, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 129, column: 7)
!5083 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 128, column: 27)
!5084 = !DILocation(line: 129, column: 7, scope: !5083)
!5085 = !DILocation(line: 130, column: 25, scope: !5082)
!5086 = !DILocation(line: 130, column: 34, scope: !5082)
!5087 = !DILocation(line: 130, column: 4, scope: !5082)
!5088 = !DILocation(line: 132, column: 27, scope: !5082)
!5089 = !DILocation(line: 132, column: 36, scope: !5082)
!5090 = !DILocation(line: 132, column: 4, scope: !5082)
!5091 = !DILocation(line: 133, column: 2, scope: !5083)
!5092 = !DILocation(line: 135, column: 6, scope: !5050)
!5093 = !DILocation(line: 135, column: 14, scope: !5050)
!5094 = !DILocation(line: 135, column: 23, scope: !5050)
!5095 = !DILocation(line: 135, column: 44, scope: !5050)
!5096 = !DILocation(line: 135, column: 53, scope: !5050)
!5097 = !DILocation(line: 135, column: 4, scope: !5050)
!5098 = !DILocation(line: 136, column: 6, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 136, column: 6)
!5100 = !DILocation(line: 136, column: 6, scope: !5050)
!5101 = !DILocation(line: 137, column: 10, scope: !5099)
!5102 = !DILocation(line: 137, column: 3, scope: !5099)
!5103 = !DILocation(line: 138, column: 1, scope: !5050)
!5104 = distinct !DISubprogram(name: "gpiod_set_value_cansleep", scope: !4728, file: !4728, line: 438, type: !5105, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5107)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{null, !4726, !109}
!5107 = !{!5108, !5109, !5110, !5112}
!5108 = !DILocalVariable(name: "desc", arg: 1, scope: !5104, file: !4728, line: 438, type: !4726)
!5109 = !DILocalVariable(name: "value", arg: 2, scope: !5104, file: !4728, line: 438, type: !109)
!5110 = !DILocalVariable(name: "__ret_warn_on", scope: !5111, file: !4728, line: 441, type: !109)
!5111 = distinct !DILexicalBlock(scope: !5104, file: !4728, line: 441, column: 2)
!5112 = !DILocalVariable(name: "__flags", scope: !5113, file: !4728, line: 441, type: !109)
!5113 = distinct !DILexicalBlock(scope: !5114, file: !4728, line: 441, column: 2)
!5114 = distinct !DILexicalBlock(scope: !5111, file: !4728, line: 441, column: 2)
!5115 = !DILocation(line: 438, column: 63, scope: !5104)
!5116 = !DILocation(line: 438, column: 73, scope: !5104)
!5117 = !DILocation(line: 441, column: 2, scope: !5111)
!5118 = !DILocation(line: 441, column: 2, scope: !5114)
!5119 = !DILocation(line: 441, column: 2, scope: !5113)
!5120 = !DILocation(line: 441, column: 2, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5113, file: !4728, line: 441, column: 2)
!5122 = !DILocation(line: 441, column: 2, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5113, file: !4728, line: 441, column: 2)
!5124 = !{i64 2150874153, i64 2150874182, i64 2150874228, i64 2150874286, i64 2150874340, i64 2150874394, i64 2150874449, i64 2150874480, i64 2150874788, i64 2150874794, i64 2150874841, i64 2150874864, i64 2150874890}
!5125 = !DILocation(line: 441, column: 2, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5113, file: !4728, line: 441, column: 2)
!5127 = !DILocation(line: 441, column: 2, scope: !5104)
!5128 = !DILocation(line: 442, column: 1, scope: !5104)
!5129 = distinct !DISubprogram(name: "reset_control_assert", scope: !5130, file: !5130, line: 84, type: !5131, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5133)
!5130 = !DIFile(filename: "./include/linux/reset.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f9525aa6ae6d48b56275d0de11862ac6")
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!109, !4730}
!5133 = !{!5134}
!5134 = !DILocalVariable(name: "rstc", arg: 1, scope: !5129, file: !5130, line: 84, type: !4730)
!5135 = !DILocation(line: 84, column: 62, scope: !5129)
!5136 = !DILocation(line: 86, column: 2, scope: !5129)
!5137 = distinct !DISubprogram(name: "reset_control_deassert", scope: !5130, file: !5130, line: 89, type: !5131, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5138)
!5138 = !{!5139}
!5139 = !DILocalVariable(name: "rstc", arg: 1, scope: !5137, file: !5130, line: 89, type: !4730)
!5140 = !DILocation(line: 89, column: 64, scope: !5137)
!5141 = !DILocation(line: 91, column: 2, scope: !5137)
!5142 = distinct !DISubprogram(name: "fsleep", scope: !5143, file: !5143, line: 82, type: !5144, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5146)
!5143 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!5144 = !DISubroutineType(types: !5145)
!5145 = !{null, !307}
!5146 = !{!5147}
!5147 = !DILocalVariable(name: "usecs", arg: 1, scope: !5142, file: !5143, line: 82, type: !307)
!5148 = !DILocation(line: 82, column: 41, scope: !5142)
!5149 = !DILocation(line: 84, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5142, file: !5143, line: 84, column: 6)
!5151 = !DILocation(line: 84, column: 12, scope: !5150)
!5152 = !DILocation(line: 84, column: 6, scope: !5142)
!5153 = !DILocation(line: 85, column: 3, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5155, file: !5143, line: 85, column: 3)
!5155 = distinct !DILexicalBlock(scope: !5150, file: !5143, line: 85, column: 3)
!5156 = !DILocation(line: 85, column: 3, scope: !5155)
!5157 = !DILocation(line: 85, column: 3, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5159, file: !5143, line: 85, column: 3)
!5159 = distinct !DILexicalBlock(scope: !5154, file: !5143, line: 85, column: 3)
!5160 = !DILocation(line: 85, column: 3, scope: !5159)
!5161 = !DILocation(line: 85, column: 3, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5154, file: !5143, line: 85, column: 3)
!5163 = !DILocation(line: 85, column: 3, scope: !5150)
!5164 = !DILocation(line: 86, column: 11, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5150, file: !5143, line: 86, column: 11)
!5166 = !DILocation(line: 86, column: 17, scope: !5165)
!5167 = !DILocation(line: 86, column: 11, scope: !5150)
!5168 = !DILocation(line: 87, column: 16, scope: !5165)
!5169 = !DILocation(line: 87, column: 27, scope: !5165)
!5170 = !DILocation(line: 87, column: 25, scope: !5165)
!5171 = !DILocation(line: 87, column: 3, scope: !5165)
!5172 = !DILocation(line: 89, column: 10, scope: !5165)
!5173 = !DILocation(line: 89, column: 3, scope: !5165)
!5174 = !DILocation(line: 90, column: 1, scope: !5142)
!5175 = distinct !DISubprogram(name: "mdio_driver_register", scope: !3, file: !3, line: 198, type: !5176, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5178)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!109, !4773}
!5178 = !{!5179, !5180, !5181}
!5179 = !DILocalVariable(name: "drv", arg: 1, scope: !5175, file: !3, line: 198, type: !4773)
!5180 = !DILocalVariable(name: "mdiodrv", scope: !5175, file: !3, line: 200, type: !4787)
!5181 = !DILocalVariable(name: "retval", scope: !5175, file: !3, line: 201, type: !109)
!5182 = !DILocation(line: 198, column: 46, scope: !5175)
!5183 = !DILocation(line: 200, column: 2, scope: !5175)
!5184 = !DILocation(line: 200, column: 29, scope: !5175)
!5185 = !DILocation(line: 200, column: 40, scope: !5175)
!5186 = !DILocation(line: 200, column: 45, scope: !5175)
!5187 = !DILocation(line: 201, column: 2, scope: !5175)
!5188 = !DILocation(line: 201, column: 6, scope: !5175)
!5189 = !DILocation(line: 203, column: 2, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 203, column: 2)
!5191 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 203, column: 2)
!5192 = !DILocation(line: 203, column: 2, scope: !5191)
!5193 = !DILocation(line: 205, column: 2, scope: !5175)
!5194 = !DILocation(line: 205, column: 11, scope: !5175)
!5195 = !DILocation(line: 205, column: 18, scope: !5175)
!5196 = !DILocation(line: 205, column: 22, scope: !5175)
!5197 = !DILocation(line: 206, column: 2, scope: !5175)
!5198 = !DILocation(line: 206, column: 11, scope: !5175)
!5199 = !DILocation(line: 206, column: 18, scope: !5175)
!5200 = !DILocation(line: 206, column: 24, scope: !5175)
!5201 = !DILocation(line: 207, column: 2, scope: !5175)
!5202 = !DILocation(line: 207, column: 11, scope: !5175)
!5203 = !DILocation(line: 207, column: 18, scope: !5175)
!5204 = !DILocation(line: 207, column: 25, scope: !5175)
!5205 = !DILocation(line: 208, column: 2, scope: !5175)
!5206 = !DILocation(line: 208, column: 11, scope: !5175)
!5207 = !DILocation(line: 208, column: 18, scope: !5175)
!5208 = !DILocation(line: 208, column: 27, scope: !5175)
!5209 = !DILocation(line: 210, column: 28, scope: !5175)
!5210 = !DILocation(line: 210, column: 37, scope: !5175)
!5211 = !DILocation(line: 210, column: 11, scope: !5175)
!5212 = !DILocation(line: 210, column: 9, scope: !5175)
!5213 = !DILocation(line: 211, column: 6, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 211, column: 6)
!5215 = !DILocation(line: 211, column: 6, scope: !5175)
!5216 = !DILocation(line: 212, column: 3, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 212, column: 3)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 211, column: 14)
!5219 = !DILocation(line: 212, column: 3, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 212, column: 3)
!5221 = !DILocation(line: 215, column: 10, scope: !5218)
!5222 = !DILocation(line: 215, column: 3, scope: !5218)
!5223 = !DILocation(line: 218, column: 2, scope: !5175)
!5224 = !DILocation(line: 219, column: 1, scope: !5175)
!5225 = distinct !DISubprogram(name: "mdio_probe", scope: !3, file: !3, line: 148, type: !4280, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5226)
!5226 = !{!5227, !5228, !5229, !5230, !5231}
!5227 = !DILocalVariable(name: "dev", arg: 1, scope: !5225, file: !3, line: 148, type: !4242)
!5228 = !DILocalVariable(name: "mdiodev", scope: !5225, file: !3, line: 150, type: !4710)
!5229 = !DILocalVariable(name: "drv", scope: !5225, file: !3, line: 151, type: !4319)
!5230 = !DILocalVariable(name: "mdiodrv", scope: !5225, file: !3, line: 152, type: !4773)
!5231 = !DILocalVariable(name: "err", scope: !5225, file: !3, line: 153, type: !109)
!5232 = !DILocation(line: 148, column: 38, scope: !5225)
!5233 = !DILocation(line: 150, column: 2, scope: !5225)
!5234 = !DILocation(line: 150, column: 22, scope: !5225)
!5235 = !DILocation(line: 150, column: 47, scope: !5225)
!5236 = !DILocation(line: 150, column: 32, scope: !5225)
!5237 = !DILocation(line: 151, column: 2, scope: !5225)
!5238 = !DILocation(line: 151, column: 24, scope: !5225)
!5239 = !DILocation(line: 151, column: 30, scope: !5225)
!5240 = !DILocation(line: 151, column: 39, scope: !5225)
!5241 = !DILocation(line: 151, column: 43, scope: !5225)
!5242 = !DILocation(line: 152, column: 2, scope: !5225)
!5243 = !DILocation(line: 152, column: 22, scope: !5225)
!5244 = !DILocation(line: 152, column: 47, scope: !5225)
!5245 = !DILocation(line: 152, column: 32, scope: !5225)
!5246 = !DILocation(line: 153, column: 2, scope: !5225)
!5247 = !DILocation(line: 153, column: 6, scope: !5225)
!5248 = !DILocation(line: 156, column: 20, scope: !5225)
!5249 = !DILocation(line: 156, column: 2, scope: !5225)
!5250 = !DILocation(line: 158, column: 6, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 158, column: 6)
!5252 = !DILocation(line: 158, column: 15, scope: !5251)
!5253 = !DILocation(line: 158, column: 6, scope: !5225)
!5254 = !DILocation(line: 159, column: 9, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 158, column: 22)
!5256 = !DILocation(line: 159, column: 18, scope: !5255)
!5257 = !DILocation(line: 159, column: 24, scope: !5255)
!5258 = !DILocation(line: 159, column: 7, scope: !5255)
!5259 = !DILocation(line: 160, column: 7, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5255, file: !3, line: 160, column: 7)
!5261 = !DILocation(line: 160, column: 7, scope: !5255)
!5262 = !DILocation(line: 162, column: 22, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 160, column: 12)
!5264 = !DILocation(line: 162, column: 4, scope: !5263)
!5265 = !DILocation(line: 163, column: 3, scope: !5263)
!5266 = !DILocation(line: 164, column: 2, scope: !5255)
!5267 = !DILocation(line: 166, column: 9, scope: !5225)
!5268 = !DILocation(line: 167, column: 1, scope: !5225)
!5269 = !DILocation(line: 166, column: 2, scope: !5225)
!5270 = distinct !DISubprogram(name: "mdio_remove", scope: !3, file: !3, line: 169, type: !4280, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5271)
!5271 = !{!5272, !5273, !5274, !5275}
!5272 = !DILocalVariable(name: "dev", arg: 1, scope: !5270, file: !3, line: 169, type: !4242)
!5273 = !DILocalVariable(name: "mdiodev", scope: !5270, file: !3, line: 171, type: !4710)
!5274 = !DILocalVariable(name: "drv", scope: !5270, file: !3, line: 172, type: !4319)
!5275 = !DILocalVariable(name: "mdiodrv", scope: !5270, file: !3, line: 173, type: !4773)
!5276 = !DILocation(line: 169, column: 39, scope: !5270)
!5277 = !DILocation(line: 171, column: 2, scope: !5270)
!5278 = !DILocation(line: 171, column: 22, scope: !5270)
!5279 = !DILocation(line: 171, column: 47, scope: !5270)
!5280 = !DILocation(line: 171, column: 32, scope: !5270)
!5281 = !DILocation(line: 172, column: 2, scope: !5270)
!5282 = !DILocation(line: 172, column: 24, scope: !5270)
!5283 = !DILocation(line: 172, column: 30, scope: !5270)
!5284 = !DILocation(line: 172, column: 39, scope: !5270)
!5285 = !DILocation(line: 172, column: 43, scope: !5270)
!5286 = !DILocation(line: 173, column: 2, scope: !5270)
!5287 = !DILocation(line: 173, column: 22, scope: !5270)
!5288 = !DILocation(line: 173, column: 47, scope: !5270)
!5289 = !DILocation(line: 173, column: 32, scope: !5270)
!5290 = !DILocation(line: 175, column: 6, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 175, column: 6)
!5292 = !DILocation(line: 175, column: 15, scope: !5291)
!5293 = !DILocation(line: 175, column: 6, scope: !5270)
!5294 = !DILocation(line: 176, column: 3, scope: !5291)
!5295 = !DILocation(line: 176, column: 12, scope: !5291)
!5296 = !DILocation(line: 176, column: 19, scope: !5291)
!5297 = !DILocation(line: 179, column: 20, scope: !5270)
!5298 = !DILocation(line: 179, column: 2, scope: !5270)
!5299 = !DILocation(line: 182, column: 1, scope: !5270)
!5300 = !DILocation(line: 181, column: 2, scope: !5270)
!5301 = distinct !DISubprogram(name: "mdio_shutdown", scope: !3, file: !3, line: 184, type: !4271, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5302)
!5302 = !{!5303, !5304, !5305, !5306}
!5303 = !DILocalVariable(name: "dev", arg: 1, scope: !5301, file: !3, line: 184, type: !4242)
!5304 = !DILocalVariable(name: "mdiodev", scope: !5301, file: !3, line: 186, type: !4710)
!5305 = !DILocalVariable(name: "drv", scope: !5301, file: !3, line: 187, type: !4319)
!5306 = !DILocalVariable(name: "mdiodrv", scope: !5301, file: !3, line: 188, type: !4773)
!5307 = !DILocation(line: 184, column: 42, scope: !5301)
!5308 = !DILocation(line: 186, column: 2, scope: !5301)
!5309 = !DILocation(line: 186, column: 22, scope: !5301)
!5310 = !DILocation(line: 186, column: 47, scope: !5301)
!5311 = !DILocation(line: 186, column: 32, scope: !5301)
!5312 = !DILocation(line: 187, column: 2, scope: !5301)
!5313 = !DILocation(line: 187, column: 24, scope: !5301)
!5314 = !DILocation(line: 187, column: 30, scope: !5301)
!5315 = !DILocation(line: 187, column: 39, scope: !5301)
!5316 = !DILocation(line: 187, column: 43, scope: !5301)
!5317 = !DILocation(line: 188, column: 2, scope: !5301)
!5318 = !DILocation(line: 188, column: 22, scope: !5301)
!5319 = !DILocation(line: 188, column: 47, scope: !5301)
!5320 = !DILocation(line: 188, column: 32, scope: !5301)
!5321 = !DILocation(line: 190, column: 6, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 190, column: 6)
!5323 = !DILocation(line: 190, column: 15, scope: !5322)
!5324 = !DILocation(line: 190, column: 6, scope: !5301)
!5325 = !DILocation(line: 191, column: 3, scope: !5322)
!5326 = !DILocation(line: 191, column: 12, scope: !5322)
!5327 = !DILocation(line: 191, column: 21, scope: !5322)
!5328 = !DILocation(line: 192, column: 1, scope: !5301)
!5329 = !DISubprogram(name: "driver_register", scope: !88, file: !88, line: 125, type: !5330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{!109, !4319}
!5332 = distinct !DISubprogram(name: "mdio_driver_unregister", scope: !3, file: !3, line: 222, type: !5333, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5335)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{null, !4773}
!5335 = !{!5336, !5337}
!5336 = !DILocalVariable(name: "drv", arg: 1, scope: !5332, file: !3, line: 222, type: !4773)
!5337 = !DILocalVariable(name: "mdiodrv", scope: !5332, file: !3, line: 224, type: !4787)
!5338 = !DILocation(line: 222, column: 49, scope: !5332)
!5339 = !DILocation(line: 224, column: 2, scope: !5332)
!5340 = !DILocation(line: 224, column: 29, scope: !5332)
!5341 = !DILocation(line: 224, column: 40, scope: !5332)
!5342 = !DILocation(line: 224, column: 45, scope: !5332)
!5343 = !DILocation(line: 226, column: 21, scope: !5332)
!5344 = !DILocation(line: 226, column: 30, scope: !5332)
!5345 = !DILocation(line: 226, column: 2, scope: !5332)
!5346 = !DILocation(line: 227, column: 1, scope: !5332)
!5347 = !DISubprogram(name: "driver_unregister", scope: !88, file: !88, line: 126, type: !5348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !4319}
!5350 = distinct !DISubprogram(name: "to_mdio_common_driver", scope: !4712, file: !4712, line: 60, type: !5351, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5353)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!4787, !4886}
!5353 = !{!5354, !5355}
!5354 = !DILocalVariable(name: "driver", arg: 1, scope: !5350, file: !4712, line: 60, type: !4886)
!5355 = !DILocalVariable(name: "__mptr", scope: !5356, file: !4712, line: 62, type: !329)
!5356 = distinct !DILexicalBlock(scope: !5350, file: !4712, line: 62, column: 9)
!5357 = !DILocation(line: 60, column: 51, scope: !5350)
!5358 = !DILocation(line: 62, column: 9, scope: !5356)
!5359 = !DILocation(line: 62, column: 9, scope: !5350)
!5360 = !DILocation(line: 62, column: 2, scope: !5350)
!5361 = distinct !DISubprogram(name: "kmalloc", scope: !4763, file: !4763, line: 591, type: !4959, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5362)
!5362 = !{!5363, !5364, !5365}
!5363 = !DILocalVariable(name: "size", arg: 1, scope: !5361, file: !4763, line: 591, type: !304)
!5364 = !DILocalVariable(name: "flags", arg: 2, scope: !5361, file: !4763, line: 591, type: !702)
!5365 = !DILocalVariable(name: "index", scope: !5366, file: !4763, line: 594, type: !7)
!5366 = distinct !DILexicalBlock(scope: !5367, file: !4763, line: 593, column: 42)
!5367 = distinct !DILexicalBlock(scope: !5361, file: !4763, line: 593, column: 6)
!5368 = !DILocation(line: 591, column: 61, scope: !5361)
!5369 = !DILocation(line: 591, column: 73, scope: !5361)
!5370 = !DILocation(line: 593, column: 27, scope: !5367)
!5371 = !DILocation(line: 593, column: 6, scope: !5367)
!5372 = !DILocation(line: 593, column: 33, scope: !5367)
!5373 = !DILocation(line: 593, column: 36, scope: !5367)
!5374 = !DILocation(line: 593, column: 6, scope: !5361)
!5375 = !DILocation(line: 594, column: 3, scope: !5366)
!5376 = !DILocation(line: 594, column: 16, scope: !5366)
!5377 = !DILocation(line: 596, column: 7, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5366, file: !4763, line: 596, column: 7)
!5379 = !DILocation(line: 596, column: 12, scope: !5378)
!5380 = !DILocation(line: 596, column: 7, scope: !5366)
!5381 = !DILocation(line: 597, column: 25, scope: !5378)
!5382 = !DILocation(line: 597, column: 31, scope: !5378)
!5383 = !DILocation(line: 597, column: 11, scope: !5378)
!5384 = !DILocation(line: 597, column: 4, scope: !5378)
!5385 = !DILocation(line: 599, column: 11, scope: !5366)
!5386 = !DILocation(line: 599, column: 9, scope: !5366)
!5387 = !DILocation(line: 601, column: 33, scope: !5366)
!5388 = !DILocation(line: 601, column: 40, scope: !5366)
!5389 = !DILocation(line: 601, column: 20, scope: !5366)
!5390 = !DILocation(line: 601, column: 5, scope: !5366)
!5391 = !DILocation(line: 601, column: 51, scope: !5366)
!5392 = !DILocation(line: 602, column: 5, scope: !5366)
!5393 = !DILocation(line: 602, column: 12, scope: !5366)
!5394 = !DILocation(line: 600, column: 10, scope: !5366)
!5395 = !DILocation(line: 600, column: 3, scope: !5366)
!5396 = !DILocation(line: 603, column: 2, scope: !5367)
!5397 = !DILocation(line: 604, column: 19, scope: !5361)
!5398 = !DILocation(line: 604, column: 25, scope: !5361)
!5399 = !DILocation(line: 604, column: 9, scope: !5361)
!5400 = !DILocation(line: 604, column: 2, scope: !5361)
!5401 = !DILocation(line: 605, column: 1, scope: !5361)
!5402 = !DISubprogram(name: "kmalloc_large", scope: !4763, file: !4763, line: 531, type: !4959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5403 = distinct !DISubprogram(name: "__kmalloc_index", scope: !4763, file: !4763, line: 444, type: !5404, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5406)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!7, !304, !1457}
!5406 = !{!5407, !5408}
!5407 = !DILocalVariable(name: "size", arg: 1, scope: !5403, file: !4763, line: 444, type: !304)
!5408 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5403, file: !4763, line: 445, type: !1457)
!5409 = !DILocation(line: 444, column: 60, scope: !5403)
!5410 = !DILocation(line: 445, column: 16, scope: !5403)
!5411 = !DILocation(line: 447, column: 7, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 447, column: 6)
!5413 = !DILocation(line: 447, column: 6, scope: !5403)
!5414 = !DILocation(line: 448, column: 3, scope: !5412)
!5415 = !DILocation(line: 450, column: 6, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 450, column: 6)
!5417 = !DILocation(line: 450, column: 11, scope: !5416)
!5418 = !DILocation(line: 450, column: 6, scope: !5403)
!5419 = !DILocation(line: 451, column: 3, scope: !5416)
!5420 = !DILocation(line: 453, column: 32, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 453, column: 6)
!5422 = !DILocation(line: 453, column: 37, scope: !5421)
!5423 = !DILocation(line: 453, column: 42, scope: !5421)
!5424 = !DILocation(line: 453, column: 45, scope: !5421)
!5425 = !DILocation(line: 453, column: 50, scope: !5421)
!5426 = !DILocation(line: 453, column: 6, scope: !5403)
!5427 = !DILocation(line: 454, column: 3, scope: !5421)
!5428 = !DILocation(line: 455, column: 32, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 455, column: 6)
!5430 = !DILocation(line: 455, column: 37, scope: !5429)
!5431 = !DILocation(line: 455, column: 43, scope: !5429)
!5432 = !DILocation(line: 455, column: 46, scope: !5429)
!5433 = !DILocation(line: 455, column: 51, scope: !5429)
!5434 = !DILocation(line: 455, column: 6, scope: !5403)
!5435 = !DILocation(line: 456, column: 3, scope: !5429)
!5436 = !DILocation(line: 457, column: 6, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 457, column: 6)
!5438 = !DILocation(line: 457, column: 11, scope: !5437)
!5439 = !DILocation(line: 457, column: 6, scope: !5403)
!5440 = !DILocation(line: 457, column: 26, scope: !5437)
!5441 = !DILocation(line: 458, column: 6, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 458, column: 6)
!5443 = !DILocation(line: 458, column: 11, scope: !5442)
!5444 = !DILocation(line: 458, column: 6, scope: !5403)
!5445 = !DILocation(line: 458, column: 26, scope: !5442)
!5446 = !DILocation(line: 459, column: 6, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 459, column: 6)
!5448 = !DILocation(line: 459, column: 11, scope: !5447)
!5449 = !DILocation(line: 459, column: 6, scope: !5403)
!5450 = !DILocation(line: 459, column: 26, scope: !5447)
!5451 = !DILocation(line: 460, column: 6, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 460, column: 6)
!5453 = !DILocation(line: 460, column: 11, scope: !5452)
!5454 = !DILocation(line: 460, column: 6, scope: !5403)
!5455 = !DILocation(line: 460, column: 26, scope: !5452)
!5456 = !DILocation(line: 461, column: 6, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 461, column: 6)
!5458 = !DILocation(line: 461, column: 11, scope: !5457)
!5459 = !DILocation(line: 461, column: 6, scope: !5403)
!5460 = !DILocation(line: 461, column: 26, scope: !5457)
!5461 = !DILocation(line: 462, column: 6, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 462, column: 6)
!5463 = !DILocation(line: 462, column: 11, scope: !5462)
!5464 = !DILocation(line: 462, column: 6, scope: !5403)
!5465 = !DILocation(line: 462, column: 26, scope: !5462)
!5466 = !DILocation(line: 463, column: 6, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 463, column: 6)
!5468 = !DILocation(line: 463, column: 11, scope: !5467)
!5469 = !DILocation(line: 463, column: 6, scope: !5403)
!5470 = !DILocation(line: 463, column: 26, scope: !5467)
!5471 = !DILocation(line: 464, column: 6, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 464, column: 6)
!5473 = !DILocation(line: 464, column: 11, scope: !5472)
!5474 = !DILocation(line: 464, column: 6, scope: !5403)
!5475 = !DILocation(line: 464, column: 26, scope: !5472)
!5476 = !DILocation(line: 465, column: 6, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 465, column: 6)
!5478 = !DILocation(line: 465, column: 11, scope: !5477)
!5479 = !DILocation(line: 465, column: 6, scope: !5403)
!5480 = !DILocation(line: 465, column: 26, scope: !5477)
!5481 = !DILocation(line: 466, column: 6, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 466, column: 6)
!5483 = !DILocation(line: 466, column: 11, scope: !5482)
!5484 = !DILocation(line: 466, column: 6, scope: !5403)
!5485 = !DILocation(line: 466, column: 26, scope: !5482)
!5486 = !DILocation(line: 467, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 467, column: 6)
!5488 = !DILocation(line: 467, column: 11, scope: !5487)
!5489 = !DILocation(line: 467, column: 6, scope: !5403)
!5490 = !DILocation(line: 467, column: 26, scope: !5487)
!5491 = !DILocation(line: 468, column: 6, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 468, column: 6)
!5493 = !DILocation(line: 468, column: 11, scope: !5492)
!5494 = !DILocation(line: 468, column: 6, scope: !5403)
!5495 = !DILocation(line: 468, column: 26, scope: !5492)
!5496 = !DILocation(line: 469, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 469, column: 6)
!5498 = !DILocation(line: 469, column: 11, scope: !5497)
!5499 = !DILocation(line: 469, column: 6, scope: !5403)
!5500 = !DILocation(line: 469, column: 26, scope: !5497)
!5501 = !DILocation(line: 470, column: 6, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 470, column: 6)
!5503 = !DILocation(line: 470, column: 11, scope: !5502)
!5504 = !DILocation(line: 470, column: 6, scope: !5403)
!5505 = !DILocation(line: 470, column: 26, scope: !5502)
!5506 = !DILocation(line: 471, column: 6, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 471, column: 6)
!5508 = !DILocation(line: 471, column: 11, scope: !5507)
!5509 = !DILocation(line: 471, column: 6, scope: !5403)
!5510 = !DILocation(line: 471, column: 26, scope: !5507)
!5511 = !DILocation(line: 472, column: 6, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 472, column: 6)
!5513 = !DILocation(line: 472, column: 11, scope: !5512)
!5514 = !DILocation(line: 472, column: 6, scope: !5403)
!5515 = !DILocation(line: 472, column: 26, scope: !5512)
!5516 = !DILocation(line: 473, column: 6, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 473, column: 6)
!5518 = !DILocation(line: 473, column: 11, scope: !5517)
!5519 = !DILocation(line: 473, column: 6, scope: !5403)
!5520 = !DILocation(line: 473, column: 26, scope: !5517)
!5521 = !DILocation(line: 474, column: 6, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 474, column: 6)
!5523 = !DILocation(line: 474, column: 11, scope: !5522)
!5524 = !DILocation(line: 474, column: 6, scope: !5403)
!5525 = !DILocation(line: 474, column: 27, scope: !5522)
!5526 = !DILocation(line: 475, column: 6, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 475, column: 6)
!5528 = !DILocation(line: 475, column: 11, scope: !5527)
!5529 = !DILocation(line: 475, column: 6, scope: !5403)
!5530 = !DILocation(line: 475, column: 32, scope: !5527)
!5531 = !DILocation(line: 477, column: 50, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5403, file: !4763, line: 477, column: 6)
!5533 = !{i8 0, i8 2}
!5534 = !DILocation(line: 477, column: 6, scope: !5403)
!5535 = !DILocation(line: 478, column: 3, scope: !5532)
!5536 = !DILocation(line: 478, column: 3, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5538, file: !4763, line: 478, column: 3)
!5538 = distinct !DILexicalBlock(scope: !5532, file: !4763, line: 478, column: 3)
!5539 = !{i32 -2141297153}
!5540 = !DILocation(line: 478, column: 3, scope: !5538)
!5541 = !DILocation(line: 480, column: 3, scope: !5532)
!5542 = !DILocation(line: 480, column: 3, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5532, file: !4763, line: 480, column: 3)
!5544 = !DILocation(line: 480, column: 3, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5543, file: !4763, line: 480, column: 3)
!5546 = !DILocation(line: 480, column: 3, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5543, file: !4763, line: 480, column: 3)
!5548 = !{i64 2153670346, i64 2153670375, i64 2153670421, i64 2153670479, i64 2153670533, i64 2153670587, i64 2153670642, i64 2153670673}
!5549 = !DILocation(line: 483, column: 2, scope: !5403)
!5550 = !DILocation(line: 484, column: 1, scope: !5403)
!5551 = !DISubprogram(name: "kmalloc_trace", scope: !4763, file: !4763, line: 525, type: !5552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{!329, !5554, !702, !304}
!5554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 64)
!5555 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5556, line: 325, flags: DIFlagFwdDecl)
!5556 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5557 = distinct !DISubprogram(name: "kmalloc_type", scope: !4763, file: !4763, line: 401, type: !5558, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5560)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{!4762, !702, !307}
!5560 = !{!5561, !5562}
!5561 = !DILocalVariable(name: "flags", arg: 1, scope: !5557, file: !4763, line: 401, type: !702)
!5562 = !DILocalVariable(name: "caller", arg: 2, scope: !5557, file: !4763, line: 401, type: !307)
!5563 = !DILocation(line: 401, column: 67, scope: !5557)
!5564 = !DILocation(line: 401, column: 88, scope: !5557)
!5565 = !DILocation(line: 407, column: 6, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5557, file: !4763, line: 407, column: 6)
!5567 = !DILocation(line: 407, column: 6, scope: !5557)
!5568 = !DILocation(line: 413, column: 3, scope: !5566)
!5569 = !DILocation(line: 423, column: 38, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5557, file: !4763, line: 423, column: 6)
!5571 = !DILocation(line: 423, column: 44, scope: !5570)
!5572 = !DILocation(line: 423, column: 6, scope: !5557)
!5573 = !DILocation(line: 424, column: 3, scope: !5570)
!5574 = !DILocation(line: 426, column: 3, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5557, file: !4763, line: 425, column: 6)
!5576 = !DILocation(line: 429, column: 1, scope: !5557)
!5577 = !DISubprogram(name: "__kmalloc", scope: !4763, file: !4763, line: 488, type: !4959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5578 = !DISubprogram(name: "__compiletime_assert_245", scope: !4763, file: !4763, line: 478, type: !2596, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5579 = !DISubprogram(name: "fwnode_handle_put", scope: !117, file: !117, line: 182, type: !4562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5580 = !DISubprogram(name: "kfree", scope: !4763, file: !4763, line: 227, type: !5581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{null, !2186}
!5583 = !DISubprogram(name: "__bad_udelay", scope: !5584, file: !5584, line: 6, type: !2596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5584 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!5585 = !DISubprogram(name: "__const_udelay", scope: !5584, file: !5584, line: 11, type: !5144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5586 = !DISubprogram(name: "__udelay", scope: !5584, file: !5584, line: 9, type: !5144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5587 = distinct !DISubprogram(name: "usleep_range", scope: !5143, file: !5143, line: 66, type: !5588, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5590)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{null, !307, !307}
!5590 = !{!5591, !5592}
!5591 = !DILocalVariable(name: "min", arg: 1, scope: !5587, file: !5143, line: 66, type: !307)
!5592 = !DILocalVariable(name: "max", arg: 2, scope: !5587, file: !5143, line: 66, type: !307)
!5593 = !DILocation(line: 66, column: 47, scope: !5587)
!5594 = !DILocation(line: 66, column: 66, scope: !5587)
!5595 = !DILocation(line: 68, column: 21, scope: !5587)
!5596 = !DILocation(line: 68, column: 26, scope: !5587)
!5597 = !DILocation(line: 68, column: 2, scope: !5587)
!5598 = !DILocation(line: 69, column: 1, scope: !5587)
!5599 = !DISubprogram(name: "msleep", scope: !5143, file: !5143, line: 61, type: !5600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{null, !7}
!5602 = !DISubprogram(name: "usleep_range_state", scope: !5143, file: !5143, line: 63, type: !5603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{null, !307, !307, !7}
