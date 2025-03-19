; ModuleID = 'lib/devres.c'
source_filename = "lib/devres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_ioremap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_ioremap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_ioremap_uc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_ioremap_uc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_ioremap_wc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_ioremap_wc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_iounmap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_iounmap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_ioremap_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_ioremap_resource ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_of_iomap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_of_iomap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_ioport_map: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_ioport_map ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_ioport_unmap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_ioport_unmap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcim_iomap_table: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcim_iomap_table ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcim_iomap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcim_iomap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcim_iounmap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcim_iounmap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcim_iomap_regions: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcim_iomap_regions ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcim_iomap_regions_request_all: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcim_iomap_regions_request_all ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcim_iounmap_regions: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcim_iounmap_regions ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_arch_phys_wc_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_arch_phys_wc_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_arch_io_reserve_memtype_wc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_arch_io_reserve_memtype_wc ; .previous"

%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
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
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pcim_iomap_devres = type { [6 x ptr] }
%struct.arch_io_reserve_memtype_wc_devres = type { i64, i64 }

@__UNIQUE_ID___addressable_devm_ioremap292 = internal global ptr @devm_ioremap, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_devm_ioremap_uc293 = internal global ptr @devm_ioremap_uc, section ".discard.addressable", align 8, !dbg !4897
@__UNIQUE_ID___addressable_devm_ioremap_wc294 = internal global ptr @devm_ioremap_wc, section ".discard.addressable", align 8, !dbg !4899
@.str = private unnamed_addr constant [13 x i8] c"lib/devres.c\00", align 1, !dbg !4901
@__UNIQUE_ID___addressable_devm_iounmap295 = internal global ptr @devm_iounmap, section ".discard.addressable", align 8, !dbg !4906
@__UNIQUE_ID___addressable_devm_ioremap_resource296 = internal global ptr @devm_ioremap_resource, section ".discard.addressable", align 8, !dbg !4908
@__UNIQUE_ID___addressable_devm_of_iomap297 = internal global ptr @devm_of_iomap, section ".discard.addressable", align 8, !dbg !4910
@.str.1 = private unnamed_addr constant [24 x i8] c"devm_ioport_map_release\00", align 1, !dbg !4912
@__UNIQUE_ID___addressable_devm_ioport_map298 = internal global ptr @devm_ioport_map, section ".discard.addressable", align 8, !dbg !4917
@__UNIQUE_ID___addressable_devm_ioport_unmap299 = internal global ptr @devm_ioport_unmap, section ".discard.addressable", align 8, !dbg !4919
@.str.2 = private unnamed_addr constant [19 x i8] c"pcim_iomap_release\00", align 1, !dbg !4921
@__UNIQUE_ID___addressable_pcim_iomap_table300 = internal global ptr @pcim_iomap_table, section ".discard.addressable", align 8, !dbg !4926
@__UNIQUE_ID___addressable_pcim_iomap301 = internal global ptr @pcim_iomap, section ".discard.addressable", align 8, !dbg !4928
@__UNIQUE_ID___addressable_pcim_iounmap302 = internal global ptr @pcim_iounmap, section ".discard.addressable", align 8, !dbg !4930
@__UNIQUE_ID___addressable_pcim_iomap_regions303 = internal global ptr @pcim_iomap_regions, section ".discard.addressable", align 8, !dbg !4932
@__UNIQUE_ID___addressable_pcim_iomap_regions_request_all304 = internal global ptr @pcim_iomap_regions_request_all, section ".discard.addressable", align 8, !dbg !4934
@__UNIQUE_ID___addressable_pcim_iounmap_regions305 = internal global ptr @pcim_iounmap_regions, section ".discard.addressable", align 8, !dbg !4936
@.str.3 = private unnamed_addr constant [30 x i8] c"devm_arch_phys_ac_add_release\00", align 1, !dbg !4938
@__UNIQUE_ID___addressable_devm_arch_phys_wc_add306 = internal global ptr @devm_arch_phys_wc_add, section ".discard.addressable", align 8, !dbg !4943
@.str.4 = private unnamed_addr constant [37 x i8] c"devm_arch_io_free_memtype_wc_release\00", align 1, !dbg !4945
@__UNIQUE_ID___addressable_devm_arch_io_reserve_memtype_wc307 = internal global ptr @devm_arch_io_reserve_memtype_wc, section ".discard.addressable", align 8, !dbg !4950
@.str.5 = private unnamed_addr constant [21 x i8] c"devm_ioremap_release\00", align 1, !dbg !4952
@.str.6 = private unnamed_addr constant [22 x i8] c"invalid resource %pR\0A\00", align 1, !dbg !4957
@.str.7 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1, !dbg !4962
@.str.8 = private unnamed_addr constant [45 x i8] c"can't generate pretty name for resource %pR\0A\00", align 1, !dbg !4964
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"can't request region for resource %pR\0A\00", align 1, !dbg !4969
@.str.10 = private unnamed_addr constant [33 x i8] c"ioremap failed for resource %pR\0A\00", align 1, !dbg !4974
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID___addressable_devm_ioremap292, ptr @__UNIQUE_ID___addressable_devm_ioremap_uc293, ptr @__UNIQUE_ID___addressable_devm_ioremap_wc294, ptr @__UNIQUE_ID___addressable_devm_iounmap295, ptr @__UNIQUE_ID___addressable_devm_ioremap_resource296, ptr @__UNIQUE_ID___addressable_devm_of_iomap297, ptr @__UNIQUE_ID___addressable_devm_ioport_map298, ptr @__UNIQUE_ID___addressable_devm_ioport_unmap299, ptr @__UNIQUE_ID___addressable_pcim_iomap_table300, ptr @__UNIQUE_ID___addressable_pcim_iomap301, ptr @__UNIQUE_ID___addressable_pcim_iounmap302, ptr @__UNIQUE_ID___addressable_pcim_iomap_regions303, ptr @__UNIQUE_ID___addressable_pcim_iomap_regions_request_all304, ptr @__UNIQUE_ID___addressable_pcim_iounmap_regions305, ptr @__UNIQUE_ID___addressable_devm_arch_phys_wc_add306, ptr @__UNIQUE_ID___addressable_devm_arch_io_reserve_memtype_wc307], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devm_ioremap_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !4988 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4992, metadata !DIExpression()), !dbg !4994
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4993, metadata !DIExpression()), !dbg !4995
  %0 = load ptr, ptr %res.addr, align 8, !dbg !4996
  %1 = load ptr, ptr %0, align 8, !dbg !4997
  call void @iounmap(ptr noundef %1) #7, !dbg !4998
  ret void, !dbg !4999
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5000 dso_local void @iounmap(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_ioremap(ptr noundef %dev, i64 noundef %offset, i64 noundef %size) #0 align 16 !dbg !5006 {
entry:
  %dev.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5010, metadata !DIExpression()), !dbg !5013
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5011, metadata !DIExpression()), !dbg !5014
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5012, metadata !DIExpression()), !dbg !5015
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5016
  %1 = load i64, ptr %offset.addr, align 8, !dbg !5017
  %2 = load i64, ptr %size.addr, align 8, !dbg !5018
  %call = call ptr @__devm_ioremap(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 0) #7, !dbg !5019
  ret ptr %call, !dbg !5020
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__devm_ioremap(ptr noundef %dev, i64 noundef %offset, i64 noundef %size, i32 noundef %type) #0 align 16 !dbg !5021 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5025, metadata !DIExpression()), !dbg !5031
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5026, metadata !DIExpression()), !dbg !5032
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5027, metadata !DIExpression()), !dbg !5033
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5028, metadata !DIExpression()), !dbg !5034
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #8, !dbg !5035
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !5029, metadata !DIExpression()), !dbg !5036
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #8, !dbg !5035
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5030, metadata !DIExpression()), !dbg !5037
  store ptr null, ptr %addr, align 8, !dbg !5037
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5038
  %call = call i32 @dev_to_node(ptr noundef %0) #7, !dbg !5038
  %call1 = call noalias ptr @__devres_alloc_node(ptr noundef @devm_ioremap_release, i64 noundef 8, i32 noundef 3264, i32 noundef %call, ptr noundef @.str.5) #7, !dbg !5038
  store ptr %call1, ptr %ptr, align 8, !dbg !5039
  %1 = load ptr, ptr %ptr, align 8, !dbg !5040
  %tobool = icmp ne ptr %1, null, !dbg !5040
  br i1 %tobool, label %if.end, label %if.then, !dbg !5042

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5043

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %type.addr, align 4, !dbg !5044
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ], !dbg !5045

sw.bb:                                            ; preds = %if.end
  %3 = load i64, ptr %offset.addr, align 8, !dbg !5046
  %4 = load i64, ptr %size.addr, align 8, !dbg !5048
  %call2 = call ptr @ioremap(i64 noundef %3, i64 noundef %4) #7, !dbg !5049
  store ptr %call2, ptr %addr, align 8, !dbg !5050
  br label %sw.epilog, !dbg !5051

sw.bb3:                                           ; preds = %if.end
  %5 = load i64, ptr %offset.addr, align 8, !dbg !5052
  %6 = load i64, ptr %size.addr, align 8, !dbg !5053
  %call4 = call ptr @ioremap_uc(i64 noundef %5, i64 noundef %6) #7, !dbg !5054
  store ptr %call4, ptr %addr, align 8, !dbg !5055
  br label %sw.epilog, !dbg !5056

sw.bb5:                                           ; preds = %if.end
  %7 = load i64, ptr %offset.addr, align 8, !dbg !5057
  %8 = load i64, ptr %size.addr, align 8, !dbg !5058
  %call6 = call ptr @ioremap_wc(i64 noundef %7, i64 noundef %8) #7, !dbg !5059
  store ptr %call6, ptr %addr, align 8, !dbg !5060
  br label %sw.epilog, !dbg !5061

sw.bb7:                                           ; preds = %if.end
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5062
  %10 = load i64, ptr %size.addr, align 8, !dbg !5063
  %call8 = call ptr @ioremap_np(i64 noundef %9, i64 noundef %10) #7, !dbg !5064
  store ptr %call8, ptr %addr, align 8, !dbg !5065
  br label %sw.epilog, !dbg !5066

sw.epilog:                                        ; preds = %if.end, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %11 = load ptr, ptr %addr, align 8, !dbg !5067
  %tobool9 = icmp ne ptr %11, null, !dbg !5067
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !5069

if.then10:                                        ; preds = %sw.epilog
  %12 = load ptr, ptr %addr, align 8, !dbg !5070
  %13 = load ptr, ptr %ptr, align 8, !dbg !5072
  store ptr %12, ptr %13, align 8, !dbg !5073
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5074
  %15 = load ptr, ptr %ptr, align 8, !dbg !5075
  call void @devres_add(ptr noundef %14, ptr noundef %15) #7, !dbg !5076
  br label %if.end11, !dbg !5077

if.else:                                          ; preds = %sw.epilog
  %16 = load ptr, ptr %ptr, align 8, !dbg !5078
  call void @devres_free(ptr noundef %16) #7, !dbg !5079
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %17 = load ptr, ptr %addr, align 8, !dbg !5080
  store ptr %17, ptr %retval, align 8, !dbg !5081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5081

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #8, !dbg !5082
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #8, !dbg !5082
  %18 = load ptr, ptr %retval, align 8, !dbg !5082
  ret ptr %18, !dbg !5082
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_ioremap_uc(ptr noundef %dev, i64 noundef %offset, i64 noundef %size) #0 align 16 !dbg !5083 {
entry:
  %dev.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5085, metadata !DIExpression()), !dbg !5088
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5086, metadata !DIExpression()), !dbg !5089
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5087, metadata !DIExpression()), !dbg !5090
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5091
  %1 = load i64, ptr %offset.addr, align 8, !dbg !5092
  %2 = load i64, ptr %size.addr, align 8, !dbg !5093
  %call = call ptr @__devm_ioremap(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 1) #7, !dbg !5094
  ret ptr %call, !dbg !5095
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_ioremap_wc(ptr noundef %dev, i64 noundef %offset, i64 noundef %size) #0 align 16 !dbg !5096 {
entry:
  %dev.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5098, metadata !DIExpression()), !dbg !5101
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5099, metadata !DIExpression()), !dbg !5102
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5100, metadata !DIExpression()), !dbg !5103
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5104
  %1 = load i64, ptr %offset.addr, align 8, !dbg !5105
  %2 = load i64, ptr %size.addr, align 8, !dbg !5106
  %call = call ptr @__devm_ioremap(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 2) #7, !dbg !5107
  ret ptr %call, !dbg !5108
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devm_iounmap(ptr noundef %dev, ptr noundef %addr) #0 align 16 !dbg !5109 {
entry:
  %dev.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5111, metadata !DIExpression()), !dbg !5118
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5112, metadata !DIExpression()), !dbg !5119
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5120
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5113, metadata !DIExpression()), !dbg !5120
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5120
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5120
  %call = call i32 @devres_destroy(ptr noundef %0, ptr noundef @devm_ioremap_release, ptr noundef @devm_ioremap_match, ptr noundef %1) #7, !dbg !5120
  %tobool = icmp ne i32 %call, 0, !dbg !5120
  %lnot = xor i1 %tobool, true, !dbg !5120
  %lnot1 = xor i1 %lnot, true, !dbg !5120
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5120
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5120
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5121
  %tobool2 = icmp ne i32 %2, 0, !dbg !5121
  %lnot3 = xor i1 %tobool2, true, !dbg !5121
  %lnot5 = xor i1 %lnot3, true, !dbg !5121
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5121
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5121
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5121
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5121
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5120

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5121

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !5122
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5115, metadata !DIExpression()), !dbg !5122
  store i32 2305, ptr %__flags, align 4, !dbg !5122
  br label %do.body8, !dbg !5122

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5123

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5123

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5122

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5125
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 116, i32 %3, i64 12) #8, !dbg !5125, !srcloc !5127
  br label %do.cond10, !dbg !5125

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5125

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5122

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5128

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5128

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !5121
  br label %do.cond15, !dbg !5122

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5122

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5122

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5120
  %tobool17 = icmp ne i32 %4, 0, !dbg !5120
  %lnot18 = xor i1 %tobool17, true, !dbg !5120
  %lnot20 = xor i1 %lnot18, true, !dbg !5120
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5120
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5120
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5120
  store i64 %expval23, ptr %tmp, align 8, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5130
  %5 = load i64, ptr %tmp, align 8, !dbg !5120
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !5131
  call void @iounmap(ptr noundef %6) #7, !dbg !5132
  ret void, !dbg !5133
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5134 dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devm_ioremap_match(ptr noundef %dev, ptr noundef %res, ptr noundef %match_data) #0 align 16 !dbg !5143 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %match_data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5145, metadata !DIExpression()), !dbg !5148
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5146, metadata !DIExpression()), !dbg !5149
  store ptr %match_data, ptr %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match_data.addr, metadata !5147, metadata !DIExpression()), !dbg !5150
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5151
  %1 = load ptr, ptr %0, align 8, !dbg !5152
  %2 = load ptr, ptr %match_data.addr, align 8, !dbg !5153
  %cmp = icmp eq ptr %1, %2, !dbg !5154
  %conv = zext i1 %cmp to i32, !dbg !5154
  ret i32 %conv, !dbg !5155
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !5156 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5162, metadata !DIExpression()), !dbg !5164
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5163, metadata !DIExpression()), !dbg !5165
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5166
  %1 = load ptr, ptr %res.addr, align 8, !dbg !5167
  %call = call ptr @__devm_ioremap_resource(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7, !dbg !5168
  ret ptr %call, !dbg !5169
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__devm_ioremap_resource(ptr noundef %dev, ptr noundef %res, i32 noundef %type) #0 align 16 !dbg !5170 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %dest_ptr = alloca ptr, align 8
  %pretty_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5174, metadata !DIExpression()), !dbg !5180
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5175, metadata !DIExpression()), !dbg !5181
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5176, metadata !DIExpression()), !dbg !5182
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !5183
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5177, metadata !DIExpression()), !dbg !5184
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest_ptr) #8, !dbg !5185
  call void @llvm.dbg.declare(metadata ptr %dest_ptr, metadata !5178, metadata !DIExpression()), !dbg !5186
  call void @llvm.lifetime.start.p0(i64 8, ptr %pretty_name) #8, !dbg !5187
  call void @llvm.dbg.declare(metadata ptr %pretty_name, metadata !5179, metadata !DIExpression()), !dbg !5188
  br label %do.body, !dbg !5189

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5190
  %tobool = icmp ne ptr %0, null, !dbg !5190
  %lnot = xor i1 %tobool, true, !dbg !5190
  %lnot1 = xor i1 %lnot, true, !dbg !5190
  %lnot2 = xor i1 %lnot1, true, !dbg !5190
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5190
  %conv = sext i32 %lnot.ext to i64, !dbg !5190
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5190
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5190
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5193

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !5190

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !5194

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !5196

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5196

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5194

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 129, i32 0, i64 12) #8, !dbg !5198, !srcloc !5200
  br label %do.cond7, !dbg !5198

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5198

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !5194

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !5194

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !5194

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !5193

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !5193

do.end12:                                         ; preds = %do.cond11
  %1 = load ptr, ptr %res.addr, align 8, !dbg !5201
  %tobool13 = icmp ne ptr %1, null, !dbg !5201
  br i1 %tobool13, label %lor.lhs.false, label %if.then15, !dbg !5203

lor.lhs.false:                                    ; preds = %do.end12
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5204
  %call = call i64 @resource_type(ptr noundef %2) #7, !dbg !5205
  %cmp = icmp ne i64 %call, 512, !dbg !5206
  br i1 %cmp, label %if.then15, label %if.end20, !dbg !5207

if.then15:                                        ; preds = %lor.lhs.false, %do.end12
  br label %do.body16, !dbg !5208

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !5211

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5211

do.end18:                                         ; preds = %do.cond17
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5208
  %4 = load ptr, ptr %res.addr, align 8, !dbg !5208
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef @.str.6, ptr noundef %4) #9, !dbg !5208
  %call19 = call ptr @ERR_PTR(i64 noundef -22) #7, !dbg !5213
  store ptr %call19, ptr %retval, align 8, !dbg !5214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5214

if.end20:                                         ; preds = %lor.lhs.false
  %5 = load i32, ptr %type.addr, align 4, !dbg !5215
  %cmp21 = icmp eq i32 %5, 0, !dbg !5217
  br i1 %cmp21, label %land.lhs.true, label %if.end25, !dbg !5218

land.lhs.true:                                    ; preds = %if.end20
  %6 = load ptr, ptr %res.addr, align 8, !dbg !5219
  %flags = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 3, !dbg !5220
  %7 = load i64, ptr %flags, align 8, !dbg !5220
  %and = and i64 %7, 128, !dbg !5221
  %tobool23 = icmp ne i64 %and, 0, !dbg !5221
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5222

if.then24:                                        ; preds = %land.lhs.true
  store i32 3, ptr %type.addr, align 4, !dbg !5223
  br label %if.end25, !dbg !5224

if.end25:                                         ; preds = %if.then24, %land.lhs.true, %if.end20
  %8 = load ptr, ptr %res.addr, align 8, !dbg !5225
  %call26 = call i64 @resource_size(ptr noundef %8) #7, !dbg !5226
  store i64 %call26, ptr %size, align 8, !dbg !5227
  %9 = load ptr, ptr %res.addr, align 8, !dbg !5228
  %name = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 2, !dbg !5230
  %10 = load ptr, ptr %name, align 8, !dbg !5230
  %tobool27 = icmp ne ptr %10, null, !dbg !5228
  br i1 %tobool27, label %if.then28, label %if.else, !dbg !5231

if.then28:                                        ; preds = %if.end25
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5232
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5233
  %call29 = call ptr @dev_name(ptr noundef %12) #7, !dbg !5234
  %13 = load ptr, ptr %res.addr, align 8, !dbg !5235
  %name30 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 2, !dbg !5236
  %14 = load ptr, ptr %name30, align 8, !dbg !5236
  %call31 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %11, i32 noundef 3264, ptr noundef @.str.7, ptr noundef %call29, ptr noundef %14) #7, !dbg !5237
  store ptr %call31, ptr %pretty_name, align 8, !dbg !5238
  br label %if.end34, !dbg !5239

if.else:                                          ; preds = %if.end25
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5240
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5241
  %call32 = call ptr @dev_name(ptr noundef %16) #7, !dbg !5242
  %call33 = call noalias ptr @devm_kstrdup(ptr noundef %15, ptr noundef %call32, i32 noundef 3264) #7, !dbg !5243
  store ptr %call33, ptr %pretty_name, align 8, !dbg !5244
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then28
  %17 = load ptr, ptr %pretty_name, align 8, !dbg !5245
  %tobool35 = icmp ne ptr %17, null, !dbg !5245
  br i1 %tobool35, label %if.end41, label %if.then36, !dbg !5247

if.then36:                                        ; preds = %if.end34
  br label %do.body37, !dbg !5248

do.body37:                                        ; preds = %if.then36
  br label %do.cond38, !dbg !5251

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5251

do.end39:                                         ; preds = %do.cond38
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5248
  %19 = load ptr, ptr %res.addr, align 8, !dbg !5248
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef @.str.8, ptr noundef %19) #9, !dbg !5248
  %call40 = call ptr @ERR_PTR(i64 noundef -12) #7, !dbg !5253
  store ptr %call40, ptr %retval, align 8, !dbg !5254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5254

if.end41:                                         ; preds = %if.end34
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !5255
  %21 = load ptr, ptr %res.addr, align 8, !dbg !5255
  %start = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 0, !dbg !5255
  %22 = load i64, ptr %start, align 8, !dbg !5255
  %23 = load i64, ptr %size, align 8, !dbg !5255
  %24 = load ptr, ptr %pretty_name, align 8, !dbg !5255
  %call42 = call ptr @__devm_request_region(ptr noundef %20, ptr noundef @iomem_resource, i64 noundef %22, i64 noundef %23, ptr noundef %24) #7, !dbg !5255
  %tobool43 = icmp ne ptr %call42, null, !dbg !5255
  br i1 %tobool43, label %if.end49, label %if.then44, !dbg !5257

if.then44:                                        ; preds = %if.end41
  br label %do.body45, !dbg !5258

do.body45:                                        ; preds = %if.then44
  br label %do.cond46, !dbg !5261

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !5261

do.end47:                                         ; preds = %do.cond46
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !5258
  %26 = load ptr, ptr %res.addr, align 8, !dbg !5258
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef @.str.9, ptr noundef %26) #9, !dbg !5258
  %call48 = call ptr @ERR_PTR(i64 noundef -16) #7, !dbg !5263
  store ptr %call48, ptr %retval, align 8, !dbg !5264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5264

if.end49:                                         ; preds = %if.end41
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5265
  %28 = load ptr, ptr %res.addr, align 8, !dbg !5266
  %start50 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 0, !dbg !5267
  %29 = load i64, ptr %start50, align 8, !dbg !5267
  %30 = load i64, ptr %size, align 8, !dbg !5268
  %31 = load i32, ptr %type.addr, align 4, !dbg !5269
  %call51 = call ptr @__devm_ioremap(ptr noundef %27, i64 noundef %29, i64 noundef %30, i32 noundef %31) #7, !dbg !5270
  store ptr %call51, ptr %dest_ptr, align 8, !dbg !5271
  %32 = load ptr, ptr %dest_ptr, align 8, !dbg !5272
  %tobool52 = icmp ne ptr %32, null, !dbg !5272
  br i1 %tobool52, label %if.end59, label %if.then53, !dbg !5274

if.then53:                                        ; preds = %if.end49
  br label %do.body54, !dbg !5275

do.body54:                                        ; preds = %if.then53
  br label %do.cond55, !dbg !5278

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !5278

do.end56:                                         ; preds = %do.cond55
  %33 = load ptr, ptr %dev.addr, align 8, !dbg !5275
  %34 = load ptr, ptr %res.addr, align 8, !dbg !5275
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef @.str.10, ptr noundef %34) #9, !dbg !5275
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !5280
  %36 = load ptr, ptr %res.addr, align 8, !dbg !5280
  %start57 = getelementptr inbounds %struct.resource, ptr %36, i32 0, i32 0, !dbg !5280
  %37 = load i64, ptr %start57, align 8, !dbg !5280
  %38 = load i64, ptr %size, align 8, !dbg !5280
  call void @__devm_release_region(ptr noundef %35, ptr noundef @iomem_resource, i64 noundef %37, i64 noundef %38) #7, !dbg !5280
  %call58 = call ptr @ERR_PTR(i64 noundef -12) #7, !dbg !5281
  store ptr %call58, ptr %dest_ptr, align 8, !dbg !5282
  br label %if.end59, !dbg !5283

if.end59:                                         ; preds = %do.end56, %if.end49
  %39 = load ptr, ptr %dest_ptr, align 8, !dbg !5284
  store ptr %39, ptr %retval, align 8, !dbg !5285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5285

cleanup:                                          ; preds = %if.end59, %do.end47, %do.end39, %do.end18
  call void @llvm.lifetime.end.p0(i64 8, ptr %pretty_name) #8, !dbg !5286
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest_ptr) #8, !dbg !5286
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !5286
  %40 = load ptr, ptr %retval, align 8, !dbg !5286
  ret ptr %40, !dbg !5286
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_ioremap_resource_wc(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !5287 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5289, metadata !DIExpression()), !dbg !5291
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5290, metadata !DIExpression()), !dbg !5292
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5293
  %1 = load ptr, ptr %res.addr, align 8, !dbg !5294
  %call = call ptr @__devm_ioremap_resource(ptr noundef %0, ptr noundef %1, i32 noundef 2) #7, !dbg !5295
  ret ptr %call, !dbg !5296
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_of_iomap(ptr noundef %dev, ptr noundef %node, i32 noundef %index, ptr noundef %size) #0 align 16 !dbg !5297 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %size.addr = alloca ptr, align 8
  %res = alloca %struct.resource, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5302, metadata !DIExpression()), !dbg !5307
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5303, metadata !DIExpression()), !dbg !5308
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5304, metadata !DIExpression()), !dbg !5309
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5305, metadata !DIExpression()), !dbg !5310
  call void @llvm.lifetime.start.p0(i64 64, ptr %res) #8, !dbg !5311
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5306, metadata !DIExpression()), !dbg !5312
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5313
  %1 = load i32, ptr %index.addr, align 4, !dbg !5315
  %call = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef %1, ptr noundef %res) #7, !dbg !5316
  %tobool = icmp ne i32 %call, 0, !dbg !5316
  br i1 %tobool, label %if.then, label %if.end, !dbg !5317

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -22) #7, !dbg !5318
  store ptr %call1, ptr %retval, align 8, !dbg !5319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5319

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %size.addr, align 8, !dbg !5320
  %tobool2 = icmp ne ptr %2, null, !dbg !5320
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5322

if.then3:                                         ; preds = %if.end
  %call4 = call i64 @resource_size(ptr noundef %res) #7, !dbg !5323
  %3 = load ptr, ptr %size.addr, align 8, !dbg !5324
  store i64 %call4, ptr %3, align 8, !dbg !5325
  br label %if.end5, !dbg !5326

if.end5:                                          ; preds = %if.then3, %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5327
  %call6 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %res) #7, !dbg !5328
  store ptr %call6, ptr %retval, align 8, !dbg !5329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5329

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %res) #8, !dbg !5330
  %5 = load ptr, ptr %retval, align 8, !dbg !5330
  ret ptr %5, !dbg !5330
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @of_address_to_resource(ptr noundef %dev, i32 noundef %index, ptr noundef %r) #5 align 16 !dbg !5331 {
entry:
  %dev.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5336, metadata !DIExpression()), !dbg !5339
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5337, metadata !DIExpression()), !dbg !5340
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5338, metadata !DIExpression()), !dbg !5341
  ret i32 -22, !dbg !5342
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5343 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  %0 = load i64, ptr %error.addr, align 8, !dbg !5350
  %1 = inttoptr i64 %0 to ptr, !dbg !5351
  ret ptr %1, !dbg !5352
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #5 align 16 !dbg !5353 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5359
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !5360
  %1 = load i64, ptr %end, align 8, !dbg !5360
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5361
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !5362
  %3 = load i64, ptr %start, align 8, !dbg !5362
  %sub = sub i64 %1, %3, !dbg !5363
  %add = add i64 %sub, 1, !dbg !5364
  ret i64 %add, !dbg !5365
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_ioport_map(ptr noundef %dev, i64 noundef %port, i32 noundef %nr) #0 align 16 !dbg !5366 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %port.addr = alloca i64, align 8
  %nr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5370, metadata !DIExpression()), !dbg !5375
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5371, metadata !DIExpression()), !dbg !5376
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5372, metadata !DIExpression()), !dbg !5377
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #8, !dbg !5378
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !5373, metadata !DIExpression()), !dbg !5379
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #8, !dbg !5378
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5374, metadata !DIExpression()), !dbg !5380
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5381
  %call = call i32 @dev_to_node(ptr noundef %0) #7, !dbg !5381
  %call1 = call noalias ptr @__devres_alloc_node(ptr noundef @devm_ioport_map_release, i64 noundef 8, i32 noundef 3264, i32 noundef %call, ptr noundef @.str.1) #7, !dbg !5381
  store ptr %call1, ptr %ptr, align 8, !dbg !5382
  %1 = load ptr, ptr %ptr, align 8, !dbg !5383
  %tobool = icmp ne ptr %1, null, !dbg !5383
  br i1 %tobool, label %if.end, label %if.then, !dbg !5385

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5386

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %port.addr, align 8, !dbg !5387
  %3 = load i32, ptr %nr.addr, align 4, !dbg !5388
  %call2 = call ptr @ioport_map(i64 noundef %2, i32 noundef %3) #7, !dbg !5389
  store ptr %call2, ptr %addr, align 8, !dbg !5390
  %4 = load ptr, ptr %addr, align 8, !dbg !5391
  %tobool3 = icmp ne ptr %4, null, !dbg !5391
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5393

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %addr, align 8, !dbg !5394
  %6 = load ptr, ptr %ptr, align 8, !dbg !5396
  store ptr %5, ptr %6, align 8, !dbg !5397
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5398
  %8 = load ptr, ptr %ptr, align 8, !dbg !5399
  call void @devres_add(ptr noundef %7, ptr noundef %8) #7, !dbg !5400
  br label %if.end5, !dbg !5401

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %ptr, align 8, !dbg !5402
  call void @devres_free(ptr noundef %9) #7, !dbg !5403
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %10 = load ptr, ptr %addr, align 8, !dbg !5404
  store ptr %10, ptr %retval, align 8, !dbg !5405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5405

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #8, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #8, !dbg !5406
  %11 = load ptr, ptr %retval, align 8, !dbg !5406
  ret ptr %11, !dbg !5406
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5407 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_ioport_map_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !5410 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5412, metadata !DIExpression()), !dbg !5414
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5413, metadata !DIExpression()), !dbg !5415
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5416
  %1 = load ptr, ptr %0, align 8, !dbg !5417
  call void @ioport_unmap(ptr noundef %1) #7, !dbg !5418
  ret void, !dbg !5419
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_to_node(ptr noundef %dev) #5 align 16 !dbg !5420 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5424
  %numa_node = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25, !dbg !5425
  %1 = load i32, ptr %numa_node, align 8, !dbg !5425
  ret i32 %1, !dbg !5426
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5427 dso_local ptr @ioport_map(i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5431 dso_local void @devres_add(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5432 dso_local void @devres_free(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devm_ioport_unmap(ptr noundef %dev, ptr noundef %addr) #0 align 16 !dbg !5433 {
entry:
  %dev.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5435, metadata !DIExpression()), !dbg !5442
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5436, metadata !DIExpression()), !dbg !5443
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5444
  call void @ioport_unmap(ptr noundef %0) #7, !dbg !5445
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5446
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5437, metadata !DIExpression()), !dbg !5446
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5446
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5446
  %call = call i32 @devres_destroy(ptr noundef %1, ptr noundef @devm_ioport_map_release, ptr noundef @devm_ioport_map_match, ptr noundef %2) #7, !dbg !5446
  %tobool = icmp ne i32 %call, 0, !dbg !5446
  %lnot = xor i1 %tobool, true, !dbg !5446
  %lnot1 = xor i1 %lnot, true, !dbg !5446
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5446
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5446
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5447
  %tobool2 = icmp ne i32 %3, 0, !dbg !5447
  %lnot3 = xor i1 %tobool2, true, !dbg !5447
  %lnot5 = xor i1 %lnot3, true, !dbg !5447
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5447
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5447
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5447
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5447
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5446

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5447

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !5448
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5439, metadata !DIExpression()), !dbg !5448
  store i32 2305, ptr %__flags, align 4, !dbg !5448
  br label %do.body8, !dbg !5448

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5449

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5449

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5448

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5451
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 309, i32 %4, i64 12) #8, !dbg !5451, !srcloc !5453
  br label %do.cond10, !dbg !5451

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5451

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5448

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5454

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5454

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !5447
  br label %do.cond15, !dbg !5448

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5448

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5448

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5446
  %tobool17 = icmp ne i32 %5, 0, !dbg !5446
  %lnot18 = xor i1 %tobool17, true, !dbg !5446
  %lnot20 = xor i1 %lnot18, true, !dbg !5446
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5446
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5446
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5446
  store i64 %expval23, ptr %tmp, align 8, !dbg !5447
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5456
  %6 = load i64, ptr %tmp, align 8, !dbg !5446
  ret void, !dbg !5457
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5458 dso_local void @ioport_unmap(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devm_ioport_map_match(ptr noundef %dev, ptr noundef %res, ptr noundef %match_data) #0 align 16 !dbg !5459 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %match_data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5461, metadata !DIExpression()), !dbg !5464
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5462, metadata !DIExpression()), !dbg !5465
  store ptr %match_data, ptr %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match_data.addr, metadata !5463, metadata !DIExpression()), !dbg !5466
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5467
  %1 = load ptr, ptr %0, align 8, !dbg !5468
  %2 = load ptr, ptr %match_data.addr, align 8, !dbg !5469
  %cmp = icmp eq ptr %1, %2, !dbg !5470
  %conv = zext i1 %cmp to i32, !dbg !5470
  ret i32 %conv, !dbg !5471
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pcim_iomap_table(ptr noundef %pdev) #0 align 16 !dbg !5472 {
entry:
  %retval = alloca ptr, align 8
  %pdev.addr = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %new_dr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5478, metadata !DIExpression()), !dbg !5486
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #8, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !5479, metadata !DIExpression()), !dbg !5488
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_dr) #8, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %new_dr, metadata !5485, metadata !DIExpression()), !dbg !5489
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5490
  %dev = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !5491
  %call = call ptr @devres_find(ptr noundef %dev, ptr noundef @pcim_iomap_release, ptr noundef null, ptr noundef null) #7, !dbg !5492
  store ptr %call, ptr %dr, align 8, !dbg !5493
  %1 = load ptr, ptr %dr, align 8, !dbg !5494
  %tobool = icmp ne ptr %1, null, !dbg !5494
  br i1 %tobool, label %if.then, label %if.end, !dbg !5496

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dr, align 8, !dbg !5497
  %table = getelementptr inbounds %struct.pcim_iomap_devres, ptr %2, i32 0, i32 0, !dbg !5498
  %arraydecay = getelementptr inbounds [6 x ptr], ptr %table, i64 0, i64 0, !dbg !5497
  store ptr %arraydecay, ptr %retval, align 8, !dbg !5499
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5499

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5500
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5500
  %call2 = call i32 @dev_to_node(ptr noundef %dev1) #7, !dbg !5500
  %call3 = call noalias ptr @__devres_alloc_node(ptr noundef @pcim_iomap_release, i64 noundef 48, i32 noundef 3264, i32 noundef %call2, ptr noundef @.str.2) #7, !dbg !5500
  store ptr %call3, ptr %new_dr, align 8, !dbg !5501
  %4 = load ptr, ptr %new_dr, align 8, !dbg !5502
  %tobool4 = icmp ne ptr %4, null, !dbg !5502
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5504

if.then5:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5505

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5506
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 37, !dbg !5507
  %6 = load ptr, ptr %new_dr, align 8, !dbg !5508
  %call8 = call ptr @devres_get(ptr noundef %dev7, ptr noundef %6, ptr noundef null, ptr noundef null) #7, !dbg !5509
  store ptr %call8, ptr %dr, align 8, !dbg !5510
  %7 = load ptr, ptr %dr, align 8, !dbg !5511
  %table9 = getelementptr inbounds %struct.pcim_iomap_devres, ptr %7, i32 0, i32 0, !dbg !5512
  %arraydecay10 = getelementptr inbounds [6 x ptr], ptr %table9, i64 0, i64 0, !dbg !5511
  store ptr %arraydecay10, ptr %retval, align 8, !dbg !5513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5513

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_dr) #8, !dbg !5514
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #8, !dbg !5514
  %8 = load ptr, ptr %retval, align 8, !dbg !5514
  ret ptr %8, !dbg !5514
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5515 dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcim_iomap_release(ptr noundef %gendev, ptr noundef %res) #0 align 16 !dbg !5518 {
entry:
  %gendev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %this = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %gendev, ptr %gendev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gendev.addr, metadata !5520, metadata !DIExpression()), !dbg !5527
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5521, metadata !DIExpression()), !dbg !5528
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5522, metadata !DIExpression()), !dbg !5530
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5523, metadata !DIExpression()), !dbg !5531
  %0 = load ptr, ptr %gendev.addr, align 8, !dbg !5531
  store ptr %0, ptr %__mptr, align 8, !dbg !5531
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5531
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !5531
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5531
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5532
  %2 = load ptr, ptr %tmp, align 8, !dbg !5531
  store ptr %2, ptr %dev, align 8, !dbg !5530
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #8, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %this, metadata !5525, metadata !DIExpression()), !dbg !5534
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5535
  store ptr %3, ptr %this, align 8, !dbg !5534
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !5536
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5526, metadata !DIExpression()), !dbg !5537
  store i32 0, ptr %i, align 4, !dbg !5538
  br label %for.cond, !dbg !5540

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !5541
  %cmp = icmp slt i32 %4, 6, !dbg !5543
  br i1 %cmp, label %for.body, label %for.end, !dbg !5544

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %this, align 8, !dbg !5545
  %table = getelementptr inbounds %struct.pcim_iomap_devres, ptr %5, i32 0, i32 0, !dbg !5547
  %6 = load i32, ptr %i, align 4, !dbg !5548
  %idxprom = sext i32 %6 to i64, !dbg !5545
  %arrayidx = getelementptr [6 x ptr], ptr %table, i64 0, i64 %idxprom, !dbg !5545
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !5545
  %tobool = icmp ne ptr %7, null, !dbg !5545
  br i1 %tobool, label %if.then, label %if.end, !dbg !5549

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %dev, align 8, !dbg !5550
  %9 = load ptr, ptr %this, align 8, !dbg !5551
  %table1 = getelementptr inbounds %struct.pcim_iomap_devres, ptr %9, i32 0, i32 0, !dbg !5552
  %10 = load i32, ptr %i, align 4, !dbg !5553
  %idxprom2 = sext i32 %10 to i64, !dbg !5551
  %arrayidx3 = getelementptr [6 x ptr], ptr %table1, i64 0, i64 %idxprom2, !dbg !5551
  %11 = load ptr, ptr %arrayidx3, align 8, !dbg !5551
  call void @pci_iounmap(ptr noundef %8, ptr noundef %11) #7, !dbg !5554
  br label %if.end, !dbg !5554

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5555

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !5556
  %inc = add i32 %12, 1, !dbg !5556
  store i32 %inc, ptr %i, align 4, !dbg !5556
  br label %for.cond, !dbg !5557, !llvm.loop !5558

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !5562
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #8, !dbg !5562
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !5562
  ret void, !dbg !5562
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5563 dso_local ptr @devres_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pcim_iomap(ptr noundef %pdev, i32 noundef %bar, i64 noundef %maxlen) #0 align 16 !dbg !5566 {
entry:
  %retval = alloca ptr, align 8
  %pdev.addr = alloca ptr, align 8
  %bar.addr = alloca i32, align 4
  %maxlen.addr = alloca i64, align 8
  %tbl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5570, metadata !DIExpression()), !dbg !5574
  store i32 %bar, ptr %bar.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bar.addr, metadata !5571, metadata !DIExpression()), !dbg !5575
  store i64 %maxlen, ptr %maxlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxlen.addr, metadata !5572, metadata !DIExpression()), !dbg !5576
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #8, !dbg !5577
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !5573, metadata !DIExpression()), !dbg !5578
  br label %do.body, !dbg !5579

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %bar.addr, align 4, !dbg !5580
  %cmp = icmp sge i32 %0, 6, !dbg !5580
  %lnot = xor i1 %cmp, true, !dbg !5580
  %lnot1 = xor i1 %lnot, true, !dbg !5580
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5580
  %conv = sext i32 %lnot.ext to i64, !dbg !5580
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5580
  %tobool = icmp ne i64 %expval, 0, !dbg !5580
  br i1 %tobool, label %if.then, label %if.end, !dbg !5583

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !5580

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !5584

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !5586

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5586

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !5584

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 378, i32 0, i64 12) #8, !dbg !5588, !srcloc !5590
  br label %do.cond5, !dbg !5588

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5588

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !5584

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !5584

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !5584

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !5583

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !5583

do.end10:                                         ; preds = %do.cond9
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5591
  %call = call ptr @pcim_iomap_table(ptr noundef %1) #7, !dbg !5592
  store ptr %call, ptr %tbl, align 8, !dbg !5593
  %2 = load ptr, ptr %tbl, align 8, !dbg !5594
  %tobool11 = icmp ne ptr %2, null, !dbg !5594
  br i1 %tobool11, label %lor.lhs.false, label %if.then13, !dbg !5596

lor.lhs.false:                                    ; preds = %do.end10
  %3 = load ptr, ptr %tbl, align 8, !dbg !5597
  %4 = load i32, ptr %bar.addr, align 4, !dbg !5598
  %idxprom = sext i32 %4 to i64, !dbg !5597
  %arrayidx = getelementptr ptr, ptr %3, i64 %idxprom, !dbg !5597
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !5597
  %tobool12 = icmp ne ptr %5, null, !dbg !5597
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5599

if.then13:                                        ; preds = %lor.lhs.false, %do.end10
  store ptr null, ptr %retval, align 8, !dbg !5600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5600

if.end14:                                         ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pdev.addr, align 8, !dbg !5601
  %7 = load i32, ptr %bar.addr, align 4, !dbg !5602
  %8 = load i64, ptr %maxlen.addr, align 8, !dbg !5603
  %call15 = call ptr @pci_iomap(ptr noundef %6, i32 noundef %7, i64 noundef %8) #7, !dbg !5604
  %9 = load ptr, ptr %tbl, align 8, !dbg !5605
  %10 = load i32, ptr %bar.addr, align 4, !dbg !5606
  %idxprom16 = sext i32 %10 to i64, !dbg !5605
  %arrayidx17 = getelementptr ptr, ptr %9, i64 %idxprom16, !dbg !5605
  store ptr %call15, ptr %arrayidx17, align 8, !dbg !5607
  %11 = load ptr, ptr %tbl, align 8, !dbg !5608
  %12 = load i32, ptr %bar.addr, align 4, !dbg !5609
  %idxprom18 = sext i32 %12 to i64, !dbg !5608
  %arrayidx19 = getelementptr ptr, ptr %11, i64 %idxprom18, !dbg !5608
  %13 = load ptr, ptr %arrayidx19, align 8, !dbg !5608
  store ptr %13, ptr %retval, align 8, !dbg !5610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5610

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #8, !dbg !5611
  %14 = load ptr, ptr %retval, align 8, !dbg !5611
  ret ptr %14, !dbg !5611
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5612 dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcim_iounmap(ptr noundef %pdev, ptr noundef %addr) #0 align 16 !dbg !5614 {
entry:
  %pdev.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5618, metadata !DIExpression()), !dbg !5627
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5619, metadata !DIExpression()), !dbg !5628
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #8, !dbg !5629
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !5620, metadata !DIExpression()), !dbg !5630
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5621, metadata !DIExpression()), !dbg !5632
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5633
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5634
  call void @pci_iounmap(ptr noundef %0, ptr noundef %1) #7, !dbg !5635
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5636
  %call = call ptr @pcim_iomap_table(ptr noundef %2) #7, !dbg !5637
  store ptr %call, ptr %tbl, align 8, !dbg !5638
  br label %do.body, !dbg !5639

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %tbl, align 8, !dbg !5640
  %tobool = icmp ne ptr %3, null, !dbg !5640
  %lnot = xor i1 %tobool, true, !dbg !5640
  %lnot1 = xor i1 %lnot, true, !dbg !5640
  %lnot2 = xor i1 %lnot1, true, !dbg !5640
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5640
  %conv = sext i32 %lnot.ext to i64, !dbg !5640
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5640
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5640
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5643

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !5640

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !5644

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !5646

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5646

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5644

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 404, i32 0, i64 12) #8, !dbg !5648, !srcloc !5650
  br label %do.cond7, !dbg !5648

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5648

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !5644

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !5644

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !5644

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !5643

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !5643

do.end12:                                         ; preds = %do.cond11
  store i32 0, ptr %i, align 4, !dbg !5651
  br label %for.cond, !dbg !5653

for.cond:                                         ; preds = %for.inc, %do.end12
  %4 = load i32, ptr %i, align 4, !dbg !5654
  %cmp = icmp slt i32 %4, 6, !dbg !5656
  br i1 %cmp, label %for.body, label %for.end, !dbg !5657

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %tbl, align 8, !dbg !5658
  %6 = load i32, ptr %i, align 4, !dbg !5660
  %idxprom = sext i32 %6 to i64, !dbg !5658
  %arrayidx = getelementptr ptr, ptr %5, i64 %idxprom, !dbg !5658
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !5658
  %8 = load ptr, ptr %addr.addr, align 8, !dbg !5661
  %cmp14 = icmp eq ptr %7, %8, !dbg !5662
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !5663

if.then16:                                        ; preds = %for.body
  %9 = load ptr, ptr %tbl, align 8, !dbg !5664
  %10 = load i32, ptr %i, align 4, !dbg !5666
  %idxprom17 = sext i32 %10 to i64, !dbg !5664
  %arrayidx18 = getelementptr ptr, ptr %9, i64 %idxprom17, !dbg !5664
  store ptr null, ptr %arrayidx18, align 8, !dbg !5667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5668

if.end19:                                         ; preds = %for.body
  br label %for.inc, !dbg !5661

for.inc:                                          ; preds = %if.end19
  %11 = load i32, ptr %i, align 4, !dbg !5669
  %inc = add i32 %11, 1, !dbg !5669
  store i32 %inc, ptr %i, align 4, !dbg !5669
  br label %for.cond, !dbg !5670, !llvm.loop !5671

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5673
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5622, metadata !DIExpression()), !dbg !5673
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5673
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5674
  %tobool20 = icmp ne i32 %12, 0, !dbg !5674
  %lnot21 = xor i1 %tobool20, true, !dbg !5674
  %lnot23 = xor i1 %lnot21, true, !dbg !5674
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !5674
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !5674
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !5674
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !5674
  br i1 %tobool27, label %if.then28, label %if.end41, !dbg !5673

if.then28:                                        ; preds = %for.end
  br label %do.body29, !dbg !5674

do.body29:                                        ; preds = %if.then28
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !5675
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5624, metadata !DIExpression()), !dbg !5675
  store i32 2305, ptr %__flags, align 4, !dbg !5675
  br label %do.body30, !dbg !5675

do.body30:                                        ; preds = %do.body29
  br label %do.cond31, !dbg !5676

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !5676

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !5675

do.body33:                                        ; preds = %do.end32
  %13 = load i32, ptr %__flags, align 4, !dbg !5678
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 411, i32 %13, i64 12) #8, !dbg !5678, !srcloc !5680
  br label %do.cond34, !dbg !5678

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5678

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !5675

do.body36:                                        ; preds = %do.end35
  br label %do.cond37, !dbg !5681

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !5681

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !5674
  br label %do.cond39, !dbg !5675

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !5675

do.end40:                                         ; preds = %do.cond39
  br label %if.end41, !dbg !5675

if.end41:                                         ; preds = %do.end40, %for.end
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5673
  %tobool42 = icmp ne i32 %14, 0, !dbg !5673
  %lnot43 = xor i1 %tobool42, true, !dbg !5673
  %lnot45 = xor i1 %lnot43, true, !dbg !5673
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !5673
  %conv47 = sext i32 %lnot.ext46 to i64, !dbg !5673
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 0), !dbg !5673
  store i64 %expval48, ptr %tmp, align 8, !dbg !5674
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5683
  %15 = load i64, ptr %tmp, align 8, !dbg !5673
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5684
  br label %cleanup, !dbg !5684

cleanup:                                          ; preds = %if.end41, %if.then16
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !5684
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #8, !dbg !5684
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5684

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5685 dso_local void @pci_iounmap(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef %mask, ptr noundef %name) #0 align 16 !dbg !5686 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %iomap = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %len = alloca i64, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5690, metadata !DIExpression()), !dbg !5702
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5691, metadata !DIExpression()), !dbg !5703
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5692, metadata !DIExpression()), !dbg !5704
  call void @llvm.lifetime.start.p0(i64 8, ptr %iomap) #8, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %iomap, metadata !5693, metadata !DIExpression()), !dbg !5706
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !5707
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5694, metadata !DIExpression()), !dbg !5708
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #8, !dbg !5707
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5695, metadata !DIExpression()), !dbg !5709
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5710
  %call = call ptr @pcim_iomap_table(ptr noundef %0) #7, !dbg !5711
  store ptr %call, ptr %iomap, align 8, !dbg !5712
  %1 = load ptr, ptr %iomap, align 8, !dbg !5713
  %tobool = icmp ne ptr %1, null, !dbg !5713
  br i1 %tobool, label %if.end, label %if.then, !dbg !5715

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !5716

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5717
  br label %for.cond, !dbg !5718

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !5719
  %cmp = icmp slt i32 %2, 11, !dbg !5720
  br i1 %cmp, label %for.body, label %for.end, !dbg !5721

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !5722
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5696, metadata !DIExpression()), !dbg !5723
  %3 = load i32, ptr %mask.addr, align 4, !dbg !5724
  %4 = load i32, ptr %i, align 4, !dbg !5726
  %shl = shl i32 1, %4, !dbg !5727
  %and = and i32 %3, %shl, !dbg !5728
  %tobool1 = icmp ne i32 %and, 0, !dbg !5728
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5729

if.then2:                                         ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5730

if.end3:                                          ; preds = %for.body
  store i32 -22, ptr %rc, align 4, !dbg !5731
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5732
  %resource = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 40, !dbg !5732
  %6 = load i32, ptr %i, align 4, !dbg !5732
  %idxprom = sext i32 %6 to i64, !dbg !5732
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !5732
  %end = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 1, !dbg !5732
  %7 = load i64, ptr %end, align 8, !dbg !5732
  %tobool4 = icmp ne i64 %7, 0, !dbg !5732
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !5732

cond.true:                                        ; preds = %if.end3
  %8 = load ptr, ptr %pdev.addr, align 8, !dbg !5732
  %resource5 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 40, !dbg !5732
  %9 = load i32, ptr %i, align 4, !dbg !5732
  %idxprom6 = sext i32 %9 to i64, !dbg !5732
  %arrayidx7 = getelementptr [11 x %struct.resource], ptr %resource5, i64 0, i64 %idxprom6, !dbg !5732
  %call8 = call i64 @resource_size(ptr noundef %arrayidx7) #7, !dbg !5732
  br label %cond.end, !dbg !5732

cond.false:                                       ; preds = %if.end3
  br label %cond.end, !dbg !5732

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call8, %cond.true ], [ 0, %cond.false ], !dbg !5732
  store i64 %cond, ptr %len, align 8, !dbg !5733
  %10 = load i64, ptr %len, align 8, !dbg !5734
  %tobool9 = icmp ne i64 %10, 0, !dbg !5734
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5736

if.then10:                                        ; preds = %cond.end
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5737

if.end11:                                         ; preds = %cond.end
  %11 = load ptr, ptr %pdev.addr, align 8, !dbg !5738
  %12 = load i32, ptr %i, align 4, !dbg !5739
  %13 = load ptr, ptr %name.addr, align 8, !dbg !5740
  %call12 = call i32 @pci_request_region(ptr noundef %11, i32 noundef %12, ptr noundef %13) #7, !dbg !5741
  store i32 %call12, ptr %rc, align 4, !dbg !5742
  %14 = load i32, ptr %rc, align 4, !dbg !5743
  %tobool13 = icmp ne i32 %14, 0, !dbg !5743
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5745

if.then14:                                        ; preds = %if.end11
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5746

if.end15:                                         ; preds = %if.end11
  store i32 -12, ptr %rc, align 4, !dbg !5747
  %15 = load ptr, ptr %pdev.addr, align 8, !dbg !5748
  %16 = load i32, ptr %i, align 4, !dbg !5750
  %call16 = call ptr @pcim_iomap(ptr noundef %15, i32 noundef %16, i64 noundef 0) #7, !dbg !5751
  %tobool17 = icmp ne ptr %call16, null, !dbg !5751
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5752

if.then18:                                        ; preds = %if.end15
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5753

if.end19:                                         ; preds = %if.end15
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5754
  br label %cleanup, !dbg !5754

cleanup:                                          ; preds = %if.then18, %if.then14, %if.then10, %if.end19, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !5754
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup28 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 6, label %err_region
    i32 5, label %err_inval
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5755

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %17 = load i32, ptr %i, align 4, !dbg !5756
  %inc = add i32 %17, 1, !dbg !5756
  store i32 %inc, ptr %i, align 4, !dbg !5756
  br label %for.cond, !dbg !5757, !llvm.loop !5758

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !5760

err_region:                                       ; preds = %cleanup
  call void @llvm.dbg.label(metadata !5700), !dbg !5761
  %18 = load ptr, ptr %pdev.addr, align 8, !dbg !5762
  %19 = load i32, ptr %i, align 4, !dbg !5763
  call void @pci_release_region(ptr noundef %18, i32 noundef %19) #7, !dbg !5764
  br label %err_inval, !dbg !5764

err_inval:                                        ; preds = %err_region, %cleanup
  call void @llvm.dbg.label(metadata !5701), !dbg !5765
  br label %while.cond, !dbg !5766

while.cond:                                       ; preds = %if.end25, %if.then24, %err_inval
  %20 = load i32, ptr %i, align 4, !dbg !5767
  %dec = add i32 %20, -1, !dbg !5767
  store i32 %dec, ptr %i, align 4, !dbg !5767
  %cmp20 = icmp sge i32 %dec, 0, !dbg !5768
  br i1 %cmp20, label %while.body, label %while.end, !dbg !5766

while.body:                                       ; preds = %while.cond
  %21 = load i32, ptr %mask.addr, align 4, !dbg !5769
  %22 = load i32, ptr %i, align 4, !dbg !5772
  %shl21 = shl i32 1, %22, !dbg !5773
  %and22 = and i32 %21, %shl21, !dbg !5774
  %tobool23 = icmp ne i32 %and22, 0, !dbg !5774
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !5775

if.then24:                                        ; preds = %while.body
  br label %while.cond, !dbg !5776, !llvm.loop !5777

if.end25:                                         ; preds = %while.body
  %23 = load ptr, ptr %pdev.addr, align 8, !dbg !5779
  %24 = load ptr, ptr %iomap, align 8, !dbg !5780
  %25 = load i32, ptr %i, align 4, !dbg !5781
  %idxprom26 = sext i32 %25 to i64, !dbg !5780
  %arrayidx27 = getelementptr ptr, ptr %24, i64 %idxprom26, !dbg !5780
  %26 = load ptr, ptr %arrayidx27, align 8, !dbg !5780
  call void @pcim_iounmap(ptr noundef %23, ptr noundef %26) #7, !dbg !5782
  %27 = load ptr, ptr %pdev.addr, align 8, !dbg !5783
  %28 = load i32, ptr %i, align 4, !dbg !5784
  call void @pci_release_region(ptr noundef %27, i32 noundef %28) #7, !dbg !5785
  br label %while.cond, !dbg !5766, !llvm.loop !5777

while.end:                                        ; preds = %while.cond
  %29 = load i32, ptr %rc, align 4, !dbg !5786
  store i32 %29, ptr %retval, align 4, !dbg !5787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !5787

cleanup28:                                        ; preds = %while.end, %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #8, !dbg !5788
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !5788
  call void @llvm.lifetime.end.p0(i64 8, ptr %iomap) #8, !dbg !5788
  %30 = load i32, ptr %retval, align 4, !dbg !5788
  ret i32 %30, !dbg !5788
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5789 dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5790 dso_local void @pci_release_region(ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pcim_iomap_regions_request_all(ptr noundef %pdev, i32 noundef %mask, ptr noundef %name) #0 align 16 !dbg !5793 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %request_mask = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5795, metadata !DIExpression()), !dbg !5800
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5796, metadata !DIExpression()), !dbg !5801
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5797, metadata !DIExpression()), !dbg !5802
  call void @llvm.lifetime.start.p0(i64 4, ptr %request_mask) #8, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %request_mask, metadata !5798, metadata !DIExpression()), !dbg !5804
  %0 = load i32, ptr %mask.addr, align 4, !dbg !5805
  %not = xor i32 %0, -1, !dbg !5806
  %and = and i32 63, %not, !dbg !5807
  store i32 %and, ptr %request_mask, align 4, !dbg !5804
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #8, !dbg !5808
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5799, metadata !DIExpression()), !dbg !5809
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5810
  %2 = load i32, ptr %request_mask, align 4, !dbg !5811
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5812
  %call = call i32 @pci_request_selected_regions(ptr noundef %1, i32 noundef %2, ptr noundef %3) #7, !dbg !5813
  store i32 %call, ptr %rc, align 4, !dbg !5814
  %4 = load i32, ptr %rc, align 4, !dbg !5815
  %tobool = icmp ne i32 %4, 0, !dbg !5815
  br i1 %tobool, label %if.then, label %if.end, !dbg !5817

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %rc, align 4, !dbg !5818
  store i32 %5, ptr %retval, align 4, !dbg !5819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5819

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pdev.addr, align 8, !dbg !5820
  %7 = load i32, ptr %mask.addr, align 4, !dbg !5821
  %8 = load ptr, ptr %name.addr, align 8, !dbg !5822
  %call1 = call i32 @pcim_iomap_regions(ptr noundef %6, i32 noundef %7, ptr noundef %8) #7, !dbg !5823
  store i32 %call1, ptr %rc, align 4, !dbg !5824
  %9 = load i32, ptr %rc, align 4, !dbg !5825
  %tobool2 = icmp ne i32 %9, 0, !dbg !5825
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5827

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %pdev.addr, align 8, !dbg !5828
  %11 = load i32, ptr %request_mask, align 4, !dbg !5829
  call void @pci_release_selected_regions(ptr noundef %10, i32 noundef %11) #7, !dbg !5830
  br label %if.end4, !dbg !5830

if.end4:                                          ; preds = %if.then3, %if.end
  %12 = load i32, ptr %rc, align 4, !dbg !5831
  store i32 %12, ptr %retval, align 4, !dbg !5832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5832

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #8, !dbg !5833
  call void @llvm.lifetime.end.p0(i64 4, ptr %request_mask) #8, !dbg !5833
  %13 = load i32, ptr %retval, align 4, !dbg !5833
  ret i32 %13, !dbg !5833
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5834 dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5835 dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcim_iounmap_regions(ptr noundef %pdev, i32 noundef %mask) #0 align 16 !dbg !5836 {
entry:
  %pdev.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %iomap = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5838, metadata !DIExpression()), !dbg !5842
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5839, metadata !DIExpression()), !dbg !5843
  call void @llvm.lifetime.start.p0(i64 8, ptr %iomap) #8, !dbg !5844
  call void @llvm.dbg.declare(metadata ptr %iomap, metadata !5840, metadata !DIExpression()), !dbg !5845
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !5846
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5841, metadata !DIExpression()), !dbg !5847
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5848
  %call = call ptr @pcim_iomap_table(ptr noundef %0) #7, !dbg !5849
  store ptr %call, ptr %iomap, align 8, !dbg !5850
  %1 = load ptr, ptr %iomap, align 8, !dbg !5851
  %tobool = icmp ne ptr %1, null, !dbg !5851
  br i1 %tobool, label %if.end, label %if.then, !dbg !5853

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5854

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5855
  br label %for.cond, !dbg !5857

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !5858
  %cmp = icmp slt i32 %2, 6, !dbg !5860
  br i1 %cmp, label %for.body, label %for.end, !dbg !5861

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %mask.addr, align 4, !dbg !5862
  %4 = load i32, ptr %i, align 4, !dbg !5865
  %shl = shl i32 1, %4, !dbg !5866
  %and = and i32 %3, %shl, !dbg !5867
  %tobool1 = icmp ne i32 %and, 0, !dbg !5867
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5868

if.then2:                                         ; preds = %for.body
  br label %for.inc, !dbg !5869

if.end3:                                          ; preds = %for.body
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5870
  %6 = load ptr, ptr %iomap, align 8, !dbg !5871
  %7 = load i32, ptr %i, align 4, !dbg !5872
  %idxprom = sext i32 %7 to i64, !dbg !5871
  %arrayidx = getelementptr ptr, ptr %6, i64 %idxprom, !dbg !5871
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !5871
  call void @pcim_iounmap(ptr noundef %5, ptr noundef %8) #7, !dbg !5873
  %9 = load ptr, ptr %pdev.addr, align 8, !dbg !5874
  %10 = load i32, ptr %i, align 4, !dbg !5875
  call void @pci_release_region(ptr noundef %9, i32 noundef %10) #7, !dbg !5876
  br label %for.inc, !dbg !5877

for.inc:                                          ; preds = %if.end3, %if.then2
  %11 = load i32, ptr %i, align 4, !dbg !5878
  %inc = add i32 %11, 1, !dbg !5878
  store i32 %inc, ptr %i, align 4, !dbg !5878
  br label %for.cond, !dbg !5879, !llvm.loop !5880

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5882
  br label %cleanup, !dbg !5882

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !5882
  call void @llvm.lifetime.end.p0(i64 8, ptr %iomap) #8, !dbg !5882
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5882

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_arch_phys_wc_add(ptr noundef %dev, i64 noundef %base, i64 noundef %size) #0 align 16 !dbg !5883 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mtrr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5887, metadata !DIExpression()), !dbg !5892
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5888, metadata !DIExpression()), !dbg !5893
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5889, metadata !DIExpression()), !dbg !5894
  call void @llvm.lifetime.start.p0(i64 8, ptr %mtrr) #8, !dbg !5895
  call void @llvm.dbg.declare(metadata ptr %mtrr, metadata !5890, metadata !DIExpression()), !dbg !5896
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !5897
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5891, metadata !DIExpression()), !dbg !5898
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5899
  %call = call i32 @dev_to_node(ptr noundef %0) #7, !dbg !5899
  %call1 = call noalias ptr @__devres_alloc_node(ptr noundef @devm_arch_phys_ac_add_release, i64 noundef 4, i32 noundef 3264, i32 noundef %call, ptr noundef @.str.3) #7, !dbg !5899
  store ptr %call1, ptr %mtrr, align 8, !dbg !5900
  %1 = load ptr, ptr %mtrr, align 8, !dbg !5901
  %tobool = icmp ne ptr %1, null, !dbg !5901
  br i1 %tobool, label %if.end, label %if.then, !dbg !5903

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5904

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %base.addr, align 8, !dbg !5905
  %3 = load i64, ptr %size.addr, align 8, !dbg !5906
  %call2 = call i32 @arch_phys_wc_add(i64 noundef %2, i64 noundef %3) #7, !dbg !5907
  store i32 %call2, ptr %ret, align 4, !dbg !5908
  %4 = load i32, ptr %ret, align 4, !dbg !5909
  %cmp = icmp slt i32 %4, 0, !dbg !5911
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5912

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %mtrr, align 8, !dbg !5913
  call void @devres_free(ptr noundef %5) #7, !dbg !5915
  %6 = load i32, ptr %ret, align 4, !dbg !5916
  store i32 %6, ptr %retval, align 4, !dbg !5917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5917

if.end4:                                          ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !5918
  %8 = load ptr, ptr %mtrr, align 8, !dbg !5919
  store i32 %7, ptr %8, align 4, !dbg !5920
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5921
  %10 = load ptr, ptr %mtrr, align 8, !dbg !5922
  call void @devres_add(ptr noundef %9, ptr noundef %10) #7, !dbg !5923
  %11 = load i32, ptr %ret, align 4, !dbg !5924
  store i32 %11, ptr %retval, align 4, !dbg !5925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5925

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %mtrr) #8, !dbg !5926
  %12 = load i32, ptr %retval, align 4, !dbg !5926
  ret i32 %12, !dbg !5926
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_arch_phys_ac_add_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !5927 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5929, metadata !DIExpression()), !dbg !5931
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5930, metadata !DIExpression()), !dbg !5932
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5933
  %1 = load i32, ptr %0, align 4, !dbg !5934
  call void @arch_phys_wc_del(i32 noundef %1) #7, !dbg !5935
  ret void, !dbg !5936
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5937 dso_local i32 @arch_phys_wc_add(i64 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_arch_io_reserve_memtype_wc(ptr noundef %dev, i64 noundef %start, i64 noundef %size) #0 align 16 !dbg !5940 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5944, metadata !DIExpression()), !dbg !5954
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5945, metadata !DIExpression()), !dbg !5955
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5946, metadata !DIExpression()), !dbg !5956
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #8, !dbg !5957
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !5947, metadata !DIExpression()), !dbg !5958
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !5959
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5953, metadata !DIExpression()), !dbg !5960
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5961
  %call = call i32 @dev_to_node(ptr noundef %0) #7, !dbg !5961
  %call1 = call noalias ptr @__devres_alloc_node(ptr noundef @devm_arch_io_free_memtype_wc_release, i64 noundef 16, i32 noundef 3264, i32 noundef %call, ptr noundef @.str.4) #7, !dbg !5961
  store ptr %call1, ptr %dr, align 8, !dbg !5962
  %1 = load ptr, ptr %dr, align 8, !dbg !5963
  %tobool = icmp ne ptr %1, null, !dbg !5963
  br i1 %tobool, label %if.end, label %if.then, !dbg !5965

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5966

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %start.addr, align 8, !dbg !5967
  %3 = load i64, ptr %size.addr, align 8, !dbg !5968
  %call2 = call i32 @arch_io_reserve_memtype_wc(i64 noundef %2, i64 noundef %3) #7, !dbg !5969
  store i32 %call2, ptr %ret, align 4, !dbg !5970
  %4 = load i32, ptr %ret, align 4, !dbg !5971
  %cmp = icmp slt i32 %4, 0, !dbg !5973
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5974

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %dr, align 8, !dbg !5975
  call void @devres_free(ptr noundef %5) #7, !dbg !5977
  %6 = load i32, ptr %ret, align 4, !dbg !5978
  store i32 %6, ptr %retval, align 4, !dbg !5979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5979

if.end4:                                          ; preds = %if.end
  %7 = load i64, ptr %start.addr, align 8, !dbg !5980
  %8 = load ptr, ptr %dr, align 8, !dbg !5981
  %start5 = getelementptr inbounds %struct.arch_io_reserve_memtype_wc_devres, ptr %8, i32 0, i32 0, !dbg !5982
  store i64 %7, ptr %start5, align 8, !dbg !5983
  %9 = load i64, ptr %size.addr, align 8, !dbg !5984
  %10 = load ptr, ptr %dr, align 8, !dbg !5985
  %size6 = getelementptr inbounds %struct.arch_io_reserve_memtype_wc_devres, ptr %10, i32 0, i32 1, !dbg !5986
  store i64 %9, ptr %size6, align 8, !dbg !5987
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5988
  %12 = load ptr, ptr %dr, align 8, !dbg !5989
  call void @devres_add(ptr noundef %11, ptr noundef %12) #7, !dbg !5990
  %13 = load i32, ptr %ret, align 4, !dbg !5991
  store i32 %13, ptr %retval, align 4, !dbg !5992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5992

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !5993
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #8, !dbg !5993
  %14 = load i32, ptr %retval, align 4, !dbg !5993
  ret i32 %14, !dbg !5993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_arch_io_free_memtype_wc_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !5994 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %this = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5996, metadata !DIExpression()), !dbg !6001
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5997, metadata !DIExpression()), !dbg !6002
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #8, !dbg !6003
  call void @llvm.dbg.declare(metadata ptr %this, metadata !5998, metadata !DIExpression()), !dbg !6004
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6005
  store ptr %0, ptr %this, align 8, !dbg !6004
  %1 = load ptr, ptr %this, align 8, !dbg !6006
  %start = getelementptr inbounds %struct.arch_io_reserve_memtype_wc_devres, ptr %1, i32 0, i32 0, !dbg !6007
  %2 = load i64, ptr %start, align 8, !dbg !6007
  %3 = load ptr, ptr %this, align 8, !dbg !6008
  %size = getelementptr inbounds %struct.arch_io_reserve_memtype_wc_devres, ptr %3, i32 0, i32 1, !dbg !6009
  %4 = load i64, ptr %size, align 8, !dbg !6009
  call void @arch_io_free_memtype_wc(i64 noundef %2, i64 noundef %4) #7, !dbg !6010
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #8, !dbg !6011
  ret void, !dbg !6011
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6012 dso_local i32 @arch_io_reserve_memtype_wc(i64 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6015 dso_local ptr @ioremap(i64 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6018 dso_local ptr @ioremap_uc(i64 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6019 dso_local ptr @ioremap_wc(i64 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ioremap_np(i64 noundef %offset, i64 noundef %size) #5 align 16 !dbg !6020 {
entry:
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6025, metadata !DIExpression()), !dbg !6027
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6026, metadata !DIExpression()), !dbg !6028
  ret ptr null, !dbg !6029
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_type(ptr noundef %res) #5 align 16 !dbg !6030 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6034, metadata !DIExpression()), !dbg !6035
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6036
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !6037
  %1 = load i64, ptr %flags, align 8, !dbg !6037
  %and = and i64 %1, 7936, !dbg !6038
  ret i64 %and, !dbg !6039
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6040 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6044 dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !6047 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6051, metadata !DIExpression()), !dbg !6052
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6053
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6055
  %1 = load ptr, ptr %init_name, align 8, !dbg !6055
  %tobool = icmp ne ptr %1, null, !dbg !6053
  br i1 %tobool, label %if.then, label %if.end, !dbg !6056

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6057
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6058
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6058
  store ptr %3, ptr %retval, align 8, !dbg !6059
  br label %return, !dbg !6059

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6060
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6061
  %call = call ptr @kobject_name(ptr noundef %kobj) #7, !dbg !6062
  store ptr %call, ptr %retval, align 8, !dbg !6063
  br label %return, !dbg !6063

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6064
  ret ptr %5, !dbg !6064
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6065 dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6068 dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6071 dso_local void @__devm_release_region(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !6074 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6076, metadata !DIExpression()), !dbg !6077
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6078
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6079
  %1 = load ptr, ptr %name, align 8, !dbg !6079
  ret ptr %1, !dbg !6080
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6081 dso_local void @arch_phys_wc_del(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6082 dso_local void @arch_io_free_memtype_wc(i64 noundef, i64 noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986}
!llvm.ident = !{!4987}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_ioremap292", scope: !2, file: !3, line: 74, type: !165, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.devres.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/devres\22 -D KBUILD_BASENAME=\22devres\22 -D KBUILD_MODNAME=\22devres\22 -D __KBUILD_MODNAME=kmod_devres -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/devres.ll lib/devres.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !163, globals: !4896, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/devres.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4ff9d1aeb86e6c95d2064890c46548e")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !131, !136, !141, !147, !153}
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
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "devm_ioremap_type", file: !3, line: 9, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "DEVM_IOREMAP", value: 0)
!150 = !DIEnumerator(name: "DEVM_IOREMAP_UC", value: 1)
!151 = !DIEnumerator(name: "DEVM_IOREMAP_WC", value: 2)
!152 = !DIEnumerator(name: "DEVM_IOREMAP_NP", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 96, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!155 = !{!156, !157, !158, !159, !160, !161, !162}
!156 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0)
!157 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5)
!158 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6)
!159 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 7)
!160 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 10)
!161 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 11)
!162 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 11)
!163 = !{!164, !165, !166, !168, !809}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !167, line: 154, baseType: !7)
!167 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !154, line: 322, size: 16640, elements: !170)
!170 = !{!171, !177, !4671, !4672, !4673, !4674, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4780, !4781, !4782, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4859, !4860, !4861, !4863, !4864, !4866, !4867, !4868, !4869, !4875, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !169, file: !154, line: 323, baseType: !172, size: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !167, line: 190, size: 128, elements: !173)
!173 = !{!174, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !167, line: 191, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !172, file: !167, line: 191, baseType: !175, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !169, file: !154, line: 324, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !154, line: 647, size: 8256, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !214, !215, !216, !243, !244, !248, !250, !251, !252, !253, !257, !259, !261, !4666, !4667, !4668, !4669, !4670}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !179, file: !154, line: 648, baseType: !172, size: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !154, line: 649, baseType: !178, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !179, file: !154, line: 650, baseType: !172, size: 128, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !179, file: !154, line: 651, baseType: !172, size: 128, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !179, file: !154, line: 652, baseType: !168, size: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !179, file: !154, line: 653, baseType: !172, size: 128, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !179, file: !154, line: 655, baseType: !188, size: 256, offset: 640)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !212)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !191, line: 21, size: 512, elements: !192)
!191 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!192 = !{!193, !201, !202, !206, !208, !209, !210, !211}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !190, file: !191, line: 22, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !167, line: 164, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !167, line: 159, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !197, line: 23, baseType: !198)
!197 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !199, line: 31, baseType: !200)
!199 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!200 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !190, file: !191, line: 23, baseType: !194, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !191, line: 24, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !191, line: 25, baseType: !207, size: 64, offset: 192)
!207 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !190, file: !191, line: 26, baseType: !207, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !191, line: 27, baseType: !189, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !190, file: !191, line: 27, baseType: !189, size: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !190, file: !191, line: 27, baseType: !189, size: 64, offset: 448)
!212 = !{!213}
!213 = !DISubrange(count: 4)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !179, file: !154, line: 656, baseType: !172, size: 128, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !179, file: !154, line: 657, baseType: !190, size: 512, offset: 1024)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !179, file: !154, line: 659, baseType: !217, size: 64, offset: 1536)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !154, line: 773, size: 320, elements: !219)
!219 = !{!220, !224, !228, !232, !239}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !218, file: !154, line: 774, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!109, !178}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !218, file: !154, line: 775, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !178}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !218, file: !154, line: 776, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!165, !178, !7, !109}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !218, file: !154, line: 777, baseType: !233, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!109, !178, !7, !109, !109, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !197, line: 21, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !199, line: 27, baseType: !7)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !218, file: !154, line: 778, baseType: !240, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!109, !178, !7, !109, !109, !237}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !179, file: !154, line: 660, baseType: !165, size: 64, offset: 1600)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !179, file: !154, line: 661, baseType: !245, size: 64, offset: 1664)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !247, line: 131, flags: DIFlagFwdDecl)
!247 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!248 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !179, file: !154, line: 663, baseType: !249, size: 8, offset: 1728)
!249 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !179, file: !154, line: 664, baseType: !249, size: 8, offset: 1736)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !179, file: !154, line: 665, baseType: !249, size: 8, offset: 1744)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !179, file: !154, line: 666, baseType: !249, size: 8, offset: 1752)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !154, line: 671, baseType: !254, size: 384, offset: 1760)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 384, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 48)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !179, file: !154, line: 673, baseType: !258, size: 16, offset: 2144)
!258 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !179, file: !154, line: 674, baseType: !260, size: 16, offset: 2160)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !154, line: 255, baseType: !258)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !179, file: !154, line: 675, baseType: !262, size: 64, offset: 2176)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !264)
!264 = !{!265, !4186, !4187, !4190, !4191, !4244, !4329, !4330, !4331, !4332, !4333, !4340, !4432, !4445, !4455, !4459, !4461, !4462, !4463, !4467, !4474, !4475, !4478, !4481, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4643, !4644, !4645, !4648, !4651, !4660, !4661, !4662, !4663, !4664, !4665}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !263, file: !94, line: 706, baseType: !266, size: 512)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !267, line: 64, size: 512, elements: !268)
!267 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!268 = !{!269, !270, !271, !273, !358, !4073, !4176, !4181, !4182, !4183, !4184, !4185}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !267, line: 65, baseType: !203, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !266, file: !267, line: 66, baseType: !172, size: 128, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !266, file: !267, line: 67, baseType: !272, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !266, file: !267, line: 68, baseType: !274, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !267, line: 168, size: 768, elements: !276)
!276 = !{!277, !278, !317, !318}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !275, file: !267, line: 169, baseType: !172, size: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !275, file: !267, line: 170, baseType: !279, size: 32, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !280, line: 29, baseType: !281)
!280 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !280, line: 17, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !280, line: 18, baseType: !284, size: 32)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !280, line: 18, size: 32, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !284, file: !280, line: 19, baseType: !287, size: 32)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !288, line: 14, size: 32, elements: !289)
!288 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !287, file: !288, line: 15, baseType: !291, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !292, line: 44, baseType: !293)
!292 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !292, line: 14, size: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, scope: !293, file: !292, line: 15, baseType: !296, size: 32)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !293, file: !292, line: 15, size: 32, elements: !297)
!297 = !{!298, !303, !310}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !296, file: !292, line: 16, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !167, line: 174, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 172, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !300, file: !167, line: 173, baseType: !109, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !292, line: 24, baseType: !304, size: 16)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !292, line: 24, size: 16, elements: !305)
!305 = !{!306, !309}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !304, file: !292, line: 25, baseType: !307, size: 8)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !197, line: 17, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !199, line: 21, baseType: !249)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !304, file: !292, line: 26, baseType: !307, size: 8, offset: 8)
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !292, line: 28, baseType: !311, size: 32)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !292, line: 28, size: 32, elements: !312)
!312 = !{!313, !316}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !311, file: !292, line: 29, baseType: !314, size: 16)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !197, line: 19, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !199, line: 24, baseType: !258)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !311, file: !292, line: 30, baseType: !314, size: 16, offset: 16)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !275, file: !267, line: 171, baseType: !266, size: 512, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !275, file: !267, line: 172, baseType: !319, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !267, line: 133, size: 192, elements: !322)
!322 = !{!323, !330, !335}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !321, file: !267, line: 134, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!109, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !267, line: 135, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!203, !328}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !321, file: !267, line: 136, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!109, !328, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !267, line: 125, size: 20736, elements: !342)
!342 = !{!343, !348, !352, !353, !357}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !341, file: !267, line: 126, baseType: !344, size: 192)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 192, elements: !346)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!346 = !{!347}
!347 = !DISubrange(count: 3)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !341, file: !267, line: 127, baseType: !349, size: 4096, offset: 192)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 4096, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !341, file: !267, line: 128, baseType: !109, size: 32, offset: 4288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !341, file: !267, line: 129, baseType: !354, size: 16384, offset: 4320)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 16384, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 2048)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !341, file: !267, line: 130, baseType: !109, size: 32, offset: 20704)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !266, file: !267, line: 69, baseType: !359, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !267, line: 116, size: 384, elements: !362)
!362 = !{!363, !367, !395, !4035, !4063, !4067}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !361, file: !267, line: 117, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !272}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !361, file: !267, line: 118, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !371, line: 254, size: 128, elements: !372)
!371 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!372 = !{!373, !388}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !370, file: !371, line: 255, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!377, !272, !382, !345}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !167, line: 66, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !379, line: 73, baseType: !380)
!379 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !379, line: 15, baseType: !381)
!381 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !371, line: 30, size: 128, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !371, line: 31, baseType: !203, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !383, file: !371, line: 32, baseType: !387, size: 16, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !167, line: 24, baseType: !258)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !370, file: !371, line: 256, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!377, !272, !382, !203, !392}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 61, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !379, line: 72, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !379, line: 16, baseType: !207)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !361, file: !267, line: 119, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !371, line: 84, size: 320, elements: !400)
!400 = !{!401, !402, !406, !4031, !4033}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !371, line: 85, baseType: !203, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !399, file: !371, line: 86, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!387, !272, !382, !109}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !399, file: !371, line: 88, baseType: !407, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!387, !272, !410, !109}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !371, line: 175, size: 512, elements: !412)
!412 = !{!413, !414, !415, !416, !4022, !4026, !4027}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !411, file: !371, line: 176, baseType: !383, size: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !411, file: !371, line: 177, baseType: !392, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !411, file: !371, line: 178, baseType: !165, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !411, file: !371, line: 179, baseType: !417, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !422)
!422 = !{!423, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !4016, !4017, !4018, !4019, !4020, !4021}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !421, file: !14, line: 473, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !426)
!426 = !{!427, !428, !429, !437, !438, !445, !446, !449, !450, !3795, !3796, !3797, !3798, !3799, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3839, !3842, !3843, !3844, !3853, !3854, !3855, !3856}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !425, file: !14, line: 642, baseType: !387, size: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !425, file: !14, line: 643, baseType: !258, size: 16, offset: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !425, file: !14, line: 644, baseType: !430, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !431, line: 23, baseType: !432)
!431 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 21, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !432, file: !431, line: 22, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !167, line: 37, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !379, line: 49, baseType: !7)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !425, file: !14, line: 645, baseType: !172, size: 128, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !425, file: !14, line: 646, baseType: !439, size: 32, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !431, line: 28, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 26, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !440, file: !431, line: 27, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !167, line: 38, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !379, line: 50, baseType: !7)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !425, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !425, file: !14, line: 650, baseType: !447, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !425, file: !14, line: 651, baseType: !447, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !425, file: !14, line: 654, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !454)
!454 = !{!455, !3623, !3633, !3637, !3641, !3645, !3649, !3653, !3657, !3661, !3665, !3666, !3670, !3674, !3711, !3740, !3744, !3750, !3754, !3758, !3762, !3766, !3770, !3776, !3780}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !453, file: !14, line: 1967, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !424, !459, !7}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !461, line: 82, size: 1536, elements: !462)
!461 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!462 = !{!463, !464, !474, !482, !483, !498, !499, !503, !516, !3606, !3607, !3608, !3609, !3615, !3616, !3617}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !460, file: !461, line: 84, baseType: !7, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !460, file: !461, line: 85, baseType: !465, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !466, line: 275, baseType: !467)
!466 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !466, line: 275, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !467, file: !466, line: 275, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !466, line: 69, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !466, line: 64, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !471, file: !466, line: 65, baseType: !7, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !460, file: !461, line: 86, baseType: !475, size: 128, offset: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !476, line: 38, size: 128, elements: !477)
!476 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!477 = !{!478, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !476, line: 39, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !475, file: !476, line: 39, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !460, file: !461, line: 87, baseType: !459, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !460, file: !461, line: 88, baseType: !484, size: 128, offset: 256)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !461, line: 49, size: 128, elements: !485)
!485 = !{!486, !495}
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !461, line: 50, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !461, line: 50, size: 64, elements: !488)
!488 = !{!489, !494}
!489 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !461, line: 51, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !461, line: 51, size: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !490, file: !461, line: 52, baseType: !237, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !490, file: !461, line: 52, baseType: !237, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !487, file: !461, line: 54, baseType: !196, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !484, file: !461, line: 56, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !460, file: !461, line: 89, baseType: !424, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !460, file: !461, line: 91, baseType: !500, size: 256, offset: 448)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !460, file: !461, line: 94, baseType: !504, size: 64, offset: 704)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !505, line: 25, size: 64, elements: !506)
!505 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !505, line: 26, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !505, line: 26, size: 64, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !508, file: !505, line: 28, baseType: !198, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !505, line: 30, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !508, file: !505, line: 30, size: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !512, file: !505, line: 31, baseType: !279, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !512, file: !505, line: 32, baseType: !109, size: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !460, file: !461, line: 95, baseType: !517, size: 64, offset: 768)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !461, line: 128, size: 1024, align: 512, elements: !520)
!520 = !{!521, !525, !526, !533, !539, !543, !547, !551, !552, !556, !560, !3596, !3600}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !519, file: !461, line: 129, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!109, !459, !7}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !519, file: !461, line: 130, baseType: !522, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !519, file: !461, line: 131, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!109, !530, !532}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !519, file: !461, line: 132, baseType: !534, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!109, !530, !7, !203, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !519, file: !461, line: 134, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!109, !530}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !519, file: !461, line: 135, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!109, !459}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !519, file: !461, line: 136, baseType: !548, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !459}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !519, file: !461, line: 137, baseType: !548, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !519, file: !461, line: 138, baseType: !553, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !459, !424}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !519, file: !461, line: 139, baseType: !557, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!345, !459, !345, !109}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !519, file: !461, line: 140, baseType: !561, size: 64, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!564, !3595}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !566, line: 70, size: 256, elements: !567)
!566 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!567 = !{!568, !569, !3591, !3592}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !565, file: !566, line: 71, baseType: !459, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !565, file: !566, line: 72, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !572)
!572 = !{!573, !574, !577, !578, !579, !583, !1061, !1200, !1240, !1330, !1334, !1335, !1336, !1337, !1338, !1347, !1348, !1349, !1350, !1355, !1359, !1360, !1363, !1366, !1369, !1372, !1373, !1374, !1415, !3524, !3525, !3526, !3527, !3528, !3529, !3532, !3534, !3541, !3542, !3543, !3544, !3545, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !571, file: !14, line: 1191, baseType: !172, size: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !571, file: !14, line: 1192, baseType: !575, size: 32, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !167, line: 21, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !167, line: 18, baseType: !237)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !571, file: !14, line: 1193, baseType: !249, size: 8, offset: 160)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !571, file: !14, line: 1194, baseType: !207, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !571, file: !14, line: 1195, baseType: !580, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !167, line: 52, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !379, line: 88, baseType: !582)
!582 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !571, file: !14, line: 1196, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !586)
!586 = !{!587, !588, !589, !596, !600, !604, !608, !1046, !1047, !1051, !1053, !1054, !1055, !1057, !1058, !1059, !1060}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !14, line: 2367, baseType: !203, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !585, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !585, file: !14, line: 2376, baseType: !590, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!109, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !595, line: 32, flags: DIFlagFwdDecl)
!595 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!596 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !585, file: !14, line: 2377, baseType: !597, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !585, file: !14, line: 2378, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!459, !584, !109, !203, !165}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !585, file: !14, line: 2380, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !570}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !585, file: !14, line: 2381, baseType: !609, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !611)
!611 = !{!612, !613, !614, !618, !640, !666, !667, !668, !669, !673, !678, !679, !699, !755, !756, !757, !758, !759, !762, !763, !764, !772, !776, !803, !824, !825, !826, !827, !836, !859, !860, !863, !866, !867, !868, !869, !870, !871, !872, !877, !878, !1004, !1012, !1013, !1014, !1016, !1020, !1021, !1025, !1026, !1027, !1028, !1030, !1031, !1032, !1039, !1040, !1041, !1045}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !610, file: !6, line: 403, baseType: !5, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !610, file: !6, line: 406, baseType: !172, size: 128, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !610, file: !6, line: 409, baseType: !615, size: 448, offset: 192)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 448, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 56)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !610, file: !6, line: 417, baseType: !619, size: 768, offset: 640)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !620)
!620 = !{!621, !622, !623, !624, !627}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !619, file: !6, line: 46, baseType: !266, size: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !619, file: !6, line: 47, baseType: !609, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !619, file: !6, line: 48, baseType: !272, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !619, file: !6, line: 49, baseType: !625, size: 64, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !619, file: !6, line: 50, baseType: !628, size: 64, offset: 704)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !630, line: 26, size: 256, elements: !631)
!630 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !629, file: !630, line: 27, baseType: !7, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !629, file: !630, line: 28, baseType: !634, size: 192, offset: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !635, line: 43, size: 192, elements: !636)
!635 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!636 = !{!637, !639}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !634, file: !635, line: 44, baseType: !638, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !288, line: 23, baseType: !287)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !634, file: !635, line: 45, baseType: !172, size: 128, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !610, file: !6, line: 418, baseType: !641, size: 64, offset: 1408)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !643)
!643 = !{!644, !645, !650, !654, !658, !662}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !642, file: !6, line: 54, baseType: !383, size: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !642, file: !6, line: 55, baseType: !646, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!377, !641, !649, !345}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !642, file: !6, line: 57, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!377, !641, !649, !203, !392}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !642, file: !6, line: 59, baseType: !655, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !609, !203}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !642, file: !6, line: 60, baseType: !659, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!109, !609}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !642, file: !6, line: 61, baseType: !663, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !609}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !610, file: !6, line: 419, baseType: !203, size: 64, offset: 1472)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !610, file: !6, line: 420, baseType: !203, size: 64, offset: 1536)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !610, file: !6, line: 421, baseType: !272, size: 64, offset: 1600)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !610, file: !6, line: 424, baseType: !670, size: 64, offset: 1664)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !610, file: !6, line: 425, baseType: !674, size: 64, offset: 1728)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !197, line: 20, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !199, line: 26, baseType: !109)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !610, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !610, file: !6, line: 435, baseType: !680, size: 256, offset: 1856)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !681, line: 66, size: 256, elements: !682)
!681 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!682 = !{!683, !692, !693, !698}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !680, file: !681, line: 67, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !685, line: 13, baseType: !686)
!685 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !167, line: 181, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 179, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !687, file: !167, line: 180, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !197, line: 22, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !199, line: 30, baseType: !582)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !680, file: !681, line: 68, baseType: !638, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !680, file: !681, line: 70, baseType: !694, size: 32, offset: 96)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !695, line: 15, size: 32, elements: !696)
!695 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !694, file: !695, line: 20, baseType: !299, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !680, file: !681, line: 72, baseType: !172, size: 128, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !610, file: !6, line: 437, baseType: !700, size: 64, offset: 2112)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !702, line: 69, size: 320, elements: !703)
!702 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!703 = !{!704, !705, !706, !726, !728, !732, !733}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !701, file: !702, line: 70, baseType: !203, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !701, file: !702, line: 71, baseType: !609, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !701, file: !702, line: 72, baseType: !707, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !702, line: 47, size: 256, elements: !710)
!710 = !{!711, !712, !718, !722}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !702, line: 49, baseType: !7, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !709, file: !702, line: 51, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!109, !203, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !709, file: !702, line: 53, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!109, !345, !716}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !709, file: !702, line: 55, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !165}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !701, file: !702, line: 73, baseType: !727, size: 16, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !701, file: !702, line: 74, baseType: !729, size: 8, offset: 208)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !197, line: 16, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !199, line: 20, baseType: !731)
!731 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !702, line: 75, baseType: !307, size: 8, offset: 216)
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !702, line: 76, baseType: !734, size: 64, offset: 256)
!734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !702, line: 76, size: 64, elements: !735)
!735 = !{!736, !737, !744}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !734, file: !702, line: 77, baseType: !165, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !734, file: !702, line: 78, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !702, line: 86, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !740, file: !702, line: 87, baseType: !7, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !740, file: !702, line: 88, baseType: !345, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !734, file: !702, line: 79, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !702, line: 92, size: 256, elements: !748)
!748 = !{!749, !750, !751, !753, !754}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !747, file: !702, line: 94, baseType: !7, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !747, file: !702, line: 95, baseType: !7, size: 32, offset: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !747, file: !702, line: 96, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !747, file: !702, line: 97, baseType: !707, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !747, file: !702, line: 98, baseType: !165, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !610, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !610, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !610, file: !6, line: 442, baseType: !670, size: 64, offset: 2240)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !610, file: !6, line: 443, baseType: !674, size: 64, offset: 2304)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !610, file: !6, line: 444, baseType: !760, size: 8, offset: 2368)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !167, line: 35, baseType: !761)
!761 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !610, file: !6, line: 451, baseType: !760, size: 8, offset: 2376)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !610, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !610, file: !6, line: 455, baseType: !765, size: 64, offset: 2432)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !767, line: 23, size: 96, elements: !768)
!767 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!768 = !{!769, !770, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !766, file: !767, line: 24, baseType: !109, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !766, file: !767, line: 24, baseType: !109, size: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !766, file: !767, line: 24, baseType: !109, size: 32, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !610, file: !6, line: 458, baseType: !773, size: 64, offset: 2496)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!109}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !610, file: !6, line: 460, baseType: !777, size: 4032, align: 512, offset: 2560)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 4032, elements: !801)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !779)
!779 = !{!780, !781, !782}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !778, file: !6, line: 363, baseType: !165, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !778, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !778, file: !6, line: 367, baseType: !783, size: 448, offset: 128)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !783, file: !6, line: 320, baseType: !609, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !783, file: !6, line: 321, baseType: !787, size: 384, offset: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !788, line: 40, size: 384, elements: !789)
!788 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !787, file: !788, line: 41, baseType: !791, size: 384, align: 64)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 384, align: 64, elements: !799)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !793, line: 5, size: 192, align: 64, elements: !794)
!793 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!794 = !{!795, !796, !798}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !792, file: !793, line: 6, baseType: !207, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !792, file: !793, line: 7, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !792, file: !793, line: 8, baseType: !797, size: 64, offset: 128)
!799 = !{!800}
!800 = !DISubrange(count: 2)
!801 = !{!802}
!802 = !DISubrange(count: 7)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !610, file: !6, line: 463, baseType: !804, size: 192, offset: 6592)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !805, line: 8, size: 192, elements: !806)
!805 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!806 = !{!807, !808, !810}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !804, file: !805, line: 10, baseType: !7, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !804, file: !805, line: 11, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !804, file: !805, line: 12, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !813, line: 59, size: 48, elements: !814)
!813 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!814 = !{!815, !819, !820, !821, !822, !823}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !812, file: !813, line: 60, baseType: !816, size: 16)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !197, line: 18, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !199, line: 23, baseType: !818)
!818 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !812, file: !813, line: 61, baseType: !816, size: 16, offset: 16)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !812, file: !813, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !812, file: !813, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !812, file: !813, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !812, file: !813, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !610, file: !6, line: 465, baseType: !207, size: 64, offset: 6784)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !610, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !610, file: !6, line: 470, baseType: !172, size: 128, offset: 6912)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !610, file: !6, line: 471, baseType: !828, size: 64, offset: 7040)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !830, line: 33, size: 96, elements: !831)
!830 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!831 = !{!832, !833, !834, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !829, file: !830, line: 37, baseType: !109, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !829, file: !830, line: 43, baseType: !109, size: 32, offset: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !829, file: !830, line: 45, baseType: !258, size: 16, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !830, line: 47, baseType: !258, size: 16, offset: 80)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !610, file: !6, line: 476, baseType: !837, size: 64, offset: 7104)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !839)
!839 = !{!840, !856, !857, !858}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !838, file: !6, line: 379, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !843, line: 204, baseType: !844)
!843 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !843, line: 197, size: 192, elements: !845)
!845 = !{!846, !848, !849, !850, !852, !854}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !844, file: !843, line: 198, baseType: !847, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !843, line: 21, baseType: !238)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !844, file: !843, line: 199, baseType: !249, size: 8, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !844, file: !843, line: 200, baseType: !249, size: 8, offset: 40)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !844, file: !843, line: 201, baseType: !851, size: 16, offset: 48)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !843, line: 17, baseType: !315)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !844, file: !843, line: 202, baseType: !853, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !843, line: 16, baseType: !198)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !844, file: !843, line: 203, baseType: !855, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !843, line: 22, baseType: !198)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !838, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !838, file: !6, line: 381, baseType: !345, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !838, file: !6, line: 382, baseType: !345, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !610, file: !6, line: 477, baseType: !838, size: 256, offset: 7168)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !610, file: !6, line: 480, baseType: !861, size: 64, offset: 7424)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !610, file: !6, line: 483, baseType: !864, size: 64, offset: 7488)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !610, file: !6, line: 488, baseType: !345, size: 64, offset: 7552)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !610, file: !6, line: 492, baseType: !165, size: 64, offset: 7616)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !610, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !610, file: !6, line: 495, baseType: !165, size: 64, offset: 7744)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !610, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !610, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !610, file: !6, line: 500, baseType: !873, size: 64, offset: 7872)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !875, line: 45, baseType: !876)
!875 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !610, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !610, file: !6, line: 504, baseType: !879, size: 64, offset: 8000)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !882, line: 96, size: 192, elements: !883)
!882 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!883 = !{!884, !885, !964, !968}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !881, file: !882, line: 97, baseType: !7, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !881, file: !882, line: 98, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !882, line: 24, size: 3072, elements: !888)
!888 = !{!889, !891, !892, !893, !894, !916, !917, !918, !919, !937, !949, !950, !961, !962, !963}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !887, file: !882, line: 26, baseType: !890, size: 128)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 128, elements: !799)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !887, file: !882, line: 27, baseType: !890, size: 128, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !887, file: !882, line: 28, baseType: !109, size: 32, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !887, file: !882, line: 31, baseType: !279, size: 32, align: 512, offset: 512)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !887, file: !882, line: 32, baseType: !895, size: 960, offset: 576)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !896, line: 206, size: 960, elements: !897)
!896 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!897 = !{!898, !907, !910, !912, !913, !915}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !895, file: !896, line: 207, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !167, line: 232, size: 128, align: 64, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !900, file: !167, line: 233, baseType: !899, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !900, file: !167, line: 234, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !899}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !895, file: !896, line: 208, baseType: !908, size: 256, offset: 64)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 256, elements: !212)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !895, file: !896, line: 209, baseType: !911, size: 256, offset: 320)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !212)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !895, file: !896, line: 213, baseType: !381, size: 64, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !895, file: !896, line: 215, baseType: !914, size: 256, offset: 640)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !212)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !895, file: !896, line: 216, baseType: !307, size: 8, offset: 896)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !887, file: !882, line: 33, baseType: !207, size: 64, offset: 1536)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !887, file: !882, line: 34, baseType: !207, size: 64, offset: 1600)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !887, file: !882, line: 35, baseType: !760, size: 8, offset: 1664)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !887, file: !882, line: 36, baseType: !920, size: 320, offset: 1728)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !921, line: 11, size: 320, elements: !922)
!921 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!922 = !{!923, !930, !931, !936}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !920, file: !921, line: 16, baseType: !924, size: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !167, line: 198, size: 128, elements: !925)
!925 = !{!926, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !167, line: 199, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !924, file: !167, line: 199, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !920, file: !921, line: 17, baseType: !207, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !920, file: !921, line: 18, baseType: !932, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !920, file: !921, line: 19, baseType: !237, size: 32, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !887, file: !882, line: 37, baseType: !938, size: 256, offset: 2048)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !939, line: 98, size: 256, elements: !940)
!939 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !938, file: !939, line: 99, baseType: !684, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !938, file: !939, line: 100, baseType: !172, size: 128, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !938, file: !939, line: 101, baseType: !944, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !939, line: 21, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !887, file: !882, line: 38, baseType: !900, size: 128, align: 64, offset: 2304)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !887, file: !882, line: 39, baseType: !951, size: 64, offset: 2432)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !882, line: 49, size: 768, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !952, file: !882, line: 50, baseType: !279, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !952, file: !882, line: 51, baseType: !911, size: 256, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !952, file: !882, line: 53, baseType: !911, size: 256, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !952, file: !882, line: 54, baseType: !207, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !952, file: !882, line: 55, baseType: !951, size: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !952, file: !882, line: 56, baseType: !109, size: 32, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !952, file: !882, line: 57, baseType: !109, size: 32, offset: 736)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !887, file: !882, line: 40, baseType: !207, size: 64, offset: 2496)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !887, file: !882, line: 42, baseType: !109, size: 32, offset: 2560)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !887, file: !882, line: 43, baseType: !880, size: 64, offset: 2624)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !881, file: !882, line: 99, baseType: !965, offset: 128)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !966, line: 211, elements: !967)
!966 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!967 = !{}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !881, file: !882, line: 100, baseType: !969, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !882, line: 63, size: 3008, elements: !971)
!971 = !{!972, !973, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !1003}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !970, file: !882, line: 64, baseType: !951, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !970, file: !882, line: 65, baseType: !974, size: 192, offset: 64)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 192, elements: !346)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !970, file: !882, line: 67, baseType: !109, size: 32, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !970, file: !882, line: 68, baseType: !680, size: 256, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !970, file: !882, line: 69, baseType: !279, size: 32, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !970, file: !882, line: 70, baseType: !680, size: 256, offset: 640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !970, file: !882, line: 71, baseType: !207, size: 64, offset: 896)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !970, file: !882, line: 72, baseType: !207, size: 64, offset: 960)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !970, file: !882, line: 73, baseType: !207, size: 64, offset: 1024)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !970, file: !882, line: 74, baseType: !207, size: 64, offset: 1088)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !970, file: !882, line: 75, baseType: !207, size: 64, offset: 1152)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !970, file: !882, line: 76, baseType: !207, size: 64, offset: 1216)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !970, file: !882, line: 77, baseType: !207, size: 64, offset: 1280)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !970, file: !882, line: 78, baseType: !207, size: 64, offset: 1344)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !970, file: !882, line: 79, baseType: !760, size: 8, offset: 1408)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !970, file: !882, line: 80, baseType: !207, size: 64, offset: 1472)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !970, file: !882, line: 81, baseType: !680, size: 256, offset: 1536)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !970, file: !882, line: 82, baseType: !629, size: 256, offset: 1792)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !970, file: !882, line: 84, baseType: !299, size: 32, offset: 2048)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !970, file: !882, line: 87, baseType: !207, size: 64, offset: 2112)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !970, file: !882, line: 88, baseType: !207, size: 64, offset: 2176)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !970, file: !882, line: 89, baseType: !995, size: 704, offset: 2240)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !939, line: 111, size: 704, elements: !996)
!996 = !{!997, !998, !999, !1002}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !995, file: !939, line: 112, baseType: !938, size: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !995, file: !939, line: 113, baseType: !920, size: 320, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !995, file: !939, line: 116, baseType: !1000, size: 64, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !939, line: 18, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !995, file: !939, line: 117, baseType: !109, size: 32, offset: 640)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !970, file: !882, line: 90, baseType: !880, size: 64, offset: 2944)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !610, file: !6, line: 515, baseType: !1005, size: 64, offset: 8064)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1007, line: 117, size: 128, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1006, file: !1007, line: 118, baseType: !676, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1006, file: !1007, line: 119, baseType: !676, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1006, file: !1007, line: 120, baseType: !381, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !610, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !610, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !610, file: !6, line: 520, baseType: !1015, size: 64, offset: 8192)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !610, file: !6, line: 523, baseType: !1017, size: 64, offset: 8256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !610, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !610, file: !6, line: 525, baseType: !1022, size: 64, offset: 8384)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !610, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !610, file: !6, line: 533, baseType: !165, size: 64, offset: 8512)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !610, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !610, file: !6, line: 535, baseType: !1029, size: 64, offset: 8640)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !610, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !610, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !610, file: !6, line: 540, baseType: !1033, size: 64, offset: 8768)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1035, line: 32, size: 64, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1034, file: !1035, line: 33, baseType: !676, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1034, file: !1035, line: 34, baseType: !676, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !610, file: !6, line: 563, baseType: !172, size: 128, offset: 8832)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !610, file: !6, line: 565, baseType: !172, size: 128, offset: 8960)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !610, file: !6, line: 568, baseType: !1042, size: 64, offset: 9088)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !610, file: !6, line: 570, baseType: !299, size: 32, offset: 9152)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !14, line: 2382, baseType: !584, size: 64, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !585, file: !14, line: 2383, baseType: !1048, size: 64, offset: 512)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !167, line: 194, size: 64, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1048, file: !167, line: 195, baseType: !927, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !585, file: !14, line: 2385, baseType: !1052, offset: 576)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !966, line: 206, elements: !967)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !585, file: !14, line: 2386, baseType: !1052, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !585, file: !14, line: 2387, baseType: !1052, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !585, file: !14, line: 2388, baseType: !1056, offset: 576)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1052, elements: !346)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !585, file: !14, line: 2390, baseType: !1052, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !585, file: !14, line: 2391, baseType: !1052, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !585, file: !14, line: 2392, baseType: !1052, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !585, file: !14, line: 2393, baseType: !1052, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !571, file: !14, line: 1197, baseType: !1062, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1065)
!1065 = !{!1066, !1070, !1074, !1075, !1079, !1085, !1089, !1090, !1091, !1095, !1099, !1103, !1104, !1105, !1111, !1115, !1116, !1123, !1124, !1125, !1126, !1130, !1134, !1183, !1198, !1199}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1064, file: !14, line: 2058, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!424, !570}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1064, file: !14, line: 2059, baseType: !1071, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !424}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1064, file: !14, line: 2060, baseType: !1071, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1064, file: !14, line: 2062, baseType: !1076, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !424, !109}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1064, file: !14, line: 2063, baseType: !1080, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!109, !424, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1064, file: !14, line: 2064, baseType: !1086, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!109, !424}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1064, file: !14, line: 2065, baseType: !1071, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1064, file: !14, line: 2066, baseType: !605, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1064, file: !14, line: 2067, baseType: !1092, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!109, !570, !109}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1064, file: !14, line: 2068, baseType: !1096, size: 64, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!109, !570, !13}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1064, file: !14, line: 2069, baseType: !1100, size: 64, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!109, !570}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1064, file: !14, line: 2070, baseType: !1096, size: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1064, file: !14, line: 2071, baseType: !1100, size: 64, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1064, file: !14, line: 2072, baseType: !1106, size: 64, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!109, !459, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1064, file: !14, line: 2073, baseType: !1112, size: 64, offset: 896)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!109, !570, !809, !345}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1064, file: !14, line: 2074, baseType: !605, size: 64, offset: 960)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1064, file: !14, line: 2076, baseType: !1117, size: 64, offset: 1024)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!109, !1120, !459}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1122, line: 66, flags: DIFlagFwdDecl)
!1122 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1064, file: !14, line: 2077, baseType: !1117, size: 64, offset: 1088)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1064, file: !14, line: 2078, baseType: !1117, size: 64, offset: 1152)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1064, file: !14, line: 2079, baseType: !1117, size: 64, offset: 1216)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1064, file: !14, line: 2081, baseType: !1127, size: 64, offset: 1280)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!377, !570, !109, !345, !392, !580}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1064, file: !14, line: 2082, baseType: !1131, size: 64, offset: 1344)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!377, !570, !109, !203, !392, !580}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1064, file: !14, line: 2083, baseType: !1135, size: 64, offset: 1408)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!1138, !424}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1166, !1167, !1168}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1140, file: !19, line: 297, baseType: !924, size: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1140, file: !19, line: 298, baseType: !172, size: 128, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1140, file: !19, line: 299, baseType: !172, size: 128, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1140, file: !19, line: 300, baseType: !172, size: 128, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1140, file: !19, line: 301, baseType: !680, size: 256, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1140, file: !19, line: 302, baseType: !279, size: 32, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1140, file: !19, line: 303, baseType: !299, size: 32, offset: 800)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1140, file: !19, line: 304, baseType: !570, size: 64, offset: 832)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1140, file: !19, line: 305, baseType: !1151, size: 64, offset: 896)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1152)
!1152 = !{!1153, !1165}
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !19, line: 69, baseType: !1154, size: 32)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1151, file: !19, line: 69, size: 32, elements: !1155)
!1155 = !{!1156, !1157, !1158}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1154, file: !19, line: 70, baseType: !430, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1154, file: !19, line: 71, baseType: !439, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1154, file: !19, line: 72, baseType: !1159, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1160, line: 24, baseType: !1161)
!1160 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1160, line: 22, size: 32, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1161, file: !1160, line: 23, baseType: !1164, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1160, line: 20, baseType: !436)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1151, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1140, file: !19, line: 306, baseType: !580, size: 64, offset: 960)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1140, file: !19, line: 307, baseType: !207, size: 64, offset: 1024)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1140, file: !19, line: 308, baseType: !1169, size: 576, offset: 1088)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1170)
!1170 = !{!1171, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1182}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1169, file: !19, line: 206, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !582)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1169, file: !19, line: 207, baseType: !1172, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1169, file: !19, line: 208, baseType: !1172, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1169, file: !19, line: 209, baseType: !1172, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1169, file: !19, line: 210, baseType: !1172, size: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1169, file: !19, line: 211, baseType: !1172, size: 64, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1169, file: !19, line: 212, baseType: !1172, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1169, file: !19, line: 213, baseType: !1180, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1181, line: 8, baseType: !691)
!1181 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1169, file: !19, line: 214, baseType: !1180, size: 64, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1064, file: !14, line: 2085, baseType: !1184, size: 64, offset: 1472)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!381, !570, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1189, line: 15, size: 256, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1190 = !{!1191, !1192, !1193, !1194, !1195}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1188, file: !1189, line: 16, baseType: !166, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1188, file: !1189, line: 19, baseType: !109, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1188, file: !1189, line: 26, baseType: !207, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1188, file: !1189, line: 33, baseType: !207, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1188, file: !1189, line: 36, baseType: !1196, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1064, file: !14, line: 2087, baseType: !1184, size: 64, offset: 1536)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1064, file: !14, line: 2089, baseType: !605, size: 64, offset: 1600)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !571, file: !14, line: 1198, baseType: !1201, size: 64, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1204)
!1204 = !{!1205, !1209, !1213, !1217, !1218, !1219, !1220, !1221, !1226, !1231, !1235}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1203, file: !19, line: 325, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!109, !1139}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1203, file: !19, line: 326, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1139, !570, !109}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1203, file: !19, line: 327, baseType: !1214, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !1139}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1203, file: !19, line: 328, baseType: !1206, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1203, file: !19, line: 329, baseType: !1206, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1203, file: !19, line: 330, baseType: !1206, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1203, file: !19, line: 331, baseType: !1092, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1203, file: !19, line: 334, baseType: !1222, size: 64, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1225, !424}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1203, file: !19, line: 335, baseType: !1227, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!109, !424, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1203, file: !19, line: 337, baseType: !1232, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!109, !424, !1225}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1203, file: !19, line: 339, baseType: !1236, size: 64, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!109, !570, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !571, file: !14, line: 1199, baseType: !1241, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1244)
!1244 = !{!1245, !1256, !1257, !1261, !1262, !1263, !1278, !1301, !1305, !1306, !1329}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1243, file: !19, line: 431, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!109, !570, !109, !109, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1252, line: 8, size: 128, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1251, file: !1252, line: 9, baseType: !564, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1251, file: !1252, line: 10, baseType: !459, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1243, file: !19, line: 432, baseType: !1092, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1243, file: !19, line: 433, baseType: !1258, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!109, !570, !7}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1243, file: !19, line: 434, baseType: !1258, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1243, file: !19, line: 435, baseType: !1092, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1243, file: !19, line: 436, baseType: !1264, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!109, !570, !109, !1267}
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
!1281 = !{!109, !570, !1151, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1283, file: !19, line: 346, baseType: !109, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1283, file: !19, line: 347, baseType: !196, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1283, file: !19, line: 348, baseType: !196, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1283, file: !19, line: 349, baseType: !196, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1283, file: !19, line: 350, baseType: !196, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1283, file: !19, line: 351, baseType: !196, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1283, file: !19, line: 352, baseType: !196, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1283, file: !19, line: 353, baseType: !690, size: 64, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1283, file: !19, line: 355, baseType: !690, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1283, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1283, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1283, file: !19, line: 358, baseType: !196, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1283, file: !19, line: 359, baseType: !196, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1283, file: !19, line: 360, baseType: !196, size: 64, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1283, file: !19, line: 361, baseType: !690, size: 64, offset: 832)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1283, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1243, file: !19, line: 438, baseType: !1302, size: 64, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!109, !570, !1239, !1282}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1243, file: !19, line: 440, baseType: !1279, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1243, file: !19, line: 441, baseType: !1307, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!109, !570, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1311, file: !19, line: 412, baseType: !7, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1311, file: !19, line: 413, baseType: !1315, size: 1344, offset: 64)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 1344, elements: !346)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1328}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !19, line: 398, baseType: !7, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1316, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1316, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1316, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1316, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1316, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1316, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1316, file: !19, line: 406, baseType: !200, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1316, file: !19, line: 407, baseType: !1327, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !167, line: 132, baseType: !196)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1316, file: !19, line: 408, baseType: !1327, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1243, file: !19, line: 442, baseType: !1258, size: 64, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !571, file: !14, line: 1200, baseType: !1331, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !571, file: !14, line: 1201, baseType: !207, size: 64, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !571, file: !14, line: 1202, baseType: !207, size: 64, offset: 704)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !571, file: !14, line: 1203, baseType: !207, size: 64, offset: 768)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !571, file: !14, line: 1204, baseType: !459, size: 64, offset: 832)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !571, file: !14, line: 1205, baseType: !1339, size: 320, offset: 896)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1340, line: 48, size: 320, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1341 = !{!1342, !1343, !1344, !1345, !1346}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1339, file: !1340, line: 49, baseType: !684, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1339, file: !1340, line: 55, baseType: !684, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1339, file: !1340, line: 57, baseType: !694, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1339, file: !1340, line: 59, baseType: !638, size: 32, offset: 160)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1339, file: !1340, line: 60, baseType: !172, size: 128, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !571, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !571, file: !14, line: 1207, baseType: !299, size: 32, offset: 1248)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !571, file: !14, line: 1209, baseType: !165, size: 64, offset: 1280)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !571, file: !14, line: 1211, baseType: !1351, size: 64, offset: 1344)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !571, file: !14, line: 1223, baseType: !1356, size: 64, offset: 1408)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !476, line: 34, size: 64, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1356, file: !476, line: 35, baseType: !479, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !571, file: !14, line: 1224, baseType: !172, size: 128, offset: 1472)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !571, file: !14, line: 1225, baseType: !1361, size: 64, offset: 1600)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !571, file: !14, line: 1226, baseType: !1364, size: 64, offset: 1664)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !571, file: !14, line: 1227, baseType: !1367, size: 64, offset: 1728)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !571, file: !14, line: 1228, baseType: !1370, size: 64, offset: 1792)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !571, file: !14, line: 1229, baseType: !924, size: 128, offset: 1856)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !571, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !571, file: !14, line: 1231, baseType: !1375, size: 2496, offset: 2048)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1381, !1413}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1375, file: !19, line: 522, baseType: !7, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1375, file: !19, line: 523, baseType: !1339, size: 320, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1375, file: !19, line: 524, baseType: !1380, size: 192, offset: 384)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 192, elements: !346)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1375, file: !19, line: 525, baseType: !1382, size: 1728, offset: 576)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1383, size: 1728, elements: !346)
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
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1393, file: !19, line: 313, baseType: !1092, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1393, file: !19, line: 314, baseType: !1092, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1393, file: !19, line: 315, baseType: !1092, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1393, file: !19, line: 316, baseType: !1092, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1393, file: !19, line: 317, baseType: !1206, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1393, file: !19, line: 318, baseType: !1206, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1393, file: !19, line: 319, baseType: !1206, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1393, file: !19, line: 320, baseType: !1236, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1387, file: !19, line: 448, baseType: !609, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1387, file: !19, line: 449, baseType: !1386, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1383, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1383, file: !19, line: 226, baseType: !172, size: 128, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1383, file: !19, line: 227, baseType: !207, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1383, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1383, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1383, file: !19, line: 230, baseType: !1172, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1383, file: !19, line: 231, baseType: !1172, size: 64, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1383, file: !19, line: 232, baseType: !165, size: 64, offset: 512)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1375, file: !19, line: 526, baseType: !1414, size: 192, offset: 2304)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 192, elements: !346)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !571, file: !14, line: 1233, baseType: !1416, size: 2368, offset: 4544)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1416, file: !14, line: 1185, baseType: !258, size: 16)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1416, file: !14, line: 1186, baseType: !258, size: 16, offset: 16)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1416, file: !14, line: 1187, baseType: !1421, size: 2304, offset: 64)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 2304, elements: !346)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1423, line: 12, size: 768, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1424 = !{!1425, !1439, !1440, !3522, !3523}
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
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1434, file: !1433, line: 38, baseType: !279, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1434, file: !1433, line: 39, baseType: !172, size: 128, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1426, file: !1427, line: 22, baseType: !900, size: 128, align: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1422, file: !1423, line: 14, baseType: !752, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1422, file: !1423, line: 15, baseType: !1441, size: 64, offset: 448)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1442, line: 16, size: 64, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1441, file: !1442, line: 17, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1122, line: 746, size: 58368, elements: !1447)
!1447 = !{!1448, !1456, !1457, !1458, !1464, !1465, !1466, !1467, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1538, !1549, !1644, !1648, !1651, !1682, !1683, !1684, !1685, !1696, !1698, !1699, !1700, !1701, !1702, !1703, !1714, !1715, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1732, !1733, !1740, !1741, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2698, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2746, !2752, !2753, !2754, !2755, !2756, !2760, !2763, !2770, !2775, !2778, !2781, !2784, !2787, !2925, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2963, !2964, !2965, !2974, !2982, !2983, !2984, !2985, !2986, !2991, !2992, !2993, !2996, !2997, !3000, !3003, !3006, !3014, !3017, !3018, !3104, !3105, !3106, !3107, !3108, !3114, !3115, !3116, !3117, !3120, !3121, !3124, !3127, !3128, !3131, !3132, !3133, !3136, !3137, !3138, !3139, !3140, !3141, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3173, !3174, !3180, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3192, !3264, !3266, !3267, !3268, !3269, !3270, !3271, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3299, !3300, !3301}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1446, file: !1122, line: 752, baseType: !1449, size: 192)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1450, line: 56, size: 192, elements: !1451)
!1450 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1451 = !{!1452, !1453, !1454, !1455}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1449, file: !1450, line: 57, baseType: !207, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1449, file: !1450, line: 58, baseType: !207, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1449, file: !1450, line: 59, baseType: !237, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1449, file: !1450, line: 61, baseType: !237, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1446, file: !1122, line: 754, baseType: !7, size: 32, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1446, file: !1122, line: 767, baseType: !165, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1446, file: !1122, line: 768, baseType: !1459, size: 32, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1460, line: 113, baseType: !1461)
!1460 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1460, line: 111, size: 32, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1461, file: !1460, line: 112, baseType: !299, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !1122, line: 770, baseType: !7, size: 32, offset: 352)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1446, file: !1122, line: 771, baseType: !7, size: 32, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1446, file: !1122, line: 774, baseType: !109, size: 32, offset: 416)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1446, file: !1122, line: 775, baseType: !1468, size: 128, offset: 448)
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
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1478, file: !1469, line: 62, baseType: !299, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1468, file: !1469, line: 65, baseType: !314, size: 16, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1468, file: !1469, line: 65, baseType: !314, size: 16, offset: 112)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1446, file: !1122, line: 776, baseType: !7, size: 32, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1446, file: !1122, line: 777, baseType: !207, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1446, file: !1122, line: 778, baseType: !1445, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1446, file: !1122, line: 787, baseType: !109, size: 32, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1446, file: !1122, line: 788, baseType: !109, size: 32, offset: 800)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1446, file: !1122, line: 790, baseType: !109, size: 32, offset: 832)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1446, file: !1122, line: 792, baseType: !109, size: 32, offset: 864)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1446, file: !1122, line: 793, baseType: !109, size: 32, offset: 896)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1446, file: !1122, line: 794, baseType: !109, size: 32, offset: 928)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1446, file: !1122, line: 795, baseType: !7, size: 32, offset: 960)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1446, file: !1122, line: 797, baseType: !1495, size: 2048, offset: 1024)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1122, line: 551, size: 2048, elements: !1496)
!1496 = !{!1497, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1517, !1520, !1521, !1522}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1495, file: !1122, line: 553, baseType: !1498, size: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1122, line: 411, size: 128, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1498, file: !1122, line: 412, baseType: !207, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1498, file: !1122, line: 413, baseType: !237, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1495, file: !1122, line: 554, baseType: !792, size: 192, align: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1495, file: !1122, line: 555, baseType: !196, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1495, file: !1122, line: 556, baseType: !196, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1495, file: !1122, line: 558, baseType: !172, size: 128, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1495, file: !1122, line: 559, baseType: !7, size: 32, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1495, file: !1122, line: 561, baseType: !196, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1495, file: !1122, line: 562, baseType: !196, size: 64, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1495, file: !1122, line: 563, baseType: !196, size: 64, offset: 768)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1495, file: !1122, line: 564, baseType: !196, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1495, file: !1122, line: 565, baseType: !690, size: 64, offset: 896)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1495, file: !1122, line: 566, baseType: !196, size: 64, offset: 960)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1495, file: !1122, line: 568, baseType: !196, size: 64, offset: 1024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1495, file: !1122, line: 571, baseType: !109, size: 32, offset: 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1495, file: !1122, line: 572, baseType: !1516, size: 64, offset: 1152)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1495, file: !1122, line: 574, baseType: !1518, size: 64, offset: 1216)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1122, line: 49, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1495, file: !1122, line: 576, baseType: !1518, size: 64, offset: 1280)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1495, file: !1122, line: 578, baseType: !207, size: 64, offset: 1344)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1495, file: !1122, line: 588, baseType: !1523, size: 512, align: 512, offset: 1536)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1122, line: 497, size: 512, align: 512, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1523, file: !1122, line: 498, baseType: !196, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1523, file: !1122, line: 499, baseType: !196, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1523, file: !1122, line: 500, baseType: !196, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1523, file: !1122, line: 501, baseType: !237, size: 32, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1523, file: !1122, line: 502, baseType: !237, size: 32, offset: 224)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1523, file: !1122, line: 503, baseType: !207, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1523, file: !1122, line: 504, baseType: !207, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1523, file: !1122, line: 505, baseType: !207, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1523, file: !1122, line: 506, baseType: !1534, size: 64, align: 64, offset: 448)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1122, line: 445, size: 64, align: 64, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1534, file: !1122, line: 446, baseType: !7, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1534, file: !1122, line: 447, baseType: !7, size: 32, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1446, file: !1122, line: 798, baseType: !1539, size: 384, offset: 3072)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1122, line: 592, size: 384, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1539, file: !1122, line: 593, baseType: !172, size: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1539, file: !1122, line: 594, baseType: !207, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1539, file: !1122, line: 595, baseType: !207, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1539, file: !1122, line: 596, baseType: !7, size: 32, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1539, file: !1122, line: 597, baseType: !258, size: 16, offset: 288)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1539, file: !1122, line: 598, baseType: !258, size: 16, offset: 304)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1539, file: !1122, line: 600, baseType: !1548, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1446, file: !1122, line: 799, baseType: !1550, size: 1792, offset: 3456)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1122, line: 610, size: 1792, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1641, !1642}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1550, file: !1122, line: 611, baseType: !792, size: 192, align: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1550, file: !1122, line: 618, baseType: !196, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1550, file: !1122, line: 619, baseType: !196, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1550, file: !1122, line: 620, baseType: !196, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1550, file: !1122, line: 621, baseType: !196, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1550, file: !1122, line: 622, baseType: !196, size: 64, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1550, file: !1122, line: 629, baseType: !690, size: 64, offset: 512)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1550, file: !1122, line: 630, baseType: !196, size: 64, offset: 576)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1550, file: !1122, line: 631, baseType: !7, size: 32, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1550, file: !1122, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1550, file: !1122, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1550, file: !1122, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1550, file: !1122, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1550, file: !1122, line: 662, baseType: !1566, size: 512, offset: 704)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1567)
!1567 = !{!1568, !1576, !1577, !1582, !1637, !1638, !1639, !1640}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1566, file: !25, line: 119, baseType: !1569, size: 256)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1570, line: 9, size: 256, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1569, file: !1570, line: 10, baseType: !792, size: 192, align: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1569, file: !1570, line: 11, baseType: !1574, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1575, line: 29, baseType: !690)
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
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1588, file: !25, line: 216, baseType: !638, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1588, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1588, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1588, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1588, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1588, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1588, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1588, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1588, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1588, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1588, file: !25, line: 227, baseType: !258, size: 16, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1588, file: !25, line: 228, baseType: !258, size: 16, offset: 208)
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
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !167, line: 32, baseType: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !379, line: 96, baseType: !109)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1584, file: !25, line: 163, baseType: !1616, size: 32, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !466, line: 274, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !466, line: 274, size: 32, elements: !1618)
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1617, file: !466, line: 274, baseType: !470, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1584, file: !25, line: 164, baseType: !1581, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1584, file: !25, line: 165, baseType: !1622, size: 128, offset: 256)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1570, line: 14, size: 128, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1622, file: !1570, line: 15, baseType: !1625, size: 128)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !793, line: 26, size: 128, elements: !1626)
!1626 = !{!1627, !1631}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1625, file: !793, line: 27, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !793, line: 12, size: 64, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1628, file: !793, line: 13, baseType: !797, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1625, file: !793, line: 28, baseType: !797, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1584, file: !25, line: 166, baseType: !1633, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1574}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1584, file: !25, line: 167, baseType: !1574, size: 64, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1566, file: !25, line: 123, baseType: !307, size: 8, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1566, file: !25, line: 124, baseType: !307, size: 8, offset: 456)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1566, file: !25, line: 125, baseType: !307, size: 8, offset: 464)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1566, file: !25, line: 126, baseType: !307, size: 8, offset: 472)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1550, file: !1122, line: 671, baseType: !1566, size: 512, offset: 1216)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1550, file: !1122, line: 679, baseType: !1643, size: 64, offset: 1728)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1446, file: !1122, line: 800, baseType: !1645, size: 64, offset: 5248)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1647)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1122, line: 800, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1446, file: !1122, line: 809, baseType: !1649, size: 64, offset: 5312)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1122, line: 70, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1446, file: !1122, line: 825, baseType: !1652, size: 2048, align: 512, offset: 5632)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1122, line: 509, size: 2048, align: 512, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1652, file: !1122, line: 511, baseType: !196, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1652, file: !1122, line: 512, baseType: !196, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1652, file: !1122, line: 513, baseType: !196, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1652, file: !1122, line: 514, baseType: !196, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1652, file: !1122, line: 515, baseType: !196, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1652, file: !1122, line: 516, baseType: !196, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1652, file: !1122, line: 518, baseType: !196, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1652, file: !1122, line: 519, baseType: !196, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1652, file: !1122, line: 520, baseType: !690, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1652, file: !1122, line: 522, baseType: !196, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1652, file: !1122, line: 523, baseType: !196, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1652, file: !1122, line: 524, baseType: !690, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1652, file: !1122, line: 526, baseType: !690, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1652, file: !1122, line: 527, baseType: !196, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1652, file: !1122, line: 529, baseType: !196, size: 64, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1652, file: !1122, line: 530, baseType: !196, size: 64, offset: 960)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1652, file: !1122, line: 531, baseType: !196, size: 64, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1652, file: !1122, line: 532, baseType: !196, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1652, file: !1122, line: 533, baseType: !196, size: 64, offset: 1152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1652, file: !1122, line: 535, baseType: !196, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1652, file: !1122, line: 536, baseType: !196, size: 64, offset: 1280)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1652, file: !1122, line: 537, baseType: !196, size: 64, offset: 1344)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1652, file: !1122, line: 538, baseType: !196, size: 64, offset: 1408)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1652, file: !1122, line: 539, baseType: !196, size: 64, offset: 1472)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1652, file: !1122, line: 540, baseType: !196, size: 64, offset: 1536)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1652, file: !1122, line: 541, baseType: !196, size: 64, offset: 1600)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1652, file: !1122, line: 542, baseType: !196, size: 64, offset: 1664)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1652, file: !1122, line: 543, baseType: !196, size: 64, offset: 1728)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1446, file: !1122, line: 833, baseType: !7, size: 32, offset: 7680)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1446, file: !1122, line: 836, baseType: !7, size: 32, offset: 7712)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1446, file: !1122, line: 837, baseType: !109, size: 32, offset: 7744)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1446, file: !1122, line: 838, baseType: !1686, size: 64, offset: 7808)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1689, line: 19, baseType: !1690)
!1689 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1689, line: 19, size: 64, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1690, file: !1689, line: 19, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 1)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1446, file: !1122, line: 839, baseType: !1697, size: 64, offset: 7872)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1446, file: !1122, line: 840, baseType: !1688, size: 64, offset: 7936)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1446, file: !1122, line: 841, baseType: !165, size: 64, offset: 8000)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1446, file: !1122, line: 843, baseType: !258, size: 16, offset: 8064)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1446, file: !1122, line: 845, baseType: !258, size: 16, offset: 8080)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1446, file: !1122, line: 848, baseType: !109, size: 32, offset: 8096)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1446, file: !1122, line: 849, baseType: !1704, size: 32, offset: 8128)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1122, line: 718, size: 32, elements: !1705)
!1705 = !{!1706, !1713}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1704, file: !1122, line: 724, baseType: !1707, size: 32)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !1122, line: 719, size: 32, elements: !1708)
!1708 = !{!1709, !1710, !1711, !1712}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1707, file: !1122, line: 720, baseType: !307, size: 8)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1707, file: !1122, line: 721, baseType: !307, size: 8, offset: 8)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1707, file: !1122, line: 722, baseType: !307, size: 8, offset: 16)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1707, file: !1122, line: 723, baseType: !307, size: 8, offset: 24)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1704, file: !1122, line: 725, baseType: !237, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1446, file: !1122, line: 850, baseType: !172, size: 128, offset: 8192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1446, file: !1122, line: 851, baseType: !1716, size: 64, offset: 8320)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1122, line: 60, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1446, file: !1122, line: 855, baseType: !207, size: 64, offset: 8384)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1446, file: !1122, line: 856, baseType: !307, size: 8, offset: 8448)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1446, file: !1122, line: 857, baseType: !307, size: 8, offset: 8456)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1446, file: !1122, line: 858, baseType: !109, size: 32, offset: 8480)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1446, file: !1122, line: 859, baseType: !172, size: 128, offset: 8512)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1446, file: !1122, line: 860, baseType: !109, size: 32, offset: 8640)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1446, file: !1122, line: 861, baseType: !172, size: 128, offset: 8704)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1446, file: !1122, line: 873, baseType: !1726, size: 256, offset: 8832)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1122, line: 376, size: 256, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1731}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1726, file: !1122, line: 381, baseType: !207, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1726, file: !1122, line: 384, baseType: !200, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1726, file: !1122, line: 389, baseType: !200, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1726, file: !1122, line: 392, baseType: !200, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1446, file: !1122, line: 875, baseType: !172, size: 128, offset: 9088)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1446, file: !1122, line: 877, baseType: !1734, size: 320, offset: 9216)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1735, line: 86, size: 320, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1736 = !{!1737, !1738, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1734, file: !1735, line: 87, baseType: !109, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1734, file: !1735, line: 88, baseType: !172, size: 128, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1734, file: !1735, line: 89, baseType: !172, size: 128, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1446, file: !1122, line: 878, baseType: !792, size: 192, align: 64, offset: 9536)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1446, file: !1122, line: 881, baseType: !1742, size: 64, offset: 9728)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1744)
!1744 = !{!1745, !2618}
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !38, line: 734, baseType: !1746, size: 10240)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !38, line: 734, size: 10240, elements: !1747)
!1747 = !{!1748, !1752, !1765, !2495, !2496, !2497, !2498, !2499, !2500, !2507, !2508, !2509, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2548, !2550, !2553, !2598, !2599, !2600, !2603, !2604, !2605, !2608, !2609, !2610, !2616, !2617}
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !38, line: 739, baseType: !1749, size: 512, align: 512)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !38, line: 739, size: 512, align: 512, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1749, file: !38, line: 747, baseType: !299, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1746, file: !38, line: 750, baseType: !1753, size: 128, offset: 512)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1754, line: 218, size: 128, elements: !1755)
!1754 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1755 = !{!1756, !1763, !1764}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !1754, line: 219, baseType: !1757, size: 32)
!1757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1753, file: !1754, line: 219, size: 32, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1757, file: !1754, line: 220, baseType: !279, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1757, file: !1754, line: 221, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1754, line: 197, baseType: !1762)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1754, line: 197, elements: !967)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1753, file: !1754, line: 223, baseType: !7, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1753, file: !1754, line: 224, baseType: !165, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1746, file: !38, line: 752, baseType: !1766, size: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!207, !1769, !207, !207, !207, !207}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1771)
!1771 = !{!1772, !1778, !1779, !1781, !1782, !1783, !1784, !1785, !1835, !2025, !2034, !2035, !2036, !2485, !2486, !2487, !2488, !2490, !2491, !2494}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !14, line: 995, baseType: !1773, size: 128)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !14, line: 995, size: 128, elements: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1773, file: !14, line: 996, baseType: !1472, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1773, file: !14, line: 997, baseType: !900, size: 128, align: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1773, file: !14, line: 998, baseType: !7, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1770, file: !14, line: 1005, baseType: !279, size: 32, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1770, file: !14, line: 1006, baseType: !1780, size: 32, offset: 160)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !167, line: 156, baseType: !7)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1770, file: !14, line: 1007, baseType: !684, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1770, file: !14, line: 1008, baseType: !680, size: 256, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1770, file: !14, line: 1009, baseType: !580, size: 64, offset: 512)
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
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1799, file: !1795, line: 15, baseType: !299, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1795, line: 16, baseType: !1803, size: 32)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !1795, line: 16, size: 32, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1803, file: !1795, line: 18, baseType: !307, size: 8)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1803, file: !1795, line: 19, baseType: !1807, size: 24, offset: 8)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 24, elements: !346)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1796, file: !1795, line: 26, baseType: !291, size: 32, offset: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1786, file: !14, line: 950, baseType: !1810, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1818, !1819, !1820, !1821}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1811, file: !30, line: 61, baseType: !1459, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1811, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1811, file: !30, line: 63, baseType: !279, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1811, file: !30, line: 65, baseType: !1817, size: 256, offset: 128)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1048, size: 256, elements: !212)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1811, file: !30, line: 66, baseType: !1048, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1811, file: !30, line: 68, baseType: !1432, size: 192, offset: 448)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1811, file: !30, line: 69, baseType: !900, size: 128, align: 64, offset: 640)
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
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1786, file: !14, line: 952, baseType: !430, size: 32, offset: 160)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1786, file: !14, line: 952, baseType: !430, size: 32, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1786, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1770, file: !14, line: 1012, baseType: !1836, size: 64, offset: 896)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1839, line: 110, size: 1472, elements: !1840)
!1839 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1857, !1858, !1859, !1860, !1861, !1862, !1970, !1971, !1972, !1973, !1974, !2005, !2008, !2012, !2020}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1838, file: !1839, line: 111, baseType: !684, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1838, file: !1839, line: 112, baseType: !430, size: 32, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1838, file: !1839, line: 113, baseType: !439, size: 32, offset: 96)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1838, file: !1839, line: 114, baseType: !430, size: 32, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1838, file: !1839, line: 115, baseType: !439, size: 32, offset: 160)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1838, file: !1839, line: 116, baseType: !430, size: 32, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1838, file: !1839, line: 117, baseType: !439, size: 32, offset: 224)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1838, file: !1839, line: 118, baseType: !430, size: 32, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1838, file: !1839, line: 119, baseType: !439, size: 32, offset: 288)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1838, file: !1839, line: 120, baseType: !7, size: 32, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1838, file: !1839, line: 121, baseType: !1852, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1853, line: 24, baseType: !1854)
!1853 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1853, line: 24, size: 64, elements: !1855)
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1854, file: !1853, line: 24, baseType: !196, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1838, file: !1839, line: 122, baseType: !1852, size: 64, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1838, file: !1839, line: 123, baseType: !1852, size: 64, offset: 512)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1838, file: !1839, line: 124, baseType: !1852, size: 64, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1838, file: !1839, line: 125, baseType: !1852, size: 64, offset: 640)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1838, file: !1839, line: 127, baseType: !249, size: 8, offset: 704)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1838, file: !1839, line: 129, baseType: !1863, size: 64, offset: 768)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1865, line: 195, size: 1728, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1866 = !{!1867, !1868, !1871, !1876, !1877, !1880, !1881, !1886, !1887, !1888, !1889, !1892, !1893, !1894, !1895, !1896, !1934, !1955}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1864, file: !1865, line: 196, baseType: !1459, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1864, file: !1865, line: 197, baseType: !1869, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1865, line: 28, baseType: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !167, line: 104, baseType: !676)
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 198, baseType: !1872, size: 192, offset: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 198, size: 192, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1872, file: !1865, line: 199, baseType: !172, size: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1872, file: !1865, line: 200, baseType: !792, size: 192, align: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1864, file: !1865, line: 205, baseType: !1339, size: 320, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1864, file: !1865, line: 206, baseType: !1878, size: 64, offset: 576)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1865, line: 206, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1864, file: !1865, line: 207, baseType: !165, size: 64, offset: 640)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 208, baseType: !1882, size: 64, offset: 704)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 208, size: 64, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1882, file: !1865, line: 209, baseType: !1180, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1882, file: !1865, line: 210, baseType: !1180, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1864, file: !1865, line: 212, baseType: !1180, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1864, file: !1865, line: 213, baseType: !430, size: 32, offset: 832)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1864, file: !1865, line: 214, baseType: !439, size: 32, offset: 864)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1864, file: !1865, line: 215, baseType: !1890, size: 32, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1865, line: 31, baseType: !1891)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !167, line: 110, baseType: !237)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1864, file: !1865, line: 216, baseType: !258, size: 16, offset: 928)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1864, file: !1865, line: 217, baseType: !258, size: 16, offset: 944)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1864, file: !1865, line: 221, baseType: !818, size: 16, offset: 960)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1864, file: !1865, line: 228, baseType: !207, size: 64, offset: 1024)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 245, baseType: !1897, size: 320, offset: 1088)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 245, size: 320, elements: !1898)
!1898 = !{!1899, !1926}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1897, file: !1865, line: 246, baseType: !1900, size: 320)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1865, line: 114, size: 320, elements: !1901)
!1901 = !{!1902, !1903, !1915, !1918, !1925}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1900, file: !1865, line: 116, baseType: !207, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !1865, line: 117, baseType: !1904, size: 64, offset: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !1865, line: 117, size: 64, elements: !1905)
!1905 = !{!1906, !1914}
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1904, file: !1865, line: 118, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1865, line: 118, size: 64, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1907, file: !1865, line: 120, baseType: !314, size: 16)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1907, file: !1865, line: 121, baseType: !1911, size: 48, offset: 16)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 48, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 6)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1904, file: !1865, line: 127, baseType: !207, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1900, file: !1865, line: 129, baseType: !1916, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1865, line: 102, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1900, file: !1865, line: 130, baseType: !1919, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1865, line: 108, size: 192, elements: !1921)
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1920, file: !1865, line: 109, baseType: !900, size: 128, align: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1920, file: !1865, line: 110, baseType: !1459, size: 32, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1920, file: !1865, line: 111, baseType: !760, size: 8, offset: 160)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1900, file: !1865, line: 131, baseType: !203, size: 64, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !1865, line: 247, baseType: !1927, size: 320)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1897, file: !1865, line: 247, size: 320, elements: !1928)
!1928 = !{!1929, !1930, !1931, !1932, !1933}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1927, file: !1865, line: 248, baseType: !207, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1927, file: !1865, line: 249, baseType: !207, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1927, file: !1865, line: 250, baseType: !1916, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1927, file: !1865, line: 251, baseType: !1919, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1927, file: !1865, line: 252, baseType: !345, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1865, line: 260, baseType: !1935, size: 256, offset: 1408)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1865, line: 260, size: 256, elements: !1936)
!1936 = !{!1937, !1943}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1935, file: !1865, line: 261, baseType: !1938, size: 256)
!1938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1865, line: 134, size: 256, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1938, file: !1865, line: 135, baseType: !165, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1938, file: !1865, line: 136, baseType: !1942, size: 256)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !212)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1865, line: 262, baseType: !1944, size: 256)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1865, line: 262, size: 256, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1944, file: !1865, line: 264, baseType: !172, size: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1944, file: !1865, line: 265, baseType: !1948, size: 128, offset: 128)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1949, line: 22, size: 128, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1950 = !{!1951, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1948, file: !1949, line: 23, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1949, line: 23, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1948, file: !1949, line: 24, baseType: !207, size: 64, offset: 64)
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
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1838, file: !1839, line: 135, baseType: !165, size: 64, offset: 1024)
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
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1981, file: !1982, line: 23, baseType: !638, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1981, file: !1982, line: 24, baseType: !690, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1981, file: !1982, line: 26, baseType: !172, size: 128, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1981, file: !1982, line: 28, baseType: !1988, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1976, file: !1977, line: 19, baseType: !207, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1976, file: !1977, line: 20, baseType: !684, size: 64, offset: 448)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1976, file: !1977, line: 23, baseType: !924, size: 128, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1976, file: !1977, line: 24, baseType: !430, size: 32, offset: 640)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1976, file: !1977, line: 29, baseType: !684, size: 64, offset: 704)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1976, file: !1977, line: 36, baseType: !1995, size: 320, offset: 768)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1996, line: 15, size: 320, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1995, file: !1996, line: 16, baseType: !638, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1995, file: !1996, line: 18, baseType: !109, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1995, file: !1996, line: 19, baseType: !109, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1995, file: !1996, line: 20, baseType: !109, size: 32, offset: 96)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1995, file: !1996, line: 21, baseType: !109, size: 32, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1995, file: !1996, line: 22, baseType: !207, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1995, file: !1996, line: 23, baseType: !207, size: 64, offset: 256)
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
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2014, file: !1839, line: 26, baseType: !299, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2014, file: !1839, line: 27, baseType: !109, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2014, file: !1839, line: 28, baseType: !2019, offset: 64)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, elements: !1829)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !1838, file: !1839, line: 142, baseType: !2021, size: 128, offset: 1344)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1838, file: !1839, line: 142, size: 128, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2021, file: !1839, line: 143, baseType: !109, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2021, file: !1839, line: 144, baseType: !900, size: 128, align: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1770, file: !14, line: 1013, baseType: !2026, size: 256, offset: 960)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2031, !2032, !2033}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2026, file: !14, line: 971, baseType: !207, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2026, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2026, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2026, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2026, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2026, file: !14, line: 976, baseType: !580, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1770, file: !14, line: 1014, baseType: !1251, size: 128, offset: 1216)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1770, file: !14, line: 1015, baseType: !424, size: 64, offset: 1344)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1770, file: !14, line: 1016, baseType: !2037, size: 64, offset: 1408)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2039)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2040)
!2040 = !{!2041, !2042, !2046, !2051, !2055, !2084, !2085, !2091, !2104, !2112, !2116, !2117, !2408, !2409, !2413, !2418, !2419, !2423, !2427, !2433, !2434, !2438, !2439, !2445, !2449, !2453, !2458, !2462, !2466, !2470, !2474, !2475, !2481}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2039, file: !14, line: 1915, baseType: !609, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2039, file: !14, line: 1916, baseType: !2043, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!580, !1769, !580, !109}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2039, file: !14, line: 1917, baseType: !2047, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!377, !1769, !345, !392, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2039, file: !14, line: 1918, baseType: !2052, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!377, !1769, !203, !392, !2050}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2039, file: !14, line: 1919, baseType: !2056, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!377, !2059, !2081}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2061)
!2061 = !{!2062, !2063, !2064, !2068, !2069, !2070, !2071}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2060, file: !14, line: 374, baseType: !1769, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2060, file: !14, line: 375, baseType: !580, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2060, file: !14, line: 376, baseType: !2065, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !2059, !381}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2060, file: !14, line: 377, baseType: !165, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2060, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2060, file: !14, line: 379, baseType: !314, size: 16, offset: 288)
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !14, line: 380, baseType: !2072, size: 64, offset: 320)
!2072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !14, line: 380, size: 64, elements: !2073)
!2073 = !{!2074, !2077}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2072, file: !14, line: 386, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2072, file: !14, line: 395, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!377, !165}
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
!2102 = !{!760, !2095, !203, !109, !580, !196, !7}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2096, file: !14, line: 1860, baseType: !580, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2039, file: !14, line: 1924, baseType: !2105, size: 64, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!2108, !1769, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2109, line: 59, baseType: !7)
!2109 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !595, line: 31, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2039, file: !14, line: 1925, baseType: !2113, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!381, !1769, !7, !207}
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
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2128, file: !38, line: 631, baseType: !207, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2128, file: !38, line: 632, baseType: !207, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2125, file: !38, line: 635, baseType: !900, size: 128, align: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2122, file: !38, line: 639, baseType: !1742, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2122, file: !38, line: 640, baseType: !2135, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2136, line: 297, baseType: !2137)
!2136 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2136, line: 297, size: 64, elements: !2138)
!2138 = !{!2139}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2137, file: !2136, line: 297, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2141, line: 19, baseType: !207)
!2141 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !38, line: 646, baseType: !2143, size: 64, offset: 256)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !38, line: 646, size: 64, elements: !2144)
!2144 = !{!2145, !2148}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2143, file: !38, line: 647, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2147)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !207)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2143, file: !38, line: 648, baseType: !2147, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2122, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2122, file: !38, line: 667, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2153)
!2153 = !{!2154}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2152, file: !38, line: 580, baseType: !1339, size: 320)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2122, file: !38, line: 670, baseType: !760, size: 8, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2122, file: !38, line: 681, baseType: !2157, size: 256, offset: 512)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !38, line: 678, size: 256, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2157, file: !38, line: 679, baseType: !792, size: 192, align: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2157, file: !38, line: 680, baseType: !207, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2122, file: !38, line: 689, baseType: !172, size: 128, offset: 768)
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
!2179 = !{!109, !2121, !207}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2168, file: !2169, line: 572, baseType: !2181, size: 64, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!109, !2121}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2168, file: !2169, line: 578, baseType: !2185, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!109, !2121, !207, !207, !207}
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
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2197, file: !2169, line: 515, baseType: !166, size: 32, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2197, file: !2169, line: 516, baseType: !207, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2197, file: !2169, line: 517, baseType: !207, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2197, file: !2169, line: 518, baseType: !207, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2194, file: !2169, line: 520, baseType: !37, size: 32, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2194, file: !2169, line: 522, baseType: !2206, size: 64, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2141, line: 22, baseType: !2208)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2141, line: 22, size: 64, elements: !2209)
!2209 = !{!2210}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2208, file: !2141, line: 22, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2141, line: 15, baseType: !207)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2194, file: !2169, line: 524, baseType: !2213, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2136, line: 372, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2136, line: 372, size: 64, elements: !2216)
!2216 = !{!2217}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2215, file: !2136, line: 372, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2141, line: 16, baseType: !207)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !2169, line: 527, baseType: !2220, size: 64, offset: 512)
!2220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2194, file: !2169, line: 527, size: 64, elements: !2221)
!2221 = !{!2222, !2228}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2220, file: !2169, line: 528, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2141, line: 21, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2141, line: 21, size: 64, elements: !2225)
!2225 = !{!2226}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2224, file: !2141, line: 21, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2141, line: 14, baseType: !207)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2220, file: !2169, line: 529, baseType: !2207, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2194, file: !2169, line: 534, baseType: !2230, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2232)
!2232 = !{!2233, !2234, !2352, !2357}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !38, line: 75, baseType: !207, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !38, line: 83, baseType: !2235, size: 320, offset: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !38, line: 83, size: 320, elements: !2236)
!2236 = !{!2237, !2258, !2272, !2276, !2351}
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 84, baseType: !2238, size: 320)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 84, size: 320, elements: !2239)
!2239 = !{!2240, !2251, !2252, !2257}
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !38, line: 90, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !38, line: 90, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2249, !2250}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2241, file: !38, line: 91, baseType: !172, size: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !38, line: 94, baseType: !2245, size: 128)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2241, file: !38, line: 94, size: 128, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2245, file: !38, line: 96, baseType: !165, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2245, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2241, file: !38, line: 102, baseType: !172, size: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2241, file: !38, line: 103, baseType: !172, size: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2238, file: !38, line: 106, baseType: !420, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !38, line: 107, baseType: !2253, size: 64, offset: 192)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !38, line: 107, size: 64, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2253, file: !38, line: 108, baseType: !207, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2253, file: !38, line: 109, baseType: !207, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2238, file: !38, line: 117, baseType: !207, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 119, baseType: !2259, size: 320)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 119, size: 320, elements: !2260)
!2260 = !{!2261, !2262, !2265, !2266, !2267}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2259, file: !38, line: 124, baseType: !207, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2259, file: !38, line: 125, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2259, file: !38, line: 126, baseType: !207, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2259, file: !38, line: 127, baseType: !207, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !38, line: 128, baseType: !2268, size: 64, offset: 256)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2259, file: !38, line: 128, size: 64, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2268, file: !38, line: 133, baseType: !207, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2268, file: !38, line: 138, baseType: !684, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !38, line: 141, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !38, line: 141, size: 64, elements: !2274)
!2274 = !{!2275}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2273, file: !38, line: 142, baseType: !207, size: 64)
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
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2284, file: !54, line: 22, baseType: !207, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2284, file: !54, line: 23, baseType: !2288, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2284, file: !54, line: 24, baseType: !2288, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2284, file: !54, line: 25, baseType: !207, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2284, file: !54, line: 26, baseType: !207, size: 64, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2284, file: !54, line: 27, baseType: !207, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2281, file: !54, line: 128, baseType: !2294, size: 128, offset: 384)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2295, line: 105, size: 128, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2294, file: !2295, line: 110, baseType: !207, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2294, file: !2295, line: 118, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2295, line: 95, size: 448, elements: !2301)
!2301 = !{!2302, !2303, !2309, !2310, !2311, !2312, !2313}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2300, file: !2295, line: 96, baseType: !684, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2300, file: !2295, line: 97, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2295, line: 60, baseType: !2306)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2300, file: !2295, line: 98, baseType: !2304, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2300, file: !2295, line: 99, baseType: !760, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2300, file: !2295, line: 100, baseType: !760, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2300, file: !2295, line: 101, baseType: !900, size: 128, align: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2300, file: !2295, line: 102, baseType: !2308, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2281, file: !54, line: 129, baseType: !629, size: 256, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2281, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2281, file: !54, line: 132, baseType: !207, size: 64, offset: 832)
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
!2331 = !{!109, !2280, !207, !207, !109}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2281, file: !54, line: 134, baseType: !165, size: 64, offset: 960)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2281, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !54, line: 136, baseType: !2335, size: 128, offset: 1088)
!2335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !54, line: 136, size: 128, elements: !2336)
!2336 = !{!2337, !2343}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2335, file: !54, line: 137, baseType: !2338, size: 128)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2339, line: 6, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2340 = !{!2341, !2342}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2338, file: !2339, line: 7, baseType: !196, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2338, file: !2339, line: 8, baseType: !196, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !54, line: 138, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2335, file: !54, line: 138, elements: !2345)
!2345 = !{!2346, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2344, file: !54, line: 138, baseType: !2347)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !54, line: 138, elements: !967)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2344, file: !54, line: 138, baseType: !2349)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, elements: !1829)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2277, file: !38, line: 147, baseType: !165, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2235, file: !38, line: 161, baseType: !900, size: 128, align: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !38, line: 164, baseType: !2353, size: 32, offset: 384)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !38, line: 164, size: 32, elements: !2354)
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2353, file: !38, line: 169, baseType: !299, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2353, file: !38, line: 177, baseType: !7, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2231, file: !38, line: 181, baseType: !299, size: 32, offset: 416)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2194, file: !2169, line: 535, baseType: !2230, size: 64, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2194, file: !2169, line: 541, baseType: !2360, size: 64, offset: 704)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2194, file: !2169, line: 545, baseType: !2362, size: 64, offset: 768)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2194, file: !2169, line: 549, baseType: !2364, size: 64, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2136, line: 520, baseType: !2230)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2168, file: !2169, line: 581, baseType: !2366, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!2192, !2193, !7}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2168, file: !2169, line: 582, baseType: !2370, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!2192, !2193, !207, !207}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2168, file: !2169, line: 584, baseType: !2374, size: 64, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!207, !2121}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2168, file: !2169, line: 588, baseType: !2189, size: 64, offset: 576)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2168, file: !2169, line: 591, baseType: !2189, size: 64, offset: 640)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2168, file: !2169, line: 597, baseType: !2380, size: 64, offset: 704)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!109, !2121, !207, !165, !109, !109}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2168, file: !2169, line: 603, baseType: !2384, size: 64, offset: 768)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!203, !2121}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2168, file: !2169, line: 613, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!109, !2121, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2168, file: !2169, line: 625, baseType: !2394, size: 64, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!2391, !2121, !207}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2168, file: !2169, line: 633, baseType: !2398, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!2230, !2121, !207}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2122, file: !38, line: 697, baseType: !207, size: 64, offset: 1024)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2122, file: !38, line: 699, baseType: !1769, size: 64, offset: 1088)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2122, file: !38, line: 700, baseType: !165, size: 64, offset: 1152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2122, file: !38, line: 711, baseType: !684, size: 64, offset: 1216)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2122, file: !38, line: 717, baseType: !2391, size: 64, offset: 1280)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2122, file: !38, line: 722, baseType: !2407, offset: 1344)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !967)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2039, file: !14, line: 1928, baseType: !207, size: 64, offset: 768)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2039, file: !14, line: 1929, baseType: !2410, size: 64, offset: 832)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!109, !424, !1769}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2039, file: !14, line: 1930, baseType: !2414, size: 64, offset: 896)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!109, !1769, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !165)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2039, file: !14, line: 1931, baseType: !2410, size: 64, offset: 960)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2039, file: !14, line: 1932, baseType: !2420, size: 64, offset: 1024)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!109, !1769, !580, !580, !109}
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
!2442 = !{!377, !2443, !1769, !2050, !392, !7}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1122, line: 59, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2039, file: !14, line: 1939, baseType: !2446, size: 64, offset: 1472)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!377, !1769, !2050, !2443, !392, !7}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2039, file: !14, line: 1940, baseType: !2450, size: 64, offset: 1536)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !1769}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2039, file: !14, line: 1941, baseType: !2454, size: 64, offset: 1600)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!109, !1769, !109, !2457, !164}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2039, file: !14, line: 1942, baseType: !2459, size: 64, offset: 1664)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!381, !1769, !109, !580, !580}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2039, file: !14, line: 1944, baseType: !2463, size: 64, offset: 1728)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !1120, !1769}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2039, file: !14, line: 1948, baseType: !2467, size: 64, offset: 1792)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!377, !1769, !580, !1769, !580, !392, !7}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2039, file: !14, line: 1950, baseType: !2471, size: 64, offset: 1856)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!580, !1769, !580, !1769, !580, !580, !7}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2039, file: !14, line: 1953, baseType: !2420, size: 64, offset: 1920)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2039, file: !14, line: 1954, baseType: !2476, size: 64, offset: 1984)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!109, !2479, !7}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2039, file: !14, line: 1955, baseType: !2482, size: 64, offset: 2048)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!109, !2479, !2089, !7}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1770, file: !14, line: 1018, baseType: !196, size: 64, offset: 1472)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1770, file: !14, line: 1020, baseType: !165, size: 64, offset: 1536)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1770, file: !14, line: 1023, baseType: !165, size: 64, offset: 1600)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1770, file: !14, line: 1027, baseType: !2489, size: 64, offset: 1664)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1770, file: !14, line: 1029, baseType: !420, size: 64, offset: 1728)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1770, file: !14, line: 1030, baseType: !2492, size: 32, offset: 1792)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2493, line: 8, baseType: !237)
!2493 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1770, file: !14, line: 1031, baseType: !2492, size: 32, offset: 1824)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1746, file: !38, line: 756, baseType: !207, size: 64, offset: 704)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1746, file: !38, line: 757, baseType: !207, size: 64, offset: 768)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1746, file: !38, line: 760, baseType: !207, size: 64, offset: 832)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1746, file: !38, line: 761, baseType: !207, size: 64, offset: 896)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1746, file: !38, line: 763, baseType: !207, size: 64, offset: 960)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1746, file: !38, line: 764, baseType: !2501, size: 64, offset: 1024)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2136, line: 299, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2136, line: 299, size: 64, elements: !2504)
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2503, file: !2136, line: 299, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2141, line: 18, baseType: !207)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1746, file: !38, line: 773, baseType: !299, size: 32, offset: 1088)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1746, file: !38, line: 785, baseType: !299, size: 32, offset: 1120)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1746, file: !38, line: 795, baseType: !2510, size: 64, offset: 1152)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2512)
!2512 = !{!2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2511, file: !38, line: 727, baseType: !196, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2511, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1746, file: !38, line: 801, baseType: !207, size: 64, offset: 1216)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1746, file: !38, line: 804, baseType: !684, size: 64, offset: 1280)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1746, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1746, file: !38, line: 808, baseType: !279, size: 32, offset: 1376)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1746, file: !38, line: 823, baseType: !1339, size: 320, offset: 1408)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1746, file: !38, line: 825, baseType: !172, size: 128, offset: 1728)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1746, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1746, file: !38, line: 849, baseType: !207, size: 64, offset: 1920)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1746, file: !38, line: 850, baseType: !207, size: 64, offset: 1984)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1746, file: !38, line: 852, baseType: !207, size: 64, offset: 2048)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1746, file: !38, line: 853, baseType: !207, size: 64, offset: 2112)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1746, file: !38, line: 854, baseType: !686, size: 64, offset: 2176)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1746, file: !38, line: 855, baseType: !207, size: 64, offset: 2240)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1746, file: !38, line: 856, baseType: !207, size: 64, offset: 2304)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1746, file: !38, line: 857, baseType: !207, size: 64, offset: 2368)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1746, file: !38, line: 858, baseType: !207, size: 64, offset: 2432)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1746, file: !38, line: 865, baseType: !470, size: 32, offset: 2496)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1746, file: !38, line: 867, baseType: !279, size: 32, offset: 2528)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1746, file: !38, line: 869, baseType: !207, size: 64, offset: 2560)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1746, file: !38, line: 869, baseType: !207, size: 64, offset: 2624)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1746, file: !38, line: 869, baseType: !207, size: 64, offset: 2688)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1746, file: !38, line: 869, baseType: !207, size: 64, offset: 2752)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1746, file: !38, line: 870, baseType: !207, size: 64, offset: 2816)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1746, file: !38, line: 870, baseType: !207, size: 64, offset: 2880)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1746, file: !38, line: 870, baseType: !207, size: 64, offset: 2944)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1746, file: !38, line: 871, baseType: !207, size: 64, offset: 3008)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1746, file: !38, line: 871, baseType: !207, size: 64, offset: 3072)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1746, file: !38, line: 871, baseType: !207, size: 64, offset: 3136)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1746, file: !38, line: 871, baseType: !207, size: 64, offset: 3200)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1746, file: !38, line: 873, baseType: !2545, size: 3328, offset: 3264)
!2545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 3328, elements: !2546)
!2546 = !{!2547}
!2547 = !DISubrange(count: 52)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1746, file: !38, line: 875, baseType: !2549, size: 1280, offset: 6592)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1981, size: 1280, elements: !212)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1746, file: !38, line: 877, baseType: !2551, size: 64, offset: 7872)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1746, file: !38, line: 880, baseType: !2554, size: 1088, offset: 7936)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2555, line: 72, baseType: !2556)
!2555 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2555, line: 23, size: 1088, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2565, !2566, !2567, !2568, !2595, !2596, !2597}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2556, file: !2555, line: 28, baseType: !196, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2556, file: !2555, line: 38, baseType: !686, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2556, file: !2555, line: 40, baseType: !207, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2556, file: !2555, line: 43, baseType: !1339, size: 320, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2556, file: !2555, line: 44, baseType: !2563, size: 64, offset: 512)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2555, line: 44, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2556, file: !2555, line: 48, baseType: !207, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2556, file: !2555, line: 59, baseType: !680, size: 256, offset: 640)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2556, file: !2555, line: 60, baseType: !165, size: 64, offset: 896)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2556, file: !2555, line: 61, baseType: !2569, size: 64, offset: 960)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2571)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2572, line: 13, size: 1216, elements: !2573)
!2572 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579, !2580, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2571, file: !2572, line: 14, baseType: !165, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2571, file: !2572, line: 15, baseType: !207, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2571, file: !2572, line: 17, baseType: !207, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2571, file: !2572, line: 17, baseType: !207, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2571, file: !2572, line: 18, baseType: !207, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2571, file: !2572, line: 18, baseType: !207, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2571, file: !2572, line: 19, baseType: !2581, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2571, file: !2572, line: 21, baseType: !381, size: 64, offset: 448)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2571, file: !2572, line: 23, baseType: !381, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2571, file: !2572, line: 24, baseType: !381, size: 64, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2571, file: !2572, line: 25, baseType: !381, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2571, file: !2572, line: 26, baseType: !381, size: 64, offset: 704)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2571, file: !2572, line: 27, baseType: !381, size: 64, offset: 768)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2571, file: !2572, line: 28, baseType: !381, size: 64, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2571, file: !2572, line: 29, baseType: !381, size: 64, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2571, file: !2572, line: 30, baseType: !381, size: 64, offset: 960)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2571, file: !2572, line: 31, baseType: !381, size: 64, offset: 1024)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2571, file: !2572, line: 32, baseType: !381, size: 64, offset: 1088)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2571, file: !2572, line: 33, baseType: !381, size: 64, offset: 1152)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2556, file: !2555, line: 63, baseType: !299, size: 32, offset: 1024)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2556, file: !2555, line: 69, baseType: !314, size: 16, offset: 1056)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2556, file: !2555, line: 70, baseType: !816, size: 16, offset: 1072)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1746, file: !38, line: 882, baseType: !207, size: 64, offset: 9024)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1746, file: !38, line: 885, baseType: !279, size: 32, offset: 9088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1746, file: !38, line: 886, baseType: !2601, size: 64, offset: 9152)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1746, file: !38, line: 901, baseType: !2006, size: 64, offset: 9216)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1746, file: !38, line: 904, baseType: !1769, size: 64, offset: 9280)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1746, file: !38, line: 906, baseType: !2606, size: 64, offset: 9344)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1746, file: !38, line: 930, baseType: !299, size: 32, offset: 9408)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1746, file: !38, line: 933, baseType: !299, size: 32, offset: 9440)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1746, file: !38, line: 935, baseType: !2611, size: 64, offset: 9472)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2612)
!2612 = !{!2613}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2611, file: !68, line: 104, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1746, file: !38, line: 940, baseType: !684, size: 64, offset: 9536)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1746, file: !38, line: 942, baseType: !938, size: 256, offset: 9600)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1743, file: !38, line: 986, baseType: !2619, offset: 10240)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, elements: !1829)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1446, file: !1122, line: 882, baseType: !1742, size: 64, offset: 9792)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1446, file: !1122, line: 884, baseType: !109, size: 32, offset: 9856)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1446, file: !1122, line: 885, baseType: !109, size: 32, offset: 9888)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1446, file: !1122, line: 886, baseType: !109, size: 32, offset: 9920)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1446, file: !1122, line: 888, baseType: !109, size: 32, offset: 9952)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1446, file: !1122, line: 890, baseType: !207, size: 64, offset: 9984)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1446, file: !1122, line: 893, baseType: !7, size: 32, offset: 10048)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1446, file: !1122, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1446, file: !1122, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1446, file: !1122, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1446, file: !1122, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1446, file: !1122, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1446, file: !1122, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1446, file: !1122, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1446, file: !1122, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1446, file: !1122, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1446, file: !1122, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1446, file: !1122, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1446, file: !1122, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1446, file: !1122, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1446, file: !1122, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1446, file: !1122, line: 969, baseType: !207, size: 64, offset: 10176)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1446, file: !1122, line: 971, baseType: !2643, size: 448, offset: 10240)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2644)
!2644 = !{!2645, !2646, !2651}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2643, file: !62, line: 26, baseType: !207, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2643, file: !62, line: 27, baseType: !2647, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!381, !2650}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !62, line: 28, baseType: !2652, size: 320, offset: 128)
!2652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2643, file: !62, line: 28, size: 320, elements: !2653)
!2653 = !{!2654, !2663, !2688}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2652, file: !62, line: 37, baseType: !2655, size: 320)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2652, file: !62, line: 30, size: 320, elements: !2656)
!2656 = !{!2657, !2658, !2659, !2660, !2661, !2662}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2655, file: !62, line: 31, baseType: !236, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2655, file: !62, line: 32, baseType: !237, size: 32, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2655, file: !62, line: 33, baseType: !237, size: 32, offset: 96)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2655, file: !62, line: 34, baseType: !237, size: 32, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2655, file: !62, line: 35, baseType: !196, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2655, file: !62, line: 36, baseType: !236, size: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2652, file: !62, line: 47, baseType: !2664, size: 192)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2652, file: !62, line: 39, size: 192, elements: !2665)
!2665 = !{!2666, !2667, !2668, !2687}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2664, file: !62, line: 40, baseType: !1613, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2664, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !2664, file: !62, line: 42, baseType: !2669, size: 64, offset: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2664, file: !62, line: 42, size: 64, elements: !2670)
!2670 = !{!2671, !2679}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2669, file: !62, line: 43, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2674, line: 7, size: 128, elements: !2675)
!2674 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2675 = !{!2676, !2678}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2673, file: !2674, line: 8, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !379, line: 93, baseType: !582)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2673, file: !2674, line: 9, baseType: !582, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2669, file: !62, line: 44, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2682, line: 7, size: 64, elements: !2683)
!2682 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2683 = !{!2684, !2686}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2681, file: !2682, line: 8, baseType: !2685, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2682, line: 5, baseType: !676)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2681, file: !2682, line: 9, baseType: !676, size: 32, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2664, file: !62, line: 46, baseType: !196, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2652, file: !62, line: 55, baseType: !2689, size: 256)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2652, file: !62, line: 49, size: 256, elements: !2690)
!2690 = !{!2691, !2694, !2695, !2696, !2697}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2689, file: !62, line: 50, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2689, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2689, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2689, file: !62, line: 53, baseType: !207, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2689, file: !62, line: 54, baseType: !207, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1446, file: !1122, line: 973, baseType: !2699, size: 32, offset: 10688)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !167, line: 27, baseType: !2700)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !379, line: 28, baseType: !109)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1446, file: !1122, line: 974, baseType: !2699, size: 32, offset: 10720)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1446, file: !1122, line: 978, baseType: !207, size: 64, offset: 10752)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1446, file: !1122, line: 987, baseType: !1445, size: 64, offset: 10816)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1446, file: !1122, line: 990, baseType: !1445, size: 64, offset: 10880)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1446, file: !1122, line: 995, baseType: !172, size: 128, offset: 10944)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1446, file: !1122, line: 996, baseType: !172, size: 128, offset: 11072)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1446, file: !1122, line: 997, baseType: !1445, size: 64, offset: 11200)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1446, file: !1122, line: 1005, baseType: !172, size: 128, offset: 11264)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1446, file: !1122, line: 1006, baseType: !172, size: 128, offset: 11392)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1446, file: !1122, line: 1009, baseType: !1810, size: 64, offset: 11520)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1446, file: !1122, line: 1010, baseType: !2712, size: 512, offset: 11584)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !924, size: 512, elements: !212)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1446, file: !1122, line: 1011, baseType: !172, size: 128, offset: 12096)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1446, file: !1122, line: 1012, baseType: !172, size: 128, offset: 12224)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1446, file: !1122, line: 1014, baseType: !628, size: 64, offset: 12352)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1446, file: !1122, line: 1017, baseType: !809, size: 64, offset: 12416)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1446, file: !1122, line: 1020, baseType: !809, size: 64, offset: 12480)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1446, file: !1122, line: 1023, baseType: !165, size: 64, offset: 12544)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1446, file: !1122, line: 1025, baseType: !196, size: 64, offset: 12608)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1446, file: !1122, line: 1026, baseType: !196, size: 64, offset: 12672)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1446, file: !1122, line: 1031, baseType: !196, size: 64, offset: 12736)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1446, file: !1122, line: 1032, baseType: !2723, size: 192, offset: 12800)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1122, line: 324, size: 192, elements: !2724)
!2724 = !{!2725, !2726, !2727}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2723, file: !1122, line: 326, baseType: !196, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2723, file: !1122, line: 327, baseType: !196, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2723, file: !1122, line: 328, baseType: !638, size: 32, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1446, file: !1122, line: 1041, baseType: !207, size: 64, offset: 12992)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1446, file: !1122, line: 1042, baseType: !207, size: 64, offset: 13056)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1446, file: !1122, line: 1045, baseType: !196, size: 64, offset: 13120)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1446, file: !1122, line: 1048, baseType: !196, size: 64, offset: 13184)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1446, file: !1122, line: 1051, baseType: !207, size: 64, offset: 13248)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1446, file: !1122, line: 1052, baseType: !207, size: 64, offset: 13312)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1446, file: !1122, line: 1055, baseType: !2735, size: 640, offset: 13376)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2736, line: 132, size: 640, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2737 = !{!2738, !2744, !2745}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2735, file: !2736, line: 133, baseType: !2739, size: 576)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2740, size: 576, elements: !346)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2736, line: 117, size: 192, elements: !2741)
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2740, file: !2736, line: 118, baseType: !196, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2740, file: !2736, line: 119, baseType: !1622, size: 128, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2735, file: !2736, line: 134, baseType: !7, size: 32, offset: 576)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2735, file: !2736, line: 135, baseType: !7, size: 32, offset: 608)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1446, file: !1122, line: 1058, baseType: !2747, size: 448, offset: 14016)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2736, line: 144, size: 448, elements: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2747, file: !2736, line: 145, baseType: !900, size: 128, align: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2747, file: !2736, line: 146, baseType: !680, size: 256, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2747, file: !2736, line: 147, baseType: !7, size: 32, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1446, file: !1122, line: 1064, baseType: !1836, size: 64, offset: 14464)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1446, file: !1122, line: 1067, baseType: !1836, size: 64, offset: 14528)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1446, file: !1122, line: 1070, baseType: !1836, size: 64, offset: 14592)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1446, file: !1122, line: 1074, baseType: !1863, size: 64, offset: 14656)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1446, file: !1122, line: 1084, baseType: !2757, size: 128, offset: 14720)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 128, elements: !2758)
!2758 = !{!2759}
!2759 = !DISubrange(count: 16)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1446, file: !1122, line: 1086, baseType: !2761, size: 64, offset: 14848)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1122, line: 55, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1446, file: !1122, line: 1089, baseType: !2764, size: 64, offset: 14912)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2765, line: 12, size: 64, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2766 = !{!2767}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2764, file: !2765, line: 13, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2765, line: 8, flags: DIFlagFwdDecl)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1446, file: !1122, line: 1090, baseType: !2771, size: 128, offset: 14976)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2772, line: 13, size: 128, elements: !2773)
!2772 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2773 = !{!2774}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2771, file: !2772, line: 14, baseType: !172, size: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1446, file: !1122, line: 1097, baseType: !2776, size: 64, offset: 15104)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1122, line: 50, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1446, file: !1122, line: 1100, baseType: !2779, size: 64, offset: 15168)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1122, line: 1100, flags: DIFlagFwdDecl)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1446, file: !1122, line: 1103, baseType: !2782, size: 64, offset: 15232)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1122, line: 53, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1446, file: !1122, line: 1107, baseType: !2785, size: 64, offset: 15296)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1122, line: 56, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1446, file: !1122, line: 1110, baseType: !2788, size: 64, offset: 15360)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2790, line: 93, size: 8768, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2839, !2848, !2849, !2851, !2852, !2853, !2856, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2894, !2895, !2902, !2912, !2915, !2916, !2919, !2920, !2921, !2922, !2923, !2924}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2789, file: !2790, line: 94, baseType: !1459, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2789, file: !2790, line: 95, baseType: !299, size: 32, offset: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2789, file: !2790, line: 96, baseType: !109, size: 32, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2789, file: !2790, line: 97, baseType: !109, size: 32, offset: 96)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2789, file: !2790, line: 98, baseType: !172, size: 128, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2789, file: !2790, line: 100, baseType: !1432, size: 192, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2789, file: !2790, line: 103, baseType: !1445, size: 64, offset: 448)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2789, file: !2790, line: 106, baseType: !2800, size: 192, offset: 512)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2011, line: 32, size: 192, elements: !2801)
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2800, file: !2011, line: 33, baseType: !172, size: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2800, file: !2011, line: 34, baseType: !2804, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2805, line: 25, baseType: !2806)
!2805 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2805, line: 23, size: 64, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2806, file: !2805, line: 24, baseType: !1693, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2789, file: !2790, line: 109, baseType: !1048, size: 64, offset: 704)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2789, file: !2790, line: 112, baseType: !109, size: 32, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2789, file: !2790, line: 114, baseType: !109, size: 32, offset: 800)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2789, file: !2790, line: 115, baseType: !1445, size: 64, offset: 832)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2789, file: !2790, line: 118, baseType: !109, size: 32, offset: 896)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2789, file: !2790, line: 119, baseType: !7, size: 32, offset: 928)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2789, file: !2790, line: 121, baseType: !2816, size: 64, offset: 960)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2790, line: 80, size: 448, elements: !2818)
!2818 = !{!2819, !2820, !2826}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2817, file: !2790, line: 81, baseType: !299, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2817, file: !2790, line: 82, baseType: !2821, size: 128, offset: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2790, line: 75, size: 128, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2821, file: !2790, line: 76, baseType: !1445, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2821, file: !2790, line: 77, baseType: !2825, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2817, file: !2790, line: 83, baseType: !629, size: 256, offset: 192)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2789, file: !2790, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2789, file: !2790, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2789, file: !2790, line: 138, baseType: !7, size: 32, offset: 1056)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2789, file: !2790, line: 139, baseType: !172, size: 128, offset: 1088)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2789, file: !2790, line: 142, baseType: !1566, size: 512, offset: 1216)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2789, file: !2790, line: 143, baseType: !1574, size: 64, offset: 1728)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2789, file: !2790, line: 150, baseType: !2834, size: 256, offset: 1792)
!2834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2835, size: 256, elements: !799)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2790, line: 38, size: 128, elements: !2836)
!2836 = !{!2837, !2838}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2835, file: !2790, line: 39, baseType: !196, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2835, file: !2790, line: 40, baseType: !196, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2789, file: !2790, line: 156, baseType: !2840, size: 192, offset: 2048)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2790, line: 66, size: 192, elements: !2841)
!2841 = !{!2842}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2840, file: !2790, line: 67, baseType: !2843, size: 192)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2790, line: 47, size: 192, elements: !2844)
!2844 = !{!2845, !2846, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2843, file: !2790, line: 48, baseType: !686, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2843, file: !2790, line: 49, baseType: !686, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2843, file: !2790, line: 50, baseType: !686, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2789, file: !2790, line: 160, baseType: !2735, size: 640, offset: 2240)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2789, file: !2790, line: 163, baseType: !2850, size: 256, offset: 2880)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1810, size: 256, elements: !212)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2789, file: !2790, line: 169, baseType: !1810, size: 64, offset: 3136)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2789, file: !2790, line: 172, baseType: !109, size: 32, offset: 3200)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2789, file: !2790, line: 174, baseType: !2854, size: 64, offset: 3264)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2790, line: 174, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2789, file: !2790, line: 185, baseType: !2857, size: 64, offset: 3328)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !466, line: 860, baseType: !2858)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !466, line: 853, size: 64, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2858, file: !466, line: 858, baseType: !465, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2858, file: !466, line: 859, baseType: !279, size: 32, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2789, file: !2790, line: 186, baseType: !196, size: 64, offset: 3392)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2789, file: !2790, line: 186, baseType: !196, size: 64, offset: 3456)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2789, file: !2790, line: 186, baseType: !196, size: 64, offset: 3520)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2789, file: !2790, line: 186, baseType: !196, size: 64, offset: 3584)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2789, file: !2790, line: 187, baseType: !196, size: 64, offset: 3648)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2789, file: !2790, line: 188, baseType: !196, size: 64, offset: 3712)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2789, file: !2790, line: 189, baseType: !2723, size: 192, offset: 3776)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2789, file: !2790, line: 190, baseType: !207, size: 64, offset: 3968)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2789, file: !2790, line: 190, baseType: !207, size: 64, offset: 4032)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2789, file: !2790, line: 190, baseType: !207, size: 64, offset: 4096)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2789, file: !2790, line: 190, baseType: !207, size: 64, offset: 4160)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2789, file: !2790, line: 191, baseType: !207, size: 64, offset: 4224)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2789, file: !2790, line: 191, baseType: !207, size: 64, offset: 4288)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2789, file: !2790, line: 191, baseType: !207, size: 64, offset: 4352)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2789, file: !2790, line: 191, baseType: !207, size: 64, offset: 4416)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2789, file: !2790, line: 192, baseType: !207, size: 64, offset: 4480)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2789, file: !2790, line: 192, baseType: !207, size: 64, offset: 4544)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2789, file: !2790, line: 192, baseType: !207, size: 64, offset: 4608)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2789, file: !2790, line: 192, baseType: !207, size: 64, offset: 4672)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2789, file: !2790, line: 193, baseType: !207, size: 64, offset: 4736)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2789, file: !2790, line: 193, baseType: !207, size: 64, offset: 4800)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2789, file: !2790, line: 194, baseType: !2884, size: 448, offset: 4864)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2885, line: 12, size: 448, elements: !2886)
!2885 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2892, !2893}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2884, file: !2885, line: 15, baseType: !196, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2884, file: !2885, line: 17, baseType: !196, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2884, file: !2885, line: 19, baseType: !196, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2884, file: !2885, line: 21, baseType: !196, size: 64, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2884, file: !2885, line: 29, baseType: !196, size: 64, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2884, file: !2885, line: 35, baseType: !196, size: 64, offset: 320)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2884, file: !2885, line: 44, baseType: !196, size: 64, offset: 384)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2789, file: !2790, line: 202, baseType: !200, size: 64, offset: 5312)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2789, file: !2790, line: 213, baseType: !2896, size: 2048, offset: 5376)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2897, size: 2048, elements: !2758)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2898, line: 43, size: 128, elements: !2899)
!2898 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2899 = !{!2900, !2901}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2897, file: !2898, line: 44, baseType: !394, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2897, file: !2898, line: 45, baseType: !394, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2789, file: !2790, line: 216, baseType: !2903, size: 448, offset: 7424)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2790, line: 30, size: 448, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910, !2911}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2903, file: !2790, line: 31, baseType: !109, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2903, file: !2790, line: 32, baseType: !381, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2903, file: !2790, line: 33, baseType: !207, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2903, file: !2790, line: 34, baseType: !196, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2903, file: !2790, line: 34, baseType: !196, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2903, file: !2790, line: 35, baseType: !207, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2903, file: !2790, line: 35, baseType: !207, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2789, file: !2790, line: 219, baseType: !2913, size: 64, offset: 7872)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2790, line: 219, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2789, file: !2790, line: 222, baseType: !7, size: 32, offset: 7936)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2789, file: !2790, line: 223, baseType: !2917, size: 64, offset: 8000)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2790, line: 223, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2789, file: !2790, line: 230, baseType: !760, size: 8, offset: 8064)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2789, file: !2790, line: 231, baseType: !818, size: 16, offset: 8080)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2789, file: !2790, line: 232, baseType: !818, size: 16, offset: 8096)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2789, file: !2790, line: 234, baseType: !1742, size: 64, offset: 8128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2789, file: !2790, line: 237, baseType: !680, size: 256, offset: 8192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2789, file: !2790, line: 243, baseType: !1339, size: 320, offset: 8448)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1446, file: !1122, line: 1111, baseType: !2926, size: 64, offset: 15424)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2790, line: 20, size: 16640, elements: !2928)
!2928 = !{!2929, !2930, !2931, !2932}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2927, file: !2790, line: 21, baseType: !279, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2927, file: !2790, line: 22, baseType: !1459, size: 32, offset: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2927, file: !2790, line: 23, baseType: !1432, size: 192, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2927, file: !2790, line: 24, baseType: !2933, size: 16384, offset: 256)
!2933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2934, size: 16384, elements: !350)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2011, line: 51, size: 256, elements: !2935)
!2935 = !{!2936}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2934, file: !2011, line: 52, baseType: !2937, size: 256)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2011, line: 37, size: 256, elements: !2938)
!2938 = !{!2939, !2946, !2947, !2951}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2937, file: !2011, line: 39, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2941, line: 83, baseType: !2942)
!2941 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2941, line: 82, baseType: !2944)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{null, !109}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2937, file: !2011, line: 40, baseType: !207, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2937, file: !2011, line: 46, baseType: !2948, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2941, line: 86, baseType: !2949)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2941, line: 85, baseType: !1043)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2937, file: !2011, line: 48, baseType: !2804, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1446, file: !1122, line: 1112, baseType: !2804, size: 64, offset: 15488)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1446, file: !1122, line: 1113, baseType: !2804, size: 64, offset: 15552)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1446, file: !1122, line: 1115, baseType: !2804, size: 64, offset: 15616)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1446, file: !1122, line: 1116, baseType: !2800, size: 192, offset: 15680)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1446, file: !1122, line: 1117, baseType: !207, size: 64, offset: 15872)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1446, file: !1122, line: 1118, baseType: !392, size: 64, offset: 15936)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1446, file: !1122, line: 1119, baseType: !7, size: 32, offset: 16000)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1446, file: !1122, line: 1121, baseType: !899, size: 64, offset: 16064)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1446, file: !1122, line: 1125, baseType: !2961, size: 64, offset: 16128)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1122, line: 43, flags: DIFlagFwdDecl)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1446, file: !1122, line: 1127, baseType: !430, size: 32, offset: 16192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1446, file: !1122, line: 1128, baseType: !7, size: 32, offset: 16224)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1446, file: !1122, line: 1130, baseType: !2966, size: 128, offset: 16256)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2967, line: 37, size: 128, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2968 = !{!2969, !2970, !2971}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2966, file: !2967, line: 38, baseType: !109, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2966, file: !2967, line: 39, baseType: !299, size: 32, offset: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2966, file: !2967, line: 40, baseType: !2972, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2967, line: 24, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1446, file: !1122, line: 1131, baseType: !2975, size: 256, offset: 16384)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2976, line: 12, size: 256, elements: !2977)
!2976 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2975, file: !2976, line: 13, baseType: !345, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2975, file: !2976, line: 14, baseType: !207, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2975, file: !2976, line: 15, baseType: !207, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2975, file: !2976, line: 16, baseType: !760, size: 8, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1446, file: !1122, line: 1134, baseType: !196, size: 64, offset: 16640)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1446, file: !1122, line: 1135, baseType: !196, size: 64, offset: 16704)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1446, file: !1122, line: 1138, baseType: !279, size: 32, offset: 16768)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1446, file: !1122, line: 1141, baseType: !638, size: 32, offset: 16800)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1446, file: !1122, line: 1143, baseType: !2987, size: 64, offset: 16832)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1122, line: 735, size: 64, elements: !2988)
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2987, file: !1122, line: 736, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1446, file: !1122, line: 1147, baseType: !1625, size: 128, offset: 16896)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1446, file: !1122, line: 1149, baseType: !1445, size: 64, offset: 17024)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1446, file: !1122, line: 1151, baseType: !2994, size: 64, offset: 17088)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1122, line: 1151, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1446, file: !1122, line: 1188, baseType: !165, size: 64, offset: 17152)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1446, file: !1122, line: 1191, baseType: !2998, size: 64, offset: 17216)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1122, line: 44, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1446, file: !1122, line: 1194, baseType: !3001, size: 64, offset: 17280)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1122, line: 45, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1446, file: !1122, line: 1197, baseType: !3004, size: 64, offset: 17344)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1122, line: 61, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1446, file: !1122, line: 1199, baseType: !3007, size: 64, offset: 17408)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3009, line: 99, size: 128, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3010 = !{!3011, !3012, !3013}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3008, file: !3009, line: 100, baseType: !684, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3008, file: !3009, line: 101, baseType: !299, size: 32, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3008, file: !3009, line: 103, baseType: !258, size: 16, offset: 96)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1446, file: !1122, line: 1202, baseType: !3015, size: 64, offset: 17472)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1122, line: 48, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1446, file: !1122, line: 1205, baseType: !207, size: 64, offset: 17536)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1446, file: !1122, line: 1206, baseType: !3019, size: 64, offset: 17600)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2011, line: 14, baseType: !3021)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2011, line: 12, size: 384, elements: !3022)
!3022 = !{!3023}
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !3021, file: !2011, line: 13, baseType: !3024, size: 384)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3021, file: !2011, line: 13, size: 384, elements: !3025)
!3025 = !{!3026, !3027, !3028, !3029}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3024, file: !2011, line: 13, baseType: !109, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3024, file: !2011, line: 13, baseType: !109, size: 32, offset: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3024, file: !2011, line: 13, baseType: !109, size: 32, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3024, file: !2011, line: 13, baseType: !3030, size: 256, offset: 128)
!3030 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3031, line: 37, size: 256, elements: !3032)
!3031 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3032 = !{!3033, !3038, !3051, !3057, !3066, !3093, !3098}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3030, file: !3031, line: 42, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 39, size: 64, elements: !3035)
!3035 = !{!3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3034, file: !3031, line: 40, baseType: !2700, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3034, file: !3031, line: 41, baseType: !436, size: 32, offset: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3030, file: !3031, line: 50, baseType: !3039, size: 192)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 45, size: 192, elements: !3040)
!3040 = !{!3041, !3043, !3044, !3050}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3039, file: !3031, line: 46, baseType: !3042, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !379, line: 95, baseType: !109)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3039, file: !3031, line: 47, baseType: !109, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3039, file: !3031, line: 48, baseType: !3045, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3031, line: 11, baseType: !3046)
!3046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3031, line: 8, size: 64, elements: !3047)
!3047 = !{!3048, !3049}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3046, file: !3031, line: 9, baseType: !109, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3046, file: !3031, line: 10, baseType: !165, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3039, file: !3031, line: 49, baseType: !109, size: 32, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3030, file: !3031, line: 57, baseType: !3052, size: 128)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 53, size: 128, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3052, file: !3031, line: 54, baseType: !2700, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3052, file: !3031, line: 55, baseType: !436, size: 32, offset: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3052, file: !3031, line: 56, baseType: !3045, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3030, file: !3031, line: 66, baseType: !3058, size: 256)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 60, size: 256, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063, !3065}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3058, file: !3031, line: 61, baseType: !2700, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3058, file: !3031, line: 62, baseType: !436, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3058, file: !3031, line: 63, baseType: !109, size: 32, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3058, file: !3031, line: 64, baseType: !3064, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !379, line: 94, baseType: !380)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3058, file: !3031, line: 65, baseType: !3064, size: 64, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3030, file: !3031, line: 105, baseType: !3067, size: 256)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 69, size: 256, elements: !3068)
!3068 = !{!3069, !3070}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3067, file: !3031, line: 70, baseType: !165, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, scope: !3067, file: !3031, line: 79, baseType: !3071, size: 192, offset: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3067, file: !3031, line: 79, size: 192, elements: !3072)
!3072 = !{!3073, !3074, !3075, !3082, !3087}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3071, file: !3031, line: 81, baseType: !109, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3071, file: !3031, line: 86, baseType: !818, size: 16)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3071, file: !3031, line: 92, baseType: !3076, size: 192)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3071, file: !3031, line: 88, size: 192, elements: !3077)
!3077 = !{!3078, !3080, !3081}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3076, file: !3031, line: 89, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !1609)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3076, file: !3031, line: 90, baseType: !165, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3076, file: !3031, line: 91, baseType: !165, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3071, file: !3031, line: 97, baseType: !3083, size: 96)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3071, file: !3031, line: 94, size: 96, elements: !3084)
!3084 = !{!3085, !3086}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3083, file: !3031, line: 95, baseType: !3079, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3083, file: !3031, line: 96, baseType: !238, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3071, file: !3031, line: 103, baseType: !3088, size: 128)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3071, file: !3031, line: 99, size: 128, elements: !3089)
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3088, file: !3031, line: 100, baseType: !207, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3088, file: !3031, line: 101, baseType: !238, size: 32, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3088, file: !3031, line: 102, baseType: !238, size: 32, offset: 96)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3030, file: !3031, line: 111, baseType: !3094, size: 128)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 108, size: 128, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3094, file: !3031, line: 109, baseType: !381, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3094, file: !3031, line: 110, baseType: !109, size: 32, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3030, file: !3031, line: 118, baseType: !3099, size: 128)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3030, file: !3031, line: 114, size: 128, elements: !3100)
!3100 = !{!3101, !3102, !3103}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3099, file: !3031, line: 115, baseType: !165, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3099, file: !3031, line: 116, baseType: !109, size: 32, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3099, file: !3031, line: 117, baseType: !7, size: 32, offset: 96)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1446, file: !1122, line: 1208, baseType: !2884, size: 448, offset: 17664)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1446, file: !1122, line: 1215, baseType: !196, size: 64, offset: 18112)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1446, file: !1122, line: 1217, baseType: !196, size: 64, offset: 18176)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1446, file: !1122, line: 1219, baseType: !196, size: 64, offset: 18240)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1446, file: !1122, line: 1223, baseType: !3109, size: 64, offset: 18304)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3110, line: 99, baseType: !3111)
!3110 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3110, line: 99, size: 64, elements: !3112)
!3112 = !{!3113}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3111, file: !3110, line: 99, baseType: !1693, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1446, file: !1122, line: 1225, baseType: !465, size: 32, offset: 18368)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1446, file: !1122, line: 1226, baseType: !109, size: 32, offset: 18400)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1446, file: !1122, line: 1227, baseType: !109, size: 32, offset: 18432)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1446, file: !1122, line: 1231, baseType: !3118, size: 64, offset: 18496)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1122, line: 1231, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1446, file: !1122, line: 1233, baseType: !172, size: 128, offset: 18560)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1446, file: !1122, line: 1240, baseType: !3122, size: 64, offset: 18688)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1122, line: 62, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1446, file: !1122, line: 1242, baseType: !3125, size: 64, offset: 18752)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1122, line: 1242, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1446, file: !1122, line: 1244, baseType: !172, size: 128, offset: 18816)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1446, file: !1122, line: 1245, baseType: !3129, size: 64, offset: 18944)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1122, line: 51, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1446, file: !1122, line: 1246, baseType: !680, size: 256, offset: 19008)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1446, file: !1122, line: 1247, baseType: !7, size: 32, offset: 19264)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1446, file: !1122, line: 1250, baseType: !3134, size: 64, offset: 19328)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1122, line: 57, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1446, file: !1122, line: 1251, baseType: !680, size: 256, offset: 19392)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1446, file: !1122, line: 1252, baseType: !172, size: 128, offset: 19648)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1446, file: !1122, line: 1259, baseType: !2391, size: 64, offset: 19776)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1446, file: !1122, line: 1260, baseType: !818, size: 16, offset: 19840)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1446, file: !1122, line: 1261, baseType: !818, size: 16, offset: 19856)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1446, file: !1122, line: 1314, baseType: !3142, size: 64, offset: 19904)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3144, line: 62, size: 256, align: 256, elements: !3145)
!3144 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3143, file: !3144, line: 75, baseType: !238, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3143, file: !3144, line: 90, baseType: !238, size: 32, offset: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3143, file: !3144, line: 112, baseType: !198, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3143, file: !3144, line: 132, baseType: !238, size: 32, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3143, file: !3144, line: 140, baseType: !238, size: 32, offset: 160)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3143, file: !3144, line: 149, baseType: !238, size: 32, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3143, file: !3144, line: 154, baseType: !3153, offset: 224)
!3153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, elements: !1829)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1446, file: !1122, line: 1315, baseType: !237, size: 32, offset: 19968)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1446, file: !1122, line: 1316, baseType: !237, size: 32, offset: 20000)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1446, file: !1122, line: 1321, baseType: !207, size: 64, offset: 20032)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1446, file: !1122, line: 1325, baseType: !109, size: 32, offset: 20096)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1446, file: !1122, line: 1326, baseType: !109, size: 32, offset: 20128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1446, file: !1122, line: 1327, baseType: !109, size: 32, offset: 20160)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1446, file: !1122, line: 1328, baseType: !109, size: 32, offset: 20192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1446, file: !1122, line: 1329, baseType: !900, size: 128, align: 64, offset: 20224)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1446, file: !1122, line: 1332, baseType: !3163, size: 128, offset: 20352)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3164, line: 51, size: 128, elements: !3165)
!3164 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3165 = !{!3166, !3171, !3172}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3163, file: !3164, line: 60, baseType: !3167, size: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3168, line: 7, size: 64, elements: !3169)
!3168 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3169 = !{!3170}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3167, file: !3168, line: 12, baseType: !1690, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3163, file: !3164, line: 63, baseType: !760, size: 8, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3163, file: !3164, line: 70, baseType: !760, size: 8, offset: 72)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1446, file: !1122, line: 1335, baseType: !2443, size: 64, offset: 20480)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1446, file: !1122, line: 1337, baseType: !3175, size: 128, offset: 20544)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3164, line: 39, size: 128, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3175, file: !3164, line: 40, baseType: !2230, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3175, file: !3164, line: 42, baseType: !238, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3175, file: !3164, line: 43, baseType: !238, size: 32, offset: 96)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1446, file: !1122, line: 1340, baseType: !3181, size: 64, offset: 20672)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1122, line: 69, flags: DIFlagFwdDecl)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1446, file: !1122, line: 1351, baseType: !109, size: 32, offset: 20736)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1446, file: !1122, line: 1352, baseType: !109, size: 32, offset: 20768)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1446, file: !1122, line: 1354, baseType: !207, size: 64, offset: 20800)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1446, file: !1122, line: 1364, baseType: !196, size: 64, offset: 20864)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1446, file: !1122, line: 1365, baseType: !196, size: 64, offset: 20928)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1446, file: !1122, line: 1412, baseType: !207, size: 64, offset: 20992)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1446, file: !1122, line: 1453, baseType: !3190, size: 64, offset: 21056)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1122, line: 1453, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1446, file: !1122, line: 1457, baseType: !3193, size: 64, offset: 21120)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3195)
!3195 = !{!3196, !3197, !3216, !3219, !3220, !3253, !3263}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3194, file: !68, line: 62, baseType: !67, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3194, file: !68, line: 64, baseType: !3198, size: 192, offset: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3194, file: !68, line: 64, size: 192, elements: !3199)
!3199 = !{!3200, !3211}
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !68, line: 65, baseType: !3201, size: 192)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !68, line: 65, size: 192, elements: !3202)
!3202 = !{!3203, !3210}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3201, file: !68, line: 66, baseType: !3204, size: 128)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3205, line: 50, size: 128, elements: !3206)
!3205 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3206 = !{!3207, !3208, !3209}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3204, file: !3205, line: 52, baseType: !207, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3204, file: !3205, line: 54, baseType: !7, size: 32, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3204, file: !3205, line: 55, baseType: !7, size: 32, offset: 96)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3201, file: !68, line: 67, baseType: !207, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !68, line: 70, baseType: !3212, size: 192)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !68, line: 70, size: 192, elements: !3213)
!3213 = !{!3214, !3215}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3212, file: !68, line: 71, baseType: !900, size: 128, align: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3212, file: !68, line: 72, baseType: !207, size: 64, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3194, file: !68, line: 76, baseType: !3217, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3194, file: !68, line: 77, baseType: !207, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3194, file: !68, line: 79, baseType: !3221, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3205, line: 25, size: 256, elements: !3223)
!3223 = !{!3224, !3230, !3234}
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !3205, line: 26, baseType: !3225, size: 128)
!3225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3222, file: !3205, line: 26, size: 128, elements: !3226)
!3226 = !{!3227, !3229}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3225, file: !3205, line: 27, baseType: !3228, size: 128)
!3228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 128, elements: !2758)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3225, file: !3205, line: 28, baseType: !3228, size: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3222, file: !3205, line: 31, baseType: !3231, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3233)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3205, line: 23, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !3205, line: 33, baseType: !3235, size: 64, offset: 192)
!3235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3222, file: !3205, line: 33, size: 64, elements: !3236)
!3236 = !{!3237, !3243, !3248}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3235, file: !3205, line: 38, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3235, file: !3205, line: 34, size: 64, elements: !3239)
!3239 = !{!3240, !3241, !3242}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3238, file: !3205, line: 35, baseType: !676, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3238, file: !3205, line: 36, baseType: !307, size: 8, offset: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3238, file: !3205, line: 37, baseType: !307, size: 8, offset: 40)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3235, file: !3205, line: 42, baseType: !3244, size: 16)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3235, file: !3205, line: 39, size: 16, elements: !3245)
!3245 = !{!3246, !3247}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3244, file: !3205, line: 40, baseType: !307, size: 8)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3244, file: !3205, line: 41, baseType: !307, size: 8, offset: 8)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3235, file: !3205, line: 46, baseType: !3249, size: 16)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3235, file: !3205, line: 43, size: 16, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3249, file: !3205, line: 44, baseType: !307, size: 8)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3249, file: !3205, line: 45, baseType: !307, size: 8, offset: 8)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3194, file: !68, line: 81, baseType: !3254, size: 64, offset: 448)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3256)
!3256 = !{!3257, !3258, !3259, !3260, !3261, !3262}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3255, file: !68, line: 86, baseType: !3217, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3255, file: !68, line: 87, baseType: !207, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3255, file: !68, line: 88, baseType: !207, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3255, file: !68, line: 89, baseType: !207, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3255, file: !68, line: 90, baseType: !760, size: 8, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3255, file: !68, line: 92, baseType: !3254, size: 64, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3194, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1446, file: !1122, line: 1463, baseType: !3265, offset: 21184)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1122, line: 739, elements: !967)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1446, file: !1122, line: 1470, baseType: !900, size: 128, align: 64, offset: 21184)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1446, file: !1122, line: 1471, baseType: !1459, size: 32, offset: 21312)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1446, file: !1122, line: 1472, baseType: !109, size: 32, offset: 21344)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1446, file: !1122, line: 1474, baseType: !1445, size: 64, offset: 21376)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1446, file: !1122, line: 1475, baseType: !920, size: 320, offset: 21440)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1446, file: !1122, line: 1478, baseType: !3272, size: 64, offset: 21760)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2083, line: 49, size: 512, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3281, !3282, !3283, !3284}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3273, file: !2083, line: 50, baseType: !3272, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3273, file: !2083, line: 51, baseType: !165, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3273, file: !2083, line: 52, baseType: !207, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3273, file: !2083, line: 53, baseType: !207, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3273, file: !2083, line: 54, baseType: !3280, size: 64, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3273, file: !2083, line: 56, baseType: !7, size: 32, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3273, file: !2083, line: 58, baseType: !7, size: 32, offset: 352)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3273, file: !2083, line: 59, baseType: !195, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3273, file: !2083, line: 60, baseType: !2581, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1446, file: !1122, line: 1482, baseType: !1459, size: 32, offset: 21824)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1446, file: !1122, line: 1489, baseType: !165, size: 64, offset: 21888)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1446, file: !1122, line: 1504, baseType: !165, size: 64, offset: 21952)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1446, file: !1122, line: 1505, baseType: !198, size: 64, offset: 22016)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1446, file: !1122, line: 1506, baseType: !196, size: 64, offset: 22080)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1446, file: !1122, line: 1507, baseType: !198, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1446, file: !1122, line: 1508, baseType: !198, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1446, file: !1122, line: 1509, baseType: !198, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1446, file: !1122, line: 1510, baseType: !900, size: 128, align: 64, offset: 22208)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1446, file: !1122, line: 1511, baseType: !109, size: 32, offset: 22336)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1446, file: !1122, line: 1515, baseType: !3296, size: 64, offset: 22400)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1473, line: 56, size: 64, elements: !3297)
!3297 = !{!3298}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3296, file: !1473, line: 57, baseType: !1476, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1446, file: !1122, line: 1518, baseType: !3296, size: 64, offset: 22464)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1446, file: !1122, line: 1528, baseType: !900, size: 128, align: 64, offset: 22528)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1446, file: !1122, line: 1552, baseType: !3302, size: 35328, offset: 23040)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3303, line: 430, size: 35328, elements: !3304)
!3303 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3304 = !{!3305, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3334, !3335, !3336, !3337, !3338, !3339, !3342, !3343, !3344, !3345}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3302, file: !3303, line: 432, baseType: !3306, size: 192)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3307, size: 192, elements: !346)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3308, line: 16, size: 64, elements: !3309)
!3308 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3309 = !{!3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3307, file: !3308, line: 17, baseType: !314, size: 16)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3307, file: !3308, line: 18, baseType: !314, size: 16, offset: 16)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3307, file: !3308, line: 19, baseType: !314, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3307, file: !3308, line: 19, baseType: !314, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3307, file: !3308, line: 19, baseType: !314, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3307, file: !3308, line: 19, baseType: !314, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3307, file: !3308, line: 19, baseType: !314, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3307, file: !3308, line: 20, baseType: !314, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3307, file: !3308, line: 20, baseType: !314, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3307, file: !3308, line: 20, baseType: !314, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3307, file: !3308, line: 20, baseType: !314, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3307, file: !3308, line: 20, baseType: !314, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3307, file: !3308, line: 20, baseType: !314, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3302, file: !3303, line: 436, baseType: !207, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3302, file: !3303, line: 440, baseType: !258, size: 16, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3302, file: !3303, line: 441, baseType: !258, size: 16, offset: 272)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3302, file: !3303, line: 442, baseType: !258, size: 16, offset: 288)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3302, file: !3303, line: 443, baseType: !258, size: 16, offset: 304)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3302, file: !3303, line: 447, baseType: !207, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3302, file: !3303, line: 448, baseType: !207, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3302, file: !3303, line: 459, baseType: !3331, size: 256, offset: 448)
!3331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3332, size: 256, elements: !212)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3303, line: 428, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3302, file: !3303, line: 461, baseType: !207, size: 64, offset: 704)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3302, file: !3303, line: 463, baseType: !207, size: 64, offset: 768)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3302, file: !3303, line: 465, baseType: !207, size: 64, offset: 832)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3302, file: !3303, line: 466, baseType: !207, size: 64, offset: 896)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3302, file: !3303, line: 467, baseType: !207, size: 64, offset: 960)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3302, file: !3303, line: 473, baseType: !3340, size: 64, offset: 1024)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3303, line: 10, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3302, file: !3303, line: 480, baseType: !207, size: 64, offset: 1088)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3302, file: !3303, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3302, file: !3303, line: 491, baseType: !237, size: 32, offset: 1184)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3302, file: !3303, line: 501, baseType: !3346, size: 33792, offset: 1536)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3347, line: 448, size: 33792, elements: !3348)
!3347 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3348 = !{!3349, !3350, !3351, !3513, !3514, !3520, !3521}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3346, file: !3347, line: 461, baseType: !7, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3346, file: !3347, line: 468, baseType: !207, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3346, file: !3347, line: 476, baseType: !3352, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3347, line: 356, size: 33280, align: 512, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3353, file: !3347, line: 358, baseType: !7, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3353, file: !3347, line: 361, baseType: !7, size: 32, offset: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3353, file: !3347, line: 364, baseType: !196, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3353, file: !3347, line: 367, baseType: !196, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3353, file: !3347, line: 370, baseType: !196, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3353, file: !3347, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3353, file: !3347, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3353, file: !3347, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3353, file: !3347, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3353, file: !3347, line: 397, baseType: !3365, size: 32768, offset: 512)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3347, line: 348, size: 32768, elements: !3366)
!3366 = !{!3367, !3382, !3419, !3496, !3509}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3365, file: !3347, line: 349, baseType: !3368, size: 896)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3347, line: 12, size: 896, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3381}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3368, file: !3347, line: 13, baseType: !237, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3368, file: !3347, line: 14, baseType: !237, size: 32, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3368, file: !3347, line: 15, baseType: !237, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3368, file: !3347, line: 16, baseType: !237, size: 32, offset: 96)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3368, file: !3347, line: 17, baseType: !237, size: 32, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3368, file: !3347, line: 18, baseType: !237, size: 32, offset: 160)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3368, file: !3347, line: 19, baseType: !237, size: 32, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3368, file: !3347, line: 22, baseType: !3378, size: 640, offset: 224)
!3378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 640, elements: !3379)
!3379 = !{!3380}
!3380 = !DISubrange(count: 20)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3368, file: !3347, line: 25, baseType: !237, size: 32, offset: 864)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3365, file: !3347, line: 350, baseType: !3383, size: 4096, align: 128)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3347, line: 34, size: 4096, align: 128, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3404, !3405, !3406, !3408, !3410, !3414}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3383, file: !3347, line: 35, baseType: !314, size: 16)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3383, file: !3347, line: 36, baseType: !314, size: 16, offset: 16)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3383, file: !3347, line: 37, baseType: !314, size: 16, offset: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3383, file: !3347, line: 38, baseType: !314, size: 16, offset: 48)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3347, line: 39, baseType: !3390, size: 128, offset: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3383, file: !3347, line: 39, size: 128, elements: !3391)
!3391 = !{!3392, !3397}
!3392 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3347, line: 40, baseType: !3393, size: 128)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3347, line: 40, size: 128, elements: !3394)
!3394 = !{!3395, !3396}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3393, file: !3347, line: 41, baseType: !196, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3393, file: !3347, line: 42, baseType: !196, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3347, line: 44, baseType: !3398, size: 128)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3347, line: 44, size: 128, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3403}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3398, file: !3347, line: 45, baseType: !237, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3398, file: !3347, line: 46, baseType: !237, size: 32, offset: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3398, file: !3347, line: 47, baseType: !237, size: 32, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3398, file: !3347, line: 48, baseType: !237, size: 32, offset: 96)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3383, file: !3347, line: 51, baseType: !237, size: 32, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3383, file: !3347, line: 52, baseType: !237, size: 32, offset: 224)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3383, file: !3347, line: 55, baseType: !3407, size: 1024, offset: 256)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 1024, elements: !501)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3383, file: !3347, line: 58, baseType: !3409, size: 2048, offset: 1280)
!3409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 2048, elements: !350)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3383, file: !3347, line: 60, baseType: !3411, size: 384, offset: 3328)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 384, elements: !3412)
!3412 = !{!3413}
!3413 = !DISubrange(count: 12)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3347, line: 62, baseType: !3415, size: 384, offset: 3712)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3383, file: !3347, line: 62, size: 384, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3415, file: !3347, line: 63, baseType: !3411, size: 384)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3415, file: !3347, line: 64, baseType: !3411, size: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3365, file: !3347, line: 351, baseType: !3420, size: 1088)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3347, line: 79, size: 1088, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3495}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3420, file: !3347, line: 80, baseType: !237, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3420, file: !3347, line: 81, baseType: !237, size: 32, offset: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3420, file: !3347, line: 82, baseType: !237, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3420, file: !3347, line: 83, baseType: !237, size: 32, offset: 96)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3420, file: !3347, line: 84, baseType: !237, size: 32, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3420, file: !3347, line: 85, baseType: !237, size: 32, offset: 160)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3420, file: !3347, line: 86, baseType: !237, size: 32, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3420, file: !3347, line: 88, baseType: !3378, size: 640, offset: 224)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3420, file: !3347, line: 89, baseType: !307, size: 8, offset: 864)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3420, file: !3347, line: 90, baseType: !307, size: 8, offset: 872)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3420, file: !3347, line: 91, baseType: !307, size: 8, offset: 880)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3420, file: !3347, line: 92, baseType: !307, size: 8, offset: 888)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3420, file: !3347, line: 93, baseType: !307, size: 8, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3420, file: !3347, line: 94, baseType: !307, size: 8, offset: 904)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3420, file: !3347, line: 95, baseType: !3437, size: 64, offset: 960)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3439, line: 11, size: 128, elements: !3440)
!3439 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3438, file: !3439, line: 12, baseType: !381, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3438, file: !3439, line: 13, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3445, line: 103, size: 1344, elements: !3446)
!3445 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3475, !3476, !3477}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3444, file: !3445, line: 109, baseType: !207, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3444, file: !3445, line: 110, baseType: !207, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3444, file: !3445, line: 111, baseType: !207, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3444, file: !3445, line: 112, baseType: !207, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3444, file: !3445, line: 113, baseType: !207, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3444, file: !3445, line: 114, baseType: !207, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3444, file: !3445, line: 117, baseType: !207, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3444, file: !3445, line: 118, baseType: !207, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3444, file: !3445, line: 119, baseType: !207, size: 64, offset: 512)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3444, file: !3445, line: 120, baseType: !207, size: 64, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3444, file: !3445, line: 121, baseType: !207, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3444, file: !3445, line: 122, baseType: !207, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3444, file: !3445, line: 123, baseType: !207, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3444, file: !3445, line: 124, baseType: !207, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3444, file: !3445, line: 125, baseType: !207, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3444, file: !3445, line: 139, baseType: !207, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3444, file: !3445, line: 142, baseType: !207, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, scope: !3444, file: !3445, line: 144, baseType: !3465, size: 64, offset: 1088)
!3465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3444, file: !3445, line: 144, size: 64, elements: !3466)
!3466 = !{!3467, !3468, !3469}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3465, file: !3445, line: 146, baseType: !314, size: 16)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3465, file: !3445, line: 148, baseType: !196, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3465, file: !3445, line: 150, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3445, line: 59, size: 64, elements: !3471)
!3471 = !{!3472, !3473, !3474}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3470, file: !3445, line: 61, baseType: !196, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3470, file: !3445, line: 63, baseType: !196, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3470, file: !3445, line: 65, baseType: !196, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3444, file: !3445, line: 153, baseType: !207, size: 64, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3444, file: !3445, line: 154, baseType: !207, size: 64, offset: 1216)
!3477 = !DIDerivedType(tag: DW_TAG_member, scope: !3444, file: !3445, line: 156, baseType: !3478, size: 64, offset: 1280)
!3478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3444, file: !3445, line: 156, size: 64, elements: !3479)
!3479 = !{!3480, !3481, !3482}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3478, file: !3445, line: 158, baseType: !314, size: 16)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3478, file: !3445, line: 160, baseType: !196, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3478, file: !3445, line: 162, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3445, line: 69, size: 64, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3483, file: !3445, line: 71, baseType: !196, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3483, file: !3445, line: 73, baseType: !196, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3483, file: !3445, line: 75, baseType: !196, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3483, file: !3445, line: 77, baseType: !196, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3483, file: !3445, line: 80, baseType: !196, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3483, file: !3445, line: 83, baseType: !196, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3483, file: !3445, line: 86, baseType: !196, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3483, file: !3445, line: 88, baseType: !196, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3483, file: !3445, line: 93, baseType: !196, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3483, file: !3445, line: 100, baseType: !196, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3420, file: !3347, line: 96, baseType: !237, size: 32, offset: 1024)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3365, file: !3347, line: 352, baseType: !3497, size: 4608, align: 512)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3347, line: 333, size: 4608, align: 512, elements: !3498)
!3498 = !{!3499, !3500, !3507}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3497, file: !3347, line: 334, baseType: !3383, size: 4096, align: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3497, file: !3347, line: 335, baseType: !3501, size: 512, offset: 4096)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3347, line: 312, size: 512, elements: !3502)
!3502 = !{!3503, !3504, !3505}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3501, file: !3347, line: 313, baseType: !196, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3501, file: !3347, line: 314, baseType: !196, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3501, file: !3347, line: 315, baseType: !3506, size: 384, offset: 128)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 384, elements: !1912)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3497, file: !3347, line: 336, baseType: !3508, offset: 4608)
!3508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, elements: !1829)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3365, file: !3347, line: 353, baseType: !3510, size: 32768)
!3510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 32768, elements: !3511)
!3511 = !{!3512}
!3512 = !DISubrange(count: 4096)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3346, file: !3347, line: 484, baseType: !3352, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3346, file: !3347, line: 491, baseType: !3515, size: 128, offset: 256)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3347, line: 404, size: 128, elements: !3516)
!3516 = !{!3517, !3518, !3519}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3515, file: !3347, line: 424, baseType: !196, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3515, file: !3347, line: 432, baseType: !7, size: 32, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3515, file: !3347, line: 440, baseType: !7, size: 32, offset: 96)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3346, file: !3347, line: 498, baseType: !3515, size: 128, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3346, file: !3347, line: 508, baseType: !3353, size: 33280, align: 512, offset: 512)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1422, file: !1423, line: 16, baseType: !1432, size: 192, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1422, file: !1423, line: 17, baseType: !299, size: 32, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !571, file: !14, line: 1240, baseType: !165, size: 64, offset: 6912)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !571, file: !14, line: 1243, baseType: !237, size: 32, offset: 6976)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !571, file: !14, line: 1245, baseType: !1180, size: 64, offset: 7040)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !571, file: !14, line: 1246, baseType: !1180, size: 64, offset: 7104)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !571, file: !14, line: 1248, baseType: !238, size: 32, offset: 7168)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !571, file: !14, line: 1249, baseType: !3530, size: 64, offset: 7232)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !571, file: !14, line: 1252, baseType: !3533, size: 256, offset: 7296)
!3533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 256, elements: !501)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !571, file: !14, line: 1253, baseType: !3535, size: 128, offset: 7552)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3536, line: 21, baseType: !3537)
!3536 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3536, line: 19, size: 128, elements: !3538)
!3538 = !{!3539}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3537, file: !3536, line: 20, baseType: !3540, size: 128)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 128, elements: !2758)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !571, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !571, file: !14, line: 1261, baseType: !680, size: 256, offset: 7744)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !571, file: !14, line: 1267, baseType: !203, size: 64, offset: 8000)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !571, file: !14, line: 1269, baseType: !517, size: 64, offset: 8064)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !571, file: !14, line: 1271, baseType: !3546, size: 448, offset: 8128)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1189, line: 63, size: 448, elements: !3547)
!3547 = !{!3548, !3553, !3554, !3555, !3556, !3557, !3558}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3546, file: !1189, line: 64, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!207, !3552, !1187}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3546, file: !1189, line: 66, baseType: !3549, size: 64, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3546, file: !1189, line: 69, baseType: !381, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3546, file: !1189, line: 70, baseType: !109, size: 32, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3546, file: !1189, line: 71, baseType: !7, size: 32, offset: 224)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3546, file: !1189, line: 74, baseType: !172, size: 128, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3546, file: !1189, line: 85, baseType: !3559, size: 64, offset: 384)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !571, file: !14, line: 1274, baseType: !684, size: 64, offset: 8576)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !571, file: !14, line: 1280, baseType: !684, size: 64, offset: 8640)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !571, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !571, file: !14, line: 1286, baseType: !2492, size: 32, offset: 8736)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !571, file: !14, line: 1289, baseType: !1000, size: 64, offset: 8768)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !571, file: !14, line: 1290, baseType: !1048, size: 64, offset: 8832)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !571, file: !14, line: 1297, baseType: !2006, size: 64, offset: 8896)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !571, file: !14, line: 1304, baseType: !3568, size: 64, offset: 8960)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3569, line: 49, size: 64, elements: !3570)
!3569 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3570 = !{!3571}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3568, file: !3569, line: 50, baseType: !3572, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3569, line: 41, size: 512, align: 512, elements: !3574)
!3574 = !{!3575, !3576, !3581}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3573, file: !3569, line: 43, baseType: !279, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3573, file: !3569, line: 45, baseType: !3577, size: 192, offset: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3569, line: 29, size: 192, elements: !3578)
!3578 = !{!3579, !3580}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3577, file: !3569, line: 30, baseType: !172, size: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3577, file: !3569, line: 32, baseType: !381, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3573, file: !3569, line: 46, baseType: !381, size: 64, offset: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !571, file: !14, line: 1305, baseType: !3568, size: 64, offset: 9024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !571, file: !14, line: 1306, baseType: !900, size: 128, align: 64, offset: 9088)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !571, file: !14, line: 1307, baseType: !938, size: 256, offset: 9216)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !571, file: !14, line: 1309, baseType: !680, size: 256, offset: 9472)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !571, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !571, file: !14, line: 1317, baseType: !279, size: 32, align: 512, offset: 10240)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !571, file: !14, line: 1318, baseType: !172, size: 128, offset: 10304)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !571, file: !14, line: 1320, baseType: !279, size: 32, offset: 10432)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !571, file: !14, line: 1321, baseType: !172, size: 128, offset: 10496)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !565, file: !566, line: 73, baseType: !109, size: 32, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !565, file: !566, line: 74, baseType: !3593, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1853, line: 42, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !519, file: !461, line: 141, baseType: !3597, size: 64, offset: 704)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!109, !1249, !760}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !519, file: !461, line: 142, baseType: !3601, size: 64, offset: 768)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!459, !459, !3604}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !460, file: !461, line: 96, baseType: !570, size: 64, offset: 832)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !460, file: !461, line: 97, baseType: !207, size: 64, offset: 896)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !460, file: !461, line: 98, baseType: !165, size: 64, offset: 960)
!3609 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !461, line: 100, baseType: !3610, size: 128, offset: 1024)
!3610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !461, line: 100, size: 128, elements: !3611)
!3611 = !{!3612, !3613}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3610, file: !461, line: 101, baseType: !172, size: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3610, file: !461, line: 102, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !460, file: !461, line: 104, baseType: !172, size: 128, offset: 1152)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !460, file: !461, line: 105, baseType: !172, size: 128, offset: 1280)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !460, file: !461, line: 113, baseType: !3618, size: 128, offset: 1408)
!3618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !461, line: 109, size: 128, elements: !3619)
!3619 = !{!3620, !3621, !3622}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3618, file: !461, line: 110, baseType: !924, size: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3618, file: !461, line: 111, baseType: !475, size: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3618, file: !461, line: 112, baseType: !900, size: 128, align: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !453, file: !14, line: 1968, baseType: !3624, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!203, !459, !424, !3627}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3629, line: 10, size: 128, elements: !3630)
!3629 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3628, file: !3629, line: 11, baseType: !723, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3628, file: !3629, line: 12, baseType: !165, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !453, file: !14, line: 1969, baseType: !3634, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!109, !3593, !424, !109}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !453, file: !14, line: 1970, baseType: !3638, size: 64, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!447, !424, !109, !760}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !453, file: !14, line: 1972, baseType: !3642, size: 64, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!109, !459, !345, !109}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !453, file: !14, line: 1974, baseType: !3646, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!109, !3593, !424, !459, !387, !760}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !453, file: !14, line: 1976, baseType: !3650, size: 64, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!109, !459, !424, !459}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !453, file: !14, line: 1977, baseType: !3654, size: 64, offset: 448)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!109, !424, !459}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !453, file: !14, line: 1978, baseType: !3658, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!109, !3593, !424, !459, !203}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !453, file: !14, line: 1980, baseType: !3662, size: 64, offset: 576)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!109, !3593, !424, !459, !387}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !453, file: !14, line: 1982, baseType: !3654, size: 64, offset: 640)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !453, file: !14, line: 1983, baseType: !3667, size: 64, offset: 704)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!109, !3593, !424, !459, !387, !575}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !453, file: !14, line: 1985, baseType: !3671, size: 64, offset: 768)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!109, !3593, !424, !459, !424, !459, !7}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !453, file: !14, line: 1987, baseType: !3675, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!109, !3593, !459, !3678}
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3693, !3702, !3703, !3708, !3709, !3710}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3679, file: !14, line: 227, baseType: !7, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3679, file: !14, line: 228, baseType: !387, size: 16, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !14, line: 241, baseType: !3684, size: 32, offset: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3679, file: !14, line: 241, size: 32, elements: !3685)
!3685 = !{!3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3684, file: !14, line: 242, baseType: !430, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3684, file: !14, line: 243, baseType: !3688, size: 32)
!3688 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3689, line: 16, baseType: !3690)
!3689 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3689, line: 14, size: 32, elements: !3691)
!3691 = !{!3692}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3690, file: !3689, line: 15, baseType: !435, size: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !14, line: 245, baseType: !3694, size: 32, offset: 96)
!3694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3679, file: !14, line: 245, size: 32, elements: !3695)
!3695 = !{!3696, !3697}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3694, file: !14, line: 246, baseType: !439, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3694, file: !14, line: 247, baseType: !3698, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3689, line: 20, baseType: !3699)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3689, line: 18, size: 32, elements: !3700)
!3700 = !{!3701}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3699, file: !3689, line: 19, baseType: !443, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3679, file: !14, line: 249, baseType: !580, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3679, file: !14, line: 250, baseType: !3704, size: 128, offset: 192)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1181, line: 13, size: 128, elements: !3705)
!3705 = !{!3706, !3707}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3704, file: !1181, line: 14, baseType: !1180, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3704, file: !1181, line: 15, baseType: !381, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3679, file: !14, line: 251, baseType: !3704, size: 128, offset: 320)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3679, file: !14, line: 252, baseType: !3704, size: 128, offset: 448)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3679, file: !14, line: 259, baseType: !1769, size: 64, offset: 576)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !453, file: !14, line: 1988, baseType: !3712, size: 64, offset: 896)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!109, !3593, !1249, !3715, !237, !7}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3717, line: 22, size: 1280, elements: !3718)
!3717 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3718 = !{!3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3716, file: !3717, line: 23, baseType: !237, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3716, file: !3717, line: 24, baseType: !387, size: 16, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3716, file: !3717, line: 25, baseType: !7, size: 32, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3716, file: !3717, line: 26, baseType: !1891, size: 32, offset: 96)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3716, file: !3717, line: 27, baseType: !196, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3716, file: !3717, line: 28, baseType: !196, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3716, file: !3717, line: 41, baseType: !196, size: 64, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3716, file: !3717, line: 42, baseType: !575, size: 32, offset: 320)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3716, file: !3717, line: 43, baseType: !575, size: 32, offset: 352)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3716, file: !3717, line: 44, baseType: !430, size: 32, offset: 384)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3716, file: !3717, line: 45, baseType: !439, size: 32, offset: 416)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3716, file: !3717, line: 46, baseType: !580, size: 64, offset: 448)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3716, file: !3717, line: 47, baseType: !3704, size: 128, offset: 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3716, file: !3717, line: 48, baseType: !3704, size: 128, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3716, file: !3717, line: 49, baseType: !3704, size: 128, offset: 768)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3716, file: !3717, line: 50, baseType: !3704, size: 128, offset: 896)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3716, file: !3717, line: 51, baseType: !196, size: 64, offset: 1024)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3716, file: !3717, line: 52, baseType: !196, size: 64, offset: 1088)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3716, file: !3717, line: 53, baseType: !237, size: 32, offset: 1152)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3716, file: !3717, line: 54, baseType: !237, size: 32, offset: 1184)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3716, file: !3717, line: 55, baseType: !196, size: 64, offset: 1216)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !453, file: !14, line: 1990, baseType: !3741, size: 64, offset: 960)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!377, !459, !345, !392}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !453, file: !14, line: 1991, baseType: !3745, size: 64, offset: 1024)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!109, !424, !3748, !196, !196}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !453, file: !14, line: 1993, baseType: !3751, size: 64, offset: 1088)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!109, !424, !109}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !453, file: !14, line: 1994, baseType: !3755, size: 64, offset: 1152)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!109, !424, !459, !1769, !7, !387}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !453, file: !14, line: 1997, baseType: !3759, size: 64, offset: 1216)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!109, !3593, !424, !1769, !387}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !453, file: !14, line: 1999, baseType: !3763, size: 64, offset: 1280)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!447, !3593, !459, !109}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !453, file: !14, line: 2001, baseType: !3767, size: 64, offset: 1344)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!109, !3593, !459, !447, !109}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !453, file: !14, line: 2003, baseType: !3771, size: 64, offset: 1408)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!109, !3593, !459, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !453, file: !14, line: 2005, baseType: !3777, size: 64, offset: 1472)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!109, !459, !3774}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !453, file: !14, line: 2006, baseType: !3781, size: 64, offset: 1536)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!3784, !424}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3786)
!3786 = !{!3787, !3794}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3785, file: !14, line: 3193, baseType: !3788, size: 128)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3789, line: 296, size: 128, elements: !3790)
!3789 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3790 = !{!3791, !3792, !3793}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3788, file: !3789, line: 297, baseType: !279, size: 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3788, file: !3789, line: 299, baseType: !166, size: 32, offset: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3788, file: !3789, line: 300, baseType: !165, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3785, file: !14, line: 3194, baseType: !237, size: 32, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !425, file: !14, line: 655, baseType: !570, size: 64, offset: 448)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !425, file: !14, line: 656, baseType: !420, size: 64, offset: 512)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !425, file: !14, line: 659, baseType: !165, size: 64, offset: 576)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !425, file: !14, line: 663, baseType: !207, size: 64, offset: 640)
!3799 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 671, baseType: !3800, size: 32, offset: 704)
!3800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 671, size: 32, elements: !3801)
!3801 = !{!3802, !3804}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3800, file: !14, line: 672, baseType: !3803, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3800, file: !14, line: 673, baseType: !7, size: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !425, file: !14, line: 675, baseType: !575, size: 32, offset: 736)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !425, file: !14, line: 676, baseType: !580, size: 64, offset: 768)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !425, file: !14, line: 677, baseType: !3704, size: 128, offset: 832)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !425, file: !14, line: 678, baseType: !3704, size: 128, offset: 960)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !425, file: !14, line: 679, baseType: !3704, size: 128, offset: 1088)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !425, file: !14, line: 680, baseType: !279, size: 32, offset: 1216)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !425, file: !14, line: 681, baseType: !258, size: 16, offset: 1248)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !425, file: !14, line: 682, baseType: !307, size: 8, offset: 1264)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !425, file: !14, line: 683, baseType: !307, size: 8, offset: 1272)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !425, file: !14, line: 684, baseType: !1327, size: 64, offset: 1280)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !425, file: !14, line: 691, baseType: !207, size: 64, offset: 1344)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !425, file: !14, line: 692, baseType: !1339, size: 320, offset: 1408)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !425, file: !14, line: 694, baseType: !207, size: 64, offset: 1728)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !425, file: !14, line: 695, baseType: !207, size: 64, offset: 1792)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !425, file: !14, line: 697, baseType: !924, size: 128, offset: 1856)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !425, file: !14, line: 698, baseType: !172, size: 128, offset: 1984)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !425, file: !14, line: 707, baseType: !172, size: 128, offset: 2112)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !425, file: !14, line: 708, baseType: !172, size: 128, offset: 2240)
!3823 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 709, baseType: !3824, size: 128, offset: 2368)
!3824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 709, size: 128, elements: !3825)
!3825 = !{!3826, !3827}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3824, file: !14, line: 710, baseType: !1048, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3824, file: !14, line: 711, baseType: !900, size: 128, align: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !425, file: !14, line: 713, baseType: !686, size: 64, offset: 2496)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !425, file: !14, line: 714, baseType: !686, size: 64, offset: 2560)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !425, file: !14, line: 715, baseType: !299, size: 32, offset: 2624)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !425, file: !14, line: 716, baseType: !299, size: 32, offset: 2656)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !425, file: !14, line: 717, baseType: !299, size: 32, offset: 2688)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !425, file: !14, line: 719, baseType: !299, size: 32, offset: 2720)
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 721, baseType: !3835, size: 64, offset: 2752)
!3835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 721, size: 64, elements: !3836)
!3836 = !{!3837, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3835, file: !14, line: 722, baseType: !2037, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3835, file: !14, line: 723, baseType: !1071, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !425, file: !14, line: 725, baseType: !3840, size: 64, offset: 2816)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !425, file: !14, line: 726, baseType: !421, size: 1536, align: 64, offset: 2880)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !425, file: !14, line: 727, baseType: !172, size: 128, offset: 4416)
!3844 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !14, line: 728, baseType: !3845, size: 64, offset: 4544)
!3845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !14, line: 728, size: 64, elements: !3846)
!3846 = !{!3847, !3848, !3851, !3852}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3845, file: !14, line: 729, baseType: !2443, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3845, file: !14, line: 730, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3845, file: !14, line: 731, baseType: !345, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3845, file: !14, line: 732, baseType: !7, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !425, file: !14, line: 735, baseType: !238, size: 32, offset: 4608)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !425, file: !14, line: 738, baseType: !238, size: 32, offset: 4640)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !425, file: !14, line: 739, baseType: !3530, size: 64, offset: 4672)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !425, file: !14, line: 750, baseType: !165, size: 64, offset: 4736)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !421, file: !14, line: 474, baseType: !3788, size: 128, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !421, file: !14, line: 475, baseType: !1339, size: 320, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !421, file: !14, line: 476, baseType: !166, size: 32, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !421, file: !14, line: 477, baseType: !299, size: 32, offset: 544)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !421, file: !14, line: 482, baseType: !1625, size: 128, offset: 576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !421, file: !14, line: 483, baseType: !207, size: 64, offset: 704)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !421, file: !14, line: 484, baseType: !207, size: 64, offset: 768)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !421, file: !14, line: 485, baseType: !3865, size: 64, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3867)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3868)
!3868 = !{!3869, !3873, !3943, !3947, !3951, !3957, !3961, !3965, !3970, !3974, !3978, !3982, !3983, !3987, !3991, !3995, !4000, !4004, !4011, !4012}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3867, file: !14, line: 405, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!109, !2230, !1083}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3867, file: !14, line: 406, baseType: !3874, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!109, !1769, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3879)
!3879 = !{!3880, !3910, !3924}
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !38, line: 295, baseType: !3881, size: 512)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !38, line: 295, size: 512, elements: !3882)
!3882 = !{!3883, !3909}
!3883 = !DIDerivedType(tag: DW_TAG_member, scope: !3881, file: !38, line: 296, baseType: !3884, size: 448)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3881, file: !38, line: 296, size: 448, elements: !3885)
!3885 = !{!3886, !3887, !3896, !3897, !3898, !3907, !3908}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3884, file: !38, line: 298, baseType: !207, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !38, line: 299, baseType: !3888, size: 128, offset: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3884, file: !38, line: 299, size: 128, elements: !3889)
!3889 = !{!3890, !3891}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3888, file: !38, line: 300, baseType: !172, size: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !3888, file: !38, line: 302, baseType: !3892, size: 128)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3888, file: !38, line: 302, size: 128, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3892, file: !38, line: 303, baseType: !165, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3892, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3884, file: !38, line: 310, baseType: !420, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3884, file: !38, line: 311, baseType: !207, size: 64, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, scope: !3884, file: !38, line: 312, baseType: !3899, size: 64, offset: 320)
!3899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3884, file: !38, line: 312, size: 64, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3899, file: !38, line: 313, baseType: !165, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3899, file: !38, line: 314, baseType: !3903, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3904)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3905)
!3905 = !{!3906}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3904, file: !38, line: 256, baseType: !207, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3884, file: !38, line: 316, baseType: !299, size: 32, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3884, file: !38, line: 317, baseType: !299, size: 32, offset: 416)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3881, file: !38, line: 323, baseType: !2231, size: 512, align: 128)
!3910 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !38, line: 325, baseType: !3911, size: 512, offset: 512)
!3911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !38, line: 325, size: 512, elements: !3912)
!3912 = !{!3913, !3923}
!3913 = !DIDerivedType(tag: DW_TAG_member, scope: !3911, file: !38, line: 326, baseType: !3914, size: 320)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3911, file: !38, line: 326, size: 320, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921, !3922}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3914, file: !38, line: 327, baseType: !207, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3914, file: !38, line: 328, baseType: !207, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3914, file: !38, line: 329, baseType: !207, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3914, file: !38, line: 331, baseType: !299, size: 32, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3914, file: !38, line: 332, baseType: !299, size: 32, offset: 224)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3914, file: !38, line: 333, baseType: !299, size: 32, offset: 256)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3914, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3911, file: !38, line: 339, baseType: !2231, size: 512, align: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !38, line: 341, baseType: !3925, size: 512, offset: 1024)
!3925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !38, line: 341, size: 512, elements: !3926)
!3926 = !{!3927, !3936, !3942}
!3927 = !DIDerivedType(tag: DW_TAG_member, scope: !3925, file: !38, line: 342, baseType: !3928, size: 384)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3925, file: !38, line: 342, size: 384, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3928, file: !38, line: 343, baseType: !207, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3928, file: !38, line: 344, baseType: !207, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3928, file: !38, line: 346, baseType: !165, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3928, file: !38, line: 347, baseType: !165, size: 64, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3928, file: !38, line: 348, baseType: !165, size: 64, offset: 256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3928, file: !38, line: 349, baseType: !165, size: 64, offset: 320)
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !3925, file: !38, line: 352, baseType: !3937, size: 256)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3925, file: !38, line: 352, size: 256, elements: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3937, file: !38, line: 353, baseType: !207, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3937, file: !38, line: 354, baseType: !207, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3937, file: !38, line: 356, baseType: !172, size: 128, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3925, file: !38, line: 359, baseType: !2231, size: 512, align: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3867, file: !14, line: 409, baseType: !3944, size: 64, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!109, !420, !1083}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3867, file: !14, line: 412, baseType: !3948, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!760, !420, !3877}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3867, file: !14, line: 414, baseType: !3952, size: 64, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !3955}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3867, file: !14, line: 416, baseType: !3958, size: 64, offset: 320)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!109, !1769, !420, !580, !7, !3280, !164}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3867, file: !14, line: 419, baseType: !3962, size: 64, offset: 384)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!109, !1769, !420, !580, !7, !7, !2230, !165}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3867, file: !14, line: 424, baseType: !3966, size: 64, offset: 448)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!3969, !420, !3969}
!3969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !167, line: 131, baseType: !196)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3867, file: !14, line: 425, baseType: !3971, size: 64, offset: 512)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !3877, !392, !392}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3867, file: !14, line: 426, baseType: !3975, size: 64, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!760, !3877, !166}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3867, file: !14, line: 427, baseType: !3979, size: 64, offset: 640)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !3877}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3867, file: !14, line: 428, baseType: !2056, size: 64, offset: 704)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3867, file: !14, line: 433, baseType: !3984, size: 64, offset: 768)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!109, !420, !3877, !3877, !74}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3867, file: !14, line: 435, baseType: !3988, size: 64, offset: 832)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!109, !3877}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3867, file: !14, line: 436, baseType: !3992, size: 64, offset: 896)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!760, !3877, !392, !392}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3867, file: !14, line: 438, baseType: !3996, size: 64, offset: 960)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3877, !3999, !3999}
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3867, file: !14, line: 439, baseType: !4001, size: 64, offset: 1024)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!109, !420, !2230}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3867, file: !14, line: 442, baseType: !4005, size: 64, offset: 1088)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!109, !4008, !1769, !4010}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3867, file: !14, line: 444, baseType: !2450, size: 64, offset: 1152)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3867, file: !14, line: 445, baseType: !4013, size: 64, offset: 1216)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!109, !2059, !2081}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !14, line: 486, baseType: !207, size: 64, offset: 896)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !421, file: !14, line: 487, baseType: !1339, size: 320, offset: 960)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !421, file: !14, line: 488, baseType: !2492, size: 32, offset: 1280)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !421, file: !14, line: 489, baseType: !279, size: 32, offset: 1312)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !421, file: !14, line: 490, baseType: !172, size: 128, offset: 1344)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !421, file: !14, line: 491, baseType: !165, size: 64, offset: 1472)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !411, file: !371, line: 180, baseType: !4023, size: 64, offset: 320)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!377, !1769, !272, !410, !345, !580, !392}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !411, file: !371, line: 182, baseType: !4023, size: 64, offset: 384)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !411, file: !371, line: 184, baseType: !4028, size: 64, offset: 448)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!109, !1769, !272, !410, !2121}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !399, file: !371, line: 90, baseType: !4032, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !399, file: !371, line: 91, baseType: !4034, size: 64, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !361, file: !267, line: 120, baseType: !4036, size: 64, offset: 192)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!4039, !328}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4041)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4042)
!4042 = !{!4043, !4044, !4048, !4052, !4058, !4062}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4041, file: !82, line: 40, baseType: !81, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4041, file: !82, line: 41, baseType: !4045, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!760}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4041, file: !82, line: 42, baseType: !4049, size: 64, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!165}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4041, file: !82, line: 43, baseType: !4053, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!2581, !4056}
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4041, file: !82, line: 44, baseType: !4059, size: 64, offset: 256)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!2581}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4041, file: !82, line: 45, baseType: !723, size: 64, offset: 320)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !361, file: !267, line: 121, baseType: !4064, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!2581, !328}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !361, file: !267, line: 122, baseType: !4068, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{null, !328, !4071, !4072}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !266, file: !267, line: 70, baseType: !4074, size: 64, offset: 384)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !595, line: 190, size: 1152, elements: !4076)
!4076 = !{!4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4168, !4169, !4170, !4171, !4172, !4175}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4075, file: !595, line: 191, baseType: !299, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4075, file: !595, line: 192, baseType: !299, size: 32, offset: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4075, file: !595, line: 202, baseType: !4074, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4075, file: !595, line: 203, baseType: !203, size: 64, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4075, file: !595, line: 205, baseType: !792, size: 192, align: 64, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4075, file: !595, line: 207, baseType: !2581, size: 64, offset: 384)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4075, file: !595, line: 208, baseType: !7, size: 32, offset: 448)
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !4075, file: !595, line: 209, baseType: !4085, size: 256, offset: 512)
!4085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4075, file: !595, line: 209, size: 256, elements: !4086)
!4086 = !{!4087, !4096, !4100}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4085, file: !595, line: 210, baseType: !4088, size: 256)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !595, line: 153, size: 256, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4095}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4088, file: !595, line: 154, baseType: !207, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4088, file: !595, line: 156, baseType: !1628, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4088, file: !595, line: 162, baseType: !4093, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !595, line: 162, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4088, file: !595, line: 167, baseType: !207, size: 64, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4085, file: !595, line: 211, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !595, line: 170, size: 64, elements: !4098)
!4098 = !{!4099}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4097, file: !595, line: 171, baseType: !4074, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4085, file: !595, line: 212, baseType: !4101, size: 256)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !595, line: 174, size: 256, elements: !4102)
!4102 = !{!4103, !4163, !4166, !4167}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4101, file: !595, line: 175, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4106)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !595, line: 271, size: 768, elements: !4107)
!4107 = !{!4108, !4128, !4132, !4136, !4140, !4144, !4148, !4152, !4153, !4154, !4155, !4159}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4106, file: !595, line: 276, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!109, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !595, line: 251, size: 1216, elements: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4113, file: !595, line: 253, baseType: !4074, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4113, file: !595, line: 254, baseType: !1769, size: 64, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4113, file: !595, line: 255, baseType: !1120, size: 64, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4113, file: !595, line: 256, baseType: !165, size: 64, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4113, file: !595, line: 259, baseType: !680, size: 256, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4113, file: !595, line: 260, baseType: !680, size: 256, offset: 512)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4113, file: !595, line: 261, baseType: !109, size: 32, offset: 768)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4113, file: !595, line: 262, baseType: !172, size: 128, offset: 832)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4113, file: !595, line: 263, baseType: !345, size: 64, offset: 960)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4113, file: !595, line: 265, baseType: !392, size: 64, offset: 1024)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4113, file: !595, line: 266, baseType: !760, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4113, file: !595, line: 267, baseType: !760, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4113, file: !595, line: 268, baseType: !2166, size: 64, offset: 1152)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4106, file: !595, line: 277, baseType: !4129, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !4112}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4106, file: !595, line: 290, baseType: !4133, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!109, !1120, !165}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4106, file: !595, line: 292, baseType: !4137, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!165, !1120, !2050}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4106, file: !595, line: 293, baseType: !4141, size: 64, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!165, !1120, !165, !2050}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4106, file: !595, line: 294, baseType: !4145, size: 64, offset: 320)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{null, !1120, !165}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4106, file: !595, line: 296, baseType: !4149, size: 64, offset: 384)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!377, !4112, !345, !392, !580}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4106, file: !595, line: 306, baseType: !392, size: 64, offset: 448)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4106, file: !595, line: 313, baseType: !760, size: 8, offset: 512)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4106, file: !595, line: 314, baseType: !4149, size: 64, offset: 576)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4106, file: !595, line: 317, baseType: !4156, size: 64, offset: 640)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!2108, !4112, !2110}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4106, file: !595, line: 320, baseType: !4160, size: 64, offset: 704)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!109, !4112, !2121}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4101, file: !595, line: 176, baseType: !4164, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !595, line: 35, flags: DIFlagFwdDecl)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4101, file: !595, line: 177, baseType: !580, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4101, file: !595, line: 178, baseType: !4074, size: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4075, file: !595, line: 215, baseType: !165, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4075, file: !595, line: 221, baseType: !196, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4075, file: !595, line: 223, baseType: !258, size: 16, offset: 896)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4075, file: !595, line: 224, baseType: !387, size: 16, offset: 912)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4075, file: !595, line: 225, baseType: !4173, size: 64, offset: 960)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !595, line: 36, flags: DIFlagFwdDecl)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4075, file: !595, line: 227, baseType: !900, size: 128, align: 64, offset: 1024)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !266, file: !267, line: 71, baseType: !4177, size: 32, offset: 448)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4178, line: 19, size: 32, elements: !4179)
!4178 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4179 = !{!4180}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4177, file: !4178, line: 20, baseType: !1459, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !266, file: !267, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !266, file: !267, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !266, file: !267, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !266, file: !267, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !266, file: !267, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !263, file: !94, line: 707, baseType: !262, size: 64, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !263, file: !94, line: 709, baseType: !4188, size: 64, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !263, file: !94, line: 711, baseType: !203, size: 64, offset: 640)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !263, file: !94, line: 712, baseType: !4192, size: 64, offset: 704)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4194)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4195)
!4195 = !{!4196, !4197, !4198, !4204, !4209, !4213}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4194, file: !94, line: 90, baseType: !203, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4194, file: !94, line: 91, baseType: !396, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4194, file: !94, line: 92, baseType: !4199, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!109, !4202, !340}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4194, file: !94, line: 93, baseType: !4205, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!345, !4202, !4208, !4071, !4072}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4194, file: !94, line: 95, baseType: !4210, size: 64, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{null, !262}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4194, file: !94, line: 97, baseType: !4214, size: 64, offset: 320)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4216)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4217)
!4217 = !{!4218, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4216, file: !101, line: 287, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!109, !262}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4216, file: !101, line: 288, baseType: !4210, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4216, file: !101, line: 289, baseType: !4219, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4216, file: !101, line: 290, baseType: !4219, size: 64, offset: 192)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4216, file: !101, line: 291, baseType: !4219, size: 64, offset: 256)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4216, file: !101, line: 292, baseType: !4219, size: 64, offset: 320)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4216, file: !101, line: 293, baseType: !4219, size: 64, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4216, file: !101, line: 294, baseType: !4219, size: 64, offset: 448)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4216, file: !101, line: 295, baseType: !4219, size: 64, offset: 512)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4216, file: !101, line: 296, baseType: !4219, size: 64, offset: 576)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4216, file: !101, line: 297, baseType: !4219, size: 64, offset: 640)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4216, file: !101, line: 298, baseType: !4219, size: 64, offset: 704)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4216, file: !101, line: 299, baseType: !4219, size: 64, offset: 768)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4216, file: !101, line: 300, baseType: !4219, size: 64, offset: 832)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4216, file: !101, line: 301, baseType: !4219, size: 64, offset: 896)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4216, file: !101, line: 302, baseType: !4219, size: 64, offset: 960)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4216, file: !101, line: 303, baseType: !4219, size: 64, offset: 1024)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4216, file: !101, line: 304, baseType: !4219, size: 64, offset: 1088)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4216, file: !101, line: 305, baseType: !4219, size: 64, offset: 1152)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4216, file: !101, line: 306, baseType: !4219, size: 64, offset: 1216)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4216, file: !101, line: 307, baseType: !4219, size: 64, offset: 1280)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4216, file: !101, line: 308, baseType: !4219, size: 64, offset: 1344)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4216, file: !101, line: 309, baseType: !4219, size: 64, offset: 1408)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !263, file: !94, line: 714, baseType: !4245, size: 64, offset: 768)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4247)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4248, line: 80, size: 1344, elements: !4249)
!4248 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4249 = !{!4250, !4251, !4252, !4253, !4254, !4255, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4328}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4247, file: !4248, line: 81, baseType: !203, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4247, file: !4248, line: 82, baseType: !203, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4247, file: !4248, line: 83, baseType: !396, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4247, file: !4248, line: 84, baseType: !396, size: 64, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4247, file: !4248, line: 85, baseType: !396, size: 64, offset: 256)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4247, file: !4248, line: 87, baseType: !4256, size: 64, offset: 320)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!109, !262, !4259}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4281, !4291, !4292, !4293, !4294, !4295, !4303, !4304, !4305, !4306, !4307, !4308}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4260, file: !88, line: 97, baseType: !203, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4260, file: !88, line: 98, baseType: !4245, size: 64, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4260, file: !88, line: 100, baseType: !609, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4260, file: !88, line: 101, baseType: !203, size: 64, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4260, file: !88, line: 103, baseType: !760, size: 8, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4260, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4260, file: !88, line: 106, baseType: !4269, size: 64, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4271)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4272, line: 282, size: 1600, elements: !4273)
!4272 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4273 = !{!4274, !4275, !4276, !4280}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4271, file: !4272, line: 283, baseType: !3533, size: 256)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4271, file: !4272, line: 284, baseType: !3533, size: 256, offset: 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4271, file: !4272, line: 285, baseType: !4277, size: 1024, offset: 512)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 1024, elements: !4278)
!4278 = !{!4279}
!4279 = !DISubrange(count: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4271, file: !4272, line: 286, baseType: !2581, size: 64, offset: 1536)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4260, file: !88, line: 107, baseType: !4282, size: 64, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4284)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4272, line: 217, size: 256, elements: !4285)
!4285 = !{!4286, !4287, !4289, !4290}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4284, file: !4272, line: 218, baseType: !3540, size: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4284, file: !4272, line: 219, baseType: !4288, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4272, line: 15, baseType: !207)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4284, file: !4272, line: 220, baseType: !238, size: 32, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4284, file: !4272, line: 221, baseType: !238, size: 32, offset: 224)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4260, file: !88, line: 109, baseType: !4219, size: 64, offset: 448)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4260, file: !88, line: 110, baseType: !4210, size: 64, offset: 512)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4260, file: !88, line: 111, baseType: !4219, size: 64, offset: 576)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4260, file: !88, line: 112, baseType: !4210, size: 64, offset: 640)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4260, file: !88, line: 113, baseType: !4296, size: 64, offset: 704)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!109, !262, !4299}
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4300)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4301)
!4301 = !{!4302}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4300, file: !101, line: 59, baseType: !109, size: 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4260, file: !88, line: 114, baseType: !4219, size: 64, offset: 768)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4260, file: !88, line: 115, baseType: !396, size: 64, offset: 832)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4260, file: !88, line: 116, baseType: !396, size: 64, offset: 896)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4260, file: !88, line: 118, baseType: !4214, size: 64, offset: 960)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4260, file: !88, line: 119, baseType: !4210, size: 64, offset: 1024)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4260, file: !88, line: 121, baseType: !4309, size: 64, offset: 1088)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4247, file: !4248, line: 88, baseType: !4199, size: 64, offset: 384)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4247, file: !4248, line: 89, baseType: !4219, size: 64, offset: 448)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4247, file: !4248, line: 90, baseType: !4210, size: 64, offset: 512)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4247, file: !4248, line: 91, baseType: !4210, size: 64, offset: 576)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4247, file: !4248, line: 92, baseType: !4210, size: 64, offset: 640)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4247, file: !4248, line: 94, baseType: !4219, size: 64, offset: 704)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4247, file: !4248, line: 95, baseType: !4219, size: 64, offset: 768)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4247, file: !4248, line: 97, baseType: !4296, size: 64, offset: 832)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4247, file: !4248, line: 98, baseType: !4219, size: 64, offset: 896)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4247, file: !4248, line: 100, baseType: !4219, size: 64, offset: 960)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4247, file: !4248, line: 102, baseType: !4219, size: 64, offset: 1024)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4247, file: !4248, line: 103, baseType: !4210, size: 64, offset: 1088)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4247, file: !4248, line: 105, baseType: !4214, size: 64, offset: 1152)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4247, file: !4248, line: 107, baseType: !4325, size: 64, offset: 1216)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4327 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4248, line: 107, flags: DIFlagFwdDecl)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4247, file: !4248, line: 109, baseType: !760, size: 8, offset: 1280)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !263, file: !94, line: 715, baseType: !4259, size: 64, offset: 832)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !263, file: !94, line: 717, baseType: !165, size: 64, offset: 896)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !263, file: !94, line: 719, baseType: !165, size: 64, offset: 960)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !263, file: !94, line: 721, baseType: !680, size: 256, offset: 1024)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !263, file: !94, line: 725, baseType: !4334, size: 448, offset: 1280)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4335)
!4335 = !{!4336, !4337, !4338, !4339}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4334, file: !94, line: 518, baseType: !172, size: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4334, file: !94, line: 519, baseType: !172, size: 128, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4334, file: !94, line: 520, baseType: !172, size: 128, offset: 256)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4334, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !263, file: !94, line: 726, baseType: !4341, size: 2496, offset: 1728)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4425, !4429}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4341, file: !101, line: 664, baseType: !4299, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4341, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4341, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4341, file: !101, line: 667, baseType: !760, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4341, file: !101, line: 668, baseType: !760, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4341, file: !101, line: 669, baseType: !760, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4341, file: !101, line: 670, baseType: !760, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4341, file: !101, line: 671, baseType: !760, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4341, file: !101, line: 672, baseType: !760, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4341, file: !101, line: 673, baseType: !760, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4341, file: !101, line: 674, baseType: !760, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4341, file: !101, line: 675, baseType: !237, size: 32, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4341, file: !101, line: 676, baseType: !279, size: 32, offset: 96)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4341, file: !101, line: 678, baseType: !172, size: 128, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4341, file: !101, line: 679, baseType: !629, size: 256, offset: 256)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4341, file: !101, line: 680, baseType: !4359, size: 64, offset: 512)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4361, line: 43, size: 1536, elements: !4362)
!4361 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4362 = !{!4363, !4364, !4365, !4366, !4367, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4360, file: !4361, line: 44, baseType: !203, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4360, file: !4361, line: 45, baseType: !109, size: 32, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4360, file: !4361, line: 46, baseType: !172, size: 128, offset: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4360, file: !4361, line: 47, baseType: !279, size: 32, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4360, file: !4361, line: 48, baseType: !4368, size: 64, offset: 320)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4360, file: !4361, line: 49, baseType: !920, size: 320, offset: 384)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4360, file: !4361, line: 50, baseType: !207, size: 64, offset: 704)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4360, file: !4361, line: 51, baseType: !1574, size: 64, offset: 768)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4360, file: !4361, line: 52, baseType: !1574, size: 64, offset: 832)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4360, file: !4361, line: 53, baseType: !1574, size: 64, offset: 896)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4360, file: !4361, line: 54, baseType: !1574, size: 64, offset: 960)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4360, file: !4361, line: 55, baseType: !1574, size: 64, offset: 1024)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4360, file: !4361, line: 56, baseType: !207, size: 64, offset: 1088)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4360, file: !4361, line: 57, baseType: !207, size: 64, offset: 1152)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4360, file: !4361, line: 58, baseType: !207, size: 64, offset: 1216)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4360, file: !4361, line: 59, baseType: !207, size: 64, offset: 1280)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4360, file: !4361, line: 60, baseType: !207, size: 64, offset: 1344)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4360, file: !4361, line: 61, baseType: !262, size: 64, offset: 1408)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4360, file: !4361, line: 62, baseType: !760, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4360, file: !4361, line: 63, baseType: !760, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4341, file: !101, line: 681, baseType: !760, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4341, file: !101, line: 682, baseType: !760, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4341, file: !101, line: 683, baseType: !760, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4341, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4341, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4341, file: !101, line: 690, baseType: !1566, size: 512, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4341, file: !101, line: 691, baseType: !196, size: 64, offset: 1152)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4341, file: !101, line: 692, baseType: !938, size: 256, offset: 1216)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4341, file: !101, line: 693, baseType: !1432, size: 192, offset: 1472)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4341, file: !101, line: 694, baseType: !4368, size: 64, offset: 1664)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4341, file: !101, line: 695, baseType: !299, size: 32, offset: 1728)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4341, file: !101, line: 696, baseType: !299, size: 32, offset: 1760)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4341, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4341, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4341, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4341, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4341, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4341, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4341, file: !101, line: 703, baseType: !760, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4341, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4341, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4341, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4341, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4341, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4341, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4341, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4341, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4341, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4341, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4341, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4341, file: !101, line: 715, baseType: !196, size: 64, offset: 2048)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4341, file: !101, line: 716, baseType: !196, size: 64, offset: 2112)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4341, file: !101, line: 717, baseType: !196, size: 64, offset: 2176)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4341, file: !101, line: 718, baseType: !196, size: 64, offset: 2240)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4341, file: !101, line: 720, baseType: !4420, size: 64, offset: 2304)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4422)
!4422 = !{!4423, !4424}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4421, file: !101, line: 633, baseType: !279, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4421, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4341, file: !101, line: 721, baseType: !4426, size: 64, offset: 2368)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !262, !676}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4341, file: !101, line: 722, baseType: !4430, size: 64, offset: 2432)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !263, file: !94, line: 727, baseType: !4433, size: 64, offset: 4224)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4435)
!4435 = !{!4436, !4437, !4438, !4442, !4443, !4444}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4434, file: !101, line: 743, baseType: !4216, size: 1472)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4434, file: !101, line: 744, baseType: !4219, size: 64, offset: 1472)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4434, file: !101, line: 745, baseType: !4439, size: 64, offset: 1536)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !262, !760}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4434, file: !101, line: 746, baseType: !4219, size: 64, offset: 1600)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4434, file: !101, line: 747, baseType: !4210, size: 64, offset: 1664)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4434, file: !101, line: 748, baseType: !4210, size: 64, offset: 1728)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !263, file: !94, line: 736, baseType: !4446, size: 128, offset: 4288)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4447)
!4447 = !{!4448, !4452}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4446, file: !94, line: 531, baseType: !4449, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4451, line: 13, flags: DIFlagFwdDecl)
!4451 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4446, file: !94, line: 532, baseType: !4453, size: 64, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !263, file: !94, line: 738, baseType: !4456, size: 64, offset: 4416)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4458)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !263, file: !94, line: 740, baseType: !4460, size: 64, offset: 4480)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !263, file: !94, line: 741, baseType: !196, size: 64, offset: 4544)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !263, file: !94, line: 746, baseType: !196, size: 64, offset: 4608)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !263, file: !94, line: 747, baseType: !4464, size: 64, offset: 4672)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4466)
!4466 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !263, file: !94, line: 749, baseType: !4468, size: 64, offset: 4736)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4470)
!4470 = !{!4471, !4472, !4473}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4469, file: !94, line: 433, baseType: !7, size: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4469, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4469, file: !94, line: 435, baseType: !207, size: 64, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !263, file: !94, line: 751, baseType: !172, size: 128, offset: 4800)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !263, file: !94, line: 762, baseType: !4476, size: 64, offset: 4928)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !263, file: !94, line: 770, baseType: !4479, offset: 4992)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4480, line: 5, elements: !967)
!4480 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !263, file: !94, line: 772, baseType: !4482, size: 64, offset: 4992)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4484, line: 48, size: 1152, elements: !4485)
!4484 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4485 = !{!4486, !4487, !4489, !4490, !4593, !4601, !4602, !4603, !4604, !4605, !4606}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4483, file: !4484, line: 49, baseType: !203, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4483, file: !4484, line: 50, baseType: !4488, size: 32, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4484, line: 25, baseType: !237)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4483, file: !4484, line: 51, baseType: !203, size: 64, offset: 128)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4483, file: !4484, line: 52, baseType: !4491, size: 512, offset: 192)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4492, line: 41, size: 512, elements: !4493)
!4492 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4493 = !{!4494, !4496, !4589, !4590, !4591, !4592}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4491, file: !4492, line: 42, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4491, file: !4492, line: 43, baseType: !4497, size: 64, offset: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4499)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4492, line: 125, size: 1408, elements: !4500)
!4500 = !{!4501, !4505, !4509, !4515, !4519, !4520, !4524, !4528, !4532, !4536, !4540, !4541, !4545, !4549, !4553, !4564, !4565, !4566, !4567, !4577, !4581, !4585}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4499, file: !4492, line: 126, baseType: !4502, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!4495, !4495}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4499, file: !4492, line: 127, baseType: !4506, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{null, !4495}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4499, file: !4492, line: 128, baseType: !4510, size: 64, offset: 128)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!760, !4513}
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4491)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4499, file: !4492, line: 129, baseType: !4516, size: 64, offset: 192)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!2581, !4513, !4202}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4499, file: !4492, line: 131, baseType: !4510, size: 64, offset: 256)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4499, file: !4492, line: 133, baseType: !4521, size: 64, offset: 320)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!116, !4513}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4499, file: !4492, line: 134, baseType: !4525, size: 64, offset: 384)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!760, !4513, !203}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4499, file: !4492, line: 136, baseType: !4529, size: 64, offset: 448)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!109, !4513, !203, !7, !165, !392}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4499, file: !4492, line: 141, baseType: !4533, size: 64, offset: 512)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!109, !4513, !203, !1015, !392}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4499, file: !4492, line: 144, baseType: !4537, size: 64, offset: 576)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!203, !4513}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4499, file: !4492, line: 145, baseType: !4537, size: 64, offset: 640)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4499, file: !4492, line: 146, baseType: !4542, size: 64, offset: 704)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!4495, !4513}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4499, file: !4492, line: 148, baseType: !4546, size: 64, offset: 768)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!4495, !4513, !4495}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4499, file: !4492, line: 151, baseType: !4550, size: 64, offset: 832)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!4495, !4513, !203}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4499, file: !4492, line: 153, baseType: !4554, size: 64, offset: 896)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!109, !4513, !203, !203, !7, !7, !4557}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4492, line: 94, size: 640, elements: !4559)
!4559 = !{!4560, !4561, !4562}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4558, file: !4492, line: 95, baseType: !4495, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4558, file: !4492, line: 96, baseType: !7, size: 32, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4558, file: !4492, line: 97, baseType: !4563, size: 512, offset: 128)
!4563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 512, elements: !1609)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4499, file: !4492, line: 158, baseType: !4546, size: 64, offset: 960)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4499, file: !4492, line: 161, baseType: !4542, size: 64, offset: 1024)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4499, file: !4492, line: 163, baseType: !4502, size: 64, offset: 1088)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4499, file: !4492, line: 164, baseType: !4568, size: 64, offset: 1152)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!109, !4513, !4571}
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4492, line: 73, size: 128, elements: !4573)
!4573 = !{!4574, !4575, !4576}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4572, file: !4492, line: 74, baseType: !7, size: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4572, file: !4492, line: 75, baseType: !7, size: 32, offset: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4572, file: !4492, line: 76, baseType: !4513, size: 64, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4499, file: !4492, line: 166, baseType: !4578, size: 64, offset: 1216)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!165, !4495, !109}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4499, file: !4492, line: 167, baseType: !4582, size: 64, offset: 1280)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!109, !4513, !7}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4499, file: !4492, line: 168, baseType: !4586, size: 64, offset: 1344)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!109, !4495}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4491, file: !4492, line: 44, baseType: !262, size: 64, offset: 128)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4491, file: !4492, line: 45, baseType: !172, size: 128, offset: 192)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4491, file: !4492, line: 46, baseType: !172, size: 128, offset: 320)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4491, file: !4492, line: 47, baseType: !307, size: 8, offset: 448)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4483, file: !4484, line: 54, baseType: !4594, size: 64, offset: 704)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4484, line: 28, size: 256, elements: !4596)
!4596 = !{!4597, !4598, !4599, !4600}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4595, file: !4484, line: 29, baseType: !345, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4595, file: !4484, line: 30, baseType: !109, size: 32, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4595, file: !4484, line: 31, baseType: !165, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4595, file: !4484, line: 32, baseType: !4594, size: 64, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4483, file: !4484, line: 55, baseType: !4594, size: 64, offset: 768)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4483, file: !4484, line: 56, baseType: !4482, size: 64, offset: 832)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4483, file: !4484, line: 57, baseType: !4482, size: 64, offset: 896)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4483, file: !4484, line: 58, baseType: !4482, size: 64, offset: 960)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4483, file: !4484, line: 62, baseType: !207, size: 64, offset: 1024)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4483, file: !4484, line: 63, baseType: !165, size: 64, offset: 1088)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !263, file: !94, line: 773, baseType: !4495, size: 64, offset: 5056)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !263, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !263, file: !94, line: 778, baseType: !575, size: 32, offset: 5152)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !263, file: !94, line: 779, baseType: !237, size: 32, offset: 5184)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !263, file: !94, line: 781, baseType: !279, size: 32, offset: 5216)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !263, file: !94, line: 782, baseType: !172, size: 128, offset: 5248)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !263, file: !94, line: 784, baseType: !4614, size: 64, offset: 5376)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4616)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4617, line: 52, size: 768, elements: !4618)
!4617 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4627, !4631, !4632, !4633, !4634, !4638, !4642}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4616, file: !4617, line: 53, baseType: !203, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4616, file: !4617, line: 55, baseType: !396, size: 64, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4616, file: !4617, line: 56, baseType: !396, size: 64, offset: 128)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4616, file: !4617, line: 58, baseType: !4199, size: 64, offset: 192)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4616, file: !4617, line: 59, baseType: !4624, size: 64, offset: 256)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!345, !4202, !4208}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4616, file: !4617, line: 61, baseType: !4628, size: 64, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{null, !4614}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4616, file: !4617, line: 62, baseType: !4210, size: 64, offset: 384)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4616, file: !4617, line: 64, baseType: !4219, size: 64, offset: 448)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4616, file: !4617, line: 66, baseType: !4039, size: 64, offset: 512)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4616, file: !4617, line: 67, baseType: !4635, size: 64, offset: 576)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!2581, !4202}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4616, file: !4617, line: 69, baseType: !4639, size: 64, offset: 640)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{null, !4202, !4071, !4072}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4616, file: !4617, line: 71, baseType: !4214, size: 64, offset: 704)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !263, file: !94, line: 785, baseType: !396, size: 64, offset: 5440)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !263, file: !94, line: 787, baseType: !4210, size: 64, offset: 5504)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !263, file: !94, line: 788, baseType: !4646, size: 64, offset: 5568)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !263, file: !94, line: 789, baseType: !4649, size: 64, offset: 5632)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !263, file: !94, line: 791, baseType: !4652, size: 64, offset: 5696)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4654)
!4654 = !{!4655, !4656, !4657, !4658, !4659}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4653, file: !94, line: 598, baseType: !122, size: 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4653, file: !94, line: 599, baseType: !131, size: 32, offset: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4653, file: !94, line: 600, baseType: !136, size: 32, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4653, file: !94, line: 601, baseType: !760, size: 8, offset: 96)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4653, file: !94, line: 602, baseType: !760, size: 8, offset: 104)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !263, file: !94, line: 793, baseType: !141, size: 32, offset: 5760)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !263, file: !94, line: 795, baseType: !760, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !263, file: !94, line: 796, baseType: !760, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !263, file: !94, line: 797, baseType: !760, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !263, file: !94, line: 798, baseType: !760, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !263, file: !94, line: 799, baseType: !760, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !179, file: !154, line: 676, baseType: !263, size: 5824, offset: 2240)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !179, file: !154, line: 677, baseType: !410, size: 64, offset: 8064)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !179, file: !154, line: 678, baseType: !410, size: 64, offset: 8128)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !179, file: !154, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !179, file: !154, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !169, file: !154, line: 325, baseType: !178, size: 64, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !169, file: !154, line: 327, baseType: !165, size: 64, offset: 256)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !169, file: !154, line: 328, baseType: !245, size: 64, offset: 320)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !169, file: !154, line: 329, baseType: !4675, size: 64, offset: 384)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !154, line: 76, size: 832, elements: !4677)
!4677 = !{!4678, !4679, !4680, !4683, !4684}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4676, file: !154, line: 77, baseType: !178, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4676, file: !154, line: 78, baseType: !172, size: 128, offset: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4676, file: !154, line: 79, baseType: !4681, size: 64, offset: 192)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !154, line: 79, flags: DIFlagFwdDecl)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4676, file: !154, line: 80, baseType: !249, size: 8, offset: 256)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4676, file: !154, line: 81, baseType: !266, size: 512, offset: 320)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !169, file: !154, line: 331, baseType: !7, size: 32, offset: 448)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !169, file: !154, line: 332, baseType: !258, size: 16, offset: 480)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !169, file: !154, line: 333, baseType: !258, size: 16, offset: 496)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !169, file: !154, line: 334, baseType: !258, size: 16, offset: 512)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !169, file: !154, line: 335, baseType: !258, size: 16, offset: 528)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !169, file: !154, line: 336, baseType: !7, size: 32, offset: 544)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !169, file: !154, line: 337, baseType: !307, size: 8, offset: 576)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !169, file: !154, line: 338, baseType: !307, size: 8, offset: 584)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !169, file: !154, line: 344, baseType: !4694, size: 64, offset: 640)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !154, line: 319, flags: DIFlagFwdDecl)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !169, file: !154, line: 345, baseType: !168, size: 64, offset: 704)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !169, file: !154, line: 347, baseType: !237, size: 32, offset: 768)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !169, file: !154, line: 348, baseType: !307, size: 8, offset: 800)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !169, file: !154, line: 349, baseType: !307, size: 8, offset: 808)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !169, file: !154, line: 350, baseType: !307, size: 8, offset: 816)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !169, file: !154, line: 351, baseType: !307, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !169, file: !154, line: 352, baseType: !307, size: 8, offset: 832)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !169, file: !154, line: 353, baseType: !307, size: 8, offset: 840)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !169, file: !154, line: 354, baseType: !314, size: 16, offset: 848)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !169, file: !154, line: 355, baseType: !1029, size: 64, offset: 896)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !169, file: !154, line: 357, baseType: !4707, size: 64, offset: 960)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !154, line: 918, size: 2368, elements: !4709)
!4709 = !{!4710, !4711, !4712, !4725, !4729, !4733, !4737, !4741, !4742, !4746, !4747, !4751, !4771, !4772, !4773, !4774, !4779}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4708, file: !154, line: 919, baseType: !172, size: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4708, file: !154, line: 920, baseType: !203, size: 64, offset: 128)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4708, file: !154, line: 921, baseType: !4713, size: 64, offset: 192)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4715)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4272, line: 44, size: 320, elements: !4716)
!4716 = !{!4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4715, file: !4272, line: 45, baseType: !238, size: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4715, file: !4272, line: 45, baseType: !238, size: 32, offset: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4715, file: !4272, line: 46, baseType: !238, size: 32, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4715, file: !4272, line: 46, baseType: !238, size: 32, offset: 96)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4715, file: !4272, line: 47, baseType: !238, size: 32, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4715, file: !4272, line: 47, baseType: !238, size: 32, offset: 160)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4715, file: !4272, line: 48, baseType: !4288, size: 64, offset: 192)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4715, file: !4272, line: 49, baseType: !238, size: 32, offset: 256)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4708, file: !154, line: 922, baseType: !4726, size: 64, offset: 256)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!109, !168, !4713}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4708, file: !154, line: 923, baseType: !4730, size: 64, offset: 320)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{null, !168}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4708, file: !154, line: 924, baseType: !4734, size: 64, offset: 384)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!109, !168, !4299}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4708, file: !154, line: 925, baseType: !4738, size: 64, offset: 448)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!109, !168}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4708, file: !154, line: 926, baseType: !4730, size: 64, offset: 512)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4708, file: !154, line: 927, baseType: !4743, size: 64, offset: 576)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!109, !168, !109}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4708, file: !154, line: 928, baseType: !4743, size: 64, offset: 640)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4708, file: !154, line: 929, baseType: !4748, size: 64, offset: 704)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!237, !168}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4708, file: !154, line: 930, baseType: !4752, size: 64, offset: 768)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4754)
!4754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !154, line: 837, size: 448, elements: !4755)
!4755 = !{!4756, !4762, !4766, !4767, !4768, !4769, !4770}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4754, file: !154, line: 839, baseType: !4757, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!4760, !168, !4761}
!4760 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !154, line: 814, baseType: !7)
!4761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !154, line: 196, baseType: !7)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4754, file: !154, line: 843, baseType: !4763, size: 64, offset: 64)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!4760, !168}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4754, file: !154, line: 846, baseType: !4763, size: 64, offset: 128)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4754, file: !154, line: 849, baseType: !4730, size: 64, offset: 192)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4754, file: !154, line: 850, baseType: !4730, size: 64, offset: 256)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4754, file: !154, line: 853, baseType: !4730, size: 64, offset: 320)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4754, file: !154, line: 856, baseType: !4730, size: 64, offset: 384)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4708, file: !154, line: 931, baseType: !396, size: 64, offset: 832)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4708, file: !154, line: 932, baseType: !396, size: 64, offset: 896)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4708, file: !154, line: 933, baseType: !4260, size: 1152, offset: 960)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4708, file: !154, line: 934, baseType: !4775, size: 192, offset: 2112)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !154, line: 801, size: 192, elements: !4776)
!4776 = !{!4777, !4778}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4775, file: !154, line: 802, baseType: !279, size: 32)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4775, file: !154, line: 803, baseType: !172, size: 128, offset: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4708, file: !154, line: 935, baseType: !760, size: 8, offset: 2304)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !169, file: !154, line: 358, baseType: !196, size: 64, offset: 1024)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !169, file: !154, line: 364, baseType: !4469, size: 128, offset: 1088)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !169, file: !154, line: 366, baseType: !4783, size: 32, offset: 1216)
!4783 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !154, line: 171, baseType: !109)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !169, file: !154, line: 369, baseType: !307, size: 8, offset: 1248)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !169, file: !154, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !169, file: !154, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !169, file: !154, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !169, file: !154, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !169, file: !154, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !169, file: !154, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !169, file: !154, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !169, file: !154, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !169, file: !154, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !169, file: !154, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !169, file: !154, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !169, file: !154, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !169, file: !154, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !169, file: !154, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !169, file: !154, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !169, file: !154, line: 390, baseType: !7, size: 32, offset: 1280)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !169, file: !154, line: 391, baseType: !7, size: 32, offset: 1312)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !169, file: !154, line: 394, baseType: !4803, size: 64, offset: 1344)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !154, line: 316, flags: DIFlagFwdDecl)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !169, file: !154, line: 395, baseType: !314, size: 16, offset: 1408)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !169, file: !154, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !169, file: !154, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !169, file: !154, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !169, file: !154, line: 402, baseType: !4761, size: 32, offset: 1440)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !169, file: !154, line: 403, baseType: !263, size: 5824, offset: 1472)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !169, file: !154, line: 405, baseType: !109, size: 32, offset: 7296)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !169, file: !154, line: 411, baseType: !7, size: 32, offset: 7328)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !169, file: !154, line: 412, baseType: !4814, size: 5632, offset: 7360)
!4814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 5632, elements: !4815)
!4815 = !{!4816}
!4816 = !DISubrange(count: 11)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !169, file: !154, line: 413, baseType: !190, size: 512, offset: 12992)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !169, file: !154, line: 415, baseType: !760, size: 8, offset: 13504)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !169, file: !154, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !169, file: !154, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !169, file: !154, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !169, file: !154, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !169, file: !154, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !169, file: !154, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !169, file: !154, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !169, file: !154, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !169, file: !154, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !169, file: !154, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !169, file: !154, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !169, file: !154, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !169, file: !154, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !169, file: !154, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !169, file: !154, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !169, file: !154, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !169, file: !154, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !169, file: !154, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !169, file: !154, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !169, file: !154, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !169, file: !154, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !169, file: !154, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !169, file: !154, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !169, file: !154, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !169, file: !154, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !169, file: !154, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !169, file: !154, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !169, file: !154, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !169, file: !154, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !169, file: !154, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !169, file: !154, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !169, file: !154, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !169, file: !154, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !169, file: !154, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !169, file: !154, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !169, file: !154, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !169, file: !154, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !169, file: !154, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !169, file: !154, line: 468, baseType: !4858, size: 16, offset: 13552)
!4858 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !154, line: 222, baseType: !258)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !169, file: !154, line: 469, baseType: !299, size: 32, offset: 13568)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !169, file: !154, line: 471, baseType: !279, size: 32, offset: 13600)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !169, file: !154, line: 472, baseType: !4862, size: 512, offset: 13632)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 512, elements: !2758)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !169, file: !154, line: 473, baseType: !1048, size: 64, offset: 14144)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !169, file: !154, line: 474, baseType: !4865, size: 704, offset: 14208)
!4865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 704, elements: !4815)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !169, file: !154, line: 475, baseType: !4865, size: 704, offset: 14912)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !169, file: !154, line: 487, baseType: !165, size: 64, offset: 15616)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !169, file: !154, line: 488, baseType: !638, size: 32, offset: 15680)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !169, file: !154, line: 490, baseType: !4870, size: 320, offset: 15744)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !154, line: 309, size: 320, elements: !4871)
!4871 = !{!4872, !4873, !4874}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4870, file: !154, line: 310, baseType: !680, size: 256)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4870, file: !154, line: 311, baseType: !7, size: 32, offset: 256)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4870, file: !154, line: 312, baseType: !307, size: 8, offset: 288)
!4875 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !154, line: 497, baseType: !4876, size: 64, offset: 16064)
!4876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !154, line: 497, size: 64, elements: !4877)
!4877 = !{!4878, !4881}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4876, file: !154, line: 498, baseType: !4879, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !154, line: 317, flags: DIFlagFwdDecl)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4876, file: !154, line: 499, baseType: !168, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !169, file: !154, line: 501, baseType: !314, size: 16, offset: 16128)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !169, file: !154, line: 502, baseType: !307, size: 8, offset: 16144)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !169, file: !154, line: 505, baseType: !314, size: 16, offset: 16160)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !169, file: !154, line: 506, baseType: !237, size: 32, offset: 16192)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !169, file: !154, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !169, file: !154, line: 510, baseType: !314, size: 16, offset: 16240)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !169, file: !154, line: 511, baseType: !314, size: 16, offset: 16256)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !169, file: !154, line: 519, baseType: !314, size: 16, offset: 16272)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !169, file: !154, line: 520, baseType: !195, size: 64, offset: 16320)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !169, file: !154, line: 521, baseType: !392, size: 64, offset: 16384)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !169, file: !154, line: 526, baseType: !203, size: 64, offset: 16448)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !169, file: !154, line: 528, baseType: !207, size: 64, offset: 16512)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !169, file: !154, line: 531, baseType: !4895, size: 56, offset: 16576)
!4895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 56, elements: !801)
!4896 = !{!0, !4897, !4899, !4901, !4906, !4908, !4910, !4912, !4917, !4919, !4921, !4926, !4928, !4930, !4932, !4934, !4936, !4938, !4943, !4945, !4950, !4952, !4957, !4962, !4964, !4969, !4974}
!4897 = !DIGlobalVariableExpression(var: !4898, expr: !DIExpression())
!4898 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_ioremap_uc293", scope: !2, file: !3, line: 89, type: !165, isLocal: true, isDefinition: true)
!4899 = !DIGlobalVariableExpression(var: !4900, expr: !DIExpression())
!4900 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_ioremap_wc294", scope: !2, file: !3, line: 104, type: !165, isLocal: true, isDefinition: true)
!4901 = !DIGlobalVariableExpression(var: !4902, expr: !DIExpression())
!4902 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !4903, isLocal: true, isDefinition: true)
!4903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 104, elements: !4904)
!4904 = !{!4905}
!4905 = !DISubrange(count: 13)
!4906 = !DIGlobalVariableExpression(var: !4907, expr: !DIExpression())
!4907 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_iounmap295", scope: !2, file: !3, line: 119, type: !165, isLocal: true, isDefinition: true)
!4908 = !DIGlobalVariableExpression(var: !4909, expr: !DIExpression())
!4909 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_ioremap_resource296", scope: !2, file: !3, line: 190, type: !165, isLocal: true, isDefinition: true)
!4910 = !DIGlobalVariableExpression(var: !4911, expr: !DIExpression())
!4911 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_of_iomap297", scope: !2, file: !3, line: 248, type: !165, isLocal: true, isDefinition: true)
!4912 = !DIGlobalVariableExpression(var: !4913, expr: !DIExpression())
!4913 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !4914, isLocal: true, isDefinition: true)
!4914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 192, elements: !4915)
!4915 = !{!4916}
!4916 = !DISubrange(count: 24)
!4917 = !DIGlobalVariableExpression(var: !4918, expr: !DIExpression())
!4918 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_ioport_map298", scope: !2, file: !3, line: 295, type: !165, isLocal: true, isDefinition: true)
!4919 = !DIGlobalVariableExpression(var: !4920, expr: !DIExpression())
!4920 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_ioport_unmap299", scope: !2, file: !3, line: 311, type: !165, isLocal: true, isDefinition: true)
!4921 = !DIGlobalVariableExpression(var: !4922, expr: !DIExpression())
!4922 = distinct !DIGlobalVariable(scope: null, file: !3, line: 356, type: !4923, isLocal: true, isDefinition: true)
!4923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 152, elements: !4924)
!4924 = !{!4925}
!4925 = !DISubrange(count: 19)
!4926 = !DIGlobalVariableExpression(var: !4927, expr: !DIExpression())
!4927 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcim_iomap_table300", scope: !2, file: !3, line: 363, type: !165, isLocal: true, isDefinition: true)
!4928 = !DIGlobalVariableExpression(var: !4929, expr: !DIExpression())
!4929 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcim_iomap301", scope: !2, file: !3, line: 387, type: !165, isLocal: true, isDefinition: true)
!4930 = !DIGlobalVariableExpression(var: !4931, expr: !DIExpression())
!4931 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcim_iounmap302", scope: !2, file: !3, line: 413, type: !165, isLocal: true, isDefinition: true)
!4932 = !DIGlobalVariableExpression(var: !4933, expr: !DIExpression())
!4933 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcim_iomap_regions303", scope: !2, file: !3, line: 466, type: !165, isLocal: true, isDefinition: true)
!4934 = !DIGlobalVariableExpression(var: !4935, expr: !DIExpression())
!4935 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcim_iomap_regions_request_all304", scope: !2, file: !3, line: 491, type: !165, isLocal: true, isDefinition: true)
!4936 = !DIGlobalVariableExpression(var: !4937, expr: !DIExpression())
!4937 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcim_iounmap_regions305", scope: !2, file: !3, line: 517, type: !165, isLocal: true, isDefinition: true)
!4938 = !DIGlobalVariableExpression(var: !4939, expr: !DIExpression())
!4939 = distinct !DIGlobalVariable(scope: null, file: !3, line: 539, type: !4940, isLocal: true, isDefinition: true)
!4940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 240, elements: !4941)
!4941 = !{!4942}
!4942 = !DISubrange(count: 30)
!4943 = !DIGlobalVariableExpression(var: !4944, expr: !DIExpression())
!4944 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_arch_phys_wc_add306", scope: !2, file: !3, line: 555, type: !165, isLocal: true, isDefinition: true)
!4945 = !DIGlobalVariableExpression(var: !4946, expr: !DIExpression())
!4946 = distinct !DIGlobalVariable(scope: null, file: !3, line: 585, type: !4947, isLocal: true, isDefinition: true)
!4947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 296, elements: !4948)
!4948 = !{!4949}
!4949 = !DISubrange(count: 37)
!4950 = !DIGlobalVariableExpression(var: !4951, expr: !DIExpression())
!4951 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_arch_io_reserve_memtype_wc307", scope: !2, file: !3, line: 602, type: !165, isLocal: true, isDefinition: true)
!4952 = !DIGlobalVariableExpression(var: !4953, expr: !DIExpression())
!4953 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !4954, isLocal: true, isDefinition: true)
!4954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 168, elements: !4955)
!4955 = !{!4956}
!4956 = !DISubrange(count: 21)
!4957 = !DIGlobalVariableExpression(var: !4958, expr: !DIExpression())
!4958 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !4959, isLocal: true, isDefinition: true)
!4959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 176, elements: !4960)
!4960 = !{!4961}
!4961 = !DISubrange(count: 22)
!4962 = !DIGlobalVariableExpression(var: !4963, expr: !DIExpression())
!4963 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !1911, isLocal: true, isDefinition: true)
!4964 = !DIGlobalVariableExpression(var: !4965, expr: !DIExpression())
!4965 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !4966, isLocal: true, isDefinition: true)
!4966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 360, elements: !4967)
!4967 = !{!4968}
!4968 = !DISubrange(count: 45)
!4969 = !DIGlobalVariableExpression(var: !4970, expr: !DIExpression())
!4970 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !4971, isLocal: true, isDefinition: true)
!4971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 312, elements: !4972)
!4972 = !{!4973}
!4973 = !DISubrange(count: 39)
!4974 = !DIGlobalVariableExpression(var: !4975, expr: !DIExpression())
!4975 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !4976, isLocal: true, isDefinition: true)
!4976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 264, elements: !4977)
!4977 = !{!4978}
!4978 = !DISubrange(count: 33)
!4979 = !{i32 7, !"Dwarf Version", i32 5}
!4980 = !{i32 2, !"Debug Info Version", i32 3}
!4981 = !{i32 1, !"wchar_size", i32 2}
!4982 = !{i32 8, !"cf-protection-branch", i32 1}
!4983 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4984 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4985 = !{i32 1, !"Code Model", i32 2}
!4986 = !{i32 1, !"override-stack-alignment", i32 8}
!4987 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4988 = distinct !DISubprogram(name: "devm_ioremap_release", scope: !3, file: !3, line: 16, type: !4989, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4991)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{null, !262, !165}
!4991 = !{!4992, !4993}
!4992 = !DILocalVariable(name: "dev", arg: 1, scope: !4988, file: !3, line: 16, type: !262)
!4993 = !DILocalVariable(name: "res", arg: 2, scope: !4988, file: !3, line: 16, type: !165)
!4994 = !DILocation(line: 16, column: 42, scope: !4988)
!4995 = !DILocation(line: 16, column: 53, scope: !4988)
!4996 = !DILocation(line: 18, column: 28, scope: !4988)
!4997 = !DILocation(line: 18, column: 10, scope: !4988)
!4998 = !DILocation(line: 18, column: 2, scope: !4988)
!4999 = !DILocation(line: 19, column: 1, scope: !4988)
!5000 = !DISubprogram(name: "iounmap", scope: !5001, file: !5001, line: 199, type: !5002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5001 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!5002 = !DISubroutineType(types: !5003)
!5003 = !{null, !5004}
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5006 = distinct !DISubprogram(name: "devm_ioremap", scope: !3, file: !3, line: 69, type: !5007, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5009)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!165, !262, !194, !194}
!5009 = !{!5010, !5011, !5012}
!5010 = !DILocalVariable(name: "dev", arg: 1, scope: !5006, file: !3, line: 69, type: !262)
!5011 = !DILocalVariable(name: "offset", arg: 2, scope: !5006, file: !3, line: 69, type: !194)
!5012 = !DILocalVariable(name: "size", arg: 3, scope: !5006, file: !3, line: 70, type: !194)
!5013 = !DILocation(line: 69, column: 43, scope: !5006)
!5014 = !DILocation(line: 69, column: 64, scope: !5006)
!5015 = !DILocation(line: 70, column: 23, scope: !5006)
!5016 = !DILocation(line: 72, column: 24, scope: !5006)
!5017 = !DILocation(line: 72, column: 29, scope: !5006)
!5018 = !DILocation(line: 72, column: 37, scope: !5006)
!5019 = !DILocation(line: 72, column: 9, scope: !5006)
!5020 = !DILocation(line: 72, column: 2, scope: !5006)
!5021 = distinct !DISubprogram(name: "__devm_ioremap", scope: !3, file: !3, line: 26, type: !5022, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5024)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!165, !262, !194, !194, !147}
!5024 = !{!5025, !5026, !5027, !5028, !5029, !5030}
!5025 = !DILocalVariable(name: "dev", arg: 1, scope: !5021, file: !3, line: 26, type: !262)
!5026 = !DILocalVariable(name: "offset", arg: 2, scope: !5021, file: !3, line: 26, type: !194)
!5027 = !DILocalVariable(name: "size", arg: 3, scope: !5021, file: !3, line: 27, type: !194)
!5028 = !DILocalVariable(name: "type", arg: 4, scope: !5021, file: !3, line: 28, type: !147)
!5029 = !DILocalVariable(name: "ptr", scope: !5021, file: !3, line: 30, type: !164)
!5030 = !DILocalVariable(name: "addr", scope: !5021, file: !3, line: 30, type: !165)
!5031 = !DILocation(line: 26, column: 52, scope: !5021)
!5032 = !DILocation(line: 26, column: 73, scope: !5021)
!5033 = !DILocation(line: 27, column: 25, scope: !5021)
!5034 = !DILocation(line: 28, column: 32, scope: !5021)
!5035 = !DILocation(line: 30, column: 2, scope: !5021)
!5036 = !DILocation(line: 30, column: 17, scope: !5021)
!5037 = !DILocation(line: 30, column: 23, scope: !5021)
!5038 = !DILocation(line: 32, column: 8, scope: !5021)
!5039 = !DILocation(line: 32, column: 6, scope: !5021)
!5040 = !DILocation(line: 34, column: 7, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 34, column: 6)
!5042 = !DILocation(line: 34, column: 6, scope: !5021)
!5043 = !DILocation(line: 35, column: 3, scope: !5041)
!5044 = !DILocation(line: 37, column: 10, scope: !5021)
!5045 = !DILocation(line: 37, column: 2, scope: !5021)
!5046 = !DILocation(line: 39, column: 18, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 37, column: 16)
!5048 = !DILocation(line: 39, column: 26, scope: !5047)
!5049 = !DILocation(line: 39, column: 10, scope: !5047)
!5050 = !DILocation(line: 39, column: 8, scope: !5047)
!5051 = !DILocation(line: 40, column: 3, scope: !5047)
!5052 = !DILocation(line: 42, column: 21, scope: !5047)
!5053 = !DILocation(line: 42, column: 29, scope: !5047)
!5054 = !DILocation(line: 42, column: 10, scope: !5047)
!5055 = !DILocation(line: 42, column: 8, scope: !5047)
!5056 = !DILocation(line: 43, column: 3, scope: !5047)
!5057 = !DILocation(line: 45, column: 21, scope: !5047)
!5058 = !DILocation(line: 45, column: 29, scope: !5047)
!5059 = !DILocation(line: 45, column: 10, scope: !5047)
!5060 = !DILocation(line: 45, column: 8, scope: !5047)
!5061 = !DILocation(line: 46, column: 3, scope: !5047)
!5062 = !DILocation(line: 48, column: 21, scope: !5047)
!5063 = !DILocation(line: 48, column: 29, scope: !5047)
!5064 = !DILocation(line: 48, column: 10, scope: !5047)
!5065 = !DILocation(line: 48, column: 8, scope: !5047)
!5066 = !DILocation(line: 49, column: 3, scope: !5047)
!5067 = !DILocation(line: 52, column: 6, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 52, column: 6)
!5069 = !DILocation(line: 52, column: 6, scope: !5021)
!5070 = !DILocation(line: 53, column: 10, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 52, column: 12)
!5072 = !DILocation(line: 53, column: 4, scope: !5071)
!5073 = !DILocation(line: 53, column: 8, scope: !5071)
!5074 = !DILocation(line: 54, column: 14, scope: !5071)
!5075 = !DILocation(line: 54, column: 19, scope: !5071)
!5076 = !DILocation(line: 54, column: 3, scope: !5071)
!5077 = !DILocation(line: 55, column: 2, scope: !5071)
!5078 = !DILocation(line: 56, column: 15, scope: !5068)
!5079 = !DILocation(line: 56, column: 3, scope: !5068)
!5080 = !DILocation(line: 58, column: 9, scope: !5021)
!5081 = !DILocation(line: 58, column: 2, scope: !5021)
!5082 = !DILocation(line: 59, column: 1, scope: !5021)
!5083 = distinct !DISubprogram(name: "devm_ioremap_uc", scope: !3, file: !3, line: 84, type: !5007, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5084)
!5084 = !{!5085, !5086, !5087}
!5085 = !DILocalVariable(name: "dev", arg: 1, scope: !5083, file: !3, line: 84, type: !262)
!5086 = !DILocalVariable(name: "offset", arg: 2, scope: !5083, file: !3, line: 84, type: !194)
!5087 = !DILocalVariable(name: "size", arg: 3, scope: !5083, file: !3, line: 85, type: !194)
!5088 = !DILocation(line: 84, column: 46, scope: !5083)
!5089 = !DILocation(line: 84, column: 67, scope: !5083)
!5090 = !DILocation(line: 85, column: 26, scope: !5083)
!5091 = !DILocation(line: 87, column: 24, scope: !5083)
!5092 = !DILocation(line: 87, column: 29, scope: !5083)
!5093 = !DILocation(line: 87, column: 37, scope: !5083)
!5094 = !DILocation(line: 87, column: 9, scope: !5083)
!5095 = !DILocation(line: 87, column: 2, scope: !5083)
!5096 = distinct !DISubprogram(name: "devm_ioremap_wc", scope: !3, file: !3, line: 99, type: !5007, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5097)
!5097 = !{!5098, !5099, !5100}
!5098 = !DILocalVariable(name: "dev", arg: 1, scope: !5096, file: !3, line: 99, type: !262)
!5099 = !DILocalVariable(name: "offset", arg: 2, scope: !5096, file: !3, line: 99, type: !194)
!5100 = !DILocalVariable(name: "size", arg: 3, scope: !5096, file: !3, line: 100, type: !194)
!5101 = !DILocation(line: 99, column: 46, scope: !5096)
!5102 = !DILocation(line: 99, column: 67, scope: !5096)
!5103 = !DILocation(line: 100, column: 26, scope: !5096)
!5104 = !DILocation(line: 102, column: 24, scope: !5096)
!5105 = !DILocation(line: 102, column: 29, scope: !5096)
!5106 = !DILocation(line: 102, column: 37, scope: !5096)
!5107 = !DILocation(line: 102, column: 9, scope: !5096)
!5108 = !DILocation(line: 102, column: 2, scope: !5096)
!5109 = distinct !DISubprogram(name: "devm_iounmap", scope: !3, file: !3, line: 113, type: !4989, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5110)
!5110 = !{!5111, !5112, !5113, !5115}
!5111 = !DILocalVariable(name: "dev", arg: 1, scope: !5109, file: !3, line: 113, type: !262)
!5112 = !DILocalVariable(name: "addr", arg: 2, scope: !5109, file: !3, line: 113, type: !165)
!5113 = !DILocalVariable(name: "__ret_warn_on", scope: !5114, file: !3, line: 115, type: !109)
!5114 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 115, column: 2)
!5115 = !DILocalVariable(name: "__flags", scope: !5116, file: !3, line: 115, type: !109)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 115, column: 2)
!5117 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 115, column: 2)
!5118 = !DILocation(line: 113, column: 34, scope: !5109)
!5119 = !DILocation(line: 113, column: 53, scope: !5109)
!5120 = !DILocation(line: 115, column: 2, scope: !5114)
!5121 = !DILocation(line: 115, column: 2, scope: !5117)
!5122 = !DILocation(line: 115, column: 2, scope: !5116)
!5123 = !DILocation(line: 115, column: 2, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 115, column: 2)
!5125 = !DILocation(line: 115, column: 2, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 115, column: 2)
!5127 = !{i64 2155121877, i64 2155121906, i64 2155121952, i64 2155122010, i64 2155122064, i64 2155122118, i64 2155122173, i64 2155122204, i64 2155122512, i64 2155122518, i64 2155122565, i64 2155122588, i64 2155122614}
!5128 = !DILocation(line: 115, column: 2, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 115, column: 2)
!5130 = !DILocation(line: 115, column: 2, scope: !5109)
!5131 = !DILocation(line: 117, column: 10, scope: !5109)
!5132 = !DILocation(line: 117, column: 2, scope: !5109)
!5133 = !DILocation(line: 118, column: 1, scope: !5109)
!5134 = !DISubprogram(name: "devres_destroy", scope: !94, file: !94, line: 293, type: !5135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!109, !262, !5137, !5139, !165}
!5137 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !94, line: 271, baseType: !5138)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!5139 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !94, line: 272, baseType: !5140)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!109, !262, !165, !165}
!5143 = distinct !DISubprogram(name: "devm_ioremap_match", scope: !3, file: !3, line: 21, type: !5141, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5144)
!5144 = !{!5145, !5146, !5147}
!5145 = !DILocalVariable(name: "dev", arg: 1, scope: !5143, file: !3, line: 21, type: !262)
!5146 = !DILocalVariable(name: "res", arg: 2, scope: !5143, file: !3, line: 21, type: !165)
!5147 = !DILocalVariable(name: "match_data", arg: 3, scope: !5143, file: !3, line: 21, type: !165)
!5148 = !DILocation(line: 21, column: 46, scope: !5143)
!5149 = !DILocation(line: 21, column: 57, scope: !5143)
!5150 = !DILocation(line: 21, column: 68, scope: !5143)
!5151 = !DILocation(line: 23, column: 19, scope: !5143)
!5152 = !DILocation(line: 23, column: 9, scope: !5143)
!5153 = !DILocation(line: 23, column: 26, scope: !5143)
!5154 = !DILocation(line: 23, column: 23, scope: !5143)
!5155 = !DILocation(line: 23, column: 2, scope: !5143)
!5156 = distinct !DISubprogram(name: "devm_ioremap_resource", scope: !3, file: !3, line: 185, type: !5157, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5161)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!165, !262, !5159}
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!5161 = !{!5162, !5163}
!5162 = !DILocalVariable(name: "dev", arg: 1, scope: !5156, file: !3, line: 185, type: !262)
!5163 = !DILocalVariable(name: "res", arg: 2, scope: !5156, file: !3, line: 186, type: !5159)
!5164 = !DILocation(line: 185, column: 52, scope: !5156)
!5165 = !DILocation(line: 186, column: 32, scope: !5156)
!5166 = !DILocation(line: 188, column: 33, scope: !5156)
!5167 = !DILocation(line: 188, column: 38, scope: !5156)
!5168 = !DILocation(line: 188, column: 9, scope: !5156)
!5169 = !DILocation(line: 188, column: 2, scope: !5156)
!5170 = distinct !DISubprogram(name: "__devm_ioremap_resource", scope: !3, file: !3, line: 122, type: !5171, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5173)
!5171 = !DISubroutineType(types: !5172)
!5172 = !{!165, !262, !5159, !147}
!5173 = !{!5174, !5175, !5176, !5177, !5178, !5179}
!5174 = !DILocalVariable(name: "dev", arg: 1, scope: !5170, file: !3, line: 122, type: !262)
!5175 = !DILocalVariable(name: "res", arg: 2, scope: !5170, file: !3, line: 122, type: !5159)
!5176 = !DILocalVariable(name: "type", arg: 3, scope: !5170, file: !3, line: 123, type: !147)
!5177 = !DILocalVariable(name: "size", scope: !5170, file: !3, line: 125, type: !194)
!5178 = !DILocalVariable(name: "dest_ptr", scope: !5170, file: !3, line: 126, type: !165)
!5179 = !DILocalVariable(name: "pretty_name", scope: !5170, file: !3, line: 127, type: !345)
!5180 = !DILocation(line: 122, column: 40, scope: !5170)
!5181 = !DILocation(line: 122, column: 68, scope: !5170)
!5182 = !DILocation(line: 123, column: 27, scope: !5170)
!5183 = !DILocation(line: 125, column: 2, scope: !5170)
!5184 = !DILocation(line: 125, column: 18, scope: !5170)
!5185 = !DILocation(line: 126, column: 2, scope: !5170)
!5186 = !DILocation(line: 126, column: 16, scope: !5170)
!5187 = !DILocation(line: 127, column: 2, scope: !5170)
!5188 = !DILocation(line: 127, column: 8, scope: !5170)
!5189 = !DILocation(line: 129, column: 2, scope: !5170)
!5190 = !DILocation(line: 129, column: 2, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 129, column: 2)
!5192 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 129, column: 2)
!5193 = !DILocation(line: 129, column: 2, scope: !5192)
!5194 = !DILocation(line: 129, column: 2, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 129, column: 2)
!5196 = !DILocation(line: 129, column: 2, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 129, column: 2)
!5198 = !DILocation(line: 129, column: 2, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 129, column: 2)
!5200 = !{i64 2155124759, i64 2155124788, i64 2155124834, i64 2155124892, i64 2155124946, i64 2155125000, i64 2155125055, i64 2155125086}
!5201 = !DILocation(line: 131, column: 7, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 131, column: 6)
!5203 = !DILocation(line: 131, column: 11, scope: !5202)
!5204 = !DILocation(line: 131, column: 28, scope: !5202)
!5205 = !DILocation(line: 131, column: 14, scope: !5202)
!5206 = !DILocation(line: 131, column: 33, scope: !5202)
!5207 = !DILocation(line: 131, column: 6, scope: !5170)
!5208 = !DILocation(line: 132, column: 3, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 132, column: 3)
!5210 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 131, column: 52)
!5211 = !DILocation(line: 132, column: 3, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 132, column: 3)
!5213 = !DILocation(line: 133, column: 10, scope: !5210)
!5214 = !DILocation(line: 133, column: 3, scope: !5210)
!5215 = !DILocation(line: 136, column: 6, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 136, column: 6)
!5217 = !DILocation(line: 136, column: 11, scope: !5216)
!5218 = !DILocation(line: 136, column: 27, scope: !5216)
!5219 = !DILocation(line: 136, column: 30, scope: !5216)
!5220 = !DILocation(line: 136, column: 35, scope: !5216)
!5221 = !DILocation(line: 136, column: 41, scope: !5216)
!5222 = !DILocation(line: 136, column: 6, scope: !5170)
!5223 = !DILocation(line: 137, column: 8, scope: !5216)
!5224 = !DILocation(line: 137, column: 3, scope: !5216)
!5225 = !DILocation(line: 139, column: 23, scope: !5170)
!5226 = !DILocation(line: 139, column: 9, scope: !5170)
!5227 = !DILocation(line: 139, column: 7, scope: !5170)
!5228 = !DILocation(line: 141, column: 6, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 141, column: 6)
!5230 = !DILocation(line: 141, column: 11, scope: !5229)
!5231 = !DILocation(line: 141, column: 6, scope: !5170)
!5232 = !DILocation(line: 142, column: 32, scope: !5229)
!5233 = !DILocation(line: 143, column: 20, scope: !5229)
!5234 = !DILocation(line: 143, column: 11, scope: !5229)
!5235 = !DILocation(line: 143, column: 26, scope: !5229)
!5236 = !DILocation(line: 143, column: 31, scope: !5229)
!5237 = !DILocation(line: 142, column: 17, scope: !5229)
!5238 = !DILocation(line: 142, column: 15, scope: !5229)
!5239 = !DILocation(line: 142, column: 3, scope: !5229)
!5240 = !DILocation(line: 145, column: 30, scope: !5229)
!5241 = !DILocation(line: 145, column: 44, scope: !5229)
!5242 = !DILocation(line: 145, column: 35, scope: !5229)
!5243 = !DILocation(line: 145, column: 17, scope: !5229)
!5244 = !DILocation(line: 145, column: 15, scope: !5229)
!5245 = !DILocation(line: 146, column: 7, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 146, column: 6)
!5247 = !DILocation(line: 146, column: 6, scope: !5170)
!5248 = !DILocation(line: 147, column: 3, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 147, column: 3)
!5250 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 146, column: 20)
!5251 = !DILocation(line: 147, column: 3, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 147, column: 3)
!5253 = !DILocation(line: 148, column: 10, scope: !5250)
!5254 = !DILocation(line: 148, column: 3, scope: !5250)
!5255 = !DILocation(line: 151, column: 7, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 151, column: 6)
!5257 = !DILocation(line: 151, column: 6, scope: !5170)
!5258 = !DILocation(line: 152, column: 3, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 152, column: 3)
!5260 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 151, column: 68)
!5261 = !DILocation(line: 152, column: 3, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 152, column: 3)
!5263 = !DILocation(line: 153, column: 10, scope: !5260)
!5264 = !DILocation(line: 153, column: 3, scope: !5260)
!5265 = !DILocation(line: 156, column: 28, scope: !5170)
!5266 = !DILocation(line: 156, column: 33, scope: !5170)
!5267 = !DILocation(line: 156, column: 38, scope: !5170)
!5268 = !DILocation(line: 156, column: 45, scope: !5170)
!5269 = !DILocation(line: 156, column: 51, scope: !5170)
!5270 = !DILocation(line: 156, column: 13, scope: !5170)
!5271 = !DILocation(line: 156, column: 11, scope: !5170)
!5272 = !DILocation(line: 157, column: 7, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 157, column: 6)
!5274 = !DILocation(line: 157, column: 6, scope: !5170)
!5275 = !DILocation(line: 158, column: 3, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 158, column: 3)
!5277 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 157, column: 17)
!5278 = !DILocation(line: 158, column: 3, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 158, column: 3)
!5280 = !DILocation(line: 159, column: 3, scope: !5277)
!5281 = !DILocation(line: 160, column: 14, scope: !5277)
!5282 = !DILocation(line: 160, column: 12, scope: !5277)
!5283 = !DILocation(line: 161, column: 2, scope: !5277)
!5284 = !DILocation(line: 163, column: 9, scope: !5170)
!5285 = !DILocation(line: 163, column: 2, scope: !5170)
!5286 = !DILocation(line: 164, column: 1, scope: !5170)
!5287 = distinct !DISubprogram(name: "devm_ioremap_resource_wc", scope: !3, file: !3, line: 201, type: !5157, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5288)
!5288 = !{!5289, !5290}
!5289 = !DILocalVariable(name: "dev", arg: 1, scope: !5287, file: !3, line: 201, type: !262)
!5290 = !DILocalVariable(name: "res", arg: 2, scope: !5287, file: !3, line: 202, type: !5159)
!5291 = !DILocation(line: 201, column: 55, scope: !5287)
!5292 = !DILocation(line: 202, column: 35, scope: !5287)
!5293 = !DILocation(line: 204, column: 33, scope: !5287)
!5294 = !DILocation(line: 204, column: 38, scope: !5287)
!5295 = !DILocation(line: 204, column: 9, scope: !5287)
!5296 = !DILocation(line: 204, column: 2, scope: !5287)
!5297 = distinct !DISubprogram(name: "devm_of_iomap", scope: !3, file: !3, line: 237, type: !5298, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5301)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!165, !262, !4482, !109, !5300}
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!5301 = !{!5302, !5303, !5304, !5305, !5306}
!5302 = !DILocalVariable(name: "dev", arg: 1, scope: !5297, file: !3, line: 237, type: !262)
!5303 = !DILocalVariable(name: "node", arg: 2, scope: !5297, file: !3, line: 237, type: !4482)
!5304 = !DILocalVariable(name: "index", arg: 3, scope: !5297, file: !3, line: 237, type: !109)
!5305 = !DILocalVariable(name: "size", arg: 4, scope: !5297, file: !3, line: 238, type: !5300)
!5306 = !DILocalVariable(name: "res", scope: !5297, file: !3, line: 240, type: !190)
!5307 = !DILocation(line: 237, column: 44, scope: !5297)
!5308 = !DILocation(line: 237, column: 69, scope: !5297)
!5309 = !DILocation(line: 237, column: 79, scope: !5297)
!5310 = !DILocation(line: 238, column: 25, scope: !5297)
!5311 = !DILocation(line: 240, column: 2, scope: !5297)
!5312 = !DILocation(line: 240, column: 18, scope: !5297)
!5313 = !DILocation(line: 242, column: 29, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 242, column: 6)
!5315 = !DILocation(line: 242, column: 35, scope: !5314)
!5316 = !DILocation(line: 242, column: 6, scope: !5314)
!5317 = !DILocation(line: 242, column: 6, scope: !5297)
!5318 = !DILocation(line: 243, column: 10, scope: !5314)
!5319 = !DILocation(line: 243, column: 3, scope: !5314)
!5320 = !DILocation(line: 244, column: 6, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 244, column: 6)
!5322 = !DILocation(line: 244, column: 6, scope: !5297)
!5323 = !DILocation(line: 245, column: 11, scope: !5321)
!5324 = !DILocation(line: 245, column: 4, scope: !5321)
!5325 = !DILocation(line: 245, column: 9, scope: !5321)
!5326 = !DILocation(line: 245, column: 3, scope: !5321)
!5327 = !DILocation(line: 246, column: 31, scope: !5297)
!5328 = !DILocation(line: 246, column: 9, scope: !5297)
!5329 = !DILocation(line: 246, column: 2, scope: !5297)
!5330 = !DILocation(line: 247, column: 1, scope: !5297)
!5331 = distinct !DISubprogram(name: "of_address_to_resource", scope: !5332, file: !5332, line: 165, type: !5333, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5335)
!5332 = !DIFile(filename: "./include/linux/of_address.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4b2b22f3c2af74eaa25a1b5f2f92c20a")
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!109, !4482, !109, !189}
!5335 = !{!5336, !5337, !5338}
!5336 = !DILocalVariable(name: "dev", arg: 1, scope: !5331, file: !5332, line: 165, type: !4482)
!5337 = !DILocalVariable(name: "index", arg: 2, scope: !5331, file: !5332, line: 165, type: !109)
!5338 = !DILocalVariable(name: "r", arg: 3, scope: !5331, file: !5332, line: 166, type: !189)
!5339 = !DILocation(line: 165, column: 62, scope: !5331)
!5340 = !DILocation(line: 165, column: 71, scope: !5331)
!5341 = !DILocation(line: 166, column: 24, scope: !5331)
!5342 = !DILocation(line: 168, column: 2, scope: !5331)
!5343 = distinct !DISubprogram(name: "ERR_PTR", scope: !5344, file: !5344, line: 39, type: !5345, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5347)
!5344 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!165, !381}
!5347 = !{!5348}
!5348 = !DILocalVariable(name: "error", arg: 1, scope: !5343, file: !5344, line: 39, type: !381)
!5349 = !DILocation(line: 39, column: 48, scope: !5343)
!5350 = !DILocation(line: 41, column: 18, scope: !5343)
!5351 = !DILocation(line: 41, column: 9, scope: !5343)
!5352 = !DILocation(line: 41, column: 2, scope: !5343)
!5353 = distinct !DISubprogram(name: "resource_size", scope: !191, file: !191, line: 219, type: !5354, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5356)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!194, !5159}
!5356 = !{!5357}
!5357 = !DILocalVariable(name: "res", arg: 1, scope: !5353, file: !191, line: 219, type: !5159)
!5358 = !DILocation(line: 219, column: 68, scope: !5353)
!5359 = !DILocation(line: 221, column: 9, scope: !5353)
!5360 = !DILocation(line: 221, column: 14, scope: !5353)
!5361 = !DILocation(line: 221, column: 20, scope: !5353)
!5362 = !DILocation(line: 221, column: 25, scope: !5353)
!5363 = !DILocation(line: 221, column: 18, scope: !5353)
!5364 = !DILocation(line: 221, column: 31, scope: !5353)
!5365 = !DILocation(line: 221, column: 2, scope: !5353)
!5366 = distinct !DISubprogram(name: "devm_ioport_map", scope: !3, file: !3, line: 276, type: !5367, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5369)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!165, !262, !207, !7}
!5369 = !{!5370, !5371, !5372, !5373, !5374}
!5370 = !DILocalVariable(name: "dev", arg: 1, scope: !5366, file: !3, line: 276, type: !262)
!5371 = !DILocalVariable(name: "port", arg: 2, scope: !5366, file: !3, line: 276, type: !207)
!5372 = !DILocalVariable(name: "nr", arg: 3, scope: !5366, file: !3, line: 277, type: !7)
!5373 = !DILocalVariable(name: "ptr", scope: !5366, file: !3, line: 279, type: !164)
!5374 = !DILocalVariable(name: "addr", scope: !5366, file: !3, line: 279, type: !165)
!5375 = !DILocation(line: 276, column: 46, scope: !5366)
!5376 = !DILocation(line: 276, column: 65, scope: !5366)
!5377 = !DILocation(line: 277, column: 24, scope: !5366)
!5378 = !DILocation(line: 279, column: 2, scope: !5366)
!5379 = !DILocation(line: 279, column: 17, scope: !5366)
!5380 = !DILocation(line: 279, column: 23, scope: !5366)
!5381 = !DILocation(line: 281, column: 8, scope: !5366)
!5382 = !DILocation(line: 281, column: 6, scope: !5366)
!5383 = !DILocation(line: 283, column: 7, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 283, column: 6)
!5385 = !DILocation(line: 283, column: 6, scope: !5366)
!5386 = !DILocation(line: 284, column: 3, scope: !5384)
!5387 = !DILocation(line: 286, column: 20, scope: !5366)
!5388 = !DILocation(line: 286, column: 26, scope: !5366)
!5389 = !DILocation(line: 286, column: 9, scope: !5366)
!5390 = !DILocation(line: 286, column: 7, scope: !5366)
!5391 = !DILocation(line: 287, column: 6, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 287, column: 6)
!5393 = !DILocation(line: 287, column: 6, scope: !5366)
!5394 = !DILocation(line: 288, column: 10, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 287, column: 12)
!5396 = !DILocation(line: 288, column: 4, scope: !5395)
!5397 = !DILocation(line: 288, column: 8, scope: !5395)
!5398 = !DILocation(line: 289, column: 14, scope: !5395)
!5399 = !DILocation(line: 289, column: 19, scope: !5395)
!5400 = !DILocation(line: 289, column: 3, scope: !5395)
!5401 = !DILocation(line: 290, column: 2, scope: !5395)
!5402 = !DILocation(line: 291, column: 15, scope: !5392)
!5403 = !DILocation(line: 291, column: 3, scope: !5392)
!5404 = !DILocation(line: 293, column: 9, scope: !5366)
!5405 = !DILocation(line: 293, column: 2, scope: !5366)
!5406 = !DILocation(line: 294, column: 1, scope: !5366)
!5407 = !DISubprogram(name: "__devres_alloc_node", scope: !94, file: !94, line: 274, type: !5408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!165, !5137, !392, !166, !109, !203}
!5410 = distinct !DISubprogram(name: "devm_ioport_map_release", scope: !3, file: !3, line: 254, type: !4989, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5411)
!5411 = !{!5412, !5413}
!5412 = !DILocalVariable(name: "dev", arg: 1, scope: !5410, file: !3, line: 254, type: !262)
!5413 = !DILocalVariable(name: "res", arg: 2, scope: !5410, file: !3, line: 254, type: !165)
!5414 = !DILocation(line: 254, column: 52, scope: !5410)
!5415 = !DILocation(line: 254, column: 63, scope: !5410)
!5416 = !DILocation(line: 256, column: 33, scope: !5410)
!5417 = !DILocation(line: 256, column: 15, scope: !5410)
!5418 = !DILocation(line: 256, column: 2, scope: !5410)
!5419 = !DILocation(line: 257, column: 1, scope: !5410)
!5420 = distinct !DISubprogram(name: "dev_to_node", scope: !94, file: !94, line: 882, type: !4220, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5421)
!5421 = !{!5422}
!5422 = !DILocalVariable(name: "dev", arg: 1, scope: !5420, file: !94, line: 882, type: !262)
!5423 = !DILocation(line: 882, column: 46, scope: !5420)
!5424 = !DILocation(line: 884, column: 9, scope: !5420)
!5425 = !DILocation(line: 884, column: 14, scope: !5420)
!5426 = !DILocation(line: 884, column: 2, scope: !5420)
!5427 = !DISubprogram(name: "ioport_map", scope: !5428, file: !5428, line: 1127, type: !5429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5428 = !DIFile(filename: "./include/asm-generic/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a40aa430df7a15f3005a1b068b1f645")
!5429 = !DISubroutineType(types: !5430)
!5430 = !{!165, !207, !7}
!5431 = !DISubprogram(name: "devres_add", scope: !94, file: !94, line: 286, type: !4989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5432 = !DISubprogram(name: "devres_free", scope: !94, file: !94, line: 285, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5433 = distinct !DISubprogram(name: "devm_ioport_unmap", scope: !3, file: !3, line: 305, type: !4989, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5434)
!5434 = !{!5435, !5436, !5437, !5439}
!5435 = !DILocalVariable(name: "dev", arg: 1, scope: !5433, file: !3, line: 305, type: !262)
!5436 = !DILocalVariable(name: "addr", arg: 2, scope: !5433, file: !3, line: 305, type: !165)
!5437 = !DILocalVariable(name: "__ret_warn_on", scope: !5438, file: !3, line: 308, type: !109)
!5438 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 308, column: 2)
!5439 = !DILocalVariable(name: "__flags", scope: !5440, file: !3, line: 308, type: !109)
!5440 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 308, column: 2)
!5441 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 308, column: 2)
!5442 = !DILocation(line: 305, column: 39, scope: !5433)
!5443 = !DILocation(line: 305, column: 58, scope: !5433)
!5444 = !DILocation(line: 307, column: 15, scope: !5433)
!5445 = !DILocation(line: 307, column: 2, scope: !5433)
!5446 = !DILocation(line: 308, column: 2, scope: !5438)
!5447 = !DILocation(line: 308, column: 2, scope: !5441)
!5448 = !DILocation(line: 308, column: 2, scope: !5440)
!5449 = !DILocation(line: 308, column: 2, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 308, column: 2)
!5451 = !DILocation(line: 308, column: 2, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 308, column: 2)
!5453 = !{i64 2155134964, i64 2155134993, i64 2155135039, i64 2155135097, i64 2155135151, i64 2155135205, i64 2155135260, i64 2155135291, i64 2155135599, i64 2155135605, i64 2155135652, i64 2155135675, i64 2155135701}
!5454 = !DILocation(line: 308, column: 2, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 308, column: 2)
!5456 = !DILocation(line: 308, column: 2, scope: !5433)
!5457 = !DILocation(line: 310, column: 1, scope: !5433)
!5458 = !DISubprogram(name: "ioport_unmap", scope: !5428, file: !5428, line: 1128, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5459 = distinct !DISubprogram(name: "devm_ioport_map_match", scope: !3, file: !3, line: 259, type: !5141, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5460)
!5460 = !{!5461, !5462, !5463}
!5461 = !DILocalVariable(name: "dev", arg: 1, scope: !5459, file: !3, line: 259, type: !262)
!5462 = !DILocalVariable(name: "res", arg: 2, scope: !5459, file: !3, line: 259, type: !165)
!5463 = !DILocalVariable(name: "match_data", arg: 3, scope: !5459, file: !3, line: 260, type: !165)
!5464 = !DILocation(line: 259, column: 49, scope: !5459)
!5465 = !DILocation(line: 259, column: 60, scope: !5459)
!5466 = !DILocation(line: 260, column: 12, scope: !5459)
!5467 = !DILocation(line: 262, column: 19, scope: !5459)
!5468 = !DILocation(line: 262, column: 9, scope: !5459)
!5469 = !DILocation(line: 262, column: 26, scope: !5459)
!5470 = !DILocation(line: 262, column: 23, scope: !5459)
!5471 = !DILocation(line: 262, column: 2, scope: !5459)
!5472 = distinct !DISubprogram(name: "pcim_iomap_table", scope: !3, file: !3, line: 348, type: !5473, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5477)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!5475, !168}
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!5477 = !{!5478, !5479, !5485}
!5478 = !DILocalVariable(name: "pdev", arg: 1, scope: !5472, file: !3, line: 348, type: !168)
!5479 = !DILocalVariable(name: "dr", scope: !5472, file: !3, line: 350, type: !5480)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcim_iomap_devres", file: !3, line: 320, size: 384, elements: !5482)
!5482 = !{!5483}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !5481, file: !3, line: 321, baseType: !5484, size: 384)
!5484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 384, elements: !1912)
!5485 = !DILocalVariable(name: "new_dr", scope: !5472, file: !3, line: 350, type: !5480)
!5486 = !DILocation(line: 348, column: 56, scope: !5472)
!5487 = !DILocation(line: 350, column: 2, scope: !5472)
!5488 = !DILocation(line: 350, column: 28, scope: !5472)
!5489 = !DILocation(line: 350, column: 33, scope: !5472)
!5490 = !DILocation(line: 352, column: 20, scope: !5472)
!5491 = !DILocation(line: 352, column: 26, scope: !5472)
!5492 = !DILocation(line: 352, column: 7, scope: !5472)
!5493 = !DILocation(line: 352, column: 5, scope: !5472)
!5494 = !DILocation(line: 353, column: 6, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 353, column: 6)
!5496 = !DILocation(line: 353, column: 6, scope: !5472)
!5497 = !DILocation(line: 354, column: 10, scope: !5495)
!5498 = !DILocation(line: 354, column: 14, scope: !5495)
!5499 = !DILocation(line: 354, column: 3, scope: !5495)
!5500 = !DILocation(line: 356, column: 11, scope: !5472)
!5501 = !DILocation(line: 356, column: 9, scope: !5472)
!5502 = !DILocation(line: 358, column: 7, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 358, column: 6)
!5504 = !DILocation(line: 358, column: 6, scope: !5472)
!5505 = !DILocation(line: 359, column: 3, scope: !5503)
!5506 = !DILocation(line: 360, column: 19, scope: !5472)
!5507 = !DILocation(line: 360, column: 25, scope: !5472)
!5508 = !DILocation(line: 360, column: 30, scope: !5472)
!5509 = !DILocation(line: 360, column: 7, scope: !5472)
!5510 = !DILocation(line: 360, column: 5, scope: !5472)
!5511 = !DILocation(line: 361, column: 9, scope: !5472)
!5512 = !DILocation(line: 361, column: 13, scope: !5472)
!5513 = !DILocation(line: 361, column: 2, scope: !5472)
!5514 = !DILocation(line: 362, column: 1, scope: !5472)
!5515 = !DISubprogram(name: "devres_find", scope: !94, file: !94, line: 287, type: !5516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!165, !262, !5137, !5139, !165}
!5518 = distinct !DISubprogram(name: "pcim_iomap_release", scope: !3, file: !3, line: 324, type: !4989, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5519)
!5519 = !{!5520, !5521, !5522, !5523, !5525, !5526}
!5520 = !DILocalVariable(name: "gendev", arg: 1, scope: !5518, file: !3, line: 324, type: !262)
!5521 = !DILocalVariable(name: "res", arg: 2, scope: !5518, file: !3, line: 324, type: !165)
!5522 = !DILocalVariable(name: "dev", scope: !5518, file: !3, line: 326, type: !168)
!5523 = !DILocalVariable(name: "__mptr", scope: !5524, file: !3, line: 326, type: !165)
!5524 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 326, column: 24)
!5525 = !DILocalVariable(name: "this", scope: !5518, file: !3, line: 327, type: !5480)
!5526 = !DILocalVariable(name: "i", scope: !5518, file: !3, line: 328, type: !109)
!5527 = !DILocation(line: 324, column: 47, scope: !5518)
!5528 = !DILocation(line: 324, column: 61, scope: !5518)
!5529 = !DILocation(line: 326, column: 2, scope: !5518)
!5530 = !DILocation(line: 326, column: 18, scope: !5518)
!5531 = !DILocation(line: 326, column: 24, scope: !5524)
!5532 = !DILocation(line: 326, column: 24, scope: !5518)
!5533 = !DILocation(line: 327, column: 2, scope: !5518)
!5534 = !DILocation(line: 327, column: 28, scope: !5518)
!5535 = !DILocation(line: 327, column: 35, scope: !5518)
!5536 = !DILocation(line: 328, column: 2, scope: !5518)
!5537 = !DILocation(line: 328, column: 6, scope: !5518)
!5538 = !DILocation(line: 330, column: 9, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 330, column: 2)
!5540 = !DILocation(line: 330, column: 7, scope: !5539)
!5541 = !DILocation(line: 330, column: 14, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 330, column: 2)
!5543 = !DILocation(line: 330, column: 16, scope: !5542)
!5544 = !DILocation(line: 330, column: 2, scope: !5539)
!5545 = !DILocation(line: 331, column: 7, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 331, column: 7)
!5547 = !DILocation(line: 331, column: 13, scope: !5546)
!5548 = !DILocation(line: 331, column: 19, scope: !5546)
!5549 = !DILocation(line: 331, column: 7, scope: !5542)
!5550 = !DILocation(line: 332, column: 16, scope: !5546)
!5551 = !DILocation(line: 332, column: 21, scope: !5546)
!5552 = !DILocation(line: 332, column: 27, scope: !5546)
!5553 = !DILocation(line: 332, column: 33, scope: !5546)
!5554 = !DILocation(line: 332, column: 4, scope: !5546)
!5555 = !DILocation(line: 331, column: 20, scope: !5546)
!5556 = !DILocation(line: 330, column: 35, scope: !5542)
!5557 = !DILocation(line: 330, column: 2, scope: !5542)
!5558 = distinct !{!5558, !5544, !5559, !5560, !5561}
!5559 = !DILocation(line: 332, column: 35, scope: !5539)
!5560 = !{!"llvm.loop.mustprogress"}
!5561 = !{!"llvm.loop.unroll.disable"}
!5562 = !DILocation(line: 333, column: 1, scope: !5518)
!5563 = !DISubprogram(name: "devres_get", scope: !94, file: !94, line: 289, type: !5564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!165, !262, !165, !5139, !165}
!5566 = distinct !DISubprogram(name: "pcim_iomap", scope: !3, file: !3, line: 374, type: !5567, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5569)
!5567 = !DISubroutineType(types: !5568)
!5568 = !{!165, !168, !109, !207}
!5569 = !{!5570, !5571, !5572, !5573}
!5570 = !DILocalVariable(name: "pdev", arg: 1, scope: !5566, file: !3, line: 374, type: !168)
!5571 = !DILocalVariable(name: "bar", arg: 2, scope: !5566, file: !3, line: 374, type: !109)
!5572 = !DILocalVariable(name: "maxlen", arg: 3, scope: !5566, file: !3, line: 374, type: !207)
!5573 = !DILocalVariable(name: "tbl", scope: !5566, file: !3, line: 376, type: !164)
!5574 = !DILocation(line: 374, column: 42, scope: !5566)
!5575 = !DILocation(line: 374, column: 52, scope: !5566)
!5576 = !DILocation(line: 374, column: 71, scope: !5566)
!5577 = !DILocation(line: 376, column: 2, scope: !5566)
!5578 = !DILocation(line: 376, column: 17, scope: !5566)
!5579 = !DILocation(line: 378, column: 2, scope: !5566)
!5580 = !DILocation(line: 378, column: 2, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 378, column: 2)
!5582 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 378, column: 2)
!5583 = !DILocation(line: 378, column: 2, scope: !5582)
!5584 = !DILocation(line: 378, column: 2, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 378, column: 2)
!5586 = !DILocation(line: 378, column: 2, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 378, column: 2)
!5588 = !DILocation(line: 378, column: 2, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 378, column: 2)
!5590 = !{i64 2155145462, i64 2155145491, i64 2155145537, i64 2155145595, i64 2155145649, i64 2155145703, i64 2155145758, i64 2155145789}
!5591 = !DILocation(line: 380, column: 42, scope: !5566)
!5592 = !DILocation(line: 380, column: 25, scope: !5566)
!5593 = !DILocation(line: 380, column: 6, scope: !5566)
!5594 = !DILocation(line: 381, column: 7, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 381, column: 6)
!5596 = !DILocation(line: 381, column: 11, scope: !5595)
!5597 = !DILocation(line: 381, column: 14, scope: !5595)
!5598 = !DILocation(line: 381, column: 18, scope: !5595)
!5599 = !DILocation(line: 381, column: 6, scope: !5566)
!5600 = !DILocation(line: 382, column: 3, scope: !5595)
!5601 = !DILocation(line: 384, column: 23, scope: !5566)
!5602 = !DILocation(line: 384, column: 29, scope: !5566)
!5603 = !DILocation(line: 384, column: 34, scope: !5566)
!5604 = !DILocation(line: 384, column: 13, scope: !5566)
!5605 = !DILocation(line: 384, column: 2, scope: !5566)
!5606 = !DILocation(line: 384, column: 6, scope: !5566)
!5607 = !DILocation(line: 384, column: 11, scope: !5566)
!5608 = !DILocation(line: 385, column: 9, scope: !5566)
!5609 = !DILocation(line: 385, column: 13, scope: !5566)
!5610 = !DILocation(line: 385, column: 2, scope: !5566)
!5611 = !DILocation(line: 386, column: 1, scope: !5566)
!5612 = !DISubprogram(name: "pci_iomap", scope: !5613, file: !5613, line: 13, type: !5567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5613 = !DIFile(filename: "./include/asm-generic/pci_iomap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d9d4783b1a299a88d20563407f34fb6c")
!5614 = distinct !DISubprogram(name: "pcim_iounmap", scope: !3, file: !3, line: 396, type: !5615, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5617)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{null, !168, !165}
!5617 = !{!5618, !5619, !5620, !5621, !5622, !5624}
!5618 = !DILocalVariable(name: "pdev", arg: 1, scope: !5614, file: !3, line: 396, type: !168)
!5619 = !DILocalVariable(name: "addr", arg: 2, scope: !5614, file: !3, line: 396, type: !165)
!5620 = !DILocalVariable(name: "tbl", scope: !5614, file: !3, line: 398, type: !164)
!5621 = !DILocalVariable(name: "i", scope: !5614, file: !3, line: 399, type: !109)
!5622 = !DILocalVariable(name: "__ret_warn_on", scope: !5623, file: !3, line: 411, type: !109)
!5623 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 411, column: 2)
!5624 = !DILocalVariable(name: "__flags", scope: !5625, file: !3, line: 411, type: !109)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 411, column: 2)
!5626 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 411, column: 2)
!5627 = !DILocation(line: 396, column: 35, scope: !5614)
!5628 = !DILocation(line: 396, column: 55, scope: !5614)
!5629 = !DILocation(line: 398, column: 2, scope: !5614)
!5630 = !DILocation(line: 398, column: 17, scope: !5614)
!5631 = !DILocation(line: 399, column: 2, scope: !5614)
!5632 = !DILocation(line: 399, column: 6, scope: !5614)
!5633 = !DILocation(line: 401, column: 14, scope: !5614)
!5634 = !DILocation(line: 401, column: 20, scope: !5614)
!5635 = !DILocation(line: 401, column: 2, scope: !5614)
!5636 = !DILocation(line: 403, column: 42, scope: !5614)
!5637 = !DILocation(line: 403, column: 25, scope: !5614)
!5638 = !DILocation(line: 403, column: 6, scope: !5614)
!5639 = !DILocation(line: 404, column: 2, scope: !5614)
!5640 = !DILocation(line: 404, column: 2, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 404, column: 2)
!5642 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 404, column: 2)
!5643 = !DILocation(line: 404, column: 2, scope: !5642)
!5644 = !DILocation(line: 404, column: 2, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 404, column: 2)
!5646 = !DILocation(line: 404, column: 2, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 404, column: 2)
!5648 = !DILocation(line: 404, column: 2, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 404, column: 2)
!5650 = !{i64 2155148020, i64 2155148049, i64 2155148095, i64 2155148153, i64 2155148207, i64 2155148261, i64 2155148316, i64 2155148347}
!5651 = !DILocation(line: 406, column: 9, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 406, column: 2)
!5653 = !DILocation(line: 406, column: 7, scope: !5652)
!5654 = !DILocation(line: 406, column: 14, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 406, column: 2)
!5656 = !DILocation(line: 406, column: 16, scope: !5655)
!5657 = !DILocation(line: 406, column: 2, scope: !5652)
!5658 = !DILocation(line: 407, column: 7, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 407, column: 7)
!5660 = !DILocation(line: 407, column: 11, scope: !5659)
!5661 = !DILocation(line: 407, column: 17, scope: !5659)
!5662 = !DILocation(line: 407, column: 14, scope: !5659)
!5663 = !DILocation(line: 407, column: 7, scope: !5655)
!5664 = !DILocation(line: 408, column: 4, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 407, column: 23)
!5666 = !DILocation(line: 408, column: 8, scope: !5665)
!5667 = !DILocation(line: 408, column: 11, scope: !5665)
!5668 = !DILocation(line: 409, column: 4, scope: !5665)
!5669 = !DILocation(line: 406, column: 35, scope: !5655)
!5670 = !DILocation(line: 406, column: 2, scope: !5655)
!5671 = distinct !{!5671, !5657, !5672, !5560, !5561}
!5672 = !DILocation(line: 410, column: 3, scope: !5652)
!5673 = !DILocation(line: 411, column: 2, scope: !5623)
!5674 = !DILocation(line: 411, column: 2, scope: !5626)
!5675 = !DILocation(line: 411, column: 2, scope: !5625)
!5676 = !DILocation(line: 411, column: 2, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 411, column: 2)
!5678 = !DILocation(line: 411, column: 2, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 411, column: 2)
!5680 = !{i64 2155149254, i64 2155149283, i64 2155149329, i64 2155149387, i64 2155149441, i64 2155149495, i64 2155149550, i64 2155149581, i64 2155149889, i64 2155149895, i64 2155149942, i64 2155149965, i64 2155149991}
!5681 = !DILocation(line: 411, column: 2, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 411, column: 2)
!5683 = !DILocation(line: 411, column: 2, scope: !5614)
!5684 = !DILocation(line: 412, column: 1, scope: !5614)
!5685 = !DISubprogram(name: "pci_iounmap", scope: !5613, file: !5613, line: 21, type: !5615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5686 = distinct !DISubprogram(name: "pcim_iomap_regions", scope: !3, file: !3, line: 423, type: !5687, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5689)
!5687 = !DISubroutineType(types: !5688)
!5688 = !{!109, !168, !109, !203}
!5689 = !{!5690, !5691, !5692, !5693, !5694, !5695, !5696, !5700, !5701}
!5690 = !DILocalVariable(name: "pdev", arg: 1, scope: !5686, file: !3, line: 423, type: !168)
!5691 = !DILocalVariable(name: "mask", arg: 2, scope: !5686, file: !3, line: 423, type: !109)
!5692 = !DILocalVariable(name: "name", arg: 3, scope: !5686, file: !3, line: 423, type: !203)
!5693 = !DILocalVariable(name: "iomap", scope: !5686, file: !3, line: 425, type: !5475)
!5694 = !DILocalVariable(name: "i", scope: !5686, file: !3, line: 426, type: !109)
!5695 = !DILocalVariable(name: "rc", scope: !5686, file: !3, line: 426, type: !109)
!5696 = !DILocalVariable(name: "len", scope: !5697, file: !3, line: 433, type: !207)
!5697 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 432, column: 46)
!5698 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 432, column: 2)
!5699 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 432, column: 2)
!5700 = !DILabel(scope: !5686, name: "err_region", file: !3, line: 454)
!5701 = !DILabel(scope: !5686, name: "err_inval", file: !3, line: 456)
!5702 = !DILocation(line: 423, column: 40, scope: !5686)
!5703 = !DILocation(line: 423, column: 50, scope: !5686)
!5704 = !DILocation(line: 423, column: 68, scope: !5686)
!5705 = !DILocation(line: 425, column: 2, scope: !5686)
!5706 = !DILocation(line: 425, column: 24, scope: !5686)
!5707 = !DILocation(line: 426, column: 2, scope: !5686)
!5708 = !DILocation(line: 426, column: 6, scope: !5686)
!5709 = !DILocation(line: 426, column: 9, scope: !5686)
!5710 = !DILocation(line: 428, column: 27, scope: !5686)
!5711 = !DILocation(line: 428, column: 10, scope: !5686)
!5712 = !DILocation(line: 428, column: 8, scope: !5686)
!5713 = !DILocation(line: 429, column: 7, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 429, column: 6)
!5715 = !DILocation(line: 429, column: 6, scope: !5686)
!5716 = !DILocation(line: 430, column: 3, scope: !5714)
!5717 = !DILocation(line: 432, column: 9, scope: !5699)
!5718 = !DILocation(line: 432, column: 7, scope: !5699)
!5719 = !DILocation(line: 432, column: 14, scope: !5698)
!5720 = !DILocation(line: 432, column: 16, scope: !5698)
!5721 = !DILocation(line: 432, column: 2, scope: !5699)
!5722 = !DILocation(line: 433, column: 3, scope: !5697)
!5723 = !DILocation(line: 433, column: 17, scope: !5697)
!5724 = !DILocation(line: 435, column: 9, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 435, column: 7)
!5726 = !DILocation(line: 435, column: 22, scope: !5725)
!5727 = !DILocation(line: 435, column: 19, scope: !5725)
!5728 = !DILocation(line: 435, column: 14, scope: !5725)
!5729 = !DILocation(line: 435, column: 7, scope: !5697)
!5730 = !DILocation(line: 436, column: 4, scope: !5725)
!5731 = !DILocation(line: 438, column: 6, scope: !5697)
!5732 = !DILocation(line: 439, column: 9, scope: !5697)
!5733 = !DILocation(line: 439, column: 7, scope: !5697)
!5734 = !DILocation(line: 440, column: 8, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 440, column: 7)
!5736 = !DILocation(line: 440, column: 7, scope: !5697)
!5737 = !DILocation(line: 441, column: 4, scope: !5735)
!5738 = !DILocation(line: 443, column: 27, scope: !5697)
!5739 = !DILocation(line: 443, column: 33, scope: !5697)
!5740 = !DILocation(line: 443, column: 36, scope: !5697)
!5741 = !DILocation(line: 443, column: 8, scope: !5697)
!5742 = !DILocation(line: 443, column: 6, scope: !5697)
!5743 = !DILocation(line: 444, column: 7, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 444, column: 7)
!5745 = !DILocation(line: 444, column: 7, scope: !5697)
!5746 = !DILocation(line: 445, column: 4, scope: !5744)
!5747 = !DILocation(line: 447, column: 6, scope: !5697)
!5748 = !DILocation(line: 448, column: 19, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 448, column: 7)
!5750 = !DILocation(line: 448, column: 25, scope: !5749)
!5751 = !DILocation(line: 448, column: 8, scope: !5749)
!5752 = !DILocation(line: 448, column: 7, scope: !5697)
!5753 = !DILocation(line: 449, column: 4, scope: !5749)
!5754 = !DILocation(line: 450, column: 2, scope: !5698)
!5755 = !DILocation(line: 450, column: 2, scope: !5697)
!5756 = !DILocation(line: 432, column: 42, scope: !5698)
!5757 = !DILocation(line: 432, column: 2, scope: !5698)
!5758 = distinct !{!5758, !5721, !5759, !5560, !5561}
!5759 = !DILocation(line: 450, column: 2, scope: !5699)
!5760 = !DILocation(line: 452, column: 2, scope: !5686)
!5761 = !DILocation(line: 454, column: 2, scope: !5686)
!5762 = !DILocation(line: 455, column: 21, scope: !5686)
!5763 = !DILocation(line: 455, column: 27, scope: !5686)
!5764 = !DILocation(line: 455, column: 2, scope: !5686)
!5765 = !DILocation(line: 456, column: 2, scope: !5686)
!5766 = !DILocation(line: 457, column: 2, scope: !5686)
!5767 = !DILocation(line: 457, column: 9, scope: !5686)
!5768 = !DILocation(line: 457, column: 13, scope: !5686)
!5769 = !DILocation(line: 458, column: 9, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 458, column: 7)
!5771 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 457, column: 19)
!5772 = !DILocation(line: 458, column: 22, scope: !5770)
!5773 = !DILocation(line: 458, column: 19, scope: !5770)
!5774 = !DILocation(line: 458, column: 14, scope: !5770)
!5775 = !DILocation(line: 458, column: 7, scope: !5771)
!5776 = !DILocation(line: 459, column: 4, scope: !5770)
!5777 = distinct !{!5777, !5766, !5778, !5560, !5561}
!5778 = !DILocation(line: 462, column: 2, scope: !5686)
!5779 = !DILocation(line: 460, column: 16, scope: !5771)
!5780 = !DILocation(line: 460, column: 22, scope: !5771)
!5781 = !DILocation(line: 460, column: 28, scope: !5771)
!5782 = !DILocation(line: 460, column: 3, scope: !5771)
!5783 = !DILocation(line: 461, column: 22, scope: !5771)
!5784 = !DILocation(line: 461, column: 28, scope: !5771)
!5785 = !DILocation(line: 461, column: 3, scope: !5771)
!5786 = !DILocation(line: 464, column: 9, scope: !5686)
!5787 = !DILocation(line: 464, column: 2, scope: !5686)
!5788 = !DILocation(line: 465, column: 1, scope: !5686)
!5789 = !DISubprogram(name: "pci_request_region", scope: !154, file: !154, line: 1447, type: !5687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5790 = !DISubprogram(name: "pci_release_region", scope: !154, file: !154, line: 1448, type: !5791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5791 = !DISubroutineType(types: !5792)
!5792 = !{null, !168, !109}
!5793 = distinct !DISubprogram(name: "pcim_iomap_regions_request_all", scope: !3, file: !3, line: 476, type: !5687, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5794)
!5794 = !{!5795, !5796, !5797, !5798, !5799}
!5795 = !DILocalVariable(name: "pdev", arg: 1, scope: !5793, file: !3, line: 476, type: !168)
!5796 = !DILocalVariable(name: "mask", arg: 2, scope: !5793, file: !3, line: 476, type: !109)
!5797 = !DILocalVariable(name: "name", arg: 3, scope: !5793, file: !3, line: 477, type: !203)
!5798 = !DILocalVariable(name: "request_mask", scope: !5793, file: !3, line: 479, type: !109)
!5799 = !DILocalVariable(name: "rc", scope: !5793, file: !3, line: 480, type: !109)
!5800 = !DILocation(line: 476, column: 52, scope: !5793)
!5801 = !DILocation(line: 476, column: 62, scope: !5793)
!5802 = !DILocation(line: 477, column: 20, scope: !5793)
!5803 = !DILocation(line: 479, column: 2, scope: !5793)
!5804 = !DILocation(line: 479, column: 6, scope: !5793)
!5805 = !DILocation(line: 479, column: 39, scope: !5793)
!5806 = !DILocation(line: 479, column: 38, scope: !5793)
!5807 = !DILocation(line: 479, column: 36, scope: !5793)
!5808 = !DILocation(line: 480, column: 2, scope: !5793)
!5809 = !DILocation(line: 480, column: 6, scope: !5793)
!5810 = !DILocation(line: 482, column: 36, scope: !5793)
!5811 = !DILocation(line: 482, column: 42, scope: !5793)
!5812 = !DILocation(line: 482, column: 56, scope: !5793)
!5813 = !DILocation(line: 482, column: 7, scope: !5793)
!5814 = !DILocation(line: 482, column: 5, scope: !5793)
!5815 = !DILocation(line: 483, column: 6, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 483, column: 6)
!5817 = !DILocation(line: 483, column: 6, scope: !5793)
!5818 = !DILocation(line: 484, column: 10, scope: !5816)
!5819 = !DILocation(line: 484, column: 3, scope: !5816)
!5820 = !DILocation(line: 486, column: 26, scope: !5793)
!5821 = !DILocation(line: 486, column: 32, scope: !5793)
!5822 = !DILocation(line: 486, column: 38, scope: !5793)
!5823 = !DILocation(line: 486, column: 7, scope: !5793)
!5824 = !DILocation(line: 486, column: 5, scope: !5793)
!5825 = !DILocation(line: 487, column: 6, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 487, column: 6)
!5827 = !DILocation(line: 487, column: 6, scope: !5793)
!5828 = !DILocation(line: 488, column: 32, scope: !5826)
!5829 = !DILocation(line: 488, column: 38, scope: !5826)
!5830 = !DILocation(line: 488, column: 3, scope: !5826)
!5831 = !DILocation(line: 489, column: 9, scope: !5793)
!5832 = !DILocation(line: 489, column: 2, scope: !5793)
!5833 = !DILocation(line: 490, column: 1, scope: !5793)
!5834 = !DISubprogram(name: "pci_request_selected_regions", scope: !154, file: !154, line: 1449, type: !5687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5835 = !DISubprogram(name: "pci_release_selected_regions", scope: !154, file: !154, line: 1451, type: !5791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5836 = distinct !DISubprogram(name: "pcim_iounmap_regions", scope: !3, file: !3, line: 500, type: !5791, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5837)
!5837 = !{!5838, !5839, !5840, !5841}
!5838 = !DILocalVariable(name: "pdev", arg: 1, scope: !5836, file: !3, line: 500, type: !168)
!5839 = !DILocalVariable(name: "mask", arg: 2, scope: !5836, file: !3, line: 500, type: !109)
!5840 = !DILocalVariable(name: "iomap", scope: !5836, file: !3, line: 502, type: !5475)
!5841 = !DILocalVariable(name: "i", scope: !5836, file: !3, line: 503, type: !109)
!5842 = !DILocation(line: 500, column: 43, scope: !5836)
!5843 = !DILocation(line: 500, column: 53, scope: !5836)
!5844 = !DILocation(line: 502, column: 2, scope: !5836)
!5845 = !DILocation(line: 502, column: 24, scope: !5836)
!5846 = !DILocation(line: 503, column: 2, scope: !5836)
!5847 = !DILocation(line: 503, column: 6, scope: !5836)
!5848 = !DILocation(line: 505, column: 27, scope: !5836)
!5849 = !DILocation(line: 505, column: 10, scope: !5836)
!5850 = !DILocation(line: 505, column: 8, scope: !5836)
!5851 = !DILocation(line: 506, column: 7, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 506, column: 6)
!5853 = !DILocation(line: 506, column: 6, scope: !5836)
!5854 = !DILocation(line: 507, column: 3, scope: !5852)
!5855 = !DILocation(line: 509, column: 9, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 509, column: 2)
!5857 = !DILocation(line: 509, column: 7, scope: !5856)
!5858 = !DILocation(line: 509, column: 14, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 509, column: 2)
!5860 = !DILocation(line: 509, column: 16, scope: !5859)
!5861 = !DILocation(line: 509, column: 2, scope: !5856)
!5862 = !DILocation(line: 510, column: 9, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 510, column: 7)
!5864 = distinct !DILexicalBlock(scope: !5859, file: !3, line: 509, column: 39)
!5865 = !DILocation(line: 510, column: 22, scope: !5863)
!5866 = !DILocation(line: 510, column: 19, scope: !5863)
!5867 = !DILocation(line: 510, column: 14, scope: !5863)
!5868 = !DILocation(line: 510, column: 7, scope: !5864)
!5869 = !DILocation(line: 511, column: 4, scope: !5863)
!5870 = !DILocation(line: 513, column: 16, scope: !5864)
!5871 = !DILocation(line: 513, column: 22, scope: !5864)
!5872 = !DILocation(line: 513, column: 28, scope: !5864)
!5873 = !DILocation(line: 513, column: 3, scope: !5864)
!5874 = !DILocation(line: 514, column: 22, scope: !5864)
!5875 = !DILocation(line: 514, column: 28, scope: !5864)
!5876 = !DILocation(line: 514, column: 3, scope: !5864)
!5877 = !DILocation(line: 515, column: 2, scope: !5864)
!5878 = !DILocation(line: 509, column: 35, scope: !5859)
!5879 = !DILocation(line: 509, column: 2, scope: !5859)
!5880 = distinct !{!5880, !5861, !5881, !5560, !5561}
!5881 = !DILocation(line: 515, column: 2, scope: !5856)
!5882 = !DILocation(line: 516, column: 1, scope: !5836)
!5883 = distinct !DISubprogram(name: "devm_arch_phys_wc_add", scope: !3, file: !3, line: 534, type: !5884, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5886)
!5884 = !DISubroutineType(types: !5885)
!5885 = !{!109, !262, !207, !207}
!5886 = !{!5887, !5888, !5889, !5890, !5891}
!5887 = !DILocalVariable(name: "dev", arg: 1, scope: !5883, file: !3, line: 534, type: !262)
!5888 = !DILocalVariable(name: "base", arg: 2, scope: !5883, file: !3, line: 534, type: !207)
!5889 = !DILocalVariable(name: "size", arg: 3, scope: !5883, file: !3, line: 534, type: !207)
!5890 = !DILocalVariable(name: "mtrr", scope: !5883, file: !3, line: 536, type: !809)
!5891 = !DILocalVariable(name: "ret", scope: !5883, file: !3, line: 537, type: !109)
!5892 = !DILocation(line: 534, column: 42, scope: !5883)
!5893 = !DILocation(line: 534, column: 61, scope: !5883)
!5894 = !DILocation(line: 534, column: 81, scope: !5883)
!5895 = !DILocation(line: 536, column: 2, scope: !5883)
!5896 = !DILocation(line: 536, column: 7, scope: !5883)
!5897 = !DILocation(line: 537, column: 2, scope: !5883)
!5898 = !DILocation(line: 537, column: 6, scope: !5883)
!5899 = !DILocation(line: 539, column: 9, scope: !5883)
!5900 = !DILocation(line: 539, column: 7, scope: !5883)
!5901 = !DILocation(line: 541, column: 7, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 541, column: 6)
!5903 = !DILocation(line: 541, column: 6, scope: !5883)
!5904 = !DILocation(line: 542, column: 3, scope: !5902)
!5905 = !DILocation(line: 544, column: 25, scope: !5883)
!5906 = !DILocation(line: 544, column: 31, scope: !5883)
!5907 = !DILocation(line: 544, column: 8, scope: !5883)
!5908 = !DILocation(line: 544, column: 6, scope: !5883)
!5909 = !DILocation(line: 545, column: 6, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 545, column: 6)
!5911 = !DILocation(line: 545, column: 10, scope: !5910)
!5912 = !DILocation(line: 545, column: 6, scope: !5883)
!5913 = !DILocation(line: 546, column: 15, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 545, column: 15)
!5915 = !DILocation(line: 546, column: 3, scope: !5914)
!5916 = !DILocation(line: 547, column: 10, scope: !5914)
!5917 = !DILocation(line: 547, column: 3, scope: !5914)
!5918 = !DILocation(line: 550, column: 10, scope: !5883)
!5919 = !DILocation(line: 550, column: 3, scope: !5883)
!5920 = !DILocation(line: 550, column: 8, scope: !5883)
!5921 = !DILocation(line: 551, column: 13, scope: !5883)
!5922 = !DILocation(line: 551, column: 18, scope: !5883)
!5923 = !DILocation(line: 551, column: 2, scope: !5883)
!5924 = !DILocation(line: 553, column: 9, scope: !5883)
!5925 = !DILocation(line: 553, column: 2, scope: !5883)
!5926 = !DILocation(line: 554, column: 1, scope: !5883)
!5927 = distinct !DISubprogram(name: "devm_arch_phys_ac_add_release", scope: !3, file: !3, line: 520, type: !4989, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5928)
!5928 = !{!5929, !5930}
!5929 = !DILocalVariable(name: "dev", arg: 1, scope: !5927, file: !3, line: 520, type: !262)
!5930 = !DILocalVariable(name: "res", arg: 2, scope: !5927, file: !3, line: 520, type: !165)
!5931 = !DILocation(line: 520, column: 58, scope: !5927)
!5932 = !DILocation(line: 520, column: 69, scope: !5927)
!5933 = !DILocation(line: 522, column: 28, scope: !5927)
!5934 = !DILocation(line: 522, column: 19, scope: !5927)
!5935 = !DILocation(line: 522, column: 2, scope: !5927)
!5936 = !DILocation(line: 523, column: 1, scope: !5927)
!5937 = !DISubprogram(name: "arch_phys_wc_add", scope: !5001, file: !5001, line: 334, type: !5938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5938 = !DISubroutineType(types: !5939)
!5939 = !{!109, !207, !207}
!5940 = distinct !DISubprogram(name: "devm_arch_io_reserve_memtype_wc", scope: !3, file: !3, line: 579, type: !5941, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5943)
!5941 = !DISubroutineType(types: !5942)
!5942 = !{!109, !262, !194, !194}
!5943 = !{!5944, !5945, !5946, !5947, !5953}
!5944 = !DILocalVariable(name: "dev", arg: 1, scope: !5940, file: !3, line: 579, type: !262)
!5945 = !DILocalVariable(name: "start", arg: 2, scope: !5940, file: !3, line: 579, type: !194)
!5946 = !DILocalVariable(name: "size", arg: 3, scope: !5940, file: !3, line: 580, type: !194)
!5947 = !DILocalVariable(name: "dr", scope: !5940, file: !3, line: 582, type: !5948)
!5948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5949, size: 64)
!5949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_io_reserve_memtype_wc_devres", file: !3, line: 557, size: 128, elements: !5950)
!5950 = !{!5951, !5952}
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5949, file: !3, line: 558, baseType: !194, size: 64)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5949, file: !3, line: 559, baseType: !194, size: 64, offset: 64)
!5953 = !DILocalVariable(name: "ret", scope: !5940, file: !3, line: 583, type: !109)
!5954 = !DILocation(line: 579, column: 52, scope: !5940)
!5955 = !DILocation(line: 579, column: 73, scope: !5940)
!5956 = !DILocation(line: 580, column: 25, scope: !5940)
!5957 = !DILocation(line: 582, column: 2, scope: !5940)
!5958 = !DILocation(line: 582, column: 44, scope: !5940)
!5959 = !DILocation(line: 583, column: 2, scope: !5940)
!5960 = !DILocation(line: 583, column: 6, scope: !5940)
!5961 = !DILocation(line: 585, column: 7, scope: !5940)
!5962 = !DILocation(line: 585, column: 5, scope: !5940)
!5963 = !DILocation(line: 587, column: 7, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 587, column: 6)
!5965 = !DILocation(line: 587, column: 6, scope: !5940)
!5966 = !DILocation(line: 588, column: 3, scope: !5964)
!5967 = !DILocation(line: 590, column: 35, scope: !5940)
!5968 = !DILocation(line: 590, column: 42, scope: !5940)
!5969 = !DILocation(line: 590, column: 8, scope: !5940)
!5970 = !DILocation(line: 590, column: 6, scope: !5940)
!5971 = !DILocation(line: 591, column: 6, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 591, column: 6)
!5973 = !DILocation(line: 591, column: 10, scope: !5972)
!5974 = !DILocation(line: 591, column: 6, scope: !5940)
!5975 = !DILocation(line: 592, column: 15, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 591, column: 15)
!5977 = !DILocation(line: 592, column: 3, scope: !5976)
!5978 = !DILocation(line: 593, column: 10, scope: !5976)
!5979 = !DILocation(line: 593, column: 3, scope: !5976)
!5980 = !DILocation(line: 596, column: 14, scope: !5940)
!5981 = !DILocation(line: 596, column: 2, scope: !5940)
!5982 = !DILocation(line: 596, column: 6, scope: !5940)
!5983 = !DILocation(line: 596, column: 12, scope: !5940)
!5984 = !DILocation(line: 597, column: 13, scope: !5940)
!5985 = !DILocation(line: 597, column: 2, scope: !5940)
!5986 = !DILocation(line: 597, column: 6, scope: !5940)
!5987 = !DILocation(line: 597, column: 11, scope: !5940)
!5988 = !DILocation(line: 598, column: 13, scope: !5940)
!5989 = !DILocation(line: 598, column: 18, scope: !5940)
!5990 = !DILocation(line: 598, column: 2, scope: !5940)
!5991 = !DILocation(line: 600, column: 9, scope: !5940)
!5992 = !DILocation(line: 600, column: 2, scope: !5940)
!5993 = !DILocation(line: 601, column: 1, scope: !5940)
!5994 = distinct !DISubprogram(name: "devm_arch_io_free_memtype_wc_release", scope: !3, file: !3, line: 562, type: !4989, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5995 = !{!5996, !5997, !5998}
!5996 = !DILocalVariable(name: "dev", arg: 1, scope: !5994, file: !3, line: 562, type: !262)
!5997 = !DILocalVariable(name: "res", arg: 2, scope: !5994, file: !3, line: 562, type: !165)
!5998 = !DILocalVariable(name: "this", scope: !5994, file: !3, line: 564, type: !5999)
!5999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6000, size: 64)
!6000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5949)
!6001 = !DILocation(line: 562, column: 65, scope: !5994)
!6002 = !DILocation(line: 562, column: 76, scope: !5994)
!6003 = !DILocation(line: 564, column: 2, scope: !5994)
!6004 = !DILocation(line: 564, column: 50, scope: !5994)
!6005 = !DILocation(line: 564, column: 57, scope: !5994)
!6006 = !DILocation(line: 566, column: 26, scope: !5994)
!6007 = !DILocation(line: 566, column: 32, scope: !5994)
!6008 = !DILocation(line: 566, column: 39, scope: !5994)
!6009 = !DILocation(line: 566, column: 45, scope: !5994)
!6010 = !DILocation(line: 566, column: 2, scope: !5994)
!6011 = !DILocation(line: 567, column: 1, scope: !5994)
!6012 = !DISubprogram(name: "arch_io_reserve_memtype_wc", scope: !5001, file: !5001, line: 341, type: !6013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6013 = !DISubroutineType(types: !6014)
!6014 = !{!109, !194, !194}
!6015 = !DISubprogram(name: "ioremap", scope: !5001, file: !5001, line: 196, type: !6016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!165, !194, !207}
!6018 = !DISubprogram(name: "ioremap_uc", scope: !5001, file: !5001, line: 173, type: !6016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6019 = !DISubprogram(name: "ioremap_wc", scope: !5001, file: !5001, line: 318, type: !6016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6020 = distinct !DISubprogram(name: "ioremap_np", scope: !6021, file: !6021, line: 107, type: !6022, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6024)
!6021 = !DIFile(filename: "./include/asm-generic/iomap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2fb4069c6c763a33a87cd5332e9980e8")
!6022 = !DISubroutineType(types: !6023)
!6023 = !{!165, !195, !392}
!6024 = !{!6025, !6026}
!6025 = !DILocalVariable(name: "offset", arg: 1, scope: !6020, file: !6021, line: 107, type: !195)
!6026 = !DILocalVariable(name: "size", arg: 2, scope: !6020, file: !6021, line: 107, type: !392)
!6027 = !DILocation(line: 107, column: 52, scope: !6020)
!6028 = !DILocation(line: 107, column: 67, scope: !6020)
!6029 = !DILocation(line: 109, column: 2, scope: !6020)
!6030 = distinct !DISubprogram(name: "resource_type", scope: !191, file: !191, line: 223, type: !6031, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6033)
!6031 = !DISubroutineType(types: !6032)
!6032 = !{!207, !5159}
!6033 = !{!6034}
!6034 = !DILocalVariable(name: "res", arg: 1, scope: !6030, file: !191, line: 223, type: !5159)
!6035 = !DILocation(line: 223, column: 66, scope: !6030)
!6036 = !DILocation(line: 225, column: 9, scope: !6030)
!6037 = !DILocation(line: 225, column: 14, scope: !6030)
!6038 = !DILocation(line: 225, column: 20, scope: !6030)
!6039 = !DILocation(line: 225, column: 2, scope: !6030)
!6040 = !DISubprogram(name: "_dev_err", scope: !6041, file: !6041, line: 50, type: !6042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6041 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6042 = !DISubroutineType(types: !6043)
!6043 = !{null, !4202, !203, null}
!6044 = !DISubprogram(name: "devm_kasprintf", scope: !94, file: !94, line: 310, type: !6045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!345, !262, !166, !203, null}
!6047 = distinct !DISubprogram(name: "dev_name", scope: !94, file: !94, line: 858, type: !6048, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6050)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{!203, !4202}
!6050 = !{!6051}
!6051 = !DILocalVariable(name: "dev", arg: 1, scope: !6047, file: !94, line: 858, type: !4202)
!6052 = !DILocation(line: 858, column: 57, scope: !6047)
!6053 = !DILocation(line: 861, column: 6, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6047, file: !94, line: 861, column: 6)
!6055 = !DILocation(line: 861, column: 11, scope: !6054)
!6056 = !DILocation(line: 861, column: 6, scope: !6047)
!6057 = !DILocation(line: 862, column: 10, scope: !6054)
!6058 = !DILocation(line: 862, column: 15, scope: !6054)
!6059 = !DILocation(line: 862, column: 3, scope: !6054)
!6060 = !DILocation(line: 864, column: 23, scope: !6047)
!6061 = !DILocation(line: 864, column: 28, scope: !6047)
!6062 = !DILocation(line: 864, column: 9, scope: !6047)
!6063 = !DILocation(line: 864, column: 2, scope: !6047)
!6064 = !DILocation(line: 865, column: 1, scope: !6047)
!6065 = !DISubprogram(name: "devm_kstrdup", scope: !94, file: !94, line: 343, type: !6066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{!345, !262, !203, !166}
!6068 = !DISubprogram(name: "__devm_request_region", scope: !191, file: !191, line: 308, type: !6069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{!189, !262, !189, !194, !194, !203}
!6071 = !DISubprogram(name: "__devm_release_region", scope: !191, file: !191, line: 317, type: !6072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6072 = !DISubroutineType(types: !6073)
!6073 = !{null, !262, !189, !194, !194}
!6074 = distinct !DISubprogram(name: "kobject_name", scope: !267, file: !267, line: 87, type: !333, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6075)
!6075 = !{!6076}
!6076 = !DILocalVariable(name: "kobj", arg: 1, scope: !6074, file: !267, line: 87, type: !328)
!6077 = !DILocation(line: 87, column: 62, scope: !6074)
!6078 = !DILocation(line: 89, column: 9, scope: !6074)
!6079 = !DILocation(line: 89, column: 15, scope: !6074)
!6080 = !DILocation(line: 89, column: 2, scope: !6074)
!6081 = !DISubprogram(name: "arch_phys_wc_del", scope: !5001, file: !5001, line: 336, type: !2944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6082 = !DISubprogram(name: "arch_io_free_memtype_wc", scope: !5001, file: !5001, line: 342, type: !6083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6083 = !DISubroutineType(types: !6084)
!6084 = !{null, !194, !194}
