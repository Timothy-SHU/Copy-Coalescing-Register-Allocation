; ModuleID = 'drivers/pci/remove.c'
source_filename = "drivers/pci/remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_remove_bus: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_remove_bus ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_stop_and_remove_bus_device: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_stop_and_remove_bus_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_stop_and_remove_bus_device_locked: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_stop_and_remove_bus_device_locked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_stop_root_bus: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_stop_root_bus ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_remove_root_bus: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_remove_root_bus ; .previous"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
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
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [48 x i8], [0 x i64] }

@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 8
@__UNIQUE_ID___addressable_pci_remove_bus292 = internal global ptr @pci_remove_bus, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_pci_stop_and_remove_bus_device293 = internal global ptr @pci_stop_and_remove_bus_device, section ".discard.addressable", align 8, !dbg !4956
@__UNIQUE_ID___addressable_pci_stop_and_remove_bus_device_locked294 = internal global ptr @pci_stop_and_remove_bus_device_locked, section ".discard.addressable", align 8, !dbg !4958
@__UNIQUE_ID___addressable_pci_stop_root_bus295 = internal global ptr @pci_stop_root_bus, section ".discard.addressable", align 8, !dbg !4960
@__UNIQUE_ID___addressable_pci_remove_root_bus296 = internal global ptr @pci_remove_root_bus, section ".discard.addressable", align 8, !dbg !4962
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_pci_remove_bus292, ptr @__UNIQUE_ID___addressable_pci_stop_and_remove_bus_device293, ptr @__UNIQUE_ID___addressable_pci_stop_and_remove_bus_device_locked294, ptr @__UNIQUE_ID___addressable_pci_stop_root_bus295, ptr @__UNIQUE_ID___addressable_pci_remove_root_bus296], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_remove_bus(ptr noundef %bus) #0 align 16 !dbg !4973 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4975, metadata !DIExpression()), !dbg !4976
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4977
  %call = call i32 @pci_proc_detach_bus(ptr noundef %0) #8, !dbg !4978
  call void @down_write(ptr noundef @pci_bus_sem) #8, !dbg !4979
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !4980
  %node = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 0, !dbg !4981
  call void @list_del(ptr noundef %node) #8, !dbg !4982
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !4983
  call void @pci_bus_release_busn_res(ptr noundef %2) #8, !dbg !4984
  call void @up_write(ptr noundef @pci_bus_sem) #8, !dbg !4985
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !4986
  call void @pci_remove_legacy_files(ptr noundef %3) #8, !dbg !4987
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !4988
  %ops = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 9, !dbg !4990
  %5 = load ptr, ptr %ops, align 8, !dbg !4990
  %remove_bus = getelementptr inbounds %struct.pci_ops, ptr %5, i32 0, i32 1, !dbg !4991
  %6 = load ptr, ptr %remove_bus, align 8, !dbg !4991
  %tobool = icmp ne ptr %6, null, !dbg !4988
  br i1 %tobool, label %if.then, label %if.end, !dbg !4992

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !4993
  %ops1 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 9, !dbg !4994
  %8 = load ptr, ptr %ops1, align 8, !dbg !4994
  %remove_bus2 = getelementptr inbounds %struct.pci_ops, ptr %8, i32 0, i32 1, !dbg !4995
  %9 = load ptr, ptr %remove_bus2, align 8, !dbg !4995
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !4996
  call void %9(ptr noundef %10) #8, !dbg !4993
  br label %if.end, !dbg !4993

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !4997
  call void @pcibios_remove_bus(ptr noundef %11) #8, !dbg !4998
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !4999
  %dev = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 20, !dbg !5000
  call void @device_unregister(ptr noundef %dev) #8, !dbg !5001
  ret void, !dbg !5002
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5003 dso_local i32 @pci_proc_detach_bus(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5004 dso_local void @down_write(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !5008 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5015
  call void @__list_del_entry(ptr noundef %0) #8, !dbg !5016
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5017
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5018
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5019
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5020
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5021
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5022
  ret void, !dbg !5023
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5024 dso_local void @pci_bus_release_busn_res(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5025 dso_local void @up_write(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_remove_legacy_files(ptr noundef %bus) #3 align 16 !dbg !5026 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  ret void, !dbg !5030
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5031 dso_local void @pcibios_remove_bus(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5032 dso_local void @device_unregister(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_stop_and_remove_bus_device(ptr noundef %dev) #0 align 16 !dbg !5033 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5037
  call void @pci_stop_bus_device(ptr noundef %0) #8, !dbg !5038
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5039
  call void @pci_remove_bus_device(ptr noundef %1) #8, !dbg !5040
  ret void, !dbg !5041
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_stop_bus_device(ptr noundef %dev) #0 align 16 !dbg !5042 {
entry:
  %dev.addr = alloca ptr, align 8
  %bus = alloca ptr, align 8
  %child = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5044, metadata !DIExpression()), !dbg !5058
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #9, !dbg !5059
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5045, metadata !DIExpression()), !dbg !5060
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5061
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2, !dbg !5062
  %1 = load ptr, ptr %subordinate, align 8, !dbg !5062
  store ptr %1, ptr %bus, align 8, !dbg !5060
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #9, !dbg !5063
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5046, metadata !DIExpression()), !dbg !5064
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !5063
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5047, metadata !DIExpression()), !dbg !5065
  %2 = load ptr, ptr %bus, align 8, !dbg !5066
  %tobool = icmp ne ptr %2, null, !dbg !5066
  br i1 %tobool, label %if.then, label %if.end, !dbg !5067

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5068
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5048, metadata !DIExpression()), !dbg !5068
  %3 = load ptr, ptr %bus, align 8, !dbg !5068
  %devices = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 3, !dbg !5068
  %prev = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 1, !dbg !5068
  %4 = load ptr, ptr %prev, align 8, !dbg !5068
  store ptr %4, ptr %__mptr, align 8, !dbg !5068
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5068
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !5068
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5068
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5069
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5068
  store ptr %6, ptr %child, align 8, !dbg !5069
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #9, !dbg !5070
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5053, metadata !DIExpression()), !dbg !5070
  %7 = load ptr, ptr %child, align 8, !dbg !5070
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 0, !dbg !5070
  %prev3 = getelementptr inbounds %struct.list_head, ptr %bus_list, i32 0, i32 1, !dbg !5070
  %8 = load ptr, ptr %prev3, align 8, !dbg !5070
  store ptr %8, ptr %__mptr2, align 8, !dbg !5070
  %9 = load ptr, ptr %__mptr2, align 8, !dbg !5070
  %add.ptr5 = getelementptr i8, ptr %9, i64 0, !dbg !5070
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !5070
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #9, !dbg !5069
  %10 = load ptr, ptr %tmp4, align 8, !dbg !5070
  store ptr %10, ptr %tmp, align 8, !dbg !5069
  br label %for.cond, !dbg !5069

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load ptr, ptr %child, align 8, !dbg !5071
  %bus_list6 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 0, !dbg !5071
  %12 = load ptr, ptr %bus, align 8, !dbg !5071
  %devices7 = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 3, !dbg !5071
  %cmp = icmp eq ptr %bus_list6, %devices7, !dbg !5071
  %lnot = xor i1 %cmp, true, !dbg !5071
  br i1 %lnot, label %for.body, label %for.end, !dbg !5069

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %child, align 8, !dbg !5072
  call void @pci_stop_bus_device(ptr noundef %13) #8, !dbg !5073
  br label %for.inc, !dbg !5073

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr %tmp, align 8, !dbg !5071
  store ptr %14, ptr %child, align 8, !dbg !5071
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #9, !dbg !5074
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !5055, metadata !DIExpression()), !dbg !5074
  %15 = load ptr, ptr %tmp, align 8, !dbg !5074
  %bus_list9 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 0, !dbg !5074
  %prev10 = getelementptr inbounds %struct.list_head, ptr %bus_list9, i32 0, i32 1, !dbg !5074
  %16 = load ptr, ptr %prev10, align 8, !dbg !5074
  store ptr %16, ptr %__mptr8, align 8, !dbg !5074
  %17 = load ptr, ptr %__mptr8, align 8, !dbg !5074
  %add.ptr12 = getelementptr i8, ptr %17, i64 0, !dbg !5074
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !5074
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #9, !dbg !5071
  %18 = load ptr, ptr %tmp11, align 8, !dbg !5074
  store ptr %18, ptr %tmp, align 8, !dbg !5071
  br label %for.cond, !dbg !5071, !llvm.loop !5075

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !5079

if.end:                                           ; preds = %for.end, %entry
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !5080
  call void @pci_stop_dev(ptr noundef %19) #8, !dbg !5081
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !5082
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #9, !dbg !5082
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #9, !dbg !5082
  ret void, !dbg !5082
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_remove_bus_device(ptr noundef %dev) #0 align 16 !dbg !5083 {
entry:
  %dev.addr = alloca ptr, align 8
  %bus = alloca ptr, align 8
  %child = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5085, metadata !DIExpression()), !dbg !5099
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #9, !dbg !5100
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5086, metadata !DIExpression()), !dbg !5101
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5102
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2, !dbg !5103
  %1 = load ptr, ptr %subordinate, align 8, !dbg !5103
  store ptr %1, ptr %bus, align 8, !dbg !5101
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #9, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5087, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5088, metadata !DIExpression()), !dbg !5106
  %2 = load ptr, ptr %bus, align 8, !dbg !5107
  %tobool = icmp ne ptr %2, null, !dbg !5107
  br i1 %tobool, label %if.then, label %if.end, !dbg !5108

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5109
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5089, metadata !DIExpression()), !dbg !5109
  %3 = load ptr, ptr %bus, align 8, !dbg !5109
  %devices = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 3, !dbg !5109
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5109
  %4 = load ptr, ptr %next, align 8, !dbg !5109
  store ptr %4, ptr %__mptr, align 8, !dbg !5109
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5109
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !5109
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5109
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5110
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5109
  store ptr %6, ptr %child, align 8, !dbg !5110
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #9, !dbg !5111
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5094, metadata !DIExpression()), !dbg !5111
  %7 = load ptr, ptr %child, align 8, !dbg !5111
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 0, !dbg !5111
  %next3 = getelementptr inbounds %struct.list_head, ptr %bus_list, i32 0, i32 0, !dbg !5111
  %8 = load ptr, ptr %next3, align 8, !dbg !5111
  store ptr %8, ptr %__mptr2, align 8, !dbg !5111
  %9 = load ptr, ptr %__mptr2, align 8, !dbg !5111
  %add.ptr5 = getelementptr i8, ptr %9, i64 0, !dbg !5111
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !5111
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #9, !dbg !5110
  %10 = load ptr, ptr %tmp4, align 8, !dbg !5111
  store ptr %10, ptr %tmp, align 8, !dbg !5110
  br label %for.cond, !dbg !5110

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load ptr, ptr %child, align 8, !dbg !5112
  %bus_list6 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 0, !dbg !5112
  %12 = load ptr, ptr %bus, align 8, !dbg !5112
  %devices7 = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 3, !dbg !5112
  %cmp = icmp eq ptr %bus_list6, %devices7, !dbg !5112
  %lnot = xor i1 %cmp, true, !dbg !5112
  br i1 %lnot, label %for.body, label %for.end, !dbg !5110

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %child, align 8, !dbg !5113
  call void @pci_remove_bus_device(ptr noundef %13) #8, !dbg !5114
  br label %for.inc, !dbg !5114

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr %tmp, align 8, !dbg !5112
  store ptr %14, ptr %child, align 8, !dbg !5112
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #9, !dbg !5115
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !5096, metadata !DIExpression()), !dbg !5115
  %15 = load ptr, ptr %tmp, align 8, !dbg !5115
  %bus_list9 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 0, !dbg !5115
  %next10 = getelementptr inbounds %struct.list_head, ptr %bus_list9, i32 0, i32 0, !dbg !5115
  %16 = load ptr, ptr %next10, align 8, !dbg !5115
  store ptr %16, ptr %__mptr8, align 8, !dbg !5115
  %17 = load ptr, ptr %__mptr8, align 8, !dbg !5115
  %add.ptr12 = getelementptr i8, ptr %17, i64 0, !dbg !5115
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !5115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #9, !dbg !5112
  %18 = load ptr, ptr %tmp11, align 8, !dbg !5115
  store ptr %18, ptr %tmp, align 8, !dbg !5112
  br label %for.cond, !dbg !5112, !llvm.loop !5116

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %bus, align 8, !dbg !5118
  call void @pci_remove_bus(ptr noundef %19) #8, !dbg !5119
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !5120
  %subordinate13 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 2, !dbg !5121
  store ptr null, ptr %subordinate13, align 8, !dbg !5122
  br label %if.end, !dbg !5123

if.end:                                           ; preds = %for.end, %entry
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5124
  call void @pci_destroy_dev(ptr noundef %21) #8, !dbg !5125
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !5126
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #9, !dbg !5126
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #9, !dbg !5126
  ret void, !dbg !5126
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_stop_and_remove_bus_device_locked(ptr noundef %dev) #0 align 16 !dbg !5127 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  call void @pci_lock_rescan_remove() #8, !dbg !5131
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5132
  call void @pci_stop_and_remove_bus_device(ptr noundef %0) #8, !dbg !5133
  call void @pci_unlock_rescan_remove() #8, !dbg !5134
  ret void, !dbg !5135
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5136 dso_local void @pci_lock_rescan_remove() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5137 dso_local void @pci_unlock_rescan_remove() #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_stop_root_bus(ptr noundef %bus) #0 align 16 !dbg !5138 {
entry:
  %bus.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %host_bridge = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5140, metadata !DIExpression()), !dbg !5154
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #9, !dbg !5155
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5141, metadata !DIExpression()), !dbg !5156
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !5155
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5142, metadata !DIExpression()), !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %host_bridge) #9, !dbg !5158
  call void @llvm.dbg.declare(metadata ptr %host_bridge, metadata !5143, metadata !DIExpression()), !dbg !5159
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5160
  %call = call zeroext i1 @pci_is_root_bus(ptr noundef %0) #8, !dbg !5162
  br i1 %call, label %if.end, label %if.then, !dbg !5163

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5164

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5144, metadata !DIExpression()), !dbg !5165
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5165
  %bridge = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 19, !dbg !5165
  %2 = load ptr, ptr %bridge, align 8, !dbg !5165
  store ptr %2, ptr %__mptr, align 8, !dbg !5165
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5165
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5165
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5165
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5166
  %4 = load ptr, ptr %tmp1, align 8, !dbg !5165
  store ptr %4, ptr %host_bridge, align 8, !dbg !5167
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #9, !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5146, metadata !DIExpression()), !dbg !5168
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5168
  %devices = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3, !dbg !5168
  %prev = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 1, !dbg !5168
  %6 = load ptr, ptr %prev, align 8, !dbg !5168
  store ptr %6, ptr %__mptr2, align 8, !dbg !5168
  %7 = load ptr, ptr %__mptr2, align 8, !dbg !5168
  %add.ptr4 = getelementptr i8, ptr %7, i64 0, !dbg !5168
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5168
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #9, !dbg !5169
  %8 = load ptr, ptr %tmp3, align 8, !dbg !5168
  store ptr %8, ptr %child, align 8, !dbg !5169
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #9, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5149, metadata !DIExpression()), !dbg !5170
  %9 = load ptr, ptr %child, align 8, !dbg !5170
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 0, !dbg !5170
  %prev6 = getelementptr inbounds %struct.list_head, ptr %bus_list, i32 0, i32 1, !dbg !5170
  %10 = load ptr, ptr %prev6, align 8, !dbg !5170
  store ptr %10, ptr %__mptr5, align 8, !dbg !5170
  %11 = load ptr, ptr %__mptr5, align 8, !dbg !5170
  %add.ptr8 = getelementptr i8, ptr %11, i64 0, !dbg !5170
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5170
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #9, !dbg !5169
  %12 = load ptr, ptr %tmp7, align 8, !dbg !5170
  store ptr %12, ptr %tmp, align 8, !dbg !5169
  br label %for.cond, !dbg !5169

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load ptr, ptr %child, align 8, !dbg !5171
  %bus_list9 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 0, !dbg !5171
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !5171
  %devices10 = getelementptr inbounds %struct.pci_bus, ptr %14, i32 0, i32 3, !dbg !5171
  %cmp = icmp eq ptr %bus_list9, %devices10, !dbg !5171
  %lnot = xor i1 %cmp, true, !dbg !5171
  br i1 %lnot, label %for.body, label %for.end, !dbg !5169

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %child, align 8, !dbg !5172
  call void @pci_stop_bus_device(ptr noundef %15) #8, !dbg !5173
  br label %for.inc, !dbg !5173

for.inc:                                          ; preds = %for.body
  %16 = load ptr, ptr %tmp, align 8, !dbg !5171
  store ptr %16, ptr %child, align 8, !dbg !5171
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #9, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !5151, metadata !DIExpression()), !dbg !5174
  %17 = load ptr, ptr %tmp, align 8, !dbg !5174
  %bus_list12 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 0, !dbg !5174
  %prev13 = getelementptr inbounds %struct.list_head, ptr %bus_list12, i32 0, i32 1, !dbg !5174
  %18 = load ptr, ptr %prev13, align 8, !dbg !5174
  store ptr %18, ptr %__mptr11, align 8, !dbg !5174
  %19 = load ptr, ptr %__mptr11, align 8, !dbg !5174
  %add.ptr15 = getelementptr i8, ptr %19, i64 0, !dbg !5174
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !5174
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #9, !dbg !5171
  %20 = load ptr, ptr %tmp14, align 8, !dbg !5174
  store ptr %20, ptr %tmp, align 8, !dbg !5171
  br label %for.cond, !dbg !5171, !llvm.loop !5175

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %host_bridge, align 8, !dbg !5177
  %dev = getelementptr inbounds %struct.pci_host_bridge, ptr %21, i32 0, i32 0, !dbg !5178
  call void @device_release_driver(ptr noundef %dev) #8, !dbg !5179
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5180
  br label %cleanup, !dbg !5180

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %host_bridge) #9, !dbg !5180
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !5180
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #9, !dbg !5180
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5180

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_root_bus(ptr noundef %pbus) #3 align 16 !dbg !5181 {
entry:
  %pbus.addr = alloca ptr, align 8
  store ptr %pbus, ptr %pbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pbus.addr, metadata !5185, metadata !DIExpression()), !dbg !5186
  %0 = load ptr, ptr %pbus.addr, align 8, !dbg !5187
  %parent = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1, !dbg !5188
  %1 = load ptr, ptr %parent, align 8, !dbg !5188
  %tobool = icmp ne ptr %1, null, !dbg !5189
  %lnot = xor i1 %tobool, true, !dbg !5189
  ret i1 %lnot, !dbg !5190
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5191 dso_local void @device_release_driver(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_remove_root_bus(ptr noundef %bus) #0 align 16 !dbg !5192 {
entry:
  %bus.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %host_bridge = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5194, metadata !DIExpression()), !dbg !5208
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #9, !dbg !5209
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5195, metadata !DIExpression()), !dbg !5210
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !5209
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5196, metadata !DIExpression()), !dbg !5211
  call void @llvm.lifetime.start.p0(i64 8, ptr %host_bridge) #9, !dbg !5212
  call void @llvm.dbg.declare(metadata ptr %host_bridge, metadata !5197, metadata !DIExpression()), !dbg !5213
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5214
  %call = call zeroext i1 @pci_is_root_bus(ptr noundef %0) #8, !dbg !5216
  br i1 %call, label %if.end, label %if.then, !dbg !5217

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5218

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5219
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5198, metadata !DIExpression()), !dbg !5219
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5219
  %bridge = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 19, !dbg !5219
  %2 = load ptr, ptr %bridge, align 8, !dbg !5219
  store ptr %2, ptr %__mptr, align 8, !dbg !5219
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5219
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5219
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5219
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5220
  %4 = load ptr, ptr %tmp1, align 8, !dbg !5219
  store ptr %4, ptr %host_bridge, align 8, !dbg !5221
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #9, !dbg !5222
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5200, metadata !DIExpression()), !dbg !5222
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5222
  %devices = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3, !dbg !5222
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5222
  %6 = load ptr, ptr %next, align 8, !dbg !5222
  store ptr %6, ptr %__mptr2, align 8, !dbg !5222
  %7 = load ptr, ptr %__mptr2, align 8, !dbg !5222
  %add.ptr4 = getelementptr i8, ptr %7, i64 0, !dbg !5222
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5222
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #9, !dbg !5223
  %8 = load ptr, ptr %tmp3, align 8, !dbg !5222
  store ptr %8, ptr %child, align 8, !dbg !5223
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #9, !dbg !5224
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5203, metadata !DIExpression()), !dbg !5224
  %9 = load ptr, ptr %child, align 8, !dbg !5224
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 0, !dbg !5224
  %next6 = getelementptr inbounds %struct.list_head, ptr %bus_list, i32 0, i32 0, !dbg !5224
  %10 = load ptr, ptr %next6, align 8, !dbg !5224
  store ptr %10, ptr %__mptr5, align 8, !dbg !5224
  %11 = load ptr, ptr %__mptr5, align 8, !dbg !5224
  %add.ptr8 = getelementptr i8, ptr %11, i64 0, !dbg !5224
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #9, !dbg !5223
  %12 = load ptr, ptr %tmp7, align 8, !dbg !5224
  store ptr %12, ptr %tmp, align 8, !dbg !5223
  br label %for.cond, !dbg !5223

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load ptr, ptr %child, align 8, !dbg !5225
  %bus_list9 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 0, !dbg !5225
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !5225
  %devices10 = getelementptr inbounds %struct.pci_bus, ptr %14, i32 0, i32 3, !dbg !5225
  %cmp = icmp eq ptr %bus_list9, %devices10, !dbg !5225
  %lnot = xor i1 %cmp, true, !dbg !5225
  br i1 %lnot, label %for.body, label %for.end, !dbg !5223

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %child, align 8, !dbg !5226
  call void @pci_remove_bus_device(ptr noundef %15) #8, !dbg !5227
  br label %for.inc, !dbg !5227

for.inc:                                          ; preds = %for.body
  %16 = load ptr, ptr %tmp, align 8, !dbg !5225
  store ptr %16, ptr %child, align 8, !dbg !5225
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #9, !dbg !5228
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !5205, metadata !DIExpression()), !dbg !5228
  %17 = load ptr, ptr %tmp, align 8, !dbg !5228
  %bus_list12 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 0, !dbg !5228
  %next13 = getelementptr inbounds %struct.list_head, ptr %bus_list12, i32 0, i32 0, !dbg !5228
  %18 = load ptr, ptr %next13, align 8, !dbg !5228
  store ptr %18, ptr %__mptr11, align 8, !dbg !5228
  %19 = load ptr, ptr %__mptr11, align 8, !dbg !5228
  %add.ptr15 = getelementptr i8, ptr %19, i64 0, !dbg !5228
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !5228
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #9, !dbg !5225
  %20 = load ptr, ptr %tmp14, align 8, !dbg !5228
  store ptr %20, ptr %tmp, align 8, !dbg !5225
  br label %for.cond, !dbg !5225, !llvm.loop !5229

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %bus.addr, align 8, !dbg !5231
  call void @pci_remove_bus(ptr noundef %21) #8, !dbg !5232
  %22 = load ptr, ptr %host_bridge, align 8, !dbg !5233
  %bus16 = getelementptr inbounds %struct.pci_host_bridge, ptr %22, i32 0, i32 1, !dbg !5234
  store ptr null, ptr %bus16, align 8, !dbg !5235
  %23 = load ptr, ptr %host_bridge, align 8, !dbg !5236
  %dev = getelementptr inbounds %struct.pci_host_bridge, ptr %23, i32 0, i32 0, !dbg !5237
  call void @device_del(ptr noundef %dev) #8, !dbg !5238
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5239
  br label %cleanup, !dbg !5239

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %host_bridge) #9, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #9, !dbg !5239
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5239

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5240 dso_local void @device_del(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !5241 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5245
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #8, !dbg !5247
  br i1 %call, label %if.end, label %if.then, !dbg !5248

if.then:                                          ; preds = %entry
  br label %return, !dbg !5249

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5250
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5251
  %2 = load ptr, ptr %prev, align 8, !dbg !5251
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5252
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5253
  %4 = load ptr, ptr %next, align 8, !dbg !5253
  call void @__list_del(ptr noundef %2, ptr noundef %4) #8, !dbg !5254
  br label %return, !dbg !5255

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5255
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !5256 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  ret i1 true, !dbg !5262
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5263 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5267, metadata !DIExpression()), !dbg !5269
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5268, metadata !DIExpression()), !dbg !5270
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5271
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5272
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5273
  store ptr %0, ptr %prev1, align 8, !dbg !5274
  br label %do.body, !dbg !5275

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5276

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5278

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5276

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5280
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5280
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5280
  store volatile ptr %2, ptr %next4, align 8, !dbg !5280
  br label %do.end5, !dbg !5280

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5276

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5282
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_stop_dev(ptr noundef %dev) #0 align 16 !dbg !5283 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5287
  call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false) #8, !dbg !5288
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5289
  %call = call zeroext i1 @pci_dev_is_added(ptr noundef %1) #8, !dbg !5291
  br i1 %call, label %if.then, label %if.end, !dbg !5292

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5293
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 37, !dbg !5295
  call void @device_release_driver(ptr noundef %dev1) #8, !dbg !5296
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5297
  %call2 = call i32 @pci_proc_detach_device(ptr noundef %3) #8, !dbg !5298
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5299
  call void @pci_remove_sysfs_dev_files(ptr noundef %4) #8, !dbg !5300
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5301
  call void @of_pci_remove_node(ptr noundef %5) #8, !dbg !5302
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5303
  call void @pci_dev_assign_added(ptr noundef %6, i1 noundef zeroext false) #8, !dbg !5304
  br label %if.end, !dbg !5305

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5306
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5307 dso_local void @pci_pme_active(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_dev_is_added(ptr noundef %dev) #3 align 16 !dbg !5310 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5314, metadata !DIExpression()), !dbg !5315
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5316
  %priv_flags = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 66, !dbg !5316
  %1 = ptrtoint ptr %priv_flags to i64, !dbg !5316
  %cmp = icmp ne i64 %1, 0, !dbg !5316
  %conv = zext i1 %cmp to i32, !dbg !5316
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5316
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !5316

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5316
  %priv_flags1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 66, !dbg !5316
  %4 = ptrtoint ptr %priv_flags1 to i64, !dbg !5316
  %cmp2 = icmp ne i64 %4, 0, !dbg !5316
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5316

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5316
  %priv_flags5 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 66, !dbg !5316
  %6 = load i64, ptr %priv_flags5, align 8, !dbg !5316
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5316
  br i1 %7, label %cond.true, label %cond.false, !dbg !5316

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5316
  %priv_flags6 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 66, !dbg !5316
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %priv_flags6) #8, !dbg !5316
  %conv7 = zext i1 %call to i32, !dbg !5316
  br label %cond.end, !dbg !5316

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5316
  %priv_flags8 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 66, !dbg !5316
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %priv_flags8) #8, !dbg !5316
  %conv10 = zext i1 %call9 to i32, !dbg !5316
  br label %cond.end, !dbg !5316

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !5316
  %tobool = icmp ne i32 %cond, 0, !dbg !5316
  ret i1 %tobool, !dbg !5317
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5318 dso_local i32 @pci_proc_detach_device(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5319 dso_local void @pci_remove_sysfs_dev_files(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @of_pci_remove_node(ptr noundef %pdev) #3 align 16 !dbg !5320 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  ret void, !dbg !5324
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_dev_assign_added(ptr noundef %dev, i1 noundef zeroext %added) #3 align 16 !dbg !5325 {
entry:
  %dev.addr = alloca ptr, align 8
  %added.addr = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5327, metadata !DIExpression()), !dbg !5329
  %frombool = zext i1 %added to i8
  store i8 %frombool, ptr %added.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %added.addr, metadata !5328, metadata !DIExpression()), !dbg !5330
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5331
  %priv_flags = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 66, !dbg !5332
  %1 = load i8, ptr %added.addr, align 1, !dbg !5333, !range !5334, !noundef !887
  %tobool = trunc i8 %1 to i1, !dbg !5333
  call void @assign_bit(i64 noundef 0, ptr noundef %priv_flags, i1 noundef zeroext %tobool) #8, !dbg !5335
  ret void, !dbg !5336
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5337 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5345, metadata !DIExpression()), !dbg !5350
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5346, metadata !DIExpression()), !dbg !5351
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !5352
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5347, metadata !DIExpression()), !dbg !5353
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5354
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5355
  %div = udiv i64 %1, 64, !dbg !5355
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5356
  store ptr %add.ptr, ptr %p, align 8, !dbg !5353
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !5357
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5348, metadata !DIExpression()), !dbg !5358
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5359
  %rem = urem i64 %2, 64, !dbg !5359
  %shl = shl i64 1, %rem, !dbg !5359
  store i64 %shl, ptr %mask, align 8, !dbg !5358
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !5360
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5349, metadata !DIExpression()), !dbg !5361
  %3 = load ptr, ptr %p, align 8, !dbg !5362
  %4 = load i64, ptr %3, align 8, !dbg !5363
  store i64 %4, ptr %val, align 8, !dbg !5361
  %5 = load i64, ptr %val, align 8, !dbg !5364
  %6 = load i64, ptr %mask, align 8, !dbg !5365
  %and = and i64 %5, %6, !dbg !5366
  %tobool = icmp ne i64 %and, 0, !dbg !5367
  %lnot = xor i1 %tobool, true, !dbg !5367
  %lnot1 = xor i1 %lnot, true, !dbg !5368
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !5369
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !5369
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !5369
  ret i1 %lnot1, !dbg !5370
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5371 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5374, metadata !DIExpression()), !dbg !5376
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5375, metadata !DIExpression()), !dbg !5377
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5378
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5379
  %div = udiv i64 %1, 64, !dbg !5379
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5380
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #8, !dbg !5381
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5382
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5383
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !5384
  ret i1 %call, !dbg !5385
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5386 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5394, metadata !DIExpression()), !dbg !5396
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5395, metadata !DIExpression()), !dbg !5397
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5398
  %1 = load i64, ptr %size.addr, align 8, !dbg !5399
  %conv = trunc i64 %1 to i32, !dbg !5399
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #8, !dbg !5400
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5401
  %3 = load i64, ptr %size.addr, align 8, !dbg !5401
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #8, !dbg !5401
  ret void, !dbg !5402
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5403 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5406, metadata !DIExpression()), !dbg !5408
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5407, metadata !DIExpression()), !dbg !5409
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5410
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5411
  br i1 %1, label %cond.true, label %cond.false, !dbg !5411

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5412
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5413
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !5414
  %conv = zext i1 %call to i32, !dbg !5414
  br label %cond.end, !dbg !5411

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5415
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5416
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #8, !dbg !5417
  %conv2 = zext i1 %call1 to i32, !dbg !5417
  br label %cond.end, !dbg !5411

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5411
  %tobool = icmp ne i32 %cond, 0, !dbg !5411
  ret i1 %tobool, !dbg !5418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5419 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5424, metadata !DIExpression()), !dbg !5426
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5425, metadata !DIExpression()), !dbg !5427
  ret i1 true, !dbg !5428
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5429 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5434, metadata !DIExpression()), !dbg !5437
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5435, metadata !DIExpression()), !dbg !5438
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5436, metadata !DIExpression()), !dbg !5439
  ret void, !dbg !5440
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5441 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5445, metadata !DIExpression()), !dbg !5447
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5446, metadata !DIExpression()), !dbg !5448
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5449
  %and = and i64 %0, 63, !dbg !5450
  %shl = shl i64 1, %and, !dbg !5451
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5452
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5453
  %shr = ashr i64 %2, 6, !dbg !5454
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5452
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5452
  %and1 = and i64 %shl, %3, !dbg !5455
  %cmp = icmp ne i64 %and1, 0, !dbg !5456
  ret i1 %cmp, !dbg !5457
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5458 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5460, metadata !DIExpression()), !dbg !5463
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5461, metadata !DIExpression()), !dbg !5464
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !5465
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5462, metadata !DIExpression()), !dbg !5466
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5467
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5468
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !5469, !srcloc !5470
  %3 = icmp ult i8 %2, 2, !dbg !5469
  call void @llvm.assume(i1 %3), !dbg !5469
  store i8 %2, ptr %oldbit, align 1, !dbg !5469
  %4 = load i8, ptr %oldbit, align 1, !dbg !5471, !range !5334, !noundef !887
  %tobool = trunc i8 %4 to i1, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !5472
  ret i1 %tobool, !dbg !5473
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @assign_bit(i64 noundef %nr, ptr noundef %addr, i1 noundef zeroext %value) #6 align 16 !dbg !5474 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %value.addr = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5480, metadata !DIExpression()), !dbg !5483
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5481, metadata !DIExpression()), !dbg !5484
  %frombool = zext i1 %value to i8
  store i8 %frombool, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5482, metadata !DIExpression()), !dbg !5485
  %0 = load i8, ptr %value.addr, align 1, !dbg !5486, !range !5334, !noundef !887
  %tobool = trunc i8 %0 to i1, !dbg !5486
  br i1 %tobool, label %if.then, label %if.else, !dbg !5488

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5489
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5490
  call void @set_bit(i64 noundef %1, ptr noundef %2) #8, !dbg !5491
  br label %if.end, !dbg !5491

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5492
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !5493
  call void @clear_bit(i64 noundef %3, ptr noundef %4) #8, !dbg !5494
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5495
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5496 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5501, metadata !DIExpression()), !dbg !5503
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5502, metadata !DIExpression()), !dbg !5504
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5505
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5506
  %div = sdiv i64 %1, 64, !dbg !5506
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5507
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #8, !dbg !5508
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5509
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5510
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !5511
  ret void, !dbg !5512
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5513 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5515, metadata !DIExpression()), !dbg !5517
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5516, metadata !DIExpression()), !dbg !5518
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5519
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5520
  %div = sdiv i64 %1, 64, !dbg !5520
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5521
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #8, !dbg !5522
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5523
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5524
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !5525
  ret void, !dbg !5526
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5527 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5529, metadata !DIExpression()), !dbg !5531
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5530, metadata !DIExpression()), !dbg !5532
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5533
  %1 = load i64, ptr %size.addr, align 8, !dbg !5534
  %conv = trunc i64 %1 to i32, !dbg !5534
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !5535
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5536
  %3 = load i64, ptr %size.addr, align 8, !dbg !5536
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #8, !dbg !5536
  ret void, !dbg !5537
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5538 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5540, metadata !DIExpression()), !dbg !5542
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5541, metadata !DIExpression()), !dbg !5543
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5544
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5546
  br i1 %1, label %if.then, label %if.else, !dbg !5547

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5548
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5548
  %shr = ashr i64 %3, 3, !dbg !5548
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5548
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5550
  %and = and i64 %4, 7, !dbg !5550
  %sh_prom = trunc i64 %and to i32, !dbg !5550
  %shl = shl i32 1, %sh_prom, !dbg !5550
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #9, !dbg !5551, !srcloc !5552
  br label %if.end, !dbg !5553

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5554
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5556
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !5557, !srcloc !5558
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5559
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5560 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5562, metadata !DIExpression()), !dbg !5564
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5563, metadata !DIExpression()), !dbg !5565
  ret i1 true, !dbg !5566
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5567 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5569, metadata !DIExpression()), !dbg !5571
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5570, metadata !DIExpression()), !dbg !5572
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5573
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5575
  br i1 %1, label %if.then, label %if.else, !dbg !5576

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5577
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5577
  %shr = ashr i64 %3, 3, !dbg !5577
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5577
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5579
  %and = and i64 %4, 7, !dbg !5579
  %sh_prom = trunc i64 %and to i32, !dbg !5579
  %shl = shl i32 1, %sh_prom, !dbg !5579
  %not = xor i32 %shl, -1, !dbg !5580
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #9, !dbg !5581, !srcloc !5582
  br label %if.end, !dbg !5583

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5584
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5586
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !5587, !srcloc !5588
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5589
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_destroy_dev(ptr noundef %dev) #0 align 16 !dbg !5590 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5592, metadata !DIExpression()), !dbg !5593
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5594
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5596
  %kobj = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 0, !dbg !5597
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2, !dbg !5598
  %1 = load ptr, ptr %parent, align 8, !dbg !5598
  %tobool = icmp ne ptr %1, null, !dbg !5594
  br i1 %tobool, label %if.end, label %if.then, !dbg !5599

if.then:                                          ; preds = %entry
  br label %return, !dbg !5600

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5601
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 37, !dbg !5602
  call void @device_del(ptr noundef %dev2) #8, !dbg !5603
  call void @down_write(ptr noundef @pci_bus_sem) #8, !dbg !5604
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5605
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 0, !dbg !5606
  call void @list_del(ptr noundef %bus_list) #8, !dbg !5607
  call void @up_write(ptr noundef @pci_bus_sem) #8, !dbg !5608
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5609
  call void @pci_doe_destroy(ptr noundef %4) #8, !dbg !5610
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5611
  call void @pcie_aspm_exit_link_state(ptr noundef %5) #8, !dbg !5612
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5613
  call void @pci_bridge_d3_update(ptr noundef %6) #8, !dbg !5614
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5615
  call void @pci_free_resources(ptr noundef %7) #8, !dbg !5616
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5617
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 37, !dbg !5618
  call void @put_device(ptr noundef %dev3) #8, !dbg !5619
  br label %return, !dbg !5620

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_doe_destroy(ptr noundef %pdev) #3 align 16 !dbg !5621 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5623, metadata !DIExpression()), !dbg !5624
  ret void, !dbg !5625
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5626 dso_local void @pcie_aspm_exit_link_state(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5627 dso_local void @pci_bridge_d3_update(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_free_resources(ptr noundef %dev) #0 align 16 !dbg !5628 {
entry:
  %dev.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %__b = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5630, metadata !DIExpression()), !dbg !5634
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #9, !dbg !5635
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5631, metadata !DIExpression()), !dbg !5636
  call void @llvm.lifetime.start.p0(i64 4, ptr %__b) #9, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %__b, metadata !5632, metadata !DIExpression()), !dbg !5637
  store i32 0, ptr %__b, align 4, !dbg !5637
  br label %for.cond, !dbg !5637

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %__b, align 4, !dbg !5638
  %cmp = icmp ult i32 %0, 11, !dbg !5638
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5638

land.rhs:                                         ; preds = %for.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5638
  %resource = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 40, !dbg !5638
  %2 = load i32, ptr %__b, align 4, !dbg !5638
  %idxprom = zext i32 %2 to i64, !dbg !5638
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !5638
  store ptr %arrayidx, ptr %res, align 8, !dbg !5638
  %tobool = icmp ne ptr %arrayidx, null, !dbg !5638
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ], !dbg !5640
  br i1 %3, label %for.body, label %for.cond.cleanup, !dbg !5637

for.cond.cleanup:                                 ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %__b) #9, !dbg !5638
  br label %for.end

