; ModuleID = 'drivers/pci/bus.c'
source_filename = "drivers/pci/bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_add_resource_offset: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_add_resource_offset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_add_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_add_resource ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_free_resource_list: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_free_resource_list ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_resource_n: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_resource_n ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_request_pci_bus_resources: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_request_pci_bus_resources ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_alloc_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_alloc_resource ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_add_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_add_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_bus_add_devices: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_bus_add_devices ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_walk_bus: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_walk_bus ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_walk_bus_locked: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_walk_bus_locked ; .previous"

%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.pci_bus_region = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.resource_entry = type { %struct.list_head, ptr, i64, %struct.resource }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
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
%struct.pci_bus_resource = type { %struct.list_head, ptr, i32 }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }

@.str = private unnamed_addr constant [41 x i8] c"\013PCI: can't add host bridge window %pR\0A\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_pci_add_resource_offset292 = internal global ptr @pci_add_resource_offset, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_pci_add_resource293 = internal global ptr @pci_add_resource, section ".discard.addressable", align 8, !dbg !4965
@__UNIQUE_ID___addressable_pci_free_resource_list294 = internal global ptr @pci_free_resource_list, section ".discard.addressable", align 8, !dbg !4967
@.str.1 = private unnamed_addr constant [24 x i8] c"can't add %pR resource\0A\00", align 1, !dbg !4969
@__UNIQUE_ID___addressable_pci_bus_resource_n295 = internal global ptr @pci_bus_resource_n, section ".discard.addressable", align 8, !dbg !4974
@ioport_resource = external dso_local global %struct.resource, align 8
@iomem_resource = external dso_local global %struct.resource, align 8
@__UNIQUE_ID___addressable_devm_request_pci_bus_resources296 = internal global ptr @devm_request_pci_bus_resources, section ".discard.addressable", align 8, !dbg !4976
@pci_high = internal global %struct.pci_bus_region { i64 4294967296, i64 -1 }, align 8, !dbg !5001
@pci_64_bit = internal global %struct.pci_bus_region { i64 0, i64 -1 }, align 8, !dbg !5007
@pci_32_bit = internal global %struct.pci_bus_region { i64 0, i64 4294967295 }, align 8, !dbg !5009
@__UNIQUE_ID___addressable_pci_bus_alloc_resource297 = internal global ptr @pci_bus_alloc_resource, section ".discard.addressable", align 8, !dbg !4978
@.str.2 = private unnamed_addr constant [20 x i8] c"%pR clipped to %pR\0A\00", align 1, !dbg !4980
@.str.3 = private unnamed_addr constant [27 x i8] c"device attach failed (%d)\0A\00", align 1, !dbg !4983
@__UNIQUE_ID___addressable_pci_bus_add_device302 = internal global ptr @pci_bus_add_device, section ".discard.addressable", align 8, !dbg !4988
@__UNIQUE_ID___addressable_pci_bus_add_devices303 = internal global ptr @pci_bus_add_devices, section ".discard.addressable", align 8, !dbg !4990
@__UNIQUE_ID___addressable_pci_walk_bus304 = internal global ptr @pci_walk_bus, section ".discard.addressable", align 8, !dbg !4992
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 8
@__UNIQUE_ID___addressable_pci_walk_bus_locked305 = internal global ptr @pci_walk_bus_locked, section ".discard.addressable", align 8, !dbg !4994
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4996
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable_pci_add_resource_offset292, ptr @__UNIQUE_ID___addressable_pci_add_resource293, ptr @__UNIQUE_ID___addressable_pci_free_resource_list294, ptr @__UNIQUE_ID___addressable_pci_bus_resource_n295, ptr @__UNIQUE_ID___addressable_devm_request_pci_bus_resources296, ptr @__UNIQUE_ID___addressable_pci_bus_alloc_resource297, ptr @__UNIQUE_ID___addressable_pci_bus_add_device302, ptr @__UNIQUE_ID___addressable_pci_bus_add_devices303, ptr @__UNIQUE_ID___addressable_pci_walk_bus304, ptr @__UNIQUE_ID___addressable_pci_walk_bus_locked305], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_add_resource_offset(ptr noundef %resources, ptr noundef %res, i64 noundef %offset) #0 align 16 !dbg !5020 {
entry:
  %resources.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %resources, ptr %resources.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resources.addr, metadata !5024, metadata !DIExpression()), !dbg !5028
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5025, metadata !DIExpression()), !dbg !5029
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5026, metadata !DIExpression()), !dbg !5030
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !5031
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5027, metadata !DIExpression()), !dbg !5032
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5033
  %call = call ptr @resource_list_create_entry(ptr noundef %0, i64 noundef 0) #17, !dbg !5034
  store ptr %call, ptr %entry1, align 8, !dbg !5035
  %1 = load ptr, ptr %entry1, align 8, !dbg !5036
  %tobool = icmp ne ptr %1, null, !dbg !5036
  br i1 %tobool, label %if.end, label %if.then, !dbg !5038

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5039

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5042

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5042

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5039
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %2) #18, !dbg !5039
  store i32 %call2, ptr %tmp, align 4, !dbg !5042
  %3 = load i32, ptr %tmp, align 4, !dbg !5039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5044

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5045
  %5 = load ptr, ptr %entry1, align 8, !dbg !5046
  %offset3 = getelementptr inbounds %struct.resource_entry, ptr %5, i32 0, i32 2, !dbg !5047
  store i64 %4, ptr %offset3, align 8, !dbg !5048
  %6 = load ptr, ptr %entry1, align 8, !dbg !5049
  %7 = load ptr, ptr %resources.addr, align 8, !dbg !5050
  call void @resource_list_add_tail(ptr noundef %6, ptr noundef %7) #17, !dbg !5051
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5052
  br label %cleanup, !dbg !5052

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !5052
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5052

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5053 dso_local ptr @resource_list_create_entry(ptr noundef, i64 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5056 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @resource_list_add_tail(ptr noundef %entry1, ptr noundef %head) #5 align 16 !dbg !5060 {
entry:
  %entry.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5064, metadata !DIExpression()), !dbg !5066
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5065, metadata !DIExpression()), !dbg !5067
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5068
  %node = getelementptr inbounds %struct.resource_entry, ptr %0, i32 0, i32 0, !dbg !5069
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5070
  call void @list_add_tail(ptr noundef %node, ptr noundef %1) #17, !dbg !5071
  ret void, !dbg !5072
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_add_resource(ptr noundef %resources, ptr noundef %res) #0 align 16 !dbg !5073 {
entry:
  %resources.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %resources, ptr %resources.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resources.addr, metadata !5077, metadata !DIExpression()), !dbg !5079
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5078, metadata !DIExpression()), !dbg !5080
  %0 = load ptr, ptr %resources.addr, align 8, !dbg !5081
  %1 = load ptr, ptr %res.addr, align 8, !dbg !5082
  call void @pci_add_resource_offset(ptr noundef %0, ptr noundef %1, i64 noundef 0) #17, !dbg !5083
  ret void, !dbg !5084
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_free_resource_list(ptr noundef %resources) #0 align 16 !dbg !5085 {
entry:
  %resources.addr = alloca ptr, align 8
  store ptr %resources, ptr %resources.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resources.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load ptr, ptr %resources.addr, align 8, !dbg !5091
  call void @resource_list_free(ptr noundef %0) #17, !dbg !5092
  ret void, !dbg !5093
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5094 dso_local void @resource_list_free(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_bus_add_resource(ptr noundef %bus, ptr noundef %res, i32 noundef %flags) #0 align 16 !dbg !5095 {
entry:
  %bus.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %bus_res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5099, metadata !DIExpression()), !dbg !5103
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5100, metadata !DIExpression()), !dbg !5104
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5101, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus_res) #16, !dbg !5106
  call void @llvm.dbg.declare(metadata ptr %bus_res, metadata !5102, metadata !DIExpression()), !dbg !5107
  %call = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #19, !dbg !5108
  store ptr %call, ptr %bus_res, align 8, !dbg !5109
  %0 = load ptr, ptr %bus_res, align 8, !dbg !5110
  %tobool = icmp ne ptr %0, null, !dbg !5110
  br i1 %tobool, label %if.end, label %if.then, !dbg !5112

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5113

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5116

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5116

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5113
  %dev = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 20, !dbg !5113
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.1, ptr noundef %2) #18, !dbg !5113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5118

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5119
  %4 = load ptr, ptr %bus_res, align 8, !dbg !5120
  %res1 = getelementptr inbounds %struct.pci_bus_resource, ptr %4, i32 0, i32 1, !dbg !5121
  store ptr %3, ptr %res1, align 8, !dbg !5122
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5123
  %6 = load ptr, ptr %bus_res, align 8, !dbg !5124
  %flags2 = getelementptr inbounds %struct.pci_bus_resource, ptr %6, i32 0, i32 2, !dbg !5125
  store i32 %5, ptr %flags2, align 8, !dbg !5126
  %7 = load ptr, ptr %bus_res, align 8, !dbg !5127
  %list = getelementptr inbounds %struct.pci_bus_resource, ptr %7, i32 0, i32 0, !dbg !5128
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !5129
  %resources = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 7, !dbg !5130
  call void @list_add_tail(ptr noundef %list, ptr noundef %resources) #17, !dbg !5131
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5132
  br label %cleanup, !dbg !5132

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus_res) #16, !dbg !5132
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5132

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5133 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5137, metadata !DIExpression()), !dbg !5139
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5138, metadata !DIExpression()), !dbg !5140
  %0 = load i64, ptr %size.addr, align 8, !dbg !5141
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5142
  %or = or i32 %1, 256, !dbg !5143
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5144
  ret ptr %call, !dbg !5145
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5146 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !5150 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5155, metadata !DIExpression()), !dbg !5157
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5156, metadata !DIExpression()), !dbg !5158
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5159
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5160
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5161
  %2 = load ptr, ptr %prev, align 8, !dbg !5161
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5162
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !5163
  ret void, !dbg !5164
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_bus_resource_n(ptr noundef %bus, i32 noundef %n) #0 align 16 !dbg !5165 {
entry:
  %retval = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %bus_res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5171, metadata !DIExpression()), !dbg !5180
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5172, metadata !DIExpression()), !dbg !5181
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus_res) #16, !dbg !5182
  call void @llvm.dbg.declare(metadata ptr %bus_res, metadata !5173, metadata !DIExpression()), !dbg !5183
  %0 = load i32, ptr %n.addr, align 4, !dbg !5184
  %cmp = icmp slt i32 %0, 4, !dbg !5186
  br i1 %cmp, label %if.then, label %if.end, !dbg !5187

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5188
  %resource = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 6, !dbg !5189
  %2 = load i32, ptr %n.addr, align 4, !dbg !5190
  %idxprom = sext i32 %2 to i64, !dbg !5188
  %arrayidx = getelementptr [4 x ptr], ptr %resource, i64 0, i64 %idxprom, !dbg !5188
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5188
  store ptr %3, ptr %retval, align 8, !dbg !5191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5191

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %n.addr, align 4, !dbg !5192
  %sub = sub i32 %4, 4, !dbg !5192
  store i32 %sub, ptr %n.addr, align 4, !dbg !5192
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5193
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5174, metadata !DIExpression()), !dbg !5193
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5193
  %resources = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 7, !dbg !5193
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !5193
  %6 = load ptr, ptr %next, align 8, !dbg !5193
  store ptr %6, ptr %__mptr, align 8, !dbg !5193
  %7 = load ptr, ptr %__mptr, align 8, !dbg !5193
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !5193
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5193
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5194
  %8 = load ptr, ptr %tmp, align 8, !dbg !5193
  store ptr %8, ptr %bus_res, align 8, !dbg !5194
  br label %for.cond, !dbg !5194

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load ptr, ptr %bus_res, align 8, !dbg !5195
  %list = getelementptr inbounds %struct.pci_bus_resource, ptr %9, i32 0, i32 0, !dbg !5195
  %10 = load ptr, ptr %bus.addr, align 8, !dbg !5195
  %resources1 = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 7, !dbg !5195
  %cmp2 = icmp eq ptr %list, %resources1, !dbg !5195
  %lnot = xor i1 %cmp2, true, !dbg !5195
  br i1 %lnot, label %for.body, label %for.end, !dbg !5194

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %n.addr, align 4, !dbg !5196
  %dec = add i32 %11, -1, !dbg !5196
  store i32 %dec, ptr %n.addr, align 4, !dbg !5196
  %cmp3 = icmp eq i32 %11, 0, !dbg !5199
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5200

if.then4:                                         ; preds = %for.body
  %12 = load ptr, ptr %bus_res, align 8, !dbg !5201
  %res = getelementptr inbounds %struct.pci_bus_resource, ptr %12, i32 0, i32 1, !dbg !5202
  %13 = load ptr, ptr %res, align 8, !dbg !5202
  store ptr %13, ptr %retval, align 8, !dbg !5203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5203

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !5204

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #16, !dbg !5205
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5177, metadata !DIExpression()), !dbg !5205
  %14 = load ptr, ptr %bus_res, align 8, !dbg !5205
  %list7 = getelementptr inbounds %struct.pci_bus_resource, ptr %14, i32 0, i32 0, !dbg !5205
  %next8 = getelementptr inbounds %struct.list_head, ptr %list7, i32 0, i32 0, !dbg !5205
  %15 = load ptr, ptr %next8, align 8, !dbg !5205
  store ptr %15, ptr %__mptr6, align 8, !dbg !5205
  %16 = load ptr, ptr %__mptr6, align 8, !dbg !5205
  %add.ptr10 = getelementptr i8, ptr %16, i64 0, !dbg !5205
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !5205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #16, !dbg !5195
  %17 = load ptr, ptr %tmp9, align 8, !dbg !5205
  store ptr %17, ptr %bus_res, align 8, !dbg !5195
  br label %for.cond, !dbg !5195, !llvm.loop !5206

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5210

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus_res) #16, !dbg !5211
  %18 = load ptr, ptr %retval, align 8, !dbg !5211
  ret ptr %18, !dbg !5211
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_bus_remove_resource(ptr noundef %bus, ptr noundef %res) #0 align 16 !dbg !5212 {
entry:
  %bus.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %bus_res = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr21 = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5216, metadata !DIExpression()), !dbg !5229
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5217, metadata !DIExpression()), !dbg !5230
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus_res) #16, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %bus_res, metadata !5218, metadata !DIExpression()), !dbg !5232
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5219, metadata !DIExpression()), !dbg !5233
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5234
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5220, metadata !DIExpression()), !dbg !5235
  store i32 0, ptr %i, align 4, !dbg !5236
  br label %for.cond, !dbg !5238

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5239
  %cmp = icmp slt i32 %0, 4, !dbg !5241
  br i1 %cmp, label %for.body, label %for.end, !dbg !5242

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5243
  %resource = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 6, !dbg !5246
  %2 = load i32, ptr %i, align 4, !dbg !5247
  %idxprom = sext i32 %2 to i64, !dbg !5243
  %arrayidx = getelementptr [4 x ptr], ptr %resource, i64 0, i64 %idxprom, !dbg !5243
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5243
  %4 = load ptr, ptr %res.addr, align 8, !dbg !5248
  %cmp1 = icmp eq ptr %3, %4, !dbg !5249
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5250

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5251
  %resource2 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 6, !dbg !5253
  %6 = load i32, ptr %i, align 4, !dbg !5254
  %idxprom3 = sext i32 %6 to i64, !dbg !5251
  %arrayidx4 = getelementptr [4 x ptr], ptr %resource2, i64 0, i64 %idxprom3, !dbg !5251
  store ptr null, ptr %arrayidx4, align 8, !dbg !5255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5256

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5257

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !5258
  %inc = add i32 %7, 1, !dbg !5258
  store i32 %inc, ptr %i, align 4, !dbg !5258
  br label %for.cond, !dbg !5259, !llvm.loop !5260

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5262
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5221, metadata !DIExpression()), !dbg !5262
  %8 = load ptr, ptr %bus.addr, align 8, !dbg !5262
  %resources = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 7, !dbg !5262
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !5262
  %9 = load ptr, ptr %next, align 8, !dbg !5262
  store ptr %9, ptr %__mptr, align 8, !dbg !5262
  %10 = load ptr, ptr %__mptr, align 8, !dbg !5262
  %add.ptr = getelementptr i8, ptr %10, i64 0, !dbg !5262
  store ptr %add.ptr, ptr %tmp5, align 8, !dbg !5262
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5263
  %11 = load ptr, ptr %tmp5, align 8, !dbg !5262
  store ptr %11, ptr %bus_res, align 8, !dbg !5263
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #16, !dbg !5264
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5224, metadata !DIExpression()), !dbg !5264
  %12 = load ptr, ptr %bus_res, align 8, !dbg !5264
  %list = getelementptr inbounds %struct.pci_bus_resource, ptr %12, i32 0, i32 0, !dbg !5264
  %next7 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5264
  %13 = load ptr, ptr %next7, align 8, !dbg !5264
  store ptr %13, ptr %__mptr6, align 8, !dbg !5264
  %14 = load ptr, ptr %__mptr6, align 8, !dbg !5264
  %add.ptr9 = getelementptr i8, ptr %14, i64 0, !dbg !5264
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !5264
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #16, !dbg !5263
  %15 = load ptr, ptr %tmp8, align 8, !dbg !5264
  store ptr %15, ptr %tmp, align 8, !dbg !5263
  br label %for.cond10, !dbg !5263

for.cond10:                                       ; preds = %for.inc20, %for.end
  %16 = load ptr, ptr %bus_res, align 8, !dbg !5265
  %list11 = getelementptr inbounds %struct.pci_bus_resource, ptr %16, i32 0, i32 0, !dbg !5265
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !5265
  %resources12 = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 7, !dbg !5265
  %cmp13 = icmp eq ptr %list11, %resources12, !dbg !5265
  %lnot = xor i1 %cmp13, true, !dbg !5265
  br i1 %lnot, label %for.body14, label %for.end26, !dbg !5263

for.body14:                                       ; preds = %for.cond10
  %18 = load ptr, ptr %bus_res, align 8, !dbg !5266
  %res15 = getelementptr inbounds %struct.pci_bus_resource, ptr %18, i32 0, i32 1, !dbg !5269
  %19 = load ptr, ptr %res15, align 8, !dbg !5269
  %20 = load ptr, ptr %res.addr, align 8, !dbg !5270
  %cmp16 = icmp eq ptr %19, %20, !dbg !5271
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !5272

if.then17:                                        ; preds = %for.body14
  %21 = load ptr, ptr %bus_res, align 8, !dbg !5273
  %list18 = getelementptr inbounds %struct.pci_bus_resource, ptr %21, i32 0, i32 0, !dbg !5275
  call void @list_del(ptr noundef %list18) #17, !dbg !5276
  %22 = load ptr, ptr %bus_res, align 8, !dbg !5277
  call void @kfree(ptr noundef %22) #17, !dbg !5278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5279

if.end19:                                         ; preds = %for.body14
  br label %for.inc20, !dbg !5280

for.inc20:                                        ; preds = %if.end19
  %23 = load ptr, ptr %tmp, align 8, !dbg !5265
  store ptr %23, ptr %bus_res, align 8, !dbg !5265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr21) #16, !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %__mptr21, metadata !5226, metadata !DIExpression()), !dbg !5281
  %24 = load ptr, ptr %tmp, align 8, !dbg !5281
  %list22 = getelementptr inbounds %struct.pci_bus_resource, ptr %24, i32 0, i32 0, !dbg !5281
  %next23 = getelementptr inbounds %struct.list_head, ptr %list22, i32 0, i32 0, !dbg !5281
  %25 = load ptr, ptr %next23, align 8, !dbg !5281
  store ptr %25, ptr %__mptr21, align 8, !dbg !5281
  %26 = load ptr, ptr %__mptr21, align 8, !dbg !5281
  %add.ptr25 = getelementptr i8, ptr %26, i64 0, !dbg !5281
  store ptr %add.ptr25, ptr %tmp24, align 8, !dbg !5281
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr21) #16, !dbg !5265
  %27 = load ptr, ptr %tmp24, align 8, !dbg !5281
  store ptr %27, ptr %tmp, align 8, !dbg !5265
  br label %for.cond10, !dbg !5265, !llvm.loop !5282

for.end26:                                        ; preds = %for.cond10
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5284
  br label %cleanup, !dbg !5284

cleanup:                                          ; preds = %for.end26, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5284
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5284
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus_res) #16, !dbg !5284
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5284

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !5285 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5289
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5290
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5291
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5292
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5293
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5294
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5295
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5296
  ret void, !dbg !5297
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5298 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_bus_remove_resources(ptr noundef %bus) #0 align 16 !dbg !5301 {
entry:
  %bus.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %bus_res = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5303, metadata !DIExpression()), !dbg !5315
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5316
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5304, metadata !DIExpression()), !dbg !5317
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus_res) #16, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %bus_res, metadata !5305, metadata !DIExpression()), !dbg !5319
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5306, metadata !DIExpression()), !dbg !5320
  store i32 0, ptr %i, align 4, !dbg !5321
  br label %for.cond, !dbg !5323

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5324
  %cmp = icmp slt i32 %0, 4, !dbg !5326
  br i1 %cmp, label %for.body, label %for.end, !dbg !5327

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5328
  %resource = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 6, !dbg !5329
  %2 = load i32, ptr %i, align 4, !dbg !5330
  %idxprom = sext i32 %2 to i64, !dbg !5328
  %arrayidx = getelementptr [4 x ptr], ptr %resource, i64 0, i64 %idxprom, !dbg !5328
  store ptr null, ptr %arrayidx, align 8, !dbg !5331
  br label %for.inc, !dbg !5328

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !5332
  %inc = add i32 %3, 1, !dbg !5332
  store i32 %inc, ptr %i, align 4, !dbg !5332
  br label %for.cond, !dbg !5333, !llvm.loop !5334

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5336
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5307, metadata !DIExpression()), !dbg !5336
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !5336
  %resources = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 7, !dbg !5336
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !5336
  %5 = load ptr, ptr %next, align 8, !dbg !5336
  store ptr %5, ptr %__mptr, align 8, !dbg !5336
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5336
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !5336
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5337
  %7 = load ptr, ptr %tmp1, align 8, !dbg !5336
  store ptr %7, ptr %bus_res, align 8, !dbg !5337
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !5338
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5310, metadata !DIExpression()), !dbg !5338
  %8 = load ptr, ptr %bus_res, align 8, !dbg !5338
  %list = getelementptr inbounds %struct.pci_bus_resource, ptr %8, i32 0, i32 0, !dbg !5338
  %next3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5338
  %9 = load ptr, ptr %next3, align 8, !dbg !5338
  store ptr %9, ptr %__mptr2, align 8, !dbg !5338
  %10 = load ptr, ptr %__mptr2, align 8, !dbg !5338
  %add.ptr5 = getelementptr i8, ptr %10, i64 0, !dbg !5338
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !5338
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !5337
  %11 = load ptr, ptr %tmp4, align 8, !dbg !5338
  store ptr %11, ptr %tmp, align 8, !dbg !5337
  br label %for.cond6, !dbg !5337

for.cond6:                                        ; preds = %for.inc12, %for.end
  %12 = load ptr, ptr %bus_res, align 8, !dbg !5339
  %list7 = getelementptr inbounds %struct.pci_bus_resource, ptr %12, i32 0, i32 0, !dbg !5339
  %13 = load ptr, ptr %bus.addr, align 8, !dbg !5339
  %resources8 = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 7, !dbg !5339
  %cmp9 = icmp eq ptr %list7, %resources8, !dbg !5339
  %lnot = xor i1 %cmp9, true, !dbg !5339
  br i1 %lnot, label %for.body10, label %for.end18, !dbg !5337

for.body10:                                       ; preds = %for.cond6
  %14 = load ptr, ptr %bus_res, align 8, !dbg !5340
  %list11 = getelementptr inbounds %struct.pci_bus_resource, ptr %14, i32 0, i32 0, !dbg !5342
  call void @list_del(ptr noundef %list11) #17, !dbg !5343
  %15 = load ptr, ptr %bus_res, align 8, !dbg !5344
  call void @kfree(ptr noundef %15) #17, !dbg !5345
  br label %for.inc12, !dbg !5346

for.inc12:                                        ; preds = %for.body10
  %16 = load ptr, ptr %tmp, align 8, !dbg !5339
  store ptr %16, ptr %bus_res, align 8, !dbg !5339
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #16, !dbg !5347
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !5312, metadata !DIExpression()), !dbg !5347
  %17 = load ptr, ptr %tmp, align 8, !dbg !5347
  %list14 = getelementptr inbounds %struct.pci_bus_resource, ptr %17, i32 0, i32 0, !dbg !5347
  %next15 = getelementptr inbounds %struct.list_head, ptr %list14, i32 0, i32 0, !dbg !5347
  %18 = load ptr, ptr %next15, align 8, !dbg !5347
  store ptr %18, ptr %__mptr13, align 8, !dbg !5347
  %19 = load ptr, ptr %__mptr13, align 8, !dbg !5347
  %add.ptr17 = getelementptr i8, ptr %19, i64 0, !dbg !5347
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !5347
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #16, !dbg !5339
  %20 = load ptr, ptr %tmp16, align 8, !dbg !5347
  store ptr %20, ptr %tmp, align 8, !dbg !5339
  br label %for.cond6, !dbg !5339, !llvm.loop !5348

for.end18:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5350
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus_res) #16, !dbg !5350
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5350
  ret void, !dbg !5350
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_request_pci_bus_resources(ptr noundef %dev, ptr noundef %resources) #0 align 16 !dbg !5351 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %resources.addr = alloca ptr, align 8
  %win = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %res = alloca ptr, align 8
  %err = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5355, metadata !DIExpression()), !dbg !5367
  store ptr %resources, ptr %resources.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resources.addr, metadata !5356, metadata !DIExpression()), !dbg !5368
  call void @llvm.lifetime.start.p0(i64 8, ptr %win) #16, !dbg !5369
  call void @llvm.dbg.declare(metadata ptr %win, metadata !5357, metadata !DIExpression()), !dbg !5370
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !5371
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5358, metadata !DIExpression()), !dbg !5372
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !5371
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5359, metadata !DIExpression()), !dbg !5373
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5360, metadata !DIExpression()), !dbg !5375
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5361, metadata !DIExpression()), !dbg !5376
  %0 = load ptr, ptr %resources.addr, align 8, !dbg !5376
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5376
  %1 = load ptr, ptr %next, align 8, !dbg !5376
  store ptr %1, ptr %__mptr, align 8, !dbg !5376
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5376
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5376
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5376
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5377
  %3 = load ptr, ptr %tmp, align 8, !dbg !5376
  store ptr %3, ptr %win, align 8, !dbg !5377
  br label %for.cond, !dbg !5377

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %win, align 8, !dbg !5378
  %node = getelementptr inbounds %struct.resource_entry, ptr %4, i32 0, i32 0, !dbg !5378
  %5 = load ptr, ptr %resources.addr, align 8, !dbg !5378
  %cmp = icmp eq ptr %node, %5, !dbg !5378
  %lnot = xor i1 %cmp, true, !dbg !5378
  br i1 %lnot, label %for.body, label %for.end, !dbg !5377

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %win, align 8, !dbg !5379
  %res1 = getelementptr inbounds %struct.resource_entry, ptr %6, i32 0, i32 1, !dbg !5381
  %7 = load ptr, ptr %res1, align 8, !dbg !5381
  store ptr %7, ptr %res, align 8, !dbg !5382
  %8 = load ptr, ptr %res, align 8, !dbg !5383
  %call = call i64 @resource_type(ptr noundef %8) #17, !dbg !5384
  switch i64 %call, label %sw.default [
    i64 256, label %sw.bb
    i64 512, label %sw.bb2
  ], !dbg !5385

sw.bb:                                            ; preds = %for.body
  store ptr @ioport_resource, ptr %parent, align 8, !dbg !5386
  br label %sw.epilog, !dbg !5388

sw.bb2:                                           ; preds = %for.body
  store ptr @iomem_resource, ptr %parent, align 8, !dbg !5389
  br label %sw.epilog, !dbg !5390

sw.default:                                       ; preds = %for.body
  br label %for.inc, !dbg !5391

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5392
  %10 = load ptr, ptr %parent, align 8, !dbg !5393
  %11 = load ptr, ptr %res, align 8, !dbg !5394
  %call3 = call i32 @devm_request_resource(ptr noundef %9, ptr noundef %10, ptr noundef %11) #17, !dbg !5395
  store i32 %call3, ptr %err, align 4, !dbg !5396
  %12 = load i32, ptr %err, align 4, !dbg !5397
  %tobool = icmp ne i32 %12, 0, !dbg !5397
  br i1 %tobool, label %if.then, label %if.end, !dbg !5399

if.then:                                          ; preds = %sw.epilog
  %13 = load i32, ptr %err, align 4, !dbg !5400
  store i32 %13, ptr %retval, align 4, !dbg !5401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5401

if.end:                                           ; preds = %sw.epilog
  br label %for.inc, !dbg !5402

for.inc:                                          ; preds = %if.end, %sw.default
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #16, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !5364, metadata !DIExpression()), !dbg !5403
  %14 = load ptr, ptr %win, align 8, !dbg !5403
  %node5 = getelementptr inbounds %struct.resource_entry, ptr %14, i32 0, i32 0, !dbg !5403
  %next6 = getelementptr inbounds %struct.list_head, ptr %node5, i32 0, i32 0, !dbg !5403
  %15 = load ptr, ptr %next6, align 8, !dbg !5403
  store ptr %15, ptr %__mptr4, align 8, !dbg !5403
  %16 = load ptr, ptr %__mptr4, align 8, !dbg !5403
  %add.ptr8 = getelementptr i8, ptr %16, i64 0, !dbg !5403
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #16, !dbg !5378
  %17 = load ptr, ptr %tmp7, align 8, !dbg !5403
  store ptr %17, ptr %win, align 8, !dbg !5378
  br label %for.cond, !dbg !5378, !llvm.loop !5404

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5406

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5407
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !5407
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !5407
  call void @llvm.lifetime.end.p0(i64 8, ptr %win) #16, !dbg !5407
  %18 = load i32, ptr %retval, align 4, !dbg !5407
  ret i32 %18, !dbg !5407
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_type(ptr noundef %res) #5 align 16 !dbg !5408 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5416
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !5417
  %1 = load i64, ptr %flags, align 8, !dbg !5417
  %and = and i64 %1, 7936, !dbg !5418
  ret i64 %and, !dbg !5419
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5420 dso_local i32 @devm_request_resource(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_bus_alloc_resource(ptr noundef %bus, ptr noundef %res, i64 noundef %size, i64 noundef %align, i64 noundef %min, i64 noundef %type_mask, ptr noundef %alignf, ptr noundef %alignf_data) #0 align 16 !dbg !5423 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %min.addr = alloca i64, align 8
  %type_mask.addr = alloca i64, align 8
  %alignf.addr = alloca ptr, align 8
  %alignf_data.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5430, metadata !DIExpression()), !dbg !5439
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5431, metadata !DIExpression()), !dbg !5440
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5432, metadata !DIExpression()), !dbg !5441
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5433, metadata !DIExpression()), !dbg !5442
  store i64 %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !5434, metadata !DIExpression()), !dbg !5443
  store i64 %type_mask, ptr %type_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type_mask.addr, metadata !5435, metadata !DIExpression()), !dbg !5444
  store ptr %alignf, ptr %alignf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alignf.addr, metadata !5436, metadata !DIExpression()), !dbg !5445
  store ptr %alignf_data, ptr %alignf_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alignf_data.addr, metadata !5437, metadata !DIExpression()), !dbg !5446
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5447
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5438, metadata !DIExpression()), !dbg !5448
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5449
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !5451
  %1 = load i64, ptr %flags, align 8, !dbg !5451
  %and = and i64 %1, 1048576, !dbg !5452
  %tobool = icmp ne i64 %and, 0, !dbg !5452
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5453

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5454
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5456
  %4 = load i64, ptr %size.addr, align 8, !dbg !5457
  %5 = load i64, ptr %align.addr, align 8, !dbg !5458
  %6 = load i64, ptr %min.addr, align 8, !dbg !5459
  %7 = load i64, ptr %type_mask.addr, align 8, !dbg !5460
  %8 = load ptr, ptr %alignf.addr, align 8, !dbg !5461
  %9 = load ptr, ptr %alignf_data.addr, align 8, !dbg !5462
  %call = call i32 @pci_bus_alloc_from_region(ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef @pci_high) #17, !dbg !5463
  store i32 %call, ptr %rc, align 4, !dbg !5464
  %10 = load i32, ptr %rc, align 4, !dbg !5465
  %cmp = icmp eq i32 %10, 0, !dbg !5467
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5468

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !5469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5469

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !5470
  %12 = load ptr, ptr %res.addr, align 8, !dbg !5471
  %13 = load i64, ptr %size.addr, align 8, !dbg !5472
  %14 = load i64, ptr %align.addr, align 8, !dbg !5473
  %15 = load i64, ptr %min.addr, align 8, !dbg !5474
  %16 = load i64, ptr %type_mask.addr, align 8, !dbg !5475
  %17 = load ptr, ptr %alignf.addr, align 8, !dbg !5476
  %18 = load ptr, ptr %alignf_data.addr, align 8, !dbg !5477
  %call2 = call i32 @pci_bus_alloc_from_region(ptr noundef %11, ptr noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef @pci_64_bit) #17, !dbg !5478
  store i32 %call2, ptr %retval, align 4, !dbg !5479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5479

if.end3:                                          ; preds = %entry
  %19 = load ptr, ptr %bus.addr, align 8, !dbg !5480
  %20 = load ptr, ptr %res.addr, align 8, !dbg !5481
  %21 = load i64, ptr %size.addr, align 8, !dbg !5482
  %22 = load i64, ptr %align.addr, align 8, !dbg !5483
  %23 = load i64, ptr %min.addr, align 8, !dbg !5484
  %24 = load i64, ptr %type_mask.addr, align 8, !dbg !5485
  %25 = load ptr, ptr %alignf.addr, align 8, !dbg !5486
  %26 = load ptr, ptr %alignf_data.addr, align 8, !dbg !5487
  %call4 = call i32 @pci_bus_alloc_from_region(ptr noundef %19, ptr noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef @pci_32_bit) #17, !dbg !5488
  store i32 %call4, ptr %retval, align 4, !dbg !5489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5489

cleanup:                                          ; preds = %if.end3, %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5490
  %27 = load i32, ptr %retval, align 4, !dbg !5490
  ret i32 %27, !dbg !5490
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_bus_alloc_from_region(ptr noundef %bus, ptr noundef %res, i64 noundef %size, i64 noundef %align, i64 noundef %min, i64 noundef %type_mask, ptr noundef %alignf, ptr noundef %alignf_data, ptr noundef %region) #0 align 16 !dbg !5491 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %min.addr = alloca i64, align 8
  %type_mask.addr = alloca i64, align 8
  %alignf.addr = alloca ptr, align 8
  %alignf_data.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %avail = alloca %struct.resource, align 8
  %max = alloca i64, align 8
  %ret = alloca i32, align 4
  %__b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %min_used = alloca i64, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5496, metadata !DIExpression()), !dbg !5514
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5497, metadata !DIExpression()), !dbg !5515
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5498, metadata !DIExpression()), !dbg !5516
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5499, metadata !DIExpression()), !dbg !5517
  store i64 %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !5500, metadata !DIExpression()), !dbg !5518
  store i64 %type_mask, ptr %type_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type_mask.addr, metadata !5501, metadata !DIExpression()), !dbg !5519
  store ptr %alignf, ptr %alignf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alignf.addr, metadata !5502, metadata !DIExpression()), !dbg !5520
  store ptr %alignf_data, ptr %alignf_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alignf_data.addr, metadata !5503, metadata !DIExpression()), !dbg !5521
  store ptr %region, ptr %region.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !5504, metadata !DIExpression()), !dbg !5522
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5505, metadata !DIExpression()), !dbg !5524
  call void @llvm.lifetime.start.p0(i64 64, ptr %avail) #16, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %avail, metadata !5506, metadata !DIExpression()), !dbg !5525
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #16, !dbg !5526
  call void @llvm.dbg.declare(metadata ptr %max, metadata !5507, metadata !DIExpression()), !dbg !5527
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5528
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5508, metadata !DIExpression()), !dbg !5529
  %0 = load i64, ptr %type_mask.addr, align 8, !dbg !5530
  %or = or i64 %0, 7936, !dbg !5530
  store i64 %or, ptr %type_mask.addr, align 8, !dbg !5530
  call void @llvm.lifetime.start.p0(i64 4, ptr %__b) #16, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %__b, metadata !5509, metadata !DIExpression()), !dbg !5531
  store i32 0, ptr %__b, align 4, !dbg !5531
  br label %for.cond, !dbg !5531

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5532
  %2 = load i32, ptr %__b, align 4, !dbg !5532
  %call = call ptr @pci_bus_resource_n(ptr noundef %1, i32 noundef %2) #17, !dbg !5532
  store ptr %call, ptr %r, align 8, !dbg !5532
  %tobool = icmp ne ptr %call, null, !dbg !5532
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5532

lor.rhs:                                          ; preds = %for.cond
  %3 = load i32, ptr %__b, align 4, !dbg !5532
  %cmp = icmp ult i32 %3, 4, !dbg !5532
  br label %lor.end, !dbg !5532

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %4 = phi i1 [ true, %for.cond ], [ %cmp, %lor.rhs ]
  br i1 %4, label %for.body, label %for.cond.cleanup, !dbg !5531

for.cond.cleanup:                                 ; preds = %lor.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !5531

for.body:                                         ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_used) #16, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %min_used, metadata !5511, metadata !DIExpression()), !dbg !5534
  %5 = load i64, ptr %min.addr, align 8, !dbg !5535
  store i64 %5, ptr %min_used, align 8, !dbg !5534
  %6 = load ptr, ptr %r, align 8, !dbg !5536
  %tobool1 = icmp ne ptr %6, null, !dbg !5536
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5538

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5539

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %res.addr, align 8, !dbg !5540
  %flags = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 3, !dbg !5542
  %8 = load i64, ptr %flags, align 8, !dbg !5542
  %9 = load ptr, ptr %r, align 8, !dbg !5543
  %flags2 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3, !dbg !5544
  %10 = load i64, ptr %flags2, align 8, !dbg !5544
  %xor = xor i64 %8, %10, !dbg !5545
  %11 = load i64, ptr %type_mask.addr, align 8, !dbg !5546
  %and = and i64 %xor, %11, !dbg !5547
  %tobool3 = icmp ne i64 %and, 0, !dbg !5547
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5548

if.then4:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5549

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %r, align 8, !dbg !5550
  %flags6 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3, !dbg !5552
  %13 = load i64, ptr %flags6, align 8, !dbg !5552
  %and7 = and i64 %13, 8192, !dbg !5553
  %tobool8 = icmp ne i64 %and7, 0, !dbg !5553
  br i1 %tobool8, label %land.lhs.true, label %if.end13, !dbg !5554

land.lhs.true:                                    ; preds = %if.end5
  %14 = load ptr, ptr %res.addr, align 8, !dbg !5555
  %flags9 = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 3, !dbg !5556
  %15 = load i64, ptr %flags9, align 8, !dbg !5556
  %and10 = and i64 %15, 8192, !dbg !5557
  %tobool11 = icmp ne i64 %and10, 0, !dbg !5557
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5558

if.then12:                                        ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5559

if.end13:                                         ; preds = %land.lhs.true, %if.end5
  %16 = load ptr, ptr %r, align 8, !dbg !5560
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %avail, ptr align 8 %16, i64 64, i1 false), !dbg !5561
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !5562
  %18 = load ptr, ptr %region.addr, align 8, !dbg !5563
  call void @pci_clip_resource_to_region(ptr noundef %17, ptr noundef %avail, ptr noundef %18) #17, !dbg !5564
  %start = getelementptr inbounds %struct.resource, ptr %avail, i32 0, i32 0, !dbg !5565
  %19 = load i64, ptr %start, align 8, !dbg !5565
  %tobool14 = icmp ne i64 %19, 0, !dbg !5567
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !5568

if.then15:                                        ; preds = %if.end13
  %start16 = getelementptr inbounds %struct.resource, ptr %avail, i32 0, i32 0, !dbg !5569
  %20 = load i64, ptr %start16, align 8, !dbg !5569
  store i64 %20, ptr %min_used, align 8, !dbg !5570
  br label %if.end17, !dbg !5571

if.end17:                                         ; preds = %if.then15, %if.end13
  %end = getelementptr inbounds %struct.resource, ptr %avail, i32 0, i32 1, !dbg !5572
  %21 = load i64, ptr %end, align 8, !dbg !5572
  store i64 %21, ptr %max, align 8, !dbg !5573
  %22 = load i64, ptr %size.addr, align 8, !dbg !5574
  %23 = load i64, ptr %max, align 8, !dbg !5576
  %24 = load i64, ptr %min_used, align 8, !dbg !5577
  %sub = sub i64 %23, %24, !dbg !5578
  %add = add i64 %sub, 1, !dbg !5579
  %cmp18 = icmp ugt i64 %22, %add, !dbg !5580
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5581

if.then19:                                        ; preds = %if.end17
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5582

if.end20:                                         ; preds = %if.end17
  %25 = load ptr, ptr %r, align 8, !dbg !5583
  %26 = load ptr, ptr %res.addr, align 8, !dbg !5584
  %27 = load i64, ptr %size.addr, align 8, !dbg !5585
  %28 = load i64, ptr %min_used, align 8, !dbg !5586
  %29 = load i64, ptr %max, align 8, !dbg !5587
  %30 = load i64, ptr %align.addr, align 8, !dbg !5588
  %31 = load ptr, ptr %alignf.addr, align 8, !dbg !5589
  %32 = load ptr, ptr %alignf_data.addr, align 8, !dbg !5590
  %call21 = call i32 @allocate_resource(ptr noundef %25, ptr noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, ptr noundef %31, ptr noundef %32) #17, !dbg !5591
  store i32 %call21, ptr %ret, align 4, !dbg !5592
  %33 = load i32, ptr %ret, align 4, !dbg !5593
  %cmp22 = icmp eq i32 %33, 0, !dbg !5595
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !5596

if.then23:                                        ; preds = %if.end20
  store i32 0, ptr %retval, align 4, !dbg !5597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5597

if.end24:                                         ; preds = %if.end20
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5598
  br label %cleanup, !dbg !5598

cleanup:                                          ; preds = %if.end24, %if.then23, %if.then19, %if.then12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_used) #16, !dbg !5598
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5599

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %34 = load i32, ptr %__b, align 4, !dbg !5532
  %inc = add i32 %34, 1, !dbg !5532
  store i32 %inc, ptr %__b, align 4, !dbg !5532
  br label %for.cond, !dbg !5532, !llvm.loop !5600

cleanup25:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %__b) #16, !dbg !5532
  %cleanup.dest26 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest26, label %cleanup27 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup25
  store i32 -12, ptr %retval, align 4, !dbg !5602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !5602

cleanup27:                                        ; preds = %for.end, %cleanup25
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5603
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #16, !dbg !5603
  call void @llvm.lifetime.end.p0(i64 64, ptr %avail) #16, !dbg !5603
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !5603
  %35 = load i32, ptr %retval, align 4, !dbg !5603
  ret i32 %35, !dbg !5603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pci_bus_clip_resource(ptr noundef %dev, i32 noundef %idx) #0 align 16 !dbg !5604 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %bus = alloca ptr, align 8
  %res = alloca ptr, align 8
  %orig_res = alloca %struct.resource, align 8
  %r = alloca ptr, align 8
  %__b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %__UNIQUE_ID___x298 = alloca i64, align 8
  %__UNIQUE_ID___y299 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x300 = alloca i64, align 8
  %__UNIQUE_ID___y301 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5608, metadata !DIExpression()), !dbg !5626
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5609, metadata !DIExpression()), !dbg !5627
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #16, !dbg !5628
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5610, metadata !DIExpression()), !dbg !5629
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5630
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !5631
  %1 = load ptr, ptr %bus1, align 8, !dbg !5631
  store ptr %1, ptr %bus, align 8, !dbg !5629
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !5632
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5611, metadata !DIExpression()), !dbg !5633
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5634
  %resource = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 40, !dbg !5635
  %3 = load i32, ptr %idx.addr, align 4, !dbg !5636
  %idxprom = sext i32 %3 to i64, !dbg !5634
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !5634
  store ptr %arrayidx, ptr %res, align 8, !dbg !5633
  call void @llvm.lifetime.start.p0(i64 64, ptr %orig_res) #16, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %orig_res, metadata !5612, metadata !DIExpression()), !dbg !5638
  %4 = load ptr, ptr %res, align 8, !dbg !5639
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %orig_res, ptr align 8 %4, i64 64, i1 false), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5613, metadata !DIExpression()), !dbg !5642
  call void @llvm.lifetime.start.p0(i64 4, ptr %__b) #16, !dbg !5643
  call void @llvm.dbg.declare(metadata ptr %__b, metadata !5614, metadata !DIExpression()), !dbg !5643
  store i32 0, ptr %__b, align 4, !dbg !5643
  br label %for.cond, !dbg !5643

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %bus, align 8, !dbg !5644
  %6 = load i32, ptr %__b, align 4, !dbg !5644
  %call = call ptr @pci_bus_resource_n(ptr noundef %5, i32 noundef %6) #17, !dbg !5644
  store ptr %call, ptr %r, align 8, !dbg !5644
  %tobool = icmp ne ptr %call, null, !dbg !5644
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5644

lor.rhs:                                          ; preds = %for.cond
  %7 = load i32, ptr %__b, align 4, !dbg !5644
  %cmp = icmp ult i32 %7, 4, !dbg !5644
  br label %lor.end, !dbg !5644

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %8 = phi i1 [ true, %for.cond ], [ %cmp, %lor.rhs ]
  br i1 %8, label %for.body, label %for.cond.cleanup, !dbg !5643

for.cond.cleanup:                                 ; preds = %lor.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !5643

for.body:                                         ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5616, metadata !DIExpression()), !dbg !5646
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #16, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5619, metadata !DIExpression()), !dbg !5647
  %9 = load ptr, ptr %r, align 8, !dbg !5648
  %tobool2 = icmp ne ptr %9, null, !dbg !5648
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5650

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5651

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %res, align 8, !dbg !5652
  %call3 = call i64 @resource_type(ptr noundef %10) #17, !dbg !5654
  %11 = load ptr, ptr %r, align 8, !dbg !5655
  %call4 = call i64 @resource_type(ptr noundef %11) #17, !dbg !5656
  %cmp5 = icmp ne i64 %call3, %call4, !dbg !5657
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5658

if.then6:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5659

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x298) #16, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x298, metadata !5620, metadata !DIExpression()), !dbg !5660
  %12 = load ptr, ptr %r, align 8, !dbg !5660
  %start8 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 0, !dbg !5660
  %13 = load i64, ptr %start8, align 8, !dbg !5660
  store i64 %13, ptr %__UNIQUE_ID___x298, align 8, !dbg !5660
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y299) #16, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y299, metadata !5622, metadata !DIExpression()), !dbg !5660
  %14 = load ptr, ptr %res, align 8, !dbg !5660
  %start9 = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 0, !dbg !5660
  %15 = load i64, ptr %start9, align 8, !dbg !5660
  store i64 %15, ptr %__UNIQUE_ID___y299, align 8, !dbg !5660
  %16 = load i64, ptr %__UNIQUE_ID___x298, align 8, !dbg !5660
  %17 = load i64, ptr %__UNIQUE_ID___y299, align 8, !dbg !5660
  %cmp10 = icmp ugt i64 %16, %17, !dbg !5660
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !5660

cond.true:                                        ; preds = %if.end7
  %18 = load i64, ptr %__UNIQUE_ID___x298, align 8, !dbg !5660
  br label %cond.end, !dbg !5660

cond.false:                                       ; preds = %if.end7
  %19 = load i64, ptr %__UNIQUE_ID___y299, align 8, !dbg !5660
  br label %cond.end, !dbg !5660

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !5660
  store i64 %cond, ptr %tmp, align 8, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y299) #16, !dbg !5661
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x298) #16, !dbg !5661
  %20 = load i64, ptr %tmp, align 8, !dbg !5660
  store i64 %20, ptr %start, align 8, !dbg !5662
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x300) #16, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x300, metadata !5623, metadata !DIExpression()), !dbg !5663
  %21 = load ptr, ptr %r, align 8, !dbg !5663
  %end11 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 1, !dbg !5663
  %22 = load i64, ptr %end11, align 8, !dbg !5663
  store i64 %22, ptr %__UNIQUE_ID___x300, align 8, !dbg !5663
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y301) #16, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y301, metadata !5625, metadata !DIExpression()), !dbg !5663
  %23 = load ptr, ptr %res, align 8, !dbg !5663
  %end12 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1, !dbg !5663
  %24 = load i64, ptr %end12, align 8, !dbg !5663
  store i64 %24, ptr %__UNIQUE_ID___y301, align 8, !dbg !5663
  %25 = load i64, ptr %__UNIQUE_ID___x300, align 8, !dbg !5663
  %26 = load i64, ptr %__UNIQUE_ID___y301, align 8, !dbg !5663
  %cmp14 = icmp ult i64 %25, %26, !dbg !5663
  br i1 %cmp14, label %cond.true15, label %cond.false16, !dbg !5663

cond.true15:                                      ; preds = %cond.end
  %27 = load i64, ptr %__UNIQUE_ID___x300, align 8, !dbg !5663
  br label %cond.end17, !dbg !5663

cond.false16:                                     ; preds = %cond.end
  %28 = load i64, ptr %__UNIQUE_ID___y301, align 8, !dbg !5663
  br label %cond.end17, !dbg !5663

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i64 [ %27, %cond.true15 ], [ %28, %cond.false16 ], !dbg !5663
  store i64 %cond18, ptr %tmp13, align 8, !dbg !5663
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y301) #16, !dbg !5664
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x300) #16, !dbg !5664
  %29 = load i64, ptr %tmp13, align 8, !dbg !5663
  store i64 %29, ptr %end, align 8, !dbg !5665
  %30 = load i64, ptr %start, align 8, !dbg !5666
  %31 = load i64, ptr %end, align 8, !dbg !5668
  %cmp19 = icmp ugt i64 %30, %31, !dbg !5669
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !5670

if.then20:                                        ; preds = %cond.end17
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5671

if.end21:                                         ; preds = %cond.end17
  %32 = load ptr, ptr %res, align 8, !dbg !5672
  %start22 = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 0, !dbg !5674
  %33 = load i64, ptr %start22, align 8, !dbg !5674
  %34 = load i64, ptr %start, align 8, !dbg !5675
  %cmp23 = icmp eq i64 %33, %34, !dbg !5676
  br i1 %cmp23, label %land.lhs.true, label %if.end27, !dbg !5677

land.lhs.true:                                    ; preds = %if.end21
  %35 = load ptr, ptr %res, align 8, !dbg !5678
  %end24 = getelementptr inbounds %struct.resource, ptr %35, i32 0, i32 1, !dbg !5679
  %36 = load i64, ptr %end24, align 8, !dbg !5679
  %37 = load i64, ptr %end, align 8, !dbg !5680
  %cmp25 = icmp eq i64 %36, %37, !dbg !5681
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !5682

if.then26:                                        ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !5683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5683

if.end27:                                         ; preds = %land.lhs.true, %if.end21
  %38 = load i64, ptr %start, align 8, !dbg !5684
  %39 = load ptr, ptr %res, align 8, !dbg !5685
  %start28 = getelementptr inbounds %struct.resource, ptr %39, i32 0, i32 0, !dbg !5686
  store i64 %38, ptr %start28, align 8, !dbg !5687
  %40 = load i64, ptr %end, align 8, !dbg !5688
  %41 = load ptr, ptr %res, align 8, !dbg !5689
  %end29 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 1, !dbg !5690
  store i64 %40, ptr %end29, align 8, !dbg !5691
  %42 = load ptr, ptr %res, align 8, !dbg !5692
  %flags = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 3, !dbg !5693
  %43 = load i64, ptr %flags, align 8, !dbg !5694
  %and = and i64 %43, -536870913, !dbg !5694
  store i64 %and, ptr %flags, align 8, !dbg !5694
  %flags30 = getelementptr inbounds %struct.resource, ptr %orig_res, i32 0, i32 3, !dbg !5695
  %44 = load i64, ptr %flags30, align 8, !dbg !5696
  %and31 = and i64 %44, -536870913, !dbg !5696
  store i64 %and31, ptr %flags30, align 8, !dbg !5696
  br label %do.body, !dbg !5697

do.body:                                          ; preds = %if.end27
  br label %do.cond, !dbg !5699

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5699

do.end:                                           ; preds = %do.cond
  %45 = load ptr, ptr %dev.addr, align 8, !dbg !5697
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 37, !dbg !5697
  %46 = load ptr, ptr %res, align 8, !dbg !5697
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef @.str.2, ptr noundef %orig_res, ptr noundef %46) #18, !dbg !5697
  store i1 true, ptr %retval, align 1, !dbg !5701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5701

cleanup:                                          ; preds = %do.end, %if.then26, %if.then20, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #16, !dbg !5702
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !5702
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %47 = load i32, ptr %__b, align 4, !dbg !5644
  %inc = add i32 %47, 1, !dbg !5644
  store i32 %inc, ptr %__b, align 4, !dbg !5644
  br label %for.cond, !dbg !5644, !llvm.loop !5703

cleanup34:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %__b) #16, !dbg !5644
  %cleanup.dest35 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest35, label %cleanup36 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup34
  store i1 false, ptr %retval, align 1, !dbg !5705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !5705

cleanup36:                                        ; preds = %for.end, %cleanup34
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 64, ptr %orig_res) #16, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #16, !dbg !5706
  %48 = load i1, ptr %retval, align 1, !dbg !5706
  ret i1 %48, !dbg !5706
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5707 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @pcibios_resource_survey_bus(ptr noundef %bus) #0 align 16 !dbg !5708 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  ret void, !dbg !5712
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @pcibios_bus_add_device(ptr noundef %pdev) #0 align 16 !dbg !5713 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5715, metadata !DIExpression()), !dbg !5716
  ret void, !dbg !5717
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_bus_add_device(ptr noundef %dev) #0 align 16 !dbg !5718 {
entry:
  %dev.addr = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %retval = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5720, metadata !DIExpression()), !dbg !5723
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #16, !dbg !5724
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !5721, metadata !DIExpression()), !dbg !5725
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5726
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5727
  %of_node = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 23, !dbg !5728
  %1 = load ptr, ptr %of_node, align 8, !dbg !5728
  store ptr %1, ptr %dn, align 8, !dbg !5725
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval) #16, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5722, metadata !DIExpression()), !dbg !5730
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5731
  call void @pcibios_bus_add_device(ptr noundef %2) #17, !dbg !5732
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5733
  call void @pci_fixup_device(i32 noundef 2, ptr noundef %3) #17, !dbg !5734
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5735
  %call = call zeroext i1 @pci_is_bridge(ptr noundef %4) #17, !dbg !5737
  br i1 %call, label %if.then, label %if.end, !dbg !5738

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5739
  call void @of_pci_make_dev_node(ptr noundef %5) #17, !dbg !5740
  br label %if.end, !dbg !5740

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5741
  %call2 = call i32 @pci_create_sysfs_dev_files(ptr noundef %6) #17, !dbg !5742
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5743
  %call3 = call i32 @pci_proc_attach_device(ptr noundef %7) #17, !dbg !5744
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5745
  call void @pci_bridge_d3_update(ptr noundef %8) #17, !dbg !5746
  %9 = load ptr, ptr %dn, align 8, !dbg !5747
  %tobool = icmp ne ptr %9, null, !dbg !5747
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5748

lor.rhs:                                          ; preds = %if.end
  %10 = load ptr, ptr %dn, align 8, !dbg !5749
  %call4 = call zeroext i1 @of_device_is_available(ptr noundef %10) #17, !dbg !5750
  br label %lor.end, !dbg !5748

lor.end:                                          ; preds = %lor.rhs, %if.end
  %11 = phi i1 [ true, %if.end ], [ %call4, %lor.rhs ]
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5751
  %match_driver = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 42, !dbg !5752
  %frombool = zext i1 %11 to i8, !dbg !5753
  store i8 %frombool, ptr %match_driver, align 8, !dbg !5753
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5754
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 37, !dbg !5755
  %call6 = call i32 @device_attach(ptr noundef %dev5) #17, !dbg !5756
  store i32 %call6, ptr %retval, align 4, !dbg !5757
  %14 = load i32, ptr %retval, align 4, !dbg !5758
  %cmp = icmp slt i32 %14, 0, !dbg !5760
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !5761

land.lhs.true:                                    ; preds = %lor.end
  %15 = load i32, ptr %retval, align 4, !dbg !5762
  %cmp7 = icmp ne i32 %15, -517, !dbg !5763
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !5764

if.then8:                                         ; preds = %land.lhs.true
  br label %do.body, !dbg !5765

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !5767

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5767

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5765
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 37, !dbg !5765
  %17 = load i32, ptr %retval, align 4, !dbg !5765
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef @.str.3, i32 noundef %17) #18, !dbg !5765
  br label %if.end10, !dbg !5769

if.end10:                                         ; preds = %do.end, %land.lhs.true, %lor.end
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5770
  call void @pci_dev_assign_added(ptr noundef %18, i1 noundef zeroext true) #17, !dbg !5771
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval) #16, !dbg !5772
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #16, !dbg !5772
  ret void, !dbg !5772
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5773 dso_local void @pci_fixup_device(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_bridge(ptr noundef %dev) #5 align 16 !dbg !5776 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5782
  %hdr_type = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13, !dbg !5783
  %1 = load i8, ptr %hdr_type, align 1, !dbg !5783
  %conv = zext i8 %1 to i32, !dbg !5782
  %cmp = icmp eq i32 %conv, 1, !dbg !5784
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5785

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5786
  %hdr_type2 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 13, !dbg !5787
  %3 = load i8, ptr %hdr_type2, align 1, !dbg !5787
  %conv3 = zext i8 %3 to i32, !dbg !5786
  %cmp4 = icmp eq i32 %conv3, 2, !dbg !5788
  br label %lor.end, !dbg !5785

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  ret i1 %4, !dbg !5789
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @of_pci_make_dev_node(ptr noundef %pdev) #5 align 16 !dbg !5790 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  ret void, !dbg !5794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5795 dso_local i32 @pci_create_sysfs_dev_files(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5796 dso_local i32 @pci_proc_attach_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5797 dso_local void @pci_bridge_d3_update(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @of_device_is_available(ptr noundef %device) #5 align 16 !dbg !5798 {
entry:
  %device.addr = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  ret i1 false, !dbg !5806
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5807 dso_local i32 @device_attach(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5808 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_dev_assign_added(ptr noundef %dev, i1 noundef zeroext %added) #5 align 16 !dbg !5809 {
entry:
  %dev.addr = alloca ptr, align 8
  %added.addr = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5813, metadata !DIExpression()), !dbg !5815
  %frombool = zext i1 %added to i8
  store i8 %frombool, ptr %added.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %added.addr, metadata !5814, metadata !DIExpression()), !dbg !5816
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5817
  %priv_flags = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 66, !dbg !5818
  %1 = load i8, ptr %added.addr, align 1, !dbg !5819, !range !5820, !noundef !995
  %tobool = trunc i8 %1 to i1, !dbg !5819
  call void @assign_bit(i64 noundef 0, ptr noundef %priv_flags, i1 noundef zeroext %tobool) #17, !dbg !5821
  ret void, !dbg !5822
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_bus_add_devices(ptr noundef %bus) #0 align 16 !dbg !5823 {
entry:
  %bus.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %child = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__mptr24 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5827, metadata !DIExpression()), !dbg !5842
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5843
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5828, metadata !DIExpression()), !dbg !5844
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #16, !dbg !5845
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5829, metadata !DIExpression()), !dbg !5846
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5830, metadata !DIExpression()), !dbg !5847
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5847
  %devices = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3, !dbg !5847
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5847
  %1 = load ptr, ptr %next, align 8, !dbg !5847
  store ptr %1, ptr %__mptr, align 8, !dbg !5847
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5847
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5847
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5848
  %3 = load ptr, ptr %tmp, align 8, !dbg !5847
  store ptr %3, ptr %dev, align 8, !dbg !5848
  br label %for.cond, !dbg !5848

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dev, align 8, !dbg !5849
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 0, !dbg !5849
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5849
  %devices1 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3, !dbg !5849
  %cmp = icmp eq ptr %bus_list, %devices1, !dbg !5849
  %lnot = xor i1 %cmp, true, !dbg !5849
  br i1 %lnot, label %for.body, label %for.end, !dbg !5848

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dev, align 8, !dbg !5850
  %call = call zeroext i1 @pci_dev_is_added(ptr noundef %6) #17, !dbg !5853
  br i1 %call, label %if.then, label %if.end, !dbg !5854

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5855

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %dev, align 8, !dbg !5856
  call void @pci_bus_add_device(ptr noundef %7) #17, !dbg !5857
  br label %for.inc, !dbg !5858

for.inc:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !5859
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5833, metadata !DIExpression()), !dbg !5859
  %8 = load ptr, ptr %dev, align 8, !dbg !5859
  %bus_list3 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 0, !dbg !5859
  %next4 = getelementptr inbounds %struct.list_head, ptr %bus_list3, i32 0, i32 0, !dbg !5859
  %9 = load ptr, ptr %next4, align 8, !dbg !5859
  store ptr %9, ptr %__mptr2, align 8, !dbg !5859
  %10 = load ptr, ptr %__mptr2, align 8, !dbg !5859
  %add.ptr6 = getelementptr i8, ptr %10, i64 0, !dbg !5859
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5859
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !5849
  %11 = load ptr, ptr %tmp5, align 8, !dbg !5859
  store ptr %11, ptr %dev, align 8, !dbg !5849
  br label %for.cond, !dbg !5849, !llvm.loop !5860

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #16, !dbg !5862
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !5836, metadata !DIExpression()), !dbg !5862
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !5862
  %devices8 = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 3, !dbg !5862
  %next9 = getelementptr inbounds %struct.list_head, ptr %devices8, i32 0, i32 0, !dbg !5862
  %13 = load ptr, ptr %next9, align 8, !dbg !5862
  store ptr %13, ptr %__mptr7, align 8, !dbg !5862
  %14 = load ptr, ptr %__mptr7, align 8, !dbg !5862
  %add.ptr11 = getelementptr i8, ptr %14, i64 0, !dbg !5862
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !5862
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #16, !dbg !5863
  %15 = load ptr, ptr %tmp10, align 8, !dbg !5862
  store ptr %15, ptr %dev, align 8, !dbg !5863
  br label %for.cond12, !dbg !5863

for.cond12:                                       ; preds = %for.inc23, %for.end
  %16 = load ptr, ptr %dev, align 8, !dbg !5864
  %bus_list13 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 0, !dbg !5864
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !5864
  %devices14 = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 3, !dbg !5864
  %cmp15 = icmp eq ptr %bus_list13, %devices14, !dbg !5864
  %lnot16 = xor i1 %cmp15, true, !dbg !5864
  br i1 %lnot16, label %for.body17, label %for.end29, !dbg !5863

for.body17:                                       ; preds = %for.cond12
  %18 = load ptr, ptr %dev, align 8, !dbg !5865
  %call18 = call zeroext i1 @pci_dev_is_added(ptr noundef %18) #17, !dbg !5868
  br i1 %call18, label %if.end20, label %if.then19, !dbg !5869

if.then19:                                        ; preds = %for.body17
  br label %for.inc23, !dbg !5870

if.end20:                                         ; preds = %for.body17
  %19 = load ptr, ptr %dev, align 8, !dbg !5871
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 2, !dbg !5872
  %20 = load ptr, ptr %subordinate, align 8, !dbg !5872
  store ptr %20, ptr %child, align 8, !dbg !5873
  %21 = load ptr, ptr %child, align 8, !dbg !5874
  %tobool = icmp ne ptr %21, null, !dbg !5874
  br i1 %tobool, label %if.then21, label %if.end22, !dbg !5876

if.then21:                                        ; preds = %if.end20
  %22 = load ptr, ptr %child, align 8, !dbg !5877
  call void @pci_bus_add_devices(ptr noundef %22) #17, !dbg !5878
  br label %if.end22, !dbg !5878

if.end22:                                         ; preds = %if.then21, %if.end20
  br label %for.inc23, !dbg !5879

for.inc23:                                        ; preds = %if.end22, %if.then19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr24) #16, !dbg !5880
  call void @llvm.dbg.declare(metadata ptr %__mptr24, metadata !5839, metadata !DIExpression()), !dbg !5880
  %23 = load ptr, ptr %dev, align 8, !dbg !5880
  %bus_list25 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 0, !dbg !5880
  %next26 = getelementptr inbounds %struct.list_head, ptr %bus_list25, i32 0, i32 0, !dbg !5880
  %24 = load ptr, ptr %next26, align 8, !dbg !5880
  store ptr %24, ptr %__mptr24, align 8, !dbg !5880
  %25 = load ptr, ptr %__mptr24, align 8, !dbg !5880
  %add.ptr28 = getelementptr i8, ptr %25, i64 0, !dbg !5880
  store ptr %add.ptr28, ptr %tmp27, align 8, !dbg !5880
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr24) #16, !dbg !5864
  %26 = load ptr, ptr %tmp27, align 8, !dbg !5880
  store ptr %26, ptr %dev, align 8, !dbg !5864
  br label %for.cond12, !dbg !5864, !llvm.loop !5881

for.end29:                                        ; preds = %for.cond12
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #16, !dbg !5883
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5883
  ret void, !dbg !5883
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_dev_is_added(ptr noundef %dev) #5 align 16 !dbg !5884 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5890, metadata !DIExpression()), !dbg !5891
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5892
  %priv_flags = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 66, !dbg !5892
  %1 = ptrtoint ptr %priv_flags to i64, !dbg !5892
  %cmp = icmp ne i64 %1, 0, !dbg !5892
  %conv = zext i1 %cmp to i32, !dbg !5892
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5892
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !5892

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5892
  %priv_flags1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 66, !dbg !5892
  %4 = ptrtoint ptr %priv_flags1 to i64, !dbg !5892
  %cmp2 = icmp ne i64 %4, 0, !dbg !5892
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5892

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5892
  %priv_flags5 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 66, !dbg !5892
  %6 = load i64, ptr %priv_flags5, align 8, !dbg !5892
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5892
  br i1 %7, label %cond.true, label %cond.false, !dbg !5892

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5892
  %priv_flags6 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 66, !dbg !5892
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %priv_flags6) #17, !dbg !5892
  %conv7 = zext i1 %call to i32, !dbg !5892
  br label %cond.end, !dbg !5892

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5892
  %priv_flags8 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 66, !dbg !5892
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %priv_flags8) #17, !dbg !5892
  %conv10 = zext i1 %call9 to i32, !dbg !5892
  br label %cond.end, !dbg !5892

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !5892
  %tobool = icmp ne i32 %cond, 0, !dbg !5892
  ret i1 %tobool, !dbg !5893
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_walk_bus(ptr noundef %top, ptr noundef %cb, ptr noundef %userdata) #0 align 16 !dbg !5894 {
entry:
  %top.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %userdata.addr = alloca ptr, align 8
  store ptr %top, ptr %top.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %top.addr, metadata !5901, metadata !DIExpression()), !dbg !5904
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !5902, metadata !DIExpression()), !dbg !5905
  store ptr %userdata, ptr %userdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %userdata.addr, metadata !5903, metadata !DIExpression()), !dbg !5906
  %0 = load ptr, ptr %top.addr, align 8, !dbg !5907
  %1 = load ptr, ptr %cb.addr, align 8, !dbg !5908
  %2 = load ptr, ptr %userdata.addr, align 8, !dbg !5909
  call void @__pci_walk_bus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) #17, !dbg !5910
  ret void, !dbg !5911
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__pci_walk_bus(ptr noundef %top, ptr noundef %cb, ptr noundef %userdata, i1 noundef zeroext %locked) #0 align 16 !dbg !5912 {
entry:
  %top.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %userdata.addr = alloca ptr, align 8
  %locked.addr = alloca i8, align 1
  %dev = alloca ptr, align 8
  %bus = alloca ptr, align 8
  %next = alloca ptr, align 8
  %retval = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %top, ptr %top.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %top.addr, metadata !5916, metadata !DIExpression()), !dbg !5929
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !5917, metadata !DIExpression()), !dbg !5930
  store ptr %userdata, ptr %userdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %userdata.addr, metadata !5918, metadata !DIExpression()), !dbg !5931
  %frombool = zext i1 %locked to i8
  store i8 %frombool, ptr %locked.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %locked.addr, metadata !5919, metadata !DIExpression()), !dbg !5932
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5933
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5920, metadata !DIExpression()), !dbg !5934
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #16, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5921, metadata !DIExpression()), !dbg !5936
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !5937
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5922, metadata !DIExpression()), !dbg !5938
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval) #16, !dbg !5939
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5923, metadata !DIExpression()), !dbg !5940
  %0 = load ptr, ptr %top.addr, align 8, !dbg !5941
  store ptr %0, ptr %bus, align 8, !dbg !5942
  %1 = load i8, ptr %locked.addr, align 1, !dbg !5943, !range !5820, !noundef !995
  %tobool = trunc i8 %1 to i1, !dbg !5943
  br i1 %tobool, label %if.end, label %if.then, !dbg !5945

if.then:                                          ; preds = %entry
  call void @down_read(ptr noundef @pci_bus_sem) #17, !dbg !5946
  br label %if.end, !dbg !5946

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %top.addr, align 8, !dbg !5947
  %devices = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 3, !dbg !5948
  %next1 = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5949
  %3 = load ptr, ptr %next1, align 8, !dbg !5949
  store ptr %3, ptr %next, align 8, !dbg !5950
  br label %for.cond, !dbg !5951

for.cond:                                         ; preds = %if.end22, %if.end6, %if.end
  %4 = load ptr, ptr %next, align 8, !dbg !5952
  %5 = load ptr, ptr %bus, align 8, !dbg !5954
  %devices2 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3, !dbg !5955
  %cmp = icmp eq ptr %4, %devices2, !dbg !5956
  br i1 %cmp, label %if.then3, label %if.end10, !dbg !5957

if.then3:                                         ; preds = %for.cond
  %6 = load ptr, ptr %bus, align 8, !dbg !5958
  %7 = load ptr, ptr %top.addr, align 8, !dbg !5961
  %cmp4 = icmp eq ptr %6, %7, !dbg !5962
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5963

if.then5:                                         ; preds = %if.then3
  br label %for.end, !dbg !5964

if.end6:                                          ; preds = %if.then3
  %8 = load ptr, ptr %bus, align 8, !dbg !5965
  %self = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4, !dbg !5966
  %9 = load ptr, ptr %self, align 8, !dbg !5966
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 0, !dbg !5967
  %next7 = getelementptr inbounds %struct.list_head, ptr %bus_list, i32 0, i32 0, !dbg !5968
  %10 = load ptr, ptr %next7, align 8, !dbg !5968
  store ptr %10, ptr %next, align 8, !dbg !5969
  %11 = load ptr, ptr %bus, align 8, !dbg !5970
  %self8 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 4, !dbg !5971
  %12 = load ptr, ptr %self8, align 8, !dbg !5971
  %bus9 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 1, !dbg !5972
  %13 = load ptr, ptr %bus9, align 8, !dbg !5972
  store ptr %13, ptr %bus, align 8, !dbg !5973
  br label %for.cond, !dbg !5974, !llvm.loop !5975

if.end10:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5924, metadata !DIExpression()), !dbg !5978
  %14 = load ptr, ptr %next, align 8, !dbg !5978
  store ptr %14, ptr %__mptr, align 8, !dbg !5978
  %15 = load ptr, ptr %__mptr, align 8, !dbg !5978
  %add.ptr = getelementptr i8, ptr %15, i64 0, !dbg !5978
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5978
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5979
  %16 = load ptr, ptr %tmp, align 8, !dbg !5978
  store ptr %16, ptr %dev, align 8, !dbg !5980
  %17 = load ptr, ptr %dev, align 8, !dbg !5981
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 2, !dbg !5983
  %18 = load ptr, ptr %subordinate, align 8, !dbg !5983
  %tobool11 = icmp ne ptr %18, null, !dbg !5981
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !5984

if.then12:                                        ; preds = %if.end10
  %19 = load ptr, ptr %dev, align 8, !dbg !5985
  %subordinate13 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 2, !dbg !5987
  %20 = load ptr, ptr %subordinate13, align 8, !dbg !5987
  %devices14 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 3, !dbg !5988
  %next15 = getelementptr inbounds %struct.list_head, ptr %devices14, i32 0, i32 0, !dbg !5989
  %21 = load ptr, ptr %next15, align 8, !dbg !5989
  store ptr %21, ptr %next, align 8, !dbg !5990
  %22 = load ptr, ptr %dev, align 8, !dbg !5991
  %subordinate16 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 2, !dbg !5992
  %23 = load ptr, ptr %subordinate16, align 8, !dbg !5992
  store ptr %23, ptr %bus, align 8, !dbg !5993
  br label %if.end19, !dbg !5994

if.else:                                          ; preds = %if.end10
  %24 = load ptr, ptr %dev, align 8, !dbg !5995
  %bus_list17 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 0, !dbg !5996
  %next18 = getelementptr inbounds %struct.list_head, ptr %bus_list17, i32 0, i32 0, !dbg !5997
  %25 = load ptr, ptr %next18, align 8, !dbg !5997
  store ptr %25, ptr %next, align 8, !dbg !5998
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12
  %26 = load ptr, ptr %cb.addr, align 8, !dbg !5999
  %27 = load ptr, ptr %dev, align 8, !dbg !6000
  %28 = load ptr, ptr %userdata.addr, align 8, !dbg !6001
  %call = call i32 %26(ptr noundef %27, ptr noundef %28) #17, !dbg !5999
  store i32 %call, ptr %retval, align 4, !dbg !6002
  %29 = load i32, ptr %retval, align 4, !dbg !6003
  %tobool20 = icmp ne i32 %29, 0, !dbg !6003
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6005

if.then21:                                        ; preds = %if.end19
  br label %for.end, !dbg !6006

if.end22:                                         ; preds = %if.end19
  br label %for.cond, !dbg !6007, !llvm.loop !5975

for.end:                                          ; preds = %if.then21, %if.then5
  %30 = load i8, ptr %locked.addr, align 1, !dbg !6008, !range !5820, !noundef !995
  %tobool23 = trunc i8 %30 to i1, !dbg !6008
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !6010

if.then24:                                        ; preds = %for.end
  call void @up_read(ptr noundef @pci_bus_sem) #17, !dbg !6011
  br label %if.end25, !dbg !6011

if.end25:                                         ; preds = %if.then24, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval) #16, !dbg !6012
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !6012
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #16, !dbg !6012
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !6012
  ret void, !dbg !6012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_walk_bus_locked(ptr noundef %top, ptr noundef %cb, ptr noundef %userdata) #0 align 16 !dbg !6013 {
entry:
  %top.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %userdata.addr = alloca ptr, align 8
  store ptr %top, ptr %top.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %top.addr, metadata !6015, metadata !DIExpression()), !dbg !6018
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !6016, metadata !DIExpression()), !dbg !6019
  store ptr %userdata, ptr %userdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %userdata.addr, metadata !6017, metadata !DIExpression()), !dbg !6020
  br label %do.body, !dbg !6021

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6022

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %top.addr, align 8, !dbg !6024
  %1 = load ptr, ptr %cb.addr, align 8, !dbg !6025
  %2 = load ptr, ptr %userdata.addr, align 8, !dbg !6026
  call void @__pci_walk_bus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) #17, !dbg !6027
  ret void, !dbg !6028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_bus_get(ptr noundef %bus) #0 align 16 !dbg !6029 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6033, metadata !DIExpression()), !dbg !6034
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6035
  %tobool = icmp ne ptr %0, null, !dbg !6035
  br i1 %tobool, label %if.then, label %if.end, !dbg !6037

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !6038
  %dev = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 20, !dbg !6039
  %call = call ptr @get_device(ptr noundef %dev) #17, !dbg !6040
  br label %if.end, !dbg !6040

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !6041
  ret ptr %2, !dbg !6042
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6043 dso_local ptr @get_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_bus_put(ptr noundef %bus) #0 align 16 !dbg !6046 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6050
  %tobool = icmp ne ptr %0, null, !dbg !6050
  br i1 %tobool, label %if.then, label %if.end, !dbg !6052

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !6053
  %dev = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 20, !dbg !6054
  call void @put_device(ptr noundef %dev) #17, !dbg !6055
  br label %if.end, !dbg !6055

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6056
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6057 dso_local void @put_device(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6058 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6060, metadata !DIExpression()), !dbg !6065
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6061, metadata !DIExpression()), !dbg !6066
  %0 = load i64, ptr %size.addr, align 8, !dbg !6067
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6068
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6069

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6070
  %tobool = icmp ne i64 %2, 0, !dbg !6070
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6071

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6072
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6062, metadata !DIExpression()), !dbg !6073
  %3 = load i64, ptr %size.addr, align 8, !dbg !6074
  %cmp = icmp ugt i64 %3, 8192, !dbg !6076
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6077

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6078
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6079
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6080
  store ptr %call, ptr %retval, align 8, !dbg !6081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6081

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6082
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6082
  store i32 %call2, ptr %index, align 4, !dbg !6083
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6084
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6085
  %9 = ptrtoint ptr %8 to i64, !dbg !6085
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6086
  %idxprom = zext i32 %call3 to i64, !dbg !6087
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6087
  %10 = load i32, ptr %index, align 4, !dbg !6088
  %idxprom4 = zext i32 %10 to i64, !dbg !6087
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6087
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6087
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6089
  %13 = load i64, ptr %size.addr, align 8, !dbg !6090
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6091
  store ptr %call6, ptr %retval, align 8, !dbg !6092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6092

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6093
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6094
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6095
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6096
  store ptr %call8, ptr %retval, align 8, !dbg !6097
  br label %return, !dbg !6097

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6098
  ret ptr %16, !dbg !6098
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6099 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6100 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6104, metadata !DIExpression()), !dbg !6106
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6105, metadata !DIExpression()), !dbg !6107
  %0 = load i64, ptr %size.addr, align 8, !dbg !6108
  %tobool = icmp ne i64 %0, 0, !dbg !6108
  br i1 %tobool, label %if.end, label %if.then, !dbg !6110

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6111
  br label %return, !dbg !6111

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6112
  %cmp = icmp ule i64 %1, 8, !dbg !6114
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6115

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6116
  br label %return, !dbg !6116

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6117
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6119
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6120

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6121
  %cmp4 = icmp ule i64 %3, 96, !dbg !6122
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6123

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6124
  br label %return, !dbg !6124

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6125
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6127
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6128

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6129
  %cmp9 = icmp ule i64 %5, 192, !dbg !6130
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6131

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6132
  br label %return, !dbg !6132

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6133
  %cmp12 = icmp ule i64 %6, 8, !dbg !6135
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6136

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6137
  br label %return, !dbg !6137

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6138
  %cmp15 = icmp ule i64 %7, 16, !dbg !6140
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6141

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6142
  br label %return, !dbg !6142

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6143
  %cmp18 = icmp ule i64 %8, 32, !dbg !6145
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6146

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6147
  br label %return, !dbg !6147

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6148
  %cmp21 = icmp ule i64 %9, 64, !dbg !6150
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6151

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6152
  br label %return, !dbg !6152

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6153
  %cmp24 = icmp ule i64 %10, 128, !dbg !6155
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6156

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6157
  br label %return, !dbg !6157

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6158
  %cmp27 = icmp ule i64 %11, 256, !dbg !6160
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6161

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6162
  br label %return, !dbg !6162

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6163
  %cmp30 = icmp ule i64 %12, 512, !dbg !6165
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6166

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6167
  br label %return, !dbg !6167

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6168
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6170
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6171

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6172
  br label %return, !dbg !6172

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6173
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6175
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6176

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6177
  br label %return, !dbg !6177

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6178
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6180
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6181

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6182
  br label %return, !dbg !6182

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6183
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6185
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6186

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6187
  br label %return, !dbg !6187

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6188
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6190
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6191

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6192
  br label %return, !dbg !6192

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6193
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6195
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6196

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6197
  br label %return, !dbg !6197

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6198
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6200
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6201

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6202
  br label %return, !dbg !6202

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6203
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6205
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6206

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6207
  br label %return, !dbg !6207

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6208
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6210
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6211

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6212
  br label %return, !dbg !6212

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6213
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6215
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6216

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6217
  br label %return, !dbg !6217

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6218
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6220
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6221

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6222
  br label %return, !dbg !6222

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6223
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6225
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6226

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6227
  br label %return, !dbg !6227

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6228, !range !5820, !noundef !995
  %tobool69 = trunc i8 %25 to i1, !dbg !6228
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6230

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6231

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #21, !dbg !6232, !srcloc !6235
  unreachable, !dbg !6232

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6236

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6237

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6238

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6240

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6238

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #16, !dbg !6242, !srcloc !6244
  br label %do.end75, !dbg !6242

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6238

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6245
  br label %return, !dbg !6245

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6246
  ret i32 %26, !dbg !6246
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6247 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6253 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6257, metadata !DIExpression()), !dbg !6259
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6258, metadata !DIExpression()), !dbg !6260
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6261
  %and = and i32 %0, 17, !dbg !6261
  %cmp = icmp eq i32 %and, 0, !dbg !6261
  %lnot = xor i1 %cmp, true, !dbg !6261
  %lnot1 = xor i1 %lnot, true, !dbg !6261
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6261
  %conv = sext i32 %lnot.ext to i64, !dbg !6261
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6261
  %tobool = icmp ne i64 %expval, 0, !dbg !6261
  br i1 %tobool, label %if.then, label %if.end, !dbg !6263

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6264
  br label %return, !dbg !6264

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6265
  %and2 = and i32 %1, 1, !dbg !6267
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6267
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6268

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6269
  br label %return, !dbg !6269

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6270
  br label %return, !dbg !6270

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6272
  ret i32 %2, !dbg !6272
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6273 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6274 dso_local void @__compiletime_assert_204() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6275 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6279, metadata !DIExpression()), !dbg !6282
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6280, metadata !DIExpression()), !dbg !6283
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6281, metadata !DIExpression()), !dbg !6284
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6285
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6287
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6288
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6289
  br i1 %call, label %if.end, label %if.then, !dbg !6290

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6291

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6292
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6293
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6294
  store ptr %3, ptr %prev1, align 8, !dbg !6295
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6296
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6297
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6298
  store ptr %5, ptr %next2, align 8, !dbg !6299
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6300
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6301
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6302
  store ptr %7, ptr %prev3, align 8, !dbg !6303
  br label %do.body, !dbg !6304

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6305

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6307

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6305

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6309
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6309
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6309
  store volatile ptr %9, ptr %next6, align 8, !dbg !6309
  br label %do.end7, !dbg !6309

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6305

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6311
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6312 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6316, metadata !DIExpression()), !dbg !6319
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6317, metadata !DIExpression()), !dbg !6320
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6318, metadata !DIExpression()), !dbg !6321
  ret i1 true, !dbg !6322
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !6323 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6325, metadata !DIExpression()), !dbg !6326
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6327
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6329
  br i1 %call, label %if.end, label %if.then, !dbg !6330

if.then:                                          ; preds = %entry
  br label %return, !dbg !6331

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6332
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6333
  %2 = load ptr, ptr %prev, align 8, !dbg !6333
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6334
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6335
  %4 = load ptr, ptr %next, align 8, !dbg !6335
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6336
  br label %return, !dbg !6337

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !6338 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6342, metadata !DIExpression()), !dbg !6343
  ret i1 true, !dbg !6344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6345 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6347, metadata !DIExpression()), !dbg !6349
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6348, metadata !DIExpression()), !dbg !6350
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6351
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6352
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6353
  store ptr %0, ptr %prev1, align 8, !dbg !6354
  br label %do.body, !dbg !6355

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6356

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6358

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6356

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6360
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6360
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6360
  store volatile ptr %2, ptr %next4, align 8, !dbg !6360
  br label %do.end5, !dbg !6360

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6356

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6362
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_clip_resource_to_region(ptr noundef %bus, ptr noundef %res, ptr noundef %region) #0 align 16 !dbg !6363 {
entry:
  %bus.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  %r = alloca %struct.pci_bus_region, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6367, metadata !DIExpression()), !dbg !6371
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6368, metadata !DIExpression()), !dbg !6372
  store ptr %region, ptr %region.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !6369, metadata !DIExpression()), !dbg !6373
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16, !dbg !6374
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6370, metadata !DIExpression()), !dbg !6375
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6376
  %1 = load ptr, ptr %res.addr, align 8, !dbg !6377
  call void @pcibios_resource_to_bus(ptr noundef %0, ptr noundef %r, ptr noundef %1) #17, !dbg !6378
  %start = getelementptr inbounds %struct.pci_bus_region, ptr %r, i32 0, i32 0, !dbg !6379
  %2 = load i64, ptr %start, align 8, !dbg !6379
  %3 = load ptr, ptr %region.addr, align 8, !dbg !6381
  %start1 = getelementptr inbounds %struct.pci_bus_region, ptr %3, i32 0, i32 0, !dbg !6382
  %4 = load i64, ptr %start1, align 8, !dbg !6382
  %cmp = icmp ult i64 %2, %4, !dbg !6383
  br i1 %cmp, label %if.then, label %if.end, !dbg !6384

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %region.addr, align 8, !dbg !6385
  %start2 = getelementptr inbounds %struct.pci_bus_region, ptr %5, i32 0, i32 0, !dbg !6386
  %6 = load i64, ptr %start2, align 8, !dbg !6386
  %start3 = getelementptr inbounds %struct.pci_bus_region, ptr %r, i32 0, i32 0, !dbg !6387
  store i64 %6, ptr %start3, align 8, !dbg !6388
  br label %if.end, !dbg !6389

if.end:                                           ; preds = %if.then, %entry
  %end = getelementptr inbounds %struct.pci_bus_region, ptr %r, i32 0, i32 1, !dbg !6390
  %7 = load i64, ptr %end, align 8, !dbg !6390
  %8 = load ptr, ptr %region.addr, align 8, !dbg !6392
  %end4 = getelementptr inbounds %struct.pci_bus_region, ptr %8, i32 0, i32 1, !dbg !6393
  %9 = load i64, ptr %end4, align 8, !dbg !6393
  %cmp5 = icmp ugt i64 %7, %9, !dbg !6394
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !6395

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %region.addr, align 8, !dbg !6396
  %end7 = getelementptr inbounds %struct.pci_bus_region, ptr %10, i32 0, i32 1, !dbg !6397
  %11 = load i64, ptr %end7, align 8, !dbg !6397
  %end8 = getelementptr inbounds %struct.pci_bus_region, ptr %r, i32 0, i32 1, !dbg !6398
  store i64 %11, ptr %end8, align 8, !dbg !6399
  br label %if.end9, !dbg !6400

if.end9:                                          ; preds = %if.then6, %if.end
  %end10 = getelementptr inbounds %struct.pci_bus_region, ptr %r, i32 0, i32 1, !dbg !6401
  %12 = load i64, ptr %end10, align 8, !dbg !6401
  %start11 = getelementptr inbounds %struct.pci_bus_region, ptr %r, i32 0, i32 0, !dbg !6403
  %13 = load i64, ptr %start11, align 8, !dbg !6403
  %cmp12 = icmp ult i64 %12, %13, !dbg !6404
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !6405

if.then13:                                        ; preds = %if.end9
  %14 = load ptr, ptr %res.addr, align 8, !dbg !6406
  %start14 = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 0, !dbg !6407
  %15 = load i64, ptr %start14, align 8, !dbg !6407
  %sub = sub i64 %15, 1, !dbg !6408
  %16 = load ptr, ptr %res.addr, align 8, !dbg !6409
  %end15 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1, !dbg !6410
  store i64 %sub, ptr %end15, align 8, !dbg !6411
  br label %if.end16, !dbg !6409

if.else:                                          ; preds = %if.end9
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !6412
  %18 = load ptr, ptr %res.addr, align 8, !dbg !6413
  call void @pcibios_bus_to_resource(ptr noundef %17, ptr noundef %18, ptr noundef %r) #17, !dbg !6414
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16, !dbg !6415
  ret void, !dbg !6415
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6416 dso_local i32 @allocate_resource(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6419 dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6422 dso_local void @pcibios_bus_to_resource(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @assign_bit(i64 noundef %nr, ptr noundef %addr, i1 noundef zeroext %value) #11 align 16 !dbg !6423 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %value.addr = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6430, metadata !DIExpression()), !dbg !6433
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6431, metadata !DIExpression()), !dbg !6434
  %frombool = zext i1 %value to i8
  store i8 %frombool, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6432, metadata !DIExpression()), !dbg !6435
  %0 = load i8, ptr %value.addr, align 1, !dbg !6436, !range !5820, !noundef !995
  %tobool = trunc i8 %0 to i1, !dbg !6436
  br i1 %tobool, label %if.then, label %if.else, !dbg !6438

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6439
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6440
  call void @set_bit(i64 noundef %1, ptr noundef %2) #17, !dbg !6441
  br label %if.end, !dbg !6441

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6442
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !6443
  call void @clear_bit(i64 noundef %3, ptr noundef %4) #17, !dbg !6444
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6445
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6446 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6451, metadata !DIExpression()), !dbg !6453
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6452, metadata !DIExpression()), !dbg !6454
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6455
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6456
  %div = sdiv i64 %1, 64, !dbg !6456
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6457
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6458
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6459
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6460
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6461
  ret void, !dbg !6462
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6463 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6465, metadata !DIExpression()), !dbg !6467
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6466, metadata !DIExpression()), !dbg !6468
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6469
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6470
  %div = sdiv i64 %1, 64, !dbg !6470
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6471
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6472
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6473
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6474
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6475
  ret void, !dbg !6476
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !6477 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6485, metadata !DIExpression()), !dbg !6487
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6486, metadata !DIExpression()), !dbg !6488
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6489
  %1 = load i64, ptr %size.addr, align 8, !dbg !6490
  %conv = trunc i64 %1 to i32, !dbg !6490
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6491
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6492
  %3 = load i64, ptr %size.addr, align 8, !dbg !6492
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6492
  ret void, !dbg !6493
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6494 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6497, metadata !DIExpression()), !dbg !6499
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6498, metadata !DIExpression()), !dbg !6500
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6501
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6503
  br i1 %1, label %if.then, label %if.else, !dbg !6504

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6505
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6505
  %shr = ashr i64 %3, 3, !dbg !6505
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6505
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6507
  %and = and i64 %4, 7, !dbg !6507
  %sh_prom = trunc i64 %and to i32, !dbg !6507
  %shl = shl i32 1, %sh_prom, !dbg !6507
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !6508, !srcloc !6509
  br label %if.end, !dbg !6510

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6511
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6513
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !6514, !srcloc !6515
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6516
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6517 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6522, metadata !DIExpression()), !dbg !6524
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6523, metadata !DIExpression()), !dbg !6525
  ret i1 true, !dbg !6526
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6527 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6532, metadata !DIExpression()), !dbg !6535
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6533, metadata !DIExpression()), !dbg !6536
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6534, metadata !DIExpression()), !dbg !6537
  ret void, !dbg !6538
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6539 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6541, metadata !DIExpression()), !dbg !6543
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6542, metadata !DIExpression()), !dbg !6544
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6545
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6547
  br i1 %1, label %if.then, label %if.else, !dbg !6548

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6549
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6549
  %shr = ashr i64 %3, 3, !dbg !6549
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6549
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6551
  %and = and i64 %4, 7, !dbg !6551
  %sh_prom = trunc i64 %and to i32, !dbg !6551
  %shl = shl i32 1, %sh_prom, !dbg !6551
  %not = xor i32 %shl, -1, !dbg !6552
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #16, !dbg !6553, !srcloc !6554
  br label %if.end, !dbg !6555

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6556
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6558
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !6559, !srcloc !6560
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6561
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6562 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6569, metadata !DIExpression()), !dbg !6574
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6570, metadata !DIExpression()), !dbg !6575
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6576
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6571, metadata !DIExpression()), !dbg !6577
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6578
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6579
  %div = udiv i64 %1, 64, !dbg !6579
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6580
  store ptr %add.ptr, ptr %p, align 8, !dbg !6577
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !6581
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6572, metadata !DIExpression()), !dbg !6582
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6583
  %rem = urem i64 %2, 64, !dbg !6583
  %shl = shl i64 1, %rem, !dbg !6583
  store i64 %shl, ptr %mask, align 8, !dbg !6582
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !6584
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6573, metadata !DIExpression()), !dbg !6585
  %3 = load ptr, ptr %p, align 8, !dbg !6586
  %4 = load i64, ptr %3, align 8, !dbg !6587
  store i64 %4, ptr %val, align 8, !dbg !6585
  %5 = load i64, ptr %val, align 8, !dbg !6588
  %6 = load i64, ptr %mask, align 8, !dbg !6589
  %and = and i64 %5, %6, !dbg !6590
  %tobool = icmp ne i64 %and, 0, !dbg !6591
  %lnot = xor i1 %tobool, true, !dbg !6591
  %lnot1 = xor i1 %lnot, true, !dbg !6592
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !6593
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !6593
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6593
  ret i1 %lnot1, !dbg !6594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6595 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6598, metadata !DIExpression()), !dbg !6600
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6599, metadata !DIExpression()), !dbg !6601
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6602
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6603
  %div = udiv i64 %1, 64, !dbg !6603
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6604
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6605
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6606
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6607
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6608
  ret i1 %call, !dbg !6609
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !6610 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6612, metadata !DIExpression()), !dbg !6614
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6613, metadata !DIExpression()), !dbg !6615
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6616
  %1 = load i64, ptr %size.addr, align 8, !dbg !6617
  %conv = trunc i64 %1 to i32, !dbg !6617
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6618
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6619
  %3 = load i64, ptr %size.addr, align 8, !dbg !6619
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6619
  ret void, !dbg !6620
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6621 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6623, metadata !DIExpression()), !dbg !6625
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6624, metadata !DIExpression()), !dbg !6626
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6627
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6628
  br i1 %1, label %cond.true, label %cond.false, !dbg !6628

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6629
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6630
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6631
  %conv = zext i1 %call to i32, !dbg !6631
  br label %cond.end, !dbg !6628

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6632
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6633
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !6634
  %conv2 = zext i1 %call1 to i32, !dbg !6634
  br label %cond.end, !dbg !6628

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6628
  %tobool = icmp ne i32 %cond, 0, !dbg !6628
  ret i1 %tobool, !dbg !6635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6636 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6638, metadata !DIExpression()), !dbg !6640
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6639, metadata !DIExpression()), !dbg !6641
  ret i1 true, !dbg !6642
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6643 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6647, metadata !DIExpression()), !dbg !6649
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6648, metadata !DIExpression()), !dbg !6650
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6651
  %and = and i64 %0, 63, !dbg !6652
  %shl = shl i64 1, %and, !dbg !6653
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6654
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6655
  %shr = ashr i64 %2, 6, !dbg !6656
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6654
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6654
  %and1 = and i64 %shl, %3, !dbg !6657
  %cmp = icmp ne i64 %and1, 0, !dbg !6658
  ret i1 %cmp, !dbg !6659
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #11 align 16 !dbg !6660 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6662, metadata !DIExpression()), !dbg !6665
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6663, metadata !DIExpression()), !dbg !6666
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !6667
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6664, metadata !DIExpression()), !dbg !6668
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6669
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6670
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6671, !srcloc !6672
  %3 = icmp ult i8 %2, 2, !dbg !6671
  call void @llvm.assume(i1 %3), !dbg !6671
  store i8 %2, ptr %oldbit, align 1, !dbg !6671
  %4 = load i8, ptr %oldbit, align 1, !dbg !6673, !range !5820, !noundef !995
  %tobool = trunc i8 %4 to i1, !dbg !6673
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !6674
  ret i1 %tobool, !dbg !6675
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6676 dso_local void @down_read(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6680 dso_local void @up_read(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018}
!llvm.ident = !{!5019}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/pci/bus.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "541168fd473c843ce3645154a538081a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_add_resource_offset292", scope: !9, file: !2, line: 34, type: !180, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/.bus.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/bus\22 -D KBUILD_BASENAME=\22bus\22 -D KBUILD_MODNAME=\22bus\22 -D __KBUILD_MODNAME=kmod_bus -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/bus.ll drivers/pci/bus.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !179, globals: !4964, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !30, !35, !43, !59, !67, !73, !80, !87, !93, !100, !108, !116, !122, !131, !136, !141, !147, !153, !158, !169}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !13, size: 32, elements: !102)
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
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !117, line: 30, baseType: !13, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!120 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!121 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !13, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !13, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !13, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !13, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !148, line: 45, baseType: !13, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!151 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!152 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 10, baseType: !13, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!155 = !{!156, !157}
!156 = !DIEnumerator(name: "false", value: 0)
!157 = !DIEnumerator(name: "true", value: 1)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_fixup_pass", file: !159, line: 2147, baseType: !13, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168}
!161 = !DIEnumerator(name: "pci_fixup_early", value: 0)
!162 = !DIEnumerator(name: "pci_fixup_header", value: 1)
!163 = !DIEnumerator(name: "pci_fixup_final", value: 2)
!164 = !DIEnumerator(name: "pci_fixup_enable", value: 3)
!165 = !DIEnumerator(name: "pci_fixup_resume", value: 4)
!166 = !DIEnumerator(name: "pci_fixup_suspend", value: 5)
!167 = !DIEnumerator(name: "pci_fixup_resume_early", value: 6)
!168 = !DIEnumerator(name: "pci_fixup_suspend_late", value: 7)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !170, line: 364, baseType: !13, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!171 = !{!172, !173, !174, !175, !176, !177, !178}
!172 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!173 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!174 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!175 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!176 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!177 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!178 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!179 = !{!180, !181, !183, !216, !224, !210, !4955, !4957, !4958, !4960, !4962, !4963, !1057}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !182, line: 154, baseType: !13)
!182 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_resource", file: !159, line: 639, size: 256, elements: !185)
!185 = !{!186, !192, !215}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !184, file: !159, line: 640, baseType: !187, size: 128)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !182, line: 190, size: 128, elements: !188)
!188 = !{!189, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !182, line: 191, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !187, file: !182, line: 191, baseType: !190, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !184, file: !159, line: 641, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !195, line: 21, size: 512, elements: !196)
!195 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!196 = !{!197, !205, !206, !209, !211, !212, !213, !214}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !194, file: !195, line: 22, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !182, line: 164, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !182, line: 159, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !201, line: 23, baseType: !202)
!201 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !203, line: 31, baseType: !204)
!203 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!204 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !194, file: !195, line: 23, baseType: !198, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !195, line: 24, baseType: !207, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !195, line: 25, baseType: !210, size: 64, offset: 192)
!210 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !194, file: !195, line: 26, baseType: !210, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !194, file: !195, line: 27, baseType: !193, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !194, file: !195, line: 27, baseType: !193, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !194, file: !195, line: 27, baseType: !193, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !159, line: 642, baseType: !13, size: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !218, line: 23, size: 768, elements: !219)
!218 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38257f3d7ebf1230f659bba39b1a0b6a")
!219 = !{!220, !221, !222, !223}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !217, file: !218, line: 24, baseType: !187, size: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !217, file: !218, line: 25, baseType: !193, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !217, file: !218, line: 26, baseType: !198, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !217, file: !218, line: 27, baseType: !194, size: 512, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !159, line: 322, size: 16640, elements: !226)
!226 = !{!227, !228, !4701, !4702, !4703, !4704, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4815, !4816, !4817, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4894, !4895, !4896, !4898, !4899, !4901, !4902, !4903, !4904, !4910, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !225, file: !159, line: 323, baseType: !187, size: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !225, file: !159, line: 324, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !159, line: 647, size: 8256, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !242, !243, !244, !271, !272, !276, !278, !279, !280, !281, !285, !287, !289, !4696, !4697, !4698, !4699, !4700}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !230, file: !159, line: 648, baseType: !187, size: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !230, file: !159, line: 649, baseType: !229, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !230, file: !159, line: 650, baseType: !187, size: 128, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !230, file: !159, line: 651, baseType: !187, size: 128, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !230, file: !159, line: 652, baseType: !224, size: 64, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !230, file: !159, line: 653, baseType: !187, size: 128, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !230, file: !159, line: 655, baseType: !239, size: 256, offset: 640)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 256, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 4)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !230, file: !159, line: 656, baseType: !187, size: 128, offset: 896)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !230, file: !159, line: 657, baseType: !194, size: 512, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !230, file: !159, line: 659, baseType: !245, size: 64, offset: 1536)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !159, line: 773, size: 320, elements: !247)
!247 = !{!248, !252, !256, !260, !267}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !246, file: !159, line: 774, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!109, !229}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !246, file: !159, line: 775, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !229}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !246, file: !159, line: 776, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!180, !229, !13, !109}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !246, file: !159, line: 777, baseType: !261, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!109, !229, !13, !109, !109, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !201, line: 21, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !203, line: 27, baseType: !13)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !246, file: !159, line: 778, baseType: !268, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!109, !229, !13, !109, !109, !265}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !230, file: !159, line: 660, baseType: !180, size: 64, offset: 1600)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !230, file: !159, line: 661, baseType: !273, size: 64, offset: 1664)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !275, line: 131, flags: DIFlagFwdDecl)
!275 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!276 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !230, file: !159, line: 663, baseType: !277, size: 8, offset: 1728)
!277 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !230, file: !159, line: 664, baseType: !277, size: 8, offset: 1736)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !230, file: !159, line: 665, baseType: !277, size: 8, offset: 1744)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !230, file: !159, line: 666, baseType: !277, size: 8, offset: 1752)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !159, line: 671, baseType: !282, size: 384, offset: 1760)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 48)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !230, file: !159, line: 673, baseType: !286, size: 16, offset: 2144)
!286 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !230, file: !159, line: 674, baseType: !288, size: 16, offset: 2160)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !159, line: 255, baseType: !286)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !230, file: !159, line: 675, baseType: !290, size: 64, offset: 2176)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !292)
!292 = !{!293, !4216, !4217, !4220, !4221, !4274, !4359, !4360, !4361, !4362, !4363, !4370, !4462, !4475, !4485, !4489, !4491, !4492, !4493, !4497, !4504, !4505, !4508, !4511, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4673, !4674, !4675, !4678, !4681, !4690, !4691, !4692, !4693, !4694, !4695}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !291, file: !94, line: 706, baseType: !294, size: 512)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !295, line: 64, size: 512, elements: !296)
!295 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!296 = !{!297, !298, !299, !301, !386, !4103, !4206, !4211, !4212, !4213, !4214, !4215}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !295, line: 65, baseType: !207, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !294, file: !295, line: 66, baseType: !187, size: 128, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !294, file: !295, line: 67, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !294, file: !295, line: 68, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !295, line: 168, size: 768, elements: !304)
!304 = !{!305, !306, !345, !346}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !303, file: !295, line: 169, baseType: !187, size: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !303, file: !295, line: 170, baseType: !307, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !308, line: 29, baseType: !309)
!308 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !308, line: 17, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !308, line: 18, baseType: !312, size: 32)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !308, line: 18, size: 32, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !312, file: !308, line: 19, baseType: !315, size: 32)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !316, line: 14, size: 32, elements: !317)
!316 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !315, file: !316, line: 15, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !320, line: 44, baseType: !321)
!320 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !320, line: 14, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !320, line: 15, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !320, line: 15, size: 32, elements: !325)
!325 = !{!326, !331, !338}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !324, file: !320, line: 16, baseType: !327, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !182, line: 174, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 172, size: 32, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !328, file: !182, line: 173, baseType: !109, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !320, line: 24, baseType: !332, size: 16)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !320, line: 24, size: 16, elements: !333)
!333 = !{!334, !337}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !332, file: !320, line: 25, baseType: !335, size: 8)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !201, line: 17, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !203, line: 21, baseType: !277)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !332, file: !320, line: 26, baseType: !335, size: 8, offset: 8)
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !320, line: 28, baseType: !339, size: 32)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !320, line: 28, size: 32, elements: !340)
!340 = !{!341, !344}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !339, file: !320, line: 29, baseType: !342, size: 16)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !201, line: 19, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !203, line: 24, baseType: !286)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !339, file: !320, line: 30, baseType: !342, size: 16, offset: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !303, file: !295, line: 171, baseType: !294, size: 512, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !303, file: !295, line: 172, baseType: !347, size: 64, offset: 704)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !295, line: 133, size: 192, elements: !350)
!350 = !{!351, !358, !363}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !349, file: !295, line: 134, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!109, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !295, line: 135, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!207, !356}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !349, file: !295, line: 136, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!109, !356, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !295, line: 125, size: 20736, elements: !370)
!370 = !{!371, !376, !380, !381, !385}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !369, file: !295, line: 126, baseType: !372, size: 192)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 192, elements: !374)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!374 = !{!375}
!375 = !DISubrange(count: 3)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !369, file: !295, line: 127, baseType: !377, size: 4096, offset: 192)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 4096, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !369, file: !295, line: 128, baseType: !109, size: 32, offset: 4288)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !369, file: !295, line: 129, baseType: !382, size: 16384, offset: 4320)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 2048)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !369, file: !295, line: 130, baseType: !109, size: 32, offset: 20704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !294, file: !295, line: 69, baseType: !387, size: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !295, line: 116, size: 384, elements: !390)
!390 = !{!391, !395, !423, !4065, !4093, !4097}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !389, file: !295, line: 117, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !300}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !389, file: !295, line: 118, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !399, line: 254, size: 128, elements: !400)
!399 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!400 = !{!401, !416}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !398, file: !399, line: 255, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!405, !300, !410, !373}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !182, line: 66, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !407, line: 73, baseType: !408)
!407 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !407, line: 15, baseType: !409)
!409 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !399, line: 30, size: 128, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !411, file: !399, line: 31, baseType: !207, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !411, file: !399, line: 32, baseType: !415, size: 16, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !182, line: 24, baseType: !286)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !398, file: !399, line: 256, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!405, !300, !410, !207, !420}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 61, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !407, line: 72, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !407, line: 16, baseType: !210)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !389, file: !295, line: 119, baseType: !424, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !399, line: 84, size: 320, elements: !428)
!428 = !{!429, !430, !434, !4061, !4063}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !427, file: !399, line: 85, baseType: !207, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !427, file: !399, line: 86, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!415, !300, !410, !109}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !427, file: !399, line: 88, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!415, !300, !438, !109}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !399, line: 175, size: 512, elements: !440)
!440 = !{!441, !442, !443, !444, !4052, !4056, !4057}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !439, file: !399, line: 176, baseType: !411, size: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !439, file: !399, line: 177, baseType: !420, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !439, file: !399, line: 178, baseType: !180, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !439, file: !399, line: 179, baseType: !445, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !450)
!450 = !{!451, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !4046, !4047, !4048, !4049, !4050, !4051}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !449, file: !20, line: 473, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !454)
!454 = !{!455, !456, !457, !465, !466, !473, !474, !477, !478, !3825, !3826, !3827, !3828, !3829, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3869, !3872, !3873, !3874, !3883, !3884, !3885, !3886}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !453, file: !20, line: 642, baseType: !415, size: 16)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !453, file: !20, line: 643, baseType: !286, size: 16, offset: 16)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !453, file: !20, line: 644, baseType: !458, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !459, line: 23, baseType: !460)
!459 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 21, size: 32, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !460, file: !459, line: 22, baseType: !463, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !182, line: 37, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !407, line: 49, baseType: !13)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !453, file: !20, line: 645, baseType: !187, size: 128, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !453, file: !20, line: 646, baseType: !467, size: 32, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !459, line: 28, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 26, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !468, file: !459, line: 27, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !182, line: 38, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !407, line: 50, baseType: !13)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !453, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !453, file: !20, line: 650, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !453, file: !20, line: 651, baseType: !475, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !453, file: !20, line: 654, baseType: !479, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !482)
!482 = !{!483, !3653, !3663, !3667, !3671, !3675, !3679, !3683, !3687, !3691, !3695, !3696, !3700, !3704, !3741, !3770, !3774, !3780, !3784, !3788, !3792, !3796, !3800, !3806, !3810}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !481, file: !20, line: 1967, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!487, !452, !487, !13}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !489, line: 82, size: 1536, elements: !490)
!489 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!490 = !{!491, !492, !502, !510, !511, !526, !527, !531, !544, !3636, !3637, !3638, !3639, !3645, !3646, !3647}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !488, file: !489, line: 84, baseType: !13, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !488, file: !489, line: 85, baseType: !493, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !494, line: 275, baseType: !495)
!494 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !494, line: 275, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !495, file: !494, line: 275, baseType: !498, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !494, line: 69, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !494, line: 64, size: 32, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !499, file: !494, line: 65, baseType: !13, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !488, file: !489, line: 86, baseType: !503, size: 128, offset: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !504, line: 38, size: 128, elements: !505)
!504 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!505 = !{!506, !508}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !504, line: 39, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !503, file: !504, line: 39, baseType: !509, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !488, file: !489, line: 87, baseType: !487, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !488, file: !489, line: 88, baseType: !512, size: 128, offset: 256)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !489, line: 49, size: 128, elements: !513)
!513 = !{!514, !523}
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !512, file: !489, line: 50, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !512, file: !489, line: 50, size: 64, elements: !516)
!516 = !{!517, !522}
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !489, line: 51, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !515, file: !489, line: 51, size: 64, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !518, file: !489, line: 52, baseType: !265, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !518, file: !489, line: 52, baseType: !265, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !515, file: !489, line: 54, baseType: !200, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !512, file: !489, line: 56, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !488, file: !489, line: 89, baseType: !452, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !488, file: !489, line: 91, baseType: !528, size: 256, offset: 448)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 256, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !488, file: !489, line: 94, baseType: !532, size: 64, offset: 704)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !533, line: 25, size: 64, elements: !534)
!533 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !533, line: 26, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !533, line: 26, size: 64, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !536, file: !533, line: 28, baseType: !202, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !533, line: 30, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !533, line: 30, size: 64, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !540, file: !533, line: 31, baseType: !307, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !540, file: !533, line: 32, baseType: !109, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !488, file: !489, line: 95, baseType: !545, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !489, line: 128, size: 1024, align: 512, elements: !548)
!548 = !{!549, !553, !554, !561, !567, !571, !575, !579, !580, !584, !588, !3626, !3630}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !547, file: !489, line: 129, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!109, !487, !13}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !547, file: !489, line: 130, baseType: !550, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !547, file: !489, line: 131, baseType: !555, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!109, !558, !560}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !547, file: !489, line: 132, baseType: !562, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!109, !558, !13, !207, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !547, file: !489, line: 134, baseType: !568, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!109, !558}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !547, file: !489, line: 135, baseType: !572, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!109, !487}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !547, file: !489, line: 136, baseType: !576, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !487}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !547, file: !489, line: 137, baseType: !576, size: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !547, file: !489, line: 138, baseType: !581, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !487, !452}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !547, file: !489, line: 139, baseType: !585, size: 64, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!373, !487, !373, !109}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !547, file: !489, line: 140, baseType: !589, size: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!592, !3625}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !594, line: 70, size: 256, elements: !595)
!594 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!595 = !{!596, !597, !3621, !3622}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !593, file: !594, line: 71, baseType: !487, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !593, file: !594, line: 72, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !600)
!600 = !{!601, !602, !605, !606, !607, !611, !1089, !1228, !1268, !1358, !1362, !1363, !1364, !1365, !1366, !1375, !1376, !1377, !1378, !1383, !1387, !1388, !1391, !1394, !1397, !1400, !1401, !1402, !1443, !3554, !3555, !3556, !3557, !3558, !3559, !3562, !3564, !3571, !3572, !3573, !3574, !3575, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !599, file: !20, line: 1191, baseType: !187, size: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !599, file: !20, line: 1192, baseType: !603, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !182, line: 21, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !182, line: 18, baseType: !265)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !599, file: !20, line: 1193, baseType: !277, size: 8, offset: 160)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !599, file: !20, line: 1194, baseType: !210, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !599, file: !20, line: 1195, baseType: !608, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !182, line: 52, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !407, line: 88, baseType: !610)
!610 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !599, file: !20, line: 1196, baseType: !612, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !614)
!614 = !{!615, !616, !617, !624, !628, !632, !636, !1074, !1075, !1079, !1081, !1082, !1083, !1085, !1086, !1087, !1088}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !613, file: !20, line: 2367, baseType: !207, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !613, file: !20, line: 2368, baseType: !109, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !613, file: !20, line: 2376, baseType: !618, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!109, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !623, line: 32, flags: DIFlagFwdDecl)
!623 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!624 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !613, file: !20, line: 2377, baseType: !625, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !613, file: !20, line: 2378, baseType: !629, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!487, !612, !109, !207, !180}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !613, file: !20, line: 2380, baseType: !633, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !598}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !613, file: !20, line: 2381, baseType: !637, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !639)
!639 = !{!640, !641, !642, !646, !668, !694, !695, !696, !697, !701, !706, !707, !727, !783, !784, !785, !786, !787, !790, !791, !792, !800, !804, !831, !852, !853, !854, !855, !864, !887, !888, !891, !894, !895, !896, !897, !898, !899, !900, !905, !906, !1032, !1040, !1041, !1042, !1044, !1048, !1049, !1053, !1054, !1055, !1056, !1058, !1059, !1060, !1067, !1068, !1069, !1073}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !638, file: !12, line: 403, baseType: !11, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !638, file: !12, line: 406, baseType: !187, size: 128, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !638, file: !12, line: 409, baseType: !643, size: 448, offset: 192)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 56)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !638, file: !12, line: 417, baseType: !647, size: 768, offset: 640)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !648)
!648 = !{!649, !650, !651, !652, !655}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !647, file: !12, line: 46, baseType: !294, size: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !647, file: !12, line: 47, baseType: !637, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !647, file: !12, line: 48, baseType: !300, size: 64, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !647, file: !12, line: 49, baseType: !653, size: 64, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !647, file: !12, line: 50, baseType: !656, size: 64, offset: 704)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !658, line: 26, size: 256, elements: !659)
!658 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !657, file: !658, line: 27, baseType: !13, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !657, file: !658, line: 28, baseType: !662, size: 192, offset: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !663, line: 43, size: 192, elements: !664)
!663 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!664 = !{!665, !667}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !662, file: !663, line: 44, baseType: !666, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !316, line: 23, baseType: !315)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !662, file: !663, line: 45, baseType: !187, size: 128, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !638, file: !12, line: 418, baseType: !669, size: 64, offset: 1408)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !671)
!671 = !{!672, !673, !678, !682, !686, !690}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !670, file: !12, line: 54, baseType: !411, size: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !670, file: !12, line: 55, baseType: !674, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!405, !669, !677, !373}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !670, file: !12, line: 57, baseType: !679, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!405, !669, !677, !207, !420}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !670, file: !12, line: 59, baseType: !683, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !637, !207}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !670, file: !12, line: 60, baseType: !687, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!109, !637}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !670, file: !12, line: 61, baseType: !691, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !637}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !638, file: !12, line: 419, baseType: !207, size: 64, offset: 1472)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !638, file: !12, line: 420, baseType: !207, size: 64, offset: 1536)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !638, file: !12, line: 421, baseType: !300, size: 64, offset: 1600)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !638, file: !12, line: 424, baseType: !698, size: 64, offset: 1664)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !638, file: !12, line: 425, baseType: !702, size: 64, offset: 1728)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !201, line: 20, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !203, line: 26, baseType: !109)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !638, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !638, file: !12, line: 435, baseType: !708, size: 256, offset: 1856)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !709, line: 66, size: 256, elements: !710)
!709 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!710 = !{!711, !720, !721, !726}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !708, file: !709, line: 67, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !713, line: 13, baseType: !714)
!713 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !182, line: 181, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 179, size: 64, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !715, file: !182, line: 180, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !201, line: 22, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !203, line: 30, baseType: !610)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !708, file: !709, line: 68, baseType: !666, size: 32, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !708, file: !709, line: 70, baseType: !722, size: 32, offset: 96)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !723, line: 15, size: 32, elements: !724)
!723 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !722, file: !723, line: 20, baseType: !327, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !708, file: !709, line: 72, baseType: !187, size: 128, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !638, file: !12, line: 437, baseType: !728, size: 64, offset: 2112)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !730, line: 69, size: 320, elements: !731)
!730 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!731 = !{!732, !733, !734, !754, !756, !760, !761}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !729, file: !730, line: 70, baseType: !207, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !729, file: !730, line: 71, baseType: !637, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !729, file: !730, line: 72, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !730, line: 47, size: 256, elements: !738)
!738 = !{!739, !740, !746, !750}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !730, line: 49, baseType: !13, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !737, file: !730, line: 51, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!109, !207, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !737, file: !730, line: 53, baseType: !747, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!109, !373, !744}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !737, file: !730, line: 55, baseType: !751, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !180}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !729, file: !730, line: 73, baseType: !755, size: 16, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !729, file: !730, line: 74, baseType: !757, size: 8, offset: 208)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !201, line: 16, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !203, line: 20, baseType: !759)
!759 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !730, line: 75, baseType: !335, size: 8, offset: 216)
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !730, line: 76, baseType: !762, size: 64, offset: 256)
!762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !729, file: !730, line: 76, size: 64, elements: !763)
!763 = !{!764, !765, !772}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !762, file: !730, line: 77, baseType: !180, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !762, file: !730, line: 78, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !730, line: 86, size: 128, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !768, file: !730, line: 87, baseType: !13, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !768, file: !730, line: 88, baseType: !373, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !762, file: !730, line: 79, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !730, line: 92, size: 256, elements: !776)
!776 = !{!777, !778, !779, !781, !782}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !775, file: !730, line: 94, baseType: !13, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !775, file: !730, line: 95, baseType: !13, size: 32, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !775, file: !730, line: 96, baseType: !780, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !775, file: !730, line: 97, baseType: !735, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !775, file: !730, line: 98, baseType: !180, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !638, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !638, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !638, file: !12, line: 442, baseType: !698, size: 64, offset: 2240)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !638, file: !12, line: 443, baseType: !702, size: 64, offset: 2304)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !638, file: !12, line: 444, baseType: !788, size: 8, offset: 2368)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !182, line: 35, baseType: !789)
!789 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !638, file: !12, line: 451, baseType: !788, size: 8, offset: 2376)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !638, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !638, file: !12, line: 455, baseType: !793, size: 64, offset: 2432)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !795, line: 23, size: 96, elements: !796)
!795 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!796 = !{!797, !798, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !794, file: !795, line: 24, baseType: !109, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !794, file: !795, line: 24, baseType: !109, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !794, file: !795, line: 24, baseType: !109, size: 32, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !638, file: !12, line: 458, baseType: !801, size: 64, offset: 2496)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!109}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !638, file: !12, line: 460, baseType: !805, size: 4032, align: 512, offset: 2560)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 4032, elements: !829)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !807)
!807 = !{!808, !809, !810}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !806, file: !12, line: 363, baseType: !180, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !806, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !806, file: !12, line: 367, baseType: !811, size: 448, offset: 128)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !811, file: !12, line: 320, baseType: !637, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !811, file: !12, line: 321, baseType: !815, size: 384, offset: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !816, line: 40, size: 384, elements: !817)
!816 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !815, file: !816, line: 41, baseType: !819, size: 384, align: 64)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 384, align: 64, elements: !827)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !821, line: 5, size: 192, align: 64, elements: !822)
!821 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!822 = !{!823, !824, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !820, file: !821, line: 6, baseType: !210, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !820, file: !821, line: 7, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !820, file: !821, line: 8, baseType: !825, size: 64, offset: 128)
!827 = !{!828}
!828 = !DISubrange(count: 2)
!829 = !{!830}
!830 = !DISubrange(count: 7)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !638, file: !12, line: 463, baseType: !832, size: 192, offset: 6592)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !833, line: 8, size: 192, elements: !834)
!833 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!834 = !{!835, !836, !838}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !832, file: !833, line: 10, baseType: !13, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !832, file: !833, line: 11, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !832, file: !833, line: 12, baseType: !839, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !841, line: 59, size: 48, elements: !842)
!841 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!842 = !{!843, !847, !848, !849, !850, !851}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !840, file: !841, line: 60, baseType: !844, size: 16)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !201, line: 18, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !203, line: 23, baseType: !846)
!846 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !840, file: !841, line: 61, baseType: !844, size: 16, offset: 16)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !840, file: !841, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !840, file: !841, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !840, file: !841, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !840, file: !841, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !638, file: !12, line: 465, baseType: !210, size: 64, offset: 6784)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !638, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !638, file: !12, line: 470, baseType: !187, size: 128, offset: 6912)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !638, file: !12, line: 471, baseType: !856, size: 64, offset: 7040)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !858, line: 33, size: 96, elements: !859)
!858 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!859 = !{!860, !861, !862, !863}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !857, file: !858, line: 37, baseType: !109, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !857, file: !858, line: 43, baseType: !109, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !857, file: !858, line: 45, baseType: !286, size: 16, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !858, line: 47, baseType: !286, size: 16, offset: 80)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !638, file: !12, line: 476, baseType: !865, size: 64, offset: 7104)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !867)
!867 = !{!868, !884, !885, !886}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !866, file: !12, line: 379, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !871, line: 204, baseType: !872)
!871 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !871, line: 197, size: 192, elements: !873)
!873 = !{!874, !876, !877, !878, !880, !882}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !872, file: !871, line: 198, baseType: !875, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !871, line: 21, baseType: !266)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !872, file: !871, line: 199, baseType: !277, size: 8, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !872, file: !871, line: 200, baseType: !277, size: 8, offset: 40)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !872, file: !871, line: 201, baseType: !879, size: 16, offset: 48)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !871, line: 17, baseType: !343)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !872, file: !871, line: 202, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !871, line: 16, baseType: !202)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !872, file: !871, line: 203, baseType: !883, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !871, line: 22, baseType: !202)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !866, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !866, file: !12, line: 381, baseType: !373, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !866, file: !12, line: 382, baseType: !373, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !638, file: !12, line: 477, baseType: !866, size: 256, offset: 7168)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !638, file: !12, line: 480, baseType: !889, size: 64, offset: 7424)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !638, file: !12, line: 483, baseType: !892, size: 64, offset: 7488)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !638, file: !12, line: 488, baseType: !373, size: 64, offset: 7552)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !638, file: !12, line: 492, baseType: !180, size: 64, offset: 7616)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !638, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !638, file: !12, line: 495, baseType: !180, size: 64, offset: 7744)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !638, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !638, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !638, file: !12, line: 500, baseType: !901, size: 64, offset: 7872)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !903, line: 45, baseType: !904)
!903 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !638, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !638, file: !12, line: 504, baseType: !907, size: 64, offset: 8000)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !910, line: 96, size: 192, elements: !911)
!910 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!911 = !{!912, !913, !992, !996}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !909, file: !910, line: 97, baseType: !13, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !909, file: !910, line: 98, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !910, line: 24, size: 3072, elements: !916)
!916 = !{!917, !919, !920, !921, !922, !944, !945, !946, !947, !965, !977, !978, !989, !990, !991}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !915, file: !910, line: 26, baseType: !918, size: 128)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 128, elements: !827)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !915, file: !910, line: 27, baseType: !918, size: 128, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !915, file: !910, line: 28, baseType: !109, size: 32, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !915, file: !910, line: 31, baseType: !307, size: 32, align: 512, offset: 512)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !915, file: !910, line: 32, baseType: !923, size: 960, offset: 576)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !924, line: 206, size: 960, elements: !925)
!924 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!925 = !{!926, !935, !938, !940, !941, !943}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !923, file: !924, line: 207, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !182, line: 232, size: 128, align: 64, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !928, file: !182, line: 233, baseType: !927, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !928, file: !182, line: 234, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !927}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !923, file: !924, line: 208, baseType: !936, size: 256, offset: 64)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !937, size: 256, elements: !240)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !923, file: !924, line: 209, baseType: !939, size: 256, offset: 320)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !240)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !923, file: !924, line: 213, baseType: !409, size: 64, offset: 576)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !923, file: !924, line: 215, baseType: !942, size: 256, offset: 640)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 256, elements: !240)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !923, file: !924, line: 216, baseType: !335, size: 8, offset: 896)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !915, file: !910, line: 33, baseType: !210, size: 64, offset: 1536)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !915, file: !910, line: 34, baseType: !210, size: 64, offset: 1600)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !915, file: !910, line: 35, baseType: !788, size: 8, offset: 1664)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !915, file: !910, line: 36, baseType: !948, size: 320, offset: 1728)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !949, line: 11, size: 320, elements: !950)
!949 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!950 = !{!951, !958, !959, !964}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !948, file: !949, line: 16, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !182, line: 198, size: 128, elements: !953)
!953 = !{!954, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !952, file: !182, line: 199, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !952, file: !182, line: 199, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !948, file: !949, line: 17, baseType: !210, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !948, file: !949, line: 18, baseType: !960, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !963}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !949, line: 19, baseType: !265, size: 32, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !915, file: !910, line: 37, baseType: !966, size: 256, offset: 2048)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !967, line: 98, size: 256, elements: !968)
!967 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !966, file: !967, line: 99, baseType: !712, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !966, file: !967, line: 100, baseType: !187, size: 128, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !966, file: !967, line: 101, baseType: !972, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !967, line: 21, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !915, file: !910, line: 38, baseType: !928, size: 128, align: 64, offset: 2304)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !915, file: !910, line: 39, baseType: !979, size: 64, offset: 2432)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !910, line: 49, size: 768, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !980, file: !910, line: 50, baseType: !307, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !980, file: !910, line: 51, baseType: !939, size: 256, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !980, file: !910, line: 53, baseType: !939, size: 256, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !980, file: !910, line: 54, baseType: !210, size: 64, offset: 576)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !980, file: !910, line: 55, baseType: !979, size: 64, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !980, file: !910, line: 56, baseType: !109, size: 32, offset: 704)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !980, file: !910, line: 57, baseType: !109, size: 32, offset: 736)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !915, file: !910, line: 40, baseType: !210, size: 64, offset: 2496)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !915, file: !910, line: 42, baseType: !109, size: 32, offset: 2560)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !915, file: !910, line: 43, baseType: !908, size: 64, offset: 2624)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !909, file: !910, line: 99, baseType: !993, offset: 128)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !994, line: 211, elements: !995)
!994 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!995 = !{}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !909, file: !910, line: 100, baseType: !997, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !910, line: 63, size: 3008, elements: !999)
!999 = !{!1000, !1001, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1031}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !998, file: !910, line: 64, baseType: !979, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !998, file: !910, line: 65, baseType: !1002, size: 192, offset: 64)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 192, elements: !374)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !998, file: !910, line: 67, baseType: !109, size: 32, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !998, file: !910, line: 68, baseType: !708, size: 256, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !998, file: !910, line: 69, baseType: !307, size: 32, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !998, file: !910, line: 70, baseType: !708, size: 256, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !998, file: !910, line: 71, baseType: !210, size: 64, offset: 896)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !998, file: !910, line: 72, baseType: !210, size: 64, offset: 960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !998, file: !910, line: 73, baseType: !210, size: 64, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !998, file: !910, line: 74, baseType: !210, size: 64, offset: 1088)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !998, file: !910, line: 75, baseType: !210, size: 64, offset: 1152)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !998, file: !910, line: 76, baseType: !210, size: 64, offset: 1216)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !998, file: !910, line: 77, baseType: !210, size: 64, offset: 1280)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !998, file: !910, line: 78, baseType: !210, size: 64, offset: 1344)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !998, file: !910, line: 79, baseType: !788, size: 8, offset: 1408)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !998, file: !910, line: 80, baseType: !210, size: 64, offset: 1472)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !998, file: !910, line: 81, baseType: !708, size: 256, offset: 1536)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !998, file: !910, line: 82, baseType: !657, size: 256, offset: 1792)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !998, file: !910, line: 84, baseType: !327, size: 32, offset: 2048)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !998, file: !910, line: 87, baseType: !210, size: 64, offset: 2112)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !998, file: !910, line: 88, baseType: !210, size: 64, offset: 2176)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !998, file: !910, line: 89, baseType: !1023, size: 704, offset: 2240)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !967, line: 111, size: 704, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1030}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1023, file: !967, line: 112, baseType: !966, size: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1023, file: !967, line: 113, baseType: !948, size: 320, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1023, file: !967, line: 116, baseType: !1028, size: 64, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !967, line: 18, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1023, file: !967, line: 117, baseType: !109, size: 32, offset: 640)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !998, file: !910, line: 90, baseType: !908, size: 64, offset: 2944)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !638, file: !12, line: 515, baseType: !1033, size: 64, offset: 8064)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1035, line: 117, size: 128, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1034, file: !1035, line: 118, baseType: !704, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1034, file: !1035, line: 119, baseType: !704, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1034, file: !1035, line: 120, baseType: !409, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !638, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !638, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !638, file: !12, line: 520, baseType: !1043, size: 64, offset: 8192)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !638, file: !12, line: 523, baseType: !1045, size: 64, offset: 8256)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !638, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !638, file: !12, line: 525, baseType: !1050, size: 64, offset: 8384)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !638, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !638, file: !12, line: 533, baseType: !180, size: 64, offset: 8512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !638, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !638, file: !12, line: 535, baseType: !1057, size: 64, offset: 8640)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !638, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !638, file: !12, line: 539, baseType: !109, size: 32, offset: 8736)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !638, file: !12, line: 540, baseType: !1061, size: 64, offset: 8768)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1063, line: 32, size: 64, elements: !1064)
!1063 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1062, file: !1063, line: 33, baseType: !704, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1062, file: !1063, line: 34, baseType: !704, size: 32, offset: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !638, file: !12, line: 563, baseType: !187, size: 128, offset: 8832)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !638, file: !12, line: 565, baseType: !187, size: 128, offset: 8960)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !638, file: !12, line: 568, baseType: !1070, size: 64, offset: 9088)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !638, file: !12, line: 570, baseType: !327, size: 32, offset: 9152)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !613, file: !20, line: 2382, baseType: !612, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !613, file: !20, line: 2383, baseType: !1076, size: 64, offset: 512)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !182, line: 194, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1076, file: !182, line: 195, baseType: !955, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !613, file: !20, line: 2385, baseType: !1080, offset: 576)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !994, line: 206, elements: !995)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !613, file: !20, line: 2386, baseType: !1080, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !613, file: !20, line: 2387, baseType: !1080, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !613, file: !20, line: 2388, baseType: !1084, offset: 576)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, elements: !374)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !613, file: !20, line: 2390, baseType: !1080, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !613, file: !20, line: 2391, baseType: !1080, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !613, file: !20, line: 2392, baseType: !1080, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !613, file: !20, line: 2393, baseType: !1080, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !599, file: !20, line: 1197, baseType: !1090, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1093)
!1093 = !{!1094, !1098, !1102, !1103, !1107, !1113, !1117, !1118, !1119, !1123, !1127, !1131, !1132, !1133, !1139, !1143, !1144, !1151, !1152, !1153, !1154, !1158, !1162, !1211, !1226, !1227}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1092, file: !20, line: 2058, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!452, !598}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1092, file: !20, line: 2059, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !452}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1092, file: !20, line: 2060, baseType: !1099, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1092, file: !20, line: 2062, baseType: !1104, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !452, !109}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1092, file: !20, line: 2063, baseType: !1108, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!109, !452, !1111}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1092, file: !20, line: 2064, baseType: !1114, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!109, !452}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1092, file: !20, line: 2065, baseType: !1099, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1092, file: !20, line: 2066, baseType: !633, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1092, file: !20, line: 2067, baseType: !1120, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!109, !598, !109}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1092, file: !20, line: 2068, baseType: !1124, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!109, !598, !19}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1092, file: !20, line: 2069, baseType: !1128, size: 64, offset: 640)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!109, !598}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1092, file: !20, line: 2070, baseType: !1124, size: 64, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1092, file: !20, line: 2071, baseType: !1128, size: 64, offset: 768)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1092, file: !20, line: 2072, baseType: !1134, size: 64, offset: 832)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!109, !487, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1092, file: !20, line: 2073, baseType: !1140, size: 64, offset: 896)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!109, !598, !837, !373}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1092, file: !20, line: 2074, baseType: !633, size: 64, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1092, file: !20, line: 2076, baseType: !1145, size: 64, offset: 1024)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!109, !1148, !487}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1150, line: 66, flags: DIFlagFwdDecl)
!1150 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1092, file: !20, line: 2077, baseType: !1145, size: 64, offset: 1088)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1092, file: !20, line: 2078, baseType: !1145, size: 64, offset: 1152)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1092, file: !20, line: 2079, baseType: !1145, size: 64, offset: 1216)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1092, file: !20, line: 2081, baseType: !1155, size: 64, offset: 1280)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!405, !598, !109, !373, !420, !608}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1092, file: !20, line: 2082, baseType: !1159, size: 64, offset: 1344)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!405, !598, !109, !207, !420, !608}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1092, file: !20, line: 2083, baseType: !1163, size: 64, offset: 1408)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1166, !452}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 296, size: 1664, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1194, !1195, !1196}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1168, file: !25, line: 297, baseType: !952, size: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1168, file: !25, line: 298, baseType: !187, size: 128, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1168, file: !25, line: 299, baseType: !187, size: 128, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1168, file: !25, line: 300, baseType: !187, size: 128, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1168, file: !25, line: 301, baseType: !708, size: 256, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1168, file: !25, line: 302, baseType: !307, size: 32, offset: 768)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1168, file: !25, line: 303, baseType: !327, size: 32, offset: 800)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1168, file: !25, line: 304, baseType: !598, size: 64, offset: 832)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1168, file: !25, line: 305, baseType: !1179, size: 64, offset: 896)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !1180)
!1180 = !{!1181, !1193}
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !25, line: 69, baseType: !1182, size: 32)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !25, line: 69, size: 32, elements: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1182, file: !25, line: 70, baseType: !458, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1182, file: !25, line: 71, baseType: !467, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1182, file: !25, line: 72, baseType: !1187, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1188, line: 24, baseType: !1189)
!1188 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 22, size: 32, elements: !1190)
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1189, file: !1188, line: 23, baseType: !1192, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1188, line: 20, baseType: !464)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1179, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1168, file: !25, line: 306, baseType: !608, size: 64, offset: 960)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1168, file: !25, line: 307, baseType: !210, size: 64, offset: 1024)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1168, file: !25, line: 308, baseType: !1197, size: 576, offset: 1088)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !1198)
!1198 = !{!1199, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1210}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1197, file: !25, line: 206, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !610)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1197, file: !25, line: 207, baseType: !1200, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1197, file: !25, line: 208, baseType: !1200, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1197, file: !25, line: 209, baseType: !1200, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1197, file: !25, line: 210, baseType: !1200, size: 64, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1197, file: !25, line: 211, baseType: !1200, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1197, file: !25, line: 212, baseType: !1200, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1197, file: !25, line: 213, baseType: !1208, size: 64, offset: 448)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1209, line: 8, baseType: !719)
!1209 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1197, file: !25, line: 214, baseType: !1208, size: 64, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1092, file: !20, line: 2085, baseType: !1212, size: 64, offset: 1472)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!409, !598, !1215}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1217, line: 15, size: 256, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1218 = !{!1219, !1220, !1221, !1222, !1223}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1216, file: !1217, line: 16, baseType: !181, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1216, file: !1217, line: 19, baseType: !109, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1216, file: !1217, line: 26, baseType: !210, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1216, file: !1217, line: 33, baseType: !210, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1216, file: !1217, line: 36, baseType: !1224, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1092, file: !20, line: 2087, baseType: !1212, size: 64, offset: 1536)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1092, file: !20, line: 2089, baseType: !633, size: 64, offset: 1600)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !599, file: !20, line: 1198, baseType: !1229, size: 64, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 324, size: 704, elements: !1232)
!1232 = !{!1233, !1237, !1241, !1245, !1246, !1247, !1248, !1249, !1254, !1259, !1263}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1231, file: !25, line: 325, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!109, !1167}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1231, file: !25, line: 326, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1167, !598, !109}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1231, file: !25, line: 327, baseType: !1242, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !1167}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1231, file: !25, line: 328, baseType: !1234, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1231, file: !25, line: 329, baseType: !1234, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1231, file: !25, line: 330, baseType: !1234, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1231, file: !25, line: 331, baseType: !1120, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1231, file: !25, line: 334, baseType: !1250, size: 64, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1253, !452}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1231, file: !25, line: 335, baseType: !1255, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!109, !452, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1231, file: !25, line: 337, baseType: !1260, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!109, !452, !1253}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1231, file: !25, line: 339, baseType: !1264, size: 64, offset: 640)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!109, !598, !1267}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !599, file: !20, line: 1199, baseType: !1269, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 430, size: 704, elements: !1272)
!1272 = !{!1273, !1284, !1285, !1289, !1290, !1291, !1306, !1329, !1333, !1334, !1357}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1271, file: !25, line: 431, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!109, !598, !109, !109, !1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1280, line: 8, size: 128, elements: !1281)
!1280 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1279, file: !1280, line: 9, baseType: !592, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1279, file: !1280, line: 10, baseType: !487, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1271, file: !25, line: 432, baseType: !1120, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1271, file: !25, line: 433, baseType: !1286, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!109, !598, !13}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1271, file: !25, line: 434, baseType: !1286, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1271, file: !25, line: 435, baseType: !1120, size: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1271, file: !25, line: 436, baseType: !1292, size: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!109, !598, !109, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 417, size: 256, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1296, file: !25, line: 418, baseType: !109, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1296, file: !25, line: 419, baseType: !13, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1296, file: !25, line: 420, baseType: !13, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1296, file: !25, line: 422, baseType: !13, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1296, file: !25, line: 423, baseType: !13, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1296, file: !25, line: 424, baseType: !13, size: 32, offset: 160)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1296, file: !25, line: 425, baseType: !13, size: 32, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1296, file: !25, line: 426, baseType: !13, size: 32, offset: 224)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1271, file: !25, line: 437, baseType: !1307, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!109, !598, !1179, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 345, size: 960, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1311, file: !25, line: 346, baseType: !109, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1311, file: !25, line: 347, baseType: !200, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1311, file: !25, line: 348, baseType: !200, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1311, file: !25, line: 349, baseType: !200, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1311, file: !25, line: 350, baseType: !200, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1311, file: !25, line: 351, baseType: !200, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1311, file: !25, line: 352, baseType: !200, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1311, file: !25, line: 353, baseType: !718, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1311, file: !25, line: 355, baseType: !718, size: 64, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1311, file: !25, line: 356, baseType: !109, size: 32, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1311, file: !25, line: 357, baseType: !109, size: 32, offset: 608)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1311, file: !25, line: 358, baseType: !200, size: 64, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1311, file: !25, line: 359, baseType: !200, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1311, file: !25, line: 360, baseType: !200, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1311, file: !25, line: 361, baseType: !718, size: 64, offset: 832)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1311, file: !25, line: 362, baseType: !109, size: 32, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1271, file: !25, line: 438, baseType: !1330, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!109, !598, !1267, !1310}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1271, file: !25, line: 440, baseType: !1307, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1271, file: !25, line: 441, baseType: !1335, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!109, !598, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 411, size: 1408, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1339, file: !25, line: 412, baseType: !13, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1339, file: !25, line: 413, baseType: !1343, size: 1344, offset: 64)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 1344, elements: !374)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 397, size: 448, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1356}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1344, file: !25, line: 398, baseType: !13, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1344, file: !25, line: 399, baseType: !13, size: 32, offset: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1344, file: !25, line: 401, baseType: !13, size: 32, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1344, file: !25, line: 402, baseType: !13, size: 32, offset: 96)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1344, file: !25, line: 403, baseType: !13, size: 32, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1344, file: !25, line: 404, baseType: !13, size: 32, offset: 160)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1344, file: !25, line: 405, baseType: !13, size: 32, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1344, file: !25, line: 406, baseType: !204, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1344, file: !25, line: 407, baseType: !1355, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !182, line: 132, baseType: !200)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1344, file: !25, line: 408, baseType: !1355, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1271, file: !25, line: 442, baseType: !1286, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !599, file: !20, line: 1200, baseType: !1359, size: 64, offset: 576)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !599, file: !20, line: 1201, baseType: !210, size: 64, offset: 640)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !599, file: !20, line: 1202, baseType: !210, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !599, file: !20, line: 1203, baseType: !210, size: 64, offset: 768)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !599, file: !20, line: 1204, baseType: !487, size: 64, offset: 832)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !599, file: !20, line: 1205, baseType: !1367, size: 320, offset: 896)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1368, line: 48, size: 320, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1369 = !{!1370, !1371, !1372, !1373, !1374}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1367, file: !1368, line: 49, baseType: !712, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1367, file: !1368, line: 55, baseType: !712, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1367, file: !1368, line: 57, baseType: !722, size: 32, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1367, file: !1368, line: 59, baseType: !666, size: 32, offset: 160)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1367, file: !1368, line: 60, baseType: !187, size: 128, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !599, file: !20, line: 1206, baseType: !109, size: 32, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !599, file: !20, line: 1207, baseType: !327, size: 32, offset: 1248)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !599, file: !20, line: 1209, baseType: !180, size: 64, offset: 1280)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !599, file: !20, line: 1211, baseType: !1379, size: 64, offset: 1344)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !599, file: !20, line: 1223, baseType: !1384, size: 64, offset: 1408)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !504, line: 34, size: 64, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1384, file: !504, line: 35, baseType: !507, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !599, file: !20, line: 1224, baseType: !187, size: 128, offset: 1472)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !599, file: !20, line: 1225, baseType: !1389, size: 64, offset: 1600)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !599, file: !20, line: 1226, baseType: !1392, size: 64, offset: 1664)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !599, file: !20, line: 1227, baseType: !1395, size: 64, offset: 1728)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !599, file: !20, line: 1228, baseType: !1398, size: 64, offset: 1792)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !599, file: !20, line: 1229, baseType: !952, size: 128, offset: 1856)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !599, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !599, file: !20, line: 1231, baseType: !1403, size: 2496, offset: 2048)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 521, size: 2496, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1409, !1441}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1403, file: !25, line: 522, baseType: !13, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1403, file: !25, line: 523, baseType: !1367, size: 320, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1403, file: !25, line: 524, baseType: !1408, size: 192, offset: 384)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 192, elements: !374)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1403, file: !25, line: 525, baseType: !1410, size: 1728, offset: 576)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1411, size: 1728, elements: !374)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !1412)
!1412 = !{!1413, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1411, file: !25, line: 223, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 445, size: 256, elements: !1416)
!1416 = !{!1417, !1418, !1431, !1432}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1415, file: !25, line: 446, baseType: !109, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1415, file: !25, line: 447, baseType: !1419, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 312, size: 512, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1421, file: !25, line: 313, baseType: !1120, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1421, file: !25, line: 314, baseType: !1120, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1421, file: !25, line: 315, baseType: !1120, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1421, file: !25, line: 316, baseType: !1120, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1421, file: !25, line: 317, baseType: !1234, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1421, file: !25, line: 318, baseType: !1234, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1421, file: !25, line: 319, baseType: !1234, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1421, file: !25, line: 320, baseType: !1264, size: 64, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1415, file: !25, line: 448, baseType: !637, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1415, file: !25, line: 449, baseType: !1414, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1411, file: !25, line: 224, baseType: !109, size: 32, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1411, file: !25, line: 226, baseType: !187, size: 128, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1411, file: !25, line: 227, baseType: !210, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1411, file: !25, line: 228, baseType: !13, size: 32, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1411, file: !25, line: 229, baseType: !13, size: 32, offset: 352)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1411, file: !25, line: 230, baseType: !1200, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1411, file: !25, line: 231, baseType: !1200, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1411, file: !25, line: 232, baseType: !180, size: 64, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1403, file: !25, line: 526, baseType: !1442, size: 192, offset: 2304)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 192, elements: !374)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !599, file: !20, line: 1233, baseType: !1444, size: 2368, offset: 4544)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !1445)
!1445 = !{!1446, !1447, !1448}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1444, file: !20, line: 1185, baseType: !286, size: 16)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1444, file: !20, line: 1186, baseType: !286, size: 16, offset: 16)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1444, file: !20, line: 1187, baseType: !1449, size: 2304, offset: 64)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1450, size: 2304, elements: !374)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1451, line: 12, size: 768, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1452 = !{!1453, !1467, !1468, !3552, !3553}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1450, file: !1451, line: 13, baseType: !1454, size: 384)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1455, line: 17, size: 384, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1456 = !{!1457, !1458, !1459, !1466}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1454, file: !1455, line: 18, baseType: !109, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1454, file: !1455, line: 19, baseType: !109, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1454, file: !1455, line: 20, baseType: !1460, size: 192, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1461, line: 41, baseType: !1462)
!1461 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1461, line: 37, size: 192, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1462, file: !1461, line: 38, baseType: !307, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1462, file: !1461, line: 39, baseType: !187, size: 128, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1454, file: !1455, line: 22, baseType: !928, size: 128, align: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1450, file: !1451, line: 14, baseType: !780, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1450, file: !1451, line: 15, baseType: !1469, size: 64, offset: 448)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1470, line: 16, size: 64, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1471 = !{!1472}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1469, file: !1470, line: 17, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1150, line: 746, size: 58368, elements: !1475)
!1475 = !{!1476, !1484, !1485, !1486, !1492, !1493, !1494, !1495, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1566, !1577, !1672, !1676, !1679, !1710, !1711, !1712, !1713, !1724, !1726, !1727, !1728, !1729, !1730, !1731, !1742, !1743, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1760, !1761, !1768, !1769, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2727, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2775, !2781, !2782, !2783, !2784, !2785, !2789, !2792, !2799, !2804, !2807, !2810, !2813, !2817, !2955, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2993, !2994, !2995, !3004, !3012, !3013, !3014, !3015, !3016, !3021, !3022, !3023, !3026, !3027, !3030, !3033, !3036, !3044, !3047, !3048, !3134, !3135, !3136, !3137, !3138, !3144, !3145, !3146, !3147, !3150, !3151, !3154, !3157, !3158, !3161, !3162, !3163, !3166, !3167, !3168, !3169, !3170, !3171, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3203, !3204, !3210, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3222, !3294, !3296, !3297, !3298, !3299, !3300, !3301, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3329, !3330, !3331}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1474, file: !1150, line: 752, baseType: !1477, size: 192)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1478, line: 56, size: 192, elements: !1479)
!1478 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1479 = !{!1480, !1481, !1482, !1483}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !1478, line: 57, baseType: !210, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1477, file: !1478, line: 58, baseType: !210, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1477, file: !1478, line: 59, baseType: !265, size: 32, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1477, file: !1478, line: 61, baseType: !265, size: 32, offset: 160)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1474, file: !1150, line: 754, baseType: !13, size: 32, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1474, file: !1150, line: 767, baseType: !180, size: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1474, file: !1150, line: 768, baseType: !1487, size: 32, offset: 320)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1488, line: 113, baseType: !1489)
!1488 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1488, line: 111, size: 32, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1489, file: !1488, line: 112, baseType: !327, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1474, file: !1150, line: 770, baseType: !13, size: 32, offset: 352)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1474, file: !1150, line: 771, baseType: !13, size: 32, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1474, file: !1150, line: 774, baseType: !109, size: 32, offset: 416)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1474, file: !1150, line: 775, baseType: !1496, size: 128, offset: 448)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1497, line: 58, size: 128, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1498 = !{!1499, !1505, !1510, !1511}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1496, file: !1497, line: 59, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1501, line: 60, size: 64, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1500, file: !1501, line: 61, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1497, line: 60, baseType: !1506, size: 32, offset: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1497, line: 60, size: 32, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1506, file: !1497, line: 61, baseType: !13, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1506, file: !1497, line: 62, baseType: !327, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1496, file: !1497, line: 65, baseType: !342, size: 16, offset: 96)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1496, file: !1497, line: 65, baseType: !342, size: 16, offset: 112)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1474, file: !1150, line: 776, baseType: !13, size: 32, offset: 576)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1474, file: !1150, line: 777, baseType: !210, size: 64, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1474, file: !1150, line: 778, baseType: !1473, size: 64, offset: 704)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1474, file: !1150, line: 787, baseType: !109, size: 32, offset: 768)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1474, file: !1150, line: 788, baseType: !109, size: 32, offset: 800)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1474, file: !1150, line: 790, baseType: !109, size: 32, offset: 832)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1474, file: !1150, line: 792, baseType: !109, size: 32, offset: 864)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1474, file: !1150, line: 793, baseType: !109, size: 32, offset: 896)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1474, file: !1150, line: 794, baseType: !109, size: 32, offset: 928)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1474, file: !1150, line: 795, baseType: !13, size: 32, offset: 960)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1474, file: !1150, line: 797, baseType: !1523, size: 2048, offset: 1024)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1150, line: 551, size: 2048, elements: !1524)
!1524 = !{!1525, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1545, !1548, !1549, !1550}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1523, file: !1150, line: 553, baseType: !1526, size: 128)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1150, line: 411, size: 128, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1526, file: !1150, line: 412, baseType: !210, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1526, file: !1150, line: 413, baseType: !265, size: 32, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1523, file: !1150, line: 554, baseType: !820, size: 192, align: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1523, file: !1150, line: 555, baseType: !200, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1523, file: !1150, line: 556, baseType: !200, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1523, file: !1150, line: 558, baseType: !187, size: 128, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1523, file: !1150, line: 559, baseType: !13, size: 32, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1523, file: !1150, line: 561, baseType: !200, size: 64, offset: 640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1523, file: !1150, line: 562, baseType: !200, size: 64, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1523, file: !1150, line: 563, baseType: !200, size: 64, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1523, file: !1150, line: 564, baseType: !200, size: 64, offset: 832)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1523, file: !1150, line: 565, baseType: !718, size: 64, offset: 896)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1523, file: !1150, line: 566, baseType: !200, size: 64, offset: 960)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1523, file: !1150, line: 568, baseType: !200, size: 64, offset: 1024)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1523, file: !1150, line: 571, baseType: !109, size: 32, offset: 1088)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1523, file: !1150, line: 572, baseType: !1544, size: 64, offset: 1152)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1523, file: !1150, line: 574, baseType: !1546, size: 64, offset: 1216)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1150, line: 49, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1523, file: !1150, line: 576, baseType: !1546, size: 64, offset: 1280)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1523, file: !1150, line: 578, baseType: !210, size: 64, offset: 1344)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1523, file: !1150, line: 588, baseType: !1551, size: 512, align: 512, offset: 1536)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1150, line: 497, size: 512, align: 512, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1551, file: !1150, line: 498, baseType: !200, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1551, file: !1150, line: 499, baseType: !200, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1551, file: !1150, line: 500, baseType: !200, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1551, file: !1150, line: 501, baseType: !265, size: 32, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1551, file: !1150, line: 502, baseType: !265, size: 32, offset: 224)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1551, file: !1150, line: 503, baseType: !210, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1551, file: !1150, line: 504, baseType: !210, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1551, file: !1150, line: 505, baseType: !210, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1551, file: !1150, line: 506, baseType: !1562, size: 64, align: 64, offset: 448)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1150, line: 445, size: 64, align: 64, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1562, file: !1150, line: 446, baseType: !13, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1562, file: !1150, line: 447, baseType: !13, size: 32, offset: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1474, file: !1150, line: 798, baseType: !1567, size: 384, offset: 3072)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1150, line: 592, size: 384, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1567, file: !1150, line: 593, baseType: !187, size: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1567, file: !1150, line: 594, baseType: !210, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1567, file: !1150, line: 595, baseType: !210, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1567, file: !1150, line: 596, baseType: !13, size: 32, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1567, file: !1150, line: 597, baseType: !286, size: 16, offset: 288)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1567, file: !1150, line: 598, baseType: !286, size: 16, offset: 304)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1567, file: !1150, line: 600, baseType: !1576, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1474, file: !1150, line: 799, baseType: !1578, size: 1792, offset: 3456)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1150, line: 610, size: 1792, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1669, !1670}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1578, file: !1150, line: 611, baseType: !820, size: 192, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1578, file: !1150, line: 618, baseType: !200, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1578, file: !1150, line: 619, baseType: !200, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1578, file: !1150, line: 620, baseType: !200, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1578, file: !1150, line: 621, baseType: !200, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1578, file: !1150, line: 622, baseType: !200, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1578, file: !1150, line: 629, baseType: !718, size: 64, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1578, file: !1150, line: 630, baseType: !200, size: 64, offset: 576)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !1150, line: 631, baseType: !13, size: 32, offset: 640)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1578, file: !1150, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1578, file: !1150, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1578, file: !1150, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1578, file: !1150, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1578, file: !1150, line: 662, baseType: !1594, size: 512, offset: 704)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !31, line: 118, size: 512, elements: !1595)
!1595 = !{!1596, !1604, !1605, !1610, !1665, !1666, !1667, !1668}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1594, file: !31, line: 119, baseType: !1597, size: 256)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1598, line: 9, size: 256, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1597, file: !1598, line: 10, baseType: !820, size: 192, align: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1597, file: !1598, line: 11, baseType: !1602, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1603, line: 29, baseType: !718)
!1603 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1594, file: !31, line: 120, baseType: !1602, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1594, file: !31, line: 121, baseType: !1606, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!30, !1609}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1594, file: !31, line: 122, baseType: !1611, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !31, line: 159, size: 512, align: 512, elements: !1613)
!1613 = !{!1614, !1639, !1640, !1643, !1648, !1649, !1660, !1664}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1612, file: !31, line: 160, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !31, line: 215, size: 4608, align: 512, elements: !1617)
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1616, file: !31, line: 216, baseType: !666, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1616, file: !31, line: 217, baseType: !13, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1616, file: !31, line: 218, baseType: !13, size: 32, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1616, file: !31, line: 219, baseType: !13, size: 32, offset: 96)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1616, file: !31, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1616, file: !31, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1616, file: !31, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1616, file: !31, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1616, file: !31, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1616, file: !31, line: 226, baseType: !13, size: 32, offset: 160)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1616, file: !31, line: 227, baseType: !286, size: 16, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1616, file: !31, line: 228, baseType: !286, size: 16, offset: 208)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1616, file: !31, line: 229, baseType: !13, size: 32, offset: 224)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1616, file: !31, line: 235, baseType: !1602, size: 64, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1616, file: !31, line: 236, baseType: !1609, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1616, file: !31, line: 237, baseType: !1602, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1616, file: !31, line: 238, baseType: !1609, size: 64, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1616, file: !31, line: 239, baseType: !1636, size: 4096, align: 512, offset: 512)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1612, size: 4096, align: 512, elements: !1637)
!1637 = !{!1638}
!1638 = !DISubrange(count: 8)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1612, file: !31, line: 161, baseType: !13, size: 32, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1612, file: !31, line: 162, baseType: !1641, size: 32, offset: 96)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !182, line: 32, baseType: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !407, line: 96, baseType: !109)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1612, file: !31, line: 163, baseType: !1644, size: 32, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !494, line: 274, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !494, line: 274, size: 32, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1645, file: !494, line: 274, baseType: !498, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1612, file: !31, line: 164, baseType: !1609, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1612, file: !31, line: 165, baseType: !1650, size: 128, offset: 256)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1598, line: 14, size: 128, elements: !1651)
!1651 = !{!1652}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1650, file: !1598, line: 15, baseType: !1653, size: 128)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !821, line: 26, size: 128, elements: !1654)
!1654 = !{!1655, !1659}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1653, file: !821, line: 27, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !821, line: 12, size: 64, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1656, file: !821, line: 13, baseType: !825, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1653, file: !821, line: 28, baseType: !825, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1612, file: !31, line: 166, baseType: !1661, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!1602}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1612, file: !31, line: 167, baseType: !1602, size: 64, offset: 448)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1594, file: !31, line: 123, baseType: !335, size: 8, offset: 448)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1594, file: !31, line: 124, baseType: !335, size: 8, offset: 456)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1594, file: !31, line: 125, baseType: !335, size: 8, offset: 464)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1594, file: !31, line: 126, baseType: !335, size: 8, offset: 472)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1578, file: !1150, line: 671, baseType: !1594, size: 512, offset: 1216)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1578, file: !1150, line: 679, baseType: !1671, size: 64, offset: 1728)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1474, file: !1150, line: 800, baseType: !1673, size: 64, offset: 5248)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1150, line: 800, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1474, file: !1150, line: 809, baseType: !1677, size: 64, offset: 5312)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1150, line: 70, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1474, file: !1150, line: 825, baseType: !1680, size: 2048, align: 512, offset: 5632)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1150, line: 509, size: 2048, align: 512, elements: !1681)
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1680, file: !1150, line: 511, baseType: !200, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1680, file: !1150, line: 512, baseType: !200, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1680, file: !1150, line: 513, baseType: !200, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1680, file: !1150, line: 514, baseType: !200, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1680, file: !1150, line: 515, baseType: !200, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1680, file: !1150, line: 516, baseType: !200, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1680, file: !1150, line: 518, baseType: !200, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1680, file: !1150, line: 519, baseType: !200, size: 64, offset: 448)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1680, file: !1150, line: 520, baseType: !718, size: 64, offset: 512)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1680, file: !1150, line: 522, baseType: !200, size: 64, offset: 576)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1680, file: !1150, line: 523, baseType: !200, size: 64, offset: 640)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1680, file: !1150, line: 524, baseType: !718, size: 64, offset: 704)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1680, file: !1150, line: 526, baseType: !718, size: 64, offset: 768)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1680, file: !1150, line: 527, baseType: !200, size: 64, offset: 832)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1680, file: !1150, line: 529, baseType: !200, size: 64, offset: 896)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1680, file: !1150, line: 530, baseType: !200, size: 64, offset: 960)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1680, file: !1150, line: 531, baseType: !200, size: 64, offset: 1024)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1680, file: !1150, line: 532, baseType: !200, size: 64, offset: 1088)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1680, file: !1150, line: 533, baseType: !200, size: 64, offset: 1152)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1680, file: !1150, line: 535, baseType: !200, size: 64, offset: 1216)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1680, file: !1150, line: 536, baseType: !200, size: 64, offset: 1280)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1680, file: !1150, line: 537, baseType: !200, size: 64, offset: 1344)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1680, file: !1150, line: 538, baseType: !200, size: 64, offset: 1408)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1680, file: !1150, line: 539, baseType: !200, size: 64, offset: 1472)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1680, file: !1150, line: 540, baseType: !200, size: 64, offset: 1536)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1680, file: !1150, line: 541, baseType: !200, size: 64, offset: 1600)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1680, file: !1150, line: 542, baseType: !200, size: 64, offset: 1664)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1680, file: !1150, line: 543, baseType: !200, size: 64, offset: 1728)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1474, file: !1150, line: 833, baseType: !13, size: 32, offset: 7680)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1474, file: !1150, line: 836, baseType: !13, size: 32, offset: 7712)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1474, file: !1150, line: 837, baseType: !109, size: 32, offset: 7744)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1474, file: !1150, line: 838, baseType: !1714, size: 64, offset: 7808)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1717, line: 19, baseType: !1718)
!1717 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1717, line: 19, size: 64, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1718, file: !1717, line: 19, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 64, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 1)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1474, file: !1150, line: 839, baseType: !1725, size: 64, offset: 7872)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1474, file: !1150, line: 840, baseType: !1716, size: 64, offset: 7936)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1474, file: !1150, line: 841, baseType: !180, size: 64, offset: 8000)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1474, file: !1150, line: 843, baseType: !286, size: 16, offset: 8064)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1474, file: !1150, line: 845, baseType: !286, size: 16, offset: 8080)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1474, file: !1150, line: 848, baseType: !109, size: 32, offset: 8096)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1474, file: !1150, line: 849, baseType: !1732, size: 32, offset: 8128)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1150, line: 718, size: 32, elements: !1733)
!1733 = !{!1734, !1741}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1732, file: !1150, line: 724, baseType: !1735, size: 32)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !1150, line: 719, size: 32, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1740}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1735, file: !1150, line: 720, baseType: !335, size: 8)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1735, file: !1150, line: 721, baseType: !335, size: 8, offset: 8)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1735, file: !1150, line: 722, baseType: !335, size: 8, offset: 16)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1735, file: !1150, line: 723, baseType: !335, size: 8, offset: 24)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1732, file: !1150, line: 725, baseType: !265, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1474, file: !1150, line: 850, baseType: !187, size: 128, offset: 8192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1474, file: !1150, line: 851, baseType: !1744, size: 64, offset: 8320)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1150, line: 60, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1474, file: !1150, line: 855, baseType: !210, size: 64, offset: 8384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1474, file: !1150, line: 856, baseType: !335, size: 8, offset: 8448)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1474, file: !1150, line: 857, baseType: !335, size: 8, offset: 8456)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1474, file: !1150, line: 858, baseType: !109, size: 32, offset: 8480)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1474, file: !1150, line: 859, baseType: !187, size: 128, offset: 8512)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1474, file: !1150, line: 860, baseType: !109, size: 32, offset: 8640)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1474, file: !1150, line: 861, baseType: !187, size: 128, offset: 8704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1474, file: !1150, line: 873, baseType: !1754, size: 256, offset: 8832)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1150, line: 376, size: 256, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1754, file: !1150, line: 381, baseType: !210, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1754, file: !1150, line: 384, baseType: !204, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1754, file: !1150, line: 389, baseType: !204, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1754, file: !1150, line: 392, baseType: !204, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1474, file: !1150, line: 875, baseType: !187, size: 128, offset: 9088)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1474, file: !1150, line: 877, baseType: !1762, size: 320, offset: 9216)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1763, line: 86, size: 320, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1764 = !{!1765, !1766, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1762, file: !1763, line: 87, baseType: !109, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1762, file: !1763, line: 88, baseType: !187, size: 128, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1762, file: !1763, line: 89, baseType: !187, size: 128, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1474, file: !1150, line: 878, baseType: !820, size: 192, align: 64, offset: 9536)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1474, file: !1150, line: 881, baseType: !1770, size: 64, offset: 9728)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !1772)
!1772 = !{!1773, !2647}
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !44, line: 734, baseType: !1774, size: 10240)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !44, line: 734, size: 10240, elements: !1775)
!1775 = !{!1776, !1780, !1793, !2524, !2525, !2526, !2527, !2528, !2529, !2536, !2537, !2538, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2577, !2579, !2582, !2627, !2628, !2629, !2632, !2633, !2634, !2637, !2638, !2639, !2645, !2646}
!1776 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !44, line: 739, baseType: !1777, size: 512, align: 512)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1774, file: !44, line: 739, size: 512, align: 512, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1777, file: !44, line: 747, baseType: !327, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1774, file: !44, line: 750, baseType: !1781, size: 128, offset: 512)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1782, line: 218, size: 128, elements: !1783)
!1782 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1783 = !{!1784, !1791, !1792}
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !1782, line: 219, baseType: !1785, size: 32)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1781, file: !1782, line: 219, size: 32, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1785, file: !1782, line: 220, baseType: !307, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1785, file: !1782, line: 221, baseType: !1789)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1782, line: 197, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1782, line: 197, elements: !995)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1781, file: !1782, line: 223, baseType: !13, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1781, file: !1782, line: 224, baseType: !180, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1774, file: !44, line: 752, baseType: !1794, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!210, !1797, !210, !210, !210, !210}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1799)
!1799 = !{!1800, !1806, !1807, !1809, !1810, !1811, !1812, !1813, !1863, !2053, !2062, !2063, !2064, !2514, !2515, !2516, !2517, !2519, !2520, !2523}
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !20, line: 995, baseType: !1801, size: 128)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !20, line: 995, size: 128, elements: !1802)
!1802 = !{!1803, !1804, !1805}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1801, file: !20, line: 996, baseType: !1500, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1801, file: !20, line: 997, baseType: !928, size: 128, align: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1801, file: !20, line: 998, baseType: !13, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1798, file: !20, line: 1005, baseType: !307, size: 32, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1798, file: !20, line: 1006, baseType: !1808, size: 32, offset: 160)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !182, line: 156, baseType: !13)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1798, file: !20, line: 1007, baseType: !712, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1798, file: !20, line: 1008, baseType: !708, size: 256, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1798, file: !20, line: 1009, baseType: !608, size: 64, offset: 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1798, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1798, file: !20, line: 1011, baseType: !1814, size: 256, offset: 640)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1815)
!1815 = !{!1816, !1837, !1859, !1860, !1861, !1862}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1814, file: !20, line: 949, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1818, line: 34, baseType: !1819)
!1818 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1818, line: 25, size: 64, elements: !1820)
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1819, file: !1818, line: 26, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1823, line: 27, baseType: !1824)
!1823 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1823, line: 13, size: 64, elements: !1825)
!1825 = !{!1826, !1836}
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !1823, line: 14, baseType: !1827, size: 32)
!1827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !1823, line: 14, size: 32, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1827, file: !1823, line: 15, baseType: !327, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !1823, line: 16, baseType: !1831, size: 32)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !1823, line: 16, size: 32, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1831, file: !1823, line: 18, baseType: !335, size: 8)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1831, file: !1823, line: 19, baseType: !1835, size: 24, offset: 8)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 24, elements: !374)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1824, file: !1823, line: 26, baseType: !319, size: 32, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1814, file: !20, line: 950, baseType: !1838, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !36, line: 59, size: 768, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !1846, !1847, !1848, !1849}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1839, file: !36, line: 61, baseType: !1487, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1839, file: !36, line: 62, baseType: !13, size: 32, offset: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1839, file: !36, line: 63, baseType: !307, size: 32, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1839, file: !36, line: 65, baseType: !1845, size: 256, offset: 128)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 256, elements: !240)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1839, file: !36, line: 66, baseType: !1076, size: 64, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1839, file: !36, line: 68, baseType: !1460, size: 192, offset: 448)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1839, file: !36, line: 69, baseType: !928, size: 128, align: 64, offset: 640)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1839, file: !36, line: 70, baseType: !1850, offset: 768)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1851, elements: !1857)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !36, line: 54, size: 128, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1851, file: !36, line: 55, baseType: !109, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1851, file: !36, line: 56, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !36, line: 56, flags: DIFlagFwdDecl)
!1857 = !{!1858}
!1858 = !DISubrange(count: -1)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1814, file: !20, line: 951, baseType: !35, size: 32, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1814, file: !20, line: 952, baseType: !458, size: 32, offset: 160)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1814, file: !20, line: 952, baseType: !458, size: 32, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1814, file: !20, line: 953, baseType: !109, size: 32, offset: 224)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1798, file: !20, line: 1012, baseType: !1864, size: 64, offset: 896)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1867, line: 110, size: 1472, elements: !1868)
!1867 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1885, !1886, !1887, !1888, !1889, !1890, !1998, !1999, !2000, !2001, !2002, !2033, !2036, !2040, !2048}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1866, file: !1867, line: 111, baseType: !712, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1866, file: !1867, line: 112, baseType: !458, size: 32, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1866, file: !1867, line: 113, baseType: !467, size: 32, offset: 96)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1866, file: !1867, line: 114, baseType: !458, size: 32, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1866, file: !1867, line: 115, baseType: !467, size: 32, offset: 160)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1866, file: !1867, line: 116, baseType: !458, size: 32, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1866, file: !1867, line: 117, baseType: !467, size: 32, offset: 224)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1866, file: !1867, line: 118, baseType: !458, size: 32, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1866, file: !1867, line: 119, baseType: !467, size: 32, offset: 288)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1866, file: !1867, line: 120, baseType: !13, size: 32, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1866, file: !1867, line: 121, baseType: !1880, size: 64, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1881, line: 24, baseType: !1882)
!1881 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1881, line: 24, size: 64, elements: !1883)
!1883 = !{!1884}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1882, file: !1881, line: 24, baseType: !200, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1866, file: !1867, line: 122, baseType: !1880, size: 64, offset: 448)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1866, file: !1867, line: 123, baseType: !1880, size: 64, offset: 512)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1866, file: !1867, line: 124, baseType: !1880, size: 64, offset: 576)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1866, file: !1867, line: 125, baseType: !1880, size: 64, offset: 640)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1866, file: !1867, line: 127, baseType: !277, size: 8, offset: 704)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1866, file: !1867, line: 129, baseType: !1891, size: 64, offset: 768)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1893, line: 195, size: 1728, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1894 = !{!1895, !1896, !1899, !1904, !1905, !1908, !1909, !1914, !1915, !1916, !1917, !1920, !1921, !1922, !1923, !1924, !1962, !1983}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1892, file: !1893, line: 196, baseType: !1487, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1892, file: !1893, line: 197, baseType: !1897, size: 32, offset: 32)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1893, line: 28, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !182, line: 104, baseType: !704)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1893, line: 198, baseType: !1900, size: 192, offset: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1893, line: 198, size: 192, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1900, file: !1893, line: 199, baseType: !187, size: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1900, file: !1893, line: 200, baseType: !820, size: 192, align: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1892, file: !1893, line: 205, baseType: !1367, size: 320, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1892, file: !1893, line: 206, baseType: !1906, size: 64, offset: 576)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1893, line: 206, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1892, file: !1893, line: 207, baseType: !180, size: 64, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1893, line: 208, baseType: !1910, size: 64, offset: 704)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1893, line: 208, size: 64, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1910, file: !1893, line: 209, baseType: !1208, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1910, file: !1893, line: 210, baseType: !1208, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1892, file: !1893, line: 212, baseType: !1208, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1892, file: !1893, line: 213, baseType: !458, size: 32, offset: 832)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1892, file: !1893, line: 214, baseType: !467, size: 32, offset: 864)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1892, file: !1893, line: 215, baseType: !1918, size: 32, offset: 896)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1893, line: 31, baseType: !1919)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !182, line: 110, baseType: !265)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1892, file: !1893, line: 216, baseType: !286, size: 16, offset: 928)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1892, file: !1893, line: 217, baseType: !286, size: 16, offset: 944)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1892, file: !1893, line: 221, baseType: !846, size: 16, offset: 960)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1892, file: !1893, line: 228, baseType: !210, size: 64, offset: 1024)
!1924 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1893, line: 245, baseType: !1925, size: 320, offset: 1088)
!1925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1893, line: 245, size: 320, elements: !1926)
!1926 = !{!1927, !1954}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1925, file: !1893, line: 246, baseType: !1928, size: 320)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1893, line: 114, size: 320, elements: !1929)
!1929 = !{!1930, !1931, !1943, !1946, !1953}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1928, file: !1893, line: 116, baseType: !210, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1928, file: !1893, line: 117, baseType: !1932, size: 64, offset: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1928, file: !1893, line: 117, size: 64, elements: !1933)
!1933 = !{!1934, !1942}
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !1893, line: 118, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !1893, line: 118, size: 64, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1935, file: !1893, line: 120, baseType: !342, size: 16)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1935, file: !1893, line: 121, baseType: !1939, size: 48, offset: 16)
!1939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1940)
!1940 = !{!1941}
!1941 = !DISubrange(count: 6)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1932, file: !1893, line: 127, baseType: !210, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1928, file: !1893, line: 129, baseType: !1944, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1893, line: 102, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1928, file: !1893, line: 130, baseType: !1947, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1893, line: 108, size: 192, elements: !1949)
!1949 = !{!1950, !1951, !1952}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1948, file: !1893, line: 109, baseType: !928, size: 128, align: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1948, file: !1893, line: 110, baseType: !1487, size: 32, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1948, file: !1893, line: 111, baseType: !788, size: 8, offset: 160)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1928, file: !1893, line: 131, baseType: !207, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1925, file: !1893, line: 247, baseType: !1955, size: 320)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1925, file: !1893, line: 247, size: 320, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1961}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1955, file: !1893, line: 248, baseType: !210, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1955, file: !1893, line: 249, baseType: !210, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1955, file: !1893, line: 250, baseType: !1944, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1955, file: !1893, line: 251, baseType: !1947, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1955, file: !1893, line: 252, baseType: !373, size: 64, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1893, line: 260, baseType: !1963, size: 256, offset: 1408)
!1963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1893, line: 260, size: 256, elements: !1964)
!1964 = !{!1965, !1971}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1963, file: !1893, line: 261, baseType: !1966, size: 256)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1893, line: 134, size: 256, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1966, file: !1893, line: 135, baseType: !180, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1966, file: !1893, line: 136, baseType: !1970, size: 256)
!1970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !240)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1963, file: !1893, line: 262, baseType: !1972, size: 256)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1963, file: !1893, line: 262, size: 256, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1972, file: !1893, line: 264, baseType: !187, size: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1972, file: !1893, line: 265, baseType: !1976, size: 128, offset: 128)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1977, line: 22, size: 128, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1978 = !{!1979, !1982}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1976, file: !1977, line: 23, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1977, line: 23, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1976, file: !1977, line: 24, baseType: !210, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1892, file: !1893, line: 280, baseType: !1984, size: 64, offset: 1664)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1893, line: 176, size: 192, elements: !1986)
!1986 = !{!1987, !1996, !1997}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1985, file: !1893, line: 177, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1893, line: 171, baseType: !1989)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!109, !1891, !1992, !1994, !1891}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1945)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1966)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1985, file: !1893, line: 178, baseType: !1891, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1985, file: !1893, line: 179, baseType: !1944, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1866, file: !1867, line: 130, baseType: !1891, size: 64, offset: 832)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1866, file: !1867, line: 131, baseType: !1891, size: 64, offset: 896)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1866, file: !1867, line: 132, baseType: !1891, size: 64, offset: 960)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1866, file: !1867, line: 135, baseType: !180, size: 64, offset: 1024)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1866, file: !1867, line: 137, baseType: !2003, size: 64, offset: 1088)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2005, line: 14, size: 1088, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2006 = !{!2007, !2008, !2017, !2018, !2019, !2020, !2021, !2022}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2004, file: !2005, line: 15, baseType: !1487, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2004, file: !2005, line: 17, baseType: !2009, size: 320, offset: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2010, line: 22, size: 320, elements: !2011)
!2010 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2011 = !{!2012, !2013, !2014, !2015}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2009, file: !2010, line: 23, baseType: !666, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2009, file: !2010, line: 24, baseType: !718, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2009, file: !2010, line: 26, baseType: !187, size: 128, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2009, file: !2010, line: 28, baseType: !2016, size: 64, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2004, file: !2005, line: 19, baseType: !210, size: 64, offset: 384)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2004, file: !2005, line: 20, baseType: !712, size: 64, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2004, file: !2005, line: 23, baseType: !952, size: 128, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2004, file: !2005, line: 24, baseType: !458, size: 32, offset: 640)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2004, file: !2005, line: 29, baseType: !712, size: 64, offset: 704)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2004, file: !2005, line: 36, baseType: !2023, size: 320, offset: 768)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2024, line: 15, size: 320, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2023, file: !2024, line: 16, baseType: !666, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2023, file: !2024, line: 18, baseType: !109, size: 32, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2023, file: !2024, line: 19, baseType: !109, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2023, file: !2024, line: 20, baseType: !109, size: 32, offset: 96)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2023, file: !2024, line: 21, baseType: !109, size: 32, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2023, file: !2024, line: 22, baseType: !210, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2023, file: !2024, line: 23, baseType: !210, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1866, file: !1867, line: 138, baseType: !2034, size: 64, offset: 1152)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !459, line: 18, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1866, file: !1867, line: 139, baseType: !2037, size: 64, offset: 1216)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2039, line: 16, flags: DIFlagFwdDecl)
!2039 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1866, file: !1867, line: 140, baseType: !2041, size: 64, offset: 1280)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1867, line: 25, size: 64, elements: !2043)
!2043 = !{!2044, !2045, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2042, file: !1867, line: 26, baseType: !327, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2042, file: !1867, line: 27, baseType: !109, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2042, file: !1867, line: 28, baseType: !2047, offset: 64)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, elements: !1857)
!2048 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !1867, line: 142, baseType: !2049, size: 128, offset: 1344)
!2049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !1867, line: 142, size: 128, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2049, file: !1867, line: 143, baseType: !109, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2049, file: !1867, line: 144, baseType: !928, size: 128, align: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1798, file: !20, line: 1013, baseType: !2054, size: 256, offset: 960)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2059, !2060, !2061}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2054, file: !20, line: 971, baseType: !210, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2054, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2054, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2054, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2054, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2054, file: !20, line: 976, baseType: !608, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1798, file: !20, line: 1014, baseType: !1279, size: 128, offset: 1216)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1798, file: !20, line: 1015, baseType: !452, size: 64, offset: 1344)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1798, file: !20, line: 1016, baseType: !2065, size: 64, offset: 1408)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2067)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !2068)
!2068 = !{!2069, !2070, !2074, !2079, !2083, !2112, !2113, !2119, !2132, !2140, !2144, !2145, !2436, !2437, !2441, !2446, !2447, !2451, !2455, !2461, !2462, !2466, !2467, !2473, !2477, !2481, !2487, !2491, !2495, !2499, !2503, !2504, !2510}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2067, file: !20, line: 1915, baseType: !637, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2067, file: !20, line: 1916, baseType: !2071, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!608, !1797, !608, !109}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2067, file: !20, line: 1917, baseType: !2075, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!405, !1797, !373, !420, !2078}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2067, file: !20, line: 1918, baseType: !2080, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!405, !1797, !207, !420, !2078}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2067, file: !20, line: 1919, baseType: !2084, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!405, !2087, !2109}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2096, !2097, !2098, !2099}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2088, file: !20, line: 374, baseType: !1797, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2088, file: !20, line: 375, baseType: !608, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2088, file: !20, line: 376, baseType: !2093, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !2087, !409}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2088, file: !20, line: 377, baseType: !180, size: 64, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2088, file: !20, line: 378, baseType: !109, size: 32, offset: 256)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2088, file: !20, line: 379, baseType: !342, size: 16, offset: 288)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2088, file: !20, line: 380, baseType: !2100, size: 64, offset: 320)
!2100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2088, file: !20, line: 380, size: 64, elements: !2101)
!2101 = !{!2102, !2105}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2100, file: !20, line: 386, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2100, file: !20, line: 395, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!405, !180}
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2111, line: 17, flags: DIFlagFwdDecl)
!2111 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2067, file: !20, line: 1920, baseType: !2084, size: 64, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2067, file: !20, line: 1921, baseType: !2114, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!109, !2087, !2117, !13}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2067, file: !20, line: 1923, baseType: !2120, size: 64, offset: 448)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!109, !1797, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !2125)
!2125 = !{!2126, !2131}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2124, file: !20, line: 1859, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !2128)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!788, !2123, !207, !109, !608, !200, !13}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2124, file: !20, line: 1860, baseType: !608, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2067, file: !20, line: 1924, baseType: !2133, size: 64, offset: 512)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2136, !1797, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2137, line: 59, baseType: !13)
!2137 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !623, line: 31, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2067, file: !20, line: 1925, baseType: !2141, size: 64, offset: 576)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!409, !1797, !13, !210}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2067, file: !20, line: 1926, baseType: !2141, size: 64, offset: 640)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2067, file: !20, line: 1927, baseType: !2146, size: 64, offset: 704)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!109, !1797, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !2151)
!2151 = !{!2152, !2161, !2162, !2170, !2177, !2178, !2183, !2184, !2189, !2190, !2193, !2429, !2430, !2431, !2432, !2433, !2434}
!2152 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !44, line: 628, baseType: !2153, size: 128)
!2153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2150, file: !44, line: 628, size: 128, elements: !2154)
!2154 = !{!2155, !2160}
!2155 = !DIDerivedType(tag: DW_TAG_member, scope: !2153, file: !44, line: 629, baseType: !2156, size: 128)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2153, file: !44, line: 629, size: 128, elements: !2157)
!2157 = !{!2158, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2156, file: !44, line: 631, baseType: !210, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2156, file: !44, line: 632, baseType: !210, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2153, file: !44, line: 635, baseType: !928, size: 128, align: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2150, file: !44, line: 639, baseType: !1770, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2150, file: !44, line: 640, baseType: !2163, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2164, line: 297, baseType: !2165)
!2164 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2164, line: 297, size: 64, elements: !2166)
!2166 = !{!2167}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2165, file: !2164, line: 297, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2169, line: 19, baseType: !210)
!2169 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !44, line: 646, baseType: !2171, size: 64, offset: 256)
!2171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2150, file: !44, line: 646, size: 64, elements: !2172)
!2172 = !{!2173, !2176}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2171, file: !44, line: 647, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2175)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !210)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2171, file: !44, line: 648, baseType: !2175, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2150, file: !44, line: 666, baseType: !109, size: 32, offset: 320)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2150, file: !44, line: 667, baseType: !2179, size: 64, offset: 384)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !2181)
!2181 = !{!2182}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2180, file: !44, line: 580, baseType: !1367, size: 320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2150, file: !44, line: 670, baseType: !788, size: 8, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2150, file: !44, line: 681, baseType: !2185, size: 256, offset: 512)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2150, file: !44, line: 678, size: 256, elements: !2186)
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2185, file: !44, line: 679, baseType: !820, size: 192, align: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2185, file: !44, line: 680, baseType: !210, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2150, file: !44, line: 689, baseType: !187, size: 128, offset: 768)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2150, file: !44, line: 691, baseType: !2191, size: 64, offset: 896)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2150, file: !44, line: 694, baseType: !2194, size: 64, offset: 960)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2196)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2197, line: 563, size: 1024, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2198 = !{!2199, !2203, !2204, !2208, !2212, !2216, !2393, !2397, !2401, !2405, !2406, !2407, !2411, !2415, !2421, !2425}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2196, file: !2197, line: 564, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !2149}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2196, file: !2197, line: 569, baseType: !2200, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2196, file: !2197, line: 571, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!109, !2149, !210}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2196, file: !2197, line: 572, baseType: !2209, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!109, !2149}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2196, file: !2197, line: 578, baseType: !2213, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!109, !2149, !210, !210, !210}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2196, file: !2197, line: 580, baseType: !2217, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!2220, !2221}
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2197, line: 512, size: 896, elements: !2223)
!2223 = !{!2224, !2232, !2233, !2240, !2247, !2257, !2386, !2387, !2389, !2391}
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2222, file: !2197, line: 513, baseType: !2225, size: 320)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2222, file: !2197, line: 513, size: 320, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230, !2231}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2225, file: !2197, line: 514, baseType: !2149, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2225, file: !2197, line: 515, baseType: !181, size: 32, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2225, file: !2197, line: 516, baseType: !210, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2225, file: !2197, line: 517, baseType: !210, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2225, file: !2197, line: 518, baseType: !210, size: 64, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2222, file: !2197, line: 520, baseType: !43, size: 32, offset: 320)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2222, file: !2197, line: 522, baseType: !2234, size: 64, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2169, line: 22, baseType: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2169, line: 22, size: 64, elements: !2237)
!2237 = !{!2238}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2236, file: !2169, line: 22, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2169, line: 15, baseType: !210)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2222, file: !2197, line: 524, baseType: !2241, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2164, line: 372, baseType: !2243)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2164, line: 372, size: 64, elements: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2243, file: !2164, line: 372, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2169, line: 16, baseType: !210)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2222, file: !2197, line: 527, baseType: !2248, size: 64, offset: 512)
!2248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2222, file: !2197, line: 527, size: 64, elements: !2249)
!2249 = !{!2250, !2256}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2248, file: !2197, line: 528, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2169, line: 21, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2169, line: 21, size: 64, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2252, file: !2169, line: 21, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2169, line: 14, baseType: !210)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2248, file: !2197, line: 529, baseType: !2235, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2222, file: !2197, line: 534, baseType: !2258, size: 64, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !2260)
!2260 = !{!2261, !2262, !2380, !2385}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2259, file: !44, line: 75, baseType: !210, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !44, line: 83, baseType: !2263, size: 320, offset: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2259, file: !44, line: 83, size: 320, elements: !2264)
!2264 = !{!2265, !2286, !2300, !2304, !2379}
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !44, line: 84, baseType: !2266, size: 320)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2263, file: !44, line: 84, size: 320, elements: !2267)
!2267 = !{!2268, !2279, !2280, !2285}
!2268 = !DIDerivedType(tag: DW_TAG_member, scope: !2266, file: !44, line: 90, baseType: !2269, size: 128)
!2269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !44, line: 90, size: 128, elements: !2270)
!2270 = !{!2271, !2272, !2277, !2278}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2269, file: !44, line: 91, baseType: !187, size: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2269, file: !44, line: 94, baseType: !2273, size: 128)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2269, file: !44, line: 94, size: 128, elements: !2274)
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2273, file: !44, line: 96, baseType: !180, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2273, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2269, file: !44, line: 102, baseType: !187, size: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2269, file: !44, line: 103, baseType: !187, size: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2266, file: !44, line: 106, baseType: !448, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !2266, file: !44, line: 107, baseType: !2281, size: 64, offset: 192)
!2281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !44, line: 107, size: 64, elements: !2282)
!2282 = !{!2283, !2284}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2281, file: !44, line: 108, baseType: !210, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2281, file: !44, line: 109, baseType: !210, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2266, file: !44, line: 117, baseType: !210, size: 64, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !44, line: 119, baseType: !2287, size: 320)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2263, file: !44, line: 119, size: 320, elements: !2288)
!2288 = !{!2289, !2290, !2293, !2294, !2295}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2287, file: !44, line: 124, baseType: !210, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2287, file: !44, line: 125, baseType: !2291, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2287, file: !44, line: 126, baseType: !210, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2287, file: !44, line: 127, baseType: !210, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !44, line: 128, baseType: !2296, size: 64, offset: 256)
!2296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2287, file: !44, line: 128, size: 64, elements: !2297)
!2297 = !{!2298, !2299}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2296, file: !44, line: 133, baseType: !210, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2296, file: !44, line: 138, baseType: !712, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !44, line: 141, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2263, file: !44, line: 141, size: 64, elements: !2302)
!2302 = !{!2303}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2301, file: !44, line: 142, baseType: !210, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2263, file: !44, line: 144, baseType: !2305, size: 128)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2263, file: !44, line: 144, size: 128, elements: !2306)
!2306 = !{!2307, !2378}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2305, file: !44, line: 146, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !60, line: 126, size: 1216, elements: !2310)
!2310 = !{!2311, !2321, !2342, !2343, !2344, !2345, !2346, !2360, !2361, !2362}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2309, file: !60, line: 127, baseType: !2312, size: 384)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !60, line: 21, size: 384, elements: !2313)
!2313 = !{!2314, !2315, !2317, !2318, !2319, !2320}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2312, file: !60, line: 22, baseType: !210, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2312, file: !60, line: 23, baseType: !2316, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2312, file: !60, line: 24, baseType: !2316, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2312, file: !60, line: 25, baseType: !210, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2312, file: !60, line: 26, baseType: !210, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2312, file: !60, line: 27, baseType: !210, size: 64, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2309, file: !60, line: 128, baseType: !2322, size: 128, offset: 384)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2323, line: 105, size: 128, elements: !2324)
!2323 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2322, file: !2323, line: 110, baseType: !210, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2322, file: !2323, line: 118, baseType: !2327, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2323, line: 95, size: 448, elements: !2329)
!2329 = !{!2330, !2331, !2337, !2338, !2339, !2340, !2341}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2328, file: !2323, line: 96, baseType: !712, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2328, file: !2323, line: 97, baseType: !2332, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2323, line: 60, baseType: !2334)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2328, file: !2323, line: 98, baseType: !2332, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2328, file: !2323, line: 99, baseType: !788, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2328, file: !2323, line: 100, baseType: !788, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2328, file: !2323, line: 101, baseType: !928, size: 128, align: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2328, file: !2323, line: 102, baseType: !2336, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2309, file: !60, line: 129, baseType: !657, size: 256, offset: 512)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2309, file: !60, line: 130, baseType: !59, size: 32, offset: 768)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2309, file: !60, line: 131, baseType: !13, size: 32, offset: 800)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2309, file: !60, line: 132, baseType: !210, size: 64, offset: 832)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2309, file: !60, line: 133, baseType: !2347, size: 64, offset: 896)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2349)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !60, line: 77, size: 192, elements: !2350)
!2350 = !{!2351, !2355, !2356}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2349, file: !60, line: 83, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !2258}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2349, file: !60, line: 89, baseType: !2217, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2349, file: !60, line: 100, baseType: !2357, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!109, !2308, !210, !210, !109}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2309, file: !60, line: 134, baseType: !180, size: 64, offset: 960)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2309, file: !60, line: 135, baseType: !109, size: 32, offset: 1024)
!2362 = !DIDerivedType(tag: DW_TAG_member, scope: !2309, file: !60, line: 136, baseType: !2363, size: 128, offset: 1088)
!2363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2309, file: !60, line: 136, size: 128, elements: !2364)
!2364 = !{!2365, !2371}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2363, file: !60, line: 137, baseType: !2366, size: 128)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2367, line: 6, size: 128, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2366, file: !2367, line: 7, baseType: !200, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2366, file: !2367, line: 8, baseType: !200, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2363, file: !60, line: 138, baseType: !2372)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2363, file: !60, line: 138, elements: !2373)
!2373 = !{!2374, !2376}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2372, file: !60, line: 138, baseType: !2375)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2372, file: !60, line: 138, elements: !995)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2372, file: !60, line: 138, baseType: !2377)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2366, elements: !1857)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2305, file: !44, line: 147, baseType: !180, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2263, file: !44, line: 161, baseType: !928, size: 128, align: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !44, line: 164, baseType: !2381, size: 32, offset: 384)
!2381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2259, file: !44, line: 164, size: 32, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2381, file: !44, line: 169, baseType: !327, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2381, file: !44, line: 177, baseType: !13, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2259, file: !44, line: 181, baseType: !327, size: 32, offset: 416)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2222, file: !2197, line: 535, baseType: !2258, size: 64, offset: 640)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2222, file: !2197, line: 541, baseType: !2388, size: 64, offset: 704)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2222, file: !2197, line: 545, baseType: !2390, size: 64, offset: 768)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2222, file: !2197, line: 549, baseType: !2392, size: 64, offset: 832)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2164, line: 520, baseType: !2258)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2196, file: !2197, line: 581, baseType: !2394, size: 64, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!2220, !2221, !13}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2196, file: !2197, line: 582, baseType: !2398, size: 64, offset: 448)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!2220, !2221, !210, !210}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2196, file: !2197, line: 584, baseType: !2402, size: 64, offset: 512)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!210, !2149}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2196, file: !2197, line: 588, baseType: !2217, size: 64, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2196, file: !2197, line: 591, baseType: !2217, size: 64, offset: 640)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2196, file: !2197, line: 597, baseType: !2408, size: 64, offset: 704)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!109, !2149, !210, !180, !109, !109}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2196, file: !2197, line: 603, baseType: !2412, size: 64, offset: 768)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!207, !2149}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2196, file: !2197, line: 613, baseType: !2416, size: 64, offset: 832)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!109, !2149, !2419}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !44, line: 717, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2196, file: !2197, line: 625, baseType: !2422, size: 64, offset: 896)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!2419, !2149, !210}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2196, file: !2197, line: 633, baseType: !2426, size: 64, offset: 960)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!2258, !2149, !210}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2150, file: !44, line: 697, baseType: !210, size: 64, offset: 1024)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2150, file: !44, line: 699, baseType: !1797, size: 64, offset: 1088)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2150, file: !44, line: 700, baseType: !180, size: 64, offset: 1152)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2150, file: !44, line: 711, baseType: !712, size: 64, offset: 1216)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2150, file: !44, line: 717, baseType: !2419, size: 64, offset: 1280)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2150, file: !44, line: 722, baseType: !2435, offset: 1344)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !995)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2067, file: !20, line: 1928, baseType: !210, size: 64, offset: 768)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2067, file: !20, line: 1929, baseType: !2438, size: 64, offset: 832)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!109, !452, !1797}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2067, file: !20, line: 1930, baseType: !2442, size: 64, offset: 896)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!109, !1797, !2445}
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !180)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2067, file: !20, line: 1931, baseType: !2438, size: 64, offset: 960)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2067, file: !20, line: 1932, baseType: !2448, size: 64, offset: 1024)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!109, !1797, !608, !608, !109}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2067, file: !20, line: 1933, baseType: !2452, size: 64, offset: 1088)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!109, !109, !1797, !109}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2067, file: !20, line: 1934, baseType: !2456, size: 64, offset: 1152)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!109, !1797, !109, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2067, file: !20, line: 1935, baseType: !1794, size: 64, offset: 1216)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2067, file: !20, line: 1936, baseType: !2463, size: 64, offset: 1280)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!109, !109}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2067, file: !20, line: 1937, baseType: !2456, size: 64, offset: 1344)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2067, file: !20, line: 1938, baseType: !2468, size: 64, offset: 1408)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!405, !2471, !1797, !2078, !420, !13}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1150, line: 59, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2067, file: !20, line: 1939, baseType: !2474, size: 64, offset: 1472)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!405, !1797, !2078, !2471, !420, !13}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2067, file: !20, line: 1940, baseType: !2478, size: 64, offset: 1536)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !1797}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2067, file: !20, line: 1941, baseType: !2482, size: 64, offset: 1600)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!109, !1797, !109, !2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2067, file: !20, line: 1942, baseType: !2488, size: 64, offset: 1664)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!409, !1797, !109, !608, !608}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2067, file: !20, line: 1944, baseType: !2492, size: 64, offset: 1728)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !1148, !1797}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2067, file: !20, line: 1948, baseType: !2496, size: 64, offset: 1792)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!405, !1797, !608, !1797, !608, !420, !13}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2067, file: !20, line: 1950, baseType: !2500, size: 64, offset: 1856)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!608, !1797, !608, !1797, !608, !608, !13}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2067, file: !20, line: 1953, baseType: !2448, size: 64, offset: 1920)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2067, file: !20, line: 1954, baseType: !2505, size: 64, offset: 1984)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!109, !2508, !13}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2067, file: !20, line: 1955, baseType: !2511, size: 64, offset: 2048)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!109, !2508, !2117, !13}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1798, file: !20, line: 1018, baseType: !200, size: 64, offset: 1472)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1798, file: !20, line: 1020, baseType: !180, size: 64, offset: 1536)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1798, file: !20, line: 1023, baseType: !180, size: 64, offset: 1600)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1798, file: !20, line: 1027, baseType: !2518, size: 64, offset: 1664)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1798, file: !20, line: 1029, baseType: !448, size: 64, offset: 1728)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1798, file: !20, line: 1030, baseType: !2521, size: 32, offset: 1792)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2522, line: 8, baseType: !265)
!2522 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1798, file: !20, line: 1031, baseType: !2521, size: 32, offset: 1824)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1774, file: !44, line: 756, baseType: !210, size: 64, offset: 704)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1774, file: !44, line: 757, baseType: !210, size: 64, offset: 768)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1774, file: !44, line: 760, baseType: !210, size: 64, offset: 832)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1774, file: !44, line: 761, baseType: !210, size: 64, offset: 896)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1774, file: !44, line: 763, baseType: !210, size: 64, offset: 960)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1774, file: !44, line: 764, baseType: !2530, size: 64, offset: 1024)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2164, line: 299, baseType: !2532)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2164, line: 299, size: 64, elements: !2533)
!2533 = !{!2534}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2532, file: !2164, line: 299, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2169, line: 18, baseType: !210)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1774, file: !44, line: 773, baseType: !327, size: 32, offset: 1088)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1774, file: !44, line: 785, baseType: !327, size: 32, offset: 1120)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1774, file: !44, line: 795, baseType: !2539, size: 64, offset: 1152)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2540, file: !44, line: 727, baseType: !200, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2540, file: !44, line: 728, baseType: !109, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1774, file: !44, line: 801, baseType: !210, size: 64, offset: 1216)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1774, file: !44, line: 804, baseType: !712, size: 64, offset: 1280)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1774, file: !44, line: 806, baseType: !109, size: 32, offset: 1344)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1774, file: !44, line: 808, baseType: !307, size: 32, offset: 1376)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1774, file: !44, line: 823, baseType: !1367, size: 320, offset: 1408)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1774, file: !44, line: 825, baseType: !187, size: 128, offset: 1728)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1774, file: !44, line: 845, baseType: !109, size: 32, offset: 1856)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1774, file: !44, line: 849, baseType: !210, size: 64, offset: 1920)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1774, file: !44, line: 850, baseType: !210, size: 64, offset: 1984)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1774, file: !44, line: 852, baseType: !210, size: 64, offset: 2048)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1774, file: !44, line: 853, baseType: !210, size: 64, offset: 2112)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1774, file: !44, line: 854, baseType: !714, size: 64, offset: 2176)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1774, file: !44, line: 855, baseType: !210, size: 64, offset: 2240)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1774, file: !44, line: 856, baseType: !210, size: 64, offset: 2304)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1774, file: !44, line: 857, baseType: !210, size: 64, offset: 2368)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1774, file: !44, line: 858, baseType: !210, size: 64, offset: 2432)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1774, file: !44, line: 865, baseType: !498, size: 32, offset: 2496)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1774, file: !44, line: 867, baseType: !307, size: 32, offset: 2528)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1774, file: !44, line: 869, baseType: !210, size: 64, offset: 2560)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1774, file: !44, line: 869, baseType: !210, size: 64, offset: 2624)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1774, file: !44, line: 869, baseType: !210, size: 64, offset: 2688)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1774, file: !44, line: 869, baseType: !210, size: 64, offset: 2752)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1774, file: !44, line: 870, baseType: !210, size: 64, offset: 2816)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1774, file: !44, line: 870, baseType: !210, size: 64, offset: 2880)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1774, file: !44, line: 870, baseType: !210, size: 64, offset: 2944)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1774, file: !44, line: 871, baseType: !210, size: 64, offset: 3008)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1774, file: !44, line: 871, baseType: !210, size: 64, offset: 3072)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1774, file: !44, line: 871, baseType: !210, size: 64, offset: 3136)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1774, file: !44, line: 871, baseType: !210, size: 64, offset: 3200)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1774, file: !44, line: 873, baseType: !2574, size: 3328, offset: 3264)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 3328, elements: !2575)
!2575 = !{!2576}
!2576 = !DISubrange(count: 52)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1774, file: !44, line: 875, baseType: !2578, size: 1280, offset: 6592)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2009, size: 1280, elements: !240)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1774, file: !44, line: 877, baseType: !2580, size: 64, offset: 7872)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1774, file: !44, line: 880, baseType: !2583, size: 1088, offset: 7936)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2584, line: 72, baseType: !2585)
!2584 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2584, line: 23, size: 1088, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2594, !2595, !2596, !2597, !2624, !2625, !2626}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2585, file: !2584, line: 28, baseType: !200, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2585, file: !2584, line: 38, baseType: !714, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2585, file: !2584, line: 40, baseType: !210, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2585, file: !2584, line: 43, baseType: !1367, size: 320, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2585, file: !2584, line: 44, baseType: !2592, size: 64, offset: 512)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2584, line: 44, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2585, file: !2584, line: 48, baseType: !210, size: 64, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2585, file: !2584, line: 59, baseType: !708, size: 256, offset: 640)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2585, file: !2584, line: 60, baseType: !180, size: 64, offset: 896)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2585, file: !2584, line: 61, baseType: !2598, size: 64, offset: 960)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2600)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2601, line: 13, size: 1216, elements: !2602)
!2601 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608, !2609, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2600, file: !2601, line: 14, baseType: !180, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2600, file: !2601, line: 15, baseType: !210, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2600, file: !2601, line: 17, baseType: !210, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2600, file: !2601, line: 17, baseType: !210, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2600, file: !2601, line: 18, baseType: !210, size: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2600, file: !2601, line: 18, baseType: !210, size: 64, offset: 320)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2600, file: !2601, line: 19, baseType: !2610, size: 64, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2600, file: !2601, line: 21, baseType: !409, size: 64, offset: 448)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2600, file: !2601, line: 23, baseType: !409, size: 64, offset: 512)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2600, file: !2601, line: 24, baseType: !409, size: 64, offset: 576)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2600, file: !2601, line: 25, baseType: !409, size: 64, offset: 640)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2600, file: !2601, line: 26, baseType: !409, size: 64, offset: 704)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2600, file: !2601, line: 27, baseType: !409, size: 64, offset: 768)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2600, file: !2601, line: 28, baseType: !409, size: 64, offset: 832)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2600, file: !2601, line: 29, baseType: !409, size: 64, offset: 896)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2600, file: !2601, line: 30, baseType: !409, size: 64, offset: 960)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2600, file: !2601, line: 31, baseType: !409, size: 64, offset: 1024)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2600, file: !2601, line: 32, baseType: !409, size: 64, offset: 1088)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2600, file: !2601, line: 33, baseType: !409, size: 64, offset: 1152)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2585, file: !2584, line: 63, baseType: !327, size: 32, offset: 1024)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2585, file: !2584, line: 69, baseType: !342, size: 16, offset: 1056)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2585, file: !2584, line: 70, baseType: !844, size: 16, offset: 1072)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1774, file: !44, line: 882, baseType: !210, size: 64, offset: 9024)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1774, file: !44, line: 885, baseType: !307, size: 32, offset: 9088)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1774, file: !44, line: 886, baseType: !2630, size: 64, offset: 9152)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1774, file: !44, line: 901, baseType: !2034, size: 64, offset: 9216)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1774, file: !44, line: 904, baseType: !1797, size: 64, offset: 9280)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1774, file: !44, line: 906, baseType: !2635, size: 64, offset: 9344)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1774, file: !44, line: 930, baseType: !327, size: 32, offset: 9408)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1774, file: !44, line: 933, baseType: !327, size: 32, offset: 9440)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1774, file: !44, line: 935, baseType: !2640, size: 64, offset: 9472)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !2641)
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2640, file: !74, line: 104, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1774, file: !44, line: 940, baseType: !712, size: 64, offset: 9536)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1774, file: !44, line: 942, baseType: !966, size: 256, offset: 9600)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1771, file: !44, line: 986, baseType: !2648, offset: 10240)
!2648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, elements: !1857)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1474, file: !1150, line: 882, baseType: !1770, size: 64, offset: 9792)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1474, file: !1150, line: 884, baseType: !109, size: 32, offset: 9856)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1474, file: !1150, line: 885, baseType: !109, size: 32, offset: 9888)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1474, file: !1150, line: 886, baseType: !109, size: 32, offset: 9920)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1474, file: !1150, line: 888, baseType: !109, size: 32, offset: 9952)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1474, file: !1150, line: 890, baseType: !210, size: 64, offset: 9984)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1474, file: !1150, line: 893, baseType: !13, size: 32, offset: 10048)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1474, file: !1150, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1474, file: !1150, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1474, file: !1150, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1474, file: !1150, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1474, file: !1150, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1474, file: !1150, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1474, file: !1150, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1474, file: !1150, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1474, file: !1150, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1474, file: !1150, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1474, file: !1150, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1474, file: !1150, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1474, file: !1150, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1474, file: !1150, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1474, file: !1150, line: 969, baseType: !210, size: 64, offset: 10176)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1474, file: !1150, line: 971, baseType: !2672, size: 448, offset: 10240)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !2673)
!2673 = !{!2674, !2675, !2680}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2672, file: !68, line: 26, baseType: !210, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2672, file: !68, line: 27, baseType: !2676, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!409, !2679}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, scope: !2672, file: !68, line: 28, baseType: !2681, size: 320, offset: 128)
!2681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2672, file: !68, line: 28, size: 320, elements: !2682)
!2682 = !{!2683, !2692, !2717}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2681, file: !68, line: 37, baseType: !2684, size: 320)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !68, line: 30, size: 320, elements: !2685)
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2684, file: !68, line: 31, baseType: !264, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2684, file: !68, line: 32, baseType: !265, size: 32, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2684, file: !68, line: 33, baseType: !265, size: 32, offset: 96)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2684, file: !68, line: 34, baseType: !265, size: 32, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2684, file: !68, line: 35, baseType: !200, size: 64, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2684, file: !68, line: 36, baseType: !264, size: 64, offset: 256)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2681, file: !68, line: 47, baseType: !2693, size: 192)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !68, line: 39, size: 192, elements: !2694)
!2694 = !{!2695, !2696, !2697, !2716}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2693, file: !68, line: 40, baseType: !1641, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2693, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !2693, file: !68, line: 42, baseType: !2698, size: 64, offset: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2693, file: !68, line: 42, size: 64, elements: !2699)
!2699 = !{!2700, !2708}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2698, file: !68, line: 43, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2703, line: 7, size: 128, elements: !2704)
!2703 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2704 = !{!2705, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2702, file: !2703, line: 8, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !407, line: 93, baseType: !610)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2702, file: !2703, line: 9, baseType: !610, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2698, file: !68, line: 44, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2711, line: 7, size: 64, elements: !2712)
!2711 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2712 = !{!2713, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2710, file: !2711, line: 8, baseType: !2714, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2711, line: 5, baseType: !704)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2710, file: !2711, line: 9, baseType: !704, size: 32, offset: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2693, file: !68, line: 46, baseType: !200, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2681, file: !68, line: 55, baseType: !2718, size: 256)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !68, line: 49, size: 256, elements: !2719)
!2719 = !{!2720, !2723, !2724, !2725, !2726}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2718, file: !68, line: 50, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !68, line: 14, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2718, file: !68, line: 51, baseType: !109, size: 32, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2718, file: !68, line: 52, baseType: !109, size: 32, offset: 96)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2718, file: !68, line: 53, baseType: !210, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2718, file: !68, line: 54, baseType: !210, size: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1474, file: !1150, line: 973, baseType: !2728, size: 32, offset: 10688)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !182, line: 27, baseType: !2729)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !407, line: 28, baseType: !109)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1474, file: !1150, line: 974, baseType: !2728, size: 32, offset: 10720)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1474, file: !1150, line: 978, baseType: !210, size: 64, offset: 10752)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1474, file: !1150, line: 987, baseType: !1473, size: 64, offset: 10816)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1474, file: !1150, line: 990, baseType: !1473, size: 64, offset: 10880)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1474, file: !1150, line: 995, baseType: !187, size: 128, offset: 10944)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1474, file: !1150, line: 996, baseType: !187, size: 128, offset: 11072)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1474, file: !1150, line: 997, baseType: !1473, size: 64, offset: 11200)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1474, file: !1150, line: 1005, baseType: !187, size: 128, offset: 11264)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1474, file: !1150, line: 1006, baseType: !187, size: 128, offset: 11392)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1474, file: !1150, line: 1009, baseType: !1838, size: 64, offset: 11520)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1474, file: !1150, line: 1010, baseType: !2741, size: 512, offset: 11584)
!2741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 512, elements: !240)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1474, file: !1150, line: 1011, baseType: !187, size: 128, offset: 12096)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1474, file: !1150, line: 1012, baseType: !187, size: 128, offset: 12224)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1474, file: !1150, line: 1014, baseType: !656, size: 64, offset: 12352)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1474, file: !1150, line: 1017, baseType: !837, size: 64, offset: 12416)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1474, file: !1150, line: 1020, baseType: !837, size: 64, offset: 12480)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1474, file: !1150, line: 1023, baseType: !180, size: 64, offset: 12544)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1474, file: !1150, line: 1025, baseType: !200, size: 64, offset: 12608)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1474, file: !1150, line: 1026, baseType: !200, size: 64, offset: 12672)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1474, file: !1150, line: 1031, baseType: !200, size: 64, offset: 12736)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1474, file: !1150, line: 1032, baseType: !2752, size: 192, offset: 12800)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1150, line: 324, size: 192, elements: !2753)
!2753 = !{!2754, !2755, !2756}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2752, file: !1150, line: 326, baseType: !200, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2752, file: !1150, line: 327, baseType: !200, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2752, file: !1150, line: 328, baseType: !666, size: 32, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1474, file: !1150, line: 1041, baseType: !210, size: 64, offset: 12992)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1474, file: !1150, line: 1042, baseType: !210, size: 64, offset: 13056)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1474, file: !1150, line: 1045, baseType: !200, size: 64, offset: 13120)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1474, file: !1150, line: 1048, baseType: !200, size: 64, offset: 13184)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1474, file: !1150, line: 1051, baseType: !210, size: 64, offset: 13248)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1474, file: !1150, line: 1052, baseType: !210, size: 64, offset: 13312)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1474, file: !1150, line: 1055, baseType: !2764, size: 640, offset: 13376)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2765, line: 132, size: 640, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2766 = !{!2767, !2773, !2774}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2764, file: !2765, line: 133, baseType: !2768, size: 576)
!2768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2769, size: 576, elements: !374)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2765, line: 117, size: 192, elements: !2770)
!2770 = !{!2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2769, file: !2765, line: 118, baseType: !200, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2769, file: !2765, line: 119, baseType: !1650, size: 128, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2764, file: !2765, line: 134, baseType: !13, size: 32, offset: 576)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2764, file: !2765, line: 135, baseType: !13, size: 32, offset: 608)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1474, file: !1150, line: 1058, baseType: !2776, size: 448, offset: 14016)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2765, line: 144, size: 448, elements: !2777)
!2777 = !{!2778, !2779, !2780}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2776, file: !2765, line: 145, baseType: !928, size: 128, align: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2776, file: !2765, line: 146, baseType: !708, size: 256, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2776, file: !2765, line: 147, baseType: !13, size: 32, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1474, file: !1150, line: 1064, baseType: !1864, size: 64, offset: 14464)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1474, file: !1150, line: 1067, baseType: !1864, size: 64, offset: 14528)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1474, file: !1150, line: 1070, baseType: !1864, size: 64, offset: 14592)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1474, file: !1150, line: 1074, baseType: !1891, size: 64, offset: 14656)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1474, file: !1150, line: 1084, baseType: !2786, size: 128, offset: 14720)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2787)
!2787 = !{!2788}
!2788 = !DISubrange(count: 16)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1474, file: !1150, line: 1086, baseType: !2790, size: 64, offset: 14848)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1150, line: 55, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1474, file: !1150, line: 1089, baseType: !2793, size: 64, offset: 14912)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2794, line: 12, size: 64, elements: !2795)
!2794 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2795 = !{!2796}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2793, file: !2794, line: 13, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2794, line: 8, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1474, file: !1150, line: 1090, baseType: !2800, size: 128, offset: 14976)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2801, line: 13, size: 128, elements: !2802)
!2801 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2802 = !{!2803}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2800, file: !2801, line: 14, baseType: !187, size: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1474, file: !1150, line: 1097, baseType: !2805, size: 64, offset: 15104)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1150, line: 50, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1474, file: !1150, line: 1100, baseType: !2808, size: 64, offset: 15168)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1150, line: 1100, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1474, file: !1150, line: 1103, baseType: !2811, size: 64, offset: 15232)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1150, line: 53, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1474, file: !1150, line: 1107, baseType: !2814, size: 64, offset: 15296)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2816, line: 35, flags: DIFlagFwdDecl)
!2816 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1474, file: !1150, line: 1110, baseType: !2818, size: 64, offset: 15360)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2820, line: 93, size: 8768, elements: !2821)
!2820 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2869, !2878, !2879, !2881, !2882, !2883, !2886, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2924, !2925, !2932, !2942, !2945, !2946, !2949, !2950, !2951, !2952, !2953, !2954}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2819, file: !2820, line: 94, baseType: !1487, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2819, file: !2820, line: 95, baseType: !327, size: 32, offset: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2819, file: !2820, line: 96, baseType: !109, size: 32, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2819, file: !2820, line: 97, baseType: !109, size: 32, offset: 96)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2819, file: !2820, line: 98, baseType: !187, size: 128, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2819, file: !2820, line: 100, baseType: !1460, size: 192, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2819, file: !2820, line: 103, baseType: !1473, size: 64, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2819, file: !2820, line: 106, baseType: !2830, size: 192, offset: 512)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2039, line: 32, size: 192, elements: !2831)
!2831 = !{!2832, !2833}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2830, file: !2039, line: 33, baseType: !187, size: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2830, file: !2039, line: 34, baseType: !2834, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2835, line: 25, baseType: !2836)
!2835 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2835, line: 23, size: 64, elements: !2837)
!2837 = !{!2838}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2836, file: !2835, line: 24, baseType: !1721, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2819, file: !2820, line: 109, baseType: !1076, size: 64, offset: 704)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2819, file: !2820, line: 112, baseType: !109, size: 32, offset: 768)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2819, file: !2820, line: 114, baseType: !109, size: 32, offset: 800)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2819, file: !2820, line: 115, baseType: !1473, size: 64, offset: 832)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2819, file: !2820, line: 118, baseType: !109, size: 32, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2819, file: !2820, line: 119, baseType: !13, size: 32, offset: 928)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2819, file: !2820, line: 121, baseType: !2846, size: 64, offset: 960)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2820, line: 80, size: 448, elements: !2848)
!2848 = !{!2849, !2850, !2856}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2847, file: !2820, line: 81, baseType: !327, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2847, file: !2820, line: 82, baseType: !2851, size: 128, offset: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2820, line: 75, size: 128, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2851, file: !2820, line: 76, baseType: !1473, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2851, file: !2820, line: 77, baseType: !2855, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2847, file: !2820, line: 83, baseType: !657, size: 256, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2819, file: !2820, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2819, file: !2820, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2819, file: !2820, line: 138, baseType: !13, size: 32, offset: 1056)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2819, file: !2820, line: 139, baseType: !187, size: 128, offset: 1088)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2819, file: !2820, line: 142, baseType: !1594, size: 512, offset: 1216)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2819, file: !2820, line: 143, baseType: !1602, size: 64, offset: 1728)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2819, file: !2820, line: 150, baseType: !2864, size: 256, offset: 1792)
!2864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2865, size: 256, elements: !827)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2820, line: 38, size: 128, elements: !2866)
!2866 = !{!2867, !2868}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2865, file: !2820, line: 39, baseType: !200, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2865, file: !2820, line: 40, baseType: !200, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2819, file: !2820, line: 156, baseType: !2870, size: 192, offset: 2048)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2820, line: 66, size: 192, elements: !2871)
!2871 = !{!2872}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2870, file: !2820, line: 67, baseType: !2873, size: 192)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2820, line: 47, size: 192, elements: !2874)
!2874 = !{!2875, !2876, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2873, file: !2820, line: 48, baseType: !714, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2873, file: !2820, line: 49, baseType: !714, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2873, file: !2820, line: 50, baseType: !714, size: 64, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2819, file: !2820, line: 160, baseType: !2764, size: 640, offset: 2240)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2819, file: !2820, line: 163, baseType: !2880, size: 256, offset: 2880)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1838, size: 256, elements: !240)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2819, file: !2820, line: 169, baseType: !1838, size: 64, offset: 3136)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2819, file: !2820, line: 172, baseType: !109, size: 32, offset: 3200)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2819, file: !2820, line: 174, baseType: !2884, size: 64, offset: 3264)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2820, line: 174, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2819, file: !2820, line: 185, baseType: !2887, size: 64, offset: 3328)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !494, line: 860, baseType: !2888)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 853, size: 64, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2888, file: !494, line: 858, baseType: !493, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2888, file: !494, line: 859, baseType: !307, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2819, file: !2820, line: 186, baseType: !200, size: 64, offset: 3392)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2819, file: !2820, line: 186, baseType: !200, size: 64, offset: 3456)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2819, file: !2820, line: 186, baseType: !200, size: 64, offset: 3520)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2819, file: !2820, line: 186, baseType: !200, size: 64, offset: 3584)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2819, file: !2820, line: 187, baseType: !200, size: 64, offset: 3648)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2819, file: !2820, line: 188, baseType: !200, size: 64, offset: 3712)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2819, file: !2820, line: 189, baseType: !2752, size: 192, offset: 3776)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2819, file: !2820, line: 190, baseType: !210, size: 64, offset: 3968)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2819, file: !2820, line: 190, baseType: !210, size: 64, offset: 4032)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2819, file: !2820, line: 190, baseType: !210, size: 64, offset: 4096)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2819, file: !2820, line: 190, baseType: !210, size: 64, offset: 4160)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2819, file: !2820, line: 191, baseType: !210, size: 64, offset: 4224)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2819, file: !2820, line: 191, baseType: !210, size: 64, offset: 4288)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2819, file: !2820, line: 191, baseType: !210, size: 64, offset: 4352)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2819, file: !2820, line: 191, baseType: !210, size: 64, offset: 4416)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2819, file: !2820, line: 192, baseType: !210, size: 64, offset: 4480)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2819, file: !2820, line: 192, baseType: !210, size: 64, offset: 4544)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2819, file: !2820, line: 192, baseType: !210, size: 64, offset: 4608)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2819, file: !2820, line: 192, baseType: !210, size: 64, offset: 4672)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2819, file: !2820, line: 193, baseType: !210, size: 64, offset: 4736)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2819, file: !2820, line: 193, baseType: !210, size: 64, offset: 4800)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2819, file: !2820, line: 194, baseType: !2914, size: 448, offset: 4864)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2915, line: 12, size: 448, elements: !2916)
!2915 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2914, file: !2915, line: 15, baseType: !200, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2914, file: !2915, line: 17, baseType: !200, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2914, file: !2915, line: 19, baseType: !200, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2914, file: !2915, line: 21, baseType: !200, size: 64, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2914, file: !2915, line: 29, baseType: !200, size: 64, offset: 256)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2914, file: !2915, line: 35, baseType: !200, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2914, file: !2915, line: 44, baseType: !200, size: 64, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2819, file: !2820, line: 202, baseType: !204, size: 64, offset: 5312)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2819, file: !2820, line: 213, baseType: !2926, size: 2048, offset: 5376)
!2926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2927, size: 2048, elements: !2787)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2928, line: 43, size: 128, elements: !2929)
!2928 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2927, file: !2928, line: 44, baseType: !422, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2927, file: !2928, line: 45, baseType: !422, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2819, file: !2820, line: 216, baseType: !2933, size: 448, offset: 7424)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2820, line: 30, size: 448, elements: !2934)
!2934 = !{!2935, !2936, !2937, !2938, !2939, !2940, !2941}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2933, file: !2820, line: 31, baseType: !109, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2933, file: !2820, line: 32, baseType: !409, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2933, file: !2820, line: 33, baseType: !210, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2933, file: !2820, line: 34, baseType: !200, size: 64, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2933, file: !2820, line: 34, baseType: !200, size: 64, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2933, file: !2820, line: 35, baseType: !210, size: 64, offset: 320)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2933, file: !2820, line: 35, baseType: !210, size: 64, offset: 384)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2819, file: !2820, line: 219, baseType: !2943, size: 64, offset: 7872)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2820, line: 219, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2819, file: !2820, line: 222, baseType: !13, size: 32, offset: 7936)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2819, file: !2820, line: 223, baseType: !2947, size: 64, offset: 8000)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2820, line: 223, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2819, file: !2820, line: 230, baseType: !788, size: 8, offset: 8064)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2819, file: !2820, line: 231, baseType: !846, size: 16, offset: 8080)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2819, file: !2820, line: 232, baseType: !846, size: 16, offset: 8096)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2819, file: !2820, line: 234, baseType: !1770, size: 64, offset: 8128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2819, file: !2820, line: 237, baseType: !708, size: 256, offset: 8192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2819, file: !2820, line: 243, baseType: !1367, size: 320, offset: 8448)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1474, file: !1150, line: 1111, baseType: !2956, size: 64, offset: 15424)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2820, line: 20, size: 16640, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2957, file: !2820, line: 21, baseType: !307, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2957, file: !2820, line: 22, baseType: !1487, size: 32, offset: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2957, file: !2820, line: 23, baseType: !1460, size: 192, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2957, file: !2820, line: 24, baseType: !2963, size: 16384, offset: 256)
!2963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2964, size: 16384, elements: !378)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2039, line: 51, size: 256, elements: !2965)
!2965 = !{!2966}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2964, file: !2039, line: 52, baseType: !2967, size: 256)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2039, line: 37, size: 256, elements: !2968)
!2968 = !{!2969, !2976, !2977, !2981}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2967, file: !2039, line: 39, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2971, line: 83, baseType: !2972)
!2971 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2971, line: 82, baseType: !2974)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{null, !109}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2967, file: !2039, line: 40, baseType: !210, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2967, file: !2039, line: 46, baseType: !2978, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2971, line: 86, baseType: !2979)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2971, line: 85, baseType: !1071)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2967, file: !2039, line: 48, baseType: !2834, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1474, file: !1150, line: 1112, baseType: !2834, size: 64, offset: 15488)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1474, file: !1150, line: 1113, baseType: !2834, size: 64, offset: 15552)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1474, file: !1150, line: 1115, baseType: !2834, size: 64, offset: 15616)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1474, file: !1150, line: 1116, baseType: !2830, size: 192, offset: 15680)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1474, file: !1150, line: 1117, baseType: !210, size: 64, offset: 15872)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1474, file: !1150, line: 1118, baseType: !420, size: 64, offset: 15936)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1474, file: !1150, line: 1119, baseType: !13, size: 32, offset: 16000)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1474, file: !1150, line: 1121, baseType: !927, size: 64, offset: 16064)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1474, file: !1150, line: 1125, baseType: !2991, size: 64, offset: 16128)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1150, line: 43, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1474, file: !1150, line: 1127, baseType: !458, size: 32, offset: 16192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1474, file: !1150, line: 1128, baseType: !13, size: 32, offset: 16224)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1474, file: !1150, line: 1130, baseType: !2996, size: 128, offset: 16256)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2997, line: 37, size: 128, elements: !2998)
!2997 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2998 = !{!2999, !3000, !3001}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2996, file: !2997, line: 38, baseType: !109, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2996, file: !2997, line: 39, baseType: !327, size: 32, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2996, file: !2997, line: 40, baseType: !3002, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2997, line: 24, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1474, file: !1150, line: 1131, baseType: !3005, size: 256, offset: 16384)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3006, line: 12, size: 256, elements: !3007)
!3006 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3007 = !{!3008, !3009, !3010, !3011}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3005, file: !3006, line: 13, baseType: !373, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3005, file: !3006, line: 14, baseType: !210, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3005, file: !3006, line: 15, baseType: !210, size: 64, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3005, file: !3006, line: 16, baseType: !788, size: 8, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1474, file: !1150, line: 1134, baseType: !200, size: 64, offset: 16640)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1474, file: !1150, line: 1135, baseType: !200, size: 64, offset: 16704)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1474, file: !1150, line: 1138, baseType: !307, size: 32, offset: 16768)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1474, file: !1150, line: 1141, baseType: !666, size: 32, offset: 16800)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1474, file: !1150, line: 1143, baseType: !3017, size: 64, offset: 16832)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1150, line: 735, size: 64, elements: !3018)
!3018 = !{!3019}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3017, file: !1150, line: 736, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1474, file: !1150, line: 1147, baseType: !1653, size: 128, offset: 16896)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1474, file: !1150, line: 1149, baseType: !1473, size: 64, offset: 17024)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1474, file: !1150, line: 1151, baseType: !3024, size: 64, offset: 17088)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1150, line: 1151, flags: DIFlagFwdDecl)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1474, file: !1150, line: 1188, baseType: !180, size: 64, offset: 17152)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1474, file: !1150, line: 1191, baseType: !3028, size: 64, offset: 17216)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1150, line: 44, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1474, file: !1150, line: 1194, baseType: !3031, size: 64, offset: 17280)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1150, line: 45, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1474, file: !1150, line: 1197, baseType: !3034, size: 64, offset: 17344)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1150, line: 61, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1474, file: !1150, line: 1199, baseType: !3037, size: 64, offset: 17408)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3039, line: 99, size: 128, elements: !3040)
!3039 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3040 = !{!3041, !3042, !3043}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3038, file: !3039, line: 100, baseType: !712, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3038, file: !3039, line: 101, baseType: !327, size: 32, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3038, file: !3039, line: 103, baseType: !286, size: 16, offset: 96)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1474, file: !1150, line: 1202, baseType: !3045, size: 64, offset: 17472)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1150, line: 48, flags: DIFlagFwdDecl)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1474, file: !1150, line: 1205, baseType: !210, size: 64, offset: 17536)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1474, file: !1150, line: 1206, baseType: !3049, size: 64, offset: 17600)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2039, line: 14, baseType: !3051)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2039, line: 12, size: 384, elements: !3052)
!3052 = !{!3053}
!3053 = !DIDerivedType(tag: DW_TAG_member, scope: !3051, file: !2039, line: 13, baseType: !3054, size: 384)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3051, file: !2039, line: 13, size: 384, elements: !3055)
!3055 = !{!3056, !3057, !3058, !3059}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3054, file: !2039, line: 13, baseType: !109, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3054, file: !2039, line: 13, baseType: !109, size: 32, offset: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3054, file: !2039, line: 13, baseType: !109, size: 32, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3054, file: !2039, line: 13, baseType: !3060, size: 256, offset: 128)
!3060 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3061, line: 37, size: 256, elements: !3062)
!3061 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3062 = !{!3063, !3068, !3081, !3087, !3096, !3123, !3128}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3060, file: !3061, line: 42, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !3061, line: 39, size: 64, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3064, file: !3061, line: 40, baseType: !2729, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3064, file: !3061, line: 41, baseType: !464, size: 32, offset: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3060, file: !3061, line: 50, baseType: !3069, size: 192)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !3061, line: 45, size: 192, elements: !3070)
!3070 = !{!3071, !3073, !3074, !3080}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3069, file: !3061, line: 46, baseType: !3072, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !407, line: 95, baseType: !109)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3069, file: !3061, line: 47, baseType: !109, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3069, file: !3061, line: 48, baseType: !3075, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3061, line: 11, baseType: !3076)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3061, line: 8, size: 64, elements: !3077)
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3076, file: !3061, line: 9, baseType: !109, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3076, file: !3061, line: 10, baseType: !180, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3069, file: !3061, line: 49, baseType: !109, size: 32, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3060, file: !3061, line: 57, baseType: !3082, size: 128)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !3061, line: 53, size: 128, elements: !3083)
!3083 = !{!3084, !3085, !3086}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3082, file: !3061, line: 54, baseType: !2729, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3082, file: !3061, line: 55, baseType: !464, size: 32, offset: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3082, file: !3061, line: 56, baseType: !3075, size: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3060, file: !3061, line: 66, baseType: !3088, size: 256)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !3061, line: 60, size: 256, elements: !3089)
!3089 = !{!3090, !3091, !3092, !3093, !3095}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3088, file: !3061, line: 61, baseType: !2729, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3088, file: !3061, line: 62, baseType: !464, size: 32, offset: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3088, file: !3061, line: 63, baseType: !109, size: 32, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3088, file: !3061, line: 64, baseType: !3094, size: 64, offset: 128)
!3094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !407, line: 94, baseType: !408)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3088, file: !3061, line: 65, baseType: !3094, size: 64, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3060, file: !3061, line: 105, baseType: !3097, size: 256)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !3061, line: 69, size: 256, elements: !3098)
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3097, file: !3061, line: 70, baseType: !180, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, scope: !3097, file: !3061, line: 79, baseType: !3101, size: 192, offset: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3097, file: !3061, line: 79, size: 192, elements: !3102)
!3102 = !{!3103, !3104, !3105, !3112, !3117}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3101, file: !3061, line: 81, baseType: !109, size: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3101, file: !3061, line: 86, baseType: !846, size: 16)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3101, file: !3061, line: 92, baseType: !3106, size: 192)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3101, file: !3061, line: 88, size: 192, elements: !3107)
!3107 = !{!3108, !3110, !3111}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3106, file: !3061, line: 89, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1637)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3106, file: !3061, line: 90, baseType: !180, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3106, file: !3061, line: 91, baseType: !180, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3101, file: !3061, line: 97, baseType: !3113, size: 96)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3101, file: !3061, line: 94, size: 96, elements: !3114)
!3114 = !{!3115, !3116}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3113, file: !3061, line: 95, baseType: !3109, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3113, file: !3061, line: 96, baseType: !266, size: 32, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3101, file: !3061, line: 103, baseType: !3118, size: 128)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3101, file: !3061, line: 99, size: 128, elements: !3119)
!3119 = !{!3120, !3121, !3122}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3118, file: !3061, line: 100, baseType: !210, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3118, file: !3061, line: 101, baseType: !266, size: 32, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3118, file: !3061, line: 102, baseType: !266, size: 32, offset: 96)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3060, file: !3061, line: 111, baseType: !3124, size: 128)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !3061, line: 108, size: 128, elements: !3125)
!3125 = !{!3126, !3127}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3124, file: !3061, line: 109, baseType: !409, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3124, file: !3061, line: 110, baseType: !109, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3060, file: !3061, line: 118, baseType: !3129, size: 128)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !3061, line: 114, size: 128, elements: !3130)
!3130 = !{!3131, !3132, !3133}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3129, file: !3061, line: 115, baseType: !180, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3129, file: !3061, line: 116, baseType: !109, size: 32, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3129, file: !3061, line: 117, baseType: !13, size: 32, offset: 96)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1474, file: !1150, line: 1208, baseType: !2914, size: 448, offset: 17664)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1474, file: !1150, line: 1215, baseType: !200, size: 64, offset: 18112)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1474, file: !1150, line: 1217, baseType: !200, size: 64, offset: 18176)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1474, file: !1150, line: 1219, baseType: !200, size: 64, offset: 18240)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1474, file: !1150, line: 1223, baseType: !3139, size: 64, offset: 18304)
!3139 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3140, line: 99, baseType: !3141)
!3140 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3140, line: 99, size: 64, elements: !3142)
!3142 = !{!3143}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3141, file: !3140, line: 99, baseType: !1721, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1474, file: !1150, line: 1225, baseType: !493, size: 32, offset: 18368)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1474, file: !1150, line: 1226, baseType: !109, size: 32, offset: 18400)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1474, file: !1150, line: 1227, baseType: !109, size: 32, offset: 18432)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1474, file: !1150, line: 1231, baseType: !3148, size: 64, offset: 18496)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1150, line: 1231, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1474, file: !1150, line: 1233, baseType: !187, size: 128, offset: 18560)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1474, file: !1150, line: 1240, baseType: !3152, size: 64, offset: 18688)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1150, line: 62, flags: DIFlagFwdDecl)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1474, file: !1150, line: 1242, baseType: !3155, size: 64, offset: 18752)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1150, line: 1242, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1474, file: !1150, line: 1244, baseType: !187, size: 128, offset: 18816)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1474, file: !1150, line: 1245, baseType: !3159, size: 64, offset: 18944)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1150, line: 51, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1474, file: !1150, line: 1246, baseType: !708, size: 256, offset: 19008)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1474, file: !1150, line: 1247, baseType: !13, size: 32, offset: 19264)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1474, file: !1150, line: 1250, baseType: !3164, size: 64, offset: 19328)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1150, line: 57, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1474, file: !1150, line: 1251, baseType: !708, size: 256, offset: 19392)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1474, file: !1150, line: 1252, baseType: !187, size: 128, offset: 19648)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1474, file: !1150, line: 1259, baseType: !2419, size: 64, offset: 19776)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1474, file: !1150, line: 1260, baseType: !846, size: 16, offset: 19840)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1474, file: !1150, line: 1261, baseType: !846, size: 16, offset: 19856)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1474, file: !1150, line: 1314, baseType: !3172, size: 64, offset: 19904)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3174, line: 62, size: 256, align: 256, elements: !3175)
!3174 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3175 = !{!3176, !3177, !3178, !3179, !3180, !3181, !3182}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3173, file: !3174, line: 75, baseType: !266, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3173, file: !3174, line: 90, baseType: !266, size: 32, offset: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3173, file: !3174, line: 112, baseType: !202, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3173, file: !3174, line: 132, baseType: !266, size: 32, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3173, file: !3174, line: 140, baseType: !266, size: 32, offset: 160)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3173, file: !3174, line: 149, baseType: !266, size: 32, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3173, file: !3174, line: 154, baseType: !3183, offset: 224)
!3183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1857)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1474, file: !1150, line: 1315, baseType: !265, size: 32, offset: 19968)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1474, file: !1150, line: 1316, baseType: !265, size: 32, offset: 20000)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1474, file: !1150, line: 1321, baseType: !210, size: 64, offset: 20032)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1474, file: !1150, line: 1325, baseType: !109, size: 32, offset: 20096)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1474, file: !1150, line: 1326, baseType: !109, size: 32, offset: 20128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1474, file: !1150, line: 1327, baseType: !109, size: 32, offset: 20160)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1474, file: !1150, line: 1328, baseType: !109, size: 32, offset: 20192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1474, file: !1150, line: 1329, baseType: !928, size: 128, align: 64, offset: 20224)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1474, file: !1150, line: 1332, baseType: !3193, size: 128, offset: 20352)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3194, line: 51, size: 128, elements: !3195)
!3194 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3195 = !{!3196, !3201, !3202}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3193, file: !3194, line: 60, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3198, line: 7, size: 64, elements: !3199)
!3198 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3199 = !{!3200}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3197, file: !3198, line: 12, baseType: !1718, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3193, file: !3194, line: 63, baseType: !788, size: 8, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3193, file: !3194, line: 70, baseType: !788, size: 8, offset: 72)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1474, file: !1150, line: 1335, baseType: !2471, size: 64, offset: 20480)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1474, file: !1150, line: 1337, baseType: !3205, size: 128, offset: 20544)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3194, line: 39, size: 128, elements: !3206)
!3206 = !{!3207, !3208, !3209}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3205, file: !3194, line: 40, baseType: !2258, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3205, file: !3194, line: 42, baseType: !266, size: 32, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3205, file: !3194, line: 43, baseType: !266, size: 32, offset: 96)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1474, file: !1150, line: 1340, baseType: !3211, size: 64, offset: 20672)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1150, line: 69, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1474, file: !1150, line: 1351, baseType: !109, size: 32, offset: 20736)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1474, file: !1150, line: 1352, baseType: !109, size: 32, offset: 20768)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1474, file: !1150, line: 1354, baseType: !210, size: 64, offset: 20800)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1474, file: !1150, line: 1364, baseType: !200, size: 64, offset: 20864)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1474, file: !1150, line: 1365, baseType: !200, size: 64, offset: 20928)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1474, file: !1150, line: 1412, baseType: !210, size: 64, offset: 20992)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1474, file: !1150, line: 1453, baseType: !3220, size: 64, offset: 21056)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1150, line: 1453, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1474, file: !1150, line: 1457, baseType: !3223, size: 64, offset: 21120)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !3225)
!3225 = !{!3226, !3227, !3246, !3249, !3250, !3283, !3293}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3224, file: !74, line: 62, baseType: !73, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, scope: !3224, file: !74, line: 64, baseType: !3228, size: 192, offset: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3224, file: !74, line: 64, size: 192, elements: !3229)
!3229 = !{!3230, !3241}
!3230 = !DIDerivedType(tag: DW_TAG_member, scope: !3228, file: !74, line: 65, baseType: !3231, size: 192)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3228, file: !74, line: 65, size: 192, elements: !3232)
!3232 = !{!3233, !3240}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3231, file: !74, line: 66, baseType: !3234, size: 128)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3235, line: 50, size: 128, elements: !3236)
!3235 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3236 = !{!3237, !3238, !3239}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3234, file: !3235, line: 52, baseType: !210, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3234, file: !3235, line: 54, baseType: !13, size: 32, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3234, file: !3235, line: 55, baseType: !13, size: 32, offset: 96)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3231, file: !74, line: 67, baseType: !210, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3228, file: !74, line: 70, baseType: !3242, size: 192)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3228, file: !74, line: 70, size: 192, elements: !3243)
!3243 = !{!3244, !3245}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3242, file: !74, line: 71, baseType: !928, size: 128, align: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3242, file: !74, line: 72, baseType: !210, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3224, file: !74, line: 76, baseType: !3247, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3224, file: !74, line: 77, baseType: !210, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3224, file: !74, line: 79, baseType: !3251, size: 64, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3235, line: 25, size: 256, elements: !3253)
!3253 = !{!3254, !3260, !3264}
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3235, line: 26, baseType: !3255, size: 128)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !3235, line: 26, size: 128, elements: !3256)
!3256 = !{!3257, !3259}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3255, file: !3235, line: 27, baseType: !3258, size: 128)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 128, elements: !2787)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3255, file: !3235, line: 28, baseType: !3258, size: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3252, file: !3235, line: 31, baseType: !3261, size: 64, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3263)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3235, line: 23, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3235, line: 33, baseType: !3265, size: 64, offset: 192)
!3265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !3235, line: 33, size: 64, elements: !3266)
!3266 = !{!3267, !3273, !3278}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3265, file: !3235, line: 38, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3265, file: !3235, line: 34, size: 64, elements: !3269)
!3269 = !{!3270, !3271, !3272}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3268, file: !3235, line: 35, baseType: !704, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3268, file: !3235, line: 36, baseType: !335, size: 8, offset: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3268, file: !3235, line: 37, baseType: !335, size: 8, offset: 40)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3265, file: !3235, line: 42, baseType: !3274, size: 16)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3265, file: !3235, line: 39, size: 16, elements: !3275)
!3275 = !{!3276, !3277}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3274, file: !3235, line: 40, baseType: !335, size: 8)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3274, file: !3235, line: 41, baseType: !335, size: 8, offset: 8)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3265, file: !3235, line: 46, baseType: !3279, size: 16)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3265, file: !3235, line: 43, size: 16, elements: !3280)
!3280 = !{!3281, !3282}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3279, file: !3235, line: 44, baseType: !335, size: 8)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3279, file: !3235, line: 45, baseType: !335, size: 8, offset: 8)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3224, file: !74, line: 81, baseType: !3284, size: 64, offset: 448)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3290, !3291, !3292}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3285, file: !74, line: 86, baseType: !3247, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3285, file: !74, line: 87, baseType: !210, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3285, file: !74, line: 88, baseType: !210, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3285, file: !74, line: 89, baseType: !210, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3285, file: !74, line: 90, baseType: !788, size: 8, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3285, file: !74, line: 92, baseType: !3284, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3224, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1474, file: !1150, line: 1463, baseType: !3295, offset: 21184)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1150, line: 739, elements: !995)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1474, file: !1150, line: 1470, baseType: !928, size: 128, align: 64, offset: 21184)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1474, file: !1150, line: 1471, baseType: !1487, size: 32, offset: 21312)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1474, file: !1150, line: 1472, baseType: !109, size: 32, offset: 21344)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1474, file: !1150, line: 1474, baseType: !1473, size: 64, offset: 21376)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1474, file: !1150, line: 1475, baseType: !948, size: 320, offset: 21440)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1474, file: !1150, line: 1478, baseType: !3302, size: 64, offset: 21760)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2111, line: 49, size: 512, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3308, !3309, !3311, !3312, !3313, !3314}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3303, file: !2111, line: 50, baseType: !3302, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3303, file: !2111, line: 51, baseType: !180, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3303, file: !2111, line: 52, baseType: !210, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3303, file: !2111, line: 53, baseType: !210, size: 64, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3303, file: !2111, line: 54, baseType: !3310, size: 64, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3303, file: !2111, line: 56, baseType: !13, size: 32, offset: 320)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3303, file: !2111, line: 58, baseType: !13, size: 32, offset: 352)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3303, file: !2111, line: 59, baseType: !199, size: 64, offset: 384)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3303, file: !2111, line: 60, baseType: !2610, size: 64, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1474, file: !1150, line: 1482, baseType: !1487, size: 32, offset: 21824)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1474, file: !1150, line: 1489, baseType: !180, size: 64, offset: 21888)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1474, file: !1150, line: 1504, baseType: !180, size: 64, offset: 21952)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1474, file: !1150, line: 1505, baseType: !202, size: 64, offset: 22016)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1474, file: !1150, line: 1506, baseType: !200, size: 64, offset: 22080)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1474, file: !1150, line: 1507, baseType: !202, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1474, file: !1150, line: 1508, baseType: !202, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1474, file: !1150, line: 1509, baseType: !202, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1474, file: !1150, line: 1510, baseType: !928, size: 128, align: 64, offset: 22208)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1474, file: !1150, line: 1511, baseType: !109, size: 32, offset: 22336)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1474, file: !1150, line: 1515, baseType: !3326, size: 64, offset: 22400)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1501, line: 56, size: 64, elements: !3327)
!3327 = !{!3328}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3326, file: !1501, line: 57, baseType: !1504, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1474, file: !1150, line: 1518, baseType: !3326, size: 64, offset: 22464)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1474, file: !1150, line: 1528, baseType: !928, size: 128, align: 64, offset: 22528)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1474, file: !1150, line: 1552, baseType: !3332, size: 35328, offset: 23040)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3333, line: 430, size: 35328, elements: !3334)
!3333 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3334 = !{!3335, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3364, !3365, !3366, !3367, !3368, !3369, !3372, !3373, !3374, !3375}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3332, file: !3333, line: 432, baseType: !3336, size: 192)
!3336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3337, size: 192, elements: !374)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3338, line: 16, size: 64, elements: !3339)
!3338 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3337, file: !3338, line: 17, baseType: !342, size: 16)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3337, file: !3338, line: 18, baseType: !342, size: 16, offset: 16)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3337, file: !3338, line: 19, baseType: !342, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3337, file: !3338, line: 19, baseType: !342, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3337, file: !3338, line: 19, baseType: !342, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3337, file: !3338, line: 19, baseType: !342, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3337, file: !3338, line: 19, baseType: !342, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3337, file: !3338, line: 20, baseType: !342, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3337, file: !3338, line: 20, baseType: !342, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3337, file: !3338, line: 20, baseType: !342, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3337, file: !3338, line: 20, baseType: !342, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3337, file: !3338, line: 20, baseType: !342, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3337, file: !3338, line: 20, baseType: !342, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3332, file: !3333, line: 436, baseType: !210, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3332, file: !3333, line: 440, baseType: !286, size: 16, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3332, file: !3333, line: 441, baseType: !286, size: 16, offset: 272)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3332, file: !3333, line: 442, baseType: !286, size: 16, offset: 288)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3332, file: !3333, line: 443, baseType: !286, size: 16, offset: 304)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3332, file: !3333, line: 447, baseType: !210, size: 64, offset: 320)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3332, file: !3333, line: 448, baseType: !210, size: 64, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3332, file: !3333, line: 459, baseType: !3361, size: 256, offset: 448)
!3361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3362, size: 256, elements: !240)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3333, line: 428, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3332, file: !3333, line: 461, baseType: !210, size: 64, offset: 704)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3332, file: !3333, line: 463, baseType: !210, size: 64, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3332, file: !3333, line: 465, baseType: !210, size: 64, offset: 832)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3332, file: !3333, line: 466, baseType: !210, size: 64, offset: 896)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3332, file: !3333, line: 467, baseType: !210, size: 64, offset: 960)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3332, file: !3333, line: 473, baseType: !3370, size: 64, offset: 1024)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3333, line: 10, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3332, file: !3333, line: 480, baseType: !210, size: 64, offset: 1088)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3332, file: !3333, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3332, file: !3333, line: 491, baseType: !265, size: 32, offset: 1184)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3332, file: !3333, line: 501, baseType: !3376, size: 33792, offset: 1536)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3377, line: 448, size: 33792, elements: !3378)
!3377 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3378 = !{!3379, !3380, !3381, !3543, !3544, !3550, !3551}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3376, file: !3377, line: 461, baseType: !13, size: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3376, file: !3377, line: 468, baseType: !210, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3376, file: !3377, line: 476, baseType: !3382, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3377, line: 356, size: 33280, align: 512, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3383, file: !3377, line: 358, baseType: !13, size: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3383, file: !3377, line: 361, baseType: !13, size: 32, offset: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3383, file: !3377, line: 364, baseType: !200, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3383, file: !3377, line: 367, baseType: !200, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3383, file: !3377, line: 370, baseType: !200, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3383, file: !3377, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3383, file: !3377, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3383, file: !3377, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3383, file: !3377, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3383, file: !3377, line: 397, baseType: !3395, size: 32768, offset: 512)
!3395 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3377, line: 348, size: 32768, elements: !3396)
!3396 = !{!3397, !3412, !3449, !3526, !3539}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3395, file: !3377, line: 349, baseType: !3398, size: 896)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3377, line: 12, size: 896, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3411}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3398, file: !3377, line: 13, baseType: !265, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3398, file: !3377, line: 14, baseType: !265, size: 32, offset: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3398, file: !3377, line: 15, baseType: !265, size: 32, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3398, file: !3377, line: 16, baseType: !265, size: 32, offset: 96)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3398, file: !3377, line: 17, baseType: !265, size: 32, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3398, file: !3377, line: 18, baseType: !265, size: 32, offset: 160)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3398, file: !3377, line: 19, baseType: !265, size: 32, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3398, file: !3377, line: 22, baseType: !3408, size: 640, offset: 224)
!3408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !3409)
!3409 = !{!3410}
!3410 = !DISubrange(count: 20)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3398, file: !3377, line: 25, baseType: !265, size: 32, offset: 864)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3395, file: !3377, line: 350, baseType: !3413, size: 4096, align: 128)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3377, line: 34, size: 4096, align: 128, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3434, !3435, !3436, !3438, !3440, !3444}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3413, file: !3377, line: 35, baseType: !342, size: 16)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3413, file: !3377, line: 36, baseType: !342, size: 16, offset: 16)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3413, file: !3377, line: 37, baseType: !342, size: 16, offset: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3413, file: !3377, line: 38, baseType: !342, size: 16, offset: 48)
!3419 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !3377, line: 39, baseType: !3420, size: 128, offset: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3413, file: !3377, line: 39, size: 128, elements: !3421)
!3421 = !{!3422, !3427}
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !3377, line: 40, baseType: !3423, size: 128)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !3377, line: 40, size: 128, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3423, file: !3377, line: 41, baseType: !200, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3423, file: !3377, line: 42, baseType: !200, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !3377, line: 44, baseType: !3428, size: 128)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !3377, line: 44, size: 128, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3428, file: !3377, line: 45, baseType: !265, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3428, file: !3377, line: 46, baseType: !265, size: 32, offset: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3428, file: !3377, line: 47, baseType: !265, size: 32, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3428, file: !3377, line: 48, baseType: !265, size: 32, offset: 96)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3413, file: !3377, line: 51, baseType: !265, size: 32, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3413, file: !3377, line: 52, baseType: !265, size: 32, offset: 224)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3413, file: !3377, line: 55, baseType: !3437, size: 1024, offset: 256)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 1024, elements: !529)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3413, file: !3377, line: 58, baseType: !3439, size: 2048, offset: 1280)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 2048, elements: !378)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3413, file: !3377, line: 60, baseType: !3441, size: 384, offset: 3328)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 384, elements: !3442)
!3442 = !{!3443}
!3443 = !DISubrange(count: 12)
!3444 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !3377, line: 62, baseType: !3445, size: 384, offset: 3712)
!3445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3413, file: !3377, line: 62, size: 384, elements: !3446)
!3446 = !{!3447, !3448}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3445, file: !3377, line: 63, baseType: !3441, size: 384)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3445, file: !3377, line: 64, baseType: !3441, size: 384)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3395, file: !3377, line: 351, baseType: !3450, size: 1088)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3377, line: 79, size: 1088, elements: !3451)
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3525}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3450, file: !3377, line: 80, baseType: !265, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3450, file: !3377, line: 81, baseType: !265, size: 32, offset: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3450, file: !3377, line: 82, baseType: !265, size: 32, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3450, file: !3377, line: 83, baseType: !265, size: 32, offset: 96)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3450, file: !3377, line: 84, baseType: !265, size: 32, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3450, file: !3377, line: 85, baseType: !265, size: 32, offset: 160)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3450, file: !3377, line: 86, baseType: !265, size: 32, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3450, file: !3377, line: 88, baseType: !3408, size: 640, offset: 224)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3450, file: !3377, line: 89, baseType: !335, size: 8, offset: 864)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3450, file: !3377, line: 90, baseType: !335, size: 8, offset: 872)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3450, file: !3377, line: 91, baseType: !335, size: 8, offset: 880)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3450, file: !3377, line: 92, baseType: !335, size: 8, offset: 888)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3450, file: !3377, line: 93, baseType: !335, size: 8, offset: 896)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3450, file: !3377, line: 94, baseType: !335, size: 8, offset: 904)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3450, file: !3377, line: 95, baseType: !3467, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3469, line: 11, size: 128, elements: !3470)
!3469 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3468, file: !3469, line: 12, baseType: !409, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3468, file: !3469, line: 13, baseType: !3473, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3475, line: 103, size: 1344, elements: !3476)
!3475 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3505, !3506, !3507}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3474, file: !3475, line: 109, baseType: !210, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3474, file: !3475, line: 110, baseType: !210, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3474, file: !3475, line: 111, baseType: !210, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3474, file: !3475, line: 112, baseType: !210, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3474, file: !3475, line: 113, baseType: !210, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3474, file: !3475, line: 114, baseType: !210, size: 64, offset: 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3474, file: !3475, line: 117, baseType: !210, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3474, file: !3475, line: 118, baseType: !210, size: 64, offset: 448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3474, file: !3475, line: 119, baseType: !210, size: 64, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3474, file: !3475, line: 120, baseType: !210, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3474, file: !3475, line: 121, baseType: !210, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3474, file: !3475, line: 122, baseType: !210, size: 64, offset: 704)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3474, file: !3475, line: 123, baseType: !210, size: 64, offset: 768)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3474, file: !3475, line: 124, baseType: !210, size: 64, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3474, file: !3475, line: 125, baseType: !210, size: 64, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3474, file: !3475, line: 139, baseType: !210, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3474, file: !3475, line: 142, baseType: !210, size: 64, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !3475, line: 144, baseType: !3495, size: 64, offset: 1088)
!3495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3474, file: !3475, line: 144, size: 64, elements: !3496)
!3496 = !{!3497, !3498, !3499}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3495, file: !3475, line: 146, baseType: !342, size: 16)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3495, file: !3475, line: 148, baseType: !200, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3495, file: !3475, line: 150, baseType: !3500, size: 64)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3475, line: 59, size: 64, elements: !3501)
!3501 = !{!3502, !3503, !3504}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3500, file: !3475, line: 61, baseType: !200, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3500, file: !3475, line: 63, baseType: !200, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3500, file: !3475, line: 65, baseType: !200, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3474, file: !3475, line: 153, baseType: !210, size: 64, offset: 1152)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3474, file: !3475, line: 154, baseType: !210, size: 64, offset: 1216)
!3507 = !DIDerivedType(tag: DW_TAG_member, scope: !3474, file: !3475, line: 156, baseType: !3508, size: 64, offset: 1280)
!3508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3474, file: !3475, line: 156, size: 64, elements: !3509)
!3509 = !{!3510, !3511, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3508, file: !3475, line: 158, baseType: !342, size: 16)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3508, file: !3475, line: 160, baseType: !200, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3508, file: !3475, line: 162, baseType: !3513, size: 64)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3475, line: 69, size: 64, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3513, file: !3475, line: 71, baseType: !200, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3513, file: !3475, line: 73, baseType: !200, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3513, file: !3475, line: 75, baseType: !200, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3513, file: !3475, line: 77, baseType: !200, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3513, file: !3475, line: 80, baseType: !200, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3513, file: !3475, line: 83, baseType: !200, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3513, file: !3475, line: 86, baseType: !200, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3513, file: !3475, line: 88, baseType: !200, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3513, file: !3475, line: 93, baseType: !200, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3513, file: !3475, line: 100, baseType: !200, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3450, file: !3377, line: 96, baseType: !265, size: 32, offset: 1024)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3395, file: !3377, line: 352, baseType: !3527, size: 4608, align: 512)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3377, line: 333, size: 4608, align: 512, elements: !3528)
!3528 = !{!3529, !3530, !3537}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3527, file: !3377, line: 334, baseType: !3413, size: 4096, align: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3527, file: !3377, line: 335, baseType: !3531, size: 512, offset: 4096)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3377, line: 312, size: 512, elements: !3532)
!3532 = !{!3533, !3534, !3535}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3531, file: !3377, line: 313, baseType: !200, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3531, file: !3377, line: 314, baseType: !200, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3531, file: !3377, line: 315, baseType: !3536, size: 384, offset: 128)
!3536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 384, elements: !1940)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3527, file: !3377, line: 336, baseType: !3538, offset: 4608)
!3538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, elements: !1857)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3395, file: !3377, line: 353, baseType: !3540, size: 32768)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 32768, elements: !3541)
!3541 = !{!3542}
!3542 = !DISubrange(count: 4096)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3376, file: !3377, line: 484, baseType: !3382, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3376, file: !3377, line: 491, baseType: !3545, size: 128, offset: 256)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3377, line: 404, size: 128, elements: !3546)
!3546 = !{!3547, !3548, !3549}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3545, file: !3377, line: 424, baseType: !200, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3545, file: !3377, line: 432, baseType: !13, size: 32, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3545, file: !3377, line: 440, baseType: !13, size: 32, offset: 96)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3376, file: !3377, line: 498, baseType: !3545, size: 128, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3376, file: !3377, line: 508, baseType: !3383, size: 33280, align: 512, offset: 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1450, file: !1451, line: 16, baseType: !1460, size: 192, offset: 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1450, file: !1451, line: 17, baseType: !327, size: 32, offset: 704)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !599, file: !20, line: 1240, baseType: !180, size: 64, offset: 6912)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !599, file: !20, line: 1243, baseType: !265, size: 32, offset: 6976)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !599, file: !20, line: 1245, baseType: !1208, size: 64, offset: 7040)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !599, file: !20, line: 1246, baseType: !1208, size: 64, offset: 7104)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !599, file: !20, line: 1248, baseType: !266, size: 32, offset: 7168)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !599, file: !20, line: 1249, baseType: !3560, size: 64, offset: 7232)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !599, file: !20, line: 1252, baseType: !3563, size: 256, offset: 7296)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !529)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !599, file: !20, line: 1253, baseType: !3565, size: 128, offset: 7552)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3566, line: 21, baseType: !3567)
!3566 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3566, line: 19, size: 128, elements: !3568)
!3568 = !{!3569}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3567, file: !3566, line: 20, baseType: !3570, size: 128)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 128, elements: !2787)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !599, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !599, file: !20, line: 1261, baseType: !708, size: 256, offset: 7744)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !599, file: !20, line: 1267, baseType: !207, size: 64, offset: 8000)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !599, file: !20, line: 1269, baseType: !545, size: 64, offset: 8064)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !599, file: !20, line: 1271, baseType: !3576, size: 448, offset: 8128)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1217, line: 63, size: 448, elements: !3577)
!3577 = !{!3578, !3583, !3584, !3585, !3586, !3587, !3588}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3576, file: !1217, line: 64, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!210, !3582, !1215}
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3576, file: !1217, line: 66, baseType: !3579, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3576, file: !1217, line: 69, baseType: !409, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3576, file: !1217, line: 70, baseType: !109, size: 32, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3576, file: !1217, line: 71, baseType: !13, size: 32, offset: 224)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3576, file: !1217, line: 74, baseType: !187, size: 128, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3576, file: !1217, line: 85, baseType: !3589, size: 64, offset: 384)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !599, file: !20, line: 1274, baseType: !712, size: 64, offset: 8576)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !599, file: !20, line: 1280, baseType: !712, size: 64, offset: 8640)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !599, file: !20, line: 1283, baseType: !109, size: 32, offset: 8704)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !599, file: !20, line: 1286, baseType: !2521, size: 32, offset: 8736)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !599, file: !20, line: 1289, baseType: !1028, size: 64, offset: 8768)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !599, file: !20, line: 1290, baseType: !1076, size: 64, offset: 8832)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !599, file: !20, line: 1297, baseType: !2034, size: 64, offset: 8896)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !599, file: !20, line: 1304, baseType: !3598, size: 64, offset: 8960)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3599, line: 49, size: 64, elements: !3600)
!3599 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3600 = !{!3601}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3598, file: !3599, line: 50, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3599, line: 41, size: 512, align: 512, elements: !3604)
!3604 = !{!3605, !3606, !3611}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3603, file: !3599, line: 43, baseType: !307, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3603, file: !3599, line: 45, baseType: !3607, size: 192, offset: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3599, line: 29, size: 192, elements: !3608)
!3608 = !{!3609, !3610}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3607, file: !3599, line: 30, baseType: !187, size: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3607, file: !3599, line: 32, baseType: !409, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3603, file: !3599, line: 46, baseType: !409, size: 64, offset: 256)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !599, file: !20, line: 1305, baseType: !3598, size: 64, offset: 9024)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !599, file: !20, line: 1306, baseType: !928, size: 128, align: 64, offset: 9088)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !599, file: !20, line: 1307, baseType: !966, size: 256, offset: 9216)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !599, file: !20, line: 1309, baseType: !708, size: 256, offset: 9472)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !599, file: !20, line: 1314, baseType: !109, size: 32, offset: 9728)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !599, file: !20, line: 1317, baseType: !307, size: 32, align: 512, offset: 10240)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !599, file: !20, line: 1318, baseType: !187, size: 128, offset: 10304)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !599, file: !20, line: 1320, baseType: !307, size: 32, offset: 10432)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !599, file: !20, line: 1321, baseType: !187, size: 128, offset: 10496)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !593, file: !594, line: 73, baseType: !109, size: 32, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !593, file: !594, line: 74, baseType: !3623, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1881, line: 42, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !547, file: !489, line: 141, baseType: !3627, size: 64, offset: 704)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!109, !1277, !788}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !547, file: !489, line: 142, baseType: !3631, size: 64, offset: 768)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!487, !487, !3634}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !488, file: !489, line: 96, baseType: !598, size: 64, offset: 832)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !488, file: !489, line: 97, baseType: !210, size: 64, offset: 896)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !488, file: !489, line: 98, baseType: !180, size: 64, offset: 960)
!3639 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !489, line: 100, baseType: !3640, size: 128, offset: 1024)
!3640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !489, line: 100, size: 128, elements: !3641)
!3641 = !{!3642, !3643}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3640, file: !489, line: 101, baseType: !187, size: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3640, file: !489, line: 102, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !488, file: !489, line: 104, baseType: !187, size: 128, offset: 1152)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !488, file: !489, line: 105, baseType: !187, size: 128, offset: 1280)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !488, file: !489, line: 113, baseType: !3648, size: 128, offset: 1408)
!3648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !489, line: 109, size: 128, elements: !3649)
!3649 = !{!3650, !3651, !3652}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3648, file: !489, line: 110, baseType: !952, size: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3648, file: !489, line: 111, baseType: !503, size: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3648, file: !489, line: 112, baseType: !928, size: 128, align: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !481, file: !20, line: 1968, baseType: !3654, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!207, !487, !452, !3657}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3659, line: 10, size: 128, elements: !3660)
!3659 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3658, file: !3659, line: 11, baseType: !751, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3658, file: !3659, line: 12, baseType: !180, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !481, file: !20, line: 1969, baseType: !3664, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!109, !3623, !452, !109}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !481, file: !20, line: 1970, baseType: !3668, size: 64, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!475, !452, !109, !788}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !481, file: !20, line: 1972, baseType: !3672, size: 64, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!109, !487, !373, !109}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !481, file: !20, line: 1974, baseType: !3676, size: 64, offset: 320)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!109, !3623, !452, !487, !415, !788}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !481, file: !20, line: 1976, baseType: !3680, size: 64, offset: 384)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!109, !487, !452, !487}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !481, file: !20, line: 1977, baseType: !3684, size: 64, offset: 448)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!109, !452, !487}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !481, file: !20, line: 1978, baseType: !3688, size: 64, offset: 512)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!109, !3623, !452, !487, !207}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !481, file: !20, line: 1980, baseType: !3692, size: 64, offset: 576)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!109, !3623, !452, !487, !415}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !481, file: !20, line: 1982, baseType: !3684, size: 64, offset: 640)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !481, file: !20, line: 1983, baseType: !3697, size: 64, offset: 704)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!109, !3623, !452, !487, !415, !603}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !481, file: !20, line: 1985, baseType: !3701, size: 64, offset: 768)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!109, !3623, !452, !487, !452, !487, !13}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !481, file: !20, line: 1987, baseType: !3705, size: 64, offset: 832)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!109, !3623, !487, !3708}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3710)
!3710 = !{!3711, !3712, !3713, !3723, !3732, !3733, !3738, !3739, !3740}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3709, file: !20, line: 227, baseType: !13, size: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3709, file: !20, line: 228, baseType: !415, size: 16, offset: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !20, line: 241, baseType: !3714, size: 32, offset: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3709, file: !20, line: 241, size: 32, elements: !3715)
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3714, file: !20, line: 242, baseType: !458, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3714, file: !20, line: 243, baseType: !3718, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3719, line: 16, baseType: !3720)
!3719 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3719, line: 14, size: 32, elements: !3721)
!3721 = !{!3722}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3720, file: !3719, line: 15, baseType: !463, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !20, line: 245, baseType: !3724, size: 32, offset: 96)
!3724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3709, file: !20, line: 245, size: 32, elements: !3725)
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3724, file: !20, line: 246, baseType: !467, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3724, file: !20, line: 247, baseType: !3728, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3719, line: 20, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3719, line: 18, size: 32, elements: !3730)
!3730 = !{!3731}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3729, file: !3719, line: 19, baseType: !471, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3709, file: !20, line: 249, baseType: !608, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3709, file: !20, line: 250, baseType: !3734, size: 128, offset: 192)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1209, line: 13, size: 128, elements: !3735)
!3735 = !{!3736, !3737}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3734, file: !1209, line: 14, baseType: !1208, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3734, file: !1209, line: 15, baseType: !409, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3709, file: !20, line: 251, baseType: !3734, size: 128, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3709, file: !20, line: 252, baseType: !3734, size: 128, offset: 448)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3709, file: !20, line: 259, baseType: !1797, size: 64, offset: 576)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !481, file: !20, line: 1988, baseType: !3742, size: 64, offset: 896)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!109, !3623, !1277, !3745, !265, !13}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3747, line: 22, size: 1280, elements: !3748)
!3747 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3746, file: !3747, line: 23, baseType: !265, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3746, file: !3747, line: 24, baseType: !415, size: 16, offset: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3746, file: !3747, line: 25, baseType: !13, size: 32, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3746, file: !3747, line: 26, baseType: !1919, size: 32, offset: 96)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3746, file: !3747, line: 27, baseType: !200, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3746, file: !3747, line: 28, baseType: !200, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3746, file: !3747, line: 41, baseType: !200, size: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3746, file: !3747, line: 42, baseType: !603, size: 32, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3746, file: !3747, line: 43, baseType: !603, size: 32, offset: 352)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3746, file: !3747, line: 44, baseType: !458, size: 32, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3746, file: !3747, line: 45, baseType: !467, size: 32, offset: 416)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3746, file: !3747, line: 46, baseType: !608, size: 64, offset: 448)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3746, file: !3747, line: 47, baseType: !3734, size: 128, offset: 512)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3746, file: !3747, line: 48, baseType: !3734, size: 128, offset: 640)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3746, file: !3747, line: 49, baseType: !3734, size: 128, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3746, file: !3747, line: 50, baseType: !3734, size: 128, offset: 896)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3746, file: !3747, line: 51, baseType: !200, size: 64, offset: 1024)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3746, file: !3747, line: 52, baseType: !200, size: 64, offset: 1088)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3746, file: !3747, line: 53, baseType: !265, size: 32, offset: 1152)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3746, file: !3747, line: 54, baseType: !265, size: 32, offset: 1184)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3746, file: !3747, line: 55, baseType: !200, size: 64, offset: 1216)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !481, file: !20, line: 1990, baseType: !3771, size: 64, offset: 960)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!405, !487, !373, !420}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !481, file: !20, line: 1991, baseType: !3775, size: 64, offset: 1024)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!109, !452, !3778, !200, !200}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !481, file: !20, line: 1993, baseType: !3781, size: 64, offset: 1088)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!109, !452, !109}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !481, file: !20, line: 1994, baseType: !3785, size: 64, offset: 1152)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!109, !452, !487, !1797, !13, !415}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !481, file: !20, line: 1997, baseType: !3789, size: 64, offset: 1216)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!109, !3623, !452, !1797, !415}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !481, file: !20, line: 1999, baseType: !3793, size: 64, offset: 1280)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!475, !3623, !487, !109}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !481, file: !20, line: 2001, baseType: !3797, size: 64, offset: 1344)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!109, !3623, !487, !475, !109}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !481, file: !20, line: 2003, baseType: !3801, size: 64, offset: 1408)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!109, !3623, !487, !3804}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !481, file: !20, line: 2005, baseType: !3807, size: 64, offset: 1472)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!109, !487, !3804}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !481, file: !20, line: 2006, baseType: !3811, size: 64, offset: 1536)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!3814, !452}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3816)
!3816 = !{!3817, !3824}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3815, file: !20, line: 3193, baseType: !3818, size: 128)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3819, line: 296, size: 128, elements: !3820)
!3819 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3820 = !{!3821, !3822, !3823}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3818, file: !3819, line: 297, baseType: !307, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3818, file: !3819, line: 299, baseType: !181, size: 32, offset: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3818, file: !3819, line: 300, baseType: !180, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3815, file: !20, line: 3194, baseType: !265, size: 32, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !453, file: !20, line: 655, baseType: !598, size: 64, offset: 448)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !453, file: !20, line: 656, baseType: !448, size: 64, offset: 512)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !453, file: !20, line: 659, baseType: !180, size: 64, offset: 576)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !453, file: !20, line: 663, baseType: !210, size: 64, offset: 640)
!3829 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !20, line: 671, baseType: !3830, size: 32, offset: 704)
!3830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !20, line: 671, size: 32, elements: !3831)
!3831 = !{!3832, !3834}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3830, file: !20, line: 672, baseType: !3833, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3830, file: !20, line: 673, baseType: !13, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !453, file: !20, line: 675, baseType: !603, size: 32, offset: 736)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !453, file: !20, line: 676, baseType: !608, size: 64, offset: 768)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !453, file: !20, line: 677, baseType: !3734, size: 128, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !453, file: !20, line: 678, baseType: !3734, size: 128, offset: 960)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !453, file: !20, line: 679, baseType: !3734, size: 128, offset: 1088)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !453, file: !20, line: 680, baseType: !307, size: 32, offset: 1216)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !453, file: !20, line: 681, baseType: !286, size: 16, offset: 1248)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !453, file: !20, line: 682, baseType: !335, size: 8, offset: 1264)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !453, file: !20, line: 683, baseType: !335, size: 8, offset: 1272)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !453, file: !20, line: 684, baseType: !1355, size: 64, offset: 1280)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !453, file: !20, line: 691, baseType: !210, size: 64, offset: 1344)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !453, file: !20, line: 692, baseType: !1367, size: 320, offset: 1408)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !453, file: !20, line: 694, baseType: !210, size: 64, offset: 1728)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !453, file: !20, line: 695, baseType: !210, size: 64, offset: 1792)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !453, file: !20, line: 697, baseType: !952, size: 128, offset: 1856)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !453, file: !20, line: 698, baseType: !187, size: 128, offset: 1984)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !453, file: !20, line: 707, baseType: !187, size: 128, offset: 2112)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !453, file: !20, line: 708, baseType: !187, size: 128, offset: 2240)
!3853 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !20, line: 709, baseType: !3854, size: 128, offset: 2368)
!3854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !20, line: 709, size: 128, elements: !3855)
!3855 = !{!3856, !3857}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3854, file: !20, line: 710, baseType: !1076, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3854, file: !20, line: 711, baseType: !928, size: 128, align: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !453, file: !20, line: 713, baseType: !714, size: 64, offset: 2496)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !453, file: !20, line: 714, baseType: !714, size: 64, offset: 2560)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !453, file: !20, line: 715, baseType: !327, size: 32, offset: 2624)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !453, file: !20, line: 716, baseType: !327, size: 32, offset: 2656)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !453, file: !20, line: 717, baseType: !327, size: 32, offset: 2688)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !453, file: !20, line: 719, baseType: !327, size: 32, offset: 2720)
!3864 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !20, line: 721, baseType: !3865, size: 64, offset: 2752)
!3865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !20, line: 721, size: 64, elements: !3866)
!3866 = !{!3867, !3868}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3865, file: !20, line: 722, baseType: !2065, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3865, file: !20, line: 723, baseType: !1099, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !453, file: !20, line: 725, baseType: !3870, size: 64, offset: 2816)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !453, file: !20, line: 726, baseType: !449, size: 1536, align: 64, offset: 2880)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !453, file: !20, line: 727, baseType: !187, size: 128, offset: 4416)
!3874 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !20, line: 728, baseType: !3875, size: 64, offset: 4544)
!3875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !20, line: 728, size: 64, elements: !3876)
!3876 = !{!3877, !3878, !3881, !3882}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3875, file: !20, line: 729, baseType: !2471, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3875, file: !20, line: 730, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3875, file: !20, line: 731, baseType: !373, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3875, file: !20, line: 732, baseType: !13, size: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !453, file: !20, line: 735, baseType: !266, size: 32, offset: 4608)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !453, file: !20, line: 738, baseType: !266, size: 32, offset: 4640)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !453, file: !20, line: 739, baseType: !3560, size: 64, offset: 4672)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !453, file: !20, line: 750, baseType: !180, size: 64, offset: 4736)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !449, file: !20, line: 474, baseType: !3818, size: 128, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !449, file: !20, line: 475, baseType: !1367, size: 320, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !449, file: !20, line: 476, baseType: !181, size: 32, offset: 512)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !449, file: !20, line: 477, baseType: !327, size: 32, offset: 544)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !449, file: !20, line: 482, baseType: !1653, size: 128, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !449, file: !20, line: 483, baseType: !210, size: 64, offset: 704)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !449, file: !20, line: 484, baseType: !210, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !449, file: !20, line: 485, baseType: !3895, size: 64, offset: 832)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3897)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !3898)
!3898 = !{!3899, !3903, !3973, !3977, !3981, !3987, !3991, !3995, !4000, !4004, !4008, !4012, !4013, !4017, !4021, !4025, !4030, !4034, !4041, !4042}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3897, file: !20, line: 405, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!109, !2258, !1111}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3897, file: !20, line: 406, baseType: !3904, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!109, !1797, !3907}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !3909)
!3909 = !{!3910, !3940, !3954}
!3910 = !DIDerivedType(tag: DW_TAG_member, scope: !3908, file: !44, line: 295, baseType: !3911, size: 512)
!3911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3908, file: !44, line: 295, size: 512, elements: !3912)
!3912 = !{!3913, !3939}
!3913 = !DIDerivedType(tag: DW_TAG_member, scope: !3911, file: !44, line: 296, baseType: !3914, size: 448)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3911, file: !44, line: 296, size: 448, elements: !3915)
!3915 = !{!3916, !3917, !3926, !3927, !3928, !3937, !3938}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3914, file: !44, line: 298, baseType: !210, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, scope: !3914, file: !44, line: 299, baseType: !3918, size: 128, offset: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3914, file: !44, line: 299, size: 128, elements: !3919)
!3919 = !{!3920, !3921}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3918, file: !44, line: 300, baseType: !187, size: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, scope: !3918, file: !44, line: 302, baseType: !3922, size: 128)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !44, line: 302, size: 128, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3922, file: !44, line: 303, baseType: !180, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3922, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3914, file: !44, line: 310, baseType: !448, size: 64, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3914, file: !44, line: 311, baseType: !210, size: 64, offset: 256)
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3914, file: !44, line: 312, baseType: !3929, size: 64, offset: 320)
!3929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3914, file: !44, line: 312, size: 64, elements: !3930)
!3930 = !{!3931, !3932}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3929, file: !44, line: 313, baseType: !180, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3929, file: !44, line: 314, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !3934)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !3935)
!3935 = !{!3936}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3934, file: !44, line: 256, baseType: !210, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3914, file: !44, line: 316, baseType: !327, size: 32, offset: 384)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3914, file: !44, line: 317, baseType: !327, size: 32, offset: 416)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3911, file: !44, line: 323, baseType: !2259, size: 512, align: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !3908, file: !44, line: 325, baseType: !3941, size: 512, offset: 512)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3908, file: !44, line: 325, size: 512, elements: !3942)
!3942 = !{!3943, !3953}
!3943 = !DIDerivedType(tag: DW_TAG_member, scope: !3941, file: !44, line: 326, baseType: !3944, size: 320)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3941, file: !44, line: 326, size: 320, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951, !3952}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3944, file: !44, line: 327, baseType: !210, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3944, file: !44, line: 328, baseType: !210, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3944, file: !44, line: 329, baseType: !210, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3944, file: !44, line: 331, baseType: !327, size: 32, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3944, file: !44, line: 332, baseType: !327, size: 32, offset: 224)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3944, file: !44, line: 333, baseType: !327, size: 32, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3944, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3941, file: !44, line: 339, baseType: !2259, size: 512, align: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, scope: !3908, file: !44, line: 341, baseType: !3955, size: 512, offset: 1024)
!3955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3908, file: !44, line: 341, size: 512, elements: !3956)
!3956 = !{!3957, !3966, !3972}
!3957 = !DIDerivedType(tag: DW_TAG_member, scope: !3955, file: !44, line: 342, baseType: !3958, size: 384)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !44, line: 342, size: 384, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3965}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3958, file: !44, line: 343, baseType: !210, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3958, file: !44, line: 344, baseType: !210, size: 64, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3958, file: !44, line: 346, baseType: !180, size: 64, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3958, file: !44, line: 347, baseType: !180, size: 64, offset: 192)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3958, file: !44, line: 348, baseType: !180, size: 64, offset: 256)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3958, file: !44, line: 349, baseType: !180, size: 64, offset: 320)
!3966 = !DIDerivedType(tag: DW_TAG_member, scope: !3955, file: !44, line: 352, baseType: !3967, size: 256)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !44, line: 352, size: 256, elements: !3968)
!3968 = !{!3969, !3970, !3971}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3967, file: !44, line: 353, baseType: !210, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3967, file: !44, line: 354, baseType: !210, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3967, file: !44, line: 356, baseType: !187, size: 128, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3955, file: !44, line: 359, baseType: !2259, size: 512, align: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3897, file: !20, line: 409, baseType: !3974, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!109, !448, !1111}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3897, file: !20, line: 412, baseType: !3978, size: 64, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!788, !448, !3907}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3897, file: !20, line: 414, baseType: !3982, size: 64, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !3985}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3897, file: !20, line: 416, baseType: !3988, size: 64, offset: 320)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!109, !1797, !448, !608, !13, !3310, !2486}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3897, file: !20, line: 419, baseType: !3992, size: 64, offset: 384)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!109, !1797, !448, !608, !13, !13, !2258, !180}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3897, file: !20, line: 424, baseType: !3996, size: 64, offset: 448)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!3999, !448, !3999}
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !182, line: 131, baseType: !200)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3897, file: !20, line: 425, baseType: !4001, size: 64, offset: 512)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{null, !3907, !420, !420}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3897, file: !20, line: 426, baseType: !4005, size: 64, offset: 576)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!788, !3907, !181}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3897, file: !20, line: 427, baseType: !4009, size: 64, offset: 640)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !3907}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3897, file: !20, line: 428, baseType: !2084, size: 64, offset: 704)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3897, file: !20, line: 433, baseType: !4014, size: 64, offset: 768)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!109, !448, !3907, !3907, !80}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3897, file: !20, line: 435, baseType: !4018, size: 64, offset: 832)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!109, !3907}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3897, file: !20, line: 436, baseType: !4022, size: 64, offset: 896)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!788, !3907, !420, !420}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3897, file: !20, line: 438, baseType: !4026, size: 64, offset: 960)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !3907, !4029, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3897, file: !20, line: 439, baseType: !4031, size: 64, offset: 1024)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!109, !448, !2258}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3897, file: !20, line: 442, baseType: !4035, size: 64, offset: 1088)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!109, !4038, !1797, !4040}
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3897, file: !20, line: 444, baseType: !2478, size: 64, offset: 1152)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3897, file: !20, line: 445, baseType: !4043, size: 64, offset: 1216)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!109, !2087, !2109}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !20, line: 486, baseType: !210, size: 64, offset: 896)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !449, file: !20, line: 487, baseType: !1367, size: 320, offset: 960)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !449, file: !20, line: 488, baseType: !2521, size: 32, offset: 1280)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !449, file: !20, line: 489, baseType: !307, size: 32, offset: 1312)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !449, file: !20, line: 490, baseType: !187, size: 128, offset: 1344)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !449, file: !20, line: 491, baseType: !180, size: 64, offset: 1472)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !439, file: !399, line: 180, baseType: !4053, size: 64, offset: 320)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!405, !1797, !300, !438, !373, !608, !420}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !439, file: !399, line: 182, baseType: !4053, size: 64, offset: 384)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !439, file: !399, line: 184, baseType: !4058, size: 64, offset: 448)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!109, !1797, !300, !438, !2149}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !427, file: !399, line: 90, baseType: !4062, size: 64, offset: 192)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !427, file: !399, line: 91, baseType: !4064, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !389, file: !295, line: 120, baseType: !4066, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!4069, !356}
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4071)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !4072)
!4072 = !{!4073, !4074, !4078, !4082, !4088, !4092}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4071, file: !88, line: 40, baseType: !87, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4071, file: !88, line: 41, baseType: !4075, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!788}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4071, file: !88, line: 42, baseType: !4079, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!180}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4071, file: !88, line: 43, baseType: !4083, size: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!2610, !4086}
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4071, file: !88, line: 44, baseType: !4089, size: 64, offset: 256)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!2610}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4071, file: !88, line: 45, baseType: !751, size: 64, offset: 320)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !389, file: !295, line: 121, baseType: !4094, size: 64, offset: 256)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!2610, !356}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !389, file: !295, line: 122, baseType: !4098, size: 64, offset: 320)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !356, !4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !294, file: !295, line: 70, baseType: !4104, size: 64, offset: 384)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !623, line: 190, size: 1152, elements: !4106)
!4106 = !{!4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4198, !4199, !4200, !4201, !4202, !4205}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4105, file: !623, line: 191, baseType: !327, size: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4105, file: !623, line: 192, baseType: !327, size: 32, offset: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4105, file: !623, line: 202, baseType: !4104, size: 64, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4105, file: !623, line: 203, baseType: !207, size: 64, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4105, file: !623, line: 205, baseType: !820, size: 192, align: 64, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4105, file: !623, line: 207, baseType: !2610, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4105, file: !623, line: 208, baseType: !13, size: 32, offset: 448)
!4114 = !DIDerivedType(tag: DW_TAG_member, scope: !4105, file: !623, line: 209, baseType: !4115, size: 256, offset: 512)
!4115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4105, file: !623, line: 209, size: 256, elements: !4116)
!4116 = !{!4117, !4126, !4130}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4115, file: !623, line: 210, baseType: !4118, size: 256)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !623, line: 153, size: 256, elements: !4119)
!4119 = !{!4120, !4121, !4122, !4125}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4118, file: !623, line: 154, baseType: !210, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4118, file: !623, line: 156, baseType: !1656, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4118, file: !623, line: 162, baseType: !4123, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !623, line: 162, flags: DIFlagFwdDecl)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4118, file: !623, line: 167, baseType: !210, size: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4115, file: !623, line: 211, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !623, line: 170, size: 64, elements: !4128)
!4128 = !{!4129}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4127, file: !623, line: 171, baseType: !4104, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4115, file: !623, line: 212, baseType: !4131, size: 256)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !623, line: 174, size: 256, elements: !4132)
!4132 = !{!4133, !4193, !4196, !4197}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4131, file: !623, line: 175, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4136)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !623, line: 271, size: 768, elements: !4137)
!4137 = !{!4138, !4158, !4162, !4166, !4170, !4174, !4178, !4182, !4183, !4184, !4185, !4189}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4136, file: !623, line: 276, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!109, !4142}
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !623, line: 251, size: 1216, elements: !4144)
!4144 = !{!4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4143, file: !623, line: 253, baseType: !4104, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4143, file: !623, line: 254, baseType: !1797, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4143, file: !623, line: 255, baseType: !1148, size: 64, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4143, file: !623, line: 256, baseType: !180, size: 64, offset: 192)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4143, file: !623, line: 259, baseType: !708, size: 256, offset: 256)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4143, file: !623, line: 260, baseType: !708, size: 256, offset: 512)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4143, file: !623, line: 261, baseType: !109, size: 32, offset: 768)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4143, file: !623, line: 262, baseType: !187, size: 128, offset: 832)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4143, file: !623, line: 263, baseType: !373, size: 64, offset: 960)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4143, file: !623, line: 265, baseType: !420, size: 64, offset: 1024)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4143, file: !623, line: 266, baseType: !788, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4143, file: !623, line: 267, baseType: !788, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4143, file: !623, line: 268, baseType: !2194, size: 64, offset: 1152)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4136, file: !623, line: 277, baseType: !4159, size: 64, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{null, !4142}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4136, file: !623, line: 290, baseType: !4163, size: 64, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!109, !1148, !180}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4136, file: !623, line: 292, baseType: !4167, size: 64, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!180, !1148, !2078}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4136, file: !623, line: 293, baseType: !4171, size: 64, offset: 256)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!180, !1148, !180, !2078}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4136, file: !623, line: 294, baseType: !4175, size: 64, offset: 320)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !1148, !180}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4136, file: !623, line: 296, baseType: !4179, size: 64, offset: 384)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!405, !4142, !373, !420, !608}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4136, file: !623, line: 306, baseType: !420, size: 64, offset: 448)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4136, file: !623, line: 313, baseType: !788, size: 8, offset: 512)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4136, file: !623, line: 314, baseType: !4179, size: 64, offset: 576)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4136, file: !623, line: 317, baseType: !4186, size: 64, offset: 640)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!2136, !4142, !2138}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4136, file: !623, line: 320, baseType: !4190, size: 64, offset: 704)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!109, !4142, !2149}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4131, file: !623, line: 176, baseType: !4194, size: 64, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !623, line: 35, flags: DIFlagFwdDecl)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4131, file: !623, line: 177, baseType: !608, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4131, file: !623, line: 178, baseType: !4104, size: 64, offset: 192)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4105, file: !623, line: 215, baseType: !180, size: 64, offset: 768)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4105, file: !623, line: 221, baseType: !200, size: 64, offset: 832)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4105, file: !623, line: 223, baseType: !286, size: 16, offset: 896)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4105, file: !623, line: 224, baseType: !415, size: 16, offset: 912)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4105, file: !623, line: 225, baseType: !4203, size: 64, offset: 960)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !623, line: 36, flags: DIFlagFwdDecl)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4105, file: !623, line: 227, baseType: !928, size: 128, align: 64, offset: 1024)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !294, file: !295, line: 71, baseType: !4207, size: 32, offset: 448)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4208, line: 19, size: 32, elements: !4209)
!4208 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4209 = !{!4210}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4207, file: !4208, line: 20, baseType: !1487, size: 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !294, file: !295, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !294, file: !295, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !294, file: !295, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !294, file: !295, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !294, file: !295, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !291, file: !94, line: 707, baseType: !290, size: 64, offset: 512)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !291, file: !94, line: 709, baseType: !4218, size: 64, offset: 576)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !291, file: !94, line: 711, baseType: !207, size: 64, offset: 640)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !291, file: !94, line: 712, baseType: !4222, size: 64, offset: 704)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4224)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4225)
!4225 = !{!4226, !4227, !4228, !4234, !4239, !4243}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4224, file: !94, line: 90, baseType: !207, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4224, file: !94, line: 91, baseType: !424, size: 64, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4224, file: !94, line: 92, baseType: !4229, size: 64, offset: 128)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!109, !4232, !368}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4224, file: !94, line: 93, baseType: !4235, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!373, !4232, !4238, !4101, !4102}
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4224, file: !94, line: 95, baseType: !4240, size: 64, offset: 256)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !290}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4224, file: !94, line: 97, baseType: !4244, size: 64, offset: 320)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4246)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4247)
!4247 = !{!4248, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4246, file: !101, line: 287, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!109, !290}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4246, file: !101, line: 288, baseType: !4240, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4246, file: !101, line: 289, baseType: !4249, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4246, file: !101, line: 290, baseType: !4249, size: 64, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4246, file: !101, line: 291, baseType: !4249, size: 64, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4246, file: !101, line: 292, baseType: !4249, size: 64, offset: 320)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4246, file: !101, line: 293, baseType: !4249, size: 64, offset: 384)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4246, file: !101, line: 294, baseType: !4249, size: 64, offset: 448)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4246, file: !101, line: 295, baseType: !4249, size: 64, offset: 512)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4246, file: !101, line: 296, baseType: !4249, size: 64, offset: 576)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4246, file: !101, line: 297, baseType: !4249, size: 64, offset: 640)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4246, file: !101, line: 298, baseType: !4249, size: 64, offset: 704)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4246, file: !101, line: 299, baseType: !4249, size: 64, offset: 768)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4246, file: !101, line: 300, baseType: !4249, size: 64, offset: 832)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4246, file: !101, line: 301, baseType: !4249, size: 64, offset: 896)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4246, file: !101, line: 302, baseType: !4249, size: 64, offset: 960)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4246, file: !101, line: 303, baseType: !4249, size: 64, offset: 1024)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4246, file: !101, line: 304, baseType: !4249, size: 64, offset: 1088)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4246, file: !101, line: 305, baseType: !4249, size: 64, offset: 1152)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4246, file: !101, line: 306, baseType: !4249, size: 64, offset: 1216)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4246, file: !101, line: 307, baseType: !4249, size: 64, offset: 1280)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4246, file: !101, line: 308, baseType: !4249, size: 64, offset: 1344)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4246, file: !101, line: 309, baseType: !4249, size: 64, offset: 1408)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !291, file: !94, line: 714, baseType: !4275, size: 64, offset: 768)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4277)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4278, line: 80, size: 1344, elements: !4279)
!4278 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4279 = !{!4280, !4281, !4282, !4283, !4284, !4285, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4358}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4277, file: !4278, line: 81, baseType: !207, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4277, file: !4278, line: 82, baseType: !207, size: 64, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4277, file: !4278, line: 83, baseType: !424, size: 64, offset: 128)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4277, file: !4278, line: 84, baseType: !424, size: 64, offset: 192)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4277, file: !4278, line: 85, baseType: !424, size: 64, offset: 256)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4277, file: !4278, line: 87, baseType: !4286, size: 64, offset: 320)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!109, !290, !4289}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !148, line: 96, size: 1152, elements: !4291)
!4291 = !{!4292, !4293, !4294, !4295, !4296, !4297, !4298, !4311, !4321, !4322, !4323, !4324, !4325, !4333, !4334, !4335, !4336, !4337, !4338}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4290, file: !148, line: 97, baseType: !207, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4290, file: !148, line: 98, baseType: !4275, size: 64, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4290, file: !148, line: 100, baseType: !637, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4290, file: !148, line: 101, baseType: !207, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4290, file: !148, line: 103, baseType: !788, size: 8, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4290, file: !148, line: 104, baseType: !147, size: 32, offset: 288)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4290, file: !148, line: 106, baseType: !4299, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4301)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4302, line: 282, size: 1600, elements: !4303)
!4302 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4303 = !{!4304, !4305, !4306, !4310}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4301, file: !4302, line: 283, baseType: !3563, size: 256)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4301, file: !4302, line: 284, baseType: !3563, size: 256, offset: 256)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4301, file: !4302, line: 285, baseType: !4307, size: 1024, offset: 512)
!4307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4308)
!4308 = !{!4309}
!4309 = !DISubrange(count: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4301, file: !4302, line: 286, baseType: !2610, size: 64, offset: 1536)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4290, file: !148, line: 107, baseType: !4312, size: 64, offset: 384)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4302, line: 217, size: 256, elements: !4315)
!4315 = !{!4316, !4317, !4319, !4320}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4314, file: !4302, line: 218, baseType: !3570, size: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4314, file: !4302, line: 219, baseType: !4318, size: 64, offset: 128)
!4318 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4302, line: 15, baseType: !210)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4314, file: !4302, line: 220, baseType: !266, size: 32, offset: 192)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4314, file: !4302, line: 221, baseType: !266, size: 32, offset: 224)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4290, file: !148, line: 109, baseType: !4249, size: 64, offset: 448)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4290, file: !148, line: 110, baseType: !4240, size: 64, offset: 512)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4290, file: !148, line: 111, baseType: !4249, size: 64, offset: 576)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4290, file: !148, line: 112, baseType: !4240, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4290, file: !148, line: 113, baseType: !4326, size: 64, offset: 704)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!109, !290, !4329}
!4329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4330)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4331)
!4331 = !{!4332}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4330, file: !101, line: 59, baseType: !109, size: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4290, file: !148, line: 114, baseType: !4249, size: 64, offset: 768)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4290, file: !148, line: 115, baseType: !424, size: 64, offset: 832)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4290, file: !148, line: 116, baseType: !424, size: 64, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4290, file: !148, line: 118, baseType: !4244, size: 64, offset: 960)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4290, file: !148, line: 119, baseType: !4240, size: 64, offset: 1024)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4290, file: !148, line: 121, baseType: !4339, size: 64, offset: 1088)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !148, line: 121, flags: DIFlagFwdDecl)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4277, file: !4278, line: 88, baseType: !4229, size: 64, offset: 384)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4277, file: !4278, line: 89, baseType: !4249, size: 64, offset: 448)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4277, file: !4278, line: 90, baseType: !4240, size: 64, offset: 512)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4277, file: !4278, line: 91, baseType: !4240, size: 64, offset: 576)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4277, file: !4278, line: 92, baseType: !4240, size: 64, offset: 640)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4277, file: !4278, line: 94, baseType: !4249, size: 64, offset: 704)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4277, file: !4278, line: 95, baseType: !4249, size: 64, offset: 768)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4277, file: !4278, line: 97, baseType: !4326, size: 64, offset: 832)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4277, file: !4278, line: 98, baseType: !4249, size: 64, offset: 896)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4277, file: !4278, line: 100, baseType: !4249, size: 64, offset: 960)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4277, file: !4278, line: 102, baseType: !4249, size: 64, offset: 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4277, file: !4278, line: 103, baseType: !4240, size: 64, offset: 1088)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4277, file: !4278, line: 105, baseType: !4244, size: 64, offset: 1152)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4277, file: !4278, line: 107, baseType: !4355, size: 64, offset: 1216)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4357)
!4357 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4278, line: 107, flags: DIFlagFwdDecl)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4277, file: !4278, line: 109, baseType: !788, size: 8, offset: 1280)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !291, file: !94, line: 715, baseType: !4289, size: 64, offset: 832)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !291, file: !94, line: 717, baseType: !180, size: 64, offset: 896)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !291, file: !94, line: 719, baseType: !180, size: 64, offset: 960)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !291, file: !94, line: 721, baseType: !708, size: 256, offset: 1024)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !291, file: !94, line: 725, baseType: !4364, size: 448, offset: 1280)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4364, file: !94, line: 518, baseType: !187, size: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4364, file: !94, line: 519, baseType: !187, size: 128, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4364, file: !94, line: 520, baseType: !187, size: 128, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4364, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !291, file: !94, line: 726, baseType: !4371, size: 2496, offset: 1728)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4372)
!4372 = !{!4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4455, !4459}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4371, file: !101, line: 664, baseType: !4329, size: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4371, file: !101, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4371, file: !101, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4371, file: !101, line: 667, baseType: !788, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4371, file: !101, line: 668, baseType: !788, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4371, file: !101, line: 669, baseType: !788, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4371, file: !101, line: 670, baseType: !788, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4371, file: !101, line: 671, baseType: !788, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4371, file: !101, line: 672, baseType: !788, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4371, file: !101, line: 673, baseType: !788, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4371, file: !101, line: 674, baseType: !788, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4371, file: !101, line: 675, baseType: !265, size: 32, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4371, file: !101, line: 676, baseType: !307, size: 32, offset: 96)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4371, file: !101, line: 678, baseType: !187, size: 128, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4371, file: !101, line: 679, baseType: !657, size: 256, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4371, file: !101, line: 680, baseType: !4389, size: 64, offset: 512)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4391, line: 43, size: 1536, elements: !4392)
!4391 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4392 = !{!4393, !4394, !4395, !4396, !4397, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4390, file: !4391, line: 44, baseType: !207, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4390, file: !4391, line: 45, baseType: !109, size: 32, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4390, file: !4391, line: 46, baseType: !187, size: 128, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4390, file: !4391, line: 47, baseType: !307, size: 32, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4390, file: !4391, line: 48, baseType: !4398, size: 64, offset: 320)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4390, file: !4391, line: 49, baseType: !948, size: 320, offset: 384)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4390, file: !4391, line: 50, baseType: !210, size: 64, offset: 704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4390, file: !4391, line: 51, baseType: !1602, size: 64, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4390, file: !4391, line: 52, baseType: !1602, size: 64, offset: 832)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4390, file: !4391, line: 53, baseType: !1602, size: 64, offset: 896)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4390, file: !4391, line: 54, baseType: !1602, size: 64, offset: 960)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4390, file: !4391, line: 55, baseType: !1602, size: 64, offset: 1024)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4390, file: !4391, line: 56, baseType: !210, size: 64, offset: 1088)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4390, file: !4391, line: 57, baseType: !210, size: 64, offset: 1152)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4390, file: !4391, line: 58, baseType: !210, size: 64, offset: 1216)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4390, file: !4391, line: 59, baseType: !210, size: 64, offset: 1280)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4390, file: !4391, line: 60, baseType: !210, size: 64, offset: 1344)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4390, file: !4391, line: 61, baseType: !290, size: 64, offset: 1408)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4390, file: !4391, line: 62, baseType: !788, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4390, file: !4391, line: 63, baseType: !788, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4371, file: !101, line: 681, baseType: !788, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4371, file: !101, line: 682, baseType: !788, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4371, file: !101, line: 683, baseType: !788, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4371, file: !101, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4371, file: !101, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4371, file: !101, line: 690, baseType: !1594, size: 512, offset: 640)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4371, file: !101, line: 691, baseType: !200, size: 64, offset: 1152)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4371, file: !101, line: 692, baseType: !966, size: 256, offset: 1216)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4371, file: !101, line: 693, baseType: !1460, size: 192, offset: 1472)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4371, file: !101, line: 694, baseType: !4398, size: 64, offset: 1664)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4371, file: !101, line: 695, baseType: !327, size: 32, offset: 1728)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4371, file: !101, line: 696, baseType: !327, size: 32, offset: 1760)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4371, file: !101, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4371, file: !101, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4371, file: !101, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4371, file: !101, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4371, file: !101, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4371, file: !101, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4371, file: !101, line: 703, baseType: !788, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4371, file: !101, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4371, file: !101, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4371, file: !101, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4371, file: !101, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4371, file: !101, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4371, file: !101, line: 709, baseType: !13, size: 32, offset: 1824)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4371, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4371, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4371, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4371, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4371, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4371, file: !101, line: 715, baseType: !200, size: 64, offset: 2048)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4371, file: !101, line: 716, baseType: !200, size: 64, offset: 2112)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4371, file: !101, line: 717, baseType: !200, size: 64, offset: 2176)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4371, file: !101, line: 718, baseType: !200, size: 64, offset: 2240)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4371, file: !101, line: 720, baseType: !4450, size: 64, offset: 2304)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4452)
!4452 = !{!4453, !4454}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4451, file: !101, line: 633, baseType: !307, size: 32)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4451, file: !101, line: 634, baseType: !13, size: 32, offset: 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4371, file: !101, line: 721, baseType: !4456, size: 64, offset: 2368)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !290, !704}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4371, file: !101, line: 722, baseType: !4460, size: 64, offset: 2432)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !291, file: !94, line: 727, baseType: !4463, size: 64, offset: 4224)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4465)
!4465 = !{!4466, !4467, !4468, !4472, !4473, !4474}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4464, file: !101, line: 743, baseType: !4246, size: 1472)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4464, file: !101, line: 744, baseType: !4249, size: 64, offset: 1472)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4464, file: !101, line: 745, baseType: !4469, size: 64, offset: 1536)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{null, !290, !788}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4464, file: !101, line: 746, baseType: !4249, size: 64, offset: 1600)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4464, file: !101, line: 747, baseType: !4240, size: 64, offset: 1664)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4464, file: !101, line: 748, baseType: !4240, size: 64, offset: 1728)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !291, file: !94, line: 736, baseType: !4476, size: 128, offset: 4288)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4477)
!4477 = !{!4478, !4482}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4476, file: !94, line: 531, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4481, line: 13, flags: DIFlagFwdDecl)
!4481 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4476, file: !94, line: 532, baseType: !4483, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !291, file: !94, line: 738, baseType: !4486, size: 64, offset: 4416)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4488)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !291, file: !94, line: 740, baseType: !4490, size: 64, offset: 4480)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !291, file: !94, line: 741, baseType: !200, size: 64, offset: 4544)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !291, file: !94, line: 746, baseType: !200, size: 64, offset: 4608)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !291, file: !94, line: 747, baseType: !4494, size: 64, offset: 4672)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4496)
!4496 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !291, file: !94, line: 749, baseType: !4498, size: 64, offset: 4736)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4500)
!4500 = !{!4501, !4502, !4503}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4499, file: !94, line: 433, baseType: !13, size: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4499, file: !94, line: 434, baseType: !13, size: 32, offset: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4499, file: !94, line: 435, baseType: !210, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !291, file: !94, line: 751, baseType: !187, size: 128, offset: 4800)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !291, file: !94, line: 762, baseType: !4506, size: 64, offset: 4928)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !291, file: !94, line: 770, baseType: !4509, offset: 4992)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4510, line: 5, elements: !995)
!4510 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !291, file: !94, line: 772, baseType: !4512, size: 64, offset: 4992)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4514, line: 48, size: 1152, elements: !4515)
!4514 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4515 = !{!4516, !4517, !4519, !4520, !4623, !4631, !4632, !4633, !4634, !4635, !4636}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4513, file: !4514, line: 49, baseType: !207, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4513, file: !4514, line: 50, baseType: !4518, size: 32, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4514, line: 25, baseType: !265)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4513, file: !4514, line: 51, baseType: !207, size: 64, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4513, file: !4514, line: 52, baseType: !4521, size: 512, offset: 192)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4522, line: 41, size: 512, elements: !4523)
!4522 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4523 = !{!4524, !4526, !4619, !4620, !4621, !4622}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4521, file: !4522, line: 42, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4521, file: !4522, line: 43, baseType: !4527, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4529)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4522, line: 125, size: 1408, elements: !4530)
!4530 = !{!4531, !4535, !4539, !4545, !4549, !4550, !4554, !4558, !4562, !4566, !4570, !4571, !4575, !4579, !4583, !4594, !4595, !4596, !4597, !4607, !4611, !4615}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4529, file: !4522, line: 126, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!4525, !4525}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4529, file: !4522, line: 127, baseType: !4536, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{null, !4525}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4529, file: !4522, line: 128, baseType: !4540, size: 64, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!788, !4543}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4521)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4529, file: !4522, line: 129, baseType: !4546, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!2610, !4543, !4232}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4529, file: !4522, line: 131, baseType: !4540, size: 64, offset: 256)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4529, file: !4522, line: 133, baseType: !4551, size: 64, offset: 320)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!116, !4543}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4529, file: !4522, line: 134, baseType: !4555, size: 64, offset: 384)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!788, !4543, !207}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4529, file: !4522, line: 136, baseType: !4559, size: 64, offset: 448)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!109, !4543, !207, !13, !180, !420}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4529, file: !4522, line: 141, baseType: !4563, size: 64, offset: 512)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!109, !4543, !207, !1043, !420}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4529, file: !4522, line: 144, baseType: !4567, size: 64, offset: 576)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!207, !4543}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4529, file: !4522, line: 145, baseType: !4567, size: 64, offset: 640)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4529, file: !4522, line: 146, baseType: !4572, size: 64, offset: 704)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!4525, !4543}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4529, file: !4522, line: 148, baseType: !4576, size: 64, offset: 768)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!4525, !4543, !4525}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4529, file: !4522, line: 151, baseType: !4580, size: 64, offset: 832)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!4525, !4543, !207}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4529, file: !4522, line: 153, baseType: !4584, size: 64, offset: 896)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!109, !4543, !207, !207, !13, !13, !4587}
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4522, line: 94, size: 640, elements: !4589)
!4589 = !{!4590, !4591, !4592}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4588, file: !4522, line: 95, baseType: !4525, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4588, file: !4522, line: 96, baseType: !13, size: 32, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4588, file: !4522, line: 97, baseType: !4593, size: 512, offset: 128)
!4593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 512, elements: !1637)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4529, file: !4522, line: 158, baseType: !4576, size: 64, offset: 960)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4529, file: !4522, line: 161, baseType: !4572, size: 64, offset: 1024)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4529, file: !4522, line: 163, baseType: !4532, size: 64, offset: 1088)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4529, file: !4522, line: 164, baseType: !4598, size: 64, offset: 1152)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!109, !4543, !4601}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4522, line: 73, size: 128, elements: !4603)
!4603 = !{!4604, !4605, !4606}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4602, file: !4522, line: 74, baseType: !13, size: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4602, file: !4522, line: 75, baseType: !13, size: 32, offset: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4602, file: !4522, line: 76, baseType: !4543, size: 64, offset: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4529, file: !4522, line: 166, baseType: !4608, size: 64, offset: 1216)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!180, !4525, !109}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4529, file: !4522, line: 167, baseType: !4612, size: 64, offset: 1280)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!109, !4543, !13}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4529, file: !4522, line: 168, baseType: !4616, size: 64, offset: 1344)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!109, !4525}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4521, file: !4522, line: 44, baseType: !290, size: 64, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4521, file: !4522, line: 45, baseType: !187, size: 128, offset: 192)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4521, file: !4522, line: 46, baseType: !187, size: 128, offset: 320)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4521, file: !4522, line: 47, baseType: !335, size: 8, offset: 448)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4513, file: !4514, line: 54, baseType: !4624, size: 64, offset: 704)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4514, line: 28, size: 256, elements: !4626)
!4626 = !{!4627, !4628, !4629, !4630}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4625, file: !4514, line: 29, baseType: !373, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4625, file: !4514, line: 30, baseType: !109, size: 32, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4625, file: !4514, line: 31, baseType: !180, size: 64, offset: 128)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4625, file: !4514, line: 32, baseType: !4624, size: 64, offset: 192)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4513, file: !4514, line: 55, baseType: !4624, size: 64, offset: 768)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4513, file: !4514, line: 56, baseType: !4512, size: 64, offset: 832)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4513, file: !4514, line: 57, baseType: !4512, size: 64, offset: 896)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4513, file: !4514, line: 58, baseType: !4512, size: 64, offset: 960)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4513, file: !4514, line: 62, baseType: !210, size: 64, offset: 1024)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4513, file: !4514, line: 63, baseType: !180, size: 64, offset: 1088)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !291, file: !94, line: 773, baseType: !4525, size: 64, offset: 5056)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !291, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !291, file: !94, line: 778, baseType: !603, size: 32, offset: 5152)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !291, file: !94, line: 779, baseType: !265, size: 32, offset: 5184)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !291, file: !94, line: 781, baseType: !307, size: 32, offset: 5216)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !291, file: !94, line: 782, baseType: !187, size: 128, offset: 5248)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !291, file: !94, line: 784, baseType: !4644, size: 64, offset: 5376)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4646)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4647, line: 52, size: 768, elements: !4648)
!4647 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4648 = !{!4649, !4650, !4651, !4652, !4653, !4657, !4661, !4662, !4663, !4664, !4668, !4672}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4646, file: !4647, line: 53, baseType: !207, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4646, file: !4647, line: 55, baseType: !424, size: 64, offset: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4646, file: !4647, line: 56, baseType: !424, size: 64, offset: 128)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4646, file: !4647, line: 58, baseType: !4229, size: 64, offset: 192)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4646, file: !4647, line: 59, baseType: !4654, size: 64, offset: 256)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!373, !4232, !4238}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4646, file: !4647, line: 61, baseType: !4658, size: 64, offset: 320)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{null, !4644}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4646, file: !4647, line: 62, baseType: !4240, size: 64, offset: 384)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4646, file: !4647, line: 64, baseType: !4249, size: 64, offset: 448)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4646, file: !4647, line: 66, baseType: !4069, size: 64, offset: 512)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4646, file: !4647, line: 67, baseType: !4665, size: 64, offset: 576)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!2610, !4232}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4646, file: !4647, line: 69, baseType: !4669, size: 64, offset: 640)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{null, !4232, !4101, !4102}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4646, file: !4647, line: 71, baseType: !4244, size: 64, offset: 704)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !291, file: !94, line: 785, baseType: !424, size: 64, offset: 5440)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !291, file: !94, line: 787, baseType: !4240, size: 64, offset: 5504)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !291, file: !94, line: 788, baseType: !4676, size: 64, offset: 5568)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !291, file: !94, line: 789, baseType: !4679, size: 64, offset: 5632)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !291, file: !94, line: 791, baseType: !4682, size: 64, offset: 5696)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4684)
!4684 = !{!4685, !4686, !4687, !4688, !4689}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4683, file: !94, line: 598, baseType: !122, size: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4683, file: !94, line: 599, baseType: !131, size: 32, offset: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4683, file: !94, line: 600, baseType: !136, size: 32, offset: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4683, file: !94, line: 601, baseType: !788, size: 8, offset: 96)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4683, file: !94, line: 602, baseType: !788, size: 8, offset: 104)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !291, file: !94, line: 793, baseType: !141, size: 32, offset: 5760)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !291, file: !94, line: 795, baseType: !788, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !291, file: !94, line: 796, baseType: !788, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !291, file: !94, line: 797, baseType: !788, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !291, file: !94, line: 798, baseType: !788, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !291, file: !94, line: 799, baseType: !788, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !230, file: !159, line: 676, baseType: !291, size: 5824, offset: 2240)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !230, file: !159, line: 677, baseType: !438, size: 64, offset: 8064)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !230, file: !159, line: 678, baseType: !438, size: 64, offset: 8128)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !230, file: !159, line: 679, baseType: !13, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !230, file: !159, line: 680, baseType: !13, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !225, file: !159, line: 325, baseType: !229, size: 64, offset: 192)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !225, file: !159, line: 327, baseType: !180, size: 64, offset: 256)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !225, file: !159, line: 328, baseType: !273, size: 64, offset: 320)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !225, file: !159, line: 329, baseType: !4705, size: 64, offset: 384)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !159, line: 76, size: 832, elements: !4707)
!4707 = !{!4708, !4709, !4710, !4713, !4714}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4706, file: !159, line: 77, baseType: !229, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4706, file: !159, line: 78, baseType: !187, size: 128, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4706, file: !159, line: 79, baseType: !4711, size: 64, offset: 192)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !159, line: 79, flags: DIFlagFwdDecl)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4706, file: !159, line: 80, baseType: !277, size: 8, offset: 256)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4706, file: !159, line: 81, baseType: !294, size: 512, offset: 320)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !225, file: !159, line: 331, baseType: !13, size: 32, offset: 448)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !225, file: !159, line: 332, baseType: !286, size: 16, offset: 480)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !225, file: !159, line: 333, baseType: !286, size: 16, offset: 496)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !225, file: !159, line: 334, baseType: !286, size: 16, offset: 512)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !225, file: !159, line: 335, baseType: !286, size: 16, offset: 528)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !225, file: !159, line: 336, baseType: !13, size: 32, offset: 544)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !225, file: !159, line: 337, baseType: !335, size: 8, offset: 576)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !225, file: !159, line: 338, baseType: !335, size: 8, offset: 584)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !225, file: !159, line: 344, baseType: !4724, size: 64, offset: 640)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4726, line: 415, size: 64, elements: !4727)
!4726 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4727 = !{!4728, !4729, !4730}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4725, file: !4726, line: 416, baseType: !335, size: 8)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4725, file: !4726, line: 417, baseType: !335, size: 8, offset: 8)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4725, file: !4726, line: 418, baseType: !265, size: 32, offset: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !225, file: !159, line: 345, baseType: !224, size: 64, offset: 704)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !225, file: !159, line: 347, baseType: !265, size: 32, offset: 768)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !225, file: !159, line: 348, baseType: !335, size: 8, offset: 800)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !225, file: !159, line: 349, baseType: !335, size: 8, offset: 808)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !225, file: !159, line: 350, baseType: !335, size: 8, offset: 816)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !225, file: !159, line: 351, baseType: !335, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !225, file: !159, line: 352, baseType: !335, size: 8, offset: 832)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !225, file: !159, line: 353, baseType: !335, size: 8, offset: 840)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !225, file: !159, line: 354, baseType: !342, size: 16, offset: 848)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !225, file: !159, line: 355, baseType: !1057, size: 64, offset: 896)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !225, file: !159, line: 357, baseType: !4742, size: 64, offset: 960)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !159, line: 918, size: 2368, elements: !4744)
!4744 = !{!4745, !4746, !4747, !4760, !4764, !4768, !4772, !4776, !4777, !4781, !4782, !4786, !4806, !4807, !4808, !4809, !4814}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4743, file: !159, line: 919, baseType: !187, size: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4743, file: !159, line: 920, baseType: !207, size: 64, offset: 128)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4743, file: !159, line: 921, baseType: !4748, size: 64, offset: 192)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4750)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4302, line: 44, size: 320, elements: !4751)
!4751 = !{!4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4750, file: !4302, line: 45, baseType: !266, size: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4750, file: !4302, line: 45, baseType: !266, size: 32, offset: 32)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4750, file: !4302, line: 46, baseType: !266, size: 32, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4750, file: !4302, line: 46, baseType: !266, size: 32, offset: 96)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4750, file: !4302, line: 47, baseType: !266, size: 32, offset: 128)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4750, file: !4302, line: 47, baseType: !266, size: 32, offset: 160)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4750, file: !4302, line: 48, baseType: !4318, size: 64, offset: 192)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4750, file: !4302, line: 49, baseType: !266, size: 32, offset: 256)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4743, file: !159, line: 922, baseType: !4761, size: 64, offset: 256)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!109, !224, !4748}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4743, file: !159, line: 923, baseType: !4765, size: 64, offset: 320)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{null, !224}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4743, file: !159, line: 924, baseType: !4769, size: 64, offset: 384)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!109, !224, !4329}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4743, file: !159, line: 925, baseType: !4773, size: 64, offset: 448)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!109, !224}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4743, file: !159, line: 926, baseType: !4765, size: 64, offset: 512)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4743, file: !159, line: 927, baseType: !4778, size: 64, offset: 576)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!109, !224, !109}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4743, file: !159, line: 928, baseType: !4778, size: 64, offset: 640)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4743, file: !159, line: 929, baseType: !4783, size: 64, offset: 704)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!265, !224}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4743, file: !159, line: 930, baseType: !4787, size: 64, offset: 768)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4789)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !159, line: 837, size: 448, elements: !4790)
!4790 = !{!4791, !4797, !4801, !4802, !4803, !4804, !4805}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4789, file: !159, line: 839, baseType: !4792, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!4795, !224, !4796}
!4795 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !159, line: 814, baseType: !13)
!4796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !159, line: 196, baseType: !13)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4789, file: !159, line: 843, baseType: !4798, size: 64, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!4795, !224}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4789, file: !159, line: 846, baseType: !4798, size: 64, offset: 128)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4789, file: !159, line: 849, baseType: !4765, size: 64, offset: 192)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4789, file: !159, line: 850, baseType: !4765, size: 64, offset: 256)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4789, file: !159, line: 853, baseType: !4765, size: 64, offset: 320)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4789, file: !159, line: 856, baseType: !4765, size: 64, offset: 384)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4743, file: !159, line: 931, baseType: !424, size: 64, offset: 832)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4743, file: !159, line: 932, baseType: !424, size: 64, offset: 896)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4743, file: !159, line: 933, baseType: !4290, size: 1152, offset: 960)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4743, file: !159, line: 934, baseType: !4810, size: 192, offset: 2112)
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !159, line: 801, size: 192, elements: !4811)
!4811 = !{!4812, !4813}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4810, file: !159, line: 802, baseType: !307, size: 32)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4810, file: !159, line: 803, baseType: !187, size: 128, offset: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4743, file: !159, line: 935, baseType: !788, size: 8, offset: 2304)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !225, file: !159, line: 358, baseType: !200, size: 64, offset: 1024)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !225, file: !159, line: 364, baseType: !4499, size: 128, offset: 1088)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !225, file: !159, line: 366, baseType: !4818, size: 32, offset: 1216)
!4818 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !159, line: 171, baseType: !109)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !225, file: !159, line: 369, baseType: !335, size: 8, offset: 1248)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !225, file: !159, line: 370, baseType: !13, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !225, file: !159, line: 371, baseType: !13, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !225, file: !159, line: 373, baseType: !13, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !225, file: !159, line: 374, baseType: !13, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !225, file: !159, line: 375, baseType: !13, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !225, file: !159, line: 376, baseType: !13, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !225, file: !159, line: 377, baseType: !13, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !225, file: !159, line: 378, baseType: !13, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !225, file: !159, line: 379, baseType: !13, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !225, file: !159, line: 380, baseType: !13, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !225, file: !159, line: 382, baseType: !13, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !225, file: !159, line: 383, baseType: !13, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !225, file: !159, line: 384, baseType: !13, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !225, file: !159, line: 385, baseType: !13, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !225, file: !159, line: 388, baseType: !13, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !225, file: !159, line: 390, baseType: !13, size: 32, offset: 1280)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !225, file: !159, line: 391, baseType: !13, size: 32, offset: 1312)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !225, file: !159, line: 394, baseType: !4838, size: 64, offset: 1344)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !159, line: 316, flags: DIFlagFwdDecl)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !225, file: !159, line: 395, baseType: !342, size: 16, offset: 1408)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !225, file: !159, line: 396, baseType: !13, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !225, file: !159, line: 399, baseType: !13, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !225, file: !159, line: 400, baseType: !13, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !225, file: !159, line: 402, baseType: !4796, size: 32, offset: 1440)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !225, file: !159, line: 403, baseType: !291, size: 5824, offset: 1472)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !225, file: !159, line: 405, baseType: !109, size: 32, offset: 7296)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !225, file: !159, line: 411, baseType: !13, size: 32, offset: 7328)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !225, file: !159, line: 412, baseType: !4849, size: 5632, offset: 7360)
!4849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 5632, elements: !4850)
!4850 = !{!4851}
!4851 = !DISubrange(count: 11)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !225, file: !159, line: 413, baseType: !194, size: 512, offset: 12992)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !225, file: !159, line: 415, baseType: !788, size: 8, offset: 13504)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !225, file: !159, line: 417, baseType: !13, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !225, file: !159, line: 418, baseType: !13, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !225, file: !159, line: 419, baseType: !13, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !225, file: !159, line: 420, baseType: !13, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !225, file: !159, line: 421, baseType: !13, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !225, file: !159, line: 423, baseType: !13, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !225, file: !159, line: 424, baseType: !13, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !225, file: !159, line: 425, baseType: !13, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !225, file: !159, line: 426, baseType: !13, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !225, file: !159, line: 427, baseType: !13, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !225, file: !159, line: 428, baseType: !13, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !225, file: !159, line: 429, baseType: !13, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !225, file: !159, line: 430, baseType: !13, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !225, file: !159, line: 431, baseType: !13, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !225, file: !159, line: 432, baseType: !13, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !225, file: !159, line: 433, baseType: !13, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !225, file: !159, line: 434, baseType: !13, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !225, file: !159, line: 435, baseType: !13, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !225, file: !159, line: 436, baseType: !13, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !225, file: !159, line: 437, baseType: !13, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !225, file: !159, line: 438, baseType: !13, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !225, file: !159, line: 439, baseType: !13, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !225, file: !159, line: 440, baseType: !13, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !225, file: !159, line: 441, baseType: !13, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !225, file: !159, line: 442, baseType: !13, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !225, file: !159, line: 443, baseType: !13, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !225, file: !159, line: 451, baseType: !13, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !225, file: !159, line: 457, baseType: !13, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !225, file: !159, line: 458, baseType: !13, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !225, file: !159, line: 459, baseType: !13, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !225, file: !159, line: 460, baseType: !13, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !225, file: !159, line: 461, baseType: !13, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !225, file: !159, line: 462, baseType: !13, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !225, file: !159, line: 463, baseType: !13, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !225, file: !159, line: 464, baseType: !13, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !225, file: !159, line: 465, baseType: !13, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !225, file: !159, line: 466, baseType: !13, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !225, file: !159, line: 467, baseType: !13, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !225, file: !159, line: 468, baseType: !4893, size: 16, offset: 13552)
!4893 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !159, line: 222, baseType: !286)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !225, file: !159, line: 469, baseType: !327, size: 32, offset: 13568)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !225, file: !159, line: 471, baseType: !307, size: 32, offset: 13600)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !225, file: !159, line: 472, baseType: !4897, size: 512, offset: 13632)
!4897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 512, elements: !2787)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !225, file: !159, line: 473, baseType: !1076, size: 64, offset: 14144)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !225, file: !159, line: 474, baseType: !4900, size: 704, offset: 14208)
!4900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 704, elements: !4850)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !225, file: !159, line: 475, baseType: !4900, size: 704, offset: 14912)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !225, file: !159, line: 487, baseType: !180, size: 64, offset: 15616)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !225, file: !159, line: 488, baseType: !666, size: 32, offset: 15680)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !225, file: !159, line: 490, baseType: !4905, size: 320, offset: 15744)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !159, line: 309, size: 320, elements: !4906)
!4906 = !{!4907, !4908, !4909}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4905, file: !159, line: 310, baseType: !708, size: 256)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4905, file: !159, line: 311, baseType: !13, size: 32, offset: 256)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4905, file: !159, line: 312, baseType: !335, size: 8, offset: 288)
!4910 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !159, line: 497, baseType: !4911, size: 64, offset: 16064)
!4911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !159, line: 497, size: 64, elements: !4912)
!4912 = !{!4913, !4940}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4911, file: !159, line: 498, baseType: !4914, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4726, line: 294, size: 1024, elements: !4916)
!4916 = !{!4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4939}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4915, file: !4726, line: 295, baseType: !109, size: 32)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4915, file: !4726, line: 296, baseType: !109, size: 32, offset: 32)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4915, file: !4726, line: 297, baseType: !265, size: 32, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4915, file: !4726, line: 298, baseType: !342, size: 16, offset: 96)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4915, file: !4726, line: 299, baseType: !342, size: 16, offset: 112)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4915, file: !4726, line: 300, baseType: !342, size: 16, offset: 128)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4915, file: !4726, line: 301, baseType: !342, size: 16, offset: 144)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4915, file: !4726, line: 302, baseType: !342, size: 16, offset: 160)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4915, file: !4726, line: 303, baseType: !342, size: 16, offset: 176)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4915, file: !4726, line: 304, baseType: !342, size: 16, offset: 192)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4915, file: !4726, line: 305, baseType: !265, size: 32, offset: 224)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4915, file: !4726, line: 306, baseType: !335, size: 8, offset: 256)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4915, file: !4726, line: 307, baseType: !335, size: 8, offset: 264)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4915, file: !4726, line: 308, baseType: !342, size: 16, offset: 272)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4915, file: !4726, line: 309, baseType: !224, size: 64, offset: 320)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4915, file: !4726, line: 310, baseType: !224, size: 64, offset: 384)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4915, file: !4726, line: 311, baseType: !265, size: 32, offset: 448)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4915, file: !4726, line: 312, baseType: !335, size: 8, offset: 480)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4915, file: !4726, line: 313, baseType: !342, size: 16, offset: 496)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4915, file: !4726, line: 314, baseType: !342, size: 16, offset: 512)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4915, file: !4726, line: 315, baseType: !4938, size: 384, offset: 576)
!4938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 384, elements: !1940)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4915, file: !4726, line: 316, baseType: !788, size: 8, offset: 960)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4911, file: !159, line: 499, baseType: !224, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !225, file: !159, line: 501, baseType: !342, size: 16, offset: 16128)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !225, file: !159, line: 502, baseType: !335, size: 8, offset: 16144)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !225, file: !159, line: 505, baseType: !342, size: 16, offset: 16160)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !225, file: !159, line: 506, baseType: !265, size: 32, offset: 16192)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !225, file: !159, line: 507, baseType: !13, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !225, file: !159, line: 510, baseType: !342, size: 16, offset: 16240)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !225, file: !159, line: 511, baseType: !342, size: 16, offset: 16256)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !225, file: !159, line: 519, baseType: !342, size: 16, offset: 16272)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !225, file: !159, line: 520, baseType: !199, size: 64, offset: 16320)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !225, file: !159, line: 521, baseType: !420, size: 64, offset: 16384)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !225, file: !159, line: 526, baseType: !207, size: 64, offset: 16448)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !225, file: !159, line: 528, baseType: !210, size: 64, offset: 16512)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !225, file: !159, line: 531, baseType: !4954, size: 56, offset: 16576)
!4954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 56, elements: !829)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !190)
!4957 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !159, line: 791, baseType: !200)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !409)
!4962 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !182, line: 42, baseType: !210)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!4964 = !{!0, !7, !4965, !4967, !4969, !4974, !4976, !4978, !4980, !4983, !4988, !4990, !4992, !4994, !4996, !5001, !5007, !5009}
!4965 = !DIGlobalVariableExpression(var: !4966, expr: !DIExpression())
!4966 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_add_resource293", scope: !9, file: !2, line: 40, type: !180, isLocal: true, isDefinition: true)
!4967 = !DIGlobalVariableExpression(var: !4968, expr: !DIExpression())
!4968 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_free_resource_list294", scope: !9, file: !2, line: 46, type: !180, isLocal: true, isDefinition: true)
!4969 = !DIGlobalVariableExpression(var: !4970, expr: !DIExpression())
!4970 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !4971, isLocal: true, isDefinition: true)
!4971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !4972)
!4972 = !{!4973}
!4973 = !DISubrange(count: 24)
!4974 = !DIGlobalVariableExpression(var: !4975, expr: !DIExpression())
!4975 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_resource_n295", scope: !9, file: !2, line: 78, type: !180, isLocal: true, isDefinition: true)
!4976 = !DIGlobalVariableExpression(var: !4977, expr: !DIExpression())
!4977 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_request_pci_bus_resources296", scope: !9, file: !2, line: 142, type: !180, isLocal: true, isDefinition: true)
!4978 = !DIGlobalVariableExpression(var: !4979, expr: !DIExpression())
!4979 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_alloc_resource297", scope: !9, file: !2, line: 279, type: !180, isLocal: true, isDefinition: true)
!4980 = !DIGlobalVariableExpression(var: !4981, expr: !DIExpression())
!4981 = distinct !DIGlobalVariable(scope: null, file: !2, line: 316, type: !4982, isLocal: true, isDefinition: true)
!4982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !3409)
!4983 = !DIGlobalVariableExpression(var: !4984, expr: !DIExpression())
!4984 = distinct !DIGlobalVariable(scope: null, file: !2, line: 354, type: !4985, isLocal: true, isDefinition: true)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !4986)
!4986 = !{!4987}
!4987 = !DISubrange(count: 27)
!4988 = !DIGlobalVariableExpression(var: !4989, expr: !DIExpression())
!4989 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_add_device302", scope: !9, file: !2, line: 358, type: !180, isLocal: true, isDefinition: true)
!4990 = !DIGlobalVariableExpression(var: !4991, expr: !DIExpression())
!4991 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_bus_add_devices303", scope: !9, file: !2, line: 387, type: !180, isLocal: true, isDefinition: true)
!4992 = !DIGlobalVariableExpression(var: !4993, expr: !DIExpression())
!4993 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_walk_bus304", scope: !9, file: !2, line: 443, type: !180, isLocal: true, isDefinition: true)
!4994 = !DIGlobalVariableExpression(var: !4995, expr: !DIExpression())
!4995 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_walk_bus_locked305", scope: !9, file: !2, line: 451, type: !180, isLocal: true, isDefinition: true)
!4996 = !DIGlobalVariableExpression(var: !4997, expr: !DIExpression())
!4997 = distinct !DIGlobalVariable(scope: null, file: !170, line: 480, type: !4998, isLocal: true, isDefinition: true)
!4998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4999)
!4999 = !{!5000}
!5000 = !DISubrange(count: 21)
!5001 = !DIGlobalVariableExpression(var: !5002, expr: !DIExpression())
!5002 = distinct !DIGlobalVariable(name: "pci_high", scope: !9, file: !2, line: 148, type: !5003, isLocal: true, isDefinition: true)
!5003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !159, line: 796, size: 128, elements: !5004)
!5004 = !{!5005, !5006}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5003, file: !159, line: 797, baseType: !4957, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5003, file: !159, line: 798, baseType: !4957, size: 64, offset: 64)
!5007 = !DIGlobalVariableExpression(var: !5008, expr: !DIExpression())
!5008 = distinct !DIGlobalVariable(name: "pci_64_bit", scope: !9, file: !2, line: 146, type: !5003, isLocal: true, isDefinition: true)
!5009 = !DIGlobalVariableExpression(var: !5010, expr: !DIExpression())
!5010 = distinct !DIGlobalVariable(name: "pci_32_bit", scope: !9, file: !2, line: 144, type: !5003, isLocal: true, isDefinition: true)
!5011 = !{i32 7, !"Dwarf Version", i32 5}
!5012 = !{i32 2, !"Debug Info Version", i32 3}
!5013 = !{i32 1, !"wchar_size", i32 2}
!5014 = !{i32 8, !"cf-protection-branch", i32 1}
!5015 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5016 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5017 = !{i32 1, !"Code Model", i32 2}
!5018 = !{i32 1, !"override-stack-alignment", i32 8}
!5019 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5020 = distinct !DISubprogram(name: "pci_add_resource_offset", scope: !2, file: !2, line: 20, type: !5021, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5023)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{null, !190, !193, !198}
!5023 = !{!5024, !5025, !5026, !5027}
!5024 = !DILocalVariable(name: "resources", arg: 1, scope: !5020, file: !2, line: 20, type: !190)
!5025 = !DILocalVariable(name: "res", arg: 2, scope: !5020, file: !2, line: 20, type: !193)
!5026 = !DILocalVariable(name: "offset", arg: 3, scope: !5020, file: !2, line: 21, type: !198)
!5027 = !DILocalVariable(name: "entry", scope: !5020, file: !2, line: 23, type: !216)
!5028 = !DILocation(line: 20, column: 48, scope: !5020)
!5029 = !DILocation(line: 20, column: 76, scope: !5020)
!5030 = !DILocation(line: 21, column: 25, scope: !5020)
!5031 = !DILocation(line: 23, column: 2, scope: !5020)
!5032 = !DILocation(line: 23, column: 25, scope: !5020)
!5033 = !DILocation(line: 25, column: 37, scope: !5020)
!5034 = !DILocation(line: 25, column: 10, scope: !5020)
!5035 = !DILocation(line: 25, column: 8, scope: !5020)
!5036 = !DILocation(line: 26, column: 7, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5020, file: !2, line: 26, column: 6)
!5038 = !DILocation(line: 26, column: 6, scope: !5020)
!5039 = !DILocation(line: 27, column: 3, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !2, line: 27, column: 3)
!5041 = distinct !DILexicalBlock(scope: !5037, file: !2, line: 26, column: 14)
!5042 = !DILocation(line: 27, column: 3, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5040, file: !2, line: 27, column: 3)
!5044 = !DILocation(line: 28, column: 3, scope: !5041)
!5045 = !DILocation(line: 31, column: 18, scope: !5020)
!5046 = !DILocation(line: 31, column: 2, scope: !5020)
!5047 = !DILocation(line: 31, column: 9, scope: !5020)
!5048 = !DILocation(line: 31, column: 16, scope: !5020)
!5049 = !DILocation(line: 32, column: 25, scope: !5020)
!5050 = !DILocation(line: 32, column: 32, scope: !5020)
!5051 = !DILocation(line: 32, column: 2, scope: !5020)
!5052 = !DILocation(line: 33, column: 1, scope: !5020)
!5053 = !DISubprogram(name: "resource_list_create_entry", scope: !218, file: !218, line: 31, type: !5054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!216, !193, !420}
!5056 = !DISubprogram(name: "_printk", scope: !5057, file: !5057, line: 153, type: !5058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5057 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!109, !207, null}
!5060 = distinct !DISubprogram(name: "resource_list_add_tail", scope: !218, file: !218, line: 40, type: !5061, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5063)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{null, !216, !190}
!5063 = !{!5064, !5065}
!5064 = !DILocalVariable(name: "entry", arg: 1, scope: !5060, file: !218, line: 40, type: !216)
!5065 = !DILocalVariable(name: "head", arg: 2, scope: !5060, file: !218, line: 41, type: !190)
!5066 = !DILocation(line: 40, column: 66, scope: !5060)
!5067 = !DILocation(line: 41, column: 26, scope: !5060)
!5068 = !DILocation(line: 43, column: 17, scope: !5060)
!5069 = !DILocation(line: 43, column: 24, scope: !5060)
!5070 = !DILocation(line: 43, column: 30, scope: !5060)
!5071 = !DILocation(line: 43, column: 2, scope: !5060)
!5072 = !DILocation(line: 44, column: 1, scope: !5060)
!5073 = distinct !DISubprogram(name: "pci_add_resource", scope: !2, file: !2, line: 36, type: !5074, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5076)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{null, !190, !193}
!5076 = !{!5077, !5078}
!5077 = !DILocalVariable(name: "resources", arg: 1, scope: !5073, file: !2, line: 36, type: !190)
!5078 = !DILocalVariable(name: "res", arg: 2, scope: !5073, file: !2, line: 36, type: !193)
!5079 = !DILocation(line: 36, column: 41, scope: !5073)
!5080 = !DILocation(line: 36, column: 69, scope: !5073)
!5081 = !DILocation(line: 38, column: 26, scope: !5073)
!5082 = !DILocation(line: 38, column: 37, scope: !5073)
!5083 = !DILocation(line: 38, column: 2, scope: !5073)
!5084 = !DILocation(line: 39, column: 1, scope: !5073)
!5085 = distinct !DISubprogram(name: "pci_free_resource_list", scope: !2, file: !2, line: 42, type: !5086, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5088)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{null, !190}
!5088 = !{!5089}
!5089 = !DILocalVariable(name: "resources", arg: 1, scope: !5085, file: !2, line: 42, type: !190)
!5090 = !DILocation(line: 42, column: 47, scope: !5085)
!5091 = !DILocation(line: 44, column: 21, scope: !5085)
!5092 = !DILocation(line: 44, column: 2, scope: !5085)
!5093 = !DILocation(line: 45, column: 1, scope: !5085)
!5094 = !DISubprogram(name: "resource_list_free", scope: !218, file: !218, line: 32, type: !5086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5095 = distinct !DISubprogram(name: "pci_bus_add_resource", scope: !2, file: !2, line: 48, type: !5096, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5098)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{null, !229, !193, !13}
!5098 = !{!5099, !5100, !5101, !5102}
!5099 = !DILocalVariable(name: "bus", arg: 1, scope: !5095, file: !2, line: 48, type: !229)
!5100 = !DILocalVariable(name: "res", arg: 2, scope: !5095, file: !2, line: 48, type: !193)
!5101 = !DILocalVariable(name: "flags", arg: 3, scope: !5095, file: !2, line: 49, type: !13)
!5102 = !DILocalVariable(name: "bus_res", scope: !5095, file: !2, line: 51, type: !183)
!5103 = !DILocation(line: 48, column: 43, scope: !5095)
!5104 = !DILocation(line: 48, column: 65, scope: !5095)
!5105 = !DILocation(line: 49, column: 19, scope: !5095)
!5106 = !DILocation(line: 51, column: 2, scope: !5095)
!5107 = !DILocation(line: 51, column: 27, scope: !5095)
!5108 = !DILocation(line: 53, column: 12, scope: !5095)
!5109 = !DILocation(line: 53, column: 10, scope: !5095)
!5110 = !DILocation(line: 54, column: 7, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5095, file: !2, line: 54, column: 6)
!5112 = !DILocation(line: 54, column: 6, scope: !5095)
!5113 = !DILocation(line: 55, column: 3, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5115, file: !2, line: 55, column: 3)
!5115 = distinct !DILexicalBlock(scope: !5111, file: !2, line: 54, column: 16)
!5116 = !DILocation(line: 55, column: 3, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5114, file: !2, line: 55, column: 3)
!5118 = !DILocation(line: 56, column: 3, scope: !5115)
!5119 = !DILocation(line: 59, column: 17, scope: !5095)
!5120 = !DILocation(line: 59, column: 2, scope: !5095)
!5121 = !DILocation(line: 59, column: 11, scope: !5095)
!5122 = !DILocation(line: 59, column: 15, scope: !5095)
!5123 = !DILocation(line: 60, column: 19, scope: !5095)
!5124 = !DILocation(line: 60, column: 2, scope: !5095)
!5125 = !DILocation(line: 60, column: 11, scope: !5095)
!5126 = !DILocation(line: 60, column: 17, scope: !5095)
!5127 = !DILocation(line: 61, column: 17, scope: !5095)
!5128 = !DILocation(line: 61, column: 26, scope: !5095)
!5129 = !DILocation(line: 61, column: 33, scope: !5095)
!5130 = !DILocation(line: 61, column: 38, scope: !5095)
!5131 = !DILocation(line: 61, column: 2, scope: !5095)
!5132 = !DILocation(line: 62, column: 1, scope: !5095)
!5133 = distinct !DISubprogram(name: "kzalloc", scope: !170, file: !170, line: 719, type: !5134, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5136)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!180, !420, !181}
!5136 = !{!5137, !5138}
!5137 = !DILocalVariable(name: "size", arg: 1, scope: !5133, file: !170, line: 719, type: !420)
!5138 = !DILocalVariable(name: "flags", arg: 2, scope: !5133, file: !170, line: 719, type: !181)
!5139 = !DILocation(line: 719, column: 52, scope: !5133)
!5140 = !DILocation(line: 719, column: 64, scope: !5133)
!5141 = !DILocation(line: 721, column: 17, scope: !5133)
!5142 = !DILocation(line: 721, column: 23, scope: !5133)
!5143 = !DILocation(line: 721, column: 29, scope: !5133)
!5144 = !DILocation(line: 721, column: 9, scope: !5133)
!5145 = !DILocation(line: 721, column: 2, scope: !5133)
!5146 = !DISubprogram(name: "_dev_err", scope: !5147, file: !5147, line: 50, type: !5148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5147 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5148 = !DISubroutineType(types: !5149)
!5149 = !{null, !4232, !207, null}
!5150 = distinct !DISubprogram(name: "list_add_tail", scope: !5151, file: !5151, line: 181, type: !5152, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5154)
!5151 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5152 = !DISubroutineType(types: !5153)
!5153 = !{null, !190, !190}
!5154 = !{!5155, !5156}
!5155 = !DILocalVariable(name: "new", arg: 1, scope: !5150, file: !5151, line: 181, type: !190)
!5156 = !DILocalVariable(name: "head", arg: 2, scope: !5150, file: !5151, line: 181, type: !190)
!5157 = !DILocation(line: 181, column: 52, scope: !5150)
!5158 = !DILocation(line: 181, column: 75, scope: !5150)
!5159 = !DILocation(line: 183, column: 13, scope: !5150)
!5160 = !DILocation(line: 183, column: 18, scope: !5150)
!5161 = !DILocation(line: 183, column: 24, scope: !5150)
!5162 = !DILocation(line: 183, column: 30, scope: !5150)
!5163 = !DILocation(line: 183, column: 2, scope: !5150)
!5164 = !DILocation(line: 184, column: 1, scope: !5150)
!5165 = distinct !DISubprogram(name: "pci_bus_resource_n", scope: !2, file: !2, line: 64, type: !5166, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5170)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!193, !5168, !109}
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!5170 = !{!5171, !5172, !5173, !5174, !5177}
!5171 = !DILocalVariable(name: "bus", arg: 1, scope: !5165, file: !2, line: 64, type: !5168)
!5172 = !DILocalVariable(name: "n", arg: 2, scope: !5165, file: !2, line: 64, type: !109)
!5173 = !DILocalVariable(name: "bus_res", scope: !5165, file: !2, line: 66, type: !183)
!5174 = !DILocalVariable(name: "__mptr", scope: !5175, file: !2, line: 72, type: !180)
!5175 = distinct !DILexicalBlock(scope: !5176, file: !2, line: 72, column: 2)
!5176 = distinct !DILexicalBlock(scope: !5165, file: !2, line: 72, column: 2)
!5177 = !DILocalVariable(name: "__mptr", scope: !5178, file: !2, line: 72, type: !180)
!5178 = distinct !DILexicalBlock(scope: !5179, file: !2, line: 72, column: 2)
!5179 = distinct !DILexicalBlock(scope: !5176, file: !2, line: 72, column: 2)
!5180 = !DILocation(line: 64, column: 59, scope: !5165)
!5181 = !DILocation(line: 64, column: 68, scope: !5165)
!5182 = !DILocation(line: 66, column: 2, scope: !5165)
!5183 = !DILocation(line: 66, column: 27, scope: !5165)
!5184 = !DILocation(line: 68, column: 6, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5165, file: !2, line: 68, column: 6)
!5186 = !DILocation(line: 68, column: 8, scope: !5185)
!5187 = !DILocation(line: 68, column: 6, scope: !5165)
!5188 = !DILocation(line: 69, column: 10, scope: !5185)
!5189 = !DILocation(line: 69, column: 15, scope: !5185)
!5190 = !DILocation(line: 69, column: 24, scope: !5185)
!5191 = !DILocation(line: 69, column: 3, scope: !5185)
!5192 = !DILocation(line: 71, column: 4, scope: !5165)
!5193 = !DILocation(line: 72, column: 2, scope: !5175)
!5194 = !DILocation(line: 72, column: 2, scope: !5176)
!5195 = !DILocation(line: 72, column: 2, scope: !5179)
!5196 = !DILocation(line: 73, column: 8, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5198, file: !2, line: 73, column: 7)
!5198 = distinct !DILexicalBlock(scope: !5179, file: !2, line: 72, column: 54)
!5199 = !DILocation(line: 73, column: 11, scope: !5197)
!5200 = !DILocation(line: 73, column: 7, scope: !5198)
!5201 = !DILocation(line: 74, column: 11, scope: !5197)
!5202 = !DILocation(line: 74, column: 20, scope: !5197)
!5203 = !DILocation(line: 74, column: 4, scope: !5197)
!5204 = !DILocation(line: 75, column: 2, scope: !5198)
!5205 = !DILocation(line: 72, column: 2, scope: !5178)
!5206 = distinct !{!5206, !5194, !5207, !5208, !5209}
!5207 = !DILocation(line: 75, column: 2, scope: !5176)
!5208 = !{!"llvm.loop.mustprogress"}
!5209 = !{!"llvm.loop.unroll.disable"}
!5210 = !DILocation(line: 76, column: 2, scope: !5165)
!5211 = !DILocation(line: 77, column: 1, scope: !5165)
!5212 = distinct !DISubprogram(name: "pci_bus_remove_resource", scope: !2, file: !2, line: 80, type: !5213, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5215)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{null, !229, !193}
!5215 = !{!5216, !5217, !5218, !5219, !5220, !5221, !5224, !5226}
!5216 = !DILocalVariable(name: "bus", arg: 1, scope: !5212, file: !2, line: 80, type: !229)
!5217 = !DILocalVariable(name: "res", arg: 2, scope: !5212, file: !2, line: 80, type: !193)
!5218 = !DILocalVariable(name: "bus_res", scope: !5212, file: !2, line: 82, type: !183)
!5219 = !DILocalVariable(name: "tmp", scope: !5212, file: !2, line: 82, type: !183)
!5220 = !DILocalVariable(name: "i", scope: !5212, file: !2, line: 83, type: !109)
!5221 = !DILocalVariable(name: "__mptr", scope: !5222, file: !2, line: 92, type: !180)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !2, line: 92, column: 2)
!5223 = distinct !DILexicalBlock(scope: !5212, file: !2, line: 92, column: 2)
!5224 = !DILocalVariable(name: "__mptr", scope: !5225, file: !2, line: 92, type: !180)
!5225 = distinct !DILexicalBlock(scope: !5223, file: !2, line: 92, column: 2)
!5226 = !DILocalVariable(name: "__mptr", scope: !5227, file: !2, line: 92, type: !180)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !2, line: 92, column: 2)
!5228 = distinct !DILexicalBlock(scope: !5223, file: !2, line: 92, column: 2)
!5229 = !DILocation(line: 80, column: 46, scope: !5212)
!5230 = !DILocation(line: 80, column: 68, scope: !5212)
!5231 = !DILocation(line: 82, column: 2, scope: !5212)
!5232 = !DILocation(line: 82, column: 27, scope: !5212)
!5233 = !DILocation(line: 82, column: 37, scope: !5212)
!5234 = !DILocation(line: 83, column: 2, scope: !5212)
!5235 = !DILocation(line: 83, column: 6, scope: !5212)
!5236 = !DILocation(line: 85, column: 9, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5212, file: !2, line: 85, column: 2)
!5238 = !DILocation(line: 85, column: 7, scope: !5237)
!5239 = !DILocation(line: 85, column: 14, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5237, file: !2, line: 85, column: 2)
!5241 = !DILocation(line: 85, column: 16, scope: !5240)
!5242 = !DILocation(line: 85, column: 2, scope: !5237)
!5243 = !DILocation(line: 86, column: 7, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5245, file: !2, line: 86, column: 7)
!5245 = distinct !DILexicalBlock(scope: !5240, file: !2, line: 85, column: 48)
!5246 = !DILocation(line: 86, column: 12, scope: !5244)
!5247 = !DILocation(line: 86, column: 21, scope: !5244)
!5248 = !DILocation(line: 86, column: 27, scope: !5244)
!5249 = !DILocation(line: 86, column: 24, scope: !5244)
!5250 = !DILocation(line: 86, column: 7, scope: !5245)
!5251 = !DILocation(line: 87, column: 4, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5244, file: !2, line: 86, column: 32)
!5253 = !DILocation(line: 87, column: 9, scope: !5252)
!5254 = !DILocation(line: 87, column: 18, scope: !5252)
!5255 = !DILocation(line: 87, column: 21, scope: !5252)
!5256 = !DILocation(line: 88, column: 4, scope: !5252)
!5257 = !DILocation(line: 90, column: 2, scope: !5245)
!5258 = !DILocation(line: 85, column: 44, scope: !5240)
!5259 = !DILocation(line: 85, column: 2, scope: !5240)
!5260 = distinct !{!5260, !5242, !5261, !5208, !5209}
!5261 = !DILocation(line: 90, column: 2, scope: !5237)
!5262 = !DILocation(line: 92, column: 2, scope: !5222)
!5263 = !DILocation(line: 92, column: 2, scope: !5223)
!5264 = !DILocation(line: 92, column: 2, scope: !5225)
!5265 = !DILocation(line: 92, column: 2, scope: !5228)
!5266 = !DILocation(line: 93, column: 7, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !2, line: 93, column: 7)
!5268 = distinct !DILexicalBlock(scope: !5228, file: !2, line: 92, column: 64)
!5269 = !DILocation(line: 93, column: 16, scope: !5267)
!5270 = !DILocation(line: 93, column: 23, scope: !5267)
!5271 = !DILocation(line: 93, column: 20, scope: !5267)
!5272 = !DILocation(line: 93, column: 7, scope: !5268)
!5273 = !DILocation(line: 94, column: 14, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5267, file: !2, line: 93, column: 28)
!5275 = !DILocation(line: 94, column: 23, scope: !5274)
!5276 = !DILocation(line: 94, column: 4, scope: !5274)
!5277 = !DILocation(line: 95, column: 10, scope: !5274)
!5278 = !DILocation(line: 95, column: 4, scope: !5274)
!5279 = !DILocation(line: 96, column: 4, scope: !5274)
!5280 = !DILocation(line: 98, column: 2, scope: !5268)
!5281 = !DILocation(line: 92, column: 2, scope: !5227)
!5282 = distinct !{!5282, !5263, !5283, !5208, !5209}
!5283 = !DILocation(line: 98, column: 2, scope: !5223)
!5284 = !DILocation(line: 99, column: 1, scope: !5212)
!5285 = distinct !DISubprogram(name: "list_del", scope: !5151, file: !5151, line: 227, type: !5086, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5286)
!5286 = !{!5287}
!5287 = !DILocalVariable(name: "entry", arg: 1, scope: !5285, file: !5151, line: 227, type: !190)
!5288 = !DILocation(line: 227, column: 47, scope: !5285)
!5289 = !DILocation(line: 229, column: 19, scope: !5285)
!5290 = !DILocation(line: 229, column: 2, scope: !5285)
!5291 = !DILocation(line: 230, column: 2, scope: !5285)
!5292 = !DILocation(line: 230, column: 9, scope: !5285)
!5293 = !DILocation(line: 230, column: 14, scope: !5285)
!5294 = !DILocation(line: 231, column: 2, scope: !5285)
!5295 = !DILocation(line: 231, column: 9, scope: !5285)
!5296 = !DILocation(line: 231, column: 14, scope: !5285)
!5297 = !DILocation(line: 232, column: 1, scope: !5285)
!5298 = !DISubprogram(name: "kfree", scope: !170, file: !170, line: 227, type: !5299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{null, !2610}
!5301 = distinct !DISubprogram(name: "pci_bus_remove_resources", scope: !2, file: !2, line: 101, type: !254, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5302)
!5302 = !{!5303, !5304, !5305, !5306, !5307, !5310, !5312}
!5303 = !DILocalVariable(name: "bus", arg: 1, scope: !5301, file: !2, line: 101, type: !229)
!5304 = !DILocalVariable(name: "i", scope: !5301, file: !2, line: 103, type: !109)
!5305 = !DILocalVariable(name: "bus_res", scope: !5301, file: !2, line: 104, type: !183)
!5306 = !DILocalVariable(name: "tmp", scope: !5301, file: !2, line: 104, type: !183)
!5307 = !DILocalVariable(name: "__mptr", scope: !5308, file: !2, line: 109, type: !180)
!5308 = distinct !DILexicalBlock(scope: !5309, file: !2, line: 109, column: 2)
!5309 = distinct !DILexicalBlock(scope: !5301, file: !2, line: 109, column: 2)
!5310 = !DILocalVariable(name: "__mptr", scope: !5311, file: !2, line: 109, type: !180)
!5311 = distinct !DILexicalBlock(scope: !5309, file: !2, line: 109, column: 2)
!5312 = !DILocalVariable(name: "__mptr", scope: !5313, file: !2, line: 109, type: !180)
!5313 = distinct !DILexicalBlock(scope: !5314, file: !2, line: 109, column: 2)
!5314 = distinct !DILexicalBlock(scope: !5309, file: !2, line: 109, column: 2)
!5315 = !DILocation(line: 101, column: 47, scope: !5301)
!5316 = !DILocation(line: 103, column: 2, scope: !5301)
!5317 = !DILocation(line: 103, column: 6, scope: !5301)
!5318 = !DILocation(line: 104, column: 2, scope: !5301)
!5319 = !DILocation(line: 104, column: 27, scope: !5301)
!5320 = !DILocation(line: 104, column: 37, scope: !5301)
!5321 = !DILocation(line: 106, column: 9, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5301, file: !2, line: 106, column: 2)
!5323 = !DILocation(line: 106, column: 7, scope: !5322)
!5324 = !DILocation(line: 106, column: 14, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5322, file: !2, line: 106, column: 2)
!5326 = !DILocation(line: 106, column: 16, scope: !5325)
!5327 = !DILocation(line: 106, column: 2, scope: !5322)
!5328 = !DILocation(line: 107, column: 3, scope: !5325)
!5329 = !DILocation(line: 107, column: 8, scope: !5325)
!5330 = !DILocation(line: 107, column: 17, scope: !5325)
!5331 = !DILocation(line: 107, column: 20, scope: !5325)
!5332 = !DILocation(line: 106, column: 44, scope: !5325)
!5333 = !DILocation(line: 106, column: 2, scope: !5325)
!5334 = distinct !{!5334, !5327, !5335, !5208, !5209}
!5335 = !DILocation(line: 107, column: 22, scope: !5322)
!5336 = !DILocation(line: 109, column: 2, scope: !5308)
!5337 = !DILocation(line: 109, column: 2, scope: !5309)
!5338 = !DILocation(line: 109, column: 2, scope: !5311)
!5339 = !DILocation(line: 109, column: 2, scope: !5314)
!5340 = !DILocation(line: 110, column: 13, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5314, file: !2, line: 109, column: 64)
!5342 = !DILocation(line: 110, column: 22, scope: !5341)
!5343 = !DILocation(line: 110, column: 3, scope: !5341)
!5344 = !DILocation(line: 111, column: 9, scope: !5341)
!5345 = !DILocation(line: 111, column: 3, scope: !5341)
!5346 = !DILocation(line: 112, column: 2, scope: !5341)
!5347 = !DILocation(line: 109, column: 2, scope: !5313)
!5348 = distinct !{!5348, !5337, !5349, !5208, !5209}
!5349 = !DILocation(line: 112, column: 2, scope: !5309)
!5350 = !DILocation(line: 113, column: 1, scope: !5301)
!5351 = distinct !DISubprogram(name: "devm_request_pci_bus_resources", scope: !2, file: !2, line: 115, type: !5352, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5354)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!109, !290, !190}
!5354 = !{!5355, !5356, !5357, !5358, !5359, !5360, !5361, !5364}
!5355 = !DILocalVariable(name: "dev", arg: 1, scope: !5351, file: !2, line: 115, type: !290)
!5356 = !DILocalVariable(name: "resources", arg: 2, scope: !5351, file: !2, line: 116, type: !190)
!5357 = !DILocalVariable(name: "win", scope: !5351, file: !2, line: 118, type: !216)
!5358 = !DILocalVariable(name: "parent", scope: !5351, file: !2, line: 119, type: !193)
!5359 = !DILocalVariable(name: "res", scope: !5351, file: !2, line: 119, type: !193)
!5360 = !DILocalVariable(name: "err", scope: !5351, file: !2, line: 120, type: !109)
!5361 = !DILocalVariable(name: "__mptr", scope: !5362, file: !2, line: 122, type: !180)
!5362 = distinct !DILexicalBlock(scope: !5363, file: !2, line: 122, column: 2)
!5363 = distinct !DILexicalBlock(scope: !5351, file: !2, line: 122, column: 2)
!5364 = !DILocalVariable(name: "__mptr", scope: !5365, file: !2, line: 122, type: !180)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 122, column: 2)
!5366 = distinct !DILexicalBlock(scope: !5363, file: !2, line: 122, column: 2)
!5367 = !DILocation(line: 115, column: 51, scope: !5351)
!5368 = !DILocation(line: 116, column: 26, scope: !5351)
!5369 = !DILocation(line: 118, column: 2, scope: !5351)
!5370 = !DILocation(line: 118, column: 25, scope: !5351)
!5371 = !DILocation(line: 119, column: 2, scope: !5351)
!5372 = !DILocation(line: 119, column: 19, scope: !5351)
!5373 = !DILocation(line: 119, column: 28, scope: !5351)
!5374 = !DILocation(line: 120, column: 2, scope: !5351)
!5375 = !DILocation(line: 120, column: 6, scope: !5351)
!5376 = !DILocation(line: 122, column: 2, scope: !5362)
!5377 = !DILocation(line: 122, column: 2, scope: !5363)
!5378 = !DILocation(line: 122, column: 2, scope: !5366)
!5379 = !DILocation(line: 123, column: 9, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 122, column: 47)
!5381 = !DILocation(line: 123, column: 14, scope: !5380)
!5382 = !DILocation(line: 123, column: 7, scope: !5380)
!5383 = !DILocation(line: 124, column: 25, scope: !5380)
!5384 = !DILocation(line: 124, column: 11, scope: !5380)
!5385 = !DILocation(line: 124, column: 3, scope: !5380)
!5386 = !DILocation(line: 126, column: 11, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5380, file: !2, line: 124, column: 31)
!5388 = !DILocation(line: 127, column: 4, scope: !5387)
!5389 = !DILocation(line: 129, column: 11, scope: !5387)
!5390 = !DILocation(line: 130, column: 4, scope: !5387)
!5391 = !DILocation(line: 132, column: 4, scope: !5387)
!5392 = !DILocation(line: 135, column: 31, scope: !5380)
!5393 = !DILocation(line: 135, column: 36, scope: !5380)
!5394 = !DILocation(line: 135, column: 44, scope: !5380)
!5395 = !DILocation(line: 135, column: 9, scope: !5380)
!5396 = !DILocation(line: 135, column: 7, scope: !5380)
!5397 = !DILocation(line: 136, column: 7, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5380, file: !2, line: 136, column: 7)
!5399 = !DILocation(line: 136, column: 7, scope: !5380)
!5400 = !DILocation(line: 137, column: 11, scope: !5398)
!5401 = !DILocation(line: 137, column: 4, scope: !5398)
!5402 = !DILocation(line: 138, column: 2, scope: !5380)
!5403 = !DILocation(line: 122, column: 2, scope: !5365)
!5404 = distinct !{!5404, !5377, !5405, !5208, !5209}
!5405 = !DILocation(line: 138, column: 2, scope: !5363)
!5406 = !DILocation(line: 140, column: 2, scope: !5351)
!5407 = !DILocation(line: 141, column: 1, scope: !5351)
!5408 = distinct !DISubprogram(name: "resource_type", scope: !195, file: !195, line: 223, type: !5409, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5413)
!5409 = !DISubroutineType(types: !5410)
!5410 = !{!210, !5411}
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!5413 = !{!5414}
!5414 = !DILocalVariable(name: "res", arg: 1, scope: !5408, file: !195, line: 223, type: !5411)
!5415 = !DILocation(line: 223, column: 66, scope: !5408)
!5416 = !DILocation(line: 225, column: 9, scope: !5408)
!5417 = !DILocation(line: 225, column: 14, scope: !5408)
!5418 = !DILocation(line: 225, column: 20, scope: !5408)
!5419 = !DILocation(line: 225, column: 2, scope: !5408)
!5420 = !DISubprogram(name: "devm_request_resource", scope: !195, file: !195, line: 299, type: !5421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!109, !290, !193, !193}
!5423 = distinct !DISubprogram(name: "pci_bus_alloc_resource", scope: !2, file: !2, line: 250, type: !5424, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5429)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!109, !229, !193, !198, !198, !198, !210, !5426, !180}
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!198, !180, !5411, !198, !198}
!5429 = !{!5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438}
!5430 = !DILocalVariable(name: "bus", arg: 1, scope: !5423, file: !2, line: 250, type: !229)
!5431 = !DILocalVariable(name: "res", arg: 2, scope: !5423, file: !2, line: 250, type: !193)
!5432 = !DILocalVariable(name: "size", arg: 3, scope: !5423, file: !2, line: 251, type: !198)
!5433 = !DILocalVariable(name: "align", arg: 4, scope: !5423, file: !2, line: 251, type: !198)
!5434 = !DILocalVariable(name: "min", arg: 5, scope: !5423, file: !2, line: 252, type: !198)
!5435 = !DILocalVariable(name: "type_mask", arg: 6, scope: !5423, file: !2, line: 252, type: !210)
!5436 = !DILocalVariable(name: "alignf", arg: 7, scope: !5423, file: !2, line: 253, type: !5426)
!5437 = !DILocalVariable(name: "alignf_data", arg: 8, scope: !5423, file: !2, line: 257, type: !180)
!5438 = !DILocalVariable(name: "rc", scope: !5423, file: !2, line: 260, type: !109)
!5439 = !DILocation(line: 250, column: 44, scope: !5423)
!5440 = !DILocation(line: 250, column: 66, scope: !5423)
!5441 = !DILocation(line: 251, column: 19, scope: !5423)
!5442 = !DILocation(line: 251, column: 41, scope: !5423)
!5443 = !DILocation(line: 252, column: 19, scope: !5423)
!5444 = !DILocation(line: 252, column: 38, scope: !5423)
!5445 = !DILocation(line: 253, column: 21, scope: !5423)
!5446 = !DILocation(line: 257, column: 9, scope: !5423)
!5447 = !DILocation(line: 260, column: 2, scope: !5423)
!5448 = !DILocation(line: 260, column: 6, scope: !5423)
!5449 = !DILocation(line: 262, column: 6, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5423, file: !2, line: 262, column: 6)
!5451 = !DILocation(line: 262, column: 11, scope: !5450)
!5452 = !DILocation(line: 262, column: 17, scope: !5450)
!5453 = !DILocation(line: 262, column: 6, scope: !5423)
!5454 = !DILocation(line: 263, column: 34, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5450, file: !2, line: 262, column: 38)
!5456 = !DILocation(line: 263, column: 39, scope: !5455)
!5457 = !DILocation(line: 263, column: 44, scope: !5455)
!5458 = !DILocation(line: 263, column: 50, scope: !5455)
!5459 = !DILocation(line: 263, column: 57, scope: !5455)
!5460 = !DILocation(line: 264, column: 13, scope: !5455)
!5461 = !DILocation(line: 264, column: 24, scope: !5455)
!5462 = !DILocation(line: 264, column: 32, scope: !5455)
!5463 = !DILocation(line: 263, column: 8, scope: !5455)
!5464 = !DILocation(line: 263, column: 6, scope: !5455)
!5465 = !DILocation(line: 266, column: 7, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5455, file: !2, line: 266, column: 7)
!5467 = !DILocation(line: 266, column: 10, scope: !5466)
!5468 = !DILocation(line: 266, column: 7, scope: !5455)
!5469 = !DILocation(line: 267, column: 4, scope: !5466)
!5470 = !DILocation(line: 269, column: 36, scope: !5455)
!5471 = !DILocation(line: 269, column: 41, scope: !5455)
!5472 = !DILocation(line: 269, column: 46, scope: !5455)
!5473 = !DILocation(line: 269, column: 52, scope: !5455)
!5474 = !DILocation(line: 269, column: 59, scope: !5455)
!5475 = !DILocation(line: 270, column: 8, scope: !5455)
!5476 = !DILocation(line: 270, column: 19, scope: !5455)
!5477 = !DILocation(line: 270, column: 27, scope: !5455)
!5478 = !DILocation(line: 269, column: 10, scope: !5455)
!5479 = !DILocation(line: 269, column: 3, scope: !5455)
!5480 = !DILocation(line: 275, column: 35, scope: !5423)
!5481 = !DILocation(line: 275, column: 40, scope: !5423)
!5482 = !DILocation(line: 275, column: 45, scope: !5423)
!5483 = !DILocation(line: 275, column: 51, scope: !5423)
!5484 = !DILocation(line: 275, column: 58, scope: !5423)
!5485 = !DILocation(line: 276, column: 7, scope: !5423)
!5486 = !DILocation(line: 276, column: 18, scope: !5423)
!5487 = !DILocation(line: 276, column: 26, scope: !5423)
!5488 = !DILocation(line: 275, column: 9, scope: !5423)
!5489 = !DILocation(line: 275, column: 2, scope: !5423)
!5490 = !DILocation(line: 278, column: 1, scope: !5423)
!5491 = distinct !DISubprogram(name: "pci_bus_alloc_from_region", scope: !2, file: !2, line: 176, type: !5492, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5495)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{!109, !229, !193, !198, !198, !198, !210, !5426, !180, !5494}
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5495 = !{!5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5511}
!5496 = !DILocalVariable(name: "bus", arg: 1, scope: !5491, file: !2, line: 176, type: !229)
!5497 = !DILocalVariable(name: "res", arg: 2, scope: !5491, file: !2, line: 176, type: !193)
!5498 = !DILocalVariable(name: "size", arg: 3, scope: !5491, file: !2, line: 177, type: !198)
!5499 = !DILocalVariable(name: "align", arg: 4, scope: !5491, file: !2, line: 177, type: !198)
!5500 = !DILocalVariable(name: "min", arg: 5, scope: !5491, file: !2, line: 178, type: !198)
!5501 = !DILocalVariable(name: "type_mask", arg: 6, scope: !5491, file: !2, line: 178, type: !210)
!5502 = !DILocalVariable(name: "alignf", arg: 7, scope: !5491, file: !2, line: 179, type: !5426)
!5503 = !DILocalVariable(name: "alignf_data", arg: 8, scope: !5491, file: !2, line: 183, type: !180)
!5504 = !DILocalVariable(name: "region", arg: 9, scope: !5491, file: !2, line: 184, type: !5494)
!5505 = !DILocalVariable(name: "r", scope: !5491, file: !2, line: 186, type: !193)
!5506 = !DILocalVariable(name: "avail", scope: !5491, file: !2, line: 186, type: !194)
!5507 = !DILocalVariable(name: "max", scope: !5491, file: !2, line: 187, type: !198)
!5508 = !DILocalVariable(name: "ret", scope: !5491, file: !2, line: 188, type: !109)
!5509 = !DILocalVariable(name: "__b", scope: !5510, file: !2, line: 192, type: !13)
!5510 = distinct !DILexicalBlock(scope: !5491, file: !2, line: 192, column: 2)
!5511 = !DILocalVariable(name: "min_used", scope: !5512, file: !2, line: 193, type: !198)
!5512 = distinct !DILexicalBlock(scope: !5513, file: !2, line: 192, column: 36)
!5513 = distinct !DILexicalBlock(scope: !5510, file: !2, line: 192, column: 2)
!5514 = !DILocation(line: 176, column: 54, scope: !5491)
!5515 = !DILocation(line: 176, column: 76, scope: !5491)
!5516 = !DILocation(line: 177, column: 19, scope: !5491)
!5517 = !DILocation(line: 177, column: 41, scope: !5491)
!5518 = !DILocation(line: 178, column: 19, scope: !5491)
!5519 = !DILocation(line: 178, column: 38, scope: !5491)
!5520 = !DILocation(line: 179, column: 21, scope: !5491)
!5521 = !DILocation(line: 183, column: 9, scope: !5491)
!5522 = !DILocation(line: 184, column: 26, scope: !5491)
!5523 = !DILocation(line: 186, column: 2, scope: !5491)
!5524 = !DILocation(line: 186, column: 19, scope: !5491)
!5525 = !DILocation(line: 186, column: 22, scope: !5491)
!5526 = !DILocation(line: 187, column: 2, scope: !5491)
!5527 = !DILocation(line: 187, column: 18, scope: !5491)
!5528 = !DILocation(line: 188, column: 2, scope: !5491)
!5529 = !DILocation(line: 188, column: 6, scope: !5491)
!5530 = !DILocation(line: 190, column: 12, scope: !5491)
!5531 = !DILocation(line: 192, column: 2, scope: !5510)
!5532 = !DILocation(line: 192, column: 2, scope: !5513)
!5533 = !DILocation(line: 193, column: 3, scope: !5512)
!5534 = !DILocation(line: 193, column: 19, scope: !5512)
!5535 = !DILocation(line: 193, column: 30, scope: !5512)
!5536 = !DILocation(line: 195, column: 8, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5512, file: !2, line: 195, column: 7)
!5538 = !DILocation(line: 195, column: 7, scope: !5512)
!5539 = !DILocation(line: 196, column: 4, scope: !5537)
!5540 = !DILocation(line: 199, column: 8, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5512, file: !2, line: 199, column: 7)
!5542 = !DILocation(line: 199, column: 13, scope: !5541)
!5543 = !DILocation(line: 199, column: 21, scope: !5541)
!5544 = !DILocation(line: 199, column: 24, scope: !5541)
!5545 = !DILocation(line: 199, column: 19, scope: !5541)
!5546 = !DILocation(line: 199, column: 33, scope: !5541)
!5547 = !DILocation(line: 199, column: 31, scope: !5541)
!5548 = !DILocation(line: 199, column: 7, scope: !5512)
!5549 = !DILocation(line: 200, column: 4, scope: !5541)
!5550 = !DILocation(line: 204, column: 8, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5512, file: !2, line: 204, column: 7)
!5552 = !DILocation(line: 204, column: 11, scope: !5551)
!5553 = !DILocation(line: 204, column: 17, scope: !5551)
!5554 = !DILocation(line: 204, column: 40, scope: !5551)
!5555 = !DILocation(line: 205, column: 9, scope: !5551)
!5556 = !DILocation(line: 205, column: 14, scope: !5551)
!5557 = !DILocation(line: 205, column: 20, scope: !5551)
!5558 = !DILocation(line: 204, column: 7, scope: !5512)
!5559 = !DILocation(line: 206, column: 4, scope: !5551)
!5560 = !DILocation(line: 208, column: 12, scope: !5512)
!5561 = !DILocation(line: 208, column: 11, scope: !5512)
!5562 = !DILocation(line: 209, column: 31, scope: !5512)
!5563 = !DILocation(line: 209, column: 44, scope: !5512)
!5564 = !DILocation(line: 209, column: 3, scope: !5512)
!5565 = !DILocation(line: 217, column: 13, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5512, file: !2, line: 217, column: 7)
!5567 = !DILocation(line: 217, column: 7, scope: !5566)
!5568 = !DILocation(line: 217, column: 7, scope: !5512)
!5569 = !DILocation(line: 218, column: 21, scope: !5566)
!5570 = !DILocation(line: 218, column: 13, scope: !5566)
!5571 = !DILocation(line: 218, column: 4, scope: !5566)
!5572 = !DILocation(line: 220, column: 15, scope: !5512)
!5573 = !DILocation(line: 220, column: 7, scope: !5512)
!5574 = !DILocation(line: 223, column: 7, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5512, file: !2, line: 223, column: 7)
!5576 = !DILocation(line: 223, column: 14, scope: !5575)
!5577 = !DILocation(line: 223, column: 20, scope: !5575)
!5578 = !DILocation(line: 223, column: 18, scope: !5575)
!5579 = !DILocation(line: 223, column: 29, scope: !5575)
!5580 = !DILocation(line: 223, column: 12, scope: !5575)
!5581 = !DILocation(line: 223, column: 7, scope: !5512)
!5582 = !DILocation(line: 224, column: 4, scope: !5575)
!5583 = !DILocation(line: 227, column: 27, scope: !5512)
!5584 = !DILocation(line: 227, column: 30, scope: !5512)
!5585 = !DILocation(line: 227, column: 35, scope: !5512)
!5586 = !DILocation(line: 227, column: 41, scope: !5512)
!5587 = !DILocation(line: 227, column: 51, scope: !5512)
!5588 = !DILocation(line: 228, column: 6, scope: !5512)
!5589 = !DILocation(line: 228, column: 13, scope: !5512)
!5590 = !DILocation(line: 228, column: 21, scope: !5512)
!5591 = !DILocation(line: 227, column: 9, scope: !5512)
!5592 = !DILocation(line: 227, column: 7, scope: !5512)
!5593 = !DILocation(line: 229, column: 7, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5512, file: !2, line: 229, column: 7)
!5595 = !DILocation(line: 229, column: 11, scope: !5594)
!5596 = !DILocation(line: 229, column: 7, scope: !5512)
!5597 = !DILocation(line: 230, column: 4, scope: !5594)
!5598 = !DILocation(line: 231, column: 2, scope: !5513)
!5599 = !DILocation(line: 231, column: 2, scope: !5512)
!5600 = distinct !{!5600, !5531, !5601, !5208, !5209}
!5601 = !DILocation(line: 231, column: 2, scope: !5510)
!5602 = !DILocation(line: 232, column: 2, scope: !5491)
!5603 = !DILocation(line: 233, column: 1, scope: !5491)
!5604 = distinct !DISubprogram(name: "pci_bus_clip_resource", scope: !2, file: !2, line: 287, type: !5605, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5607)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!788, !224, !109}
!5607 = !{!5608, !5609, !5610, !5611, !5612, !5613, !5614, !5616, !5619, !5620, !5622, !5623, !5625}
!5608 = !DILocalVariable(name: "dev", arg: 1, scope: !5604, file: !2, line: 287, type: !224)
!5609 = !DILocalVariable(name: "idx", arg: 2, scope: !5604, file: !2, line: 287, type: !109)
!5610 = !DILocalVariable(name: "bus", scope: !5604, file: !2, line: 289, type: !229)
!5611 = !DILocalVariable(name: "res", scope: !5604, file: !2, line: 290, type: !193)
!5612 = !DILocalVariable(name: "orig_res", scope: !5604, file: !2, line: 291, type: !194)
!5613 = !DILocalVariable(name: "r", scope: !5604, file: !2, line: 292, type: !193)
!5614 = !DILocalVariable(name: "__b", scope: !5615, file: !2, line: 294, type: !13)
!5615 = distinct !DILexicalBlock(scope: !5604, file: !2, line: 294, column: 2)
!5616 = !DILocalVariable(name: "start", scope: !5617, file: !2, line: 295, type: !198)
!5617 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 294, column: 36)
!5618 = distinct !DILexicalBlock(scope: !5615, file: !2, line: 294, column: 2)
!5619 = !DILocalVariable(name: "end", scope: !5617, file: !2, line: 295, type: !198)
!5620 = !DILocalVariable(name: "__UNIQUE_ID___x298", scope: !5621, file: !2, line: 303, type: !198)
!5621 = distinct !DILexicalBlock(scope: !5617, file: !2, line: 303, column: 11)
!5622 = !DILocalVariable(name: "__UNIQUE_ID___y299", scope: !5621, file: !2, line: 303, type: !198)
!5623 = !DILocalVariable(name: "__UNIQUE_ID___x300", scope: !5624, file: !2, line: 304, type: !198)
!5624 = distinct !DILexicalBlock(scope: !5617, file: !2, line: 304, column: 9)
!5625 = !DILocalVariable(name: "__UNIQUE_ID___y301", scope: !5624, file: !2, line: 304, type: !198)
!5626 = !DILocation(line: 287, column: 44, scope: !5604)
!5627 = !DILocation(line: 287, column: 53, scope: !5604)
!5628 = !DILocation(line: 289, column: 2, scope: !5604)
!5629 = !DILocation(line: 289, column: 18, scope: !5604)
!5630 = !DILocation(line: 289, column: 24, scope: !5604)
!5631 = !DILocation(line: 289, column: 29, scope: !5604)
!5632 = !DILocation(line: 290, column: 2, scope: !5604)
!5633 = !DILocation(line: 290, column: 19, scope: !5604)
!5634 = !DILocation(line: 290, column: 26, scope: !5604)
!5635 = !DILocation(line: 290, column: 31, scope: !5604)
!5636 = !DILocation(line: 290, column: 40, scope: !5604)
!5637 = !DILocation(line: 291, column: 2, scope: !5604)
!5638 = !DILocation(line: 291, column: 18, scope: !5604)
!5639 = !DILocation(line: 291, column: 30, scope: !5604)
!5640 = !DILocation(line: 291, column: 29, scope: !5604)
!5641 = !DILocation(line: 292, column: 2, scope: !5604)
!5642 = !DILocation(line: 292, column: 19, scope: !5604)
!5643 = !DILocation(line: 294, column: 2, scope: !5615)
!5644 = !DILocation(line: 294, column: 2, scope: !5618)
!5645 = !DILocation(line: 295, column: 3, scope: !5617)
!5646 = !DILocation(line: 295, column: 19, scope: !5617)
!5647 = !DILocation(line: 295, column: 26, scope: !5617)
!5648 = !DILocation(line: 297, column: 8, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5617, file: !2, line: 297, column: 7)
!5650 = !DILocation(line: 297, column: 7, scope: !5617)
!5651 = !DILocation(line: 298, column: 4, scope: !5649)
!5652 = !DILocation(line: 300, column: 21, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5617, file: !2, line: 300, column: 7)
!5654 = !DILocation(line: 300, column: 7, scope: !5653)
!5655 = !DILocation(line: 300, column: 43, scope: !5653)
!5656 = !DILocation(line: 300, column: 29, scope: !5653)
!5657 = !DILocation(line: 300, column: 26, scope: !5653)
!5658 = !DILocation(line: 300, column: 7, scope: !5617)
!5659 = !DILocation(line: 301, column: 4, scope: !5653)
!5660 = !DILocation(line: 303, column: 11, scope: !5621)
!5661 = !DILocation(line: 303, column: 11, scope: !5617)
!5662 = !DILocation(line: 303, column: 9, scope: !5617)
!5663 = !DILocation(line: 304, column: 9, scope: !5624)
!5664 = !DILocation(line: 304, column: 9, scope: !5617)
!5665 = !DILocation(line: 304, column: 7, scope: !5617)
!5666 = !DILocation(line: 306, column: 7, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5617, file: !2, line: 306, column: 7)
!5668 = !DILocation(line: 306, column: 15, scope: !5667)
!5669 = !DILocation(line: 306, column: 13, scope: !5667)
!5670 = !DILocation(line: 306, column: 7, scope: !5617)
!5671 = !DILocation(line: 307, column: 4, scope: !5667)
!5672 = !DILocation(line: 309, column: 7, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5617, file: !2, line: 309, column: 7)
!5674 = !DILocation(line: 309, column: 12, scope: !5673)
!5675 = !DILocation(line: 309, column: 21, scope: !5673)
!5676 = !DILocation(line: 309, column: 18, scope: !5673)
!5677 = !DILocation(line: 309, column: 27, scope: !5673)
!5678 = !DILocation(line: 309, column: 30, scope: !5673)
!5679 = !DILocation(line: 309, column: 35, scope: !5673)
!5680 = !DILocation(line: 309, column: 42, scope: !5673)
!5681 = !DILocation(line: 309, column: 39, scope: !5673)
!5682 = !DILocation(line: 309, column: 7, scope: !5617)
!5683 = !DILocation(line: 310, column: 4, scope: !5673)
!5684 = !DILocation(line: 312, column: 16, scope: !5617)
!5685 = !DILocation(line: 312, column: 3, scope: !5617)
!5686 = !DILocation(line: 312, column: 8, scope: !5617)
!5687 = !DILocation(line: 312, column: 14, scope: !5617)
!5688 = !DILocation(line: 313, column: 14, scope: !5617)
!5689 = !DILocation(line: 313, column: 3, scope: !5617)
!5690 = !DILocation(line: 313, column: 8, scope: !5617)
!5691 = !DILocation(line: 313, column: 12, scope: !5617)
!5692 = !DILocation(line: 314, column: 3, scope: !5617)
!5693 = !DILocation(line: 314, column: 8, scope: !5617)
!5694 = !DILocation(line: 314, column: 14, scope: !5617)
!5695 = !DILocation(line: 315, column: 12, scope: !5617)
!5696 = !DILocation(line: 315, column: 18, scope: !5617)
!5697 = !DILocation(line: 316, column: 3, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5617, file: !2, line: 316, column: 3)
!5699 = !DILocation(line: 316, column: 3, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5698, file: !2, line: 316, column: 3)
!5701 = !DILocation(line: 318, column: 3, scope: !5617)
!5702 = !DILocation(line: 319, column: 2, scope: !5618)
!5703 = distinct !{!5703, !5643, !5704, !5208, !5209}
!5704 = !DILocation(line: 319, column: 2, scope: !5615)
!5705 = !DILocation(line: 321, column: 2, scope: !5604)
!5706 = !DILocation(line: 322, column: 1, scope: !5604)
!5707 = !DISubprogram(name: "_dev_info", scope: !5147, file: !5147, line: 56, type: !5148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5708 = distinct !DISubprogram(name: "pcibios_resource_survey_bus", scope: !2, file: !2, line: 324, type: !254, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5709)
!5709 = !{!5710}
!5710 = !DILocalVariable(name: "bus", arg: 1, scope: !5708, file: !2, line: 324, type: !229)
!5711 = !DILocation(line: 324, column: 57, scope: !5708)
!5712 = !DILocation(line: 324, column: 64, scope: !5708)
!5713 = distinct !DISubprogram(name: "pcibios_bus_add_device", scope: !2, file: !2, line: 326, type: !4766, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5714)
!5714 = !{!5715}
!5715 = !DILocalVariable(name: "pdev", arg: 1, scope: !5713, file: !2, line: 326, type: !224)
!5716 = !DILocation(line: 326, column: 52, scope: !5713)
!5717 = !DILocation(line: 326, column: 60, scope: !5713)
!5718 = distinct !DISubprogram(name: "pci_bus_add_device", scope: !2, file: !2, line: 334, type: !4766, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5719)
!5719 = !{!5720, !5721, !5722}
!5720 = !DILocalVariable(name: "dev", arg: 1, scope: !5718, file: !2, line: 334, type: !224)
!5721 = !DILocalVariable(name: "dn", scope: !5718, file: !2, line: 336, type: !4512)
!5722 = !DILocalVariable(name: "retval", scope: !5718, file: !2, line: 337, type: !109)
!5723 = !DILocation(line: 334, column: 41, scope: !5718)
!5724 = !DILocation(line: 336, column: 2, scope: !5718)
!5725 = !DILocation(line: 336, column: 22, scope: !5718)
!5726 = !DILocation(line: 336, column: 27, scope: !5718)
!5727 = !DILocation(line: 336, column: 32, scope: !5718)
!5728 = !DILocation(line: 336, column: 36, scope: !5718)
!5729 = !DILocation(line: 337, column: 2, scope: !5718)
!5730 = !DILocation(line: 337, column: 6, scope: !5718)
!5731 = !DILocation(line: 343, column: 25, scope: !5718)
!5732 = !DILocation(line: 343, column: 2, scope: !5718)
!5733 = !DILocation(line: 344, column: 36, scope: !5718)
!5734 = !DILocation(line: 344, column: 2, scope: !5718)
!5735 = !DILocation(line: 345, column: 20, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5718, file: !2, line: 345, column: 6)
!5737 = !DILocation(line: 345, column: 6, scope: !5736)
!5738 = !DILocation(line: 345, column: 6, scope: !5718)
!5739 = !DILocation(line: 346, column: 24, scope: !5736)
!5740 = !DILocation(line: 346, column: 3, scope: !5736)
!5741 = !DILocation(line: 347, column: 29, scope: !5718)
!5742 = !DILocation(line: 347, column: 2, scope: !5718)
!5743 = !DILocation(line: 348, column: 25, scope: !5718)
!5744 = !DILocation(line: 348, column: 2, scope: !5718)
!5745 = !DILocation(line: 349, column: 23, scope: !5718)
!5746 = !DILocation(line: 349, column: 2, scope: !5718)
!5747 = !DILocation(line: 351, column: 23, scope: !5718)
!5748 = !DILocation(line: 351, column: 26, scope: !5718)
!5749 = !DILocation(line: 351, column: 52, scope: !5718)
!5750 = !DILocation(line: 351, column: 29, scope: !5718)
!5751 = !DILocation(line: 351, column: 2, scope: !5718)
!5752 = !DILocation(line: 351, column: 7, scope: !5718)
!5753 = !DILocation(line: 351, column: 20, scope: !5718)
!5754 = !DILocation(line: 352, column: 26, scope: !5718)
!5755 = !DILocation(line: 352, column: 31, scope: !5718)
!5756 = !DILocation(line: 352, column: 11, scope: !5718)
!5757 = !DILocation(line: 352, column: 9, scope: !5718)
!5758 = !DILocation(line: 353, column: 6, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5718, file: !2, line: 353, column: 6)
!5760 = !DILocation(line: 353, column: 13, scope: !5759)
!5761 = !DILocation(line: 353, column: 17, scope: !5759)
!5762 = !DILocation(line: 353, column: 20, scope: !5759)
!5763 = !DILocation(line: 353, column: 27, scope: !5759)
!5764 = !DILocation(line: 353, column: 6, scope: !5718)
!5765 = !DILocation(line: 354, column: 3, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5759, file: !2, line: 354, column: 3)
!5767 = !DILocation(line: 354, column: 3, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5766, file: !2, line: 354, column: 3)
!5769 = !DILocation(line: 354, column: 3, scope: !5759)
!5770 = !DILocation(line: 356, column: 23, scope: !5718)
!5771 = !DILocation(line: 356, column: 2, scope: !5718)
!5772 = !DILocation(line: 357, column: 1, scope: !5718)
!5773 = !DISubprogram(name: "pci_fixup_device", scope: !159, file: !159, line: 2263, type: !5774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{null, !158, !224}
!5776 = distinct !DISubprogram(name: "pci_is_bridge", scope: !159, file: !159, line: 710, type: !5777, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5779)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!788, !224}
!5779 = !{!5780}
!5780 = !DILocalVariable(name: "dev", arg: 1, scope: !5776, file: !159, line: 710, type: !224)
!5781 = !DILocation(line: 710, column: 50, scope: !5776)
!5782 = !DILocation(line: 712, column: 9, scope: !5776)
!5783 = !DILocation(line: 712, column: 14, scope: !5776)
!5784 = !DILocation(line: 712, column: 23, scope: !5776)
!5785 = !DILocation(line: 712, column: 49, scope: !5776)
!5786 = !DILocation(line: 713, column: 3, scope: !5776)
!5787 = !DILocation(line: 713, column: 8, scope: !5776)
!5788 = !DILocation(line: 713, column: 17, scope: !5776)
!5789 = !DILocation(line: 712, column: 2, scope: !5776)
!5790 = distinct !DISubprogram(name: "of_pci_make_dev_node", scope: !4726, file: !4726, line: 690, type: !4766, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5791)
!5791 = !{!5792}
!5792 = !DILocalVariable(name: "pdev", arg: 1, scope: !5790, file: !4726, line: 690, type: !224)
!5793 = !DILocation(line: 690, column: 57, scope: !5790)
!5794 = !DILocation(line: 690, column: 65, scope: !5790)
!5795 = !DISubprogram(name: "pci_create_sysfs_dev_files", scope: !4726, file: !4726, line: 34, type: !4774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5796 = !DISubprogram(name: "pci_proc_attach_device", scope: !4726, file: !4726, line: 144, type: !4774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5797 = !DISubprogram(name: "pci_bridge_d3_update", scope: !4726, file: !4726, line: 100, type: !4766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5798 = distinct !DISubprogram(name: "of_device_is_available", scope: !4514, file: !4514, line: 582, type: !5799, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5803)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{!788, !5801}
!5801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5802, size: 64)
!5802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4513)
!5803 = !{!5804}
!5804 = !DILocalVariable(name: "device", arg: 1, scope: !5798, file: !4514, line: 582, type: !5801)
!5805 = !DILocation(line: 582, column: 69, scope: !5798)
!5806 = !DILocation(line: 584, column: 2, scope: !5798)
!5807 = !DISubprogram(name: "device_attach", scope: !94, file: !94, line: 1170, type: !4250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5808 = !DISubprogram(name: "_dev_warn", scope: !5147, file: !5147, line: 52, type: !5148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5809 = distinct !DISubprogram(name: "pci_dev_assign_added", scope: !4726, file: !4726, line: 375, type: !5810, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5812)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{null, !224, !788}
!5812 = !{!5813, !5814}
!5813 = !DILocalVariable(name: "dev", arg: 1, scope: !5809, file: !4726, line: 375, type: !224)
!5814 = !DILocalVariable(name: "added", arg: 2, scope: !5809, file: !4726, line: 375, type: !788)
!5815 = !DILocation(line: 375, column: 57, scope: !5809)
!5816 = !DILocation(line: 375, column: 67, scope: !5809)
!5817 = !DILocation(line: 377, column: 29, scope: !5809)
!5818 = !DILocation(line: 377, column: 34, scope: !5809)
!5819 = !DILocation(line: 377, column: 46, scope: !5809)
!5820 = !{i8 0, i8 2}
!5821 = !DILocation(line: 377, column: 2, scope: !5809)
!5822 = !DILocation(line: 378, column: 1, scope: !5809)
!5823 = distinct !DISubprogram(name: "pci_bus_add_devices", scope: !2, file: !2, line: 366, type: !5824, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5826)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{null, !5168}
!5826 = !{!5827, !5828, !5829, !5830, !5833, !5836, !5839}
!5827 = !DILocalVariable(name: "bus", arg: 1, scope: !5823, file: !2, line: 366, type: !5168)
!5828 = !DILocalVariable(name: "dev", scope: !5823, file: !2, line: 368, type: !224)
!5829 = !DILocalVariable(name: "child", scope: !5823, file: !2, line: 369, type: !229)
!5830 = !DILocalVariable(name: "__mptr", scope: !5831, file: !2, line: 371, type: !180)
!5831 = distinct !DILexicalBlock(scope: !5832, file: !2, line: 371, column: 2)
!5832 = distinct !DILexicalBlock(scope: !5823, file: !2, line: 371, column: 2)
!5833 = !DILocalVariable(name: "__mptr", scope: !5834, file: !2, line: 371, type: !180)
!5834 = distinct !DILexicalBlock(scope: !5835, file: !2, line: 371, column: 2)
!5835 = distinct !DILexicalBlock(scope: !5832, file: !2, line: 371, column: 2)
!5836 = !DILocalVariable(name: "__mptr", scope: !5837, file: !2, line: 378, type: !180)
!5837 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 378, column: 2)
!5838 = distinct !DILexicalBlock(scope: !5823, file: !2, line: 378, column: 2)
!5839 = !DILocalVariable(name: "__mptr", scope: !5840, file: !2, line: 378, type: !180)
!5840 = distinct !DILexicalBlock(scope: !5841, file: !2, line: 378, column: 2)
!5841 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 378, column: 2)
!5842 = !DILocation(line: 366, column: 48, scope: !5823)
!5843 = !DILocation(line: 368, column: 2, scope: !5823)
!5844 = !DILocation(line: 368, column: 18, scope: !5823)
!5845 = !DILocation(line: 369, column: 2, scope: !5823)
!5846 = !DILocation(line: 369, column: 18, scope: !5823)
!5847 = !DILocation(line: 371, column: 2, scope: !5831)
!5848 = !DILocation(line: 371, column: 2, scope: !5832)
!5849 = !DILocation(line: 371, column: 2, scope: !5835)
!5850 = !DILocation(line: 373, column: 24, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5852, file: !2, line: 373, column: 7)
!5852 = distinct !DILexicalBlock(scope: !5835, file: !2, line: 371, column: 52)
!5853 = !DILocation(line: 373, column: 7, scope: !5851)
!5854 = !DILocation(line: 373, column: 7, scope: !5852)
!5855 = !DILocation(line: 374, column: 4, scope: !5851)
!5856 = !DILocation(line: 375, column: 22, scope: !5852)
!5857 = !DILocation(line: 375, column: 3, scope: !5852)
!5858 = !DILocation(line: 376, column: 2, scope: !5852)
!5859 = !DILocation(line: 371, column: 2, scope: !5834)
!5860 = distinct !{!5860, !5848, !5861, !5208, !5209}
!5861 = !DILocation(line: 376, column: 2, scope: !5832)
!5862 = !DILocation(line: 378, column: 2, scope: !5837)
!5863 = !DILocation(line: 378, column: 2, scope: !5838)
!5864 = !DILocation(line: 378, column: 2, scope: !5841)
!5865 = !DILocation(line: 380, column: 25, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5867, file: !2, line: 380, column: 7)
!5867 = distinct !DILexicalBlock(scope: !5841, file: !2, line: 378, column: 52)
!5868 = !DILocation(line: 380, column: 8, scope: !5866)
!5869 = !DILocation(line: 380, column: 7, scope: !5867)
!5870 = !DILocation(line: 381, column: 4, scope: !5866)
!5871 = !DILocation(line: 382, column: 11, scope: !5867)
!5872 = !DILocation(line: 382, column: 16, scope: !5867)
!5873 = !DILocation(line: 382, column: 9, scope: !5867)
!5874 = !DILocation(line: 383, column: 7, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5867, file: !2, line: 383, column: 7)
!5876 = !DILocation(line: 383, column: 7, scope: !5867)
!5877 = !DILocation(line: 384, column: 24, scope: !5875)
!5878 = !DILocation(line: 384, column: 4, scope: !5875)
!5879 = !DILocation(line: 385, column: 2, scope: !5867)
!5880 = !DILocation(line: 378, column: 2, scope: !5840)
!5881 = distinct !{!5881, !5863, !5882, !5208, !5209}
!5882 = !DILocation(line: 385, column: 2, scope: !5838)
!5883 = !DILocation(line: 386, column: 1, scope: !5823)
!5884 = distinct !DISubprogram(name: "pci_dev_is_added", scope: !4726, file: !4726, line: 380, type: !5885, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5889)
!5885 = !DISubroutineType(types: !5886)
!5886 = !{!788, !5887}
!5887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!5889 = !{!5890}
!5890 = !DILocalVariable(name: "dev", arg: 1, scope: !5884, file: !4726, line: 380, type: !5887)
!5891 = !DILocation(line: 380, column: 59, scope: !5884)
!5892 = !DILocation(line: 382, column: 9, scope: !5884)
!5893 = !DILocation(line: 382, column: 2, scope: !5884)
!5894 = distinct !DISubprogram(name: "pci_walk_bus", scope: !2, file: !2, line: 439, type: !5895, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5900)
!5895 = !DISubroutineType(types: !5896)
!5896 = !{null, !229, !5897, !180}
!5897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5898, size: 64)
!5898 = !DISubroutineType(types: !5899)
!5899 = !{!109, !224, !180}
!5900 = !{!5901, !5902, !5903}
!5901 = !DILocalVariable(name: "top", arg: 1, scope: !5894, file: !2, line: 439, type: !229)
!5902 = !DILocalVariable(name: "cb", arg: 2, scope: !5894, file: !2, line: 439, type: !5897)
!5903 = !DILocalVariable(name: "userdata", arg: 3, scope: !5894, file: !2, line: 439, type: !180)
!5904 = !DILocation(line: 439, column: 35, scope: !5894)
!5905 = !DILocation(line: 439, column: 46, scope: !5894)
!5906 = !DILocation(line: 439, column: 83, scope: !5894)
!5907 = !DILocation(line: 441, column: 17, scope: !5894)
!5908 = !DILocation(line: 441, column: 22, scope: !5894)
!5909 = !DILocation(line: 441, column: 26, scope: !5894)
!5910 = !DILocation(line: 441, column: 2, scope: !5894)
!5911 = !DILocation(line: 442, column: 1, scope: !5894)
!5912 = distinct !DISubprogram(name: "__pci_walk_bus", scope: !2, file: !2, line: 389, type: !5913, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5915)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{null, !229, !5897, !180, !788}
!5915 = !{!5916, !5917, !5918, !5919, !5920, !5921, !5922, !5923, !5924}
!5916 = !DILocalVariable(name: "top", arg: 1, scope: !5912, file: !2, line: 389, type: !229)
!5917 = !DILocalVariable(name: "cb", arg: 2, scope: !5912, file: !2, line: 389, type: !5897)
!5918 = !DILocalVariable(name: "userdata", arg: 3, scope: !5912, file: !2, line: 390, type: !180)
!5919 = !DILocalVariable(name: "locked", arg: 4, scope: !5912, file: !2, line: 390, type: !788)
!5920 = !DILocalVariable(name: "dev", scope: !5912, file: !2, line: 392, type: !224)
!5921 = !DILocalVariable(name: "bus", scope: !5912, file: !2, line: 393, type: !229)
!5922 = !DILocalVariable(name: "next", scope: !5912, file: !2, line: 394, type: !190)
!5923 = !DILocalVariable(name: "retval", scope: !5912, file: !2, line: 395, type: !109)
!5924 = !DILocalVariable(name: "__mptr", scope: !5925, file: !2, line: 410, type: !180)
!5925 = distinct !DILexicalBlock(scope: !5926, file: !2, line: 410, column: 9)
!5926 = distinct !DILexicalBlock(scope: !5927, file: !2, line: 401, column: 11)
!5927 = distinct !DILexicalBlock(scope: !5928, file: !2, line: 401, column: 2)
!5928 = distinct !DILexicalBlock(scope: !5912, file: !2, line: 401, column: 2)
!5929 = !DILocation(line: 389, column: 44, scope: !5912)
!5930 = !DILocation(line: 389, column: 55, scope: !5912)
!5931 = !DILocation(line: 390, column: 13, scope: !5912)
!5932 = !DILocation(line: 390, column: 28, scope: !5912)
!5933 = !DILocation(line: 392, column: 2, scope: !5912)
!5934 = !DILocation(line: 392, column: 18, scope: !5912)
!5935 = !DILocation(line: 393, column: 2, scope: !5912)
!5936 = !DILocation(line: 393, column: 18, scope: !5912)
!5937 = !DILocation(line: 394, column: 2, scope: !5912)
!5938 = !DILocation(line: 394, column: 20, scope: !5912)
!5939 = !DILocation(line: 395, column: 2, scope: !5912)
!5940 = !DILocation(line: 395, column: 6, scope: !5912)
!5941 = !DILocation(line: 397, column: 8, scope: !5912)
!5942 = !DILocation(line: 397, column: 6, scope: !5912)
!5943 = !DILocation(line: 398, column: 7, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5912, file: !2, line: 398, column: 6)
!5945 = !DILocation(line: 398, column: 6, scope: !5912)
!5946 = !DILocation(line: 399, column: 3, scope: !5944)
!5947 = !DILocation(line: 400, column: 9, scope: !5912)
!5948 = !DILocation(line: 400, column: 14, scope: !5912)
!5949 = !DILocation(line: 400, column: 22, scope: !5912)
!5950 = !DILocation(line: 400, column: 7, scope: !5912)
!5951 = !DILocation(line: 401, column: 2, scope: !5912)
!5952 = !DILocation(line: 402, column: 7, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5926, file: !2, line: 402, column: 7)
!5954 = !DILocation(line: 402, column: 16, scope: !5953)
!5955 = !DILocation(line: 402, column: 21, scope: !5953)
!5956 = !DILocation(line: 402, column: 12, scope: !5953)
!5957 = !DILocation(line: 402, column: 7, scope: !5926)
!5958 = !DILocation(line: 404, column: 8, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5960, file: !2, line: 404, column: 8)
!5960 = distinct !DILexicalBlock(scope: !5953, file: !2, line: 402, column: 30)
!5961 = !DILocation(line: 404, column: 15, scope: !5959)
!5962 = !DILocation(line: 404, column: 12, scope: !5959)
!5963 = !DILocation(line: 404, column: 8, scope: !5960)
!5964 = !DILocation(line: 405, column: 5, scope: !5959)
!5965 = !DILocation(line: 406, column: 11, scope: !5960)
!5966 = !DILocation(line: 406, column: 16, scope: !5960)
!5967 = !DILocation(line: 406, column: 22, scope: !5960)
!5968 = !DILocation(line: 406, column: 31, scope: !5960)
!5969 = !DILocation(line: 406, column: 9, scope: !5960)
!5970 = !DILocation(line: 407, column: 10, scope: !5960)
!5971 = !DILocation(line: 407, column: 15, scope: !5960)
!5972 = !DILocation(line: 407, column: 21, scope: !5960)
!5973 = !DILocation(line: 407, column: 8, scope: !5960)
!5974 = !DILocation(line: 408, column: 4, scope: !5960)
!5975 = distinct !{!5975, !5976, !5977, !5209}
!5976 = !DILocation(line: 401, column: 2, scope: !5928)
!5977 = !DILocation(line: 421, column: 2, scope: !5928)
!5978 = !DILocation(line: 410, column: 9, scope: !5925)
!5979 = !DILocation(line: 410, column: 9, scope: !5926)
!5980 = !DILocation(line: 410, column: 7, scope: !5926)
!5981 = !DILocation(line: 411, column: 7, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5926, file: !2, line: 411, column: 7)
!5983 = !DILocation(line: 411, column: 12, scope: !5982)
!5984 = !DILocation(line: 411, column: 7, scope: !5926)
!5985 = !DILocation(line: 413, column: 11, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5982, file: !2, line: 411, column: 25)
!5987 = !DILocation(line: 413, column: 16, scope: !5986)
!5988 = !DILocation(line: 413, column: 29, scope: !5986)
!5989 = !DILocation(line: 413, column: 37, scope: !5986)
!5990 = !DILocation(line: 413, column: 9, scope: !5986)
!5991 = !DILocation(line: 414, column: 10, scope: !5986)
!5992 = !DILocation(line: 414, column: 15, scope: !5986)
!5993 = !DILocation(line: 414, column: 8, scope: !5986)
!5994 = !DILocation(line: 415, column: 3, scope: !5986)
!5995 = !DILocation(line: 416, column: 11, scope: !5982)
!5996 = !DILocation(line: 416, column: 16, scope: !5982)
!5997 = !DILocation(line: 416, column: 25, scope: !5982)
!5998 = !DILocation(line: 416, column: 9, scope: !5982)
!5999 = !DILocation(line: 418, column: 12, scope: !5926)
!6000 = !DILocation(line: 418, column: 15, scope: !5926)
!6001 = !DILocation(line: 418, column: 20, scope: !5926)
!6002 = !DILocation(line: 418, column: 10, scope: !5926)
!6003 = !DILocation(line: 419, column: 7, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5926, file: !2, line: 419, column: 7)
!6005 = !DILocation(line: 419, column: 7, scope: !5926)
!6006 = !DILocation(line: 420, column: 4, scope: !6004)
!6007 = !DILocation(line: 401, column: 2, scope: !5927)
!6008 = !DILocation(line: 422, column: 7, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5912, file: !2, line: 422, column: 6)
!6010 = !DILocation(line: 422, column: 6, scope: !5912)
!6011 = !DILocation(line: 423, column: 3, scope: !6009)
!6012 = !DILocation(line: 424, column: 1, scope: !5912)
!6013 = distinct !DISubprogram(name: "pci_walk_bus_locked", scope: !2, file: !2, line: 445, type: !5895, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6014)
!6014 = !{!6015, !6016, !6017}
!6015 = !DILocalVariable(name: "top", arg: 1, scope: !6013, file: !2, line: 445, type: !229)
!6016 = !DILocalVariable(name: "cb", arg: 2, scope: !6013, file: !2, line: 445, type: !5897)
!6017 = !DILocalVariable(name: "userdata", arg: 3, scope: !6013, file: !2, line: 445, type: !180)
!6018 = !DILocation(line: 445, column: 42, scope: !6013)
!6019 = !DILocation(line: 445, column: 53, scope: !6013)
!6020 = !DILocation(line: 445, column: 90, scope: !6013)
!6021 = !DILocation(line: 447, column: 2, scope: !6013)
!6022 = !DILocation(line: 447, column: 2, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6013, file: !2, line: 447, column: 2)
!6024 = !DILocation(line: 449, column: 17, scope: !6013)
!6025 = !DILocation(line: 449, column: 22, scope: !6013)
!6026 = !DILocation(line: 449, column: 26, scope: !6013)
!6027 = !DILocation(line: 449, column: 2, scope: !6013)
!6028 = !DILocation(line: 450, column: 1, scope: !6013)
!6029 = distinct !DISubprogram(name: "pci_bus_get", scope: !2, file: !2, line: 453, type: !6030, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6032)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!229, !229}
!6032 = !{!6033}
!6033 = !DILocalVariable(name: "bus", arg: 1, scope: !6029, file: !2, line: 453, type: !229)
!6034 = !DILocation(line: 453, column: 45, scope: !6029)
!6035 = !DILocation(line: 455, column: 6, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6029, file: !2, line: 455, column: 6)
!6037 = !DILocation(line: 455, column: 6, scope: !6029)
!6038 = !DILocation(line: 456, column: 15, scope: !6036)
!6039 = !DILocation(line: 456, column: 20, scope: !6036)
!6040 = !DILocation(line: 456, column: 3, scope: !6036)
!6041 = !DILocation(line: 457, column: 9, scope: !6029)
!6042 = !DILocation(line: 457, column: 2, scope: !6029)
!6043 = !DISubprogram(name: "get_device", scope: !94, file: !94, line: 1230, type: !6044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!290, !290}
!6046 = distinct !DISubprogram(name: "pci_bus_put", scope: !2, file: !2, line: 460, type: !254, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6047)
!6047 = !{!6048}
!6048 = !DILocalVariable(name: "bus", arg: 1, scope: !6046, file: !2, line: 460, type: !229)
!6049 = !DILocation(line: 460, column: 34, scope: !6046)
!6050 = !DILocation(line: 462, column: 6, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6046, file: !2, line: 462, column: 6)
!6052 = !DILocation(line: 462, column: 6, scope: !6046)
!6053 = !DILocation(line: 463, column: 15, scope: !6051)
!6054 = !DILocation(line: 463, column: 20, scope: !6051)
!6055 = !DILocation(line: 463, column: 3, scope: !6051)
!6056 = !DILocation(line: 464, column: 1, scope: !6046)
!6057 = !DISubprogram(name: "put_device", scope: !94, file: !94, line: 1231, type: !4241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6058 = distinct !DISubprogram(name: "kmalloc", scope: !170, file: !170, line: 591, type: !5134, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6059)
!6059 = !{!6060, !6061, !6062}
!6060 = !DILocalVariable(name: "size", arg: 1, scope: !6058, file: !170, line: 591, type: !420)
!6061 = !DILocalVariable(name: "flags", arg: 2, scope: !6058, file: !170, line: 591, type: !181)
!6062 = !DILocalVariable(name: "index", scope: !6063, file: !170, line: 594, type: !13)
!6063 = distinct !DILexicalBlock(scope: !6064, file: !170, line: 593, column: 42)
!6064 = distinct !DILexicalBlock(scope: !6058, file: !170, line: 593, column: 6)
!6065 = !DILocation(line: 591, column: 61, scope: !6058)
!6066 = !DILocation(line: 591, column: 73, scope: !6058)
!6067 = !DILocation(line: 593, column: 27, scope: !6064)
!6068 = !DILocation(line: 593, column: 6, scope: !6064)
!6069 = !DILocation(line: 593, column: 33, scope: !6064)
!6070 = !DILocation(line: 593, column: 36, scope: !6064)
!6071 = !DILocation(line: 593, column: 6, scope: !6058)
!6072 = !DILocation(line: 594, column: 3, scope: !6063)
!6073 = !DILocation(line: 594, column: 16, scope: !6063)
!6074 = !DILocation(line: 596, column: 7, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6063, file: !170, line: 596, column: 7)
!6076 = !DILocation(line: 596, column: 12, scope: !6075)
!6077 = !DILocation(line: 596, column: 7, scope: !6063)
!6078 = !DILocation(line: 597, column: 25, scope: !6075)
!6079 = !DILocation(line: 597, column: 31, scope: !6075)
!6080 = !DILocation(line: 597, column: 11, scope: !6075)
!6081 = !DILocation(line: 597, column: 4, scope: !6075)
!6082 = !DILocation(line: 599, column: 11, scope: !6063)
!6083 = !DILocation(line: 599, column: 9, scope: !6063)
!6084 = !DILocation(line: 601, column: 33, scope: !6063)
!6085 = !DILocation(line: 601, column: 40, scope: !6063)
!6086 = !DILocation(line: 601, column: 20, scope: !6063)
!6087 = !DILocation(line: 601, column: 5, scope: !6063)
!6088 = !DILocation(line: 601, column: 51, scope: !6063)
!6089 = !DILocation(line: 602, column: 5, scope: !6063)
!6090 = !DILocation(line: 602, column: 12, scope: !6063)
!6091 = !DILocation(line: 600, column: 10, scope: !6063)
!6092 = !DILocation(line: 600, column: 3, scope: !6063)
!6093 = !DILocation(line: 603, column: 2, scope: !6064)
!6094 = !DILocation(line: 604, column: 19, scope: !6058)
!6095 = !DILocation(line: 604, column: 25, scope: !6058)
!6096 = !DILocation(line: 604, column: 9, scope: !6058)
!6097 = !DILocation(line: 604, column: 2, scope: !6058)
!6098 = !DILocation(line: 605, column: 1, scope: !6058)
!6099 = !DISubprogram(name: "kmalloc_large", scope: !170, file: !170, line: 531, type: !5134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6100 = distinct !DISubprogram(name: "__kmalloc_index", scope: !170, file: !170, line: 444, type: !6101, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6103)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!13, !420, !788}
!6103 = !{!6104, !6105}
!6104 = !DILocalVariable(name: "size", arg: 1, scope: !6100, file: !170, line: 444, type: !420)
!6105 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6100, file: !170, line: 445, type: !788)
!6106 = !DILocation(line: 444, column: 60, scope: !6100)
!6107 = !DILocation(line: 445, column: 16, scope: !6100)
!6108 = !DILocation(line: 447, column: 7, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 447, column: 6)
!6110 = !DILocation(line: 447, column: 6, scope: !6100)
!6111 = !DILocation(line: 448, column: 3, scope: !6109)
!6112 = !DILocation(line: 450, column: 6, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 450, column: 6)
!6114 = !DILocation(line: 450, column: 11, scope: !6113)
!6115 = !DILocation(line: 450, column: 6, scope: !6100)
!6116 = !DILocation(line: 451, column: 3, scope: !6113)
!6117 = !DILocation(line: 453, column: 32, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 453, column: 6)
!6119 = !DILocation(line: 453, column: 37, scope: !6118)
!6120 = !DILocation(line: 453, column: 42, scope: !6118)
!6121 = !DILocation(line: 453, column: 45, scope: !6118)
!6122 = !DILocation(line: 453, column: 50, scope: !6118)
!6123 = !DILocation(line: 453, column: 6, scope: !6100)
!6124 = !DILocation(line: 454, column: 3, scope: !6118)
!6125 = !DILocation(line: 455, column: 32, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 455, column: 6)
!6127 = !DILocation(line: 455, column: 37, scope: !6126)
!6128 = !DILocation(line: 455, column: 43, scope: !6126)
!6129 = !DILocation(line: 455, column: 46, scope: !6126)
!6130 = !DILocation(line: 455, column: 51, scope: !6126)
!6131 = !DILocation(line: 455, column: 6, scope: !6100)
!6132 = !DILocation(line: 456, column: 3, scope: !6126)
!6133 = !DILocation(line: 457, column: 6, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 457, column: 6)
!6135 = !DILocation(line: 457, column: 11, scope: !6134)
!6136 = !DILocation(line: 457, column: 6, scope: !6100)
!6137 = !DILocation(line: 457, column: 26, scope: !6134)
!6138 = !DILocation(line: 458, column: 6, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 458, column: 6)
!6140 = !DILocation(line: 458, column: 11, scope: !6139)
!6141 = !DILocation(line: 458, column: 6, scope: !6100)
!6142 = !DILocation(line: 458, column: 26, scope: !6139)
!6143 = !DILocation(line: 459, column: 6, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 459, column: 6)
!6145 = !DILocation(line: 459, column: 11, scope: !6144)
!6146 = !DILocation(line: 459, column: 6, scope: !6100)
!6147 = !DILocation(line: 459, column: 26, scope: !6144)
!6148 = !DILocation(line: 460, column: 6, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 460, column: 6)
!6150 = !DILocation(line: 460, column: 11, scope: !6149)
!6151 = !DILocation(line: 460, column: 6, scope: !6100)
!6152 = !DILocation(line: 460, column: 26, scope: !6149)
!6153 = !DILocation(line: 461, column: 6, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 461, column: 6)
!6155 = !DILocation(line: 461, column: 11, scope: !6154)
!6156 = !DILocation(line: 461, column: 6, scope: !6100)
!6157 = !DILocation(line: 461, column: 26, scope: !6154)
!6158 = !DILocation(line: 462, column: 6, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 462, column: 6)
!6160 = !DILocation(line: 462, column: 11, scope: !6159)
!6161 = !DILocation(line: 462, column: 6, scope: !6100)
!6162 = !DILocation(line: 462, column: 26, scope: !6159)
!6163 = !DILocation(line: 463, column: 6, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 463, column: 6)
!6165 = !DILocation(line: 463, column: 11, scope: !6164)
!6166 = !DILocation(line: 463, column: 6, scope: !6100)
!6167 = !DILocation(line: 463, column: 26, scope: !6164)
!6168 = !DILocation(line: 464, column: 6, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 464, column: 6)
!6170 = !DILocation(line: 464, column: 11, scope: !6169)
!6171 = !DILocation(line: 464, column: 6, scope: !6100)
!6172 = !DILocation(line: 464, column: 26, scope: !6169)
!6173 = !DILocation(line: 465, column: 6, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 465, column: 6)
!6175 = !DILocation(line: 465, column: 11, scope: !6174)
!6176 = !DILocation(line: 465, column: 6, scope: !6100)
!6177 = !DILocation(line: 465, column: 26, scope: !6174)
!6178 = !DILocation(line: 466, column: 6, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 466, column: 6)
!6180 = !DILocation(line: 466, column: 11, scope: !6179)
!6181 = !DILocation(line: 466, column: 6, scope: !6100)
!6182 = !DILocation(line: 466, column: 26, scope: !6179)
!6183 = !DILocation(line: 467, column: 6, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 467, column: 6)
!6185 = !DILocation(line: 467, column: 11, scope: !6184)
!6186 = !DILocation(line: 467, column: 6, scope: !6100)
!6187 = !DILocation(line: 467, column: 26, scope: !6184)
!6188 = !DILocation(line: 468, column: 6, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 468, column: 6)
!6190 = !DILocation(line: 468, column: 11, scope: !6189)
!6191 = !DILocation(line: 468, column: 6, scope: !6100)
!6192 = !DILocation(line: 468, column: 26, scope: !6189)
!6193 = !DILocation(line: 469, column: 6, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 469, column: 6)
!6195 = !DILocation(line: 469, column: 11, scope: !6194)
!6196 = !DILocation(line: 469, column: 6, scope: !6100)
!6197 = !DILocation(line: 469, column: 26, scope: !6194)
!6198 = !DILocation(line: 470, column: 6, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 470, column: 6)
!6200 = !DILocation(line: 470, column: 11, scope: !6199)
!6201 = !DILocation(line: 470, column: 6, scope: !6100)
!6202 = !DILocation(line: 470, column: 26, scope: !6199)
!6203 = !DILocation(line: 471, column: 6, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 471, column: 6)
!6205 = !DILocation(line: 471, column: 11, scope: !6204)
!6206 = !DILocation(line: 471, column: 6, scope: !6100)
!6207 = !DILocation(line: 471, column: 26, scope: !6204)
!6208 = !DILocation(line: 472, column: 6, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 472, column: 6)
!6210 = !DILocation(line: 472, column: 11, scope: !6209)
!6211 = !DILocation(line: 472, column: 6, scope: !6100)
!6212 = !DILocation(line: 472, column: 26, scope: !6209)
!6213 = !DILocation(line: 473, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 473, column: 6)
!6215 = !DILocation(line: 473, column: 11, scope: !6214)
!6216 = !DILocation(line: 473, column: 6, scope: !6100)
!6217 = !DILocation(line: 473, column: 26, scope: !6214)
!6218 = !DILocation(line: 474, column: 6, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 474, column: 6)
!6220 = !DILocation(line: 474, column: 11, scope: !6219)
!6221 = !DILocation(line: 474, column: 6, scope: !6100)
!6222 = !DILocation(line: 474, column: 27, scope: !6219)
!6223 = !DILocation(line: 475, column: 6, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 475, column: 6)
!6225 = !DILocation(line: 475, column: 11, scope: !6224)
!6226 = !DILocation(line: 475, column: 6, scope: !6100)
!6227 = !DILocation(line: 475, column: 32, scope: !6224)
!6228 = !DILocation(line: 477, column: 50, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6100, file: !170, line: 477, column: 6)
!6230 = !DILocation(line: 477, column: 6, scope: !6100)
!6231 = !DILocation(line: 478, column: 3, scope: !6229)
!6232 = !DILocation(line: 478, column: 3, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6234, file: !170, line: 478, column: 3)
!6234 = distinct !DILexicalBlock(scope: !6229, file: !170, line: 478, column: 3)
!6235 = !{i32 -2141977033}
!6236 = !DILocation(line: 478, column: 3, scope: !6234)
!6237 = !DILocation(line: 480, column: 3, scope: !6229)
!6238 = !DILocation(line: 480, column: 3, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6229, file: !170, line: 480, column: 3)
!6240 = !DILocation(line: 480, column: 3, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6239, file: !170, line: 480, column: 3)
!6242 = !DILocation(line: 480, column: 3, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6239, file: !170, line: 480, column: 3)
!6244 = !{i64 2152990466, i64 2152990495, i64 2152990541, i64 2152990599, i64 2152990653, i64 2152990707, i64 2152990762, i64 2152990793}
!6245 = !DILocation(line: 483, column: 2, scope: !6100)
!6246 = !DILocation(line: 484, column: 1, scope: !6100)
!6247 = !DISubprogram(name: "kmalloc_trace", scope: !170, file: !170, line: 525, type: !6248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!180, !6250, !181, !420}
!6250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6251, size: 64)
!6251 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6252, line: 11, flags: DIFlagFwdDecl)
!6252 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6253 = distinct !DISubprogram(name: "kmalloc_type", scope: !170, file: !170, line: 401, type: !6254, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6256)
!6254 = !DISubroutineType(types: !6255)
!6255 = !{!169, !181, !210}
!6256 = !{!6257, !6258}
!6257 = !DILocalVariable(name: "flags", arg: 1, scope: !6253, file: !170, line: 401, type: !181)
!6258 = !DILocalVariable(name: "caller", arg: 2, scope: !6253, file: !170, line: 401, type: !210)
!6259 = !DILocation(line: 401, column: 67, scope: !6253)
!6260 = !DILocation(line: 401, column: 88, scope: !6253)
!6261 = !DILocation(line: 407, column: 6, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6253, file: !170, line: 407, column: 6)
!6263 = !DILocation(line: 407, column: 6, scope: !6253)
!6264 = !DILocation(line: 413, column: 3, scope: !6262)
!6265 = !DILocation(line: 423, column: 38, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6253, file: !170, line: 423, column: 6)
!6267 = !DILocation(line: 423, column: 44, scope: !6266)
!6268 = !DILocation(line: 423, column: 6, scope: !6253)
!6269 = !DILocation(line: 424, column: 3, scope: !6266)
!6270 = !DILocation(line: 426, column: 3, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6253, file: !170, line: 425, column: 6)
!6272 = !DILocation(line: 429, column: 1, scope: !6253)
!6273 = !DISubprogram(name: "__kmalloc", scope: !170, file: !170, line: 488, type: !5134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6274 = !DISubprogram(name: "__compiletime_assert_204", scope: !170, file: !170, line: 478, type: !1071, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6275 = distinct !DISubprogram(name: "__list_add", scope: !5151, file: !5151, line: 146, type: !6276, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6278)
!6276 = !DISubroutineType(types: !6277)
!6277 = !{null, !190, !190, !190}
!6278 = !{!6279, !6280, !6281}
!6279 = !DILocalVariable(name: "new", arg: 1, scope: !6275, file: !5151, line: 146, type: !190)
!6280 = !DILocalVariable(name: "prev", arg: 2, scope: !6275, file: !5151, line: 147, type: !190)
!6281 = !DILocalVariable(name: "next", arg: 3, scope: !6275, file: !5151, line: 148, type: !190)
!6282 = !DILocation(line: 146, column: 49, scope: !6275)
!6283 = !DILocation(line: 147, column: 28, scope: !6275)
!6284 = !DILocation(line: 148, column: 28, scope: !6275)
!6285 = !DILocation(line: 150, column: 24, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6275, file: !5151, line: 150, column: 6)
!6287 = !DILocation(line: 150, column: 29, scope: !6286)
!6288 = !DILocation(line: 150, column: 35, scope: !6286)
!6289 = !DILocation(line: 150, column: 7, scope: !6286)
!6290 = !DILocation(line: 150, column: 6, scope: !6275)
!6291 = !DILocation(line: 151, column: 3, scope: !6286)
!6292 = !DILocation(line: 153, column: 15, scope: !6275)
!6293 = !DILocation(line: 153, column: 2, scope: !6275)
!6294 = !DILocation(line: 153, column: 8, scope: !6275)
!6295 = !DILocation(line: 153, column: 13, scope: !6275)
!6296 = !DILocation(line: 154, column: 14, scope: !6275)
!6297 = !DILocation(line: 154, column: 2, scope: !6275)
!6298 = !DILocation(line: 154, column: 7, scope: !6275)
!6299 = !DILocation(line: 154, column: 12, scope: !6275)
!6300 = !DILocation(line: 155, column: 14, scope: !6275)
!6301 = !DILocation(line: 155, column: 2, scope: !6275)
!6302 = !DILocation(line: 155, column: 7, scope: !6275)
!6303 = !DILocation(line: 155, column: 12, scope: !6275)
!6304 = !DILocation(line: 156, column: 2, scope: !6275)
!6305 = !DILocation(line: 156, column: 2, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6275, file: !5151, line: 156, column: 2)
!6307 = !DILocation(line: 156, column: 2, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6306, file: !5151, line: 156, column: 2)
!6309 = !DILocation(line: 156, column: 2, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6306, file: !5151, line: 156, column: 2)
!6311 = !DILocation(line: 157, column: 1, scope: !6275)
!6312 = distinct !DISubprogram(name: "__list_add_valid", scope: !5151, file: !5151, line: 128, type: !6313, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6315)
!6313 = !DISubroutineType(types: !6314)
!6314 = !{!788, !190, !190, !190}
!6315 = !{!6316, !6317, !6318}
!6316 = !DILocalVariable(name: "new", arg: 1, scope: !6312, file: !5151, line: 128, type: !190)
!6317 = !DILocalVariable(name: "prev", arg: 2, scope: !6312, file: !5151, line: 129, type: !190)
!6318 = !DILocalVariable(name: "next", arg: 3, scope: !6312, file: !5151, line: 130, type: !190)
!6319 = !DILocation(line: 128, column: 55, scope: !6312)
!6320 = !DILocation(line: 129, column: 23, scope: !6312)
!6321 = !DILocation(line: 130, column: 23, scope: !6312)
!6322 = !DILocation(line: 132, column: 2, scope: !6312)
!6323 = distinct !DISubprogram(name: "__list_del_entry", scope: !5151, file: !5151, line: 213, type: !5086, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6324)
!6324 = !{!6325}
!6325 = !DILocalVariable(name: "entry", arg: 1, scope: !6323, file: !5151, line: 213, type: !190)
!6326 = !DILocation(line: 213, column: 55, scope: !6323)
!6327 = !DILocation(line: 215, column: 30, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6323, file: !5151, line: 215, column: 6)
!6329 = !DILocation(line: 215, column: 7, scope: !6328)
!6330 = !DILocation(line: 215, column: 6, scope: !6323)
!6331 = !DILocation(line: 216, column: 3, scope: !6328)
!6332 = !DILocation(line: 218, column: 13, scope: !6323)
!6333 = !DILocation(line: 218, column: 20, scope: !6323)
!6334 = !DILocation(line: 218, column: 26, scope: !6323)
!6335 = !DILocation(line: 218, column: 33, scope: !6323)
!6336 = !DILocation(line: 218, column: 2, scope: !6323)
!6337 = !DILocation(line: 219, column: 1, scope: !6323)
!6338 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5151, file: !5151, line: 134, type: !6339, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6341)
!6339 = !DISubroutineType(types: !6340)
!6340 = !{!788, !190}
!6341 = !{!6342}
!6342 = !DILocalVariable(name: "entry", arg: 1, scope: !6338, file: !5151, line: 134, type: !190)
!6343 = !DILocation(line: 134, column: 61, scope: !6338)
!6344 = !DILocation(line: 136, column: 2, scope: !6338)
!6345 = distinct !DISubprogram(name: "__list_del", scope: !5151, file: !5151, line: 193, type: !5152, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6346)
!6346 = !{!6347, !6348}
!6347 = !DILocalVariable(name: "prev", arg: 1, scope: !6345, file: !5151, line: 193, type: !190)
!6348 = !DILocalVariable(name: "next", arg: 2, scope: !6345, file: !5151, line: 193, type: !190)
!6349 = !DILocation(line: 193, column: 50, scope: !6345)
!6350 = !DILocation(line: 193, column: 75, scope: !6345)
!6351 = !DILocation(line: 195, column: 15, scope: !6345)
!6352 = !DILocation(line: 195, column: 2, scope: !6345)
!6353 = !DILocation(line: 195, column: 8, scope: !6345)
!6354 = !DILocation(line: 195, column: 13, scope: !6345)
!6355 = !DILocation(line: 196, column: 2, scope: !6345)
!6356 = !DILocation(line: 196, column: 2, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6345, file: !5151, line: 196, column: 2)
!6358 = !DILocation(line: 196, column: 2, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6357, file: !5151, line: 196, column: 2)
!6360 = !DILocation(line: 196, column: 2, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6357, file: !5151, line: 196, column: 2)
!6362 = !DILocation(line: 197, column: 1, scope: !6345)
!6363 = distinct !DISubprogram(name: "pci_clip_resource_to_region", scope: !2, file: !2, line: 158, type: !6364, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6366)
!6364 = !DISubroutineType(types: !6365)
!6365 = !{null, !229, !193, !5494}
!6366 = !{!6367, !6368, !6369, !6370}
!6367 = !DILocalVariable(name: "bus", arg: 1, scope: !6363, file: !2, line: 158, type: !229)
!6368 = !DILocalVariable(name: "res", arg: 2, scope: !6363, file: !2, line: 159, type: !193)
!6369 = !DILocalVariable(name: "region", arg: 3, scope: !6363, file: !2, line: 160, type: !5494)
!6370 = !DILocalVariable(name: "r", scope: !6363, file: !2, line: 162, type: !5003)
!6371 = !DILocation(line: 158, column: 57, scope: !6363)
!6372 = !DILocation(line: 159, column: 23, scope: !6363)
!6373 = !DILocation(line: 160, column: 29, scope: !6363)
!6374 = !DILocation(line: 162, column: 2, scope: !6363)
!6375 = !DILocation(line: 162, column: 24, scope: !6363)
!6376 = !DILocation(line: 164, column: 26, scope: !6363)
!6377 = !DILocation(line: 164, column: 35, scope: !6363)
!6378 = !DILocation(line: 164, column: 2, scope: !6363)
!6379 = !DILocation(line: 165, column: 8, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6363, file: !2, line: 165, column: 6)
!6381 = !DILocation(line: 165, column: 16, scope: !6380)
!6382 = !DILocation(line: 165, column: 24, scope: !6380)
!6383 = !DILocation(line: 165, column: 14, scope: !6380)
!6384 = !DILocation(line: 165, column: 6, scope: !6363)
!6385 = !DILocation(line: 166, column: 13, scope: !6380)
!6386 = !DILocation(line: 166, column: 21, scope: !6380)
!6387 = !DILocation(line: 166, column: 5, scope: !6380)
!6388 = !DILocation(line: 166, column: 11, scope: !6380)
!6389 = !DILocation(line: 166, column: 3, scope: !6380)
!6390 = !DILocation(line: 167, column: 8, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6363, file: !2, line: 167, column: 6)
!6392 = !DILocation(line: 167, column: 14, scope: !6391)
!6393 = !DILocation(line: 167, column: 22, scope: !6391)
!6394 = !DILocation(line: 167, column: 12, scope: !6391)
!6395 = !DILocation(line: 167, column: 6, scope: !6363)
!6396 = !DILocation(line: 168, column: 11, scope: !6391)
!6397 = !DILocation(line: 168, column: 19, scope: !6391)
!6398 = !DILocation(line: 168, column: 5, scope: !6391)
!6399 = !DILocation(line: 168, column: 9, scope: !6391)
!6400 = !DILocation(line: 168, column: 3, scope: !6391)
!6401 = !DILocation(line: 170, column: 8, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6363, file: !2, line: 170, column: 6)
!6403 = !DILocation(line: 170, column: 16, scope: !6402)
!6404 = !DILocation(line: 170, column: 12, scope: !6402)
!6405 = !DILocation(line: 170, column: 6, scope: !6363)
!6406 = !DILocation(line: 171, column: 14, scope: !6402)
!6407 = !DILocation(line: 171, column: 19, scope: !6402)
!6408 = !DILocation(line: 171, column: 25, scope: !6402)
!6409 = !DILocation(line: 171, column: 3, scope: !6402)
!6410 = !DILocation(line: 171, column: 8, scope: !6402)
!6411 = !DILocation(line: 171, column: 12, scope: !6402)
!6412 = !DILocation(line: 173, column: 27, scope: !6402)
!6413 = !DILocation(line: 173, column: 32, scope: !6402)
!6414 = !DILocation(line: 173, column: 3, scope: !6402)
!6415 = !DILocation(line: 174, column: 1, scope: !6363)
!6416 = !DISubprogram(name: "allocate_resource", scope: !195, file: !195, line: 207, type: !6417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6417 = !DISubroutineType(types: !6418)
!6418 = !{!109, !193, !193, !198, !198, !198, !198, !5426, !180}
!6419 = !DISubprogram(name: "pcibios_resource_to_bus", scope: !159, file: !159, line: 1106, type: !6420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6420 = !DISubroutineType(types: !6421)
!6421 = !{null, !229, !5494, !193}
!6422 = !DISubprogram(name: "pcibios_bus_to_resource", scope: !159, file: !159, line: 1108, type: !6364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6423 = distinct !DISubprogram(name: "assign_bit", scope: !6424, file: !6424, line: 276, type: !6425, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6429)
!6424 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!6425 = !DISubroutineType(types: !6426)
!6426 = !{null, !409, !6427, !788}
!6427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6428, size: 64)
!6428 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !210)
!6429 = !{!6430, !6431, !6432}
!6430 = !DILocalVariable(name: "nr", arg: 1, scope: !6423, file: !6424, line: 276, type: !409)
!6431 = !DILocalVariable(name: "addr", arg: 2, scope: !6423, file: !6424, line: 276, type: !6427)
!6432 = !DILocalVariable(name: "value", arg: 3, scope: !6423, file: !6424, line: 277, type: !788)
!6433 = !DILocation(line: 276, column: 45, scope: !6423)
!6434 = !DILocation(line: 276, column: 73, scope: !6423)
!6435 = !DILocation(line: 277, column: 17, scope: !6423)
!6436 = !DILocation(line: 279, column: 6, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6423, file: !6424, line: 279, column: 6)
!6438 = !DILocation(line: 279, column: 6, scope: !6423)
!6439 = !DILocation(line: 280, column: 11, scope: !6437)
!6440 = !DILocation(line: 280, column: 15, scope: !6437)
!6441 = !DILocation(line: 280, column: 3, scope: !6437)
!6442 = !DILocation(line: 282, column: 13, scope: !6437)
!6443 = !DILocation(line: 282, column: 17, scope: !6437)
!6444 = !DILocation(line: 282, column: 3, scope: !6437)
!6445 = !DILocation(line: 283, column: 1, scope: !6423)
!6446 = distinct !DISubprogram(name: "set_bit", scope: !6447, file: !6447, line: 26, type: !6448, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6450)
!6447 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6448 = !DISubroutineType(types: !6449)
!6449 = !{null, !409, !6427}
!6450 = !{!6451, !6452}
!6451 = !DILocalVariable(name: "nr", arg: 1, scope: !6446, file: !6447, line: 26, type: !409)
!6452 = !DILocalVariable(name: "addr", arg: 2, scope: !6446, file: !6447, line: 26, type: !6427)
!6453 = !DILocation(line: 26, column: 42, scope: !6446)
!6454 = !DILocation(line: 26, column: 70, scope: !6446)
!6455 = !DILocation(line: 28, column: 26, scope: !6446)
!6456 = !DILocation(line: 28, column: 33, scope: !6446)
!6457 = !DILocation(line: 28, column: 31, scope: !6446)
!6458 = !DILocation(line: 28, column: 2, scope: !6446)
!6459 = !DILocation(line: 29, column: 15, scope: !6446)
!6460 = !DILocation(line: 29, column: 19, scope: !6446)
!6461 = !DILocation(line: 29, column: 2, scope: !6446)
!6462 = !DILocation(line: 30, column: 1, scope: !6446)
!6463 = distinct !DISubprogram(name: "clear_bit", scope: !6447, file: !6447, line: 39, type: !6448, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6464)
!6464 = !{!6465, !6466}
!6465 = !DILocalVariable(name: "nr", arg: 1, scope: !6463, file: !6447, line: 39, type: !409)
!6466 = !DILocalVariable(name: "addr", arg: 2, scope: !6463, file: !6447, line: 39, type: !6427)
!6467 = !DILocation(line: 39, column: 44, scope: !6463)
!6468 = !DILocation(line: 39, column: 72, scope: !6463)
!6469 = !DILocation(line: 41, column: 26, scope: !6463)
!6470 = !DILocation(line: 41, column: 33, scope: !6463)
!6471 = !DILocation(line: 41, column: 31, scope: !6463)
!6472 = !DILocation(line: 41, column: 2, scope: !6463)
!6473 = !DILocation(line: 42, column: 17, scope: !6463)
!6474 = !DILocation(line: 42, column: 21, scope: !6463)
!6475 = !DILocation(line: 42, column: 2, scope: !6463)
!6476 = !DILocation(line: 43, column: 1, scope: !6463)
!6477 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6478, file: !6478, line: 80, type: !6479, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6484)
!6478 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6479 = !DISubroutineType(types: !6480)
!6480 = !{null, !6481, !420}
!6481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6482, size: 64)
!6482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6483)
!6483 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6484 = !{!6485, !6486}
!6485 = !DILocalVariable(name: "v", arg: 1, scope: !6477, file: !6478, line: 80, type: !6481)
!6486 = !DILocalVariable(name: "size", arg: 2, scope: !6477, file: !6478, line: 80, type: !420)
!6487 = !DILocation(line: 80, column: 74, scope: !6477)
!6488 = !DILocation(line: 80, column: 84, scope: !6477)
!6489 = !DILocation(line: 82, column: 20, scope: !6477)
!6490 = !DILocation(line: 82, column: 23, scope: !6477)
!6491 = !DILocation(line: 82, column: 2, scope: !6477)
!6492 = !DILocation(line: 83, column: 2, scope: !6477)
!6493 = !DILocation(line: 84, column: 1, scope: !6477)
!6494 = distinct !DISubprogram(name: "arch_set_bit", scope: !6495, file: !6495, line: 52, type: !6448, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6496)
!6495 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6496 = !{!6497, !6498}
!6497 = !DILocalVariable(name: "nr", arg: 1, scope: !6494, file: !6495, line: 52, type: !409)
!6498 = !DILocalVariable(name: "addr", arg: 2, scope: !6494, file: !6495, line: 52, type: !6427)
!6499 = !DILocation(line: 52, column: 19, scope: !6494)
!6500 = !DILocation(line: 52, column: 47, scope: !6494)
!6501 = !DILocation(line: 54, column: 27, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6494, file: !6495, line: 54, column: 6)
!6503 = !DILocation(line: 54, column: 6, scope: !6502)
!6504 = !DILocation(line: 54, column: 6, scope: !6494)
!6505 = !DILocation(line: 56, column: 6, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6502, file: !6495, line: 54, column: 32)
!6507 = !DILocation(line: 57, column: 12, scope: !6506)
!6508 = !DILocation(line: 55, column: 3, scope: !6506)
!6509 = !{i64 2148338342, i64 2148338381, i64 2148338402, i64 2148338439, i64 2148338462, i64 2148338332}
!6510 = !DILocation(line: 59, column: 2, scope: !6506)
!6511 = !DILocation(line: 61, column: 8, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6502, file: !6495, line: 59, column: 9)
!6513 = !DILocation(line: 61, column: 32, scope: !6512)
!6514 = !DILocation(line: 60, column: 3, scope: !6512)
!6515 = !{i64 2148338627, i64 2148338666, i64 2148338687, i64 2148338724, i64 2148338747, i64 2148338617}
!6516 = !DILocation(line: 63, column: 1, scope: !6494)
!6517 = distinct !DISubprogram(name: "kasan_check_write", scope: !6518, file: !6518, line: 44, type: !6519, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6521)
!6518 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6519 = !DISubroutineType(types: !6520)
!6520 = !{!788, !6481, !13}
!6521 = !{!6522, !6523}
!6522 = !DILocalVariable(name: "p", arg: 1, scope: !6517, file: !6518, line: 44, type: !6481)
!6523 = !DILocalVariable(name: "size", arg: 2, scope: !6517, file: !6518, line: 44, type: !13)
!6524 = !DILocation(line: 44, column: 59, scope: !6517)
!6525 = !DILocation(line: 44, column: 75, scope: !6517)
!6526 = !DILocation(line: 46, column: 2, scope: !6517)
!6527 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6528, file: !6528, line: 229, type: !6529, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6531)
!6528 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6529 = !DISubroutineType(types: !6530)
!6530 = !{null, !6481, !420, !109}
!6531 = !{!6532, !6533, !6534}
!6532 = !DILocalVariable(name: "ptr", arg: 1, scope: !6527, file: !6528, line: 229, type: !6481)
!6533 = !DILocalVariable(name: "size", arg: 2, scope: !6527, file: !6528, line: 229, type: !420)
!6534 = !DILocalVariable(name: "type", arg: 3, scope: !6527, file: !6528, line: 230, type: !109)
!6535 = !DILocation(line: 229, column: 60, scope: !6527)
!6536 = !DILocation(line: 229, column: 72, scope: !6527)
!6537 = !DILocation(line: 230, column: 15, scope: !6527)
!6538 = !DILocation(line: 230, column: 23, scope: !6527)
!6539 = distinct !DISubprogram(name: "arch_clear_bit", scope: !6495, file: !6495, line: 72, type: !6448, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6540)
!6540 = !{!6541, !6542}
!6541 = !DILocalVariable(name: "nr", arg: 1, scope: !6539, file: !6495, line: 72, type: !409)
!6542 = !DILocalVariable(name: "addr", arg: 2, scope: !6539, file: !6495, line: 72, type: !6427)
!6543 = !DILocation(line: 72, column: 21, scope: !6539)
!6544 = !DILocation(line: 72, column: 49, scope: !6539)
!6545 = !DILocation(line: 74, column: 27, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6539, file: !6495, line: 74, column: 6)
!6547 = !DILocation(line: 74, column: 6, scope: !6546)
!6548 = !DILocation(line: 74, column: 6, scope: !6539)
!6549 = !DILocation(line: 76, column: 6, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6546, file: !6495, line: 74, column: 32)
!6551 = !DILocation(line: 77, column: 13, scope: !6550)
!6552 = !DILocation(line: 77, column: 12, scope: !6550)
!6553 = !DILocation(line: 75, column: 3, scope: !6550)
!6554 = !{i64 2148339630, i64 2148339669, i64 2148339690, i64 2148339727, i64 2148339750, i64 2148339620}
!6555 = !DILocation(line: 78, column: 2, scope: !6550)
!6556 = !DILocation(line: 80, column: 8, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6546, file: !6495, line: 78, column: 9)
!6558 = !DILocation(line: 80, column: 32, scope: !6557)
!6559 = !DILocation(line: 79, column: 3, scope: !6557)
!6560 = !{i64 2148339915, i64 2148339954, i64 2148339975, i64 2148340012, i64 2148340035, i64 2148339905}
!6561 = !DILocation(line: 82, column: 1, scope: !6539)
!6562 = distinct !DISubprogram(name: "const_test_bit", scope: !6563, file: !6563, line: 166, type: !6564, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6568)
!6563 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6564 = !DISubroutineType(types: !6565)
!6565 = !{!788, !210, !6566}
!6566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6567, size: 64)
!6567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6428)
!6568 = !{!6569, !6570, !6571, !6572, !6573}
!6569 = !DILocalVariable(name: "nr", arg: 1, scope: !6562, file: !6563, line: 166, type: !210)
!6570 = !DILocalVariable(name: "addr", arg: 2, scope: !6562, file: !6563, line: 166, type: !6566)
!6571 = !DILocalVariable(name: "p", scope: !6562, file: !6563, line: 168, type: !4963)
!6572 = !DILocalVariable(name: "mask", scope: !6562, file: !6563, line: 169, type: !210)
!6573 = !DILocalVariable(name: "val", scope: !6562, file: !6563, line: 170, type: !210)
!6574 = !DILocation(line: 166, column: 30, scope: !6562)
!6575 = !DILocation(line: 166, column: 64, scope: !6562)
!6576 = !DILocation(line: 168, column: 2, scope: !6562)
!6577 = !DILocation(line: 168, column: 23, scope: !6562)
!6578 = !DILocation(line: 168, column: 50, scope: !6562)
!6579 = !DILocation(line: 168, column: 57, scope: !6562)
!6580 = !DILocation(line: 168, column: 55, scope: !6562)
!6581 = !DILocation(line: 169, column: 2, scope: !6562)
!6582 = !DILocation(line: 169, column: 16, scope: !6562)
!6583 = !DILocation(line: 169, column: 23, scope: !6562)
!6584 = !DILocation(line: 170, column: 2, scope: !6562)
!6585 = !DILocation(line: 170, column: 16, scope: !6562)
!6586 = !DILocation(line: 170, column: 23, scope: !6562)
!6587 = !DILocation(line: 170, column: 22, scope: !6562)
!6588 = !DILocation(line: 172, column: 12, scope: !6562)
!6589 = !DILocation(line: 172, column: 18, scope: !6562)
!6590 = !DILocation(line: 172, column: 16, scope: !6562)
!6591 = !DILocation(line: 172, column: 10, scope: !6562)
!6592 = !DILocation(line: 172, column: 9, scope: !6562)
!6593 = !DILocation(line: 173, column: 1, scope: !6562)
!6594 = !DILocation(line: 172, column: 2, scope: !6562)
!6595 = distinct !DISubprogram(name: "_test_bit", scope: !6596, file: !6596, line: 139, type: !6564, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6597)
!6596 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6597 = !{!6598, !6599}
!6598 = !DILocalVariable(name: "nr", arg: 1, scope: !6595, file: !6596, line: 139, type: !210)
!6599 = !DILocalVariable(name: "addr", arg: 2, scope: !6595, file: !6596, line: 139, type: !6566)
!6600 = !DILocation(line: 139, column: 25, scope: !6595)
!6601 = !DILocation(line: 139, column: 59, scope: !6595)
!6602 = !DILocation(line: 141, column: 25, scope: !6595)
!6603 = !DILocation(line: 141, column: 32, scope: !6595)
!6604 = !DILocation(line: 141, column: 30, scope: !6595)
!6605 = !DILocation(line: 141, column: 2, scope: !6595)
!6606 = !DILocation(line: 142, column: 23, scope: !6595)
!6607 = !DILocation(line: 142, column: 27, scope: !6595)
!6608 = !DILocation(line: 142, column: 9, scope: !6595)
!6609 = !DILocation(line: 142, column: 2, scope: !6595)
!6610 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6478, file: !6478, line: 66, type: !6479, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6611)
!6611 = !{!6612, !6613}
!6612 = !DILocalVariable(name: "v", arg: 1, scope: !6610, file: !6478, line: 66, type: !6481)
!6613 = !DILocalVariable(name: "size", arg: 2, scope: !6610, file: !6478, line: 66, type: !420)
!6614 = !DILocation(line: 66, column: 73, scope: !6610)
!6615 = !DILocation(line: 66, column: 83, scope: !6610)
!6616 = !DILocation(line: 68, column: 19, scope: !6610)
!6617 = !DILocation(line: 68, column: 22, scope: !6610)
!6618 = !DILocation(line: 68, column: 2, scope: !6610)
!6619 = !DILocation(line: 69, column: 2, scope: !6610)
!6620 = !DILocation(line: 70, column: 1, scope: !6610)
!6621 = distinct !DISubprogram(name: "arch_test_bit", scope: !6495, file: !6495, line: 237, type: !6564, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6622)
!6622 = !{!6623, !6624}
!6623 = !DILocalVariable(name: "nr", arg: 1, scope: !6621, file: !6495, line: 237, type: !210)
!6624 = !DILocalVariable(name: "addr", arg: 2, scope: !6621, file: !6495, line: 237, type: !6566)
!6625 = !DILocation(line: 237, column: 29, scope: !6621)
!6626 = !DILocation(line: 237, column: 63, scope: !6621)
!6627 = !DILocation(line: 239, column: 30, scope: !6621)
!6628 = !DILocation(line: 239, column: 9, scope: !6621)
!6629 = !DILocation(line: 239, column: 54, scope: !6621)
!6630 = !DILocation(line: 239, column: 58, scope: !6621)
!6631 = !DILocation(line: 239, column: 36, scope: !6621)
!6632 = !DILocation(line: 240, column: 26, scope: !6621)
!6633 = !DILocation(line: 240, column: 30, scope: !6621)
!6634 = !DILocation(line: 240, column: 8, scope: !6621)
!6635 = !DILocation(line: 239, column: 2, scope: !6621)
!6636 = distinct !DISubprogram(name: "kasan_check_read", scope: !6518, file: !6518, line: 40, type: !6519, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6637)
!6637 = !{!6638, !6639}
!6638 = !DILocalVariable(name: "p", arg: 1, scope: !6636, file: !6518, line: 40, type: !6481)
!6639 = !DILocalVariable(name: "size", arg: 2, scope: !6636, file: !6518, line: 40, type: !13)
!6640 = !DILocation(line: 40, column: 58, scope: !6636)
!6641 = !DILocation(line: 40, column: 74, scope: !6636)
!6642 = !DILocation(line: 42, column: 2, scope: !6636)
!6643 = distinct !DISubprogram(name: "constant_test_bit", scope: !6495, file: !6495, line: 204, type: !6644, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6646)
!6644 = !DISubroutineType(types: !6645)
!6645 = !{!788, !409, !6566}
!6646 = !{!6647, !6648}
!6647 = !DILocalVariable(name: "nr", arg: 1, scope: !6643, file: !6495, line: 204, type: !409)
!6648 = !DILocalVariable(name: "addr", arg: 2, scope: !6643, file: !6495, line: 204, type: !6566)
!6649 = !DILocation(line: 204, column: 52, scope: !6643)
!6650 = !DILocation(line: 204, column: 86, scope: !6643)
!6651 = !DILocation(line: 206, column: 19, scope: !6643)
!6652 = !DILocation(line: 206, column: 22, scope: !6643)
!6653 = !DILocation(line: 206, column: 15, scope: !6643)
!6654 = !DILocation(line: 207, column: 4, scope: !6643)
!6655 = !DILocation(line: 207, column: 9, scope: !6643)
!6656 = !DILocation(line: 207, column: 12, scope: !6643)
!6657 = !DILocation(line: 206, column: 44, scope: !6643)
!6658 = !DILocation(line: 207, column: 37, scope: !6643)
!6659 = !DILocation(line: 206, column: 2, scope: !6643)
!6660 = distinct !DISubprogram(name: "variable_test_bit", scope: !6495, file: !6495, line: 224, type: !6644, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6661)
!6661 = !{!6662, !6663, !6664}
!6662 = !DILocalVariable(name: "nr", arg: 1, scope: !6660, file: !6495, line: 224, type: !409)
!6663 = !DILocalVariable(name: "addr", arg: 2, scope: !6660, file: !6495, line: 224, type: !6566)
!6664 = !DILocalVariable(name: "oldbit", scope: !6660, file: !6495, line: 226, type: !788)
!6665 = !DILocation(line: 224, column: 52, scope: !6660)
!6666 = !DILocation(line: 224, column: 86, scope: !6660)
!6667 = !DILocation(line: 226, column: 2, scope: !6660)
!6668 = !DILocation(line: 226, column: 7, scope: !6660)
!6669 = !DILocation(line: 231, column: 33, scope: !6660)
!6670 = !DILocation(line: 231, column: 46, scope: !6660)
!6671 = !DILocation(line: 228, column: 2, scope: !6660)
!6672 = !{i64 2148351954, i64 2148352028}
!6673 = !DILocation(line: 233, column: 9, scope: !6660)
!6674 = !DILocation(line: 234, column: 1, scope: !6660)
!6675 = !DILocation(line: 233, column: 2, scope: !6660)
!6676 = !DISubprogram(name: "down_read", scope: !1368, file: !1368, line: 175, type: !6677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6677 = !DISubroutineType(types: !6678)
!6678 = !{null, !6679}
!6679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!6680 = !DISubprogram(name: "up_read", scope: !1368, file: !1368, line: 198, type: !6677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