for.body:                                         ; preds = %land.end
  %4 = load ptr, ptr %res, align 8, !dbg !5641
  %parent = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 5, !dbg !5644
  %5 = load ptr, ptr %parent, align 8, !dbg !5644
  %tobool1 = icmp ne ptr %5, null, !dbg !5641
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5645

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %res, align 8, !dbg !5646
  %call = call i32 @release_resource(ptr noundef %6) #8, !dbg !5647
  br label %if.end, !dbg !5647

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5648

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %__b, align 4, !dbg !5638
  %inc = add i32 %7, 1, !dbg !5638
  store i32 %inc, ptr %__b, align 4, !dbg !5638
  br label %for.cond, !dbg !5638, !llvm.loop !5649

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #9, !dbg !5651
  ret void, !dbg !5651
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5652 dso_local void @put_device(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5653 dso_local i32 @release_resource(ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noredzone }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971}
!llvm.ident = !{!4972}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_remove_bus292", scope: !2, file: !3, line: 65, type: !157, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/.remove.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/remove\22 -D KBUILD_BASENAME=\22remove\22 -D KBUILD_MODNAME=\22remove\22 -D __KBUILD_MODNAME=kmod_remove -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/remove.ll drivers/pci/remove.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !4955, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/remove.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8963beef61cfd9444eb37747d4f2e504")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !94, !102, !110, !119, !124, !129, !135, !141, !146}
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !88, line: 487, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!91 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!92 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!93 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !95, line: 620, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!98 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!99 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!100 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!101 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !95, line: 597, baseType: !103, size: 32, elements: !104)
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = !{!105, !106, !107, !108, !109}
!105 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!106 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!107 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!108 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!109 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !88, line: 547, baseType: !7, size: 32, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118}
!112 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!113 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!114 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!115 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!116 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!117 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!118 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !88, line: 564, baseType: !7, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!122 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!123 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !88, line: 577, baseType: !7, size: 32, elements: !125)
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!127 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!128 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !88, line: 503, baseType: !7, size: 32, elements: !130)
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!132 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!133 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!134 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !136, line: 45, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!139 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!140 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 96, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0)
!150 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5)
!151 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6)
!152 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 7)
!153 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 10)
!154 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 11)
!155 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 11)
!156 = !{!157, !158, !4581, !4947, !4949, !4950, !949, !4951, !4953}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_host_bridge", file: !147, line: 563, size: 7168, elements: !160)
!160 = !{!161, !4572, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4916, !4922, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4946}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !159, file: !147, line: 564, baseType: !162, size: 5824)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !88, line: 705, size: 5824, elements: !163)
!163 = !{!164, !4110, !4112, !4115, !4116, !4169, !4254, !4255, !4256, !4257, !4258, !4265, !4357, !4370, !4380, !4384, !4386, !4387, !4388, !4392, !4399, !4400, !4403, !4406, !4410, !4514, !4515, !4516, !4517, !4518, !4519, !4549, !4550, !4551, !4554, !4557, !4566, !4567, !4568, !4569, !4570, !4571}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !162, file: !88, line: 706, baseType: !165, size: 512)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !166, line: 64, size: 512, elements: !167)
!166 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!167 = !{!168, !172, !179, !181, !270, !3997, !4100, !4105, !4106, !4107, !4108, !4109}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !166, line: 65, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !165, file: !166, line: 66, baseType: !173, size: 128, offset: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !174, line: 190, size: 128, elements: !175)
!174 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !174, line: 191, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !174, line: 191, baseType: !177, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !166, line: 67, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !165, file: !166, line: 68, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !166, line: 168, size: 768, elements: !184)
!184 = !{!185, !186, !229, !230}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !183, file: !166, line: 169, baseType: !173, size: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !183, file: !166, line: 170, baseType: !187, size: 32, offset: 128)
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
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !174, line: 174, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 172, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !208, file: !174, line: 173, baseType: !103, size: 32)
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
!229 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !183, file: !166, line: 171, baseType: !165, size: 512, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !183, file: !166, line: 172, baseType: !231, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !166, line: 133, size: 192, elements: !234)
!234 = !{!235, !242, !247}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !233, file: !166, line: 134, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!103, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !166, line: 135, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!169, !240}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !233, file: !166, line: 136, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!103, !240, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !166, line: 125, size: 20736, elements: !254)
!254 = !{!255, !260, !264, !265, !269}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !253, file: !166, line: 126, baseType: !256, size: 192)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 192, elements: !258)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!258 = !{!259}
!259 = !DISubrange(count: 3)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !253, file: !166, line: 127, baseType: !261, size: 4096, offset: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 4096, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !253, file: !166, line: 128, baseType: !103, size: 32, offset: 4288)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !253, file: !166, line: 129, baseType: !266, size: 16384, offset: 4320)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 16384, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 2048)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !253, file: !166, line: 130, baseType: !103, size: 32, offset: 20704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !165, file: !166, line: 69, baseType: !271, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !166, line: 116, size: 384, elements: !274)
!274 = !{!275, !279, !308, !3959, !3987, !3991}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !273, file: !166, line: 117, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !180}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !273, file: !166, line: 118, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !283, line: 254, size: 128, elements: !284)
!283 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!284 = !{!285, !300}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !282, file: !283, line: 255, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!289, !180, !294, !257}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !174, line: 66, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !291, line: 73, baseType: !292)
!291 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !291, line: 15, baseType: !293)
!293 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !283, line: 30, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !283, line: 31, baseType: !169, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !295, file: !283, line: 32, baseType: !299, size: 16, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !174, line: 24, baseType: !227)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !282, file: !283, line: 256, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!289, !180, !294, !169, !304}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 61, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !291, line: 72, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !291, line: 16, baseType: !307)
!307 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !273, file: !166, line: 119, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !283, line: 84, size: 320, elements: !313)
!313 = !{!314, !315, !319, !3955, !3957}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !283, line: 85, baseType: !169, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !312, file: !283, line: 86, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!299, !180, !294, !103}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !312, file: !283, line: 88, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!299, !180, !323, !103}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !283, line: 175, size: 512, elements: !325)
!325 = !{!326, !327, !328, !329, !3946, !3950, !3951}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !324, file: !283, line: 176, baseType: !295, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !324, file: !283, line: 177, baseType: !304, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !324, file: !283, line: 178, baseType: !157, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !324, file: !283, line: 179, baseType: !330, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !335)
!335 = !{!336, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3940, !3941, !3942, !3943, !3944, !3945}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !334, file: !14, line: 473, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !339)
!339 = !{!340, !341, !342, !350, !351, !358, !359, !362, !363, !3719, !3720, !3721, !3722, !3723, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3763, !3766, !3767, !3768, !3777, !3778, !3779, !3780}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !338, file: !14, line: 642, baseType: !299, size: 16)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !338, file: !14, line: 643, baseType: !227, size: 16, offset: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !338, file: !14, line: 644, baseType: !343, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !344, line: 23, baseType: !345)
!344 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 21, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !345, file: !344, line: 22, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !174, line: 37, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !291, line: 49, baseType: !7)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !338, file: !14, line: 645, baseType: !173, size: 128, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !338, file: !14, line: 646, baseType: !352, size: 32, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !344, line: 28, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 26, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !353, file: !344, line: 27, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !174, line: 38, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !291, line: 50, baseType: !7)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !338, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !338, file: !14, line: 650, baseType: !360, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !338, file: !14, line: 651, baseType: !360, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !338, file: !14, line: 654, baseType: !364, size: 64, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !367)
!367 = !{!368, !3547, !3557, !3561, !3565, !3569, !3573, !3577, !3581, !3585, !3589, !3590, !3594, !3598, !3635, !3664, !3668, !3674, !3678, !3682, !3686, !3690, !3694, !3700, !3704}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !366, file: !14, line: 1967, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!372, !337, !372, !7}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !374, line: 82, size: 1536, elements: !375)
!374 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!375 = !{!376, !377, !387, !395, !396, !416, !417, !421, !434, !3530, !3531, !3532, !3533, !3539, !3540, !3541}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !373, file: !374, line: 84, baseType: !7, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !373, file: !374, line: 85, baseType: !378, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !379, line: 275, baseType: !380)
!379 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !379, line: 275, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !380, file: !379, line: 275, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !379, line: 69, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !379, line: 64, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !384, file: !379, line: 65, baseType: !7, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !373, file: !374, line: 86, baseType: !388, size: 128, offset: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !389, line: 38, size: 128, elements: !390)
!389 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!390 = !{!391, !393}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !389, line: 39, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !388, file: !389, line: 39, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !373, file: !374, line: 87, baseType: !372, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !373, file: !374, line: 88, baseType: !397, size: 128, offset: 256)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !374, line: 49, size: 128, elements: !398)
!398 = !{!399, !413}
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !374, line: 50, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !374, line: 50, size: 64, elements: !401)
!401 = !{!402, !409}
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !374, line: 51, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !374, line: 51, size: 64, elements: !404)
!404 = !{!405, !408}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !403, file: !374, line: 52, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !216, line: 21, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !218, line: 27, baseType: !7)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !403, file: !374, line: 52, baseType: !406, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !400, file: !374, line: 54, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !216, line: 23, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !218, line: 31, baseType: !412)
!412 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !397, file: !374, line: 56, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !373, file: !374, line: 89, baseType: !337, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !373, file: !374, line: 91, baseType: !418, size: 256, offset: 448)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !373, file: !374, line: 94, baseType: !422, size: 64, offset: 704)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !423, line: 25, size: 64, elements: !424)
!423 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !423, line: 26, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !423, line: 26, size: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !426, file: !423, line: 28, baseType: !411, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !423, line: 30, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !426, file: !423, line: 30, size: 64, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !430, file: !423, line: 31, baseType: !187, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !430, file: !423, line: 32, baseType: !103, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !373, file: !374, line: 95, baseType: !435, size: 64, offset: 768)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !374, line: 128, size: 1024, align: 512, elements: !438)
!438 = !{!439, !443, !444, !451, !457, !461, !465, !469, !470, !474, !478, !3520, !3524}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !437, file: !374, line: 129, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!103, !372, !7}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !437, file: !374, line: 130, baseType: !440, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !437, file: !374, line: 131, baseType: !445, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!103, !448, !450}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !437, file: !374, line: 132, baseType: !452, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!103, !448, !7, !169, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !437, file: !374, line: 134, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!103, !448}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !437, file: !374, line: 135, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!103, !372}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !437, file: !374, line: 136, baseType: !466, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !372}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !437, file: !374, line: 137, baseType: !466, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !437, file: !374, line: 138, baseType: !471, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !372, !337}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !437, file: !374, line: 139, baseType: !475, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!257, !372, !257, !103}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !437, file: !374, line: 140, baseType: !479, size: 64, offset: 640)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !3519}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !484, line: 70, size: 256, elements: !485)
!484 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!485 = !{!486, !487, !3515, !3516}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !483, file: !484, line: 71, baseType: !372, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !483, file: !484, line: 72, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !490)
!490 = !{!491, !492, !495, !496, !497, !501, !981, !1121, !1161, !1251, !1255, !1256, !1257, !1258, !1259, !1268, !1269, !1270, !1271, !1276, !1280, !1281, !1284, !1287, !1290, !1293, !1294, !1295, !1336, !3448, !3449, !3450, !3451, !3452, !3453, !3456, !3458, !3465, !3466, !3467, !3468, !3469, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !489, file: !14, line: 1191, baseType: !173, size: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !489, file: !14, line: 1192, baseType: !493, size: 32, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !174, line: 21, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !174, line: 18, baseType: !406)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !489, file: !14, line: 1193, baseType: !219, size: 8, offset: 160)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !489, file: !14, line: 1194, baseType: !307, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !489, file: !14, line: 1195, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !174, line: 52, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !291, line: 88, baseType: !500)
!500 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !489, file: !14, line: 1196, baseType: !502, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !504)
!504 = !{!505, !506, !507, !514, !518, !522, !526, !966, !967, !971, !973, !974, !975, !977, !978, !979, !980}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !503, file: !14, line: 2367, baseType: !169, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !503, file: !14, line: 2368, baseType: !103, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !503, file: !14, line: 2376, baseType: !508, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!103, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !513, line: 32, flags: DIFlagFwdDecl)
!513 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!514 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !503, file: !14, line: 2377, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !503, file: !14, line: 2378, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!372, !502, !103, !169, !157}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !503, file: !14, line: 2380, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !488}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !503, file: !14, line: 2381, baseType: !527, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !529)
!529 = !{!530, !531, !532, !536, !558, !584, !585, !586, !587, !591, !596, !597, !617, !673, !674, !675, !676, !677, !680, !681, !682, !690, !694, !721, !742, !743, !744, !745, !754, !777, !778, !781, !784, !785, !786, !787, !788, !789, !790, !795, !796, !924, !932, !933, !934, !936, !940, !941, !945, !946, !947, !948, !950, !951, !952, !959, !960, !961, !965}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !528, file: !6, line: 403, baseType: !5, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !528, file: !6, line: 406, baseType: !173, size: 128, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !6, line: 409, baseType: !533, size: 448, offset: 192)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 448, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 56)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !528, file: !6, line: 417, baseType: !537, size: 768, offset: 640)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !538)
!538 = !{!539, !540, !541, !542, !545}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !537, file: !6, line: 46, baseType: !165, size: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !537, file: !6, line: 47, baseType: !527, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !537, file: !6, line: 48, baseType: !180, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !537, file: !6, line: 49, baseType: !543, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !537, file: !6, line: 50, baseType: !546, size: 64, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !548, line: 26, size: 256, elements: !549)
!548 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !547, file: !548, line: 27, baseType: !7, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !547, file: !548, line: 28, baseType: !552, size: 192, offset: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !553, line: 43, size: 192, elements: !554)
!553 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!554 = !{!555, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !552, file: !553, line: 44, baseType: !556, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !196, line: 23, baseType: !195)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !552, file: !553, line: 45, baseType: !173, size: 128, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !528, file: !6, line: 418, baseType: !559, size: 64, offset: 1408)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !561)
!561 = !{!562, !563, !568, !572, !576, !580}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !560, file: !6, line: 54, baseType: !295, size: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !560, file: !6, line: 55, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!289, !559, !567, !257}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !560, file: !6, line: 57, baseType: !569, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!289, !559, !567, !169, !304}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !560, file: !6, line: 59, baseType: !573, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !527, !169}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !560, file: !6, line: 60, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!103, !527}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !560, file: !6, line: 61, baseType: !581, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !527}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !528, file: !6, line: 419, baseType: !169, size: 64, offset: 1472)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !528, file: !6, line: 420, baseType: !169, size: 64, offset: 1536)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !528, file: !6, line: 421, baseType: !180, size: 64, offset: 1600)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !528, file: !6, line: 424, baseType: !588, size: 64, offset: 1664)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !528, file: !6, line: 425, baseType: !592, size: 64, offset: 1728)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !216, line: 20, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !218, line: 26, baseType: !103)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !528, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !528, file: !6, line: 435, baseType: !598, size: 256, offset: 1856)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !599, line: 66, size: 256, elements: !600)
!599 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!600 = !{!601, !610, !611, !616}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !598, file: !599, line: 67, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !603, line: 13, baseType: !604)
!603 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !174, line: 181, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 179, size: 64, elements: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !605, file: !174, line: 180, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !216, line: 22, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !218, line: 30, baseType: !500)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !598, file: !599, line: 68, baseType: !556, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !598, file: !599, line: 70, baseType: !612, size: 32, offset: 96)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !613, line: 15, size: 32, elements: !614)
!613 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !612, file: !613, line: 20, baseType: !207, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !598, file: !599, line: 72, baseType: !173, size: 128, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !528, file: !6, line: 437, baseType: !618, size: 64, offset: 2112)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !620, line: 69, size: 320, elements: !621)
!620 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!621 = !{!622, !623, !624, !644, !646, !650, !651}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !619, file: !620, line: 70, baseType: !169, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !619, file: !620, line: 71, baseType: !527, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !619, file: !620, line: 72, baseType: !625, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !620, line: 47, size: 256, elements: !628)
!628 = !{!629, !630, !636, !640}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !620, line: 49, baseType: !7, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !627, file: !620, line: 51, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!103, !169, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !627, file: !620, line: 53, baseType: !637, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!103, !257, !634}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !627, file: !620, line: 55, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !157}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !619, file: !620, line: 73, baseType: !645, size: 16, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !619, file: !620, line: 74, baseType: !647, size: 8, offset: 208)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !216, line: 16, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !218, line: 20, baseType: !649)
!649 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !620, line: 75, baseType: !215, size: 8, offset: 216)
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !620, line: 76, baseType: !652, size: 64, offset: 256)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !620, line: 76, size: 64, elements: !653)
!653 = !{!654, !655, !662}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !652, file: !620, line: 77, baseType: !157, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !652, file: !620, line: 78, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !620, line: 86, size: 128, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !658, file: !620, line: 87, baseType: !7, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !658, file: !620, line: 88, baseType: !257, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !652, file: !620, line: 79, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !620, line: 92, size: 256, elements: !666)
!666 = !{!667, !668, !669, !671, !672}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !665, file: !620, line: 94, baseType: !7, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !665, file: !620, line: 95, baseType: !7, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !665, file: !620, line: 96, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !665, file: !620, line: 97, baseType: !625, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !665, file: !620, line: 98, baseType: !157, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !528, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !528, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !528, file: !6, line: 442, baseType: !588, size: 64, offset: 2240)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !528, file: !6, line: 443, baseType: !592, size: 64, offset: 2304)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !528, file: !6, line: 444, baseType: !678, size: 8, offset: 2368)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !174, line: 35, baseType: !679)
!679 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !528, file: !6, line: 451, baseType: !678, size: 8, offset: 2376)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !528, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !528, file: !6, line: 455, baseType: !683, size: 64, offset: 2432)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !685, line: 23, size: 96, elements: !686)
!685 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!686 = !{!687, !688, !689}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !684, file: !685, line: 24, baseType: !103, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !684, file: !685, line: 24, baseType: !103, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !684, file: !685, line: 24, baseType: !103, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !528, file: !6, line: 458, baseType: !691, size: 64, offset: 2496)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!103}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !528, file: !6, line: 460, baseType: !695, size: 4032, align: 512, offset: 2560)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 4032, elements: !719)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !697)
!697 = !{!698, !699, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !696, file: !6, line: 363, baseType: !157, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !696, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !696, file: !6, line: 367, baseType: !701, size: 448, offset: 128)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !701, file: !6, line: 320, baseType: !527, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !701, file: !6, line: 321, baseType: !705, size: 384, offset: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !706, line: 40, size: 384, elements: !707)
!706 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !706, line: 41, baseType: !709, size: 384, align: 64)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 384, align: 64, elements: !717)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !711, line: 5, size: 192, align: 64, elements: !712)
!711 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!712 = !{!713, !714, !716}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !710, file: !711, line: 6, baseType: !307, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !710, file: !711, line: 7, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !710, file: !711, line: 8, baseType: !715, size: 64, offset: 128)
!717 = !{!718}
!718 = !DISubrange(count: 2)
!719 = !{!720}
!720 = !DISubrange(count: 7)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !528, file: !6, line: 463, baseType: !722, size: 192, offset: 6592)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !723, line: 8, size: 192, elements: !724)
!723 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!724 = !{!725, !726, !728}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !722, file: !723, line: 10, baseType: !7, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !722, file: !723, line: 11, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !722, file: !723, line: 12, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !731, line: 59, size: 48, elements: !732)
!731 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!732 = !{!733, !737, !738, !739, !740, !741}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !730, file: !731, line: 60, baseType: !734, size: 16)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !216, line: 18, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !218, line: 23, baseType: !736)
!736 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !730, file: !731, line: 61, baseType: !734, size: 16, offset: 16)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !730, file: !731, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !730, file: !731, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !731, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !730, file: !731, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !528, file: !6, line: 465, baseType: !307, size: 64, offset: 6784)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !528, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !528, file: !6, line: 470, baseType: !173, size: 128, offset: 6912)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !528, file: !6, line: 471, baseType: !746, size: 64, offset: 7040)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !748, line: 33, size: 96, elements: !749)
!748 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!749 = !{!750, !751, !752, !753}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !747, file: !748, line: 37, baseType: !103, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !747, file: !748, line: 43, baseType: !103, size: 32, offset: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !747, file: !748, line: 45, baseType: !227, size: 16, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !748, line: 47, baseType: !227, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !528, file: !6, line: 476, baseType: !755, size: 64, offset: 7104)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !757)
!757 = !{!758, !774, !775, !776}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !756, file: !6, line: 379, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !761, line: 204, baseType: !762)
!761 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !761, line: 197, size: 192, elements: !763)
!763 = !{!764, !766, !767, !768, !770, !772}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !762, file: !761, line: 198, baseType: !765, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !761, line: 21, baseType: !407)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !762, file: !761, line: 199, baseType: !219, size: 8, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !762, file: !761, line: 200, baseType: !219, size: 8, offset: 40)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !762, file: !761, line: 201, baseType: !769, size: 16, offset: 48)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !761, line: 17, baseType: !226)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !762, file: !761, line: 202, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !761, line: 16, baseType: !411)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !762, file: !761, line: 203, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !761, line: 22, baseType: !411)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !756, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !756, file: !6, line: 381, baseType: !257, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !756, file: !6, line: 382, baseType: !257, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !528, file: !6, line: 477, baseType: !756, size: 256, offset: 7168)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !528, file: !6, line: 480, baseType: !779, size: 64, offset: 7424)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !528, file: !6, line: 483, baseType: !782, size: 64, offset: 7488)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !528, file: !6, line: 488, baseType: !257, size: 64, offset: 7552)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !528, file: !6, line: 492, baseType: !157, size: 64, offset: 7616)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !528, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !528, file: !6, line: 495, baseType: !157, size: 64, offset: 7744)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !528, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !528, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !528, file: !6, line: 500, baseType: !791, size: 64, offset: 7872)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !793, line: 45, baseType: !794)
!793 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !528, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !528, file: !6, line: 504, baseType: !797, size: 64, offset: 8000)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !800, line: 96, size: 192, elements: !801)
!800 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!801 = !{!802, !803, !884, !888}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !799, file: !800, line: 97, baseType: !7, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !799, file: !800, line: 98, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !800, line: 24, size: 3072, elements: !806)
!806 = !{!807, !809, !810, !811, !812, !836, !837, !838, !839, !857, !869, !870, !881, !882, !883}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !805, file: !800, line: 26, baseType: !808, size: 128)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 128, elements: !717)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !805, file: !800, line: 27, baseType: !808, size: 128, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !805, file: !800, line: 28, baseType: !103, size: 32, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !805, file: !800, line: 31, baseType: !187, size: 32, align: 512, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !805, file: !800, line: 32, baseType: !813, size: 960, offset: 576)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !814, line: 206, size: 960, elements: !815)
!814 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!815 = !{!816, !825, !830, !832, !833, !835}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !813, file: !814, line: 207, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !174, line: 232, size: 128, align: 64, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !818, file: !174, line: 233, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !818, file: !174, line: 234, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !817}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !813, file: !814, line: 208, baseType: !826, size: 256, offset: 64)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 256, elements: !828)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!828 = !{!829}
!829 = !DISubrange(count: 4)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !813, file: !814, line: 209, baseType: !831, size: 256, offset: 320)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !828)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !813, file: !814, line: 213, baseType: !293, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !813, file: !814, line: 215, baseType: !834, size: 256, offset: 640)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !828)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !814, line: 216, baseType: !215, size: 8, offset: 896)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !805, file: !800, line: 33, baseType: !307, size: 64, offset: 1536)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !805, file: !800, line: 34, baseType: !307, size: 64, offset: 1600)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !805, file: !800, line: 35, baseType: !678, size: 8, offset: 1664)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !805, file: !800, line: 36, baseType: !840, size: 320, offset: 1728)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !841, line: 11, size: 320, elements: !842)
!841 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!842 = !{!843, !850, !851, !856}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !840, file: !841, line: 16, baseType: !844, size: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !174, line: 198, size: 128, elements: !845)
!845 = !{!846, !848}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !844, file: !174, line: 199, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !844, file: !174, line: 199, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !840, file: !841, line: 17, baseType: !307, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !840, file: !841, line: 18, baseType: !852, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !840, file: !841, line: 19, baseType: !406, size: 32, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !805, file: !800, line: 37, baseType: !858, size: 256, offset: 2048)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !859, line: 98, size: 256, elements: !860)
!859 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !858, file: !859, line: 99, baseType: !602, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !858, file: !859, line: 100, baseType: !173, size: 128, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !858, file: !859, line: 101, baseType: !864, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !859, line: 21, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !805, file: !800, line: 38, baseType: !818, size: 128, align: 64, offset: 2304)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !805, file: !800, line: 39, baseType: !871, size: 64, offset: 2432)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !800, line: 49, size: 768, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !872, file: !800, line: 50, baseType: !187, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !872, file: !800, line: 51, baseType: !831, size: 256, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !872, file: !800, line: 53, baseType: !831, size: 256, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !872, file: !800, line: 54, baseType: !307, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !872, file: !800, line: 55, baseType: !871, size: 64, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !872, file: !800, line: 56, baseType: !103, size: 32, offset: 704)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !872, file: !800, line: 57, baseType: !103, size: 32, offset: 736)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !805, file: !800, line: 40, baseType: !307, size: 64, offset: 2496)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !805, file: !800, line: 42, baseType: !103, size: 32, offset: 2560)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !805, file: !800, line: 43, baseType: !798, size: 64, offset: 2624)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !799, file: !800, line: 99, baseType: !885, offset: 128)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !886, line: 211, elements: !887)
!886 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!887 = !{}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !799, file: !800, line: 100, baseType: !889, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !800, line: 63, size: 3008, elements: !891)
!891 = !{!892, !893, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !923}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !890, file: !800, line: 64, baseType: !871, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !890, file: !800, line: 65, baseType: !894, size: 192, offset: 64)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 192, elements: !258)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !890, file: !800, line: 67, baseType: !103, size: 32, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !890, file: !800, line: 68, baseType: !598, size: 256, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !800, line: 69, baseType: !187, size: 32, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !890, file: !800, line: 70, baseType: !598, size: 256, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !890, file: !800, line: 71, baseType: !307, size: 64, offset: 896)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !890, file: !800, line: 72, baseType: !307, size: 64, offset: 960)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !890, file: !800, line: 73, baseType: !307, size: 64, offset: 1024)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !890, file: !800, line: 74, baseType: !307, size: 64, offset: 1088)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !890, file: !800, line: 75, baseType: !307, size: 64, offset: 1152)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !890, file: !800, line: 76, baseType: !307, size: 64, offset: 1216)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !890, file: !800, line: 77, baseType: !307, size: 64, offset: 1280)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !890, file: !800, line: 78, baseType: !307, size: 64, offset: 1344)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !890, file: !800, line: 79, baseType: !678, size: 8, offset: 1408)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !890, file: !800, line: 80, baseType: !307, size: 64, offset: 1472)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !890, file: !800, line: 81, baseType: !598, size: 256, offset: 1536)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !890, file: !800, line: 82, baseType: !547, size: 256, offset: 1792)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !890, file: !800, line: 84, baseType: !207, size: 32, offset: 2048)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !890, file: !800, line: 87, baseType: !307, size: 64, offset: 2112)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !890, file: !800, line: 88, baseType: !307, size: 64, offset: 2176)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !890, file: !800, line: 89, baseType: !915, size: 704, offset: 2240)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !859, line: 111, size: 704, elements: !916)
!916 = !{!917, !918, !919, !922}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !915, file: !859, line: 112, baseType: !858, size: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !915, file: !859, line: 113, baseType: !840, size: 320, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !915, file: !859, line: 116, baseType: !920, size: 64, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !859, line: 18, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !915, file: !859, line: 117, baseType: !103, size: 32, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !890, file: !800, line: 90, baseType: !798, size: 64, offset: 2944)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !528, file: !6, line: 515, baseType: !925, size: 64, offset: 8064)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !927, line: 117, size: 128, elements: !928)
!927 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !926, file: !927, line: 118, baseType: !594, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !926, file: !927, line: 119, baseType: !594, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !926, file: !927, line: 120, baseType: !293, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !528, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !528, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !528, file: !6, line: 520, baseType: !935, size: 64, offset: 8192)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !528, file: !6, line: 523, baseType: !937, size: 64, offset: 8256)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !528, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !528, file: !6, line: 525, baseType: !942, size: 64, offset: 8384)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !528, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !528, file: !6, line: 533, baseType: !157, size: 64, offset: 8512)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !528, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !528, file: !6, line: 535, baseType: !949, size: 64, offset: 8640)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !528, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !528, file: !6, line: 539, baseType: !103, size: 32, offset: 8736)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !528, file: !6, line: 540, baseType: !953, size: 64, offset: 8768)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !955, line: 32, size: 64, elements: !956)
!955 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !954, file: !955, line: 33, baseType: !594, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !954, file: !955, line: 34, baseType: !594, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !528, file: !6, line: 563, baseType: !173, size: 128, offset: 8832)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !528, file: !6, line: 565, baseType: !173, size: 128, offset: 8960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !528, file: !6, line: 568, baseType: !962, size: 64, offset: 9088)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !528, file: !6, line: 570, baseType: !207, size: 32, offset: 9152)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !14, line: 2382, baseType: !502, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !503, file: !14, line: 2383, baseType: !968, size: 64, offset: 512)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !174, line: 194, size: 64, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !968, file: !174, line: 195, baseType: !847, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !503, file: !14, line: 2385, baseType: !972, offset: 576)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !886, line: 206, elements: !887)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !503, file: !14, line: 2386, baseType: !972, offset: 576)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !503, file: !14, line: 2387, baseType: !972, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !503, file: !14, line: 2388, baseType: !976, offset: 576)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, elements: !258)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !503, file: !14, line: 2390, baseType: !972, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !503, file: !14, line: 2391, baseType: !972, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !503, file: !14, line: 2392, baseType: !972, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !503, file: !14, line: 2393, baseType: !972, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !489, file: !14, line: 1197, baseType: !982, size: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !985)
!985 = !{!986, !990, !994, !995, !999, !1005, !1009, !1010, !1011, !1015, !1019, !1023, !1024, !1025, !1031, !1035, !1036, !1043, !1044, !1045, !1046, !1050, !1054, !1103, !1119, !1120}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !984, file: !14, line: 2058, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!337, !488}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !984, file: !14, line: 2059, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !337}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !984, file: !14, line: 2060, baseType: !991, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !984, file: !14, line: 2062, baseType: !996, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !337, !103}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !984, file: !14, line: 2063, baseType: !1000, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!103, !337, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !984, file: !14, line: 2064, baseType: !1006, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!103, !337}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !984, file: !14, line: 2065, baseType: !991, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !984, file: !14, line: 2066, baseType: !523, size: 64, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !984, file: !14, line: 2067, baseType: !1012, size: 64, offset: 512)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!103, !488, !103}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !984, file: !14, line: 2068, baseType: !1016, size: 64, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!103, !488, !13}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !984, file: !14, line: 2069, baseType: !1020, size: 64, offset: 640)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!103, !488}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !984, file: !14, line: 2070, baseType: !1016, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !984, file: !14, line: 2071, baseType: !1020, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !984, file: !14, line: 2072, baseType: !1026, size: 64, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!103, !372, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !984, file: !14, line: 2073, baseType: !1032, size: 64, offset: 896)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!103, !488, !727, !257}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !984, file: !14, line: 2074, baseType: !523, size: 64, offset: 960)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !984, file: !14, line: 2076, baseType: !1037, size: 64, offset: 1024)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!103, !1040, !372}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1042, line: 66, flags: DIFlagFwdDecl)
!1042 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !984, file: !14, line: 2077, baseType: !1037, size: 64, offset: 1088)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !984, file: !14, line: 2078, baseType: !1037, size: 64, offset: 1152)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !984, file: !14, line: 2079, baseType: !1037, size: 64, offset: 1216)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !984, file: !14, line: 2081, baseType: !1047, size: 64, offset: 1280)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!289, !488, !103, !257, !304, !498}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !984, file: !14, line: 2082, baseType: !1051, size: 64, offset: 1344)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!289, !488, !103, !169, !304, !498}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !984, file: !14, line: 2083, baseType: !1055, size: 64, offset: 1408)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!1058, !337}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1086, !1087, !1088}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1060, file: !19, line: 297, baseType: !844, size: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1060, file: !19, line: 298, baseType: !173, size: 128, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1060, file: !19, line: 299, baseType: !173, size: 128, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1060, file: !19, line: 300, baseType: !173, size: 128, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1060, file: !19, line: 301, baseType: !598, size: 256, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1060, file: !19, line: 302, baseType: !187, size: 32, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1060, file: !19, line: 303, baseType: !207, size: 32, offset: 800)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1060, file: !19, line: 304, baseType: !488, size: 64, offset: 832)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1060, file: !19, line: 305, baseType: !1071, size: 64, offset: 896)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1072)
!1072 = !{!1073, !1085}
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !19, line: 69, baseType: !1074, size: 32)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !19, line: 69, size: 32, elements: !1075)
!1075 = !{!1076, !1077, !1078}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1074, file: !19, line: 70, baseType: !343, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1074, file: !19, line: 71, baseType: !352, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1074, file: !19, line: 72, baseType: !1079, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1080, line: 24, baseType: !1081)
!1080 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1080, line: 22, size: 32, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1081, file: !1080, line: 23, baseType: !1084, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1080, line: 20, baseType: !349)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1071, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1060, file: !19, line: 306, baseType: !498, size: 64, offset: 960)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1060, file: !19, line: 307, baseType: !307, size: 64, offset: 1024)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1060, file: !19, line: 308, baseType: !1089, size: 576, offset: 1088)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1090)
!1090 = !{!1091, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1102}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1089, file: !19, line: 206, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !500)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1089, file: !19, line: 207, baseType: !1092, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1089, file: !19, line: 208, baseType: !1092, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1089, file: !19, line: 209, baseType: !1092, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1089, file: !19, line: 210, baseType: !1092, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1089, file: !19, line: 211, baseType: !1092, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1089, file: !19, line: 212, baseType: !1092, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1089, file: !19, line: 213, baseType: !1100, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1101, line: 8, baseType: !609)
!1101 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1089, file: !19, line: 214, baseType: !1100, size: 64, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !984, file: !14, line: 2085, baseType: !1104, size: 64, offset: 1472)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!293, !488, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1109, line: 15, size: 256, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1110 = !{!1111, !1113, !1114, !1115, !1116}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1108, file: !1109, line: 16, baseType: !1112, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !174, line: 154, baseType: !7)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1108, file: !1109, line: 19, baseType: !103, size: 32, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1108, file: !1109, line: 26, baseType: !307, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1108, file: !1109, line: 33, baseType: !307, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1108, file: !1109, line: 36, baseType: !1117, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !984, file: !14, line: 2087, baseType: !1104, size: 64, offset: 1536)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !984, file: !14, line: 2089, baseType: !523, size: 64, offset: 1600)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !489, file: !14, line: 1198, baseType: !1122, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1125)
!1125 = !{!1126, !1130, !1134, !1138, !1139, !1140, !1141, !1142, !1147, !1152, !1156}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1124, file: !19, line: 325, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!103, !1059}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1124, file: !19, line: 326, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1059, !488, !103}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1124, file: !19, line: 327, baseType: !1135, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !1059}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1124, file: !19, line: 328, baseType: !1127, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1124, file: !19, line: 329, baseType: !1127, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1124, file: !19, line: 330, baseType: !1127, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1124, file: !19, line: 331, baseType: !1012, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1124, file: !19, line: 334, baseType: !1143, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!1146, !337}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1124, file: !19, line: 335, baseType: !1148, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!103, !337, !1151}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1124, file: !19, line: 337, baseType: !1153, size: 64, offset: 576)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!103, !337, !1146}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1124, file: !19, line: 339, baseType: !1157, size: 64, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!103, !488, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !489, file: !14, line: 1199, baseType: !1162, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1165)
!1165 = !{!1166, !1177, !1178, !1182, !1183, !1184, !1199, !1222, !1226, !1227, !1250}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1164, file: !19, line: 431, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!103, !488, !103, !103, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1173, line: 8, size: 128, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1172, file: !1173, line: 9, baseType: !482, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1172, file: !1173, line: 10, baseType: !372, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1164, file: !19, line: 432, baseType: !1012, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1164, file: !19, line: 433, baseType: !1179, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!103, !488, !7}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1164, file: !19, line: 434, baseType: !1179, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1164, file: !19, line: 435, baseType: !1012, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1164, file: !19, line: 436, baseType: !1185, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!103, !488, !103, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1189, file: !19, line: 418, baseType: !103, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1189, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1189, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1189, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1189, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1189, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1189, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1189, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1164, file: !19, line: 437, baseType: !1200, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!103, !488, !1071, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1204, file: !19, line: 346, baseType: !103, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1204, file: !19, line: 347, baseType: !410, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1204, file: !19, line: 348, baseType: !410, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1204, file: !19, line: 349, baseType: !410, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1204, file: !19, line: 350, baseType: !410, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1204, file: !19, line: 351, baseType: !410, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1204, file: !19, line: 352, baseType: !410, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1204, file: !19, line: 353, baseType: !608, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1204, file: !19, line: 355, baseType: !608, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1204, file: !19, line: 356, baseType: !103, size: 32, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1204, file: !19, line: 357, baseType: !103, size: 32, offset: 608)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1204, file: !19, line: 358, baseType: !410, size: 64, offset: 640)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1204, file: !19, line: 359, baseType: !410, size: 64, offset: 704)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1204, file: !19, line: 360, baseType: !410, size: 64, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1204, file: !19, line: 361, baseType: !608, size: 64, offset: 832)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1204, file: !19, line: 362, baseType: !103, size: 32, offset: 896)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1164, file: !19, line: 438, baseType: !1223, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!103, !488, !1160, !1203}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1164, file: !19, line: 440, baseType: !1200, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1164, file: !19, line: 441, baseType: !1228, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!103, !488, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1232, file: !19, line: 412, baseType: !7, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1232, file: !19, line: 413, baseType: !1236, size: 1344, offset: 64)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 1344, elements: !258)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1249}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !19, line: 398, baseType: !7, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1237, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1237, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1237, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1237, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1237, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1237, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1237, file: !19, line: 406, baseType: !412, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1237, file: !19, line: 407, baseType: !1248, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !174, line: 132, baseType: !410)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1237, file: !19, line: 408, baseType: !1248, size: 64, offset: 384)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1164, file: !19, line: 442, baseType: !1179, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !489, file: !14, line: 1200, baseType: !1252, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !489, file: !14, line: 1201, baseType: !307, size: 64, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !489, file: !14, line: 1202, baseType: !307, size: 64, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !489, file: !14, line: 1203, baseType: !307, size: 64, offset: 768)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !489, file: !14, line: 1204, baseType: !372, size: 64, offset: 832)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !489, file: !14, line: 1205, baseType: !1260, size: 320, offset: 896)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1261, line: 48, size: 320, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1262 = !{!1263, !1264, !1265, !1266, !1267}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1260, file: !1261, line: 49, baseType: !602, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1260, file: !1261, line: 55, baseType: !602, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1260, file: !1261, line: 57, baseType: !612, size: 32, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1260, file: !1261, line: 59, baseType: !556, size: 32, offset: 160)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1260, file: !1261, line: 60, baseType: !173, size: 128, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !489, file: !14, line: 1206, baseType: !103, size: 32, offset: 1216)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !489, file: !14, line: 1207, baseType: !207, size: 32, offset: 1248)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !489, file: !14, line: 1209, baseType: !157, size: 64, offset: 1280)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !489, file: !14, line: 1211, baseType: !1272, size: 64, offset: 1344)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !489, file: !14, line: 1223, baseType: !1277, size: 64, offset: 1408)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !389, line: 34, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1277, file: !389, line: 35, baseType: !392, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !489, file: !14, line: 1224, baseType: !173, size: 128, offset: 1472)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !489, file: !14, line: 1225, baseType: !1282, size: 64, offset: 1600)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !489, file: !14, line: 1226, baseType: !1285, size: 64, offset: 1664)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !489, file: !14, line: 1227, baseType: !1288, size: 64, offset: 1728)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !489, file: !14, line: 1228, baseType: !1291, size: 64, offset: 1792)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !489, file: !14, line: 1229, baseType: !844, size: 128, offset: 1856)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !489, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !489, file: !14, line: 1231, baseType: !1296, size: 2496, offset: 2048)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1302, !1334}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1296, file: !19, line: 522, baseType: !7, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1296, file: !19, line: 523, baseType: !1260, size: 320, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1296, file: !19, line: 524, baseType: !1301, size: 192, offset: 384)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 192, elements: !258)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1296, file: !19, line: 525, baseType: !1303, size: 1728, offset: 576)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1304, size: 1728, elements: !258)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1305)
!1305 = !{!1306, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1304, file: !19, line: 223, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1309)
!1309 = !{!1310, !1311, !1324, !1325}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1308, file: !19, line: 446, baseType: !103, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1308, file: !19, line: 447, baseType: !1312, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1314, file: !19, line: 313, baseType: !1012, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1314, file: !19, line: 314, baseType: !1012, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1314, file: !19, line: 315, baseType: !1012, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1314, file: !19, line: 316, baseType: !1012, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1314, file: !19, line: 317, baseType: !1127, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1314, file: !19, line: 318, baseType: !1127, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1314, file: !19, line: 319, baseType: !1127, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1314, file: !19, line: 320, baseType: !1157, size: 64, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1308, file: !19, line: 448, baseType: !527, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1308, file: !19, line: 449, baseType: !1307, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1304, file: !19, line: 224, baseType: !103, size: 32, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1304, file: !19, line: 226, baseType: !173, size: 128, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1304, file: !19, line: 227, baseType: !307, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1304, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1304, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1304, file: !19, line: 230, baseType: !1092, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1304, file: !19, line: 231, baseType: !1092, size: 64, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1304, file: !19, line: 232, baseType: !157, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1296, file: !19, line: 526, baseType: !1335, size: 192, offset: 2304)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 192, elements: !258)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !489, file: !14, line: 1233, baseType: !1337, size: 2368, offset: 4544)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1338)
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1337, file: !14, line: 1185, baseType: !227, size: 16)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1337, file: !14, line: 1186, baseType: !227, size: 16, offset: 16)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1337, file: !14, line: 1187, baseType: !1342, size: 2304, offset: 64)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1343, size: 2304, elements: !258)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1344, line: 12, size: 768, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1345 = !{!1346, !1360, !1361, !3446, !3447}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1343, file: !1344, line: 13, baseType: !1347, size: 384)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1348, line: 17, size: 384, elements: !1349)
!1348 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1349 = !{!1350, !1351, !1352, !1359}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1347, file: !1348, line: 18, baseType: !103, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1347, file: !1348, line: 19, baseType: !103, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1347, file: !1348, line: 20, baseType: !1353, size: 192, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1354, line: 41, baseType: !1355)
!1354 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1354, line: 37, size: 192, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1355, file: !1354, line: 38, baseType: !187, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1355, file: !1354, line: 39, baseType: !173, size: 128, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1347, file: !1348, line: 22, baseType: !818, size: 128, align: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1343, file: !1344, line: 14, baseType: !670, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1343, file: !1344, line: 15, baseType: !1362, size: 64, offset: 448)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1363, line: 16, size: 64, elements: !1364)
!1363 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1362, file: !1363, line: 17, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1042, line: 746, size: 58368, elements: !1368)
!1368 = !{!1369, !1377, !1378, !1379, !1385, !1386, !1387, !1388, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1459, !1470, !1565, !1569, !1572, !1603, !1604, !1605, !1606, !1617, !1619, !1620, !1621, !1622, !1623, !1624, !1635, !1636, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1653, !1654, !1661, !1662, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2621, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2669, !2675, !2676, !2677, !2678, !2679, !2683, !2686, !2693, !2698, !2701, !2704, !2707, !2710, !2848, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2886, !2887, !2888, !2897, !2905, !2906, !2907, !2908, !2909, !2914, !2915, !2916, !2919, !2920, !2923, !2926, !2929, !2937, !2940, !2941, !3027, !3028, !3029, !3030, !3031, !3037, !3038, !3039, !3040, !3043, !3044, !3047, !3050, !3051, !3054, !3055, !3056, !3059, !3060, !3061, !3062, !3063, !3064, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3096, !3097, !3103, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3115, !3187, !3189, !3190, !3191, !3192, !3193, !3194, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3223, !3224, !3225}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1367, file: !1042, line: 752, baseType: !1370, size: 192)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1371, line: 56, size: 192, elements: !1372)
!1371 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1372 = !{!1373, !1374, !1375, !1376}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1370, file: !1371, line: 57, baseType: !307, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1370, file: !1371, line: 58, baseType: !307, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1370, file: !1371, line: 59, baseType: !406, size: 32, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1370, file: !1371, line: 61, baseType: !406, size: 32, offset: 160)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1367, file: !1042, line: 754, baseType: !7, size: 32, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1367, file: !1042, line: 767, baseType: !157, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1367, file: !1042, line: 768, baseType: !1380, size: 32, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1381, line: 113, baseType: !1382)
!1381 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1381, line: 111, size: 32, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1382, file: !1381, line: 112, baseType: !207, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1367, file: !1042, line: 770, baseType: !7, size: 32, offset: 352)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1367, file: !1042, line: 771, baseType: !7, size: 32, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1367, file: !1042, line: 774, baseType: !103, size: 32, offset: 416)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1367, file: !1042, line: 775, baseType: !1389, size: 128, offset: 448)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1390, line: 58, size: 128, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1391 = !{!1392, !1398, !1403, !1404}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1389, file: !1390, line: 59, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1394, line: 60, size: 64, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1393, file: !1394, line: 61, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1390, line: 60, baseType: !1399, size: 32, offset: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1390, line: 60, size: 32, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1399, file: !1390, line: 61, baseType: !7, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1399, file: !1390, line: 62, baseType: !207, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1389, file: !1390, line: 65, baseType: !225, size: 16, offset: 96)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1389, file: !1390, line: 65, baseType: !225, size: 16, offset: 112)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1367, file: !1042, line: 776, baseType: !7, size: 32, offset: 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1367, file: !1042, line: 777, baseType: !307, size: 64, offset: 640)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1367, file: !1042, line: 778, baseType: !1366, size: 64, offset: 704)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1367, file: !1042, line: 787, baseType: !103, size: 32, offset: 768)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1367, file: !1042, line: 788, baseType: !103, size: 32, offset: 800)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1367, file: !1042, line: 790, baseType: !103, size: 32, offset: 832)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1367, file: !1042, line: 792, baseType: !103, size: 32, offset: 864)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1367, file: !1042, line: 793, baseType: !103, size: 32, offset: 896)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1367, file: !1042, line: 794, baseType: !103, size: 32, offset: 928)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1367, file: !1042, line: 795, baseType: !7, size: 32, offset: 960)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1367, file: !1042, line: 797, baseType: !1416, size: 2048, offset: 1024)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1042, line: 551, size: 2048, elements: !1417)
!1417 = !{!1418, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1438, !1441, !1442, !1443}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1416, file: !1042, line: 553, baseType: !1419, size: 128)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1042, line: 411, size: 128, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1419, file: !1042, line: 412, baseType: !307, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1419, file: !1042, line: 413, baseType: !406, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1416, file: !1042, line: 554, baseType: !710, size: 192, align: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1416, file: !1042, line: 555, baseType: !410, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1416, file: !1042, line: 556, baseType: !410, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1416, file: !1042, line: 558, baseType: !173, size: 128, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1416, file: !1042, line: 559, baseType: !7, size: 32, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1416, file: !1042, line: 561, baseType: !410, size: 64, offset: 640)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1416, file: !1042, line: 562, baseType: !410, size: 64, offset: 704)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1416, file: !1042, line: 563, baseType: !410, size: 64, offset: 768)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1416, file: !1042, line: 564, baseType: !410, size: 64, offset: 832)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1416, file: !1042, line: 565, baseType: !608, size: 64, offset: 896)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1416, file: !1042, line: 566, baseType: !410, size: 64, offset: 960)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1416, file: !1042, line: 568, baseType: !410, size: 64, offset: 1024)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1416, file: !1042, line: 571, baseType: !103, size: 32, offset: 1088)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1416, file: !1042, line: 572, baseType: !1437, size: 64, offset: 1152)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1416, file: !1042, line: 574, baseType: !1439, size: 64, offset: 1216)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1042, line: 49, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1416, file: !1042, line: 576, baseType: !1439, size: 64, offset: 1280)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1416, file: !1042, line: 578, baseType: !307, size: 64, offset: 1344)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1416, file: !1042, line: 588, baseType: !1444, size: 512, align: 512, offset: 1536)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1042, line: 497, size: 512, align: 512, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1444, file: !1042, line: 498, baseType: !410, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1444, file: !1042, line: 499, baseType: !410, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1444, file: !1042, line: 500, baseType: !410, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1444, file: !1042, line: 501, baseType: !406, size: 32, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1444, file: !1042, line: 502, baseType: !406, size: 32, offset: 224)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1444, file: !1042, line: 503, baseType: !307, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1444, file: !1042, line: 504, baseType: !307, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1444, file: !1042, line: 505, baseType: !307, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1444, file: !1042, line: 506, baseType: !1455, size: 64, align: 64, offset: 448)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1042, line: 445, size: 64, align: 64, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1455, file: !1042, line: 446, baseType: !7, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1455, file: !1042, line: 447, baseType: !7, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1367, file: !1042, line: 798, baseType: !1460, size: 384, offset: 3072)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1042, line: 592, size: 384, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1460, file: !1042, line: 593, baseType: !173, size: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1460, file: !1042, line: 594, baseType: !307, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1460, file: !1042, line: 595, baseType: !307, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1460, file: !1042, line: 596, baseType: !7, size: 32, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1460, file: !1042, line: 597, baseType: !227, size: 16, offset: 288)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1460, file: !1042, line: 598, baseType: !227, size: 16, offset: 304)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1460, file: !1042, line: 600, baseType: !1469, size: 64, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1367, file: !1042, line: 799, baseType: !1471, size: 1792, offset: 3456)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1042, line: 610, size: 1792, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1562, !1563}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1471, file: !1042, line: 611, baseType: !710, size: 192, align: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1471, file: !1042, line: 618, baseType: !410, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1471, file: !1042, line: 619, baseType: !410, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1471, file: !1042, line: 620, baseType: !410, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1471, file: !1042, line: 621, baseType: !410, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1471, file: !1042, line: 622, baseType: !410, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1471, file: !1042, line: 629, baseType: !608, size: 64, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1471, file: !1042, line: 630, baseType: !410, size: 64, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1471, file: !1042, line: 631, baseType: !7, size: 32, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1471, file: !1042, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1471, file: !1042, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1471, file: !1042, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1471, file: !1042, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1471, file: !1042, line: 662, baseType: !1487, size: 512, offset: 704)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1488)
!1488 = !{!1489, !1497, !1498, !1503, !1558, !1559, !1560, !1561}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1487, file: !25, line: 119, baseType: !1490, size: 256)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1491, line: 9, size: 256, elements: !1492)
!1491 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1490, file: !1491, line: 10, baseType: !710, size: 192, align: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1490, file: !1491, line: 11, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1496, line: 29, baseType: !608)
!1496 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1487, file: !25, line: 120, baseType: !1495, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1487, file: !25, line: 121, baseType: !1499, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!24, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1487, file: !25, line: 122, baseType: !1504, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1506)
!1506 = !{!1507, !1532, !1533, !1536, !1541, !1542, !1553, !1557}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1505, file: !25, line: 160, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1509, file: !25, line: 216, baseType: !556, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1509, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1509, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1509, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1509, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1509, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1509, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1509, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1509, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1509, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1509, file: !25, line: 227, baseType: !227, size: 16, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1509, file: !25, line: 228, baseType: !227, size: 16, offset: 208)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1509, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1509, file: !25, line: 235, baseType: !1495, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1509, file: !25, line: 236, baseType: !1502, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1509, file: !25, line: 237, baseType: !1495, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1509, file: !25, line: 238, baseType: !1502, size: 64, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1509, file: !25, line: 239, baseType: !1529, size: 4096, align: 512, offset: 512)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1505, size: 4096, align: 512, elements: !1530)
!1530 = !{!1531}
!1531 = !DISubrange(count: 8)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1505, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1505, file: !25, line: 162, baseType: !1534, size: 32, offset: 96)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !174, line: 32, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !291, line: 96, baseType: !103)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1505, file: !25, line: 163, baseType: !1537, size: 32, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !379, line: 274, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !379, line: 274, size: 32, elements: !1539)
!1539 = !{!1540}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1538, file: !379, line: 274, baseType: !383, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1505, file: !25, line: 164, baseType: !1502, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1505, file: !25, line: 165, baseType: !1543, size: 128, offset: 256)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1491, line: 14, size: 128, elements: !1544)
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1543, file: !1491, line: 15, baseType: !1546, size: 128)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !711, line: 26, size: 128, elements: !1547)
!1547 = !{!1548, !1552}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1546, file: !711, line: 27, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !711, line: 12, size: 64, elements: !1550)
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1549, file: !711, line: 13, baseType: !715, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1546, file: !711, line: 28, baseType: !715, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1505, file: !25, line: 166, baseType: !1554, size: 64, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!1495}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1505, file: !25, line: 167, baseType: !1495, size: 64, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1487, file: !25, line: 123, baseType: !215, size: 8, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1487, file: !25, line: 124, baseType: !215, size: 8, offset: 456)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1487, file: !25, line: 125, baseType: !215, size: 8, offset: 464)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1487, file: !25, line: 126, baseType: !215, size: 8, offset: 472)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1471, file: !1042, line: 671, baseType: !1487, size: 512, offset: 1216)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1471, file: !1042, line: 679, baseType: !1564, size: 64, offset: 1728)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1367, file: !1042, line: 800, baseType: !1566, size: 64, offset: 5248)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1042, line: 800, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1367, file: !1042, line: 809, baseType: !1570, size: 64, offset: 5312)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1042, line: 70, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1367, file: !1042, line: 825, baseType: !1573, size: 2048, align: 512, offset: 5632)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1042, line: 509, size: 2048, align: 512, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1573, file: !1042, line: 511, baseType: !410, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1573, file: !1042, line: 512, baseType: !410, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1573, file: !1042, line: 513, baseType: !410, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1573, file: !1042, line: 514, baseType: !410, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1573, file: !1042, line: 515, baseType: !410, size: 64, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1573, file: !1042, line: 516, baseType: !410, size: 64, offset: 320)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1573, file: !1042, line: 518, baseType: !410, size: 64, offset: 384)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1573, file: !1042, line: 519, baseType: !410, size: 64, offset: 448)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1573, file: !1042, line: 520, baseType: !608, size: 64, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1573, file: !1042, line: 522, baseType: !410, size: 64, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1573, file: !1042, line: 523, baseType: !410, size: 64, offset: 640)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1573, file: !1042, line: 524, baseType: !608, size: 64, offset: 704)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1573, file: !1042, line: 526, baseType: !608, size: 64, offset: 768)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1573, file: !1042, line: 527, baseType: !410, size: 64, offset: 832)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1573, file: !1042, line: 529, baseType: !410, size: 64, offset: 896)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1573, file: !1042, line: 530, baseType: !410, size: 64, offset: 960)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1573, file: !1042, line: 531, baseType: !410, size: 64, offset: 1024)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1573, file: !1042, line: 532, baseType: !410, size: 64, offset: 1088)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1573, file: !1042, line: 533, baseType: !410, size: 64, offset: 1152)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1573, file: !1042, line: 535, baseType: !410, size: 64, offset: 1216)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1573, file: !1042, line: 536, baseType: !410, size: 64, offset: 1280)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1573, file: !1042, line: 537, baseType: !410, size: 64, offset: 1344)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1573, file: !1042, line: 538, baseType: !410, size: 64, offset: 1408)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1573, file: !1042, line: 539, baseType: !410, size: 64, offset: 1472)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1573, file: !1042, line: 540, baseType: !410, size: 64, offset: 1536)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1573, file: !1042, line: 541, baseType: !410, size: 64, offset: 1600)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1573, file: !1042, line: 542, baseType: !410, size: 64, offset: 1664)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1573, file: !1042, line: 543, baseType: !410, size: 64, offset: 1728)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1367, file: !1042, line: 833, baseType: !7, size: 32, offset: 7680)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1367, file: !1042, line: 836, baseType: !7, size: 32, offset: 7712)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1367, file: !1042, line: 837, baseType: !103, size: 32, offset: 7744)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1367, file: !1042, line: 838, baseType: !1607, size: 64, offset: 7808)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1610, line: 19, baseType: !1611)
!1610 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1610, line: 19, size: 64, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1611, file: !1610, line: 19, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DISubrange(count: 1)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1367, file: !1042, line: 839, baseType: !1618, size: 64, offset: 7872)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1367, file: !1042, line: 840, baseType: !1609, size: 64, offset: 7936)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1367, file: !1042, line: 841, baseType: !157, size: 64, offset: 8000)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1367, file: !1042, line: 843, baseType: !227, size: 16, offset: 8064)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1367, file: !1042, line: 845, baseType: !227, size: 16, offset: 8080)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1367, file: !1042, line: 848, baseType: !103, size: 32, offset: 8096)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1367, file: !1042, line: 849, baseType: !1625, size: 32, offset: 8128)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1042, line: 718, size: 32, elements: !1626)
!1626 = !{!1627, !1634}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1625, file: !1042, line: 724, baseType: !1628, size: 32)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1625, file: !1042, line: 719, size: 32, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1633}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1628, file: !1042, line: 720, baseType: !215, size: 8)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1628, file: !1042, line: 721, baseType: !215, size: 8, offset: 8)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1628, file: !1042, line: 722, baseType: !215, size: 8, offset: 16)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1628, file: !1042, line: 723, baseType: !215, size: 8, offset: 24)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1625, file: !1042, line: 725, baseType: !406, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1367, file: !1042, line: 850, baseType: !173, size: 128, offset: 8192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1367, file: !1042, line: 851, baseType: !1637, size: 64, offset: 8320)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1042, line: 60, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1367, file: !1042, line: 855, baseType: !307, size: 64, offset: 8384)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1367, file: !1042, line: 856, baseType: !215, size: 8, offset: 8448)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1367, file: !1042, line: 857, baseType: !215, size: 8, offset: 8456)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1367, file: !1042, line: 858, baseType: !103, size: 32, offset: 8480)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1367, file: !1042, line: 859, baseType: !173, size: 128, offset: 8512)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1367, file: !1042, line: 860, baseType: !103, size: 32, offset: 8640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1367, file: !1042, line: 861, baseType: !173, size: 128, offset: 8704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1367, file: !1042, line: 873, baseType: !1647, size: 256, offset: 8832)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1042, line: 376, size: 256, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1647, file: !1042, line: 381, baseType: !307, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1647, file: !1042, line: 384, baseType: !412, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1647, file: !1042, line: 389, baseType: !412, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1647, file: !1042, line: 392, baseType: !412, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1367, file: !1042, line: 875, baseType: !173, size: 128, offset: 9088)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1367, file: !1042, line: 877, baseType: !1655, size: 320, offset: 9216)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1656, line: 86, size: 320, elements: !1657)
!1656 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1657 = !{!1658, !1659, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1655, file: !1656, line: 87, baseType: !103, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1655, file: !1656, line: 88, baseType: !173, size: 128, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1655, file: !1656, line: 89, baseType: !173, size: 128, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1367, file: !1042, line: 878, baseType: !710, size: 192, align: 64, offset: 9536)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1367, file: !1042, line: 881, baseType: !1663, size: 64, offset: 9728)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1665)
!1665 = !{!1666, !2540}
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1664, file: !38, line: 734, baseType: !1667, size: 10240)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1664, file: !38, line: 734, size: 10240, elements: !1668)
!1668 = !{!1669, !1673, !1686, !2417, !2418, !2419, !2420, !2421, !2422, !2429, !2430, !2431, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2470, !2472, !2475, !2520, !2521, !2522, !2525, !2526, !2527, !2530, !2531, !2532, !2538, !2539}
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !38, line: 739, baseType: !1670, size: 512, align: 512)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !38, line: 739, size: 512, align: 512, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1670, file: !38, line: 747, baseType: !207, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1667, file: !38, line: 750, baseType: !1674, size: 128, offset: 512)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1675, line: 218, size: 128, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1676 = !{!1677, !1684, !1685}
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1675, line: 219, baseType: !1678, size: 32)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1674, file: !1675, line: 219, size: 32, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1678, file: !1675, line: 220, baseType: !187, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1678, file: !1675, line: 221, baseType: !1682)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1675, line: 197, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1675, line: 197, elements: !887)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1674, file: !1675, line: 223, baseType: !7, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1674, file: !1675, line: 224, baseType: !157, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1667, file: !38, line: 752, baseType: !1687, size: 64, offset: 640)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!307, !1690, !307, !307, !307, !307}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1692)
!1692 = !{!1693, !1699, !1700, !1702, !1703, !1704, !1705, !1706, !1756, !1946, !1955, !1956, !1957, !2407, !2408, !2409, !2410, !2412, !2413, !2416}
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !14, line: 995, baseType: !1694, size: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !14, line: 995, size: 128, elements: !1695)
!1695 = !{!1696, !1697, !1698}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1694, file: !14, line: 996, baseType: !1393, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1694, file: !14, line: 997, baseType: !818, size: 128, align: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1694, file: !14, line: 998, baseType: !7, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1691, file: !14, line: 1005, baseType: !187, size: 32, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1691, file: !14, line: 1006, baseType: !1701, size: 32, offset: 160)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !174, line: 156, baseType: !7)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1691, file: !14, line: 1007, baseType: !602, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1691, file: !14, line: 1008, baseType: !598, size: 256, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1691, file: !14, line: 1009, baseType: !498, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1691, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1691, file: !14, line: 1011, baseType: !1707, size: 256, offset: 640)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1708)
!1708 = !{!1709, !1730, !1752, !1753, !1754, !1755}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1707, file: !14, line: 949, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1711, line: 34, baseType: !1712)
!1711 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1711, line: 25, size: 64, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1712, file: !1711, line: 26, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1716, line: 27, baseType: !1717)
!1716 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1716, line: 13, size: 64, elements: !1718)
!1718 = !{!1719, !1729}
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !1716, line: 14, baseType: !1720, size: 32)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1717, file: !1716, line: 14, size: 32, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1720, file: !1716, line: 15, baseType: !207, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !1716, line: 16, baseType: !1724, size: 32)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1720, file: !1716, line: 16, size: 32, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1724, file: !1716, line: 18, baseType: !215, size: 8)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1724, file: !1716, line: 19, baseType: !1728, size: 24, offset: 8)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 24, elements: !258)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1717, file: !1716, line: 26, baseType: !199, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1707, file: !14, line: 950, baseType: !1731, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1739, !1740, !1741, !1742}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1732, file: !30, line: 61, baseType: !1380, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1732, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !30, line: 63, baseType: !187, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1732, file: !30, line: 65, baseType: !1738, size: 256, offset: 128)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 256, elements: !828)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1732, file: !30, line: 66, baseType: !968, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1732, file: !30, line: 68, baseType: !1353, size: 192, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1732, file: !30, line: 69, baseType: !818, size: 128, align: 64, offset: 640)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1732, file: !30, line: 70, baseType: !1743, offset: 768)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1744, elements: !1750)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1745)
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1744, file: !30, line: 55, baseType: !103, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1744, file: !30, line: 56, baseType: !1748, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1750 = !{!1751}
!1751 = !DISubrange(count: -1)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1707, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1707, file: !14, line: 952, baseType: !343, size: 32, offset: 160)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1707, file: !14, line: 952, baseType: !343, size: 32, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1707, file: !14, line: 953, baseType: !103, size: 32, offset: 224)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1691, file: !14, line: 1012, baseType: !1757, size: 64, offset: 896)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1760, line: 110, size: 1472, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1778, !1779, !1780, !1781, !1782, !1783, !1891, !1892, !1893, !1894, !1895, !1926, !1929, !1933, !1941}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1759, file: !1760, line: 111, baseType: !602, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1759, file: !1760, line: 112, baseType: !343, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1759, file: !1760, line: 113, baseType: !352, size: 32, offset: 96)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1759, file: !1760, line: 114, baseType: !343, size: 32, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1759, file: !1760, line: 115, baseType: !352, size: 32, offset: 160)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1759, file: !1760, line: 116, baseType: !343, size: 32, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1759, file: !1760, line: 117, baseType: !352, size: 32, offset: 224)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1759, file: !1760, line: 118, baseType: !343, size: 32, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1759, file: !1760, line: 119, baseType: !352, size: 32, offset: 288)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1759, file: !1760, line: 120, baseType: !7, size: 32, offset: 320)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1759, file: !1760, line: 121, baseType: !1773, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1774, line: 24, baseType: !1775)
!1774 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1774, line: 24, size: 64, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1775, file: !1774, line: 24, baseType: !410, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1759, file: !1760, line: 122, baseType: !1773, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1759, file: !1760, line: 123, baseType: !1773, size: 64, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1759, file: !1760, line: 124, baseType: !1773, size: 64, offset: 576)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1759, file: !1760, line: 125, baseType: !1773, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1759, file: !1760, line: 127, baseType: !219, size: 8, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1759, file: !1760, line: 129, baseType: !1784, size: 64, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1786, line: 195, size: 1728, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1787 = !{!1788, !1789, !1792, !1797, !1798, !1801, !1802, !1807, !1808, !1809, !1810, !1813, !1814, !1815, !1816, !1817, !1855, !1876}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1785, file: !1786, line: 196, baseType: !1380, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1785, file: !1786, line: 197, baseType: !1790, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1786, line: 28, baseType: !1791)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !174, line: 104, baseType: !594)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !1786, line: 198, baseType: !1793, size: 192, offset: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1785, file: !1786, line: 198, size: 192, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1793, file: !1786, line: 199, baseType: !173, size: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1793, file: !1786, line: 200, baseType: !710, size: 192, align: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1785, file: !1786, line: 205, baseType: !1260, size: 320, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1785, file: !1786, line: 206, baseType: !1799, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1786, line: 206, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1785, file: !1786, line: 207, baseType: !157, size: 64, offset: 640)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !1786, line: 208, baseType: !1803, size: 64, offset: 704)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1785, file: !1786, line: 208, size: 64, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1803, file: !1786, line: 209, baseType: !1100, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1803, file: !1786, line: 210, baseType: !1100, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1785, file: !1786, line: 212, baseType: !1100, size: 64, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1785, file: !1786, line: 213, baseType: !343, size: 32, offset: 832)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1785, file: !1786, line: 214, baseType: !352, size: 32, offset: 864)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1785, file: !1786, line: 215, baseType: !1811, size: 32, offset: 896)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1786, line: 31, baseType: !1812)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !174, line: 110, baseType: !406)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1785, file: !1786, line: 216, baseType: !227, size: 16, offset: 928)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1785, file: !1786, line: 217, baseType: !227, size: 16, offset: 944)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1785, file: !1786, line: 221, baseType: !736, size: 16, offset: 960)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1785, file: !1786, line: 228, baseType: !307, size: 64, offset: 1024)
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !1786, line: 245, baseType: !1818, size: 320, offset: 1088)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1785, file: !1786, line: 245, size: 320, elements: !1819)
!1819 = !{!1820, !1847}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1818, file: !1786, line: 246, baseType: !1821, size: 320)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1786, line: 114, size: 320, elements: !1822)
!1822 = !{!1823, !1824, !1836, !1839, !1846}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1821, file: !1786, line: 116, baseType: !307, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !1786, line: 117, baseType: !1825, size: 64, offset: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1821, file: !1786, line: 117, size: 64, elements: !1826)
!1826 = !{!1827, !1835}
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !1786, line: 118, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !1786, line: 118, size: 64, elements: !1829)
!1829 = !{!1830, !1831}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1828, file: !1786, line: 120, baseType: !225, size: 16)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1828, file: !1786, line: 121, baseType: !1832, size: 48, offset: 16)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 48, elements: !1833)
!1833 = !{!1834}
!1834 = !DISubrange(count: 6)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1825, file: !1786, line: 127, baseType: !307, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1821, file: !1786, line: 129, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1786, line: 102, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1821, file: !1786, line: 130, baseType: !1840, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1786, line: 108, size: 192, elements: !1842)
!1842 = !{!1843, !1844, !1845}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1841, file: !1786, line: 109, baseType: !818, size: 128, align: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1841, file: !1786, line: 110, baseType: !1380, size: 32, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1841, file: !1786, line: 111, baseType: !678, size: 8, offset: 160)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1821, file: !1786, line: 131, baseType: !169, size: 64, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1786, line: 247, baseType: !1848, size: 320)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1786, line: 247, size: 320, elements: !1849)
!1849 = !{!1850, !1851, !1852, !1853, !1854}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1848, file: !1786, line: 248, baseType: !307, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1848, file: !1786, line: 249, baseType: !307, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1848, file: !1786, line: 250, baseType: !1837, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1848, file: !1786, line: 251, baseType: !1840, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1848, file: !1786, line: 252, baseType: !257, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !1786, line: 260, baseType: !1856, size: 256, offset: 1408)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1785, file: !1786, line: 260, size: 256, elements: !1857)
!1857 = !{!1858, !1864}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1856, file: !1786, line: 261, baseType: !1859, size: 256)
!1859 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1786, line: 134, size: 256, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1859, file: !1786, line: 135, baseType: !157, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1859, file: !1786, line: 136, baseType: !1863, size: 256)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !828)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !1786, line: 262, baseType: !1865, size: 256)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !1786, line: 262, size: 256, elements: !1866)
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1865, file: !1786, line: 264, baseType: !173, size: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1865, file: !1786, line: 265, baseType: !1869, size: 128, offset: 128)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1870, line: 22, size: 128, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1871 = !{!1872, !1875}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1869, file: !1870, line: 23, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1870, line: 23, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1869, file: !1870, line: 24, baseType: !307, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1785, file: !1786, line: 280, baseType: !1877, size: 64, offset: 1664)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1786, line: 176, size: 192, elements: !1879)
!1879 = !{!1880, !1889, !1890}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1878, file: !1786, line: 177, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1786, line: 171, baseType: !1882)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!103, !1784, !1885, !1887, !1784}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1838)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1859)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1878, file: !1786, line: 178, baseType: !1784, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1878, file: !1786, line: 179, baseType: !1837, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1759, file: !1760, line: 130, baseType: !1784, size: 64, offset: 832)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1759, file: !1760, line: 131, baseType: !1784, size: 64, offset: 896)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1759, file: !1760, line: 132, baseType: !1784, size: 64, offset: 960)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1759, file: !1760, line: 135, baseType: !157, size: 64, offset: 1024)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1759, file: !1760, line: 137, baseType: !1896, size: 64, offset: 1088)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1898, line: 14, size: 1088, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1899 = !{!1900, !1901, !1910, !1911, !1912, !1913, !1914, !1915}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1897, file: !1898, line: 15, baseType: !1380, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1897, file: !1898, line: 17, baseType: !1902, size: 320, offset: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1903, line: 22, size: 320, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1904 = !{!1905, !1906, !1907, !1908}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1902, file: !1903, line: 23, baseType: !556, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1902, file: !1903, line: 24, baseType: !608, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1902, file: !1903, line: 26, baseType: !173, size: 128, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1902, file: !1903, line: 28, baseType: !1909, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1897, file: !1898, line: 19, baseType: !307, size: 64, offset: 384)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1897, file: !1898, line: 20, baseType: !602, size: 64, offset: 448)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1897, file: !1898, line: 23, baseType: !844, size: 128, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1897, file: !1898, line: 24, baseType: !343, size: 32, offset: 640)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1897, file: !1898, line: 29, baseType: !602, size: 64, offset: 704)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1897, file: !1898, line: 36, baseType: !1916, size: 320, offset: 768)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1917, line: 15, size: 320, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1918 = !{!1919, !1920, !1921, !1922, !1923, !1924, !1925}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1916, file: !1917, line: 16, baseType: !556, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1916, file: !1917, line: 18, baseType: !103, size: 32, offset: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1916, file: !1917, line: 19, baseType: !103, size: 32, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1916, file: !1917, line: 20, baseType: !103, size: 32, offset: 96)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1916, file: !1917, line: 21, baseType: !103, size: 32, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1916, file: !1917, line: 22, baseType: !307, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1916, file: !1917, line: 23, baseType: !307, size: 64, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1759, file: !1760, line: 138, baseType: !1927, size: 64, offset: 1152)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1759, file: !1760, line: 139, baseType: !1930, size: 64, offset: 1216)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1932, line: 16, flags: DIFlagFwdDecl)
!1932 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1759, file: !1760, line: 140, baseType: !1934, size: 64, offset: 1280)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1760, line: 25, size: 64, elements: !1936)
!1936 = !{!1937, !1938, !1939}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1935, file: !1760, line: 26, baseType: !207, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1935, file: !1760, line: 27, baseType: !103, size: 32, offset: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1935, file: !1760, line: 28, baseType: !1940, offset: 64)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, elements: !1750)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1760, line: 142, baseType: !1942, size: 128, offset: 1344)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1760, line: 142, size: 128, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1942, file: !1760, line: 143, baseType: !103, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1942, file: !1760, line: 144, baseType: !818, size: 128, align: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1691, file: !14, line: 1013, baseType: !1947, size: 256, offset: 960)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1947, file: !14, line: 971, baseType: !307, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1947, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1947, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1947, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1947, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1947, file: !14, line: 976, baseType: !498, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1691, file: !14, line: 1014, baseType: !1172, size: 128, offset: 1216)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1691, file: !14, line: 1015, baseType: !337, size: 64, offset: 1344)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1691, file: !14, line: 1016, baseType: !1958, size: 64, offset: 1408)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1961)
!1961 = !{!1962, !1963, !1967, !1972, !1976, !2005, !2006, !2012, !2025, !2033, !2037, !2038, !2329, !2330, !2334, !2339, !2340, !2344, !2348, !2354, !2355, !2359, !2360, !2366, !2370, !2374, !2380, !2384, !2388, !2392, !2396, !2397, !2403}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1960, file: !14, line: 1915, baseType: !527, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1960, file: !14, line: 1916, baseType: !1964, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!498, !1690, !498, !103}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1960, file: !14, line: 1917, baseType: !1968, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!289, !1690, !257, !304, !1971}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1960, file: !14, line: 1918, baseType: !1973, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!289, !1690, !169, !304, !1971}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1960, file: !14, line: 1919, baseType: !1977, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!289, !1980, !2002}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1989, !1990, !1991, !1992}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1981, file: !14, line: 374, baseType: !1690, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1981, file: !14, line: 375, baseType: !498, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1981, file: !14, line: 376, baseType: !1986, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1980, !293}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1981, file: !14, line: 377, baseType: !157, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1981, file: !14, line: 378, baseType: !103, size: 32, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1981, file: !14, line: 379, baseType: !225, size: 16, offset: 288)
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !14, line: 380, baseType: !1993, size: 64, offset: 320)
!1993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1981, file: !14, line: 380, size: 64, elements: !1994)
!1994 = !{!1995, !1998}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1993, file: !14, line: 386, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1993, file: !14, line: 395, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!289, !157}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2004, line: 17, flags: DIFlagFwdDecl)
!2004 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1960, file: !14, line: 1920, baseType: !1977, size: 64, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1960, file: !14, line: 1921, baseType: !2007, size: 64, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!103, !1980, !2010, !7}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1960, file: !14, line: 1923, baseType: !2013, size: 64, offset: 448)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!103, !1690, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2018)
!2018 = !{!2019, !2024}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2017, file: !14, line: 1859, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!678, !2016, !169, !103, !498, !410, !7}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2017, file: !14, line: 1860, baseType: !498, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1960, file: !14, line: 1924, baseType: !2026, size: 64, offset: 512)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!2029, !1690, !2031}
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2030, line: 59, baseType: !7)
!2030 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !513, line: 31, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1960, file: !14, line: 1925, baseType: !2034, size: 64, offset: 576)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!293, !1690, !7, !307}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1960, file: !14, line: 1926, baseType: !2034, size: 64, offset: 640)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1960, file: !14, line: 1927, baseType: !2039, size: 64, offset: 704)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!103, !1690, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2044)
!2044 = !{!2045, !2054, !2055, !2063, !2070, !2071, !2076, !2077, !2082, !2083, !2086, !2322, !2323, !2324, !2325, !2326, !2327}
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2043, file: !38, line: 628, baseType: !2046, size: 128)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2043, file: !38, line: 628, size: 128, elements: !2047)
!2047 = !{!2048, !2053}
!2048 = !DIDerivedType(tag: DW_TAG_member, scope: !2046, file: !38, line: 629, baseType: !2049, size: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2046, file: !38, line: 629, size: 128, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2049, file: !38, line: 631, baseType: !307, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2049, file: !38, line: 632, baseType: !307, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2046, file: !38, line: 635, baseType: !818, size: 128, align: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2043, file: !38, line: 639, baseType: !1663, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2043, file: !38, line: 640, baseType: !2056, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2057, line: 297, baseType: !2058)
!2057 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2057, line: 297, size: 64, elements: !2059)
!2059 = !{!2060}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2058, file: !2057, line: 297, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2062, line: 19, baseType: !307)
!2062 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2043, file: !38, line: 646, baseType: !2064, size: 64, offset: 256)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2043, file: !38, line: 646, size: 64, elements: !2065)
!2065 = !{!2066, !2069}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2064, file: !38, line: 647, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2068)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !307)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2064, file: !38, line: 648, baseType: !2068, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2043, file: !38, line: 666, baseType: !103, size: 32, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2043, file: !38, line: 667, baseType: !2072, size: 64, offset: 384)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2074)
!2074 = !{!2075}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2073, file: !38, line: 580, baseType: !1260, size: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2043, file: !38, line: 670, baseType: !678, size: 8, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2043, file: !38, line: 681, baseType: !2078, size: 256, offset: 512)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !38, line: 678, size: 256, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2078, file: !38, line: 679, baseType: !710, size: 192, align: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2078, file: !38, line: 680, baseType: !307, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2043, file: !38, line: 689, baseType: !173, size: 128, offset: 768)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2043, file: !38, line: 691, baseType: !2084, size: 64, offset: 896)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2043, file: !38, line: 694, baseType: !2087, size: 64, offset: 960)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2089)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2090, line: 563, size: 1024, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2091 = !{!2092, !2096, !2097, !2101, !2105, !2109, !2286, !2290, !2294, !2298, !2299, !2300, !2304, !2308, !2314, !2318}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2089, file: !2090, line: 564, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !2042}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2089, file: !2090, line: 569, baseType: !2093, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2089, file: !2090, line: 571, baseType: !2098, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!103, !2042, !307}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2089, file: !2090, line: 572, baseType: !2102, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!103, !2042}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2089, file: !2090, line: 578, baseType: !2106, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!103, !2042, !307, !307, !307}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2089, file: !2090, line: 580, baseType: !2110, size: 64, offset: 320)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2090, line: 512, size: 896, elements: !2116)
!2116 = !{!2117, !2125, !2126, !2133, !2140, !2150, !2279, !2280, !2282, !2284}
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2090, line: 513, baseType: !2118, size: 320)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !2090, line: 513, size: 320, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2123, !2124}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2118, file: !2090, line: 514, baseType: !2042, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2118, file: !2090, line: 515, baseType: !1112, size: 32, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2118, file: !2090, line: 516, baseType: !307, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2118, file: !2090, line: 517, baseType: !307, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2118, file: !2090, line: 518, baseType: !307, size: 64, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2115, file: !2090, line: 520, baseType: !37, size: 32, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2115, file: !2090, line: 522, baseType: !2127, size: 64, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2062, line: 22, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2062, line: 22, size: 64, elements: !2130)
!2130 = !{!2131}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2129, file: !2062, line: 22, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2062, line: 15, baseType: !307)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2115, file: !2090, line: 524, baseType: !2134, size: 64, offset: 448)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2057, line: 372, baseType: !2136)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2057, line: 372, size: 64, elements: !2137)
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2136, file: !2057, line: 372, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2062, line: 16, baseType: !307)
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2090, line: 527, baseType: !2141, size: 64, offset: 512)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !2090, line: 527, size: 64, elements: !2142)
!2142 = !{!2143, !2149}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2141, file: !2090, line: 528, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2062, line: 21, baseType: !2145)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2062, line: 21, size: 64, elements: !2146)
!2146 = !{!2147}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2145, file: !2062, line: 21, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2062, line: 14, baseType: !307)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2141, file: !2090, line: 529, baseType: !2128, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2115, file: !2090, line: 534, baseType: !2151, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2153)
!2153 = !{!2154, !2155, !2273, !2278}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2152, file: !38, line: 75, baseType: !307, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, scope: !2152, file: !38, line: 83, baseType: !2156, size: 320, offset: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2152, file: !38, line: 83, size: 320, elements: !2157)
!2157 = !{!2158, !2179, !2193, !2197, !2272}
!2158 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !38, line: 84, baseType: !2159, size: 320)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2156, file: !38, line: 84, size: 320, elements: !2160)
!2160 = !{!2161, !2172, !2173, !2178}
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !38, line: 90, baseType: !2162, size: 128)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2159, file: !38, line: 90, size: 128, elements: !2163)
!2163 = !{!2164, !2165, !2170, !2171}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2162, file: !38, line: 91, baseType: !173, size: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !38, line: 94, baseType: !2166, size: 128)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2162, file: !38, line: 94, size: 128, elements: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2166, file: !38, line: 96, baseType: !157, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2166, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2162, file: !38, line: 102, baseType: !173, size: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2162, file: !38, line: 103, baseType: !173, size: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2159, file: !38, line: 106, baseType: !333, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !38, line: 107, baseType: !2174, size: 64, offset: 192)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2159, file: !38, line: 107, size: 64, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2174, file: !38, line: 108, baseType: !307, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2174, file: !38, line: 109, baseType: !307, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2159, file: !38, line: 117, baseType: !307, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !38, line: 119, baseType: !2180, size: 320)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2156, file: !38, line: 119, size: 320, elements: !2181)
!2181 = !{!2182, !2183, !2186, !2187, !2188}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2180, file: !38, line: 124, baseType: !307, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2180, file: !38, line: 125, baseType: !2184, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2180, file: !38, line: 126, baseType: !307, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2180, file: !38, line: 127, baseType: !307, size: 64, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, scope: !2180, file: !38, line: 128, baseType: !2189, size: 64, offset: 256)
!2189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2180, file: !38, line: 128, size: 64, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2189, file: !38, line: 133, baseType: !307, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2189, file: !38, line: 138, baseType: !602, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !38, line: 141, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2156, file: !38, line: 141, size: 64, elements: !2195)
!2195 = !{!2196}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2194, file: !38, line: 142, baseType: !307, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !38, line: 144, baseType: !2198, size: 128)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2156, file: !38, line: 144, size: 128, elements: !2199)
!2199 = !{!2200, !2271}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2198, file: !38, line: 146, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2203)
!2203 = !{!2204, !2214, !2235, !2236, !2237, !2238, !2239, !2253, !2254, !2255}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2202, file: !54, line: 127, baseType: !2205, size: 384)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2206)
!2206 = !{!2207, !2208, !2210, !2211, !2212, !2213}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2205, file: !54, line: 22, baseType: !307, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2205, file: !54, line: 23, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2205, file: !54, line: 24, baseType: !2209, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2205, file: !54, line: 25, baseType: !307, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2205, file: !54, line: 26, baseType: !307, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2205, file: !54, line: 27, baseType: !307, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2202, file: !54, line: 128, baseType: !2215, size: 128, offset: 384)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2216, line: 105, size: 128, elements: !2217)
!2216 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2215, file: !2216, line: 110, baseType: !307, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2215, file: !2216, line: 118, baseType: !2220, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2216, line: 95, size: 448, elements: !2222)
!2222 = !{!2223, !2224, !2230, !2231, !2232, !2233, !2234}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2221, file: !2216, line: 96, baseType: !602, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2221, file: !2216, line: 97, baseType: !2225, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2216, line: 60, baseType: !2227)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2221, file: !2216, line: 98, baseType: !2225, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2221, file: !2216, line: 99, baseType: !678, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2221, file: !2216, line: 100, baseType: !678, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2221, file: !2216, line: 101, baseType: !818, size: 128, align: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2221, file: !2216, line: 102, baseType: !2229, size: 64, offset: 384)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2202, file: !54, line: 129, baseType: !547, size: 256, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2202, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2202, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2202, file: !54, line: 132, baseType: !307, size: 64, offset: 832)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2202, file: !54, line: 133, baseType: !2240, size: 64, offset: 896)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2243)
!2243 = !{!2244, !2248, !2249}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2242, file: !54, line: 83, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !2151}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2242, file: !54, line: 89, baseType: !2110, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2242, file: !54, line: 100, baseType: !2250, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!103, !2201, !307, !307, !103}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2202, file: !54, line: 134, baseType: !157, size: 64, offset: 960)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2202, file: !54, line: 135, baseType: !103, size: 32, offset: 1024)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !54, line: 136, baseType: !2256, size: 128, offset: 1088)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !54, line: 136, size: 128, elements: !2257)
!2257 = !{!2258, !2264}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2256, file: !54, line: 137, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2260, line: 6, size: 128, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2259, file: !2260, line: 7, baseType: !410, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2259, file: !2260, line: 8, baseType: !410, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !54, line: 138, baseType: !2265)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !54, line: 138, elements: !2266)
!2266 = !{!2267, !2269}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2265, file: !54, line: 138, baseType: !2268)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !54, line: 138, elements: !887)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2265, file: !54, line: 138, baseType: !2270)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2259, elements: !1750)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2198, file: !38, line: 147, baseType: !157, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2156, file: !38, line: 161, baseType: !818, size: 128, align: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2152, file: !38, line: 164, baseType: !2274, size: 32, offset: 384)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2152, file: !38, line: 164, size: 32, elements: !2275)
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2274, file: !38, line: 169, baseType: !207, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2274, file: !38, line: 177, baseType: !7, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2152, file: !38, line: 181, baseType: !207, size: 32, offset: 416)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2115, file: !2090, line: 535, baseType: !2151, size: 64, offset: 640)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2115, file: !2090, line: 541, baseType: !2281, size: 64, offset: 704)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2115, file: !2090, line: 545, baseType: !2283, size: 64, offset: 768)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2115, file: !2090, line: 549, baseType: !2285, size: 64, offset: 832)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2057, line: 520, baseType: !2151)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2089, file: !2090, line: 581, baseType: !2287, size: 64, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!2113, !2114, !7}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2089, file: !2090, line: 582, baseType: !2291, size: 64, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!2113, !2114, !307, !307}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2089, file: !2090, line: 584, baseType: !2295, size: 64, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!307, !2042}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2089, file: !2090, line: 588, baseType: !2110, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2089, file: !2090, line: 591, baseType: !2110, size: 64, offset: 640)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2089, file: !2090, line: 597, baseType: !2301, size: 64, offset: 704)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!103, !2042, !307, !157, !103, !103}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2089, file: !2090, line: 603, baseType: !2305, size: 64, offset: 768)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!169, !2042}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2089, file: !2090, line: 613, baseType: !2309, size: 64, offset: 832)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!103, !2042, !2312}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2089, file: !2090, line: 625, baseType: !2315, size: 64, offset: 896)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!2312, !2042, !307}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2089, file: !2090, line: 633, baseType: !2319, size: 64, offset: 960)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2151, !2042, !307}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2043, file: !38, line: 697, baseType: !307, size: 64, offset: 1024)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2043, file: !38, line: 699, baseType: !1690, size: 64, offset: 1088)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2043, file: !38, line: 700, baseType: !157, size: 64, offset: 1152)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2043, file: !38, line: 711, baseType: !602, size: 64, offset: 1216)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2043, file: !38, line: 717, baseType: !2312, size: 64, offset: 1280)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2043, file: !38, line: 722, baseType: !2328, offset: 1344)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !887)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1960, file: !14, line: 1928, baseType: !307, size: 64, offset: 768)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1960, file: !14, line: 1929, baseType: !2331, size: 64, offset: 832)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!103, !337, !1690}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1960, file: !14, line: 1930, baseType: !2335, size: 64, offset: 896)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!103, !1690, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !157)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1960, file: !14, line: 1931, baseType: !2331, size: 64, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1960, file: !14, line: 1932, baseType: !2341, size: 64, offset: 1024)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!103, !1690, !498, !498, !103}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1960, file: !14, line: 1933, baseType: !2345, size: 64, offset: 1088)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!103, !103, !1690, !103}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1960, file: !14, line: 1934, baseType: !2349, size: 64, offset: 1152)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!103, !1690, !103, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1960, file: !14, line: 1935, baseType: !1687, size: 64, offset: 1216)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1960, file: !14, line: 1936, baseType: !2356, size: 64, offset: 1280)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!103, !103}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1960, file: !14, line: 1937, baseType: !2349, size: 64, offset: 1344)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1960, file: !14, line: 1938, baseType: !2361, size: 64, offset: 1408)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!289, !2364, !1690, !1971, !304, !7}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1042, line: 59, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1960, file: !14, line: 1939, baseType: !2367, size: 64, offset: 1472)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!289, !1690, !1971, !2364, !304, !7}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1960, file: !14, line: 1940, baseType: !2371, size: 64, offset: 1536)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{null, !1690}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1960, file: !14, line: 1941, baseType: !2375, size: 64, offset: 1600)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!103, !1690, !103, !2378, !2379}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1960, file: !14, line: 1942, baseType: !2381, size: 64, offset: 1664)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!293, !1690, !103, !498, !498}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1960, file: !14, line: 1944, baseType: !2385, size: 64, offset: 1728)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !1040, !1690}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1960, file: !14, line: 1948, baseType: !2389, size: 64, offset: 1792)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!289, !1690, !498, !1690, !498, !304, !7}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1960, file: !14, line: 1950, baseType: !2393, size: 64, offset: 1856)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!498, !1690, !498, !1690, !498, !498, !7}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1960, file: !14, line: 1953, baseType: !2341, size: 64, offset: 1920)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1960, file: !14, line: 1954, baseType: !2398, size: 64, offset: 1984)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!103, !2401, !7}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1960, file: !14, line: 1955, baseType: !2404, size: 64, offset: 2048)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!103, !2401, !2010, !7}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1691, file: !14, line: 1018, baseType: !410, size: 64, offset: 1472)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1691, file: !14, line: 1020, baseType: !157, size: 64, offset: 1536)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1691, file: !14, line: 1023, baseType: !157, size: 64, offset: 1600)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1691, file: !14, line: 1027, baseType: !2411, size: 64, offset: 1664)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1691, file: !14, line: 1029, baseType: !333, size: 64, offset: 1728)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1691, file: !14, line: 1030, baseType: !2414, size: 32, offset: 1792)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2415, line: 8, baseType: !406)
!2415 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1691, file: !14, line: 1031, baseType: !2414, size: 32, offset: 1824)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1667, file: !38, line: 756, baseType: !307, size: 64, offset: 704)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1667, file: !38, line: 757, baseType: !307, size: 64, offset: 768)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1667, file: !38, line: 760, baseType: !307, size: 64, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1667, file: !38, line: 761, baseType: !307, size: 64, offset: 896)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1667, file: !38, line: 763, baseType: !307, size: 64, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1667, file: !38, line: 764, baseType: !2423, size: 64, offset: 1024)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2057, line: 299, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2057, line: 299, size: 64, elements: !2426)
!2426 = !{!2427}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2425, file: !2057, line: 299, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2062, line: 18, baseType: !307)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1667, file: !38, line: 773, baseType: !207, size: 32, offset: 1088)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1667, file: !38, line: 785, baseType: !207, size: 32, offset: 1120)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1667, file: !38, line: 795, baseType: !2432, size: 64, offset: 1152)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2434)
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2433, file: !38, line: 727, baseType: !410, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2433, file: !38, line: 728, baseType: !103, size: 32, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1667, file: !38, line: 801, baseType: !307, size: 64, offset: 1216)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1667, file: !38, line: 804, baseType: !602, size: 64, offset: 1280)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1667, file: !38, line: 806, baseType: !103, size: 32, offset: 1344)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1667, file: !38, line: 808, baseType: !187, size: 32, offset: 1376)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1667, file: !38, line: 823, baseType: !1260, size: 320, offset: 1408)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1667, file: !38, line: 825, baseType: !173, size: 128, offset: 1728)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1667, file: !38, line: 845, baseType: !103, size: 32, offset: 1856)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1667, file: !38, line: 849, baseType: !307, size: 64, offset: 1920)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1667, file: !38, line: 850, baseType: !307, size: 64, offset: 1984)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1667, file: !38, line: 852, baseType: !307, size: 64, offset: 2048)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1667, file: !38, line: 853, baseType: !307, size: 64, offset: 2112)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1667, file: !38, line: 854, baseType: !604, size: 64, offset: 2176)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1667, file: !38, line: 855, baseType: !307, size: 64, offset: 2240)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1667, file: !38, line: 856, baseType: !307, size: 64, offset: 2304)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1667, file: !38, line: 857, baseType: !307, size: 64, offset: 2368)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1667, file: !38, line: 858, baseType: !307, size: 64, offset: 2432)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1667, file: !38, line: 865, baseType: !383, size: 32, offset: 2496)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1667, file: !38, line: 867, baseType: !187, size: 32, offset: 2528)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1667, file: !38, line: 869, baseType: !307, size: 64, offset: 2560)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1667, file: !38, line: 869, baseType: !307, size: 64, offset: 2624)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1667, file: !38, line: 869, baseType: !307, size: 64, offset: 2688)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1667, file: !38, line: 869, baseType: !307, size: 64, offset: 2752)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1667, file: !38, line: 870, baseType: !307, size: 64, offset: 2816)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1667, file: !38, line: 870, baseType: !307, size: 64, offset: 2880)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1667, file: !38, line: 870, baseType: !307, size: 64, offset: 2944)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1667, file: !38, line: 871, baseType: !307, size: 64, offset: 3008)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1667, file: !38, line: 871, baseType: !307, size: 64, offset: 3072)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1667, file: !38, line: 871, baseType: !307, size: 64, offset: 3136)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1667, file: !38, line: 871, baseType: !307, size: 64, offset: 3200)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1667, file: !38, line: 873, baseType: !2467, size: 3328, offset: 3264)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 3328, elements: !2468)
!2468 = !{!2469}
!2469 = !DISubrange(count: 52)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1667, file: !38, line: 875, baseType: !2471, size: 1280, offset: 6592)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1902, size: 1280, elements: !828)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1667, file: !38, line: 877, baseType: !2473, size: 64, offset: 7872)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1667, file: !38, line: 880, baseType: !2476, size: 1088, offset: 7936)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2477, line: 72, baseType: !2478)
!2477 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2477, line: 23, size: 1088, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2487, !2488, !2489, !2490, !2517, !2518, !2519}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2478, file: !2477, line: 28, baseType: !410, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2478, file: !2477, line: 38, baseType: !604, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2478, file: !2477, line: 40, baseType: !307, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2478, file: !2477, line: 43, baseType: !1260, size: 320, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2478, file: !2477, line: 44, baseType: !2485, size: 64, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2477, line: 44, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2478, file: !2477, line: 48, baseType: !307, size: 64, offset: 576)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2478, file: !2477, line: 59, baseType: !598, size: 256, offset: 640)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2478, file: !2477, line: 60, baseType: !157, size: 64, offset: 896)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2478, file: !2477, line: 61, baseType: !2491, size: 64, offset: 960)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2493)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2494, line: 13, size: 1216, elements: !2495)
!2494 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2495 = !{!2496, !2497, !2498, !2499, !2500, !2501, !2502, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2493, file: !2494, line: 14, baseType: !157, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2493, file: !2494, line: 15, baseType: !307, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2493, file: !2494, line: 17, baseType: !307, size: 64, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2493, file: !2494, line: 17, baseType: !307, size: 64, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2493, file: !2494, line: 18, baseType: !307, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2493, file: !2494, line: 18, baseType: !307, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2493, file: !2494, line: 19, baseType: !2503, size: 64, offset: 384)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2493, file: !2494, line: 21, baseType: !293, size: 64, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2493, file: !2494, line: 23, baseType: !293, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2493, file: !2494, line: 24, baseType: !293, size: 64, offset: 576)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2493, file: !2494, line: 25, baseType: !293, size: 64, offset: 640)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2493, file: !2494, line: 26, baseType: !293, size: 64, offset: 704)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2493, file: !2494, line: 27, baseType: !293, size: 64, offset: 768)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2493, file: !2494, line: 28, baseType: !293, size: 64, offset: 832)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2493, file: !2494, line: 29, baseType: !293, size: 64, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2493, file: !2494, line: 30, baseType: !293, size: 64, offset: 960)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2493, file: !2494, line: 31, baseType: !293, size: 64, offset: 1024)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2493, file: !2494, line: 32, baseType: !293, size: 64, offset: 1088)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2493, file: !2494, line: 33, baseType: !293, size: 64, offset: 1152)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2478, file: !2477, line: 63, baseType: !207, size: 32, offset: 1024)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2478, file: !2477, line: 69, baseType: !225, size: 16, offset: 1056)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2478, file: !2477, line: 70, baseType: !734, size: 16, offset: 1072)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1667, file: !38, line: 882, baseType: !307, size: 64, offset: 9024)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1667, file: !38, line: 885, baseType: !187, size: 32, offset: 9088)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1667, file: !38, line: 886, baseType: !2523, size: 64, offset: 9152)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1667, file: !38, line: 901, baseType: !1927, size: 64, offset: 9216)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1667, file: !38, line: 904, baseType: !1690, size: 64, offset: 9280)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1667, file: !38, line: 906, baseType: !2528, size: 64, offset: 9344)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1667, file: !38, line: 930, baseType: !207, size: 32, offset: 9408)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1667, file: !38, line: 933, baseType: !207, size: 32, offset: 9440)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1667, file: !38, line: 935, baseType: !2533, size: 64, offset: 9472)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2534)
!2534 = !{!2535}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2533, file: !68, line: 104, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1667, file: !38, line: 940, baseType: !602, size: 64, offset: 9536)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1667, file: !38, line: 942, baseType: !858, size: 256, offset: 9600)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1664, file: !38, line: 986, baseType: !2541, offset: 10240)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, elements: !1750)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1367, file: !1042, line: 882, baseType: !1663, size: 64, offset: 9792)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1367, file: !1042, line: 884, baseType: !103, size: 32, offset: 9856)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1367, file: !1042, line: 885, baseType: !103, size: 32, offset: 9888)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1367, file: !1042, line: 886, baseType: !103, size: 32, offset: 9920)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1367, file: !1042, line: 888, baseType: !103, size: 32, offset: 9952)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1367, file: !1042, line: 890, baseType: !307, size: 64, offset: 9984)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1367, file: !1042, line: 893, baseType: !7, size: 32, offset: 10048)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1367, file: !1042, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1367, file: !1042, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1367, file: !1042, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1367, file: !1042, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1367, file: !1042, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1367, file: !1042, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1367, file: !1042, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1367, file: !1042, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1367, file: !1042, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1367, file: !1042, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1367, file: !1042, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1367, file: !1042, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1367, file: !1042, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1367, file: !1042, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1367, file: !1042, line: 969, baseType: !307, size: 64, offset: 10176)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1367, file: !1042, line: 971, baseType: !2565, size: 448, offset: 10240)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2566)
!2566 = !{!2567, !2568, !2573}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2565, file: !62, line: 26, baseType: !307, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2565, file: !62, line: 27, baseType: !2569, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!293, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, scope: !2565, file: !62, line: 28, baseType: !2574, size: 320, offset: 128)
!2574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2565, file: !62, line: 28, size: 320, elements: !2575)
!2575 = !{!2576, !2586, !2611}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2574, file: !62, line: 37, baseType: !2577, size: 320)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2574, file: !62, line: 30, size: 320, elements: !2578)
!2578 = !{!2579, !2581, !2582, !2583, !2584, !2585}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2577, file: !62, line: 31, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2577, file: !62, line: 32, baseType: !406, size: 32, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2577, file: !62, line: 33, baseType: !406, size: 32, offset: 96)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2577, file: !62, line: 34, baseType: !406, size: 32, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2577, file: !62, line: 35, baseType: !410, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2577, file: !62, line: 36, baseType: !2580, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2574, file: !62, line: 47, baseType: !2587, size: 192)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2574, file: !62, line: 39, size: 192, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2610}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2587, file: !62, line: 40, baseType: !1534, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2587, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, scope: !2587, file: !62, line: 42, baseType: !2592, size: 64, offset: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2587, file: !62, line: 42, size: 64, elements: !2593)
!2593 = !{!2594, !2602}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2592, file: !62, line: 43, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2597, line: 7, size: 128, elements: !2598)
!2597 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2598 = !{!2599, !2601}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2596, file: !2597, line: 8, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !291, line: 93, baseType: !500)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2596, file: !2597, line: 9, baseType: !500, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2592, file: !62, line: 44, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2605, line: 7, size: 64, elements: !2606)
!2605 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2606 = !{!2607, !2609}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2604, file: !2605, line: 8, baseType: !2608, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2605, line: 5, baseType: !594)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2604, file: !2605, line: 9, baseType: !594, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2587, file: !62, line: 46, baseType: !410, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2574, file: !62, line: 55, baseType: !2612, size: 256)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2574, file: !62, line: 49, size: 256, elements: !2613)
!2613 = !{!2614, !2617, !2618, !2619, !2620}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2612, file: !62, line: 50, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2612, file: !62, line: 51, baseType: !103, size: 32, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2612, file: !62, line: 52, baseType: !103, size: 32, offset: 96)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2612, file: !62, line: 53, baseType: !307, size: 64, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2612, file: !62, line: 54, baseType: !307, size: 64, offset: 192)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1367, file: !1042, line: 973, baseType: !2622, size: 32, offset: 10688)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !174, line: 27, baseType: !2623)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !291, line: 28, baseType: !103)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1367, file: !1042, line: 974, baseType: !2622, size: 32, offset: 10720)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1367, file: !1042, line: 978, baseType: !307, size: 64, offset: 10752)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1367, file: !1042, line: 987, baseType: !1366, size: 64, offset: 10816)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1367, file: !1042, line: 990, baseType: !1366, size: 64, offset: 10880)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1367, file: !1042, line: 995, baseType: !173, size: 128, offset: 10944)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1367, file: !1042, line: 996, baseType: !173, size: 128, offset: 11072)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1367, file: !1042, line: 997, baseType: !1366, size: 64, offset: 11200)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1367, file: !1042, line: 1005, baseType: !173, size: 128, offset: 11264)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1367, file: !1042, line: 1006, baseType: !173, size: 128, offset: 11392)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1367, file: !1042, line: 1009, baseType: !1731, size: 64, offset: 11520)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1367, file: !1042, line: 1010, baseType: !2635, size: 512, offset: 11584)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 512, elements: !828)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1367, file: !1042, line: 1011, baseType: !173, size: 128, offset: 12096)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1367, file: !1042, line: 1012, baseType: !173, size: 128, offset: 12224)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1367, file: !1042, line: 1014, baseType: !546, size: 64, offset: 12352)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1367, file: !1042, line: 1017, baseType: !727, size: 64, offset: 12416)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1367, file: !1042, line: 1020, baseType: !727, size: 64, offset: 12480)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1367, file: !1042, line: 1023, baseType: !157, size: 64, offset: 12544)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1367, file: !1042, line: 1025, baseType: !410, size: 64, offset: 12608)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1367, file: !1042, line: 1026, baseType: !410, size: 64, offset: 12672)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1367, file: !1042, line: 1031, baseType: !410, size: 64, offset: 12736)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1367, file: !1042, line: 1032, baseType: !2646, size: 192, offset: 12800)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1042, line: 324, size: 192, elements: !2647)
!2647 = !{!2648, !2649, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2646, file: !1042, line: 326, baseType: !410, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2646, file: !1042, line: 327, baseType: !410, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2646, file: !1042, line: 328, baseType: !556, size: 32, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1367, file: !1042, line: 1041, baseType: !307, size: 64, offset: 12992)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1367, file: !1042, line: 1042, baseType: !307, size: 64, offset: 13056)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1367, file: !1042, line: 1045, baseType: !410, size: 64, offset: 13120)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1367, file: !1042, line: 1048, baseType: !410, size: 64, offset: 13184)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1367, file: !1042, line: 1051, baseType: !307, size: 64, offset: 13248)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1367, file: !1042, line: 1052, baseType: !307, size: 64, offset: 13312)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1367, file: !1042, line: 1055, baseType: !2658, size: 640, offset: 13376)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2659, line: 132, size: 640, elements: !2660)
!2659 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2660 = !{!2661, !2667, !2668}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2658, file: !2659, line: 133, baseType: !2662, size: 576)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2663, size: 576, elements: !258)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2659, line: 117, size: 192, elements: !2664)
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2663, file: !2659, line: 118, baseType: !410, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2663, file: !2659, line: 119, baseType: !1543, size: 128, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2658, file: !2659, line: 134, baseType: !7, size: 32, offset: 576)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2658, file: !2659, line: 135, baseType: !7, size: 32, offset: 608)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1367, file: !1042, line: 1058, baseType: !2670, size: 448, offset: 14016)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2659, line: 144, size: 448, elements: !2671)
!2671 = !{!2672, !2673, !2674}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2670, file: !2659, line: 145, baseType: !818, size: 128, align: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2670, file: !2659, line: 146, baseType: !598, size: 256, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2670, file: !2659, line: 147, baseType: !7, size: 32, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1367, file: !1042, line: 1064, baseType: !1757, size: 64, offset: 14464)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1367, file: !1042, line: 1067, baseType: !1757, size: 64, offset: 14528)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1367, file: !1042, line: 1070, baseType: !1757, size: 64, offset: 14592)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1367, file: !1042, line: 1074, baseType: !1784, size: 64, offset: 14656)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1367, file: !1042, line: 1084, baseType: !2680, size: 128, offset: 14720)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 128, elements: !2681)
!2681 = !{!2682}
!2682 = !DISubrange(count: 16)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1367, file: !1042, line: 1086, baseType: !2684, size: 64, offset: 14848)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1042, line: 55, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1367, file: !1042, line: 1089, baseType: !2687, size: 64, offset: 14912)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2688, line: 12, size: 64, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2689 = !{!2690}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2687, file: !2688, line: 13, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2688, line: 8, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1367, file: !1042, line: 1090, baseType: !2694, size: 128, offset: 14976)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2695, line: 13, size: 128, elements: !2696)
!2695 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2696 = !{!2697}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2694, file: !2695, line: 14, baseType: !173, size: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1367, file: !1042, line: 1097, baseType: !2699, size: 64, offset: 15104)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1042, line: 50, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1367, file: !1042, line: 1100, baseType: !2702, size: 64, offset: 15168)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1042, line: 1100, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1367, file: !1042, line: 1103, baseType: !2705, size: 64, offset: 15232)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1042, line: 53, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1367, file: !1042, line: 1107, baseType: !2708, size: 64, offset: 15296)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1042, line: 56, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1367, file: !1042, line: 1110, baseType: !2711, size: 64, offset: 15360)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2713, line: 93, size: 8768, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2762, !2771, !2772, !2774, !2775, !2776, !2779, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2817, !2818, !2825, !2835, !2838, !2839, !2842, !2843, !2844, !2845, !2846, !2847}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2712, file: !2713, line: 94, baseType: !1380, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2712, file: !2713, line: 95, baseType: !207, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2712, file: !2713, line: 96, baseType: !103, size: 32, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2712, file: !2713, line: 97, baseType: !103, size: 32, offset: 96)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2712, file: !2713, line: 98, baseType: !173, size: 128, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2712, file: !2713, line: 100, baseType: !1353, size: 192, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2712, file: !2713, line: 103, baseType: !1366, size: 64, offset: 448)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2712, file: !2713, line: 106, baseType: !2723, size: 192, offset: 512)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1932, line: 32, size: 192, elements: !2724)
!2724 = !{!2725, !2726}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2723, file: !1932, line: 33, baseType: !173, size: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2723, file: !1932, line: 34, baseType: !2727, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2728, line: 25, baseType: !2729)
!2728 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2728, line: 23, size: 64, elements: !2730)
!2730 = !{!2731}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2729, file: !2728, line: 24, baseType: !1614, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2712, file: !2713, line: 109, baseType: !968, size: 64, offset: 704)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2712, file: !2713, line: 112, baseType: !103, size: 32, offset: 768)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2712, file: !2713, line: 114, baseType: !103, size: 32, offset: 800)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2712, file: !2713, line: 115, baseType: !1366, size: 64, offset: 832)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2712, file: !2713, line: 118, baseType: !103, size: 32, offset: 896)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2712, file: !2713, line: 119, baseType: !7, size: 32, offset: 928)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2712, file: !2713, line: 121, baseType: !2739, size: 64, offset: 960)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2713, line: 80, size: 448, elements: !2741)
!2741 = !{!2742, !2743, !2749}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2740, file: !2713, line: 81, baseType: !207, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2740, file: !2713, line: 82, baseType: !2744, size: 128, offset: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2713, line: 75, size: 128, elements: !2745)
!2745 = !{!2746, !2747}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2744, file: !2713, line: 76, baseType: !1366, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2744, file: !2713, line: 77, baseType: !2748, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2740, file: !2713, line: 83, baseType: !547, size: 256, offset: 192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2712, file: !2713, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2712, file: !2713, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2712, file: !2713, line: 138, baseType: !7, size: 32, offset: 1056)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2712, file: !2713, line: 139, baseType: !173, size: 128, offset: 1088)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2712, file: !2713, line: 142, baseType: !1487, size: 512, offset: 1216)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2712, file: !2713, line: 143, baseType: !1495, size: 64, offset: 1728)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2712, file: !2713, line: 150, baseType: !2757, size: 256, offset: 1792)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2758, size: 256, elements: !717)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2713, line: 38, size: 128, elements: !2759)
!2759 = !{!2760, !2761}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2758, file: !2713, line: 39, baseType: !410, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2758, file: !2713, line: 40, baseType: !410, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2712, file: !2713, line: 156, baseType: !2763, size: 192, offset: 2048)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2713, line: 66, size: 192, elements: !2764)
!2764 = !{!2765}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2763, file: !2713, line: 67, baseType: !2766, size: 192)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2713, line: 47, size: 192, elements: !2767)
!2767 = !{!2768, !2769, !2770}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2766, file: !2713, line: 48, baseType: !604, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2766, file: !2713, line: 49, baseType: !604, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2766, file: !2713, line: 50, baseType: !604, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2712, file: !2713, line: 160, baseType: !2658, size: 640, offset: 2240)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2712, file: !2713, line: 163, baseType: !2773, size: 256, offset: 2880)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1731, size: 256, elements: !828)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2712, file: !2713, line: 169, baseType: !1731, size: 64, offset: 3136)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2712, file: !2713, line: 172, baseType: !103, size: 32, offset: 3200)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2712, file: !2713, line: 174, baseType: !2777, size: 64, offset: 3264)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2713, line: 174, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2712, file: !2713, line: 185, baseType: !2780, size: 64, offset: 3328)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !379, line: 860, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 853, size: 64, elements: !2782)
!2782 = !{!2783, !2784}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2781, file: !379, line: 858, baseType: !378, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2781, file: !379, line: 859, baseType: !187, size: 32, offset: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2712, file: !2713, line: 186, baseType: !410, size: 64, offset: 3392)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2712, file: !2713, line: 186, baseType: !410, size: 64, offset: 3456)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2712, file: !2713, line: 186, baseType: !410, size: 64, offset: 3520)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2712, file: !2713, line: 186, baseType: !410, size: 64, offset: 3584)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2712, file: !2713, line: 187, baseType: !410, size: 64, offset: 3648)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2712, file: !2713, line: 188, baseType: !410, size: 64, offset: 3712)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2712, file: !2713, line: 189, baseType: !2646, size: 192, offset: 3776)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2712, file: !2713, line: 190, baseType: !307, size: 64, offset: 3968)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2712, file: !2713, line: 190, baseType: !307, size: 64, offset: 4032)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2712, file: !2713, line: 190, baseType: !307, size: 64, offset: 4096)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2712, file: !2713, line: 190, baseType: !307, size: 64, offset: 4160)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2712, file: !2713, line: 191, baseType: !307, size: 64, offset: 4224)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2712, file: !2713, line: 191, baseType: !307, size: 64, offset: 4288)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2712, file: !2713, line: 191, baseType: !307, size: 64, offset: 4352)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2712, file: !2713, line: 191, baseType: !307, size: 64, offset: 4416)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2712, file: !2713, line: 192, baseType: !307, size: 64, offset: 4480)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2712, file: !2713, line: 192, baseType: !307, size: 64, offset: 4544)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2712, file: !2713, line: 192, baseType: !307, size: 64, offset: 4608)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2712, file: !2713, line: 192, baseType: !307, size: 64, offset: 4672)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2712, file: !2713, line: 193, baseType: !307, size: 64, offset: 4736)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2712, file: !2713, line: 193, baseType: !307, size: 64, offset: 4800)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2712, file: !2713, line: 194, baseType: !2807, size: 448, offset: 4864)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2808, line: 12, size: 448, elements: !2809)
!2808 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2807, file: !2808, line: 15, baseType: !410, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2807, file: !2808, line: 17, baseType: !410, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2807, file: !2808, line: 19, baseType: !410, size: 64, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2807, file: !2808, line: 21, baseType: !410, size: 64, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2807, file: !2808, line: 29, baseType: !410, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2807, file: !2808, line: 35, baseType: !410, size: 64, offset: 320)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2807, file: !2808, line: 44, baseType: !410, size: 64, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2712, file: !2713, line: 202, baseType: !412, size: 64, offset: 5312)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2712, file: !2713, line: 213, baseType: !2819, size: 2048, offset: 5376)
!2819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2820, size: 2048, elements: !2681)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2821, line: 43, size: 128, elements: !2822)
!2821 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2820, file: !2821, line: 44, baseType: !306, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2820, file: !2821, line: 45, baseType: !306, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2712, file: !2713, line: 216, baseType: !2826, size: 448, offset: 7424)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2713, line: 30, size: 448, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833, !2834}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2826, file: !2713, line: 31, baseType: !103, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2826, file: !2713, line: 32, baseType: !293, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2826, file: !2713, line: 33, baseType: !307, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2826, file: !2713, line: 34, baseType: !410, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2826, file: !2713, line: 34, baseType: !410, size: 64, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2826, file: !2713, line: 35, baseType: !307, size: 64, offset: 320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2826, file: !2713, line: 35, baseType: !307, size: 64, offset: 384)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2712, file: !2713, line: 219, baseType: !2836, size: 64, offset: 7872)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2713, line: 219, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2712, file: !2713, line: 222, baseType: !7, size: 32, offset: 7936)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2712, file: !2713, line: 223, baseType: !2840, size: 64, offset: 8000)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2713, line: 223, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2712, file: !2713, line: 230, baseType: !678, size: 8, offset: 8064)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2712, file: !2713, line: 231, baseType: !736, size: 16, offset: 8080)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2712, file: !2713, line: 232, baseType: !736, size: 16, offset: 8096)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2712, file: !2713, line: 234, baseType: !1663, size: 64, offset: 8128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2712, file: !2713, line: 237, baseType: !598, size: 256, offset: 8192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2712, file: !2713, line: 243, baseType: !1260, size: 320, offset: 8448)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1367, file: !1042, line: 1111, baseType: !2849, size: 64, offset: 15424)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2713, line: 20, size: 16640, elements: !2851)
!2851 = !{!2852, !2853, !2854, !2855}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2850, file: !2713, line: 21, baseType: !187, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2850, file: !2713, line: 22, baseType: !1380, size: 32, offset: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2850, file: !2713, line: 23, baseType: !1353, size: 192, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2850, file: !2713, line: 24, baseType: !2856, size: 16384, offset: 256)
!2856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2857, size: 16384, elements: !262)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1932, line: 51, size: 256, elements: !2858)
!2858 = !{!2859}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2857, file: !1932, line: 52, baseType: !2860, size: 256)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1932, line: 37, size: 256, elements: !2861)
!2861 = !{!2862, !2869, !2870, !2874}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2860, file: !1932, line: 39, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2864, line: 83, baseType: !2865)
!2864 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2864, line: 82, baseType: !2867)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{null, !103}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2860, file: !1932, line: 40, baseType: !307, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2860, file: !1932, line: 46, baseType: !2871, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2864, line: 86, baseType: !2872)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2864, line: 85, baseType: !963)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2860, file: !1932, line: 48, baseType: !2727, size: 64, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1367, file: !1042, line: 1112, baseType: !2727, size: 64, offset: 15488)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1367, file: !1042, line: 1113, baseType: !2727, size: 64, offset: 15552)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1367, file: !1042, line: 1115, baseType: !2727, size: 64, offset: 15616)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1367, file: !1042, line: 1116, baseType: !2723, size: 192, offset: 15680)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1367, file: !1042, line: 1117, baseType: !307, size: 64, offset: 15872)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1367, file: !1042, line: 1118, baseType: !304, size: 64, offset: 15936)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1367, file: !1042, line: 1119, baseType: !7, size: 32, offset: 16000)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1367, file: !1042, line: 1121, baseType: !817, size: 64, offset: 16064)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1367, file: !1042, line: 1125, baseType: !2884, size: 64, offset: 16128)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1042, line: 43, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1367, file: !1042, line: 1127, baseType: !343, size: 32, offset: 16192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1367, file: !1042, line: 1128, baseType: !7, size: 32, offset: 16224)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1367, file: !1042, line: 1130, baseType: !2889, size: 128, offset: 16256)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2890, line: 37, size: 128, elements: !2891)
!2890 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2891 = !{!2892, !2893, !2894}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2889, file: !2890, line: 38, baseType: !103, size: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2889, file: !2890, line: 39, baseType: !207, size: 32, offset: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2889, file: !2890, line: 40, baseType: !2895, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2890, line: 24, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1367, file: !1042, line: 1131, baseType: !2898, size: 256, offset: 16384)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2899, line: 12, size: 256, elements: !2900)
!2899 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2900 = !{!2901, !2902, !2903, !2904}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2898, file: !2899, line: 13, baseType: !257, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2898, file: !2899, line: 14, baseType: !307, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2898, file: !2899, line: 15, baseType: !307, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2898, file: !2899, line: 16, baseType: !678, size: 8, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1367, file: !1042, line: 1134, baseType: !410, size: 64, offset: 16640)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1367, file: !1042, line: 1135, baseType: !410, size: 64, offset: 16704)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1367, file: !1042, line: 1138, baseType: !187, size: 32, offset: 16768)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1367, file: !1042, line: 1141, baseType: !556, size: 32, offset: 16800)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1367, file: !1042, line: 1143, baseType: !2910, size: 64, offset: 16832)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1042, line: 735, size: 64, elements: !2911)
!2911 = !{!2912}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2910, file: !1042, line: 736, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1367, file: !1042, line: 1147, baseType: !1546, size: 128, offset: 16896)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1367, file: !1042, line: 1149, baseType: !1366, size: 64, offset: 17024)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1367, file: !1042, line: 1151, baseType: !2917, size: 64, offset: 17088)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1042, line: 1151, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1367, file: !1042, line: 1188, baseType: !157, size: 64, offset: 17152)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1367, file: !1042, line: 1191, baseType: !2921, size: 64, offset: 17216)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1042, line: 44, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1367, file: !1042, line: 1194, baseType: !2924, size: 64, offset: 17280)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1042, line: 45, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1367, file: !1042, line: 1197, baseType: !2927, size: 64, offset: 17344)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1042, line: 61, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1367, file: !1042, line: 1199, baseType: !2930, size: 64, offset: 17408)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2932, line: 99, size: 128, elements: !2933)
!2932 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2933 = !{!2934, !2935, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2931, file: !2932, line: 100, baseType: !602, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2931, file: !2932, line: 101, baseType: !207, size: 32, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2931, file: !2932, line: 103, baseType: !227, size: 16, offset: 96)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1367, file: !1042, line: 1202, baseType: !2938, size: 64, offset: 17472)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1042, line: 48, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1367, file: !1042, line: 1205, baseType: !307, size: 64, offset: 17536)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1367, file: !1042, line: 1206, baseType: !2942, size: 64, offset: 17600)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1932, line: 14, baseType: !2944)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1932, line: 12, size: 384, elements: !2945)
!2945 = !{!2946}
!2946 = !DIDerivedType(tag: DW_TAG_member, scope: !2944, file: !1932, line: 13, baseType: !2947, size: 384)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2944, file: !1932, line: 13, size: 384, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2952}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2947, file: !1932, line: 13, baseType: !103, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2947, file: !1932, line: 13, baseType: !103, size: 32, offset: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2947, file: !1932, line: 13, baseType: !103, size: 32, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2947, file: !1932, line: 13, baseType: !2953, size: 256, offset: 128)
!2953 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2954, line: 37, size: 256, elements: !2955)
!2954 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2955 = !{!2956, !2961, !2974, !2980, !2989, !3016, !3021}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2953, file: !2954, line: 42, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2953, file: !2954, line: 39, size: 64, elements: !2958)
!2958 = !{!2959, !2960}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2957, file: !2954, line: 40, baseType: !2623, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2957, file: !2954, line: 41, baseType: !349, size: 32, offset: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2953, file: !2954, line: 50, baseType: !2962, size: 192)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2953, file: !2954, line: 45, size: 192, elements: !2963)
!2963 = !{!2964, !2966, !2967, !2973}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2962, file: !2954, line: 46, baseType: !2965, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !291, line: 95, baseType: !103)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2962, file: !2954, line: 47, baseType: !103, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2962, file: !2954, line: 48, baseType: !2968, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2954, line: 11, baseType: !2969)
!2969 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2954, line: 8, size: 64, elements: !2970)
!2970 = !{!2971, !2972}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2969, file: !2954, line: 9, baseType: !103, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2969, file: !2954, line: 10, baseType: !157, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2962, file: !2954, line: 49, baseType: !103, size: 32, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2953, file: !2954, line: 57, baseType: !2975, size: 128)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2953, file: !2954, line: 53, size: 128, elements: !2976)
!2976 = !{!2977, !2978, !2979}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2975, file: !2954, line: 54, baseType: !2623, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2975, file: !2954, line: 55, baseType: !349, size: 32, offset: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2975, file: !2954, line: 56, baseType: !2968, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2953, file: !2954, line: 66, baseType: !2981, size: 256)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2953, file: !2954, line: 60, size: 256, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2988}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2981, file: !2954, line: 61, baseType: !2623, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2981, file: !2954, line: 62, baseType: !349, size: 32, offset: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2981, file: !2954, line: 63, baseType: !103, size: 32, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2981, file: !2954, line: 64, baseType: !2987, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !291, line: 94, baseType: !292)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2981, file: !2954, line: 65, baseType: !2987, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2953, file: !2954, line: 105, baseType: !2990, size: 256)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2953, file: !2954, line: 69, size: 256, elements: !2991)
!2991 = !{!2992, !2993}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2990, file: !2954, line: 70, baseType: !157, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, scope: !2990, file: !2954, line: 79, baseType: !2994, size: 192, offset: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2990, file: !2954, line: 79, size: 192, elements: !2995)
!2995 = !{!2996, !2997, !2998, !3005, !3010}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2994, file: !2954, line: 81, baseType: !103, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2994, file: !2954, line: 86, baseType: !736, size: 16)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2994, file: !2954, line: 92, baseType: !2999, size: 192)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2954, line: 88, size: 192, elements: !3000)
!3000 = !{!3001, !3003, !3004}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2999, file: !2954, line: 89, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 64, elements: !1530)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2999, file: !2954, line: 90, baseType: !157, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2999, file: !2954, line: 91, baseType: !157, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2994, file: !2954, line: 97, baseType: !3006, size: 96)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2954, line: 94, size: 96, elements: !3007)
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3006, file: !2954, line: 95, baseType: !3002, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3006, file: !2954, line: 96, baseType: !407, size: 32, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2994, file: !2954, line: 103, baseType: !3011, size: 128)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2954, line: 99, size: 128, elements: !3012)
!3012 = !{!3013, !3014, !3015}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3011, file: !2954, line: 100, baseType: !307, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3011, file: !2954, line: 101, baseType: !407, size: 32, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3011, file: !2954, line: 102, baseType: !407, size: 32, offset: 96)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2953, file: !2954, line: 111, baseType: !3017, size: 128)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2953, file: !2954, line: 108, size: 128, elements: !3018)
!3018 = !{!3019, !3020}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3017, file: !2954, line: 109, baseType: !293, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3017, file: !2954, line: 110, baseType: !103, size: 32, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2953, file: !2954, line: 118, baseType: !3022, size: 128)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2953, file: !2954, line: 114, size: 128, elements: !3023)
!3023 = !{!3024, !3025, !3026}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3022, file: !2954, line: 115, baseType: !157, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3022, file: !2954, line: 116, baseType: !103, size: 32, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3022, file: !2954, line: 117, baseType: !7, size: 32, offset: 96)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1367, file: !1042, line: 1208, baseType: !2807, size: 448, offset: 17664)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1367, file: !1042, line: 1215, baseType: !410, size: 64, offset: 18112)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1367, file: !1042, line: 1217, baseType: !410, size: 64, offset: 18176)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1367, file: !1042, line: 1219, baseType: !410, size: 64, offset: 18240)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1367, file: !1042, line: 1223, baseType: !3032, size: 64, offset: 18304)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3033, line: 99, baseType: !3034)
!3033 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3033, line: 99, size: 64, elements: !3035)
!3035 = !{!3036}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3034, file: !3033, line: 99, baseType: !1614, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1367, file: !1042, line: 1225, baseType: !378, size: 32, offset: 18368)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1367, file: !1042, line: 1226, baseType: !103, size: 32, offset: 18400)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1367, file: !1042, line: 1227, baseType: !103, size: 32, offset: 18432)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1367, file: !1042, line: 1231, baseType: !3041, size: 64, offset: 18496)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1042, line: 1231, flags: DIFlagFwdDecl)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1367, file: !1042, line: 1233, baseType: !173, size: 128, offset: 18560)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1367, file: !1042, line: 1240, baseType: !3045, size: 64, offset: 18688)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1042, line: 62, flags: DIFlagFwdDecl)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1367, file: !1042, line: 1242, baseType: !3048, size: 64, offset: 18752)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1042, line: 1242, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1367, file: !1042, line: 1244, baseType: !173, size: 128, offset: 18816)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1367, file: !1042, line: 1245, baseType: !3052, size: 64, offset: 18944)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1042, line: 51, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1367, file: !1042, line: 1246, baseType: !598, size: 256, offset: 19008)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1367, file: !1042, line: 1247, baseType: !7, size: 32, offset: 19264)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1367, file: !1042, line: 1250, baseType: !3057, size: 64, offset: 19328)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1042, line: 57, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1367, file: !1042, line: 1251, baseType: !598, size: 256, offset: 19392)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1367, file: !1042, line: 1252, baseType: !173, size: 128, offset: 19648)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1367, file: !1042, line: 1259, baseType: !2312, size: 64, offset: 19776)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1367, file: !1042, line: 1260, baseType: !736, size: 16, offset: 19840)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1367, file: !1042, line: 1261, baseType: !736, size: 16, offset: 19856)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1367, file: !1042, line: 1314, baseType: !3065, size: 64, offset: 19904)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3067, line: 62, size: 256, align: 256, elements: !3068)
!3067 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3068 = !{!3069, !3070, !3071, !3072, !3073, !3074, !3075}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3066, file: !3067, line: 75, baseType: !407, size: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3066, file: !3067, line: 90, baseType: !407, size: 32, offset: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3066, file: !3067, line: 112, baseType: !411, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3066, file: !3067, line: 132, baseType: !407, size: 32, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3066, file: !3067, line: 140, baseType: !407, size: 32, offset: 160)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3066, file: !3067, line: 149, baseType: !407, size: 32, offset: 192)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3066, file: !3067, line: 154, baseType: !3076, offset: 224)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, elements: !1750)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1367, file: !1042, line: 1315, baseType: !406, size: 32, offset: 19968)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1367, file: !1042, line: 1316, baseType: !406, size: 32, offset: 20000)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1367, file: !1042, line: 1321, baseType: !307, size: 64, offset: 20032)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1367, file: !1042, line: 1325, baseType: !103, size: 32, offset: 20096)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1367, file: !1042, line: 1326, baseType: !103, size: 32, offset: 20128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1367, file: !1042, line: 1327, baseType: !103, size: 32, offset: 20160)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1367, file: !1042, line: 1328, baseType: !103, size: 32, offset: 20192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1367, file: !1042, line: 1329, baseType: !818, size: 128, align: 64, offset: 20224)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1367, file: !1042, line: 1332, baseType: !3086, size: 128, offset: 20352)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3087, line: 51, size: 128, elements: !3088)
!3087 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3088 = !{!3089, !3094, !3095}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3086, file: !3087, line: 60, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3091, line: 7, size: 64, elements: !3092)
!3091 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3092 = !{!3093}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3090, file: !3091, line: 12, baseType: !1611, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3086, file: !3087, line: 63, baseType: !678, size: 8, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3086, file: !3087, line: 70, baseType: !678, size: 8, offset: 72)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1367, file: !1042, line: 1335, baseType: !2364, size: 64, offset: 20480)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1367, file: !1042, line: 1337, baseType: !3098, size: 128, offset: 20544)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3087, line: 39, size: 128, elements: !3099)
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3098, file: !3087, line: 40, baseType: !2151, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3098, file: !3087, line: 42, baseType: !407, size: 32, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3098, file: !3087, line: 43, baseType: !407, size: 32, offset: 96)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1367, file: !1042, line: 1340, baseType: !3104, size: 64, offset: 20672)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1042, line: 69, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1367, file: !1042, line: 1351, baseType: !103, size: 32, offset: 20736)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1367, file: !1042, line: 1352, baseType: !103, size: 32, offset: 20768)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1367, file: !1042, line: 1354, baseType: !307, size: 64, offset: 20800)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1367, file: !1042, line: 1364, baseType: !410, size: 64, offset: 20864)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1367, file: !1042, line: 1365, baseType: !410, size: 64, offset: 20928)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1367, file: !1042, line: 1412, baseType: !307, size: 64, offset: 20992)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1367, file: !1042, line: 1453, baseType: !3113, size: 64, offset: 21056)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1042, line: 1453, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1367, file: !1042, line: 1457, baseType: !3116, size: 64, offset: 21120)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3118)
!3118 = !{!3119, !3120, !3139, !3142, !3143, !3176, !3186}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3117, file: !68, line: 62, baseType: !67, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, scope: !3117, file: !68, line: 64, baseType: !3121, size: 192, offset: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3117, file: !68, line: 64, size: 192, elements: !3122)
!3122 = !{!3123, !3134}
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !68, line: 65, baseType: !3124, size: 192)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !68, line: 65, size: 192, elements: !3125)
!3125 = !{!3126, !3133}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3124, file: !68, line: 66, baseType: !3127, size: 128)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3128, line: 50, size: 128, elements: !3129)
!3128 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3129 = !{!3130, !3131, !3132}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3127, file: !3128, line: 52, baseType: !307, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3127, file: !3128, line: 54, baseType: !7, size: 32, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3127, file: !3128, line: 55, baseType: !7, size: 32, offset: 96)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3124, file: !68, line: 67, baseType: !307, size: 64, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !68, line: 70, baseType: !3135, size: 192)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !68, line: 70, size: 192, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3135, file: !68, line: 71, baseType: !818, size: 128, align: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3135, file: !68, line: 72, baseType: !307, size: 64, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3117, file: !68, line: 76, baseType: !3140, size: 64, offset: 256)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3117, file: !68, line: 77, baseType: !307, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3117, file: !68, line: 79, baseType: !3144, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3128, line: 25, size: 256, elements: !3146)
!3146 = !{!3147, !3153, !3157}
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3145, file: !3128, line: 26, baseType: !3148, size: 128)
!3148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3145, file: !3128, line: 26, size: 128, elements: !3149)
!3149 = !{!3150, !3152}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3148, file: !3128, line: 27, baseType: !3151, size: 128)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !2681)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3148, file: !3128, line: 28, baseType: !3151, size: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3145, file: !3128, line: 31, baseType: !3154, size: 64, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3156)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3128, line: 23, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !3145, file: !3128, line: 33, baseType: !3158, size: 64, offset: 192)
!3158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3145, file: !3128, line: 33, size: 64, elements: !3159)
!3159 = !{!3160, !3166, !3171}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3158, file: !3128, line: 38, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3158, file: !3128, line: 34, size: 64, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3161, file: !3128, line: 35, baseType: !594, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3161, file: !3128, line: 36, baseType: !215, size: 8, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3161, file: !3128, line: 37, baseType: !215, size: 8, offset: 40)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3158, file: !3128, line: 42, baseType: !3167, size: 16)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3158, file: !3128, line: 39, size: 16, elements: !3168)
!3168 = !{!3169, !3170}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3167, file: !3128, line: 40, baseType: !215, size: 8)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3167, file: !3128, line: 41, baseType: !215, size: 8, offset: 8)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3158, file: !3128, line: 46, baseType: !3172, size: 16)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3158, file: !3128, line: 43, size: 16, elements: !3173)
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3172, file: !3128, line: 44, baseType: !215, size: 8)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3172, file: !3128, line: 45, baseType: !215, size: 8, offset: 8)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3117, file: !68, line: 81, baseType: !3177, size: 64, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3178, file: !68, line: 86, baseType: !3140, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3178, file: !68, line: 87, baseType: !307, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3178, file: !68, line: 88, baseType: !307, size: 64, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3178, file: !68, line: 89, baseType: !307, size: 64, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3178, file: !68, line: 90, baseType: !678, size: 8, offset: 256)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3178, file: !68, line: 92, baseType: !3177, size: 64, offset: 320)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3117, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1367, file: !1042, line: 1463, baseType: !3188, offset: 21184)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1042, line: 739, elements: !887)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1367, file: !1042, line: 1470, baseType: !818, size: 128, align: 64, offset: 21184)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1367, file: !1042, line: 1471, baseType: !1380, size: 32, offset: 21312)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1367, file: !1042, line: 1472, baseType: !103, size: 32, offset: 21344)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1367, file: !1042, line: 1474, baseType: !1366, size: 64, offset: 21376)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1367, file: !1042, line: 1475, baseType: !840, size: 320, offset: 21440)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1367, file: !1042, line: 1478, baseType: !3195, size: 64, offset: 21760)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2004, line: 49, size: 512, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3204, !3205, !3206, !3208}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3196, file: !2004, line: 50, baseType: !3195, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3196, file: !2004, line: 51, baseType: !157, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3196, file: !2004, line: 52, baseType: !307, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3196, file: !2004, line: 53, baseType: !307, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3196, file: !2004, line: 54, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3196, file: !2004, line: 56, baseType: !7, size: 32, offset: 320)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3196, file: !2004, line: 58, baseType: !7, size: 32, offset: 352)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3196, file: !2004, line: 59, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !174, line: 159, baseType: !410)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3196, file: !2004, line: 60, baseType: !2503, size: 64, offset: 448)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1367, file: !1042, line: 1482, baseType: !1380, size: 32, offset: 21824)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1367, file: !1042, line: 1489, baseType: !157, size: 64, offset: 21888)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1367, file: !1042, line: 1504, baseType: !157, size: 64, offset: 21952)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1367, file: !1042, line: 1505, baseType: !411, size: 64, offset: 22016)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1367, file: !1042, line: 1506, baseType: !410, size: 64, offset: 22080)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1367, file: !1042, line: 1507, baseType: !411, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1367, file: !1042, line: 1508, baseType: !411, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1367, file: !1042, line: 1509, baseType: !411, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1367, file: !1042, line: 1510, baseType: !818, size: 128, align: 64, offset: 22208)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1367, file: !1042, line: 1511, baseType: !103, size: 32, offset: 22336)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1367, file: !1042, line: 1515, baseType: !3220, size: 64, offset: 22400)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1394, line: 56, size: 64, elements: !3221)
!3221 = !{!3222}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3220, file: !1394, line: 57, baseType: !1397, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1367, file: !1042, line: 1518, baseType: !3220, size: 64, offset: 22464)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1367, file: !1042, line: 1528, baseType: !818, size: 128, align: 64, offset: 22528)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1367, file: !1042, line: 1552, baseType: !3226, size: 35328, offset: 23040)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3227, line: 430, size: 35328, elements: !3228)
!3227 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3228 = !{!3229, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3258, !3259, !3260, !3261, !3262, !3263, !3266, !3267, !3268, !3269}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3226, file: !3227, line: 432, baseType: !3230, size: 192)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3231, size: 192, elements: !258)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3232, line: 16, size: 64, elements: !3233)
!3232 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3233 = !{!3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3231, file: !3232, line: 17, baseType: !225, size: 16)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3231, file: !3232, line: 18, baseType: !225, size: 16, offset: 16)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3231, file: !3232, line: 19, baseType: !225, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3231, file: !3232, line: 19, baseType: !225, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3231, file: !3232, line: 19, baseType: !225, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3231, file: !3232, line: 19, baseType: !225, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3231, file: !3232, line: 19, baseType: !225, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3231, file: !3232, line: 20, baseType: !225, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3231, file: !3232, line: 20, baseType: !225, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3231, file: !3232, line: 20, baseType: !225, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3231, file: !3232, line: 20, baseType: !225, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3231, file: !3232, line: 20, baseType: !225, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3231, file: !3232, line: 20, baseType: !225, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3226, file: !3227, line: 436, baseType: !307, size: 64, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3226, file: !3227, line: 440, baseType: !227, size: 16, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3226, file: !3227, line: 441, baseType: !227, size: 16, offset: 272)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3226, file: !3227, line: 442, baseType: !227, size: 16, offset: 288)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3226, file: !3227, line: 443, baseType: !227, size: 16, offset: 304)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3226, file: !3227, line: 447, baseType: !307, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3226, file: !3227, line: 448, baseType: !307, size: 64, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3226, file: !3227, line: 459, baseType: !3255, size: 256, offset: 448)
!3255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3256, size: 256, elements: !828)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3227, line: 428, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3226, file: !3227, line: 461, baseType: !307, size: 64, offset: 704)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3226, file: !3227, line: 463, baseType: !307, size: 64, offset: 768)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3226, file: !3227, line: 465, baseType: !307, size: 64, offset: 832)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3226, file: !3227, line: 466, baseType: !307, size: 64, offset: 896)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3226, file: !3227, line: 467, baseType: !307, size: 64, offset: 960)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3226, file: !3227, line: 473, baseType: !3264, size: 64, offset: 1024)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3227, line: 10, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3226, file: !3227, line: 480, baseType: !307, size: 64, offset: 1088)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3226, file: !3227, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3226, file: !3227, line: 491, baseType: !406, size: 32, offset: 1184)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3226, file: !3227, line: 501, baseType: !3270, size: 33792, offset: 1536)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3271, line: 448, size: 33792, elements: !3272)
!3271 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3272 = !{!3273, !3274, !3275, !3437, !3438, !3444, !3445}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3270, file: !3271, line: 461, baseType: !7, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3270, file: !3271, line: 468, baseType: !307, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3270, file: !3271, line: 476, baseType: !3276, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3271, line: 356, size: 33280, align: 512, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3277, file: !3271, line: 358, baseType: !7, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3277, file: !3271, line: 361, baseType: !7, size: 32, offset: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3277, file: !3271, line: 364, baseType: !410, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3277, file: !3271, line: 367, baseType: !410, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3277, file: !3271, line: 370, baseType: !410, size: 64, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3277, file: !3271, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3277, file: !3271, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3277, file: !3271, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3277, file: !3271, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3277, file: !3271, line: 397, baseType: !3289, size: 32768, offset: 512)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3271, line: 348, size: 32768, elements: !3290)
!3290 = !{!3291, !3306, !3343, !3420, !3433}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3289, file: !3271, line: 349, baseType: !3292, size: 896)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3271, line: 12, size: 896, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3305}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3292, file: !3271, line: 13, baseType: !406, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3292, file: !3271, line: 14, baseType: !406, size: 32, offset: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3292, file: !3271, line: 15, baseType: !406, size: 32, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3292, file: !3271, line: 16, baseType: !406, size: 32, offset: 96)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3292, file: !3271, line: 17, baseType: !406, size: 32, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3292, file: !3271, line: 18, baseType: !406, size: 32, offset: 160)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3292, file: !3271, line: 19, baseType: !406, size: 32, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3292, file: !3271, line: 22, baseType: !3302, size: 640, offset: 224)
!3302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 640, elements: !3303)
!3303 = !{!3304}
!3304 = !DISubrange(count: 20)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3292, file: !3271, line: 25, baseType: !406, size: 32, offset: 864)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3289, file: !3271, line: 350, baseType: !3307, size: 4096, align: 128)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3271, line: 34, size: 4096, align: 128, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3328, !3329, !3330, !3332, !3334, !3338}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3307, file: !3271, line: 35, baseType: !225, size: 16)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3307, file: !3271, line: 36, baseType: !225, size: 16, offset: 16)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3307, file: !3271, line: 37, baseType: !225, size: 16, offset: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3307, file: !3271, line: 38, baseType: !225, size: 16, offset: 48)
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !3307, file: !3271, line: 39, baseType: !3314, size: 128, offset: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3307, file: !3271, line: 39, size: 128, elements: !3315)
!3315 = !{!3316, !3321}
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3314, file: !3271, line: 40, baseType: !3317, size: 128)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3271, line: 40, size: 128, elements: !3318)
!3318 = !{!3319, !3320}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3317, file: !3271, line: 41, baseType: !410, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3317, file: !3271, line: 42, baseType: !410, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, scope: !3314, file: !3271, line: 44, baseType: !3322, size: 128)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3271, line: 44, size: 128, elements: !3323)
!3323 = !{!3324, !3325, !3326, !3327}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3322, file: !3271, line: 45, baseType: !406, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3322, file: !3271, line: 46, baseType: !406, size: 32, offset: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3322, file: !3271, line: 47, baseType: !406, size: 32, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3322, file: !3271, line: 48, baseType: !406, size: 32, offset: 96)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3307, file: !3271, line: 51, baseType: !406, size: 32, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3307, file: !3271, line: 52, baseType: !406, size: 32, offset: 224)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3307, file: !3271, line: 55, baseType: !3331, size: 1024, offset: 256)
!3331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 1024, elements: !419)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3307, file: !3271, line: 58, baseType: !3333, size: 2048, offset: 1280)
!3333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 2048, elements: !262)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3307, file: !3271, line: 60, baseType: !3335, size: 384, offset: 3328)
!3335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 384, elements: !3336)
!3336 = !{!3337}
!3337 = !DISubrange(count: 12)
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !3307, file: !3271, line: 62, baseType: !3339, size: 384, offset: 3712)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3307, file: !3271, line: 62, size: 384, elements: !3340)
!3340 = !{!3341, !3342}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3339, file: !3271, line: 63, baseType: !3335, size: 384)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3339, file: !3271, line: 64, baseType: !3335, size: 384)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3289, file: !3271, line: 351, baseType: !3344, size: 1088)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3271, line: 79, size: 1088, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3419}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3344, file: !3271, line: 80, baseType: !406, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3344, file: !3271, line: 81, baseType: !406, size: 32, offset: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3344, file: !3271, line: 82, baseType: !406, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3344, file: !3271, line: 83, baseType: !406, size: 32, offset: 96)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3344, file: !3271, line: 84, baseType: !406, size: 32, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3344, file: !3271, line: 85, baseType: !406, size: 32, offset: 160)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3344, file: !3271, line: 86, baseType: !406, size: 32, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3344, file: !3271, line: 88, baseType: !3302, size: 640, offset: 224)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3344, file: !3271, line: 89, baseType: !215, size: 8, offset: 864)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3344, file: !3271, line: 90, baseType: !215, size: 8, offset: 872)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3344, file: !3271, line: 91, baseType: !215, size: 8, offset: 880)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3344, file: !3271, line: 92, baseType: !215, size: 8, offset: 888)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3344, file: !3271, line: 93, baseType: !215, size: 8, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3344, file: !3271, line: 94, baseType: !215, size: 8, offset: 904)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3344, file: !3271, line: 95, baseType: !3361, size: 64, offset: 960)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3363, line: 11, size: 128, elements: !3364)
!3363 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3364 = !{!3365, !3366}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3362, file: !3363, line: 12, baseType: !293, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3362, file: !3363, line: 13, baseType: !3367, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3369, line: 103, size: 1344, elements: !3370)
!3369 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3399, !3400, !3401}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3368, file: !3369, line: 109, baseType: !307, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3368, file: !3369, line: 110, baseType: !307, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3368, file: !3369, line: 111, baseType: !307, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3368, file: !3369, line: 112, baseType: !307, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3368, file: !3369, line: 113, baseType: !307, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3368, file: !3369, line: 114, baseType: !307, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3368, file: !3369, line: 117, baseType: !307, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3368, file: !3369, line: 118, baseType: !307, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3368, file: !3369, line: 119, baseType: !307, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3368, file: !3369, line: 120, baseType: !307, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3368, file: !3369, line: 121, baseType: !307, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3368, file: !3369, line: 122, baseType: !307, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3368, file: !3369, line: 123, baseType: !307, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3368, file: !3369, line: 124, baseType: !307, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3368, file: !3369, line: 125, baseType: !307, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3368, file: !3369, line: 139, baseType: !307, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3368, file: !3369, line: 142, baseType: !307, size: 64, offset: 1024)
!3388 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3369, line: 144, baseType: !3389, size: 64, offset: 1088)
!3389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !3369, line: 144, size: 64, elements: !3390)
!3390 = !{!3391, !3392, !3393}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3389, file: !3369, line: 146, baseType: !225, size: 16)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3389, file: !3369, line: 148, baseType: !410, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3389, file: !3369, line: 150, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3369, line: 59, size: 64, elements: !3395)
!3395 = !{!3396, !3397, !3398}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3394, file: !3369, line: 61, baseType: !410, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3394, file: !3369, line: 63, baseType: !410, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3394, file: !3369, line: 65, baseType: !410, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3368, file: !3369, line: 153, baseType: !307, size: 64, offset: 1152)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3368, file: !3369, line: 154, baseType: !307, size: 64, offset: 1216)
!3401 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3369, line: 156, baseType: !3402, size: 64, offset: 1280)
!3402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !3369, line: 156, size: 64, elements: !3403)
!3403 = !{!3404, !3405, !3406}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3402, file: !3369, line: 158, baseType: !225, size: 16)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3402, file: !3369, line: 160, baseType: !410, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3402, file: !3369, line: 162, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3369, line: 69, size: 64, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3407, file: !3369, line: 71, baseType: !410, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3407, file: !3369, line: 73, baseType: !410, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3407, file: !3369, line: 75, baseType: !410, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3407, file: !3369, line: 77, baseType: !410, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3407, file: !3369, line: 80, baseType: !410, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3407, file: !3369, line: 83, baseType: !410, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3407, file: !3369, line: 86, baseType: !410, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3407, file: !3369, line: 88, baseType: !410, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3407, file: !3369, line: 93, baseType: !410, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3407, file: !3369, line: 100, baseType: !410, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3344, file: !3271, line: 96, baseType: !406, size: 32, offset: 1024)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3289, file: !3271, line: 352, baseType: !3421, size: 4608, align: 512)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3271, line: 333, size: 4608, align: 512, elements: !3422)
!3422 = !{!3423, !3424, !3431}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3421, file: !3271, line: 334, baseType: !3307, size: 4096, align: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3421, file: !3271, line: 335, baseType: !3425, size: 512, offset: 4096)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3271, line: 312, size: 512, elements: !3426)
!3426 = !{!3427, !3428, !3429}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3425, file: !3271, line: 313, baseType: !410, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3425, file: !3271, line: 314, baseType: !410, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3425, file: !3271, line: 315, baseType: !3430, size: 384, offset: 128)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 384, elements: !1833)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3421, file: !3271, line: 336, baseType: !3432, offset: 4608)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !1750)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3289, file: !3271, line: 353, baseType: !3434, size: 32768)
!3434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 32768, elements: !3435)
!3435 = !{!3436}
!3436 = !DISubrange(count: 4096)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3270, file: !3271, line: 484, baseType: !3276, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3270, file: !3271, line: 491, baseType: !3439, size: 128, offset: 256)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3271, line: 404, size: 128, elements: !3440)
!3440 = !{!3441, !3442, !3443}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3439, file: !3271, line: 424, baseType: !410, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3439, file: !3271, line: 432, baseType: !7, size: 32, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3439, file: !3271, line: 440, baseType: !7, size: 32, offset: 96)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3270, file: !3271, line: 498, baseType: !3439, size: 128, offset: 384)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3270, file: !3271, line: 508, baseType: !3277, size: 33280, align: 512, offset: 512)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1343, file: !1344, line: 16, baseType: !1353, size: 192, offset: 512)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1343, file: !1344, line: 17, baseType: !207, size: 32, offset: 704)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !489, file: !14, line: 1240, baseType: !157, size: 64, offset: 6912)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !489, file: !14, line: 1243, baseType: !406, size: 32, offset: 6976)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !489, file: !14, line: 1245, baseType: !1100, size: 64, offset: 7040)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !489, file: !14, line: 1246, baseType: !1100, size: 64, offset: 7104)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !489, file: !14, line: 1248, baseType: !407, size: 32, offset: 7168)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !489, file: !14, line: 1249, baseType: !3454, size: 64, offset: 7232)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !489, file: !14, line: 1252, baseType: !3457, size: 256, offset: 7296)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !419)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !489, file: !14, line: 1253, baseType: !3459, size: 128, offset: 7552)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3460, line: 21, baseType: !3461)
!3460 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3460, line: 19, size: 128, elements: !3462)
!3462 = !{!3463}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3461, file: !3460, line: 20, baseType: !3464, size: 128)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !2681)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !489, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !489, file: !14, line: 1261, baseType: !598, size: 256, offset: 7744)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !489, file: !14, line: 1267, baseType: !169, size: 64, offset: 8000)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !489, file: !14, line: 1269, baseType: !435, size: 64, offset: 8064)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !489, file: !14, line: 1271, baseType: !3470, size: 448, offset: 8128)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1109, line: 63, size: 448, elements: !3471)
!3471 = !{!3472, !3477, !3478, !3479, !3480, !3481, !3482}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3470, file: !1109, line: 64, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!307, !3476, !1107}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3470, file: !1109, line: 66, baseType: !3473, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3470, file: !1109, line: 69, baseType: !293, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3470, file: !1109, line: 70, baseType: !103, size: 32, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3470, file: !1109, line: 71, baseType: !7, size: 32, offset: 224)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3470, file: !1109, line: 74, baseType: !173, size: 128, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3470, file: !1109, line: 85, baseType: !3483, size: 64, offset: 384)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !489, file: !14, line: 1274, baseType: !602, size: 64, offset: 8576)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !489, file: !14, line: 1280, baseType: !602, size: 64, offset: 8640)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !489, file: !14, line: 1283, baseType: !103, size: 32, offset: 8704)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !489, file: !14, line: 1286, baseType: !2414, size: 32, offset: 8736)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !489, file: !14, line: 1289, baseType: !920, size: 64, offset: 8768)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !489, file: !14, line: 1290, baseType: !968, size: 64, offset: 8832)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !489, file: !14, line: 1297, baseType: !1927, size: 64, offset: 8896)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !489, file: !14, line: 1304, baseType: !3492, size: 64, offset: 8960)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3493, line: 49, size: 64, elements: !3494)
!3493 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3494 = !{!3495}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3492, file: !3493, line: 50, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3493, line: 41, size: 512, align: 512, elements: !3498)
!3498 = !{!3499, !3500, !3505}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3497, file: !3493, line: 43, baseType: !187, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3497, file: !3493, line: 45, baseType: !3501, size: 192, offset: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3493, line: 29, size: 192, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3501, file: !3493, line: 30, baseType: !173, size: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3501, file: !3493, line: 32, baseType: !293, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3497, file: !3493, line: 46, baseType: !293, size: 64, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !489, file: !14, line: 1305, baseType: !3492, size: 64, offset: 9024)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !489, file: !14, line: 1306, baseType: !818, size: 128, align: 64, offset: 9088)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !489, file: !14, line: 1307, baseType: !858, size: 256, offset: 9216)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !489, file: !14, line: 1309, baseType: !598, size: 256, offset: 9472)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !489, file: !14, line: 1314, baseType: !103, size: 32, offset: 9728)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !489, file: !14, line: 1317, baseType: !187, size: 32, align: 512, offset: 10240)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !489, file: !14, line: 1318, baseType: !173, size: 128, offset: 10304)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !489, file: !14, line: 1320, baseType: !187, size: 32, offset: 10432)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !489, file: !14, line: 1321, baseType: !173, size: 128, offset: 10496)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !483, file: !484, line: 73, baseType: !103, size: 32, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !483, file: !484, line: 74, baseType: !3517, size: 64, offset: 192)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1774, line: 42, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !437, file: !374, line: 141, baseType: !3521, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!103, !1170, !678}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !437, file: !374, line: 142, baseType: !3525, size: 64, offset: 768)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!372, !372, !3528}
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !373, file: !374, line: 96, baseType: !488, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !373, file: !374, line: 97, baseType: !307, size: 64, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !373, file: !374, line: 98, baseType: !157, size: 64, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !374, line: 100, baseType: !3534, size: 128, offset: 1024)
!3534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !374, line: 100, size: 128, elements: !3535)
!3535 = !{!3536, !3537}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3534, file: !374, line: 101, baseType: !173, size: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3534, file: !374, line: 102, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !373, file: !374, line: 104, baseType: !173, size: 128, offset: 1152)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !373, file: !374, line: 105, baseType: !173, size: 128, offset: 1280)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !373, file: !374, line: 113, baseType: !3542, size: 128, offset: 1408)
!3542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !374, line: 109, size: 128, elements: !3543)
!3543 = !{!3544, !3545, !3546}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3542, file: !374, line: 110, baseType: !844, size: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3542, file: !374, line: 111, baseType: !388, size: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3542, file: !374, line: 112, baseType: !818, size: 128, align: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !366, file: !14, line: 1968, baseType: !3548, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!169, !372, !337, !3551}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3553, line: 10, size: 128, elements: !3554)
!3553 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3554 = !{!3555, !3556}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3552, file: !3553, line: 11, baseType: !641, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3552, file: !3553, line: 12, baseType: !157, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !366, file: !14, line: 1969, baseType: !3558, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!103, !3517, !337, !103}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !366, file: !14, line: 1970, baseType: !3562, size: 64, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!360, !337, !103, !678}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !366, file: !14, line: 1972, baseType: !3566, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!103, !372, !257, !103}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !366, file: !14, line: 1974, baseType: !3570, size: 64, offset: 320)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!103, !3517, !337, !372, !299, !678}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !366, file: !14, line: 1976, baseType: !3574, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!103, !372, !337, !372}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !366, file: !14, line: 1977, baseType: !3578, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!103, !337, !372}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !366, file: !14, line: 1978, baseType: !3582, size: 64, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!103, !3517, !337, !372, !169}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !366, file: !14, line: 1980, baseType: !3586, size: 64, offset: 576)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!103, !3517, !337, !372, !299}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !366, file: !14, line: 1982, baseType: !3578, size: 64, offset: 640)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !366, file: !14, line: 1983, baseType: !3591, size: 64, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!103, !3517, !337, !372, !299, !493}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !366, file: !14, line: 1985, baseType: !3595, size: 64, offset: 768)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!103, !3517, !337, !372, !337, !372, !7}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !366, file: !14, line: 1987, baseType: !3599, size: 64, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!103, !3517, !372, !3602}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3604)
!3604 = !{!3605, !3606, !3607, !3617, !3626, !3627, !3632, !3633, !3634}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3603, file: !14, line: 227, baseType: !7, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3603, file: !14, line: 228, baseType: !299, size: 16, offset: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, scope: !3603, file: !14, line: 241, baseType: !3608, size: 32, offset: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3603, file: !14, line: 241, size: 32, elements: !3609)
!3609 = !{!3610, !3611}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3608, file: !14, line: 242, baseType: !343, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3608, file: !14, line: 243, baseType: !3612, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3613, line: 16, baseType: !3614)
!3613 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3613, line: 14, size: 32, elements: !3615)
!3615 = !{!3616}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3614, file: !3613, line: 15, baseType: !348, size: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, scope: !3603, file: !14, line: 245, baseType: !3618, size: 32, offset: 96)
!3618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3603, file: !14, line: 245, size: 32, elements: !3619)
!3619 = !{!3620, !3621}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3618, file: !14, line: 246, baseType: !352, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3618, file: !14, line: 247, baseType: !3622, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3613, line: 20, baseType: !3623)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3613, line: 18, size: 32, elements: !3624)
!3624 = !{!3625}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3623, file: !3613, line: 19, baseType: !356, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3603, file: !14, line: 249, baseType: !498, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3603, file: !14, line: 250, baseType: !3628, size: 128, offset: 192)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1101, line: 13, size: 128, elements: !3629)
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3628, file: !1101, line: 14, baseType: !1100, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3628, file: !1101, line: 15, baseType: !293, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3603, file: !14, line: 251, baseType: !3628, size: 128, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3603, file: !14, line: 252, baseType: !3628, size: 128, offset: 448)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3603, file: !14, line: 259, baseType: !1690, size: 64, offset: 576)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !366, file: !14, line: 1988, baseType: !3636, size: 64, offset: 896)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!103, !3517, !1170, !3639, !406, !7}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3641, line: 22, size: 1280, elements: !3642)
!3641 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3640, file: !3641, line: 23, baseType: !406, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3640, file: !3641, line: 24, baseType: !299, size: 16, offset: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3640, file: !3641, line: 25, baseType: !7, size: 32, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3640, file: !3641, line: 26, baseType: !1812, size: 32, offset: 96)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3640, file: !3641, line: 27, baseType: !410, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3640, file: !3641, line: 28, baseType: !410, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3640, file: !3641, line: 41, baseType: !410, size: 64, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3640, file: !3641, line: 42, baseType: !493, size: 32, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3640, file: !3641, line: 43, baseType: !493, size: 32, offset: 352)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3640, file: !3641, line: 44, baseType: !343, size: 32, offset: 384)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3640, file: !3641, line: 45, baseType: !352, size: 32, offset: 416)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3640, file: !3641, line: 46, baseType: !498, size: 64, offset: 448)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3640, file: !3641, line: 47, baseType: !3628, size: 128, offset: 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3640, file: !3641, line: 48, baseType: !3628, size: 128, offset: 640)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3640, file: !3641, line: 49, baseType: !3628, size: 128, offset: 768)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3640, file: !3641, line: 50, baseType: !3628, size: 128, offset: 896)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3640, file: !3641, line: 51, baseType: !410, size: 64, offset: 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3640, file: !3641, line: 52, baseType: !410, size: 64, offset: 1088)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3640, file: !3641, line: 53, baseType: !406, size: 32, offset: 1152)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3640, file: !3641, line: 54, baseType: !406, size: 32, offset: 1184)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3640, file: !3641, line: 55, baseType: !410, size: 64, offset: 1216)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !366, file: !14, line: 1990, baseType: !3665, size: 64, offset: 960)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!289, !372, !257, !304}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !366, file: !14, line: 1991, baseType: !3669, size: 64, offset: 1024)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!103, !337, !3672, !410, !410}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !366, file: !14, line: 1993, baseType: !3675, size: 64, offset: 1088)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!103, !337, !103}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !366, file: !14, line: 1994, baseType: !3679, size: 64, offset: 1152)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!103, !337, !372, !1690, !7, !299}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !366, file: !14, line: 1997, baseType: !3683, size: 64, offset: 1216)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!103, !3517, !337, !1690, !299}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !366, file: !14, line: 1999, baseType: !3687, size: 64, offset: 1280)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!360, !3517, !372, !103}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !366, file: !14, line: 2001, baseType: !3691, size: 64, offset: 1344)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!103, !3517, !372, !360, !103}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !366, file: !14, line: 2003, baseType: !3695, size: 64, offset: 1408)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!103, !3517, !372, !3698}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !366, file: !14, line: 2005, baseType: !3701, size: 64, offset: 1472)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!103, !372, !3698}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !366, file: !14, line: 2006, baseType: !3705, size: 64, offset: 1536)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!3708, !337}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3710)
!3710 = !{!3711, !3718}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3709, file: !14, line: 3193, baseType: !3712, size: 128)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3713, line: 296, size: 128, elements: !3714)
!3713 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3714 = !{!3715, !3716, !3717}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3712, file: !3713, line: 297, baseType: !187, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3712, file: !3713, line: 299, baseType: !1112, size: 32, offset: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3712, file: !3713, line: 300, baseType: !157, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3709, file: !14, line: 3194, baseType: !406, size: 32, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !338, file: !14, line: 655, baseType: !488, size: 64, offset: 448)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !338, file: !14, line: 656, baseType: !333, size: 64, offset: 512)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !338, file: !14, line: 659, baseType: !157, size: 64, offset: 576)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !338, file: !14, line: 663, baseType: !307, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !14, line: 671, baseType: !3724, size: 32, offset: 704)
!3724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !14, line: 671, size: 32, elements: !3725)
!3725 = !{!3726, !3728}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3724, file: !14, line: 672, baseType: !3727, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3724, file: !14, line: 673, baseType: !7, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !338, file: !14, line: 675, baseType: !493, size: 32, offset: 736)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !338, file: !14, line: 676, baseType: !498, size: 64, offset: 768)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !338, file: !14, line: 677, baseType: !3628, size: 128, offset: 832)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !338, file: !14, line: 678, baseType: !3628, size: 128, offset: 960)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !338, file: !14, line: 679, baseType: !3628, size: 128, offset: 1088)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !338, file: !14, line: 680, baseType: !187, size: 32, offset: 1216)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !338, file: !14, line: 681, baseType: !227, size: 16, offset: 1248)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !338, file: !14, line: 682, baseType: !215, size: 8, offset: 1264)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !338, file: !14, line: 683, baseType: !215, size: 8, offset: 1272)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !338, file: !14, line: 684, baseType: !1248, size: 64, offset: 1280)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !338, file: !14, line: 691, baseType: !307, size: 64, offset: 1344)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !338, file: !14, line: 692, baseType: !1260, size: 320, offset: 1408)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !338, file: !14, line: 694, baseType: !307, size: 64, offset: 1728)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !338, file: !14, line: 695, baseType: !307, size: 64, offset: 1792)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !338, file: !14, line: 697, baseType: !844, size: 128, offset: 1856)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !338, file: !14, line: 698, baseType: !173, size: 128, offset: 1984)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !338, file: !14, line: 707, baseType: !173, size: 128, offset: 2112)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !338, file: !14, line: 708, baseType: !173, size: 128, offset: 2240)
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !14, line: 709, baseType: !3748, size: 128, offset: 2368)
!3748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !14, line: 709, size: 128, elements: !3749)
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3748, file: !14, line: 710, baseType: !968, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3748, file: !14, line: 711, baseType: !818, size: 128, align: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !338, file: !14, line: 713, baseType: !604, size: 64, offset: 2496)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !338, file: !14, line: 714, baseType: !604, size: 64, offset: 2560)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !338, file: !14, line: 715, baseType: !207, size: 32, offset: 2624)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !338, file: !14, line: 716, baseType: !207, size: 32, offset: 2656)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !338, file: !14, line: 717, baseType: !207, size: 32, offset: 2688)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !338, file: !14, line: 719, baseType: !207, size: 32, offset: 2720)
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !14, line: 721, baseType: !3759, size: 64, offset: 2752)
!3759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !14, line: 721, size: 64, elements: !3760)
!3760 = !{!3761, !3762}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3759, file: !14, line: 722, baseType: !1958, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3759, file: !14, line: 723, baseType: !991, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !338, file: !14, line: 725, baseType: !3764, size: 64, offset: 2816)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !338, file: !14, line: 726, baseType: !334, size: 1536, align: 64, offset: 2880)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !338, file: !14, line: 727, baseType: !173, size: 128, offset: 4416)
!3768 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !14, line: 728, baseType: !3769, size: 64, offset: 4544)
!3769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !14, line: 728, size: 64, elements: !3770)
!3770 = !{!3771, !3772, !3775, !3776}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3769, file: !14, line: 729, baseType: !2364, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3769, file: !14, line: 730, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3769, file: !14, line: 731, baseType: !257, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3769, file: !14, line: 732, baseType: !7, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !338, file: !14, line: 735, baseType: !407, size: 32, offset: 4608)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !338, file: !14, line: 738, baseType: !407, size: 32, offset: 4640)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !338, file: !14, line: 739, baseType: !3454, size: 64, offset: 4672)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !338, file: !14, line: 750, baseType: !157, size: 64, offset: 4736)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !334, file: !14, line: 474, baseType: !3712, size: 128, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !334, file: !14, line: 475, baseType: !1260, size: 320, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !334, file: !14, line: 476, baseType: !1112, size: 32, offset: 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !334, file: !14, line: 477, baseType: !207, size: 32, offset: 544)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !334, file: !14, line: 482, baseType: !1546, size: 128, offset: 576)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !334, file: !14, line: 483, baseType: !307, size: 64, offset: 704)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !334, file: !14, line: 484, baseType: !307, size: 64, offset: 768)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !334, file: !14, line: 485, baseType: !3789, size: 64, offset: 832)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3791)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3792)
!3792 = !{!3793, !3797, !3867, !3871, !3875, !3881, !3885, !3889, !3894, !3898, !3902, !3906, !3907, !3911, !3915, !3919, !3924, !3928, !3935, !3936}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3791, file: !14, line: 405, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!103, !2151, !1003}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3791, file: !14, line: 406, baseType: !3798, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!103, !1690, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3803)
!3803 = !{!3804, !3834, !3848}
!3804 = !DIDerivedType(tag: DW_TAG_member, scope: !3802, file: !38, line: 295, baseType: !3805, size: 512)
!3805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3802, file: !38, line: 295, size: 512, elements: !3806)
!3806 = !{!3807, !3833}
!3807 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !38, line: 296, baseType: !3808, size: 448)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3805, file: !38, line: 296, size: 448, elements: !3809)
!3809 = !{!3810, !3811, !3820, !3821, !3822, !3831, !3832}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3808, file: !38, line: 298, baseType: !307, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, scope: !3808, file: !38, line: 299, baseType: !3812, size: 128, offset: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3808, file: !38, line: 299, size: 128, elements: !3813)
!3813 = !{!3814, !3815}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3812, file: !38, line: 300, baseType: !173, size: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, scope: !3812, file: !38, line: 302, baseType: !3816, size: 128)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3812, file: !38, line: 302, size: 128, elements: !3817)
!3817 = !{!3818, !3819}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3816, file: !38, line: 303, baseType: !157, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3816, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3808, file: !38, line: 310, baseType: !333, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3808, file: !38, line: 311, baseType: !307, size: 64, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, scope: !3808, file: !38, line: 312, baseType: !3823, size: 64, offset: 320)
!3823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3808, file: !38, line: 312, size: 64, elements: !3824)
!3824 = !{!3825, !3826}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3823, file: !38, line: 313, baseType: !157, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3823, file: !38, line: 314, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3828)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3829)
!3829 = !{!3830}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3828, file: !38, line: 256, baseType: !307, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3808, file: !38, line: 316, baseType: !207, size: 32, offset: 384)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3808, file: !38, line: 317, baseType: !207, size: 32, offset: 416)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3805, file: !38, line: 323, baseType: !2152, size: 512, align: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !3802, file: !38, line: 325, baseType: !3835, size: 512, offset: 512)
!3835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3802, file: !38, line: 325, size: 512, elements: !3836)
!3836 = !{!3837, !3847}
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !3835, file: !38, line: 326, baseType: !3838, size: 320)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3835, file: !38, line: 326, size: 320, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3843, !3844, !3845, !3846}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3838, file: !38, line: 327, baseType: !307, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3838, file: !38, line: 328, baseType: !307, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3838, file: !38, line: 329, baseType: !307, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3838, file: !38, line: 331, baseType: !207, size: 32, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3838, file: !38, line: 332, baseType: !207, size: 32, offset: 224)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3838, file: !38, line: 333, baseType: !207, size: 32, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3838, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3835, file: !38, line: 339, baseType: !2152, size: 512, align: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, scope: !3802, file: !38, line: 341, baseType: !3849, size: 512, offset: 1024)
!3849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3802, file: !38, line: 341, size: 512, elements: !3850)
!3850 = !{!3851, !3860, !3866}
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !3849, file: !38, line: 342, baseType: !3852, size: 384)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3849, file: !38, line: 342, size: 384, elements: !3853)
!3853 = !{!3854, !3855, !3856, !3857, !3858, !3859}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3852, file: !38, line: 343, baseType: !307, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3852, file: !38, line: 344, baseType: !307, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3852, file: !38, line: 346, baseType: !157, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3852, file: !38, line: 347, baseType: !157, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3852, file: !38, line: 348, baseType: !157, size: 64, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3852, file: !38, line: 349, baseType: !157, size: 64, offset: 320)
!3860 = !DIDerivedType(tag: DW_TAG_member, scope: !3849, file: !38, line: 352, baseType: !3861, size: 256)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3849, file: !38, line: 352, size: 256, elements: !3862)
!3862 = !{!3863, !3864, !3865}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3861, file: !38, line: 353, baseType: !307, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3861, file: !38, line: 354, baseType: !307, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3861, file: !38, line: 356, baseType: !173, size: 128, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3849, file: !38, line: 359, baseType: !2152, size: 512, align: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3791, file: !14, line: 409, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!103, !333, !1003}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3791, file: !14, line: 412, baseType: !3872, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!678, !333, !3801}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3791, file: !14, line: 414, baseType: !3876, size: 64, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3791, file: !14, line: 416, baseType: !3882, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!103, !1690, !333, !498, !7, !3203, !2379}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3791, file: !14, line: 419, baseType: !3886, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!103, !1690, !333, !498, !7, !7, !2151, !157}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3791, file: !14, line: 424, baseType: !3890, size: 64, offset: 448)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!3893, !333, !3893}
!3893 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !174, line: 131, baseType: !410)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3791, file: !14, line: 425, baseType: !3895, size: 64, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !3801, !304, !304}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3791, file: !14, line: 426, baseType: !3899, size: 64, offset: 576)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!678, !3801, !1112}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3791, file: !14, line: 427, baseType: !3903, size: 64, offset: 640)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{null, !3801}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3791, file: !14, line: 428, baseType: !1977, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3791, file: !14, line: 433, baseType: !3908, size: 64, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!103, !333, !3801, !3801, !74}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3791, file: !14, line: 435, baseType: !3912, size: 64, offset: 832)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!103, !3801}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3791, file: !14, line: 436, baseType: !3916, size: 64, offset: 896)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!678, !3801, !304, !304}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3791, file: !14, line: 438, baseType: !3920, size: 64, offset: 960)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !3801, !3923, !3923}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3791, file: !14, line: 439, baseType: !3925, size: 64, offset: 1024)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!103, !333, !2151}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3791, file: !14, line: 442, baseType: !3929, size: 64, offset: 1088)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!103, !3932, !1690, !3934}
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3791, file: !14, line: 444, baseType: !2371, size: 64, offset: 1152)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3791, file: !14, line: 445, baseType: !3937, size: 64, offset: 1216)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!103, !1980, !2002}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !14, line: 486, baseType: !307, size: 64, offset: 896)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !334, file: !14, line: 487, baseType: !1260, size: 320, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !334, file: !14, line: 488, baseType: !2414, size: 32, offset: 1280)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !334, file: !14, line: 489, baseType: !187, size: 32, offset: 1312)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !334, file: !14, line: 490, baseType: !173, size: 128, offset: 1344)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !334, file: !14, line: 491, baseType: !157, size: 64, offset: 1472)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !324, file: !283, line: 180, baseType: !3947, size: 64, offset: 320)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!289, !1690, !180, !323, !257, !498, !304}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !324, file: !283, line: 182, baseType: !3947, size: 64, offset: 384)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !324, file: !283, line: 184, baseType: !3952, size: 64, offset: 448)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!103, !1690, !180, !323, !2042}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !312, file: !283, line: 90, baseType: !3956, size: 64, offset: 192)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !312, file: !283, line: 91, baseType: !3958, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !273, file: !166, line: 120, baseType: !3960, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!3963, !240}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3965)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3966)
!3966 = !{!3967, !3968, !3972, !3976, !3982, !3986}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3965, file: !82, line: 40, baseType: !81, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3965, file: !82, line: 41, baseType: !3969, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!678}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3965, file: !82, line: 42, baseType: !3973, size: 64, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!157}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3965, file: !82, line: 43, baseType: !3977, size: 64, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!2503, !3980}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3965, file: !82, line: 44, baseType: !3983, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!2503}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3965, file: !82, line: 45, baseType: !641, size: 64, offset: 320)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !273, file: !166, line: 121, baseType: !3988, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!2503, !240}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !273, file: !166, line: 122, baseType: !3992, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !240, !3995, !3996}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !165, file: !166, line: 70, baseType: !3998, size: 64, offset: 384)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !513, line: 190, size: 1152, elements: !4000)
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4092, !4093, !4094, !4095, !4096, !4099}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3999, file: !513, line: 191, baseType: !207, size: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3999, file: !513, line: 192, baseType: !207, size: 32, offset: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3999, file: !513, line: 202, baseType: !3998, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3999, file: !513, line: 203, baseType: !169, size: 64, offset: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3999, file: !513, line: 205, baseType: !710, size: 192, align: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3999, file: !513, line: 207, baseType: !2503, size: 64, offset: 384)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3999, file: !513, line: 208, baseType: !7, size: 32, offset: 448)
!4008 = !DIDerivedType(tag: DW_TAG_member, scope: !3999, file: !513, line: 209, baseType: !4009, size: 256, offset: 512)
!4009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3999, file: !513, line: 209, size: 256, elements: !4010)
!4010 = !{!4011, !4020, !4024}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4009, file: !513, line: 210, baseType: !4012, size: 256)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !513, line: 153, size: 256, elements: !4013)
!4013 = !{!4014, !4015, !4016, !4019}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4012, file: !513, line: 154, baseType: !307, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4012, file: !513, line: 156, baseType: !1549, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4012, file: !513, line: 162, baseType: !4017, size: 64, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !513, line: 162, flags: DIFlagFwdDecl)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4012, file: !513, line: 167, baseType: !307, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4009, file: !513, line: 211, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !513, line: 170, size: 64, elements: !4022)
!4022 = !{!4023}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4021, file: !513, line: 171, baseType: !3998, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4009, file: !513, line: 212, baseType: !4025, size: 256)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !513, line: 174, size: 256, elements: !4026)
!4026 = !{!4027, !4087, !4090, !4091}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4025, file: !513, line: 175, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4030)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !513, line: 271, size: 768, elements: !4031)
!4031 = !{!4032, !4052, !4056, !4060, !4064, !4068, !4072, !4076, !4077, !4078, !4079, !4083}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4030, file: !513, line: 276, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!103, !4036}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !513, line: 251, size: 1216, elements: !4038)
!4038 = !{!4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4037, file: !513, line: 253, baseType: !3998, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4037, file: !513, line: 254, baseType: !1690, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4037, file: !513, line: 255, baseType: !1040, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4037, file: !513, line: 256, baseType: !157, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4037, file: !513, line: 259, baseType: !598, size: 256, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4037, file: !513, line: 260, baseType: !598, size: 256, offset: 512)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4037, file: !513, line: 261, baseType: !103, size: 32, offset: 768)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4037, file: !513, line: 262, baseType: !173, size: 128, offset: 832)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4037, file: !513, line: 263, baseType: !257, size: 64, offset: 960)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4037, file: !513, line: 265, baseType: !304, size: 64, offset: 1024)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4037, file: !513, line: 266, baseType: !678, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4037, file: !513, line: 267, baseType: !678, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4037, file: !513, line: 268, baseType: !2087, size: 64, offset: 1152)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4030, file: !513, line: 277, baseType: !4053, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{null, !4036}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4030, file: !513, line: 290, baseType: !4057, size: 64, offset: 128)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!103, !1040, !157}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4030, file: !513, line: 292, baseType: !4061, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!157, !1040, !1971}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4030, file: !513, line: 293, baseType: !4065, size: 64, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!157, !1040, !157, !1971}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4030, file: !513, line: 294, baseType: !4069, size: 64, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !1040, !157}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4030, file: !513, line: 296, baseType: !4073, size: 64, offset: 384)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!289, !4036, !257, !304, !498}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4030, file: !513, line: 306, baseType: !304, size: 64, offset: 448)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4030, file: !513, line: 313, baseType: !678, size: 8, offset: 512)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4030, file: !513, line: 314, baseType: !4073, size: 64, offset: 576)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4030, file: !513, line: 317, baseType: !4080, size: 64, offset: 640)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!2029, !4036, !2031}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4030, file: !513, line: 320, baseType: !4084, size: 64, offset: 704)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!103, !4036, !2042}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4025, file: !513, line: 176, baseType: !4088, size: 64, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !513, line: 35, flags: DIFlagFwdDecl)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4025, file: !513, line: 177, baseType: !498, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4025, file: !513, line: 178, baseType: !3998, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3999, file: !513, line: 215, baseType: !157, size: 64, offset: 768)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3999, file: !513, line: 221, baseType: !410, size: 64, offset: 832)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3999, file: !513, line: 223, baseType: !227, size: 16, offset: 896)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3999, file: !513, line: 224, baseType: !299, size: 16, offset: 912)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3999, file: !513, line: 225, baseType: !4097, size: 64, offset: 960)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !513, line: 36, flags: DIFlagFwdDecl)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3999, file: !513, line: 227, baseType: !818, size: 128, align: 64, offset: 1024)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !165, file: !166, line: 71, baseType: !4101, size: 32, offset: 448)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4102, line: 19, size: 32, elements: !4103)
!4102 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4103 = !{!4104}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4101, file: !4102, line: 20, baseType: !1380, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !165, file: !166, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !165, file: !166, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !165, file: !166, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !165, file: !166, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !165, file: !166, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !88, line: 707, baseType: !4111, size: 64, offset: 512)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !162, file: !88, line: 709, baseType: !4113, size: 64, offset: 576)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !88, line: 37, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !162, file: !88, line: 711, baseType: !169, size: 64, offset: 640)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !88, line: 712, baseType: !4117, size: 64, offset: 704)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4119)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !88, line: 89, size: 384, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4129, !4134, !4138}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4119, file: !88, line: 90, baseType: !169, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4119, file: !88, line: 91, baseType: !309, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4119, file: !88, line: 92, baseType: !4124, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!103, !4127, !252}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4119, file: !88, line: 93, baseType: !4130, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!257, !4127, !4133, !3995, !3996}
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4119, file: !88, line: 95, baseType: !4135, size: 64, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !4111}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4119, file: !88, line: 97, baseType: !4139, size: 64, offset: 320)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4141)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !95, line: 286, size: 1472, elements: !4142)
!4142 = !{!4143, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4141, file: !95, line: 287, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!103, !4111}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4141, file: !95, line: 288, baseType: !4135, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4141, file: !95, line: 289, baseType: !4144, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4141, file: !95, line: 290, baseType: !4144, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4141, file: !95, line: 291, baseType: !4144, size: 64, offset: 256)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4141, file: !95, line: 292, baseType: !4144, size: 64, offset: 320)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4141, file: !95, line: 293, baseType: !4144, size: 64, offset: 384)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4141, file: !95, line: 294, baseType: !4144, size: 64, offset: 448)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4141, file: !95, line: 295, baseType: !4144, size: 64, offset: 512)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4141, file: !95, line: 296, baseType: !4144, size: 64, offset: 576)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4141, file: !95, line: 297, baseType: !4144, size: 64, offset: 640)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4141, file: !95, line: 298, baseType: !4144, size: 64, offset: 704)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4141, file: !95, line: 299, baseType: !4144, size: 64, offset: 768)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4141, file: !95, line: 300, baseType: !4144, size: 64, offset: 832)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4141, file: !95, line: 301, baseType: !4144, size: 64, offset: 896)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4141, file: !95, line: 302, baseType: !4144, size: 64, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4141, file: !95, line: 303, baseType: !4144, size: 64, offset: 1024)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4141, file: !95, line: 304, baseType: !4144, size: 64, offset: 1088)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4141, file: !95, line: 305, baseType: !4144, size: 64, offset: 1152)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4141, file: !95, line: 306, baseType: !4144, size: 64, offset: 1216)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4141, file: !95, line: 307, baseType: !4144, size: 64, offset: 1280)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4141, file: !95, line: 308, baseType: !4144, size: 64, offset: 1344)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4141, file: !95, line: 309, baseType: !4144, size: 64, offset: 1408)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !162, file: !88, line: 714, baseType: !4170, size: 64, offset: 768)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4172)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4173, line: 80, size: 1344, elements: !4174)
!4173 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4174 = !{!4175, !4176, !4177, !4178, !4179, !4180, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4253}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4172, file: !4173, line: 81, baseType: !169, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4172, file: !4173, line: 82, baseType: !169, size: 64, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4172, file: !4173, line: 83, baseType: !309, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4172, file: !4173, line: 84, baseType: !309, size: 64, offset: 192)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4172, file: !4173, line: 85, baseType: !309, size: 64, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4172, file: !4173, line: 87, baseType: !4181, size: 64, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!103, !4111, !4184}
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !136, line: 96, size: 1152, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192, !4193, !4206, !4216, !4217, !4218, !4219, !4220, !4228, !4229, !4230, !4231, !4232, !4233}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4185, file: !136, line: 97, baseType: !169, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4185, file: !136, line: 98, baseType: !4170, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4185, file: !136, line: 100, baseType: !527, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4185, file: !136, line: 101, baseType: !169, size: 64, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4185, file: !136, line: 103, baseType: !678, size: 8, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4185, file: !136, line: 104, baseType: !135, size: 32, offset: 288)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4185, file: !136, line: 106, baseType: !4194, size: 64, offset: 320)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4196)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4197, line: 282, size: 1600, elements: !4198)
!4197 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4198 = !{!4199, !4200, !4201, !4205}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4196, file: !4197, line: 283, baseType: !3457, size: 256)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4196, file: !4197, line: 284, baseType: !3457, size: 256, offset: 256)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4196, file: !4197, line: 285, baseType: !4202, size: 1024, offset: 512)
!4202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 1024, elements: !4203)
!4203 = !{!4204}
!4204 = !DISubrange(count: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4196, file: !4197, line: 286, baseType: !2503, size: 64, offset: 1536)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4185, file: !136, line: 107, baseType: !4207, size: 64, offset: 384)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4209)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4197, line: 217, size: 256, elements: !4210)
!4210 = !{!4211, !4212, !4214, !4215}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4209, file: !4197, line: 218, baseType: !3464, size: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4209, file: !4197, line: 219, baseType: !4213, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4197, line: 15, baseType: !307)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4209, file: !4197, line: 220, baseType: !407, size: 32, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4209, file: !4197, line: 221, baseType: !407, size: 32, offset: 224)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4185, file: !136, line: 109, baseType: !4144, size: 64, offset: 448)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4185, file: !136, line: 110, baseType: !4135, size: 64, offset: 512)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4185, file: !136, line: 111, baseType: !4144, size: 64, offset: 576)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4185, file: !136, line: 112, baseType: !4135, size: 64, offset: 640)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4185, file: !136, line: 113, baseType: !4221, size: 64, offset: 704)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!103, !4111, !4224}
!4224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !95, line: 60, baseType: !4225)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !95, line: 58, size: 32, elements: !4226)
!4226 = !{!4227}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4225, file: !95, line: 59, baseType: !103, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4185, file: !136, line: 114, baseType: !4144, size: 64, offset: 768)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4185, file: !136, line: 115, baseType: !309, size: 64, offset: 832)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4185, file: !136, line: 116, baseType: !309, size: 64, offset: 896)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4185, file: !136, line: 118, baseType: !4139, size: 64, offset: 960)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4185, file: !136, line: 119, baseType: !4135, size: 64, offset: 1024)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4185, file: !136, line: 121, baseType: !4234, size: 64, offset: 1088)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !136, line: 121, flags: DIFlagFwdDecl)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4172, file: !4173, line: 88, baseType: !4124, size: 64, offset: 384)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4172, file: !4173, line: 89, baseType: !4144, size: 64, offset: 448)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4172, file: !4173, line: 90, baseType: !4135, size: 64, offset: 512)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4172, file: !4173, line: 91, baseType: !4135, size: 64, offset: 576)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4172, file: !4173, line: 92, baseType: !4135, size: 64, offset: 640)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4172, file: !4173, line: 94, baseType: !4144, size: 64, offset: 704)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4172, file: !4173, line: 95, baseType: !4144, size: 64, offset: 768)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4172, file: !4173, line: 97, baseType: !4221, size: 64, offset: 832)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4172, file: !4173, line: 98, baseType: !4144, size: 64, offset: 896)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4172, file: !4173, line: 100, baseType: !4144, size: 64, offset: 960)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4172, file: !4173, line: 102, baseType: !4144, size: 64, offset: 1024)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4172, file: !4173, line: 103, baseType: !4135, size: 64, offset: 1088)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4172, file: !4173, line: 105, baseType: !4139, size: 64, offset: 1152)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4172, file: !4173, line: 107, baseType: !4250, size: 64, offset: 1216)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4252)
!4252 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4173, line: 107, flags: DIFlagFwdDecl)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4172, file: !4173, line: 109, baseType: !678, size: 8, offset: 1280)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !162, file: !88, line: 715, baseType: !4184, size: 64, offset: 832)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !162, file: !88, line: 717, baseType: !157, size: 64, offset: 896)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !162, file: !88, line: 719, baseType: !157, size: 64, offset: 960)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !162, file: !88, line: 721, baseType: !598, size: 256, offset: 1024)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !162, file: !88, line: 725, baseType: !4259, size: 448, offset: 1280)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !88, line: 517, size: 448, elements: !4260)
!4260 = !{!4261, !4262, !4263, !4264}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4259, file: !88, line: 518, baseType: !173, size: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4259, file: !88, line: 519, baseType: !173, size: 128, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4259, file: !88, line: 520, baseType: !173, size: 128, offset: 256)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4259, file: !88, line: 521, baseType: !87, size: 32, offset: 384)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !162, file: !88, line: 726, baseType: !4266, size: 2496, offset: 1728)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !95, line: 663, size: 2496, elements: !4267)
!4267 = !{!4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4350, !4354}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4266, file: !95, line: 664, baseType: !4224, size: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4266, file: !95, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4266, file: !95, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4266, file: !95, line: 667, baseType: !678, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4266, file: !95, line: 668, baseType: !678, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4266, file: !95, line: 669, baseType: !678, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4266, file: !95, line: 670, baseType: !678, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4266, file: !95, line: 671, baseType: !678, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4266, file: !95, line: 672, baseType: !678, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4266, file: !95, line: 673, baseType: !678, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4266, file: !95, line: 674, baseType: !678, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4266, file: !95, line: 675, baseType: !406, size: 32, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4266, file: !95, line: 676, baseType: !187, size: 32, offset: 96)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4266, file: !95, line: 678, baseType: !173, size: 128, offset: 128)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4266, file: !95, line: 679, baseType: !547, size: 256, offset: 256)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4266, file: !95, line: 680, baseType: !4284, size: 64, offset: 512)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4286, line: 43, size: 1536, elements: !4287)
!4286 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4287 = !{!4288, !4289, !4290, !4291, !4292, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4285, file: !4286, line: 44, baseType: !169, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4285, file: !4286, line: 45, baseType: !103, size: 32, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4285, file: !4286, line: 46, baseType: !173, size: 128, offset: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4285, file: !4286, line: 47, baseType: !187, size: 32, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4285, file: !4286, line: 48, baseType: !4293, size: 64, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !95, line: 629, flags: DIFlagFwdDecl)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4285, file: !4286, line: 49, baseType: !840, size: 320, offset: 384)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4285, file: !4286, line: 50, baseType: !307, size: 64, offset: 704)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4285, file: !4286, line: 51, baseType: !1495, size: 64, offset: 768)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4285, file: !4286, line: 52, baseType: !1495, size: 64, offset: 832)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4285, file: !4286, line: 53, baseType: !1495, size: 64, offset: 896)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4285, file: !4286, line: 54, baseType: !1495, size: 64, offset: 960)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4285, file: !4286, line: 55, baseType: !1495, size: 64, offset: 1024)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4285, file: !4286, line: 56, baseType: !307, size: 64, offset: 1088)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4285, file: !4286, line: 57, baseType: !307, size: 64, offset: 1152)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4285, file: !4286, line: 58, baseType: !307, size: 64, offset: 1216)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4285, file: !4286, line: 59, baseType: !307, size: 64, offset: 1280)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4285, file: !4286, line: 60, baseType: !307, size: 64, offset: 1344)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4285, file: !4286, line: 61, baseType: !4111, size: 64, offset: 1408)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4285, file: !4286, line: 62, baseType: !678, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4285, file: !4286, line: 63, baseType: !678, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4266, file: !95, line: 681, baseType: !678, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4266, file: !95, line: 682, baseType: !678, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4266, file: !95, line: 683, baseType: !678, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4266, file: !95, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4266, file: !95, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4266, file: !95, line: 690, baseType: !1487, size: 512, offset: 640)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4266, file: !95, line: 691, baseType: !410, size: 64, offset: 1152)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4266, file: !95, line: 692, baseType: !858, size: 256, offset: 1216)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4266, file: !95, line: 693, baseType: !1353, size: 192, offset: 1472)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4266, file: !95, line: 694, baseType: !4293, size: 64, offset: 1664)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4266, file: !95, line: 695, baseType: !207, size: 32, offset: 1728)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4266, file: !95, line: 696, baseType: !207, size: 32, offset: 1760)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4266, file: !95, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4266, file: !95, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4266, file: !95, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4266, file: !95, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4266, file: !95, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4266, file: !95, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4266, file: !95, line: 703, baseType: !678, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4266, file: !95, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4266, file: !95, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4266, file: !95, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4266, file: !95, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4266, file: !95, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4266, file: !95, line: 709, baseType: !7, size: 32, offset: 1824)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4266, file: !95, line: 710, baseType: !94, size: 32, offset: 1856)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4266, file: !95, line: 711, baseType: !102, size: 32, offset: 1888)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4266, file: !95, line: 712, baseType: !102, size: 32, offset: 1920)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4266, file: !95, line: 713, baseType: !103, size: 32, offset: 1952)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4266, file: !95, line: 714, baseType: !103, size: 32, offset: 1984)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4266, file: !95, line: 715, baseType: !410, size: 64, offset: 2048)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4266, file: !95, line: 716, baseType: !410, size: 64, offset: 2112)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4266, file: !95, line: 717, baseType: !410, size: 64, offset: 2176)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4266, file: !95, line: 718, baseType: !410, size: 64, offset: 2240)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4266, file: !95, line: 720, baseType: !4345, size: 64, offset: 2304)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !95, line: 632, size: 64, elements: !4347)
!4347 = !{!4348, !4349}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4346, file: !95, line: 633, baseType: !187, size: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4346, file: !95, line: 634, baseType: !7, size: 32, offset: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4266, file: !95, line: 721, baseType: !4351, size: 64, offset: 2368)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !4111, !594}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4266, file: !95, line: 722, baseType: !4355, size: 64, offset: 2432)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !95, line: 722, flags: DIFlagFwdDecl)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !162, file: !88, line: 727, baseType: !4358, size: 64, offset: 4224)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !95, line: 742, size: 1792, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4367, !4368, !4369}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4359, file: !95, line: 743, baseType: !4141, size: 1472)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4359, file: !95, line: 744, baseType: !4144, size: 64, offset: 1472)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4359, file: !95, line: 745, baseType: !4364, size: 64, offset: 1536)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{null, !4111, !678}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4359, file: !95, line: 746, baseType: !4144, size: 64, offset: 1600)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4359, file: !95, line: 747, baseType: !4135, size: 64, offset: 1664)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4359, file: !95, line: 748, baseType: !4135, size: 64, offset: 1728)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !162, file: !88, line: 736, baseType: !4371, size: 128, offset: 4288)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !88, line: 529, size: 128, elements: !4372)
!4372 = !{!4373, !4377}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4371, file: !88, line: 531, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4376, line: 13, flags: DIFlagFwdDecl)
!4376 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4371, file: !88, line: 532, baseType: !4378, size: 64, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !88, line: 49, flags: DIFlagFwdDecl)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !162, file: !88, line: 738, baseType: !4381, size: 64, offset: 4416)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4383)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !88, line: 738, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !162, file: !88, line: 740, baseType: !4385, size: 64, offset: 4480)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !162, file: !88, line: 741, baseType: !410, size: 64, offset: 4544)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !162, file: !88, line: 746, baseType: !410, size: 64, offset: 4608)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !162, file: !88, line: 747, baseType: !4389, size: 64, offset: 4672)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4391)
!4391 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !88, line: 747, flags: DIFlagFwdDecl)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !162, file: !88, line: 749, baseType: !4393, size: 64, offset: 4736)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !88, line: 428, size: 128, elements: !4395)
!4395 = !{!4396, !4397, !4398}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4394, file: !88, line: 433, baseType: !7, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4394, file: !88, line: 434, baseType: !7, size: 32, offset: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4394, file: !88, line: 435, baseType: !307, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !162, file: !88, line: 751, baseType: !173, size: 128, offset: 4800)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !162, file: !88, line: 762, baseType: !4401, size: 64, offset: 4928)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !88, line: 762, flags: DIFlagFwdDecl)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !162, file: !88, line: 770, baseType: !4404, offset: 4992)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4405, line: 5, elements: !887)
!4405 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !162, file: !88, line: 772, baseType: !4407, size: 64, offset: 4992)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4409, line: 18, flags: DIFlagFwdDecl)
!4409 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !162, file: !88, line: 773, baseType: !4411, size: 64, offset: 5056)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4413, line: 41, size: 512, elements: !4414)
!4413 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4414 = !{!4415, !4416, !4510, !4511, !4512, !4513}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4412, file: !4413, line: 42, baseType: !4411, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4412, file: !4413, line: 43, baseType: !4417, size: 64, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4419)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4413, line: 125, size: 1408, elements: !4420)
!4420 = !{!4421, !4425, !4429, !4435, !4439, !4440, !4445, !4449, !4453, !4457, !4461, !4462, !4466, !4470, !4474, !4485, !4486, !4487, !4488, !4498, !4502, !4506}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4419, file: !4413, line: 126, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!4411, !4411}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4419, file: !4413, line: 127, baseType: !4426, size: 64, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !4411}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4419, file: !4413, line: 128, baseType: !4430, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!678, !4433}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4412)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4419, file: !4413, line: 129, baseType: !4436, size: 64, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!2503, !4433, !4127}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4419, file: !4413, line: 131, baseType: !4430, size: 64, offset: 256)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4419, file: !4413, line: 133, baseType: !4441, size: 64, offset: 320)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!4444, !4433}
!4444 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4413, line: 132, flags: DIFlagFwdDecl)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4419, file: !4413, line: 134, baseType: !4446, size: 64, offset: 384)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!678, !4433, !169}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4419, file: !4413, line: 136, baseType: !4450, size: 64, offset: 448)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!103, !4433, !169, !7, !157, !304}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4419, file: !4413, line: 141, baseType: !4454, size: 64, offset: 512)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!103, !4433, !169, !935, !304}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4419, file: !4413, line: 144, baseType: !4458, size: 64, offset: 576)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!169, !4433}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4419, file: !4413, line: 145, baseType: !4458, size: 64, offset: 640)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4419, file: !4413, line: 146, baseType: !4463, size: 64, offset: 704)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!4411, !4433}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4419, file: !4413, line: 148, baseType: !4467, size: 64, offset: 768)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!4411, !4433, !4411}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4419, file: !4413, line: 151, baseType: !4471, size: 64, offset: 832)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!4411, !4433, !169}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4419, file: !4413, line: 153, baseType: !4475, size: 64, offset: 896)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!103, !4433, !169, !169, !7, !7, !4478}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4413, line: 94, size: 640, elements: !4480)
!4480 = !{!4481, !4482, !4483}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4479, file: !4413, line: 95, baseType: !4411, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4479, file: !4413, line: 96, baseType: !7, size: 32, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4479, file: !4413, line: 97, baseType: !4484, size: 512, offset: 128)
!4484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 512, elements: !1530)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4419, file: !4413, line: 158, baseType: !4467, size: 64, offset: 960)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4419, file: !4413, line: 161, baseType: !4463, size: 64, offset: 1024)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4419, file: !4413, line: 163, baseType: !4422, size: 64, offset: 1088)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4419, file: !4413, line: 164, baseType: !4489, size: 64, offset: 1152)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!103, !4433, !4492}
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4413, line: 73, size: 128, elements: !4494)
!4494 = !{!4495, !4496, !4497}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4493, file: !4413, line: 74, baseType: !7, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4493, file: !4413, line: 75, baseType: !7, size: 32, offset: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4493, file: !4413, line: 76, baseType: !4433, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4419, file: !4413, line: 166, baseType: !4499, size: 64, offset: 1216)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!157, !4411, !103}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4419, file: !4413, line: 167, baseType: !4503, size: 64, offset: 1280)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!103, !4433, !7}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4419, file: !4413, line: 168, baseType: !4507, size: 64, offset: 1344)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!103, !4411}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4412, file: !4413, line: 44, baseType: !4111, size: 64, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4412, file: !4413, line: 45, baseType: !173, size: 128, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4412, file: !4413, line: 46, baseType: !173, size: 128, offset: 320)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4412, file: !4413, line: 47, baseType: !215, size: 8, offset: 448)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !162, file: !88, line: 776, baseType: !103, size: 32, offset: 5120)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !162, file: !88, line: 778, baseType: !493, size: 32, offset: 5152)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !162, file: !88, line: 779, baseType: !406, size: 32, offset: 5184)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !162, file: !88, line: 781, baseType: !187, size: 32, offset: 5216)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !162, file: !88, line: 782, baseType: !173, size: 128, offset: 5248)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !162, file: !88, line: 784, baseType: !4520, size: 64, offset: 5376)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4522)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4523, line: 52, size: 768, elements: !4524)
!4523 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4524 = !{!4525, !4526, !4527, !4528, !4529, !4533, !4537, !4538, !4539, !4540, !4544, !4548}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4522, file: !4523, line: 53, baseType: !169, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4522, file: !4523, line: 55, baseType: !309, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4522, file: !4523, line: 56, baseType: !309, size: 64, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4522, file: !4523, line: 58, baseType: !4124, size: 64, offset: 192)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4522, file: !4523, line: 59, baseType: !4530, size: 64, offset: 256)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!257, !4127, !4133}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4522, file: !4523, line: 61, baseType: !4534, size: 64, offset: 320)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{null, !4520}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4522, file: !4523, line: 62, baseType: !4135, size: 64, offset: 384)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4522, file: !4523, line: 64, baseType: !4144, size: 64, offset: 448)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4522, file: !4523, line: 66, baseType: !3963, size: 64, offset: 512)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4522, file: !4523, line: 67, baseType: !4541, size: 64, offset: 576)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!2503, !4127}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4522, file: !4523, line: 69, baseType: !4545, size: 64, offset: 640)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !4127, !3995, !3996}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4522, file: !4523, line: 71, baseType: !4139, size: 64, offset: 704)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !162, file: !88, line: 785, baseType: !309, size: 64, offset: 5440)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !162, file: !88, line: 787, baseType: !4135, size: 64, offset: 5504)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !162, file: !88, line: 788, baseType: !4552, size: 64, offset: 5568)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !88, line: 46, flags: DIFlagFwdDecl)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !162, file: !88, line: 789, baseType: !4555, size: 64, offset: 5632)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !88, line: 48, flags: DIFlagFwdDecl)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !162, file: !88, line: 791, baseType: !4558, size: 64, offset: 5696)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !88, line: 597, size: 128, elements: !4560)
!4560 = !{!4561, !4562, !4563, !4564, !4565}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4559, file: !88, line: 598, baseType: !110, size: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4559, file: !88, line: 599, baseType: !119, size: 32, offset: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4559, file: !88, line: 600, baseType: !124, size: 32, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4559, file: !88, line: 601, baseType: !678, size: 8, offset: 96)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4559, file: !88, line: 602, baseType: !678, size: 8, offset: 104)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !162, file: !88, line: 793, baseType: !129, size: 32, offset: 5760)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !162, file: !88, line: 795, baseType: !678, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !162, file: !88, line: 796, baseType: !678, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !162, file: !88, line: 797, baseType: !678, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !162, file: !88, line: 798, baseType: !678, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !162, file: !88, line: 799, baseType: !678, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !159, file: !147, line: 565, baseType: !4573, size: 64, offset: 5824)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !147, line: 647, size: 8256, elements: !4575)
!4575 = !{!4576, !4577, !4578, !4579, !4580, !4856, !4857, !4859, !4860, !4861, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4895, !4896, !4898, !4899, !4900, !4901, !4902, !4903}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4574, file: !147, line: 648, baseType: !173, size: 128)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4574, file: !147, line: 649, baseType: !4573, size: 64, offset: 128)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4574, file: !147, line: 650, baseType: !173, size: 128, offset: 192)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4574, file: !147, line: 651, baseType: !173, size: 128, offset: 320)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4574, file: !147, line: 652, baseType: !4581, size: 64, offset: 448)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !147, line: 322, size: 16640, elements: !4583)
!4583 = !{!4584, !4585, !4586, !4587, !4588, !4592, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4703, !4704, !4705, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4795, !4796, !4797, !4799, !4800, !4802, !4803, !4804, !4805, !4811, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4582, file: !147, line: 323, baseType: !173, size: 128)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4582, file: !147, line: 324, baseType: !4573, size: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4582, file: !147, line: 325, baseType: !4573, size: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4582, file: !147, line: 327, baseType: !157, size: 64, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4582, file: !147, line: 328, baseType: !4589, size: 64, offset: 320)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4591, line: 131, flags: DIFlagFwdDecl)
!4591 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4582, file: !147, line: 329, baseType: !4593, size: 64, offset: 384)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !147, line: 76, size: 832, elements: !4595)
!4595 = !{!4596, !4597, !4598, !4601, !4602}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4594, file: !147, line: 77, baseType: !4573, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4594, file: !147, line: 78, baseType: !173, size: 128, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4594, file: !147, line: 79, baseType: !4599, size: 64, offset: 192)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !147, line: 79, flags: DIFlagFwdDecl)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4594, file: !147, line: 80, baseType: !219, size: 8, offset: 256)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4594, file: !147, line: 81, baseType: !165, size: 512, offset: 320)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4582, file: !147, line: 331, baseType: !7, size: 32, offset: 448)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4582, file: !147, line: 332, baseType: !227, size: 16, offset: 480)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4582, file: !147, line: 333, baseType: !227, size: 16, offset: 496)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4582, file: !147, line: 334, baseType: !227, size: 16, offset: 512)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4582, file: !147, line: 335, baseType: !227, size: 16, offset: 528)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4582, file: !147, line: 336, baseType: !7, size: 32, offset: 544)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4582, file: !147, line: 337, baseType: !215, size: 8, offset: 576)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4582, file: !147, line: 338, baseType: !215, size: 8, offset: 584)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4582, file: !147, line: 344, baseType: !4612, size: 64, offset: 640)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4614, line: 415, size: 64, elements: !4615)
!4614 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4615 = !{!4616, !4617, !4618}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4613, file: !4614, line: 416, baseType: !215, size: 8)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4613, file: !4614, line: 417, baseType: !215, size: 8, offset: 8)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4613, file: !4614, line: 418, baseType: !406, size: 32, offset: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4582, file: !147, line: 345, baseType: !4581, size: 64, offset: 704)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4582, file: !147, line: 347, baseType: !406, size: 32, offset: 768)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4582, file: !147, line: 348, baseType: !215, size: 8, offset: 800)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4582, file: !147, line: 349, baseType: !215, size: 8, offset: 808)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4582, file: !147, line: 350, baseType: !215, size: 8, offset: 816)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4582, file: !147, line: 351, baseType: !215, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4582, file: !147, line: 352, baseType: !215, size: 8, offset: 832)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4582, file: !147, line: 353, baseType: !215, size: 8, offset: 840)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4582, file: !147, line: 354, baseType: !225, size: 16, offset: 848)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4582, file: !147, line: 355, baseType: !949, size: 64, offset: 896)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4582, file: !147, line: 357, baseType: !4630, size: 64, offset: 960)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !147, line: 918, size: 2368, elements: !4632)
!4632 = !{!4633, !4634, !4635, !4648, !4652, !4656, !4660, !4664, !4665, !4669, !4670, !4674, !4694, !4695, !4696, !4697, !4702}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4631, file: !147, line: 919, baseType: !173, size: 128)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4631, file: !147, line: 920, baseType: !169, size: 64, offset: 128)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4631, file: !147, line: 921, baseType: !4636, size: 64, offset: 192)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4638)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4197, line: 44, size: 320, elements: !4639)
!4639 = !{!4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4638, file: !4197, line: 45, baseType: !407, size: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4638, file: !4197, line: 45, baseType: !407, size: 32, offset: 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4638, file: !4197, line: 46, baseType: !407, size: 32, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4638, file: !4197, line: 46, baseType: !407, size: 32, offset: 96)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4638, file: !4197, line: 47, baseType: !407, size: 32, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4638, file: !4197, line: 47, baseType: !407, size: 32, offset: 160)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4638, file: !4197, line: 48, baseType: !4213, size: 64, offset: 192)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4638, file: !4197, line: 49, baseType: !407, size: 32, offset: 256)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4631, file: !147, line: 922, baseType: !4649, size: 64, offset: 256)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!103, !4581, !4636}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4631, file: !147, line: 923, baseType: !4653, size: 64, offset: 320)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{null, !4581}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4631, file: !147, line: 924, baseType: !4657, size: 64, offset: 384)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!103, !4581, !4224}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4631, file: !147, line: 925, baseType: !4661, size: 64, offset: 448)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!103, !4581}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4631, file: !147, line: 926, baseType: !4653, size: 64, offset: 512)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4631, file: !147, line: 927, baseType: !4666, size: 64, offset: 576)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!103, !4581, !103}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4631, file: !147, line: 928, baseType: !4666, size: 64, offset: 640)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4631, file: !147, line: 929, baseType: !4671, size: 64, offset: 704)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!406, !4581}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4631, file: !147, line: 930, baseType: !4675, size: 64, offset: 768)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4677)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !147, line: 837, size: 448, elements: !4678)
!4678 = !{!4679, !4685, !4689, !4690, !4691, !4692, !4693}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4677, file: !147, line: 839, baseType: !4680, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!4683, !4581, !4684}
!4683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !147, line: 814, baseType: !7)
!4684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !147, line: 196, baseType: !7)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4677, file: !147, line: 843, baseType: !4686, size: 64, offset: 64)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!4683, !4581}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4677, file: !147, line: 846, baseType: !4686, size: 64, offset: 128)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4677, file: !147, line: 849, baseType: !4653, size: 64, offset: 192)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4677, file: !147, line: 850, baseType: !4653, size: 64, offset: 256)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4677, file: !147, line: 853, baseType: !4653, size: 64, offset: 320)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4677, file: !147, line: 856, baseType: !4653, size: 64, offset: 384)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4631, file: !147, line: 931, baseType: !309, size: 64, offset: 832)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4631, file: !147, line: 932, baseType: !309, size: 64, offset: 896)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4631, file: !147, line: 933, baseType: !4185, size: 1152, offset: 960)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4631, file: !147, line: 934, baseType: !4698, size: 192, offset: 2112)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !147, line: 801, size: 192, elements: !4699)
!4699 = !{!4700, !4701}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4698, file: !147, line: 802, baseType: !187, size: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4698, file: !147, line: 803, baseType: !173, size: 128, offset: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4631, file: !147, line: 935, baseType: !678, size: 8, offset: 2304)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4582, file: !147, line: 358, baseType: !410, size: 64, offset: 1024)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4582, file: !147, line: 364, baseType: !4394, size: 128, offset: 1088)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4582, file: !147, line: 366, baseType: !4706, size: 32, offset: 1216)
!4706 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !147, line: 171, baseType: !103)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4582, file: !147, line: 369, baseType: !215, size: 8, offset: 1248)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4582, file: !147, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4582, file: !147, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4582, file: !147, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4582, file: !147, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4582, file: !147, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4582, file: !147, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4582, file: !147, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4582, file: !147, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4582, file: !147, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4582, file: !147, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4582, file: !147, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4582, file: !147, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4582, file: !147, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4582, file: !147, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4582, file: !147, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4582, file: !147, line: 390, baseType: !7, size: 32, offset: 1280)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4582, file: !147, line: 391, baseType: !7, size: 32, offset: 1312)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4582, file: !147, line: 394, baseType: !4726, size: 64, offset: 1344)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !147, line: 316, flags: DIFlagFwdDecl)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4582, file: !147, line: 395, baseType: !225, size: 16, offset: 1408)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4582, file: !147, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4582, file: !147, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4582, file: !147, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4582, file: !147, line: 402, baseType: !4684, size: 32, offset: 1440)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4582, file: !147, line: 403, baseType: !162, size: 5824, offset: 1472)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4582, file: !147, line: 405, baseType: !103, size: 32, offset: 7296)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4582, file: !147, line: 411, baseType: !7, size: 32, offset: 7328)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4582, file: !147, line: 412, baseType: !4737, size: 5632, offset: 7360)
!4737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4738, size: 5632, elements: !4751)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4739, line: 21, size: 512, elements: !4740)
!4739 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4740 = !{!4741, !4743, !4744, !4745, !4746, !4747, !4749, !4750}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4738, file: !4739, line: 22, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !174, line: 164, baseType: !3207)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4738, file: !4739, line: 23, baseType: !4742, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4738, file: !4739, line: 24, baseType: !169, size: 64, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4738, file: !4739, line: 25, baseType: !307, size: 64, offset: 192)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4738, file: !4739, line: 26, baseType: !307, size: 64, offset: 256)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4738, file: !4739, line: 27, baseType: !4748, size: 64, offset: 320)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4738, file: !4739, line: 27, baseType: !4748, size: 64, offset: 384)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4738, file: !4739, line: 27, baseType: !4748, size: 64, offset: 448)
!4751 = !{!4752}
!4752 = !DISubrange(count: 11)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4582, file: !147, line: 413, baseType: !4738, size: 512, offset: 12992)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4582, file: !147, line: 415, baseType: !678, size: 8, offset: 13504)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4582, file: !147, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4582, file: !147, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4582, file: !147, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4582, file: !147, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4582, file: !147, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4582, file: !147, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4582, file: !147, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4582, file: !147, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4582, file: !147, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4582, file: !147, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4582, file: !147, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4582, file: !147, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4582, file: !147, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4582, file: !147, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4582, file: !147, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4582, file: !147, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4582, file: !147, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4582, file: !147, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4582, file: !147, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4582, file: !147, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4582, file: !147, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4582, file: !147, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4582, file: !147, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4582, file: !147, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4582, file: !147, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4582, file: !147, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4582, file: !147, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4582, file: !147, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4582, file: !147, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4582, file: !147, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4582, file: !147, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4582, file: !147, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4582, file: !147, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4582, file: !147, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4582, file: !147, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4582, file: !147, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4582, file: !147, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4582, file: !147, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4582, file: !147, line: 468, baseType: !4794, size: 16, offset: 13552)
!4794 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !147, line: 222, baseType: !227)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4582, file: !147, line: 469, baseType: !207, size: 32, offset: 13568)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4582, file: !147, line: 471, baseType: !187, size: 32, offset: 13600)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4582, file: !147, line: 472, baseType: !4798, size: 512, offset: 13632)
!4798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 512, elements: !2681)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4582, file: !147, line: 473, baseType: !968, size: 64, offset: 14144)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4582, file: !147, line: 474, baseType: !4801, size: 704, offset: 14208)
!4801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 704, elements: !4751)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4582, file: !147, line: 475, baseType: !4801, size: 704, offset: 14912)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4582, file: !147, line: 487, baseType: !157, size: 64, offset: 15616)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4582, file: !147, line: 488, baseType: !556, size: 32, offset: 15680)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4582, file: !147, line: 490, baseType: !4806, size: 320, offset: 15744)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !147, line: 309, size: 320, elements: !4807)
!4807 = !{!4808, !4809, !4810}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4806, file: !147, line: 310, baseType: !598, size: 256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4806, file: !147, line: 311, baseType: !7, size: 32, offset: 256)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4806, file: !147, line: 312, baseType: !215, size: 8, offset: 288)
!4811 = !DIDerivedType(tag: DW_TAG_member, scope: !4582, file: !147, line: 497, baseType: !4812, size: 64, offset: 16064)
!4812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4582, file: !147, line: 497, size: 64, elements: !4813)
!4813 = !{!4814, !4841}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4812, file: !147, line: 498, baseType: !4815, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4614, line: 294, size: 1024, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4840}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4816, file: !4614, line: 295, baseType: !103, size: 32)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4816, file: !4614, line: 296, baseType: !103, size: 32, offset: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4816, file: !4614, line: 297, baseType: !406, size: 32, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4816, file: !4614, line: 298, baseType: !225, size: 16, offset: 96)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4816, file: !4614, line: 299, baseType: !225, size: 16, offset: 112)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4816, file: !4614, line: 300, baseType: !225, size: 16, offset: 128)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4816, file: !4614, line: 301, baseType: !225, size: 16, offset: 144)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4816, file: !4614, line: 302, baseType: !225, size: 16, offset: 160)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4816, file: !4614, line: 303, baseType: !225, size: 16, offset: 176)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4816, file: !4614, line: 304, baseType: !225, size: 16, offset: 192)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4816, file: !4614, line: 305, baseType: !406, size: 32, offset: 224)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4816, file: !4614, line: 306, baseType: !215, size: 8, offset: 256)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4816, file: !4614, line: 307, baseType: !215, size: 8, offset: 264)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4816, file: !4614, line: 308, baseType: !225, size: 16, offset: 272)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4816, file: !4614, line: 309, baseType: !4581, size: 64, offset: 320)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4816, file: !4614, line: 310, baseType: !4581, size: 64, offset: 384)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4816, file: !4614, line: 311, baseType: !406, size: 32, offset: 448)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4816, file: !4614, line: 312, baseType: !215, size: 8, offset: 480)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4816, file: !4614, line: 313, baseType: !225, size: 16, offset: 496)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4816, file: !4614, line: 314, baseType: !225, size: 16, offset: 512)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4816, file: !4614, line: 315, baseType: !4839, size: 384, offset: 576)
!4839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4742, size: 384, elements: !1833)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4816, file: !4614, line: 316, baseType: !678, size: 8, offset: 960)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4812, file: !147, line: 499, baseType: !4581, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4582, file: !147, line: 501, baseType: !225, size: 16, offset: 16128)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4582, file: !147, line: 502, baseType: !215, size: 8, offset: 16144)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4582, file: !147, line: 505, baseType: !225, size: 16, offset: 16160)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4582, file: !147, line: 506, baseType: !406, size: 32, offset: 16192)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4582, file: !147, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4582, file: !147, line: 510, baseType: !225, size: 16, offset: 16240)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4582, file: !147, line: 511, baseType: !225, size: 16, offset: 16256)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4582, file: !147, line: 519, baseType: !225, size: 16, offset: 16272)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4582, file: !147, line: 520, baseType: !3207, size: 64, offset: 16320)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4582, file: !147, line: 521, baseType: !304, size: 64, offset: 16384)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4582, file: !147, line: 526, baseType: !169, size: 64, offset: 16448)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4582, file: !147, line: 528, baseType: !307, size: 64, offset: 16512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4582, file: !147, line: 531, baseType: !4855, size: 56, offset: 16576)
!4855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 56, elements: !719)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4574, file: !147, line: 653, baseType: !173, size: 128, offset: 512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4574, file: !147, line: 655, baseType: !4858, size: 256, offset: 640)
!4858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4748, size: 256, elements: !828)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4574, file: !147, line: 656, baseType: !173, size: 128, offset: 896)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4574, file: !147, line: 657, baseType: !4738, size: 512, offset: 1024)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4574, file: !147, line: 659, baseType: !4862, size: 64, offset: 1536)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !147, line: 773, size: 320, elements: !4864)
!4864 = !{!4865, !4869, !4873, !4877, !4881}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4863, file: !147, line: 774, baseType: !4866, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!103, !4573}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4863, file: !147, line: 775, baseType: !4870, size: 64, offset: 64)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{null, !4573}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4863, file: !147, line: 776, baseType: !4874, size: 64, offset: 128)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!157, !4573, !7, !103}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4863, file: !147, line: 777, baseType: !4878, size: 64, offset: 192)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!103, !4573, !7, !103, !103, !2580}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4863, file: !147, line: 778, baseType: !4882, size: 64, offset: 256)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!103, !4573, !7, !103, !103, !406}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4574, file: !147, line: 660, baseType: !157, size: 64, offset: 1600)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4574, file: !147, line: 661, baseType: !4589, size: 64, offset: 1664)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4574, file: !147, line: 663, baseType: !219, size: 8, offset: 1728)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4574, file: !147, line: 664, baseType: !219, size: 8, offset: 1736)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4574, file: !147, line: 665, baseType: !219, size: 8, offset: 1744)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4574, file: !147, line: 666, baseType: !219, size: 8, offset: 1752)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4574, file: !147, line: 671, baseType: !4892, size: 384, offset: 1760)
!4892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 384, elements: !4893)
!4893 = !{!4894}
!4894 = !DISubrange(count: 48)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4574, file: !147, line: 673, baseType: !227, size: 16, offset: 2144)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4574, file: !147, line: 674, baseType: !4897, size: 16, offset: 2160)
!4897 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !147, line: 255, baseType: !227)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4574, file: !147, line: 675, baseType: !4111, size: 64, offset: 2176)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4574, file: !147, line: 676, baseType: !162, size: 5824, offset: 2240)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4574, file: !147, line: 677, baseType: !323, size: 64, offset: 8064)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4574, file: !147, line: 678, baseType: !323, size: 64, offset: 8128)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4574, file: !147, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4574, file: !147, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !159, file: !147, line: 566, baseType: !4862, size: 64, offset: 5888)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "child_ops", scope: !159, file: !147, line: 567, baseType: !4862, size: 64, offset: 5952)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !159, file: !147, line: 568, baseType: !157, size: 64, offset: 6016)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "busnr", scope: !159, file: !147, line: 569, baseType: !103, size: 32, offset: 6080)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "domain_nr", scope: !159, file: !147, line: 570, baseType: !103, size: 32, offset: 6112)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "windows", scope: !159, file: !147, line: 571, baseType: !173, size: 128, offset: 6144)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ranges", scope: !159, file: !147, line: 572, baseType: !173, size: 128, offset: 6272)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "swizzle_irq", scope: !159, file: !147, line: 573, baseType: !4912, size: 64, offset: 6400)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!215, !4581, !4915}
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "map_irq", scope: !159, file: !147, line: 574, baseType: !4917, size: 64, offset: 6464)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!103, !4920, !215, !215}
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4582)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "release_fn", scope: !159, file: !147, line: 575, baseType: !4923, size: 64, offset: 6528)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{null, !158}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "release_data", scope: !159, file: !147, line: 576, baseType: !157, size: 64, offset: 6592)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_reset_delay", scope: !159, file: !147, line: 577, baseType: !7, size: 1, offset: 6656, flags: DIFlagBitField, extraData: i64 6656)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "no_ext_tags", scope: !159, file: !147, line: 578, baseType: !7, size: 1, offset: 6657, flags: DIFlagBitField, extraData: i64 6656)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "no_inc_mrrs", scope: !159, file: !147, line: 579, baseType: !7, size: 1, offset: 6658, flags: DIFlagBitField, extraData: i64 6656)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "native_aer", scope: !159, file: !147, line: 580, baseType: !7, size: 1, offset: 6659, flags: DIFlagBitField, extraData: i64 6656)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "native_pcie_hotplug", scope: !159, file: !147, line: 581, baseType: !7, size: 1, offset: 6660, flags: DIFlagBitField, extraData: i64 6656)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "native_shpc_hotplug", scope: !159, file: !147, line: 582, baseType: !7, size: 1, offset: 6661, flags: DIFlagBitField, extraData: i64 6656)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "native_pme", scope: !159, file: !147, line: 583, baseType: !7, size: 1, offset: 6662, flags: DIFlagBitField, extraData: i64 6656)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "native_ltr", scope: !159, file: !147, line: 584, baseType: !7, size: 1, offset: 6663, flags: DIFlagBitField, extraData: i64 6656)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "native_dpc", scope: !159, file: !147, line: 585, baseType: !7, size: 1, offset: 6664, flags: DIFlagBitField, extraData: i64 6656)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "native_cxl_error", scope: !159, file: !147, line: 586, baseType: !7, size: 1, offset: 6665, flags: DIFlagBitField, extraData: i64 6656)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_config", scope: !159, file: !147, line: 587, baseType: !7, size: 1, offset: 6666, flags: DIFlagBitField, extraData: i64 6656)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "size_windows", scope: !159, file: !147, line: 588, baseType: !7, size: 1, offset: 6667, flags: DIFlagBitField, extraData: i64 6656)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !159, file: !147, line: 589, baseType: !7, size: 1, offset: 6668, flags: DIFlagBitField, extraData: i64 6656)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "align_resource", scope: !159, file: !147, line: 592, baseType: !4941, size: 64, offset: 6720)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!4742, !4581, !4944, !4742, !4742, !4742}
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4738)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !159, file: !147, line: 597, baseType: !2541, align: 512, offset: 7168)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !177)
!4949 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !174, line: 42, baseType: !307)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !171)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !293)
!4955 = !{!0, !4956, !4958, !4960, !4962}
!4956 = !DIGlobalVariableExpression(var: !4957, expr: !DIExpression())
!4957 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_stop_and_remove_bus_device293", scope: !2, file: !3, line: 121, type: !157, isLocal: true, isDefinition: true)
!4958 = !DIGlobalVariableExpression(var: !4959, expr: !DIExpression())
!4959 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_stop_and_remove_bus_device_locked294", scope: !2, file: !3, line: 129, type: !157, isLocal: true, isDefinition: true)
!4960 = !DIGlobalVariableExpression(var: !4961, expr: !DIExpression())
!4961 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_stop_root_bus295", scope: !2, file: !3, line: 147, type: !157, isLocal: true, isDefinition: true)
!4962 = !DIGlobalVariableExpression(var: !4963, expr: !DIExpression())
!4963 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_remove_root_bus296", scope: !2, file: !3, line: 174, type: !157, isLocal: true, isDefinition: true)
!4964 = !{i32 7, !"Dwarf Version", i32 5}
!4965 = !{i32 2, !"Debug Info Version", i32 3}
!4966 = !{i32 1, !"wchar_size", i32 2}
!4967 = !{i32 8, !"cf-protection-branch", i32 1}
!4968 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4969 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4970 = !{i32 1, !"Code Model", i32 2}
!4971 = !{i32 1, !"override-stack-alignment", i32 8}
!4972 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4973 = distinct !DISubprogram(name: "pci_remove_bus", scope: !3, file: !3, line: 49, type: !4871, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4974)
!4974 = !{!4975}
!4975 = !DILocalVariable(name: "bus", arg: 1, scope: !4973, file: !3, line: 49, type: !4573)
!4976 = !DILocation(line: 49, column: 37, scope: !4973)
!4977 = !DILocation(line: 51, column: 22, scope: !4973)
!4978 = !DILocation(line: 51, column: 2, scope: !4973)
!4979 = !DILocation(line: 53, column: 2, scope: !4973)
!4980 = !DILocation(line: 54, column: 12, scope: !4973)
!4981 = !DILocation(line: 54, column: 17, scope: !4973)
!4982 = !DILocation(line: 54, column: 2, scope: !4973)
!4983 = !DILocation(line: 55, column: 27, scope: !4973)
!4984 = !DILocation(line: 55, column: 2, scope: !4973)
!4985 = !DILocation(line: 56, column: 2, scope: !4973)
!4986 = !DILocation(line: 57, column: 26, scope: !4973)
!4987 = !DILocation(line: 57, column: 2, scope: !4973)
!4988 = !DILocation(line: 59, column: 6, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 59, column: 6)
!4990 = !DILocation(line: 59, column: 11, scope: !4989)
!4991 = !DILocation(line: 59, column: 16, scope: !4989)
!4992 = !DILocation(line: 59, column: 6, scope: !4973)
!4993 = !DILocation(line: 60, column: 3, scope: !4989)
!4994 = !DILocation(line: 60, column: 8, scope: !4989)
!4995 = !DILocation(line: 60, column: 13, scope: !4989)
!4996 = !DILocation(line: 60, column: 24, scope: !4989)
!4997 = !DILocation(line: 62, column: 21, scope: !4973)
!4998 = !DILocation(line: 62, column: 2, scope: !4973)
!4999 = !DILocation(line: 63, column: 21, scope: !4973)
!5000 = !DILocation(line: 63, column: 26, scope: !4973)
!5001 = !DILocation(line: 63, column: 2, scope: !4973)
!5002 = !DILocation(line: 64, column: 1, scope: !4973)
!5003 = !DISubprogram(name: "pci_proc_detach_bus", scope: !4614, file: !4614, line: 146, type: !4867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5004 = !DISubprogram(name: "down_write", scope: !1261, file: !1261, line: 187, type: !5005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{null, !5007}
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!5008 = distinct !DISubprogram(name: "list_del", scope: !5009, file: !5009, line: 227, type: !5010, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5012)
!5009 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5010 = !DISubroutineType(types: !5011)
!5011 = !{null, !177}
!5012 = !{!5013}
!5013 = !DILocalVariable(name: "entry", arg: 1, scope: !5008, file: !5009, line: 227, type: !177)
!5014 = !DILocation(line: 227, column: 47, scope: !5008)
!5015 = !DILocation(line: 229, column: 19, scope: !5008)
!5016 = !DILocation(line: 229, column: 2, scope: !5008)
!5017 = !DILocation(line: 230, column: 2, scope: !5008)
!5018 = !DILocation(line: 230, column: 9, scope: !5008)
!5019 = !DILocation(line: 230, column: 14, scope: !5008)
!5020 = !DILocation(line: 231, column: 2, scope: !5008)
!5021 = !DILocation(line: 231, column: 9, scope: !5008)
!5022 = !DILocation(line: 231, column: 14, scope: !5008)
!5023 = !DILocation(line: 232, column: 1, scope: !5008)
!5024 = !DISubprogram(name: "pci_bus_release_busn_res", scope: !147, file: !147, line: 1120, type: !4871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5025 = !DISubprogram(name: "up_write", scope: !1261, file: !1261, line: 203, type: !5005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5026 = distinct !DISubprogram(name: "pci_remove_legacy_files", scope: !4614, file: !4614, line: 161, type: !4871, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5027)
!5027 = !{!5028}
!5028 = !DILocalVariable(name: "bus", arg: 1, scope: !5026, file: !4614, line: 161, type: !4573)
!5029 = !DILocation(line: 161, column: 60, scope: !5026)
!5030 = !DILocation(line: 161, column: 67, scope: !5026)
!5031 = !DISubprogram(name: "pcibios_remove_bus", scope: !147, file: !147, line: 1090, type: !4871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5032 = !DISubprogram(name: "device_unregister", scope: !88, file: !88, line: 1055, type: !4136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5033 = distinct !DISubprogram(name: "pci_stop_and_remove_bus_device", scope: !3, file: !3, line: 116, type: !4654, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5034)
!5034 = !{!5035}
!5035 = !DILocalVariable(name: "dev", arg: 1, scope: !5033, file: !3, line: 116, type: !4581)
!5036 = !DILocation(line: 116, column: 53, scope: !5033)
!5037 = !DILocation(line: 118, column: 22, scope: !5033)
!5038 = !DILocation(line: 118, column: 2, scope: !5033)
!5039 = !DILocation(line: 119, column: 24, scope: !5033)
!5040 = !DILocation(line: 119, column: 2, scope: !5033)
!5041 = !DILocation(line: 120, column: 1, scope: !5033)
!5042 = distinct !DISubprogram(name: "pci_stop_bus_device", scope: !3, file: !3, line: 67, type: !4654, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5043)
!5043 = !{!5044, !5045, !5046, !5047, !5048, !5053, !5055}
!5044 = !DILocalVariable(name: "dev", arg: 1, scope: !5042, file: !3, line: 67, type: !4581)
!5045 = !DILocalVariable(name: "bus", scope: !5042, file: !3, line: 69, type: !4573)
!5046 = !DILocalVariable(name: "child", scope: !5042, file: !3, line: 70, type: !4581)
!5047 = !DILocalVariable(name: "tmp", scope: !5042, file: !3, line: 70, type: !4581)
!5048 = !DILocalVariable(name: "__mptr", scope: !5049, file: !3, line: 79, type: !157)
!5049 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 79, column: 3)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 79, column: 3)
!5051 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 78, column: 11)
!5052 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 78, column: 6)
!5053 = !DILocalVariable(name: "__mptr", scope: !5054, file: !3, line: 79, type: !157)
!5054 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 79, column: 3)
!5055 = !DILocalVariable(name: "__mptr", scope: !5056, file: !3, line: 79, type: !157)
!5056 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 79, column: 3)
!5057 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 79, column: 3)
!5058 = !DILocation(line: 67, column: 49, scope: !5042)
!5059 = !DILocation(line: 69, column: 2, scope: !5042)
!5060 = !DILocation(line: 69, column: 18, scope: !5042)
!5061 = !DILocation(line: 69, column: 24, scope: !5042)
!5062 = !DILocation(line: 69, column: 29, scope: !5042)
!5063 = !DILocation(line: 70, column: 2, scope: !5042)
!5064 = !DILocation(line: 70, column: 18, scope: !5042)
!5065 = !DILocation(line: 70, column: 26, scope: !5042)
!5066 = !DILocation(line: 78, column: 6, scope: !5052)
!5067 = !DILocation(line: 78, column: 6, scope: !5042)
!5068 = !DILocation(line: 79, column: 3, scope: !5049)
!5069 = !DILocation(line: 79, column: 3, scope: !5050)
!5070 = !DILocation(line: 79, column: 3, scope: !5054)
!5071 = !DILocation(line: 79, column: 3, scope: !5057)
!5072 = !DILocation(line: 81, column: 24, scope: !5057)
!5073 = !DILocation(line: 81, column: 4, scope: !5057)
!5074 = !DILocation(line: 79, column: 3, scope: !5056)
!5075 = distinct !{!5075, !5069, !5076, !5077, !5078}
!5076 = !DILocation(line: 81, column: 29, scope: !5050)
!5077 = !{!"llvm.loop.mustprogress"}
!5078 = !{!"llvm.loop.unroll.disable"}
!5079 = !DILocation(line: 82, column: 2, scope: !5051)
!5080 = !DILocation(line: 84, column: 15, scope: !5042)
!5081 = !DILocation(line: 84, column: 2, scope: !5042)
!5082 = !DILocation(line: 85, column: 1, scope: !5042)
!5083 = distinct !DISubprogram(name: "pci_remove_bus_device", scope: !3, file: !3, line: 87, type: !4654, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5084)
!5084 = !{!5085, !5086, !5087, !5088, !5089, !5094, !5096}
!5085 = !DILocalVariable(name: "dev", arg: 1, scope: !5083, file: !3, line: 87, type: !4581)
!5086 = !DILocalVariable(name: "bus", scope: !5083, file: !3, line: 89, type: !4573)
!5087 = !DILocalVariable(name: "child", scope: !5083, file: !3, line: 90, type: !4581)
!5088 = !DILocalVariable(name: "tmp", scope: !5083, file: !3, line: 90, type: !4581)
!5089 = !DILocalVariable(name: "__mptr", scope: !5090, file: !3, line: 93, type: !157)
!5090 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 93, column: 3)
!5091 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 93, column: 3)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 92, column: 11)
!5093 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 92, column: 6)
!5094 = !DILocalVariable(name: "__mptr", scope: !5095, file: !3, line: 93, type: !157)
!5095 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 93, column: 3)
!5096 = !DILocalVariable(name: "__mptr", scope: !5097, file: !3, line: 93, type: !157)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 93, column: 3)
!5098 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 93, column: 3)
!5099 = !DILocation(line: 87, column: 51, scope: !5083)
!5100 = !DILocation(line: 89, column: 2, scope: !5083)
!5101 = !DILocation(line: 89, column: 18, scope: !5083)
!5102 = !DILocation(line: 89, column: 24, scope: !5083)
!5103 = !DILocation(line: 89, column: 29, scope: !5083)
!5104 = !DILocation(line: 90, column: 2, scope: !5083)
!5105 = !DILocation(line: 90, column: 18, scope: !5083)
!5106 = !DILocation(line: 90, column: 26, scope: !5083)
!5107 = !DILocation(line: 92, column: 6, scope: !5093)
!5108 = !DILocation(line: 92, column: 6, scope: !5083)
!5109 = !DILocation(line: 93, column: 3, scope: !5090)
!5110 = !DILocation(line: 93, column: 3, scope: !5091)
!5111 = !DILocation(line: 93, column: 3, scope: !5095)
!5112 = !DILocation(line: 93, column: 3, scope: !5098)
!5113 = !DILocation(line: 95, column: 26, scope: !5098)
!5114 = !DILocation(line: 95, column: 4, scope: !5098)
!5115 = !DILocation(line: 93, column: 3, scope: !5097)
!5116 = distinct !{!5116, !5110, !5117, !5077, !5078}
!5117 = !DILocation(line: 95, column: 31, scope: !5091)
!5118 = !DILocation(line: 97, column: 18, scope: !5092)
!5119 = !DILocation(line: 97, column: 3, scope: !5092)
!5120 = !DILocation(line: 98, column: 3, scope: !5092)
!5121 = !DILocation(line: 98, column: 8, scope: !5092)
!5122 = !DILocation(line: 98, column: 20, scope: !5092)
!5123 = !DILocation(line: 99, column: 2, scope: !5092)
!5124 = !DILocation(line: 101, column: 18, scope: !5083)
!5125 = !DILocation(line: 101, column: 2, scope: !5083)
!5126 = !DILocation(line: 102, column: 1, scope: !5083)
!5127 = distinct !DISubprogram(name: "pci_stop_and_remove_bus_device_locked", scope: !3, file: !3, line: 123, type: !4654, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5128)
!5128 = !{!5129}
!5129 = !DILocalVariable(name: "dev", arg: 1, scope: !5127, file: !3, line: 123, type: !4581)
!5130 = !DILocation(line: 123, column: 60, scope: !5127)
!5131 = !DILocation(line: 125, column: 2, scope: !5127)
!5132 = !DILocation(line: 126, column: 33, scope: !5127)
!5133 = !DILocation(line: 126, column: 2, scope: !5127)
!5134 = !DILocation(line: 127, column: 2, scope: !5127)
!5135 = !DILocation(line: 128, column: 1, scope: !5127)
!5136 = !DISubprogram(name: "pci_lock_rescan_remove", scope: !147, file: !147, line: 1419, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5137 = !DISubprogram(name: "pci_unlock_rescan_remove", scope: !147, file: !147, line: 1420, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5138 = distinct !DISubprogram(name: "pci_stop_root_bus", scope: !3, file: !3, line: 131, type: !4871, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5139)
!5139 = !{!5140, !5141, !5142, !5143, !5144, !5146, !5149, !5151}
!5140 = !DILocalVariable(name: "bus", arg: 1, scope: !5138, file: !3, line: 131, type: !4573)
!5141 = !DILocalVariable(name: "child", scope: !5138, file: !3, line: 133, type: !4581)
!5142 = !DILocalVariable(name: "tmp", scope: !5138, file: !3, line: 133, type: !4581)
!5143 = !DILocalVariable(name: "host_bridge", scope: !5138, file: !3, line: 134, type: !158)
!5144 = !DILocalVariable(name: "__mptr", scope: !5145, file: !3, line: 139, type: !157)
!5145 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 139, column: 16)
!5146 = !DILocalVariable(name: "__mptr", scope: !5147, file: !3, line: 140, type: !157)
!5147 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 140, column: 2)
!5148 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 140, column: 2)
!5149 = !DILocalVariable(name: "__mptr", scope: !5150, file: !3, line: 140, type: !157)
!5150 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 140, column: 2)
!5151 = !DILocalVariable(name: "__mptr", scope: !5152, file: !3, line: 140, type: !157)
!5152 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 140, column: 2)
!5153 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 140, column: 2)
!5154 = !DILocation(line: 131, column: 40, scope: !5138)
!5155 = !DILocation(line: 133, column: 2, scope: !5138)
!5156 = !DILocation(line: 133, column: 18, scope: !5138)
!5157 = !DILocation(line: 133, column: 26, scope: !5138)
!5158 = !DILocation(line: 134, column: 2, scope: !5138)
!5159 = !DILocation(line: 134, column: 26, scope: !5138)
!5160 = !DILocation(line: 136, column: 23, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 136, column: 6)
!5162 = !DILocation(line: 136, column: 7, scope: !5161)
!5163 = !DILocation(line: 136, column: 6, scope: !5138)
!5164 = !DILocation(line: 137, column: 3, scope: !5161)
!5165 = !DILocation(line: 139, column: 16, scope: !5145)
!5166 = !DILocation(line: 139, column: 16, scope: !5138)
!5167 = !DILocation(line: 139, column: 14, scope: !5138)
!5168 = !DILocation(line: 140, column: 2, scope: !5147)
!5169 = !DILocation(line: 140, column: 2, scope: !5148)
!5170 = !DILocation(line: 140, column: 2, scope: !5150)
!5171 = !DILocation(line: 140, column: 2, scope: !5153)
!5172 = !DILocation(line: 142, column: 23, scope: !5153)
!5173 = !DILocation(line: 142, column: 3, scope: !5153)
!5174 = !DILocation(line: 140, column: 2, scope: !5152)
!5175 = distinct !{!5175, !5169, !5176, !5077, !5078}
!5176 = !DILocation(line: 142, column: 28, scope: !5148)
!5177 = !DILocation(line: 145, column: 25, scope: !5138)
!5178 = !DILocation(line: 145, column: 38, scope: !5138)
!5179 = !DILocation(line: 145, column: 2, scope: !5138)
!5180 = !DILocation(line: 146, column: 1, scope: !5138)
!5181 = distinct !DISubprogram(name: "pci_is_root_bus", scope: !147, file: !147, line: 698, type: !5182, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5184)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!678, !4573}
!5184 = !{!5185}
!5185 = !DILocalVariable(name: "pbus", arg: 1, scope: !5181, file: !147, line: 698, type: !4573)
!5186 = !DILocation(line: 698, column: 52, scope: !5181)
!5187 = !DILocation(line: 700, column: 11, scope: !5181)
!5188 = !DILocation(line: 700, column: 17, scope: !5181)
!5189 = !DILocation(line: 700, column: 9, scope: !5181)
!5190 = !DILocation(line: 700, column: 2, scope: !5181)
!5191 = !DISubprogram(name: "device_release_driver", scope: !88, file: !88, line: 1169, type: !4136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5192 = distinct !DISubprogram(name: "pci_remove_root_bus", scope: !3, file: !3, line: 149, type: !4871, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5193)
!5193 = !{!5194, !5195, !5196, !5197, !5198, !5200, !5203, !5205}
!5194 = !DILocalVariable(name: "bus", arg: 1, scope: !5192, file: !3, line: 149, type: !4573)
!5195 = !DILocalVariable(name: "child", scope: !5192, file: !3, line: 151, type: !4581)
!5196 = !DILocalVariable(name: "tmp", scope: !5192, file: !3, line: 151, type: !4581)
!5197 = !DILocalVariable(name: "host_bridge", scope: !5192, file: !3, line: 152, type: !158)
!5198 = !DILocalVariable(name: "__mptr", scope: !5199, file: !3, line: 157, type: !157)
!5199 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 157, column: 16)
!5200 = !DILocalVariable(name: "__mptr", scope: !5201, file: !3, line: 158, type: !157)
!5201 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 158, column: 2)
!5202 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 158, column: 2)
!5203 = !DILocalVariable(name: "__mptr", scope: !5204, file: !3, line: 158, type: !157)
!5204 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 158, column: 2)
!5205 = !DILocalVariable(name: "__mptr", scope: !5206, file: !3, line: 158, type: !157)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 158, column: 2)
!5207 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 158, column: 2)
!5208 = !DILocation(line: 149, column: 42, scope: !5192)
!5209 = !DILocation(line: 151, column: 2, scope: !5192)
!5210 = !DILocation(line: 151, column: 18, scope: !5192)
!5211 = !DILocation(line: 151, column: 26, scope: !5192)
!5212 = !DILocation(line: 152, column: 2, scope: !5192)
!5213 = !DILocation(line: 152, column: 26, scope: !5192)
!5214 = !DILocation(line: 154, column: 23, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 154, column: 6)
!5216 = !DILocation(line: 154, column: 7, scope: !5215)
!5217 = !DILocation(line: 154, column: 6, scope: !5192)
!5218 = !DILocation(line: 155, column: 3, scope: !5215)
!5219 = !DILocation(line: 157, column: 16, scope: !5199)
!5220 = !DILocation(line: 157, column: 16, scope: !5192)
!5221 = !DILocation(line: 157, column: 14, scope: !5192)
!5222 = !DILocation(line: 158, column: 2, scope: !5201)
!5223 = !DILocation(line: 158, column: 2, scope: !5202)
!5224 = !DILocation(line: 158, column: 2, scope: !5204)
!5225 = !DILocation(line: 158, column: 2, scope: !5207)
!5226 = !DILocation(line: 160, column: 25, scope: !5207)
!5227 = !DILocation(line: 160, column: 3, scope: !5207)
!5228 = !DILocation(line: 158, column: 2, scope: !5206)
!5229 = distinct !{!5229, !5223, !5230, !5077, !5078}
!5230 = !DILocation(line: 160, column: 30, scope: !5202)
!5231 = !DILocation(line: 168, column: 17, scope: !5192)
!5232 = !DILocation(line: 168, column: 2, scope: !5192)
!5233 = !DILocation(line: 169, column: 2, scope: !5192)
!5234 = !DILocation(line: 169, column: 15, scope: !5192)
!5235 = !DILocation(line: 169, column: 19, scope: !5192)
!5236 = !DILocation(line: 172, column: 14, scope: !5192)
!5237 = !DILocation(line: 172, column: 27, scope: !5192)
!5238 = !DILocation(line: 172, column: 2, scope: !5192)
!5239 = !DILocation(line: 173, column: 1, scope: !5192)
!5240 = !DISubprogram(name: "device_del", scope: !88, file: !88, line: 1058, type: !4136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5241 = distinct !DISubprogram(name: "__list_del_entry", scope: !5009, file: !5009, line: 213, type: !5010, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5242)
!5242 = !{!5243}
!5243 = !DILocalVariable(name: "entry", arg: 1, scope: !5241, file: !5009, line: 213, type: !177)
!5244 = !DILocation(line: 213, column: 55, scope: !5241)
!5245 = !DILocation(line: 215, column: 30, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5241, file: !5009, line: 215, column: 6)
!5247 = !DILocation(line: 215, column: 7, scope: !5246)
!5248 = !DILocation(line: 215, column: 6, scope: !5241)
!5249 = !DILocation(line: 216, column: 3, scope: !5246)
!5250 = !DILocation(line: 218, column: 13, scope: !5241)
!5251 = !DILocation(line: 218, column: 20, scope: !5241)
!5252 = !DILocation(line: 218, column: 26, scope: !5241)
!5253 = !DILocation(line: 218, column: 33, scope: !5241)
!5254 = !DILocation(line: 218, column: 2, scope: !5241)
!5255 = !DILocation(line: 219, column: 1, scope: !5241)
!5256 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5009, file: !5009, line: 134, type: !5257, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!678, !177}
!5259 = !{!5260}
!5260 = !DILocalVariable(name: "entry", arg: 1, scope: !5256, file: !5009, line: 134, type: !177)
!5261 = !DILocation(line: 134, column: 61, scope: !5256)
!5262 = !DILocation(line: 136, column: 2, scope: !5256)
!5263 = distinct !DISubprogram(name: "__list_del", scope: !5009, file: !5009, line: 193, type: !5264, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5266)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{null, !177, !177}
!5266 = !{!5267, !5268}
!5267 = !DILocalVariable(name: "prev", arg: 1, scope: !5263, file: !5009, line: 193, type: !177)
!5268 = !DILocalVariable(name: "next", arg: 2, scope: !5263, file: !5009, line: 193, type: !177)
!5269 = !DILocation(line: 193, column: 50, scope: !5263)
!5270 = !DILocation(line: 193, column: 75, scope: !5263)
!5271 = !DILocation(line: 195, column: 15, scope: !5263)
!5272 = !DILocation(line: 195, column: 2, scope: !5263)
!5273 = !DILocation(line: 195, column: 8, scope: !5263)
!5274 = !DILocation(line: 195, column: 13, scope: !5263)
!5275 = !DILocation(line: 196, column: 2, scope: !5263)
!5276 = !DILocation(line: 196, column: 2, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5263, file: !5009, line: 196, column: 2)
!5278 = !DILocation(line: 196, column: 2, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5277, file: !5009, line: 196, column: 2)
!5280 = !DILocation(line: 196, column: 2, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5277, file: !5009, line: 196, column: 2)
!5282 = !DILocation(line: 197, column: 1, scope: !5263)
!5283 = distinct !DISubprogram(name: "pci_stop_dev", scope: !3, file: !3, line: 16, type: !4654, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5284)
!5284 = !{!5285}
!5285 = !DILocalVariable(name: "dev", arg: 1, scope: !5283, file: !3, line: 16, type: !4581)
!5286 = !DILocation(line: 16, column: 42, scope: !5283)
!5287 = !DILocation(line: 18, column: 17, scope: !5283)
!5288 = !DILocation(line: 18, column: 2, scope: !5283)
!5289 = !DILocation(line: 20, column: 23, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 20, column: 6)
!5291 = !DILocation(line: 20, column: 6, scope: !5290)
!5292 = !DILocation(line: 20, column: 6, scope: !5283)
!5293 = !DILocation(line: 22, column: 26, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 20, column: 29)
!5295 = !DILocation(line: 22, column: 31, scope: !5294)
!5296 = !DILocation(line: 22, column: 3, scope: !5294)
!5297 = !DILocation(line: 23, column: 26, scope: !5294)
!5298 = !DILocation(line: 23, column: 3, scope: !5294)
!5299 = !DILocation(line: 24, column: 30, scope: !5294)
!5300 = !DILocation(line: 24, column: 3, scope: !5294)
!5301 = !DILocation(line: 25, column: 22, scope: !5294)
!5302 = !DILocation(line: 25, column: 3, scope: !5294)
!5303 = !DILocation(line: 27, column: 24, scope: !5294)
!5304 = !DILocation(line: 27, column: 3, scope: !5294)
!5305 = !DILocation(line: 28, column: 2, scope: !5294)
!5306 = !DILocation(line: 29, column: 1, scope: !5283)
!5307 = !DISubprogram(name: "pci_pme_active", scope: !147, file: !147, line: 1400, type: !5308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{null, !4581, !678}
!5310 = distinct !DISubprogram(name: "pci_dev_is_added", scope: !4614, file: !4614, line: 380, type: !5311, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5313)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{!678, !4920}
!5313 = !{!5314}
!5314 = !DILocalVariable(name: "dev", arg: 1, scope: !5310, file: !4614, line: 380, type: !4920)
!5315 = !DILocation(line: 380, column: 59, scope: !5310)
!5316 = !DILocation(line: 382, column: 9, scope: !5310)
!5317 = !DILocation(line: 382, column: 2, scope: !5310)
!5318 = !DISubprogram(name: "pci_proc_detach_device", scope: !4614, file: !4614, line: 145, type: !4662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5319 = !DISubprogram(name: "pci_remove_sysfs_dev_files", scope: !4614, file: !4614, line: 35, type: !4654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5320 = distinct !DISubprogram(name: "of_pci_remove_node", scope: !4614, file: !4614, line: 691, type: !4654, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5321)
!5321 = !{!5322}
!5322 = !DILocalVariable(name: "pdev", arg: 1, scope: !5320, file: !4614, line: 691, type: !4581)
!5323 = !DILocation(line: 691, column: 55, scope: !5320)
!5324 = !DILocation(line: 691, column: 63, scope: !5320)
!5325 = distinct !DISubprogram(name: "pci_dev_assign_added", scope: !4614, file: !4614, line: 375, type: !5308, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5326)
!5326 = !{!5327, !5328}
!5327 = !DILocalVariable(name: "dev", arg: 1, scope: !5325, file: !4614, line: 375, type: !4581)
!5328 = !DILocalVariable(name: "added", arg: 2, scope: !5325, file: !4614, line: 375, type: !678)
!5329 = !DILocation(line: 375, column: 57, scope: !5325)
!5330 = !DILocation(line: 375, column: 67, scope: !5325)
!5331 = !DILocation(line: 377, column: 29, scope: !5325)
!5332 = !DILocation(line: 377, column: 34, scope: !5325)
!5333 = !DILocation(line: 377, column: 46, scope: !5325)
!5334 = !{i8 0, i8 2}
!5335 = !DILocation(line: 377, column: 2, scope: !5325)
!5336 = !DILocation(line: 378, column: 1, scope: !5325)
!5337 = distinct !DISubprogram(name: "const_test_bit", scope: !5338, file: !5338, line: 166, type: !5339, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5344)
!5338 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!678, !307, !5341}
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5343)
!5343 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !307)
!5344 = !{!5345, !5346, !5347, !5348, !5349}
!5345 = !DILocalVariable(name: "nr", arg: 1, scope: !5337, file: !5338, line: 166, type: !307)
!5346 = !DILocalVariable(name: "addr", arg: 2, scope: !5337, file: !5338, line: 166, type: !5341)
!5347 = !DILocalVariable(name: "p", scope: !5337, file: !5338, line: 168, type: !4950)
!5348 = !DILocalVariable(name: "mask", scope: !5337, file: !5338, line: 169, type: !307)
!5349 = !DILocalVariable(name: "val", scope: !5337, file: !5338, line: 170, type: !307)
!5350 = !DILocation(line: 166, column: 30, scope: !5337)
!5351 = !DILocation(line: 166, column: 64, scope: !5337)
!5352 = !DILocation(line: 168, column: 2, scope: !5337)
!5353 = !DILocation(line: 168, column: 23, scope: !5337)
!5354 = !DILocation(line: 168, column: 50, scope: !5337)
!5355 = !DILocation(line: 168, column: 57, scope: !5337)
!5356 = !DILocation(line: 168, column: 55, scope: !5337)
!5357 = !DILocation(line: 169, column: 2, scope: !5337)
!5358 = !DILocation(line: 169, column: 16, scope: !5337)
!5359 = !DILocation(line: 169, column: 23, scope: !5337)
!5360 = !DILocation(line: 170, column: 2, scope: !5337)
!5361 = !DILocation(line: 170, column: 16, scope: !5337)
!5362 = !DILocation(line: 170, column: 23, scope: !5337)
!5363 = !DILocation(line: 170, column: 22, scope: !5337)
!5364 = !DILocation(line: 172, column: 12, scope: !5337)
!5365 = !DILocation(line: 172, column: 18, scope: !5337)
!5366 = !DILocation(line: 172, column: 16, scope: !5337)
!5367 = !DILocation(line: 172, column: 10, scope: !5337)
!5368 = !DILocation(line: 172, column: 9, scope: !5337)
!5369 = !DILocation(line: 173, column: 1, scope: !5337)
!5370 = !DILocation(line: 172, column: 2, scope: !5337)
!5371 = distinct !DISubprogram(name: "_test_bit", scope: !5372, file: !5372, line: 139, type: !5339, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5373)
!5372 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5373 = !{!5374, !5375}
!5374 = !DILocalVariable(name: "nr", arg: 1, scope: !5371, file: !5372, line: 139, type: !307)
!5375 = !DILocalVariable(name: "addr", arg: 2, scope: !5371, file: !5372, line: 139, type: !5341)
!5376 = !DILocation(line: 139, column: 25, scope: !5371)
!5377 = !DILocation(line: 139, column: 59, scope: !5371)
!5378 = !DILocation(line: 141, column: 25, scope: !5371)
!5379 = !DILocation(line: 141, column: 32, scope: !5371)
!5380 = !DILocation(line: 141, column: 30, scope: !5371)
!5381 = !DILocation(line: 141, column: 2, scope: !5371)
!5382 = !DILocation(line: 142, column: 23, scope: !5371)
!5383 = !DILocation(line: 142, column: 27, scope: !5371)
!5384 = !DILocation(line: 142, column: 9, scope: !5371)
!5385 = !DILocation(line: 142, column: 2, scope: !5371)
!5386 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5387, file: !5387, line: 66, type: !5388, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5393)
!5387 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5388 = !DISubroutineType(types: !5389)
!5389 = !{null, !5390, !304}
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5392)
!5392 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5393 = !{!5394, !5395}
!5394 = !DILocalVariable(name: "v", arg: 1, scope: !5386, file: !5387, line: 66, type: !5390)
!5395 = !DILocalVariable(name: "size", arg: 2, scope: !5386, file: !5387, line: 66, type: !304)
!5396 = !DILocation(line: 66, column: 73, scope: !5386)
!5397 = !DILocation(line: 66, column: 83, scope: !5386)
!5398 = !DILocation(line: 68, column: 19, scope: !5386)
!5399 = !DILocation(line: 68, column: 22, scope: !5386)
!5400 = !DILocation(line: 68, column: 2, scope: !5386)
!5401 = !DILocation(line: 69, column: 2, scope: !5386)
!5402 = !DILocation(line: 70, column: 1, scope: !5386)
!5403 = distinct !DISubprogram(name: "arch_test_bit", scope: !5404, file: !5404, line: 237, type: !5339, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5405)
!5404 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5405 = !{!5406, !5407}
!5406 = !DILocalVariable(name: "nr", arg: 1, scope: !5403, file: !5404, line: 237, type: !307)
!5407 = !DILocalVariable(name: "addr", arg: 2, scope: !5403, file: !5404, line: 237, type: !5341)
!5408 = !DILocation(line: 237, column: 29, scope: !5403)
!5409 = !DILocation(line: 237, column: 63, scope: !5403)
!5410 = !DILocation(line: 239, column: 30, scope: !5403)
!5411 = !DILocation(line: 239, column: 9, scope: !5403)
!5412 = !DILocation(line: 239, column: 54, scope: !5403)
!5413 = !DILocation(line: 239, column: 58, scope: !5403)
!5414 = !DILocation(line: 239, column: 36, scope: !5403)
!5415 = !DILocation(line: 240, column: 26, scope: !5403)
!5416 = !DILocation(line: 240, column: 30, scope: !5403)
!5417 = !DILocation(line: 240, column: 8, scope: !5403)
!5418 = !DILocation(line: 239, column: 2, scope: !5403)
!5419 = distinct !DISubprogram(name: "kasan_check_read", scope: !5420, file: !5420, line: 40, type: !5421, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5423)
!5420 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!678, !5390, !7}
!5423 = !{!5424, !5425}
!5424 = !DILocalVariable(name: "p", arg: 1, scope: !5419, file: !5420, line: 40, type: !5390)
!5425 = !DILocalVariable(name: "size", arg: 2, scope: !5419, file: !5420, line: 40, type: !7)
!5426 = !DILocation(line: 40, column: 58, scope: !5419)
!5427 = !DILocation(line: 40, column: 74, scope: !5419)
!5428 = !DILocation(line: 42, column: 2, scope: !5419)
!5429 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5430, file: !5430, line: 229, type: !5431, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5433)
!5430 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5431 = !DISubroutineType(types: !5432)
!5432 = !{null, !5390, !304, !103}
!5433 = !{!5434, !5435, !5436}
!5434 = !DILocalVariable(name: "ptr", arg: 1, scope: !5429, file: !5430, line: 229, type: !5390)
!5435 = !DILocalVariable(name: "size", arg: 2, scope: !5429, file: !5430, line: 229, type: !304)
!5436 = !DILocalVariable(name: "type", arg: 3, scope: !5429, file: !5430, line: 230, type: !103)
!5437 = !DILocation(line: 229, column: 60, scope: !5429)
!5438 = !DILocation(line: 229, column: 72, scope: !5429)
!5439 = !DILocation(line: 230, column: 15, scope: !5429)
!5440 = !DILocation(line: 230, column: 23, scope: !5429)
!5441 = distinct !DISubprogram(name: "constant_test_bit", scope: !5404, file: !5404, line: 204, type: !5442, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5444)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!678, !293, !5341}
!5444 = !{!5445, !5446}
!5445 = !DILocalVariable(name: "nr", arg: 1, scope: !5441, file: !5404, line: 204, type: !293)
!5446 = !DILocalVariable(name: "addr", arg: 2, scope: !5441, file: !5404, line: 204, type: !5341)
!5447 = !DILocation(line: 204, column: 52, scope: !5441)
!5448 = !DILocation(line: 204, column: 86, scope: !5441)
!5449 = !DILocation(line: 206, column: 19, scope: !5441)
!5450 = !DILocation(line: 206, column: 22, scope: !5441)
!5451 = !DILocation(line: 206, column: 15, scope: !5441)
!5452 = !DILocation(line: 207, column: 4, scope: !5441)
!5453 = !DILocation(line: 207, column: 9, scope: !5441)
!5454 = !DILocation(line: 207, column: 12, scope: !5441)
!5455 = !DILocation(line: 206, column: 44, scope: !5441)
!5456 = !DILocation(line: 207, column: 37, scope: !5441)
!5457 = !DILocation(line: 206, column: 2, scope: !5441)
!5458 = distinct !DISubprogram(name: "variable_test_bit", scope: !5404, file: !5404, line: 224, type: !5442, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5459)
!5459 = !{!5460, !5461, !5462}
!5460 = !DILocalVariable(name: "nr", arg: 1, scope: !5458, file: !5404, line: 224, type: !293)
!5461 = !DILocalVariable(name: "addr", arg: 2, scope: !5458, file: !5404, line: 224, type: !5341)
!5462 = !DILocalVariable(name: "oldbit", scope: !5458, file: !5404, line: 226, type: !678)
!5463 = !DILocation(line: 224, column: 52, scope: !5458)
!5464 = !DILocation(line: 224, column: 86, scope: !5458)
!5465 = !DILocation(line: 226, column: 2, scope: !5458)
!5466 = !DILocation(line: 226, column: 7, scope: !5458)
!5467 = !DILocation(line: 231, column: 33, scope: !5458)
!5468 = !DILocation(line: 231, column: 46, scope: !5458)
!5469 = !DILocation(line: 228, column: 2, scope: !5458)
!5470 = !{i64 2148248521, i64 2148248595}
!5471 = !DILocation(line: 233, column: 9, scope: !5458)
!5472 = !DILocation(line: 234, column: 1, scope: !5458)
!5473 = !DILocation(line: 233, column: 2, scope: !5458)
!5474 = distinct !DISubprogram(name: "assign_bit", scope: !5475, file: !5475, line: 276, type: !5476, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5479)
!5475 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!5476 = !DISubroutineType(types: !5477)
!5477 = !{null, !293, !5478, !678}
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5479 = !{!5480, !5481, !5482}
!5480 = !DILocalVariable(name: "nr", arg: 1, scope: !5474, file: !5475, line: 276, type: !293)
!5481 = !DILocalVariable(name: "addr", arg: 2, scope: !5474, file: !5475, line: 276, type: !5478)
!5482 = !DILocalVariable(name: "value", arg: 3, scope: !5474, file: !5475, line: 277, type: !678)
!5483 = !DILocation(line: 276, column: 45, scope: !5474)
!5484 = !DILocation(line: 276, column: 73, scope: !5474)
!5485 = !DILocation(line: 277, column: 17, scope: !5474)
!5486 = !DILocation(line: 279, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5474, file: !5475, line: 279, column: 6)
!5488 = !DILocation(line: 279, column: 6, scope: !5474)
!5489 = !DILocation(line: 280, column: 11, scope: !5487)
!5490 = !DILocation(line: 280, column: 15, scope: !5487)
!5491 = !DILocation(line: 280, column: 3, scope: !5487)
!5492 = !DILocation(line: 282, column: 13, scope: !5487)
!5493 = !DILocation(line: 282, column: 17, scope: !5487)
!5494 = !DILocation(line: 282, column: 3, scope: !5487)
!5495 = !DILocation(line: 283, column: 1, scope: !5474)
!5496 = distinct !DISubprogram(name: "set_bit", scope: !5497, file: !5497, line: 26, type: !5498, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5500)
!5497 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5498 = !DISubroutineType(types: !5499)
!5499 = !{null, !293, !5478}
!5500 = !{!5501, !5502}
!5501 = !DILocalVariable(name: "nr", arg: 1, scope: !5496, file: !5497, line: 26, type: !293)
!5502 = !DILocalVariable(name: "addr", arg: 2, scope: !5496, file: !5497, line: 26, type: !5478)
!5503 = !DILocation(line: 26, column: 42, scope: !5496)
!5504 = !DILocation(line: 26, column: 70, scope: !5496)
!5505 = !DILocation(line: 28, column: 26, scope: !5496)
!5506 = !DILocation(line: 28, column: 33, scope: !5496)
!5507 = !DILocation(line: 28, column: 31, scope: !5496)
!5508 = !DILocation(line: 28, column: 2, scope: !5496)
!5509 = !DILocation(line: 29, column: 15, scope: !5496)
!5510 = !DILocation(line: 29, column: 19, scope: !5496)
!5511 = !DILocation(line: 29, column: 2, scope: !5496)
!5512 = !DILocation(line: 30, column: 1, scope: !5496)
!5513 = distinct !DISubprogram(name: "clear_bit", scope: !5497, file: !5497, line: 39, type: !5498, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5514)
!5514 = !{!5515, !5516}
!5515 = !DILocalVariable(name: "nr", arg: 1, scope: !5513, file: !5497, line: 39, type: !293)
!5516 = !DILocalVariable(name: "addr", arg: 2, scope: !5513, file: !5497, line: 39, type: !5478)
!5517 = !DILocation(line: 39, column: 44, scope: !5513)
!5518 = !DILocation(line: 39, column: 72, scope: !5513)
!5519 = !DILocation(line: 41, column: 26, scope: !5513)
!5520 = !DILocation(line: 41, column: 33, scope: !5513)
!5521 = !DILocation(line: 41, column: 31, scope: !5513)
!5522 = !DILocation(line: 41, column: 2, scope: !5513)
!5523 = !DILocation(line: 42, column: 17, scope: !5513)
!5524 = !DILocation(line: 42, column: 21, scope: !5513)
!5525 = !DILocation(line: 42, column: 2, scope: !5513)
!5526 = !DILocation(line: 43, column: 1, scope: !5513)
!5527 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5387, file: !5387, line: 80, type: !5388, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5528)
!5528 = !{!5529, !5530}
!5529 = !DILocalVariable(name: "v", arg: 1, scope: !5527, file: !5387, line: 80, type: !5390)
!5530 = !DILocalVariable(name: "size", arg: 2, scope: !5527, file: !5387, line: 80, type: !304)
!5531 = !DILocation(line: 80, column: 74, scope: !5527)
!5532 = !DILocation(line: 80, column: 84, scope: !5527)
!5533 = !DILocation(line: 82, column: 20, scope: !5527)
!5534 = !DILocation(line: 82, column: 23, scope: !5527)
!5535 = !DILocation(line: 82, column: 2, scope: !5527)
!5536 = !DILocation(line: 83, column: 2, scope: !5527)
!5537 = !DILocation(line: 84, column: 1, scope: !5527)
!5538 = distinct !DISubprogram(name: "arch_set_bit", scope: !5404, file: !5404, line: 52, type: !5498, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5539)
!5539 = !{!5540, !5541}
!5540 = !DILocalVariable(name: "nr", arg: 1, scope: !5538, file: !5404, line: 52, type: !293)
!5541 = !DILocalVariable(name: "addr", arg: 2, scope: !5538, file: !5404, line: 52, type: !5478)
!5542 = !DILocation(line: 52, column: 19, scope: !5538)
!5543 = !DILocation(line: 52, column: 47, scope: !5538)
!5544 = !DILocation(line: 54, column: 27, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5538, file: !5404, line: 54, column: 6)
!5546 = !DILocation(line: 54, column: 6, scope: !5545)
!5547 = !DILocation(line: 54, column: 6, scope: !5538)
!5548 = !DILocation(line: 56, column: 6, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5545, file: !5404, line: 54, column: 32)
!5550 = !DILocation(line: 57, column: 12, scope: !5549)
!5551 = !DILocation(line: 55, column: 3, scope: !5549)
!5552 = !{i64 2148234909, i64 2148234948, i64 2148234969, i64 2148235006, i64 2148235029, i64 2148234899}
!5553 = !DILocation(line: 59, column: 2, scope: !5549)
!5554 = !DILocation(line: 61, column: 8, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5545, file: !5404, line: 59, column: 9)
!5556 = !DILocation(line: 61, column: 32, scope: !5555)
!5557 = !DILocation(line: 60, column: 3, scope: !5555)
!5558 = !{i64 2148235194, i64 2148235233, i64 2148235254, i64 2148235291, i64 2148235314, i64 2148235184}
!5559 = !DILocation(line: 63, column: 1, scope: !5538)
!5560 = distinct !DISubprogram(name: "kasan_check_write", scope: !5420, file: !5420, line: 44, type: !5421, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5561)
!5561 = !{!5562, !5563}
!5562 = !DILocalVariable(name: "p", arg: 1, scope: !5560, file: !5420, line: 44, type: !5390)
!5563 = !DILocalVariable(name: "size", arg: 2, scope: !5560, file: !5420, line: 44, type: !7)
!5564 = !DILocation(line: 44, column: 59, scope: !5560)
!5565 = !DILocation(line: 44, column: 75, scope: !5560)
!5566 = !DILocation(line: 46, column: 2, scope: !5560)
!5567 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5404, file: !5404, line: 72, type: !5498, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5568)
!5568 = !{!5569, !5570}
!5569 = !DILocalVariable(name: "nr", arg: 1, scope: !5567, file: !5404, line: 72, type: !293)
!5570 = !DILocalVariable(name: "addr", arg: 2, scope: !5567, file: !5404, line: 72, type: !5478)
!5571 = !DILocation(line: 72, column: 21, scope: !5567)
!5572 = !DILocation(line: 72, column: 49, scope: !5567)
!5573 = !DILocation(line: 74, column: 27, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5567, file: !5404, line: 74, column: 6)
!5575 = !DILocation(line: 74, column: 6, scope: !5574)
!5576 = !DILocation(line: 74, column: 6, scope: !5567)
!5577 = !DILocation(line: 76, column: 6, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5574, file: !5404, line: 74, column: 32)
!5579 = !DILocation(line: 77, column: 13, scope: !5578)
!5580 = !DILocation(line: 77, column: 12, scope: !5578)
!5581 = !DILocation(line: 75, column: 3, scope: !5578)
!5582 = !{i64 2148236197, i64 2148236236, i64 2148236257, i64 2148236294, i64 2148236317, i64 2148236187}
!5583 = !DILocation(line: 78, column: 2, scope: !5578)
!5584 = !DILocation(line: 80, column: 8, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5574, file: !5404, line: 78, column: 9)
!5586 = !DILocation(line: 80, column: 32, scope: !5585)
!5587 = !DILocation(line: 79, column: 3, scope: !5585)
!5588 = !{i64 2148236482, i64 2148236521, i64 2148236542, i64 2148236579, i64 2148236602, i64 2148236472}
!5589 = !DILocation(line: 82, column: 1, scope: !5567)
!5590 = distinct !DISubprogram(name: "pci_destroy_dev", scope: !3, file: !3, line: 31, type: !4654, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5591)
!5591 = !{!5592}
!5592 = !DILocalVariable(name: "dev", arg: 1, scope: !5590, file: !3, line: 31, type: !4581)
!5593 = !DILocation(line: 31, column: 45, scope: !5590)
!5594 = !DILocation(line: 33, column: 7, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 33, column: 6)
!5596 = !DILocation(line: 33, column: 12, scope: !5595)
!5597 = !DILocation(line: 33, column: 16, scope: !5595)
!5598 = !DILocation(line: 33, column: 21, scope: !5595)
!5599 = !DILocation(line: 33, column: 6, scope: !5590)
!5600 = !DILocation(line: 34, column: 3, scope: !5595)
!5601 = !DILocation(line: 36, column: 14, scope: !5590)
!5602 = !DILocation(line: 36, column: 19, scope: !5590)
!5603 = !DILocation(line: 36, column: 2, scope: !5590)
!5604 = !DILocation(line: 38, column: 2, scope: !5590)
!5605 = !DILocation(line: 39, column: 12, scope: !5590)
!5606 = !DILocation(line: 39, column: 17, scope: !5590)
!5607 = !DILocation(line: 39, column: 2, scope: !5590)
!5608 = !DILocation(line: 40, column: 2, scope: !5590)
!5609 = !DILocation(line: 42, column: 18, scope: !5590)
!5610 = !DILocation(line: 42, column: 2, scope: !5590)
!5611 = !DILocation(line: 43, column: 28, scope: !5590)
!5612 = !DILocation(line: 43, column: 2, scope: !5590)
!5613 = !DILocation(line: 44, column: 23, scope: !5590)
!5614 = !DILocation(line: 44, column: 2, scope: !5590)
!5615 = !DILocation(line: 45, column: 21, scope: !5590)
!5616 = !DILocation(line: 45, column: 2, scope: !5590)
!5617 = !DILocation(line: 46, column: 14, scope: !5590)
!5618 = !DILocation(line: 46, column: 19, scope: !5590)
!5619 = !DILocation(line: 46, column: 2, scope: !5590)
!5620 = !DILocation(line: 47, column: 1, scope: !5590)
!5621 = distinct !DISubprogram(name: "pci_doe_destroy", scope: !4614, file: !4614, line: 325, type: !4654, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5622)
!5622 = !{!5623}
!5623 = !DILocalVariable(name: "pdev", arg: 1, scope: !5621, file: !4614, line: 325, type: !4581)
!5624 = !DILocation(line: 325, column: 52, scope: !5621)
!5625 = !DILocation(line: 325, column: 60, scope: !5621)
!5626 = !DISubprogram(name: "pcie_aspm_exit_link_state", scope: !4614, file: !4614, line: 567, type: !4654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5627 = !DISubprogram(name: "pci_bridge_d3_update", scope: !4614, file: !4614, line: 100, type: !4654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5628 = distinct !DISubprogram(name: "pci_free_resources", scope: !3, file: !3, line: 6, type: !4654, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5629)
!5629 = !{!5630, !5631, !5632}
!5630 = !DILocalVariable(name: "dev", arg: 1, scope: !5628, file: !3, line: 6, type: !4581)
!5631 = !DILocalVariable(name: "res", scope: !5628, file: !3, line: 8, type: !4748)
!5632 = !DILocalVariable(name: "__b", scope: !5633, file: !3, line: 10, type: !7)
!5633 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 10, column: 2)
!5634 = !DILocation(line: 6, column: 48, scope: !5628)
!5635 = !DILocation(line: 8, column: 2, scope: !5628)
!5636 = !DILocation(line: 8, column: 19, scope: !5628)
!5637 = !DILocation(line: 10, column: 2, scope: !5633)
!5638 = !DILocation(line: 10, column: 2, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 10, column: 2)
!5640 = !DILocation(line: 0, scope: !5639)
!5641 = !DILocation(line: 11, column: 7, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 11, column: 7)
!5643 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 10, column: 38)
!5644 = !DILocation(line: 11, column: 12, scope: !5642)
!5645 = !DILocation(line: 11, column: 7, scope: !5643)
!5646 = !DILocation(line: 12, column: 21, scope: !5642)
!5647 = !DILocation(line: 12, column: 4, scope: !5642)
!5648 = !DILocation(line: 13, column: 2, scope: !5643)
!5649 = distinct !{!5649, !5637, !5650, !5077, !5078}
!5650 = !DILocation(line: 13, column: 2, scope: !5633)
!5651 = !DILocation(line: 14, column: 1, scope: !5628)
!5652 = !DISubprogram(name: "put_device", scope: !88, file: !88, line: 1231, type: !4136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5653 = !DISubprogram(name: "release_resource", scope: !4739, file: !4739, line: 197, type: !5654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!103, !4748}
